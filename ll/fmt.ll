; ModuleID = 'src/fmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.Word = type { i8*, i32, i32, i8, i32, i64, %struct.Word* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: %s [-WIDTH] [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"Reformat each paragraph in the FILE(s), writing to standard output.\0AThe option -WIDTH is an abbreviated form of --width=DIGITS.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"  -c, --crown-margin\0A         preserve indentation of first two lines\0A\00", align 1
@.str.5 = private unnamed_addr constant [128 x i8] c"  -p, --prefix=STRING\0A         reformat only lines beginning with STRING,\0A         reattaching the prefix to reformatted lines\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"  -s, --split-only\0A         split long lines, but do not refill\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"  -t, --tagged-paragraph\0A         indentation of first line different from second\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"  -u, --uniform-spacing\0A         one space between words, two after sentences\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"  -w, --width=WIDTH\0A         maximum line width (default of 75 columns)\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"  -g, --goal=WIDTH\0A         goal width (default of 93% of width)\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"0123456789cstuw:p:g:\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.17 = private unnamed_addr constant [94 x i8] c"invalid option -- %c; -WIDTH is recognized only when it is the first\0Aoption; use -w N instead\00", align 1
@crown = internal unnamed_addr global i1 false, align 1, !dbg !231
@split = internal unnamed_addr global i1 false, align 1, !dbg !232
@tagged = internal unnamed_addr global i1 false, align 1, !dbg !233
@uniform = internal unnamed_addr global i1 false, align 1, !dbg !234
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Ross Paterson\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@max_width = internal unnamed_addr global i32 75, align 4, !dbg !163
@goal_width = internal unnamed_addr global i32 0, align 4, !dbg !76
@optind = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !78
@.str.28 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.50 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"crown-margin\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"split-only\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"tagged-paragraph\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"uniform-spacing\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"goal\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@prefix_lead_space = internal unnamed_addr global i32 0, align 4, !dbg !165
@prefix = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), align 8, !dbg !167
@prefix_full_length = internal unnamed_addr global i32 0, align 4, !dbg !169
@prefix_length = internal unnamed_addr global i32 0, align 4, !dbg !171
@tabs = internal unnamed_addr global i1 false, align 1, !dbg !235
@other_indent = internal unnamed_addr global i32 0, align 4, !dbg !175
@next_char = internal unnamed_addr global i32 0, align 4, !dbg !181
@word_limit = internal unnamed_addr global %struct.Word* null, align 8, !dbg !217
@.str.72 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@in_column = internal unnamed_addr global i32 0, align 4, !dbg !177
@next_prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !179
@last_line_length = internal unnamed_addr global i32 0, align 4, !dbg !183
@prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !187
@first_indent = internal unnamed_addr global i32 0, align 4, !dbg !189
@parabuf = internal global [5000 x i8] zeroinitializer, align 1, !dbg !191
@wptr = internal unnamed_addr global i8* null, align 8, !dbg !196
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 8, !dbg !198
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !185
@.str.74 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"(['`\22\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c")]'\22\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !236
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !241
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !246
@.str.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !248
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.40 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !284
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !254
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !280
@.str.1.46 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.48 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.47 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !282
@.str.4.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.42 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.43 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !289
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !295
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.82, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.84, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.90, i32 0, i32 0), i8* null], align 8, !dbg !331
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !343
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !359
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !389
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !396
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !361
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !398
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !347
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !366
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
@.str.23.126 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !404
@exit_failure = dso_local global i32 1, align 4, !dbg !412
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.137 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !418
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !533 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !537, metadata !DIExpression()), !dbg !538
  %3 = icmp eq i32 %0, 0, !dbg !539
  br i1 %3, label %9, label %4, !dbg !541

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !542, !tbaa !544
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !542
  %7 = load i8*, i8** @program_name, align 8, !dbg !542, !tbaa !544
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !542
  br label %65, !dbg !542

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !548
  %11 = load i8*, i8** @program_name, align 8, !dbg !548, !tbaa !544
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !548
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !550
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !550, !tbaa !544
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !550
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #34, !dbg !551
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !551, !tbaa !544
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #34, !dbg !551
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #34, !dbg !555
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !555, !tbaa !544
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #34, !dbg !555
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !558
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !558
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !559
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !559
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !560
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !560
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !561
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !561
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #34, !dbg !562
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !562
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #34, !dbg !563
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !563
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #34, !dbg !564
  tail call fastcc void @oputs_(i8* noundef %28), !dbg !564
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #34, !dbg !565
  tail call fastcc void @oputs_(i8* noundef %29), !dbg !565
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #34, !dbg !566
  tail call fastcc void @oputs_(i8* noundef %30), !dbg !566
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !567, metadata !DIExpression()) #34, !dbg !586
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !588
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #34, !dbg !588
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !572, metadata !DIExpression()) #34, !dbg !589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %31, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !581, metadata !DIExpression()) #34, !dbg !586
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !582, metadata !DIExpression()) #34, !dbg !586
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !590
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !582, metadata !DIExpression()) #34, !dbg !586
  br label %33, !dbg !591

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !582, metadata !DIExpression()) #34, !dbg !586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !599
  call void @llvm.dbg.value(metadata i8* %34, metadata !598, metadata !DIExpression()) #34, !dbg !599
  %36 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %34) #35, !dbg !601
  %37 = icmp eq i32 %36, 0, !dbg !602
  br i1 %37, label %43, label %38, !dbg !591

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !603
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !582, metadata !DIExpression()) #34, !dbg !586
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !604
  %41 = load i8*, i8** %40, align 8, !dbg !604, !tbaa !605
  %42 = icmp eq i8* %41, null, !dbg !607
  br i1 %42, label %43, label %33, !dbg !608, !llvm.loop !609

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !611
  %46 = load i8*, i8** %45, align 8, !dbg !611, !tbaa !613
  %47 = icmp eq i8* %46, null, !dbg !614
  %48 = select i1 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %46, !dbg !615
  call void @llvm.dbg.value(metadata i8* %48, metadata !581, metadata !DIExpression()) #34, !dbg !586
  tail call void @emit_bug_reporting_address() #34, !dbg !616
  %49 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !617
  call void @llvm.dbg.value(metadata i8* %49, metadata !584, metadata !DIExpression()) #34, !dbg !586
  %50 = icmp eq i8* %49, null, !dbg !618
  br i1 %50, label %58, label %51, !dbg !620

51:                                               ; preds = %43
  %52 = tail call i32 @strncmp(i8* noundef nonnull %49, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 noundef 3) #35, !dbg !621
  %53 = icmp eq i32 %52, 0, !dbg !621
  br i1 %53, label %58, label %54, !dbg !622

54:                                               ; preds = %51
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #34, !dbg !623
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !544
  %57 = tail call i32 @fputs_unlocked(i8* noundef %55, %struct._IO_FILE* noundef %56) #34, !dbg !623
  br label %58, !dbg !625

58:                                               ; preds = %43, %51, %54
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #34, !dbg !586
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #34, !dbg !628
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %59, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !628
  %61 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i64 0, i64 0), i32 noundef 5) #34, !dbg !629
  %62 = icmp eq i8* %48, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !629
  %63 = select i1 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !629
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %61, i8* noundef %48, i8* noundef %63) #34, !dbg !629
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #34, !dbg !630
  br label %65

65:                                               ; preds = %58, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !631
  unreachable, !dbg !631
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !632 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !636 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !80 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !85, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !641
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !642, !tbaa !643
  %3 = icmp eq i32 %2, -1, !dbg !645
  br i1 %3, label %4, label %16, !dbg !646

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #34, !dbg !647
  call void @llvm.dbg.value(metadata i8* %5, metadata !87, metadata !DIExpression()), !dbg !648
  %6 = icmp eq i8* %5, null, !dbg !649
  br i1 %6, label %14, label %7, !dbg !650

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !651, !tbaa !652
  %9 = icmp eq i8 %8, 0, !dbg !651
  br i1 %9, label %14, label %10, !dbg !653

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !592, metadata !DIExpression()) #34, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !654
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #35, !dbg !656
  %12 = icmp eq i32 %11, 0, !dbg !657
  %13 = zext i1 %12 to i32, !dbg !653
  br label %14, !dbg !653

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !658, !tbaa !643
  br label %16, !dbg !659

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !660
  %18 = icmp eq i32 %17, 0, !dbg !660
  br i1 %18, label %22, label %19, !dbg !662

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !544
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !663
  br label %121, !dbg !665

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !90, metadata !DIExpression()), !dbg !641
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #35, !dbg !666
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !667
  call void @llvm.dbg.value(metadata i8* %24, metadata !91, metadata !DIExpression()), !dbg !641
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !668
  call void @llvm.dbg.value(metadata i8* %25, metadata !92, metadata !DIExpression()), !dbg !641
  %26 = icmp eq i8* %25, null, !dbg !669
  br i1 %26, label %53, label %27, !dbg !670

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !671
  br i1 %28, label %53, label %29, !dbg !672

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !93, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !673
  %30 = icmp ult i8* %24, %25, !dbg !674
  br i1 %30, label %31, label %53, !dbg !675

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !641
  %33 = load i16*, i16** %32, align 8, !tbaa !544
  br label %34, !dbg !675

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !93, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i64 %36, metadata !97, metadata !DIExpression()), !dbg !673
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !676
  call void @llvm.dbg.value(metadata i8* %37, metadata !93, metadata !DIExpression()), !dbg !673
  %38 = load i8, i8* %35, align 1, !dbg !676, !tbaa !652
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !676
  %41 = load i16, i16* %40, align 2, !dbg !676, !tbaa !677
  %42 = lshr i16 %41, 13, !dbg !679
  %43 = and i16 %42, 1, !dbg !679
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !680
  call void @llvm.dbg.value(metadata i64 %45, metadata !97, metadata !DIExpression()), !dbg !673
  %46 = icmp ult i8* %37, %25, !dbg !674
  %47 = icmp ult i64 %45, 2, !dbg !681
  %48 = select i1 %46, i1 %47, i1 false, !dbg !681
  br i1 %48, label %34, label %49, !dbg !675, !llvm.loop !682

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !683
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !685
  %52 = xor i1 %50, true, !dbg !685
  br label %53, !dbg !685

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !641
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* %54, metadata !92, metadata !DIExpression()), !dbg !641
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #35, !dbg !686
  call void @llvm.dbg.value(metadata i64 %56, metadata !98, metadata !DIExpression()), !dbg !641
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !687
  call void @llvm.dbg.value(metadata i8* %57, metadata !99, metadata !DIExpression()), !dbg !641
  br label %58, !dbg !688

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !641
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* %59, metadata !99, metadata !DIExpression()), !dbg !641
  %61 = load i8, i8* %59, align 1, !dbg !689, !tbaa !652
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !690

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !691
  %64 = load i8, i8* %63, align 1, !dbg !694, !tbaa !652
  %65 = icmp ne i8 %64, 45, !dbg !695
  %66 = select i1 %65, i1 %60, i1 false, !dbg !696
  br label %67, !dbg !696

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !641
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !697
  %70 = load i16*, i16** %69, align 8, !dbg !697, !tbaa !544
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !697
  %73 = load i16, i16* %72, align 2, !dbg !697, !tbaa !677
  %74 = and i16 %73, 8192, !dbg !697
  %75 = icmp eq i16 %74, 0, !dbg !697
  br i1 %75, label %89, label %76, !dbg !699

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !700
  br i1 %77, label %91, label %78, !dbg !703

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !704
  %80 = load i8, i8* %79, align 1, !dbg !704, !tbaa !652
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !704
  %83 = load i16, i16* %82, align 2, !dbg !704, !tbaa !677
  %84 = and i16 %83, 8192, !dbg !704
  %85 = icmp eq i16 %84, 0, !dbg !704
  br i1 %85, label %86, label %91, !dbg !705

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !706
  br i1 %88, label %89, label %91, !dbg !706

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !708
  call void @llvm.dbg.value(metadata i8* %90, metadata !99, metadata !DIExpression()), !dbg !641
  br label %58, !dbg !688, !llvm.loop !709

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !711
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !544
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !711
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !716
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !722
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !726
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !728
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !592, metadata !DIExpression()) #34, !dbg !730
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !158, metadata !DIExpression()), !dbg !641
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i64 noundef 6) #35, !dbg !732
  %96 = icmp eq i32 %95, 0, !dbg !732
  br i1 %96, label %100, label %97, !dbg !734

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i64 noundef 9) #35, !dbg !735
  %99 = icmp eq i32 %98, 0, !dbg !735
  br i1 %99, label %100, label %103, !dbg !736

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !737
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !737
  br label %106, !dbg !739

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !740
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !740
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742, !tbaa !544
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !742
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !544
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !743
  %111 = ptrtoint i8* %59 to i64, !dbg !744
  %112 = sub i64 %111, %92, !dbg !744
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !544
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !744
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !544
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !745
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !544
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !746
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !544
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !747
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !748
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
declare !dbg !749 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !753 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !757 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !768, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8** %1, metadata !769, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8 1, metadata !771, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8* null, metadata !772, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8* null, metadata !773, metadata !DIExpression()), !dbg !784
  %3 = load i8*, i8** %1, align 8, !dbg !785, !tbaa !544
  tail call void @set_program_name(i8* noundef %3) #34, !dbg !786
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #34, !dbg !787
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #34, !dbg !788
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #34, !dbg !789
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !790
  %8 = icmp sgt i32 %0, 1, !dbg !791
  br i1 %8, label %9, label %23, !dbg !793

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !794
  %11 = load i8*, i8** %10, align 8, !dbg !794, !tbaa !544
  %12 = load i8, i8* %11, align 1, !dbg !794, !tbaa !652
  %13 = icmp eq i8 %12, 45, !dbg !795
  br i1 %13, label %14, label %23, !dbg !796

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !797
  %16 = load i8, i8* %15, align 1, !dbg !797, !tbaa !652
  %17 = zext i8 %16 to i32, !dbg !797
  call void @llvm.dbg.value(metadata i32 %17, metadata !798, metadata !DIExpression()), !dbg !804
  %18 = add nsw i32 %17, -48, !dbg !806
  %19 = icmp ult i32 %18, 10, !dbg !806
  br i1 %19, label %20, label %23, !dbg !807

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %15, metadata !772, metadata !DIExpression()), !dbg !784
  %21 = load i8*, i8** %1, align 8, !dbg !808, !tbaa !544
  store i8* %21, i8** %10, align 8, !dbg !810, !tbaa !544
  call void @llvm.dbg.value(metadata i8** %10, metadata !769, metadata !DIExpression()), !dbg !784
  %22 = add nsw i32 %0, -1, !dbg !811
  call void @llvm.dbg.value(metadata i32 %22, metadata !768, metadata !DIExpression()), !dbg !784
  br label %23, !dbg !812

23:                                               ; preds = %20, %14, %9, %2
  %24 = phi i8** [ %10, %20 ], [ %1, %14 ], [ %1, %9 ], [ %1, %2 ]
  %25 = phi i8* [ %15, %20 ], [ null, %14 ], [ null, %9 ], [ null, %2 ], !dbg !784
  %26 = phi i32 [ %22, %20 ], [ %0, %14 ], [ %0, %9 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !768, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8* %25, metadata !772, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8** %24, metadata !769, metadata !DIExpression()), !dbg !784
  br label %27, !dbg !813

27:                                               ; preds = %44, %23
  %28 = phi i8* [ %45, %44 ], [ %25, %23 ]
  %29 = phi i8* [ %31, %44 ], [ null, %23 ]
  br label %30, !dbg !813

30:                                               ; preds = %27, %46
  %31 = phi i8* [ %29, %27 ], [ %47, %46 ]
  br label %32, !dbg !813

32:                                               ; preds = %79, %30
  call void @llvm.dbg.value(metadata i8* %31, metadata !773, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8* %28, metadata !772, metadata !DIExpression()), !dbg !784
  %33 = tail call i32 @getopt_long(i32 noundef %26, i8** noundef nonnull %24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !814
  call void @llvm.dbg.value(metadata i32 %33, metadata !770, metadata !DIExpression()), !dbg !784
  switch i32 %33, label %34 [
    i32 -1, label %85
    i32 99, label %40
    i32 115, label %41
    i32 116, label %42
    i32 117, label %43
    i32 119, label %44
    i32 103, label %46
    i32 112, label %48
    i32 -2, label %80
    i32 -3, label %81
  ], !dbg !813

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %33, metadata !798, metadata !DIExpression()), !dbg !815
  %35 = add i32 %33, -48, !dbg !819
  %36 = icmp ult i32 %35, 10, !dbg !819
  br i1 %36, label %37, label %39, !dbg !820

37:                                               ; preds = %34
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #34, !dbg !821
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %38, i32 noundef %33) #34, !dbg !821
  br label %39, !dbg !821

39:                                               ; preds = %37, %34
  tail call void @usage(i32 noundef 1) #38, !dbg !822
  unreachable, !dbg !822

40:                                               ; preds = %32
  store i1 true, i1* @crown, align 1, !dbg !823
  br label %79, !dbg !824

41:                                               ; preds = %32
  store i1 true, i1* @split, align 1, !dbg !825
  br label %79, !dbg !826

42:                                               ; preds = %32
  store i1 true, i1* @tagged, align 1, !dbg !827
  br label %79, !dbg !828

43:                                               ; preds = %32
  store i1 true, i1* @uniform, align 1, !dbg !829
  br label %79, !dbg !830

44:                                               ; preds = %32
  %45 = load i8*, i8** @optarg, align 8, !dbg !831, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %45, metadata !772, metadata !DIExpression()), !dbg !784
  br label %27, !dbg !832, !llvm.loop !833

46:                                               ; preds = %32
  %47 = load i8*, i8** @optarg, align 8, !dbg !835, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %47, metadata !773, metadata !DIExpression()), !dbg !784
  br label %30, !dbg !836, !llvm.loop !833

48:                                               ; preds = %32
  %49 = load i8*, i8** @optarg, align 8, !dbg !837, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %49, metadata !838, metadata !DIExpression()) #34, !dbg !844
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !846, !tbaa !643
  call void @llvm.dbg.value(metadata i8* %49, metadata !838, metadata !DIExpression()) #34, !dbg !844
  %50 = load i8, i8* %49, align 1, !dbg !847, !tbaa !652
  %51 = icmp eq i8 %50, 32, !dbg !848
  br i1 %51, label %52, label %60, !dbg !849

52:                                               ; preds = %48, %52
  %53 = phi i8* [ %56, %52 ], [ %49, %48 ]
  %54 = phi i32 [ %55, %52 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !838, metadata !DIExpression()) #34, !dbg !844
  %55 = add nuw nsw i32 %54, 1, !dbg !850
  %56 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !852
  call void @llvm.dbg.value(metadata i8* %56, metadata !838, metadata !DIExpression()) #34, !dbg !844
  %57 = load i8, i8* %56, align 1, !dbg !847, !tbaa !652
  %58 = icmp eq i8 %57, 32, !dbg !848
  br i1 %58, label %52, label %59, !dbg !849, !llvm.loop !853

59:                                               ; preds = %52
  store i32 %55, i32* @prefix_lead_space, align 4, !dbg !850, !tbaa !643
  br label %60, !dbg !849

60:                                               ; preds = %59, %48
  %61 = phi i8* [ %56, %59 ], [ %49, %48 ]
  store i8* %61, i8** @prefix, align 8, !dbg !855, !tbaa !544
  %62 = tail call i64 @strlen(i8* noundef nonnull %61) #35, !dbg !856
  %63 = trunc i64 %62 to i32, !dbg !856
  store i32 %63, i32* @prefix_full_length, align 4, !dbg !857, !tbaa !643
  %64 = shl i64 %62, 32, !dbg !858
  %65 = ashr exact i64 %64, 32, !dbg !858
  %66 = getelementptr inbounds i8, i8* %61, i64 %65, !dbg !858
  call void @llvm.dbg.value(metadata i8* %66, metadata !843, metadata !DIExpression()) #34, !dbg !844
  br label %67, !dbg !859

67:                                               ; preds = %70, %60
  %68 = phi i8* [ %66, %60 ], [ %71, %70 ], !dbg !844
  call void @llvm.dbg.value(metadata i8* %68, metadata !843, metadata !DIExpression()) #34, !dbg !844
  %69 = icmp ugt i8* %68, %61, !dbg !860
  br i1 %69, label %70, label %74, !dbg !861

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, i8* %68, i64 -1, !dbg !862
  %72 = load i8, i8* %71, align 1, !dbg !862, !tbaa !652
  %73 = icmp eq i8 %72, 32, !dbg !863
  br i1 %73, label %67, label %74, !dbg !859, !llvm.loop !864

74:                                               ; preds = %67, %70
  store i8 0, i8* %68, align 1, !dbg !866, !tbaa !652
  %75 = ptrtoint i8* %68 to i64, !dbg !867
  %76 = ptrtoint i8* %61 to i64, !dbg !867
  %77 = sub i64 %75, %76, !dbg !867
  %78 = trunc i64 %77 to i32, !dbg !868
  store i32 %78, i32* @prefix_length, align 4, !dbg !869, !tbaa !643
  br label %79, !dbg !870

79:                                               ; preds = %74, %43, %42, %41, %40
  br label %32, !dbg !784, !llvm.loop !833

80:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #38, !dbg !871
  unreachable, !dbg !871

81:                                               ; preds = %32
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !872, !tbaa !544
  %83 = load i8*, i8** @Version, align 8, !dbg !872, !tbaa !544
  %84 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !872
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef %83, i8* noundef %84, i8* noundef null) #34, !dbg !872
  tail call void @exit(i32 noundef 0) #36, !dbg !872
  unreachable, !dbg !872

85:                                               ; preds = %32
  %86 = icmp eq i8* %28, null, !dbg !873
  br i1 %86, label %91, label %87, !dbg !875

87:                                               ; preds = %85
  %88 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #34, !dbg !876
  %89 = tail call i64 @xnumtoumax(i8* noundef nonnull %28, i32 noundef 10, i64 noundef 0, i64 noundef 2500, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* noundef %88, i32 noundef 0, i32 noundef 8) #34, !dbg !878
  %90 = trunc i64 %89 to i32, !dbg !878
  store i32 %90, i32* @max_width, align 4, !dbg !879, !tbaa !643
  br label %91, !dbg !880

91:                                               ; preds = %87, %85
  %92 = icmp eq i8* %31, null, !dbg !881
  %93 = load i32, i32* @max_width, align 4, !dbg !883, !tbaa !643
  br i1 %92, label %101, label %94, !dbg !884

94:                                               ; preds = %91
  %95 = sext i32 %93 to i64, !dbg !885
  %96 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #34, !dbg !887
  %97 = tail call i64 @xdectoumax(i8* noundef nonnull %31, i64 noundef 0, i64 noundef %95, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* noundef %96, i32 noundef 0) #34, !dbg !888
  %98 = trunc i64 %97 to i32, !dbg !888
  store i32 %98, i32* @goal_width, align 4, !dbg !889, !tbaa !643
  br i1 %86, label %99, label %104, !dbg !890

99:                                               ; preds = %94
  %100 = add nsw i32 %98, 10, !dbg !891
  store i32 %100, i32* @max_width, align 4, !dbg !893, !tbaa !643
  br label %104, !dbg !894

101:                                              ; preds = %91
  %102 = mul nsw i32 %93, 187, !dbg !895
  %103 = sdiv i32 %102, 200, !dbg !897
  store i32 %103, i32* @goal_width, align 4, !dbg !898, !tbaa !643
  br label %104

104:                                              ; preds = %94, %99, %101
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !784
  %105 = load i32, i32* @optind, align 4, !dbg !899, !tbaa !643
  %106 = icmp eq i32 %105, %26, !dbg !900
  br i1 %106, label %109, label %107, !dbg !901

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 poison, metadata !774, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8 poison, metadata !771, metadata !DIExpression()), !dbg !784
  %108 = icmp slt i32 %105, %26, !dbg !902
  br i1 %108, label %112, label %152, !dbg !903

109:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 1, metadata !774, metadata !DIExpression()), !dbg !784
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !904, !tbaa !544
  %111 = tail call fastcc i1 @fmt(%struct._IO_FILE* noundef %110, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)), !dbg !906
  call void @llvm.dbg.value(metadata i8 poison, metadata !774, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8 poison, metadata !771, metadata !DIExpression()), !dbg !784
  br label %143, !dbg !907

112:                                              ; preds = %107, %136
  %113 = phi i32 [ %140, %136 ], [ %105, %107 ]
  %114 = phi i1 [ %138, %136 ], [ false, %107 ]
  %115 = phi i1 [ %137, %136 ], [ true, %107 ]
  %116 = sext i32 %113 to i64, !dbg !909
  %117 = getelementptr inbounds i8*, i8** %24, i64 %116, !dbg !909
  %118 = load i8*, i8** %117, align 8, !dbg !909, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %118, metadata !775, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8* %118, metadata !592, metadata !DIExpression()) #34, !dbg !911
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !598, metadata !DIExpression()) #34, !dbg !911
  %119 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %118, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #35, !dbg !913
  %120 = icmp eq i32 %119, 0, !dbg !914
  br i1 %120, label %121, label %125, !dbg !915

121:                                              ; preds = %112
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !916, !tbaa !544
  %123 = tail call fastcc i1 @fmt(%struct._IO_FILE* noundef %122, i8* noundef %118), !dbg !918
  %124 = and i1 %115, %123, !dbg !919
  call void @llvm.dbg.value(metadata i1 %124, metadata !771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !784
  call void @llvm.dbg.value(metadata i8 1, metadata !774, metadata !DIExpression()), !dbg !784
  br label %136, !dbg !920

125:                                              ; preds = %112
  %126 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %118, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #34, !dbg !921
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %126, metadata !781, metadata !DIExpression()), !dbg !922
  %127 = icmp eq %struct._IO_FILE* %126, null, !dbg !923
  br i1 %127, label %131, label %128, !dbg !925

128:                                              ; preds = %125
  %129 = tail call fastcc i1 @fmt(%struct._IO_FILE* noundef nonnull %126, i8* noundef %118), !dbg !926
  %130 = and i1 %115, %129, !dbg !927
  call void @llvm.dbg.value(metadata i1 %130, metadata !771, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !784
  br label %136, !dbg !928

131:                                              ; preds = %125
  %132 = tail call i32* @__errno_location() #37, !dbg !929
  %133 = load i32, i32* %132, align 4, !dbg !929, !tbaa !643
  %134 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #34, !dbg !929
  %135 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %118) #34, !dbg !929
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %133, i8* noundef %134, i8* noundef %135) #34, !dbg !929
  call void @llvm.dbg.value(metadata i8 0, metadata !771, metadata !DIExpression()), !dbg !784
  br label %136

136:                                              ; preds = %128, %131, %121
  %137 = phi i1 [ %124, %121 ], [ %130, %128 ], [ false, %131 ], !dbg !931
  %138 = phi i1 [ true, %121 ], [ %114, %128 ], [ %114, %131 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !774, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8 undef, metadata !771, metadata !DIExpression()), !dbg !784
  %139 = load i32, i32* @optind, align 4, !dbg !932, !tbaa !643
  %140 = add nsw i32 %139, 1, !dbg !932
  store i32 %140, i32* @optind, align 4, !dbg !932, !tbaa !643
  call void @llvm.dbg.value(metadata i8 poison, metadata !771, metadata !DIExpression()), !dbg !784
  %141 = icmp slt i32 %140, %26, !dbg !902
  br i1 %141, label %112, label %142, !dbg !903, !llvm.loop !933

142:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i8 poison, metadata !774, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8 poison, metadata !771, metadata !DIExpression()), !dbg !784
  br i1 %138, label %143, label %152, !dbg !907

143:                                              ; preds = %109, %142
  %144 = phi i1 [ %111, %109 ], [ %137, %142 ]
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !935, !tbaa !544
  %146 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %145) #34, !dbg !936
  %147 = icmp eq i32 %146, 0, !dbg !937
  br i1 %147, label %152, label %148, !dbg !938

148:                                              ; preds = %143
  %149 = tail call i32* @__errno_location() #37, !dbg !939
  %150 = load i32, i32* %149, align 4, !dbg !939, !tbaa !643
  %151 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #34, !dbg !939
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %150, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* noundef %151) #34, !dbg !939
  unreachable, !dbg !939

152:                                              ; preds = %107, %143, %142
  %153 = phi i1 [ %144, %143 ], [ %137, %142 ], [ true, %107 ]
  %154 = xor i1 %153, true, !dbg !940
  %155 = zext i1 %154 to i32, !dbg !940
  ret i32 %155, !dbg !941
}

; Function Attrs: nounwind
declare !dbg !942 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !945 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !946 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !949 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i1 @fmt(%struct._IO_FILE* noundef %0, i8* noundef %1) unnamed_addr #12 !dbg !955 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !959, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8* %1, metadata !960, metadata !DIExpression()), !dbg !962
  tail call void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef 2) #34, !dbg !963
  store i1 false, i1* @tabs, align 1, !dbg !964
  store i32 0, i32* @other_indent, align 4, !dbg !965, !tbaa !643
  %3 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* noundef %0), !dbg !966
  store i32 %3, i32* @next_char, align 4, !dbg !967, !tbaa !643
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %6, !dbg !968

6:                                                ; preds = %261, %2
  %7 = phi i32 [ %262, %261 ], [ %3, %2 ], !dbg !969
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !974, metadata !DIExpression()) #34, !dbg !977
  store i32 0, i32* @last_line_length, align 4, !dbg !978, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %7, metadata !975, metadata !DIExpression()) #34, !dbg !977
  br label %8, !dbg !979

8:                                                ; preds = %116, %6
  %9 = phi i32 [ %7, %6 ], [ %117, %116 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %9, metadata !975, metadata !DIExpression()) #34, !dbg !977
  switch i32 %9, label %10 [
    i32 -1, label %19
    i32 10, label %19
  ], !dbg !980

10:                                               ; preds = %8
  %11 = load i32, i32* @next_prefix_indent, align 4, !dbg !981, !tbaa !643
  %12 = load i32, i32* @prefix_lead_space, align 4, !dbg !982, !tbaa !643
  %13 = icmp slt i32 %11, %12, !dbg !983
  br i1 %13, label %19, label %14, !dbg !984

14:                                               ; preds = %10
  %15 = load i32, i32* @in_column, align 4, !dbg !985, !tbaa !643
  %16 = load i32, i32* @prefix_full_length, align 4, !dbg !986, !tbaa !643
  %17 = add nsw i32 %16, %11, !dbg !987
  %18 = icmp slt i32 %15, %17, !dbg !988
  br i1 %18, label %19, label %118, !dbg !979

19:                                               ; preds = %14, %10, %8, %8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !989, metadata !DIExpression()) #34, !dbg !999
  call void @llvm.dbg.value(metadata i32 %9, metadata !994, metadata !DIExpression()) #34, !dbg !999
  store i32 0, i32* @out_column, align 4, !dbg !1002, !tbaa !643
  %20 = load i32, i32* @in_column, align 4, !dbg !1003, !tbaa !643
  %21 = load i32, i32* @next_prefix_indent, align 4, !dbg !1004, !tbaa !643
  %22 = icmp sgt i32 %20, %21, !dbg !1005
  br i1 %22, label %24, label %23, !dbg !1006

23:                                               ; preds = %19
  switch i32 %9, label %24 [
    i32 -1, label %77
    i32 10, label %77
  ], !dbg !1007

24:                                               ; preds = %23, %19
  tail call fastcc void @put_space(i32 noundef %21) #34, !dbg !1008
  call void @llvm.dbg.value(metadata i8* undef, metadata !995, metadata !DIExpression()) #34, !dbg !1009
  %25 = load i32, i32* @out_column, align 4, !dbg !1010, !tbaa !643
  %26 = load i32, i32* @in_column, align 4, !dbg !1012, !tbaa !643
  %27 = icmp eq i32 %26, %25, !dbg !1013
  br i1 %27, label %36, label %28, !dbg !1014

28:                                               ; preds = %24
  %29 = load i8*, i8** @prefix, align 8, !dbg !1015, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %29, metadata !995, metadata !DIExpression()) #34, !dbg !1009
  br label %30, !dbg !1016

30:                                               ; preds = %54, %28
  %31 = phi i32 [ %55, %54 ], [ %26, %28 ]
  %32 = phi i32 [ %57, %54 ], [ %25, %28 ]
  %33 = phi i8* [ %40, %54 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i8* %33, metadata !995, metadata !DIExpression()) #34, !dbg !1009
  %34 = load i8, i8* %33, align 1, !dbg !1017, !tbaa !652
  %35 = icmp eq i8 %34, 0, !dbg !1014
  br i1 %35, label %36, label %39, !dbg !1016

36:                                               ; preds = %54, %30, %24
  %37 = phi i32 [ %25, %24 ], [ %55, %54 ], [ %32, %30 ], !dbg !1010
  %38 = phi i32 [ %25, %24 ], [ %55, %54 ], [ %31, %30 ], !dbg !1012
  switch i32 %9, label %59 [
    i32 -1, label %61
    i32 10, label %77
  ], !dbg !1018

39:                                               ; preds = %30
  %40 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %40, metadata !995, metadata !DIExpression()) #34, !dbg !1009
  call void @llvm.dbg.value(metadata i8 %34, metadata !1021, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1027
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1029, !tbaa !544
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 5, !dbg !1029
  %43 = load i8*, i8** %42, align 8, !dbg !1029, !tbaa !1030
  %44 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 6, !dbg !1029
  %45 = load i8*, i8** %44, align 8, !dbg !1029, !tbaa !1033
  %46 = icmp ult i8* %43, %45, !dbg !1029
  br i1 %46, label %52, label %47, !dbg !1029, !prof !1034

47:                                               ; preds = %39
  %48 = zext i8 %34 to i32, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %48, metadata !1021, metadata !DIExpression()) #34, !dbg !1027
  %49 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %41, i32 noundef %48) #34, !dbg !1029
  %50 = load i32, i32* @out_column, align 4, !dbg !1035, !tbaa !643
  %51 = load i32, i32* @in_column, align 4, !dbg !1012, !tbaa !643
  br label %54, !dbg !1029

52:                                               ; preds = %39
  %53 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1029
  store i8* %53, i8** %42, align 8, !dbg !1029, !tbaa !1030
  store i8 %34, i8* %43, align 1, !dbg !1029, !tbaa !652
  br label %54, !dbg !1029

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %51, %47 ], [ %31, %52 ], !dbg !1012
  %56 = phi i32 [ %50, %47 ], [ %32, %52 ], !dbg !1035
  %57 = add nsw i32 %56, 1, !dbg !1035
  store i32 %57, i32* @out_column, align 4, !dbg !1035, !tbaa !643
  call void @llvm.dbg.value(metadata i8* %40, metadata !995, metadata !DIExpression()) #34, !dbg !1009
  %58 = icmp eq i32 %55, %57, !dbg !1013
  br i1 %58, label %36, label %30, !dbg !1014, !llvm.loop !1036

59:                                               ; preds = %36
  %60 = sub nsw i32 %38, %37, !dbg !1038
  tail call fastcc void @put_space(i32 noundef %60) #34, !dbg !1039
  br label %77, !dbg !1040

61:                                               ; preds = %36
  %62 = load i32, i32* @next_prefix_indent, align 4, !dbg !1042, !tbaa !643
  %63 = load i32, i32* @prefix_length, align 4, !dbg !1043, !tbaa !643
  %64 = add nsw i32 %63, %62, !dbg !1044
  %65 = icmp slt i32 %38, %64, !dbg !1045
  br i1 %65, label %77, label %66, !dbg !1046

66:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 10, metadata !1021, metadata !DIExpression()) #34, !dbg !1047
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1049, !tbaa !544
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !1049
  %69 = load i8*, i8** %68, align 8, !dbg !1049, !tbaa !1030
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !1049
  %71 = load i8*, i8** %70, align 8, !dbg !1049, !tbaa !1033
  %72 = icmp ult i8* %69, %71, !dbg !1049
  br i1 %72, label %75, label %73, !dbg !1049, !prof !1034

73:                                               ; preds = %66
  %74 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %67, i32 noundef 10) #34, !dbg !1049
  br label %77, !dbg !1049

75:                                               ; preds = %66
  %76 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1049
  store i8* %76, i8** %68, align 8, !dbg !1049, !tbaa !1030
  store i8 10, i8* %69, align 1, !dbg !1049, !tbaa !652
  br label %77, !dbg !1049

77:                                               ; preds = %75, %73, %61, %59, %36, %23, %23
  br label %78, !dbg !1050

78:                                               ; preds = %103, %77
  %79 = phi i32 [ %9, %77 ], [ %104, %103 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !994, metadata !DIExpression()) #34, !dbg !999
  switch i32 %79, label %80 [
    i32 -1, label %263
    i32 10, label %105
  ], !dbg !1050

80:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i32 %79, metadata !1021, metadata !DIExpression()) #34, !dbg !1051
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1054, !tbaa !544
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %81, i64 0, i32 5, !dbg !1054
  %83 = load i8*, i8** %82, align 8, !dbg !1054, !tbaa !1030
  %84 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %81, i64 0, i32 6, !dbg !1054
  %85 = load i8*, i8** %84, align 8, !dbg !1054, !tbaa !1033
  %86 = icmp ult i8* %83, %85, !dbg !1054
  br i1 %86, label %90, label %87, !dbg !1054, !prof !1034

87:                                               ; preds = %80
  %88 = and i32 %79, 255, !dbg !1054
  %89 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %81, i32 noundef %88) #34, !dbg !1054
  br label %93, !dbg !1054

90:                                               ; preds = %80
  %91 = trunc i32 %79 to i8, !dbg !1054
  %92 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1054
  store i8* %92, i8** %82, align 8, !dbg !1054, !tbaa !1030
  store i8 %91, i8* %83, align 1, !dbg !1054, !tbaa !652
  br label %93, !dbg !1054

93:                                               ; preds = %90, %87
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1055, metadata !DIExpression()) #34, !dbg !1060
  %94 = load i8*, i8** %4, align 8, !dbg !1062, !tbaa !1063
  %95 = load i8*, i8** %5, align 8, !dbg !1062, !tbaa !1064
  %96 = icmp ult i8* %94, %95, !dbg !1062
  br i1 %96, label %99, label %97, !dbg !1062, !prof !1034

97:                                               ; preds = %93
  %98 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1062
  br label %103, !dbg !1062

99:                                               ; preds = %93
  %100 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1062
  store i8* %100, i8** %4, align 8, !dbg !1062, !tbaa !1063
  %101 = load i8, i8* %94, align 1, !dbg !1062, !tbaa !652
  %102 = zext i8 %101 to i32, !dbg !1062
  br label %103, !dbg !1062

103:                                              ; preds = %99, %97
  %104 = phi i32 [ %98, %97 ], [ %102, %99 ]
  br label %78, !dbg !999, !llvm.loop !1065

105:                                              ; preds = %78
  call void @llvm.dbg.value(metadata i32 10, metadata !1021, metadata !DIExpression()) #34, !dbg !1067
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1069, !tbaa !544
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %106, i64 0, i32 5, !dbg !1069
  %108 = load i8*, i8** %107, align 8, !dbg !1069, !tbaa !1030
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %106, i64 0, i32 6, !dbg !1069
  %110 = load i8*, i8** %109, align 8, !dbg !1069, !tbaa !1033
  %111 = icmp ult i8* %108, %110, !dbg !1069
  br i1 %111, label %114, label %112, !dbg !1069, !prof !1034

112:                                              ; preds = %105
  %113 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %106, i32 noundef 10) #34, !dbg !1069
  br label %116, !dbg !1069

114:                                              ; preds = %105
  %115 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !1069
  store i8* %115, i8** %107, align 8, !dbg !1069, !tbaa !1030
  store i8 10, i8* %108, align 1, !dbg !1069, !tbaa !652
  br label %116, !dbg !1069

116:                                              ; preds = %114, %112
  %117 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* noundef %0) #34, !dbg !1070
  call void @llvm.dbg.value(metadata i32 %117, metadata !975, metadata !DIExpression()) #34, !dbg !977
  br label %8, !dbg !979, !llvm.loop !1071

118:                                              ; preds = %14
  store i32 %11, i32* @prefix_indent, align 4, !dbg !1073, !tbaa !643
  store i32 %15, i32* @first_indent, align 4, !dbg !1074, !tbaa !643
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1075, !tbaa !544
  store %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), %struct.Word** @word_limit, align 8, !dbg !1076, !tbaa !544
  %119 = tail call fastcc i32 @get_line(%struct._IO_FILE* noundef %0, i32 noundef %9) #34, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %119, metadata !975, metadata !DIExpression()) #34, !dbg !977
  call void @llvm.dbg.value(metadata i32 %119, metadata !1078, metadata !DIExpression()) #34, !dbg !1081
  %120 = load i32, i32* @next_prefix_indent, align 4, !dbg !1083, !tbaa !643
  %121 = load i32, i32* @prefix_indent, align 4, !dbg !1084, !tbaa !643
  %122 = icmp eq i32 %120, %121, !dbg !1085
  br i1 %122, label %123, label %132, !dbg !1086

123:                                              ; preds = %118
  %124 = load i32, i32* @in_column, align 4, !dbg !1087, !tbaa !643
  %125 = load i32, i32* @prefix_full_length, align 4, !dbg !1088, !tbaa !643
  %126 = add nsw i32 %125, %120, !dbg !1089
  %127 = icmp sge i32 %124, %126, !dbg !1090
  %128 = icmp ne i32 %119, 10
  %129 = and i1 %128, %127, !dbg !1091
  %130 = icmp ne i32 %119, -1
  %131 = and i1 %130, %129, !dbg !1091
  br label %132, !dbg !1091

132:                                              ; preds = %123, %118
  %133 = phi i1 [ false, %118 ], [ %131, %123 ], !dbg !1081
  call void @llvm.dbg.value(metadata i1 %133, metadata !1092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1097
  %134 = load i1, i1* @split, align 1, !dbg !1099
  br i1 %134, label %153, label %135, !dbg !1101

135:                                              ; preds = %132
  %136 = load i1, i1* @crown, align 1, !dbg !1102
  br i1 %136, label %155, label %137, !dbg !1104

137:                                              ; preds = %135
  %138 = load i1, i1* @tagged, align 1, !dbg !1105
  br i1 %138, label %139, label %186, !dbg !1107

139:                                              ; preds = %137
  br i1 %133, label %142, label %140, !dbg !1108

140:                                              ; preds = %139
  %141 = load i32, i32* @first_indent, align 4, !dbg !1111, !tbaa !643
  br label %146, !dbg !1108

142:                                              ; preds = %139
  %143 = load i32, i32* @in_column, align 4, !dbg !1113, !tbaa !643
  %144 = load i32, i32* @first_indent, align 4, !dbg !1114, !tbaa !643
  %145 = icmp eq i32 %143, %144, !dbg !1115
  br i1 %145, label %146, label %183, !dbg !1116

146:                                              ; preds = %142, %140
  %147 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %148 = load i32, i32* @other_indent, align 4, !dbg !1117, !tbaa !643
  %149 = icmp eq i32 %148, %147, !dbg !1118
  br i1 %149, label %150, label %199, !dbg !1119

150:                                              ; preds = %146
  %151 = icmp eq i32 %147, 0, !dbg !1120
  %152 = select i1 %151, i32 3, i32 0, !dbg !1121
  br label %183, !dbg !1122

153:                                              ; preds = %132
  %154 = load i32, i32* @first_indent, align 4, !dbg !1123, !tbaa !643
  store i32 %154, i32* @other_indent, align 4, !dbg !1124, !tbaa !643
  br label %246

155:                                              ; preds = %135
  %156 = load i32, i32* @in_column, align 4, !dbg !1125
  %157 = load i32, i32* @first_indent, align 4, !dbg !1125
  %158 = select i1 %133, i32 %156, i32 %157, !dbg !1125
  store i32 %158, i32* @other_indent, align 4, !dbg !1124, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %119, metadata !1078, metadata !DIExpression()) #34, !dbg !1127
  br i1 %122, label %159, label %246, !dbg !1133

159:                                              ; preds = %155
  %160 = load i32, i32* @prefix_full_length, align 4, !dbg !1134, !tbaa !643
  %161 = add nsw i32 %160, %120, !dbg !1135
  %162 = icmp sge i32 %156, %161, !dbg !1136
  %163 = freeze i1 %162, !dbg !1137
  br i1 %163, label %164, label %246, !dbg !1137

164:                                              ; preds = %159
  switch i32 %119, label %165 [
    i32 -1, label %246
    i32 10, label %246
  ], !dbg !1137

165:                                              ; preds = %164, %171
  %166 = phi i32 [ %167, %171 ], [ %119, %164 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %166, metadata !975, metadata !DIExpression()) #34, !dbg !977
  %167 = tail call fastcc i32 @get_line(%struct._IO_FILE* noundef %0, i32 noundef %166) #34, !dbg !1138
  call void @llvm.dbg.value(metadata i32 %167, metadata !975, metadata !DIExpression()) #34, !dbg !977
  call void @llvm.dbg.value(metadata i32 %167, metadata !1078, metadata !DIExpression()) #34, !dbg !1141
  %168 = load i32, i32* @next_prefix_indent, align 4, !dbg !1143, !tbaa !643
  %169 = load i32, i32* @prefix_indent, align 4, !dbg !1144, !tbaa !643
  %170 = icmp eq i32 %168, %169, !dbg !1145
  br i1 %170, label %171, label %246, !dbg !1146

171:                                              ; preds = %165
  %172 = load i32, i32* @in_column, align 4, !dbg !1147
  %173 = load i32, i32* @prefix_full_length, align 4, !dbg !1148, !tbaa !643
  %174 = add nsw i32 %173, %168, !dbg !1149
  %175 = icmp sge i32 %172, %174, !dbg !1150
  %176 = icmp ne i32 %167, 10
  %177 = and i1 %176, %175, !dbg !1151
  %178 = icmp ne i32 %167, -1
  %179 = and i1 %178, %177, !dbg !1151
  %180 = load i32, i32* @other_indent, align 4, !dbg !1152
  %181 = icmp eq i32 %172, %180, !dbg !1152
  %182 = select i1 %179, i1 %181, i1 false, !dbg !1152
  br i1 %182, label %165, label %246, !dbg !1153, !llvm.loop !1154

183:                                              ; preds = %142, %150
  %184 = phi i32 [ %144, %142 ], [ %147, %150 ]
  %185 = phi i32 [ %143, %142 ], [ %152, %150 ]
  store i32 %185, i32* @other_indent, align 4, !dbg !1124, !tbaa !643
  br label %199, !dbg !1157

186:                                              ; preds = %137
  %187 = load i32, i32* @first_indent, align 4, !dbg !1158, !tbaa !643
  store i32 %187, i32* @other_indent, align 4, !dbg !1124, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %119, metadata !975, metadata !DIExpression()) #34, !dbg !977
  call void @llvm.dbg.value(metadata i32 %119, metadata !1078, metadata !DIExpression()) #34, !dbg !1160
  br i1 %122, label %188, label %246, !dbg !1164

188:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i32 %119, metadata !975, metadata !DIExpression()) #34, !dbg !977
  %189 = load i32, i32* @in_column, align 4, !dbg !1165
  %190 = load i32, i32* @prefix_full_length, align 4, !dbg !1166, !tbaa !643
  %191 = add nsw i32 %190, %120, !dbg !1167
  %192 = icmp sge i32 %189, %191, !dbg !1168
  %193 = icmp ne i32 %119, 10
  %194 = and i1 %193, %192, !dbg !1169
  %195 = icmp ne i32 %119, -1
  %196 = and i1 %195, %194, !dbg !1169
  %197 = icmp eq i32 %189, %187, !dbg !1170
  %198 = select i1 %196, i1 %197, i1 false, !dbg !1170
  br i1 %198, label %228, label %246, !dbg !1171

199:                                              ; preds = %146, %183
  %200 = phi i32 [ %184, %183 ], [ %147, %146 ]
  call void @llvm.dbg.value(metadata i32 %119, metadata !1078, metadata !DIExpression()) #34, !dbg !1172
  br i1 %122, label %201, label %246, !dbg !1176

201:                                              ; preds = %199
  %202 = load i32, i32* @in_column, align 4, !dbg !1177, !tbaa !643
  %203 = load i32, i32* @prefix_full_length, align 4, !dbg !1178, !tbaa !643
  %204 = add nsw i32 %203, %120, !dbg !1179
  %205 = icmp sge i32 %202, %204, !dbg !1180
  %206 = freeze i1 %205, !dbg !1181
  br i1 %206, label %207, label %246, !dbg !1181

207:                                              ; preds = %201
  switch i32 %119, label %208 [
    i32 -1, label %246
    i32 10, label %246
  ], !dbg !1181

208:                                              ; preds = %207
  %209 = icmp eq i32 %202, %200, !dbg !1182
  br i1 %209, label %246, label %210, !dbg !1183

210:                                              ; preds = %208, %216
  %211 = phi i32 [ %212, %216 ], [ %119, %208 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %211, metadata !975, metadata !DIExpression()) #34, !dbg !977
  %212 = tail call fastcc i32 @get_line(%struct._IO_FILE* noundef %0, i32 noundef %211) #34, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %212, metadata !975, metadata !DIExpression()) #34, !dbg !977
  call void @llvm.dbg.value(metadata i32 %212, metadata !1078, metadata !DIExpression()) #34, !dbg !1187
  %213 = load i32, i32* @next_prefix_indent, align 4, !dbg !1189, !tbaa !643
  %214 = load i32, i32* @prefix_indent, align 4, !dbg !1190, !tbaa !643
  %215 = icmp eq i32 %213, %214, !dbg !1191
  br i1 %215, label %216, label %246, !dbg !1192

216:                                              ; preds = %210
  %217 = load i32, i32* @in_column, align 4, !dbg !1193
  %218 = load i32, i32* @prefix_full_length, align 4, !dbg !1194, !tbaa !643
  %219 = add nsw i32 %218, %213, !dbg !1195
  %220 = icmp sge i32 %217, %219, !dbg !1196
  %221 = icmp ne i32 %212, 10
  %222 = and i1 %221, %220, !dbg !1197
  %223 = icmp ne i32 %212, -1
  %224 = and i1 %223, %222, !dbg !1197
  %225 = load i32, i32* @other_indent, align 4, !dbg !1198
  %226 = icmp eq i32 %217, %225, !dbg !1198
  %227 = select i1 %224, i1 %226, i1 false, !dbg !1198
  br i1 %227, label %210, label %246, !dbg !1199, !llvm.loop !1200

228:                                              ; preds = %188, %234
  %229 = phi i32 [ %230, %234 ], [ %119, %188 ]
  call void @llvm.dbg.value(metadata i32 %229, metadata !975, metadata !DIExpression()) #34, !dbg !977
  %230 = tail call fastcc i32 @get_line(%struct._IO_FILE* noundef %0, i32 noundef %229) #34, !dbg !1203
  call void @llvm.dbg.value(metadata i32 %230, metadata !975, metadata !DIExpression()) #34, !dbg !977
  call void @llvm.dbg.value(metadata i32 %230, metadata !1078, metadata !DIExpression()) #34, !dbg !1160
  %231 = load i32, i32* @next_prefix_indent, align 4, !dbg !1204, !tbaa !643
  %232 = load i32, i32* @prefix_indent, align 4, !dbg !1205, !tbaa !643
  %233 = icmp eq i32 %231, %232, !dbg !1206
  br i1 %233, label %234, label %246, !dbg !1164, !llvm.loop !1207

234:                                              ; preds = %228
  %235 = load i32, i32* @other_indent, align 4, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %230, metadata !975, metadata !DIExpression()) #34, !dbg !977
  %236 = load i32, i32* @in_column, align 4, !dbg !1165
  %237 = load i32, i32* @prefix_full_length, align 4, !dbg !1166, !tbaa !643
  %238 = add nsw i32 %237, %231, !dbg !1167
  %239 = icmp sge i32 %236, %238, !dbg !1168
  %240 = icmp ne i32 %230, 10
  %241 = and i1 %240, %239, !dbg !1169
  %242 = icmp ne i32 %230, -1
  %243 = and i1 %242, %241, !dbg !1169
  %244 = icmp eq i32 %236, %235, !dbg !1170
  %245 = select i1 %243, i1 %244, i1 false, !dbg !1170
  br i1 %245, label %228, label %246, !dbg !1171

246:                                              ; preds = %228, %234, %210, %216, %165, %171, %188, %153, %155, %159, %164, %164, %186, %199, %201, %207, %207, %208
  %247 = phi i32 [ %119, %153 ], [ %119, %164 ], [ %119, %208 ], [ %119, %207 ], [ %119, %155 ], [ %119, %199 ], [ %119, %159 ], [ %119, %164 ], [ %119, %201 ], [ %119, %207 ], [ %119, %186 ], [ %119, %188 ], [ %167, %171 ], [ %167, %165 ], [ %212, %216 ], [ %212, %210 ], [ %230, %234 ], [ %230, %228 ], !dbg !977
  call void @llvm.dbg.value(metadata i32 %247, metadata !975, metadata !DIExpression()) #34, !dbg !977
  %248 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1209, !tbaa !544
  %249 = getelementptr inbounds %struct.Word, %struct.Word* %248, i64 -1, i32 3, !dbg !1210
  %250 = load i8, i8* %249, align 8, !dbg !1211
  %251 = or i8 %250, 10, !dbg !1212
  store i8 %251, i8* %249, align 8, !dbg !1212
  store i32 %247, i32* @next_char, align 4, !dbg !977, !tbaa !643
  tail call fastcc void @fmt_paragraph(), !dbg !1213
  call void @llvm.dbg.value(metadata %struct.Word* %248, metadata !1215, metadata !DIExpression()) #34, !dbg !1222
  %252 = load i32, i32* @first_indent, align 4, !dbg !1224, !tbaa !643
  tail call fastcc void @put_line(%struct.Word* noundef getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 noundef %252) #34, !dbg !1225
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1220, metadata !DIExpression()) #34, !dbg !1226
  %253 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 8, !dbg !1226, !tbaa !1227
  call void @llvm.dbg.value(metadata %struct.Word* %253, metadata !1220, metadata !DIExpression()) #34, !dbg !1226
  %254 = icmp eq %struct.Word* %253, %248, !dbg !1229
  br i1 %254, label %261, label %255, !dbg !1231

255:                                              ; preds = %246, %255
  %256 = phi %struct.Word* [ %259, %255 ], [ %253, %246 ]
  %257 = load i32, i32* @other_indent, align 4, !dbg !1232, !tbaa !643
  tail call fastcc void @put_line(%struct.Word* noundef %256, i32 noundef %257) #34, !dbg !1233
  %258 = getelementptr inbounds %struct.Word, %struct.Word* %256, i64 0, i32 6, !dbg !1234
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1220, metadata !DIExpression()) #34, !dbg !1226
  %259 = load %struct.Word*, %struct.Word** %258, align 8, !dbg !1226, !tbaa !1227
  call void @llvm.dbg.value(metadata %struct.Word* %259, metadata !1220, metadata !DIExpression()) #34, !dbg !1226
  %260 = icmp eq %struct.Word* %259, %248, !dbg !1229
  br i1 %260, label %261, label %255, !dbg !1231, !llvm.loop !1235

261:                                              ; preds = %255, %246
  %262 = load i32, i32* @next_char, align 4, !dbg !969, !tbaa !643
  br label %6, !dbg !968, !llvm.loop !1237

263:                                              ; preds = %78
  store i32 -1, i32* @next_char, align 4, !dbg !977, !tbaa !643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1239, metadata !DIExpression()), !dbg !1242
  %264 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1244
  %265 = load i32, i32* %264, align 8, !dbg !1244, !tbaa !1245
  %266 = and i32 %265, 32, !dbg !1246
  %267 = icmp eq i32 %266, 0, !dbg !1246
  %268 = sext i1 %267 to i32, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %268, metadata !961, metadata !DIExpression()), !dbg !962
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1247, !tbaa !544
  %270 = icmp eq %struct._IO_FILE* %269, %0, !dbg !1249
  br i1 %270, label %271, label %272, !dbg !1250

271:                                              ; preds = %263
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1251
  br label %279, !dbg !1251

272:                                              ; preds = %263
  %273 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1252
  %274 = icmp ne i32 %273, 0, !dbg !1254
  %275 = select i1 %274, i1 %267, i1 false, !dbg !1255
  br i1 %275, label %276, label %279, !dbg !1255

276:                                              ; preds = %272
  %277 = tail call i32* @__errno_location() #37, !dbg !1256
  %278 = load i32, i32* %277, align 4, !dbg !1256, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %278, metadata !961, metadata !DIExpression()), !dbg !962
  br label %279, !dbg !1257

279:                                              ; preds = %272, %276, %271
  %280 = phi i32 [ %268, %271 ], [ %278, %276 ], [ %268, %272 ], !dbg !962
  call void @llvm.dbg.value(metadata i32 %280, metadata !961, metadata !DIExpression()), !dbg !962
  %281 = icmp sgt i32 %280, -1, !dbg !1258
  br i1 %281, label %282, label %292, !dbg !1260

282:                                              ; preds = %279
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1261, !tbaa !544
  %284 = icmp eq %struct._IO_FILE* %283, %0, !dbg !1264
  %285 = tail call i32* @__errno_location() #37, !dbg !1265
  %286 = load i32, i32* %285, align 4, !dbg !1265, !tbaa !643
  br i1 %284, label %287, label %289, !dbg !1266

287:                                              ; preds = %282
  %288 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i32 noundef 5) #34, !dbg !1267
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %286, i8* noundef %288) #34, !dbg !1267
  br label %292, !dbg !1267

289:                                              ; preds = %282
  %290 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i64 0, i64 0), i32 noundef 5) #34, !dbg !1268
  %291 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %1) #34, !dbg !1268
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %286, i8* noundef %290, i8* noundef %291) #34, !dbg !1268
  br label %292

292:                                              ; preds = %287, %289, %279
  %293 = icmp slt i32 %280, 0, !dbg !1269
  ret i1 %293, !dbg !1270
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_prefix(%struct._IO_FILE* noundef %0) unnamed_addr #12 !dbg !1271 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1273, metadata !DIExpression()), !dbg !1282
  store i32 0, i32* @in_column, align 4, !dbg !1283, !tbaa !643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1055, metadata !DIExpression()) #34, !dbg !1284
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1286
  %3 = load i8*, i8** %2, align 8, !dbg !1286, !tbaa !1063
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1286
  %5 = load i8*, i8** %4, align 8, !dbg !1286, !tbaa !1064
  %6 = icmp ult i8* %3, %5, !dbg !1286
  br i1 %6, label %9, label %7, !dbg !1286, !prof !1034

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1286
  br label %13, !dbg !1286

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1286
  store i8* %10, i8** %2, align 8, !dbg !1286, !tbaa !1063
  %11 = load i8, i8* %3, align 1, !dbg !1286, !tbaa !652
  %12 = zext i8 %11 to i32, !dbg !1286
  br label %13, !dbg !1286

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1287

15:                                               ; preds = %36, %13
  %16 = phi i32 [ %14, %13 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !1291, metadata !DIExpression()) #34, !dbg !1293
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1294

17:                                               ; preds = %15
  %18 = load i32, i32* @in_column, align 4, !dbg !1296, !tbaa !643
  %19 = add nsw i32 %18, 1, !dbg !1296
  br label %25, !dbg !1298

20:                                               ; preds = %15
  store i1 true, i1* @tabs, align 1, !dbg !1299
  %21 = load i32, i32* @in_column, align 4, !dbg !1302, !tbaa !643
  %22 = sdiv i32 %21, 8, !dbg !1303
  %23 = shl nsw i32 %22, 3, !dbg !1304
  %24 = add i32 %23, 8, !dbg !1304
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ], !dbg !1305
  store i32 %26, i32* @in_column, align 4, !dbg !1305, !tbaa !643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1055, metadata !DIExpression()) #34, !dbg !1306
  %27 = load i8*, i8** %2, align 8, !dbg !1308, !tbaa !1063
  %28 = load i8*, i8** %4, align 8, !dbg !1308, !tbaa !1064
  %29 = icmp ult i8* %27, %28, !dbg !1308
  br i1 %29, label %32, label %30, !dbg !1308, !prof !1034

30:                                               ; preds = %25
  %31 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1308
  br label %36, !dbg !1308

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1308
  store i8* %33, i8** %2, align 8, !dbg !1308, !tbaa !1063
  %34 = load i8, i8* %27, align 1, !dbg !1308, !tbaa !652
  %35 = zext i8 %34 to i32, !dbg !1308
  br label %36, !dbg !1308

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  br label %15, !dbg !1293, !llvm.loop !1309

38:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1274, metadata !DIExpression()), !dbg !1282
  %39 = load i32, i32* @prefix_length, align 4, !dbg !1311, !tbaa !643
  %40 = icmp eq i32 %39, 0, !dbg !1312
  br i1 %40, label %41, label %46, !dbg !1313

41:                                               ; preds = %38
  %42 = load i32, i32* @prefix_lead_space, align 4, !dbg !1314, !tbaa !643
  %43 = load i32, i32* @in_column, align 4, !dbg !1315, !tbaa !643
  %44 = icmp slt i32 %42, %43, !dbg !1316
  %45 = select i1 %44, i32 %42, i32 %43, !dbg !1314
  store i32 %45, i32* @next_prefix_indent, align 4, !dbg !1317, !tbaa !643
  br label %99, !dbg !1318

46:                                               ; preds = %38
  %47 = load i32, i32* @in_column, align 4, !dbg !1319, !tbaa !643
  store i32 %47, i32* @next_prefix_indent, align 4, !dbg !1320, !tbaa !643
  %48 = load i8*, i8** @prefix, align 8, !dbg !1321, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %48, metadata !1275, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %16, metadata !1274, metadata !DIExpression()), !dbg !1282
  %49 = load i8, i8* %48, align 1, !dbg !1323, !tbaa !652
  %50 = icmp eq i8 %49, 0, !dbg !1324
  br i1 %50, label %74, label %51, !dbg !1325

51:                                               ; preds = %46, %69
  %52 = phi i8 [ %72, %69 ], [ %49, %46 ]
  %53 = phi i8* [ %71, %69 ], [ %48, %46 ]
  %54 = phi i32 [ %70, %69 ], [ %16, %46 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1275, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %54, metadata !1274, metadata !DIExpression()), !dbg !1282
  %55 = zext i8 %52 to i32, !dbg !1323
  call void @llvm.dbg.value(metadata i8 %52, metadata !1279, metadata !DIExpression()), !dbg !1326
  %56 = icmp eq i32 %54, %55, !dbg !1327
  br i1 %56, label %57, label %99, !dbg !1329

57:                                               ; preds = %51
  %58 = load i32, i32* @in_column, align 4, !dbg !1330, !tbaa !643
  %59 = add nsw i32 %58, 1, !dbg !1330
  store i32 %59, i32* @in_column, align 4, !dbg !1330, !tbaa !643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1055, metadata !DIExpression()) #34, !dbg !1331
  %60 = load i8*, i8** %2, align 8, !dbg !1333, !tbaa !1063
  %61 = load i8*, i8** %4, align 8, !dbg !1333, !tbaa !1064
  %62 = icmp ult i8* %60, %61, !dbg !1333
  br i1 %62, label %65, label %63, !dbg !1333, !prof !1034

63:                                               ; preds = %57
  %64 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1333
  br label %69, !dbg !1333

65:                                               ; preds = %57
  %66 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1333
  store i8* %66, i8** %2, align 8, !dbg !1333, !tbaa !1063
  %67 = load i8, i8* %60, align 1, !dbg !1333, !tbaa !652
  %68 = zext i8 %67 to i32, !dbg !1333
  br label %69, !dbg !1333

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %68, %65 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1274, metadata !DIExpression()), !dbg !1282
  %71 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1334
  call void @llvm.dbg.value(metadata i8* %71, metadata !1275, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %70, metadata !1274, metadata !DIExpression()), !dbg !1282
  %72 = load i8, i8* %71, align 1, !dbg !1323, !tbaa !652
  %73 = icmp eq i8 %72, 0, !dbg !1324
  br i1 %73, label %74, label %51, !dbg !1325, !llvm.loop !1335

74:                                               ; preds = %69, %46
  %75 = phi i32 [ %16, %46 ], [ %70, %69 ]
  br label %76, !dbg !1337

76:                                               ; preds = %97, %74
  %77 = phi i32 [ %75, %74 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i32 %77, metadata !1291, metadata !DIExpression()) #34, !dbg !1339
  switch i32 %77, label %99 [
    i32 32, label %78
    i32 9, label %81
  ], !dbg !1340

78:                                               ; preds = %76
  %79 = load i32, i32* @in_column, align 4, !dbg !1341, !tbaa !643
  %80 = add nsw i32 %79, 1, !dbg !1341
  br label %86, !dbg !1342

81:                                               ; preds = %76
  store i1 true, i1* @tabs, align 1, !dbg !1343
  %82 = load i32, i32* @in_column, align 4, !dbg !1344, !tbaa !643
  %83 = sdiv i32 %82, 8, !dbg !1345
  %84 = shl nsw i32 %83, 3, !dbg !1346
  %85 = add i32 %84, 8, !dbg !1346
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i32 [ %85, %81 ], [ %80, %78 ], !dbg !1347
  store i32 %87, i32* @in_column, align 4, !dbg !1347, !tbaa !643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1055, metadata !DIExpression()) #34, !dbg !1348
  %88 = load i8*, i8** %2, align 8, !dbg !1350, !tbaa !1063
  %89 = load i8*, i8** %4, align 8, !dbg !1350, !tbaa !1064
  %90 = icmp ult i8* %88, %89, !dbg !1350
  br i1 %90, label %93, label %91, !dbg !1350, !prof !1034

91:                                               ; preds = %86
  %92 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1350
  br label %97, !dbg !1350

93:                                               ; preds = %86
  %94 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1350
  store i8* %94, i8** %2, align 8, !dbg !1350, !tbaa !1063
  %95 = load i8, i8* %88, align 1, !dbg !1350, !tbaa !652
  %96 = zext i8 %95 to i32, !dbg !1350
  br label %97, !dbg !1350

97:                                               ; preds = %93, %91
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ]
  br label %76, !dbg !1339, !llvm.loop !1351

99:                                               ; preds = %51, %76, %41
  %100 = phi i32 [ %16, %41 ], [ %77, %76 ], [ %54, %51 ], !dbg !1282
  ret i32 %100, !dbg !1353
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_space(i32 noundef %0) unnamed_addr #12 !dbg !1354 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1356, metadata !DIExpression()), !dbg !1359
  %2 = load i32, i32* @out_column, align 4, !dbg !1360, !tbaa !643
  %3 = add nsw i32 %2, %0, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %3, metadata !1357, metadata !DIExpression()), !dbg !1359
  %4 = load i1, i1* @tabs, align 1, !dbg !1362
  br i1 %4, label %5, label %31, !dbg !1364

5:                                                ; preds = %1
  %6 = sdiv i32 %3, 8, !dbg !1365
  %7 = shl nsw i32 %6, 3, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %7, metadata !1358, metadata !DIExpression()), !dbg !1359
  %8 = add nsw i32 %2, 1, !dbg !1368
  %9 = icmp slt i32 %8, %7, !dbg !1370
  %10 = icmp slt i32 %2, %7
  %11 = and i1 %9, %10, !dbg !1371
  br i1 %11, label %12, label %31, !dbg !1371

12:                                               ; preds = %5, %25
  %13 = phi i32 [ %29, %25 ], [ %2, %5 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1021, metadata !DIExpression()) #34, !dbg !1372
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1375, !tbaa !544
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 5, !dbg !1375
  %16 = load i8*, i8** %15, align 8, !dbg !1375, !tbaa !1030
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 6, !dbg !1375
  %18 = load i8*, i8** %17, align 8, !dbg !1375, !tbaa !1033
  %19 = icmp ult i8* %16, %18, !dbg !1375
  br i1 %19, label %23, label %20, !dbg !1375, !prof !1034

20:                                               ; preds = %12
  %21 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %14, i32 noundef 9) #34, !dbg !1375
  %22 = load i32, i32* @out_column, align 4, !dbg !1376, !tbaa !643
  br label %25, !dbg !1375

23:                                               ; preds = %12
  %24 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1375
  store i8* %24, i8** %15, align 8, !dbg !1375, !tbaa !1030
  store i8 9, i8* %16, align 1, !dbg !1375, !tbaa !652
  br label %25, !dbg !1375

25:                                               ; preds = %20, %23
  %26 = phi i32 [ %22, %20 ], [ %13, %23 ], !dbg !1376
  %27 = sdiv i32 %26, 8, !dbg !1377
  %28 = shl nsw i32 %27, 3, !dbg !1378
  %29 = add i32 %28, 8, !dbg !1378
  store i32 %29, i32* @out_column, align 4, !dbg !1379, !tbaa !643
  %30 = icmp slt i32 %29, %7, !dbg !1380
  br i1 %30, label %12, label %31, !dbg !1381

31:                                               ; preds = %25, %5, %1
  %32 = phi i32 [ %2, %5 ], [ %2, %1 ], [ %29, %25 ], !dbg !1382
  %33 = icmp slt i32 %32, %3, !dbg !1383
  br i1 %33, label %34, label %51, !dbg !1384

34:                                               ; preds = %31, %47
  %35 = phi i32 [ %49, %47 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1021, metadata !DIExpression()) #34, !dbg !1385
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1388, !tbaa !544
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1388
  %38 = load i8*, i8** %37, align 8, !dbg !1388, !tbaa !1030
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1388
  %40 = load i8*, i8** %39, align 8, !dbg !1388, !tbaa !1033
  %41 = icmp ult i8* %38, %40, !dbg !1388
  br i1 %41, label %45, label %42, !dbg !1388, !prof !1034

42:                                               ; preds = %34
  %43 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %36, i32 noundef 32) #34, !dbg !1388
  %44 = load i32, i32* @out_column, align 4, !dbg !1389, !tbaa !643
  br label %47, !dbg !1388

45:                                               ; preds = %34
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1388
  store i8* %46, i8** %37, align 8, !dbg !1388, !tbaa !1030
  store i8 32, i8* %38, align 1, !dbg !1388, !tbaa !652
  br label %47, !dbg !1388

47:                                               ; preds = %42, %45
  %48 = phi i32 [ %44, %42 ], [ %35, %45 ], !dbg !1389
  %49 = add nsw i32 %48, 1, !dbg !1389
  store i32 %49, i32* @out_column, align 4, !dbg !1389, !tbaa !643
  %50 = icmp slt i32 %49, %3, !dbg !1383
  br i1 %50, label %34, label %51, !dbg !1384, !llvm.loop !1390

51:                                               ; preds = %47, %31
  ret void, !dbg !1392
}

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_line(%struct._IO_FILE* noundef %0, i32 noundef %1) unnamed_addr #12 !dbg !1393 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1395, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i32 %1, metadata !1396, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), metadata !1398, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), metadata !1399, metadata !DIExpression()), !dbg !1400
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1401, !tbaa !544
  br label %6, !dbg !1403

6:                                                ; preds = %191, %2
  %7 = phi %struct.Word* [ %5, %2 ], [ %193, %191 ], !dbg !1401
  %8 = phi i32 [ %1, %2 ], [ %118, %191 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !1396, metadata !DIExpression()), !dbg !1400
  %9 = load i8*, i8** @wptr, align 8, !dbg !1404, !tbaa !544
  %10 = getelementptr inbounds %struct.Word, %struct.Word* %7, i64 0, i32 0, !dbg !1405
  store i8* %9, i8** %10, align 8, !dbg !1406, !tbaa !1407
  br label %13, !dbg !1408

11:                                               ; preds = %57
  %12 = load i8*, i8** @wptr, align 8, !dbg !1409, !tbaa !544
  br label %13, !dbg !1409

13:                                               ; preds = %11, %6
  %14 = phi i8* [ %12, %11 ], [ %9, %6 ], !dbg !1409
  %15 = phi i32 [ %58, %11 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !1396, metadata !DIExpression()), !dbg !1400
  %16 = icmp eq i8* %14, getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), !dbg !1412
  br i1 %16, label %17, label %43, !dbg !1413

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i1 true, metadata !1092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1414
  %18 = load i1, i1* @split, align 1, !dbg !1417
  br i1 %18, label %19, label %21, !dbg !1418

19:                                               ; preds = %17
  %20 = load i32, i32* @first_indent, align 4, !dbg !1419, !tbaa !643
  br label %39, !dbg !1420

21:                                               ; preds = %17
  %22 = load i1, i1* @crown, align 1, !dbg !1421
  br i1 %22, label %23, label %25, !dbg !1422

23:                                               ; preds = %21
  %24 = load i32, i32* @in_column, align 4, !dbg !1423
  br label %39, !dbg !1424

25:                                               ; preds = %21
  %26 = load i1, i1* @tagged, align 1, !dbg !1425
  br i1 %26, label %27, label %37, !dbg !1426

27:                                               ; preds = %25
  %28 = load i32, i32* @in_column, align 4, !dbg !1427, !tbaa !643
  %29 = load i32, i32* @first_indent, align 4, !dbg !1428, !tbaa !643
  %30 = icmp eq i32 %28, %29, !dbg !1429
  br i1 %30, label %31, label %39, !dbg !1430

31:                                               ; preds = %27
  %32 = load i32, i32* @other_indent, align 4, !dbg !1431, !tbaa !643
  %33 = icmp eq i32 %32, %28, !dbg !1432
  br i1 %33, label %34, label %41, !dbg !1433

34:                                               ; preds = %31
  %35 = icmp eq i32 %28, 0, !dbg !1434
  %36 = select i1 %35, i32 3, i32 0, !dbg !1435
  br label %39, !dbg !1436

37:                                               ; preds = %25
  %38 = load i32, i32* @first_indent, align 4, !dbg !1437, !tbaa !643
  br label %39

39:                                               ; preds = %37, %34, %27, %23, %19
  %40 = phi i32 [ %24, %23 ], [ %36, %34 ], [ %38, %37 ], [ %20, %19 ], [ %28, %27 ]
  store i32 %40, i32* @other_indent, align 4, !dbg !1438, !tbaa !643
  br label %41, !dbg !1439

41:                                               ; preds = %31, %39
  tail call fastcc void @flush_paragraph(), !dbg !1440
  %42 = load i8*, i8** @wptr, align 8, !dbg !1441, !tbaa !544
  br label %43, !dbg !1442

43:                                               ; preds = %41, %13
  %44 = phi i8* [ %42, %41 ], [ %14, %13 ], !dbg !1441
  %45 = trunc i32 %15 to i8, !dbg !1443
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1441
  store i8* %46, i8** @wptr, align 8, !dbg !1441, !tbaa !544
  store i8 %45, i8* %44, align 1, !dbg !1444, !tbaa !652
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1055, metadata !DIExpression()) #34, !dbg !1445
  %47 = load i8*, i8** %3, align 8, !dbg !1447, !tbaa !1063
  %48 = load i8*, i8** %4, align 8, !dbg !1447, !tbaa !1064
  %49 = icmp ult i8* %47, %48, !dbg !1447
  br i1 %49, label %50, label %54, !dbg !1447, !prof !1034

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1447
  store i8* %51, i8** %3, align 8, !dbg !1447, !tbaa !1063
  %52 = load i8, i8* %47, align 1, !dbg !1447, !tbaa !652
  %53 = zext i8 %52 to i32, !dbg !1447
  call void @llvm.dbg.value(metadata i32 %55, metadata !1396, metadata !DIExpression()), !dbg !1400
  br label %57, !dbg !1448

54:                                               ; preds = %43
  %55 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1447
  call void @llvm.dbg.value(metadata i32 %55, metadata !1396, metadata !DIExpression()), !dbg !1400
  %56 = icmp eq i32 %55, -1, !dbg !1449
  br i1 %56, label %59, label %57, !dbg !1448

57:                                               ; preds = %50, %54
  %58 = phi i32 [ %53, %50 ], [ %55, %54 ]
  call void @llvm.dbg.value(metadata i32 %55, metadata !1450, metadata !DIExpression()), !dbg !1453
  switch i32 %58, label %11 [
    i32 32, label %59
    i32 9, label %59
    i32 10, label %59
    i32 11, label %59
    i32 12, label %59
    i32 13, label %59
  ], !dbg !1455

59:                                               ; preds = %57, %57, %57, %57, %57, %57, %54
  %60 = phi i32 [ -1, %54 ], [ %58, %57 ], [ %58, %57 ], [ %58, %57 ], [ %58, %57 ], [ %58, %57 ], [ %58, %57 ]
  %61 = load i8*, i8** @wptr, align 8, !dbg !1456, !tbaa !544
  %62 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1457, !tbaa !544
  %63 = getelementptr inbounds %struct.Word, %struct.Word* %62, i64 0, i32 0, !dbg !1458
  %64 = load i8*, i8** %63, align 8, !dbg !1458, !tbaa !1407
  %65 = ptrtoint i8* %61 to i64, !dbg !1459
  %66 = ptrtoint i8* %64 to i64, !dbg !1459
  %67 = sub i64 %65, %66, !dbg !1459
  %68 = trunc i64 %67 to i32, !dbg !1456
  %69 = getelementptr inbounds %struct.Word, %struct.Word* %62, i64 0, i32 1, !dbg !1460
  store i32 %68, i32* %69, align 8, !dbg !1461, !tbaa !1462
  %70 = load i32, i32* @in_column, align 4, !dbg !1463, !tbaa !643
  %71 = add nsw i32 %70, %68, !dbg !1463
  store i32 %71, i32* @in_column, align 4, !dbg !1463, !tbaa !643
  call void @llvm.dbg.value(metadata %struct.Word* %62, metadata !1464, metadata !DIExpression()) #34, !dbg !1470
  call void @llvm.dbg.value(metadata i8* %64, metadata !1467, metadata !DIExpression()) #34, !dbg !1470
  %72 = shl i64 %67, 32, !dbg !1472
  %73 = add i64 %72, -4294967296, !dbg !1472
  %74 = ashr exact i64 %73, 32, !dbg !1472
  %75 = getelementptr inbounds i8, i8* %64, i64 %74, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %75, metadata !1468, metadata !DIExpression()) #34, !dbg !1470
  %76 = load i8, i8* %75, align 1, !dbg !1473, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %76, metadata !1469, metadata !DIExpression()) #34, !dbg !1470
  %77 = load i8, i8* %64, align 1, !dbg !1474, !tbaa !652
  %78 = zext i8 %77 to i32, !dbg !1474
  %79 = tail call i8* @memchr(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i32 %78, i64 6) #34, !dbg !1474
  %80 = icmp ne i8* %79, null, !dbg !1474
  %81 = getelementptr inbounds %struct.Word, %struct.Word* %62, i64 0, i32 3, !dbg !1475
  %82 = zext i1 %80 to i8, !dbg !1476
  %83 = load i8, i8* %81, align 8, !dbg !1476
  %84 = and i8 %83, -2, !dbg !1476
  %85 = or i8 %84, %82, !dbg !1476
  store i8 %85, i8* %81, align 8, !dbg !1476
  %86 = tail call i16** @__ctype_b_loc() #37, !dbg !1477
  %87 = load i16*, i16** %86, align 8, !dbg !1477, !tbaa !544
  %88 = zext i8 %76 to i64
  %89 = getelementptr inbounds i16, i16* %87, i64 %88, !dbg !1477
  %90 = load i16, i16* %89, align 2, !dbg !1477, !tbaa !677
  %91 = trunc i16 %90 to i8, !dbg !1478
  %92 = and i8 %91, 4, !dbg !1478
  %93 = and i8 %85, -5, !dbg !1478
  %94 = or i8 %92, %93, !dbg !1478
  store i8 %94, i8* %81, align 8, !dbg !1478
  %95 = icmp sgt i32 %68, 1, !dbg !1479
  br i1 %95, label %96, label %105, !dbg !1480

96:                                               ; preds = %59, %102
  %97 = phi i8* [ %103, %102 ], [ %75, %59 ]
  call void @llvm.dbg.value(metadata i8* %97, metadata !1468, metadata !DIExpression()) #34, !dbg !1470
  %98 = load i8, i8* %97, align 1, !dbg !1481, !tbaa !652
  %99 = zext i8 %98 to i32, !dbg !1481
  %100 = tail call i8* @memchr(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0), i32 %99, i64 5) #34, !dbg !1481
  %101 = icmp eq i8* %100, null, !dbg !1481
  br i1 %101, label %105, label %102, !dbg !1482

102:                                              ; preds = %96
  %103 = getelementptr inbounds i8, i8* %97, i64 -1, !dbg !1483
  call void @llvm.dbg.value(metadata i8* %103, metadata !1468, metadata !DIExpression()) #34, !dbg !1470
  %104 = icmp ult i8* %64, %103, !dbg !1479
  br i1 %104, label %96, label %105, !dbg !1480, !llvm.loop !1484

105:                                              ; preds = %96, %102, %59
  %106 = phi i8* [ %75, %59 ], [ %97, %96 ], [ %103, %102 ], !dbg !1470
  %107 = load i8, i8* %106, align 1, !dbg !1485, !tbaa !652
  %108 = zext i8 %107 to i64, !dbg !1485
  %109 = icmp ult i8 %107, 64, !dbg !1485
  %110 = shl nuw i64 1, %108, !dbg !1485
  %111 = and i64 %110, -9223301659520663551, !dbg !1485
  %112 = icmp ne i64 %111, 0, !dbg !1485
  %113 = select i1 %109, i1 %112, i1 false, !dbg !1485
  %114 = select i1 %113, i8 2, i8 0, !dbg !1486
  %115 = and i8 %94, -3, !dbg !1486
  %116 = or i8 %114, %115, !dbg !1486
  store i8 %116, i8* %81, align 8, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %71, metadata !1397, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1290, metadata !DIExpression()) #34, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %55, metadata !1291, metadata !DIExpression()) #34, !dbg !1487
  br label %117, !dbg !1489

117:                                              ; preds = %138, %105
  %118 = phi i32 [ %60, %105 ], [ %139, %138 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !1291, metadata !DIExpression()) #34, !dbg !1487
  switch i32 %118, label %140 [
    i32 32, label %119
    i32 9, label %122
  ], !dbg !1490

119:                                              ; preds = %117
  %120 = load i32, i32* @in_column, align 4, !dbg !1491, !tbaa !643
  %121 = add nsw i32 %120, 1, !dbg !1491
  br label %127, !dbg !1492

122:                                              ; preds = %117
  store i1 true, i1* @tabs, align 1, !dbg !1493
  %123 = load i32, i32* @in_column, align 4, !dbg !1494, !tbaa !643
  %124 = sdiv i32 %123, 8, !dbg !1495
  %125 = shl nsw i32 %124, 3, !dbg !1496
  %126 = add i32 %125, 8, !dbg !1496
  br label %127

127:                                              ; preds = %122, %119
  %128 = phi i32 [ %126, %122 ], [ %121, %119 ], !dbg !1497
  store i32 %128, i32* @in_column, align 4, !dbg !1497, !tbaa !643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1055, metadata !DIExpression()) #34, !dbg !1498
  %129 = load i8*, i8** %3, align 8, !dbg !1500, !tbaa !1063
  %130 = load i8*, i8** %4, align 8, !dbg !1500, !tbaa !1064
  %131 = icmp ult i8* %129, %130, !dbg !1500
  br i1 %131, label %134, label %132, !dbg !1500, !prof !1034

132:                                              ; preds = %127
  %133 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1500
  br label %138, !dbg !1500

134:                                              ; preds = %127
  %135 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1500
  store i8* %135, i8** %3, align 8, !dbg !1500, !tbaa !1063
  %136 = load i8, i8* %129, align 1, !dbg !1500, !tbaa !652
  %137 = zext i8 %136 to i32, !dbg !1500
  br label %138, !dbg !1500

138:                                              ; preds = %134, %132
  %139 = phi i32 [ %133, %132 ], [ %137, %134 ]
  br label %117, !dbg !1487, !llvm.loop !1501

140:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 %118, metadata !1396, metadata !DIExpression()), !dbg !1400
  %141 = load i32, i32* @in_column, align 4, !dbg !1503, !tbaa !643
  %142 = sub nsw i32 %141, %71, !dbg !1504
  %143 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1505, !tbaa !544
  %144 = getelementptr inbounds %struct.Word, %struct.Word* %143, i64 0, i32 2, !dbg !1506
  store i32 %142, i32* %144, align 4, !dbg !1507, !tbaa !1508
  %145 = icmp eq i32 %118, -1, !dbg !1509
  %146 = getelementptr inbounds %struct.Word, %struct.Word* %143, i64 0, i32 3
  %147 = load i8, i8* %146, align 8, !dbg !1510
  br i1 %145, label %153, label %148, !dbg !1511

148:                                              ; preds = %140
  %149 = and i8 %147, 2, !dbg !1512
  %150 = icmp eq i8 %149, 0, !dbg !1512
  br i1 %150, label %159, label %151, !dbg !1513

151:                                              ; preds = %148
  %152 = icmp eq i32 %118, 10, !dbg !1514
  br i1 %152, label %153, label %155, !dbg !1515

153:                                              ; preds = %140, %151
  %154 = getelementptr inbounds %struct.Word, %struct.Word* %143, i64 0, i32 3, !dbg !1516
  br label %157, !dbg !1517

155:                                              ; preds = %151
  %156 = icmp sgt i32 %142, 1, !dbg !1518
  br i1 %156, label %157, label %159, !dbg !1517

157:                                              ; preds = %153, %155
  %158 = phi i8* [ %154, %153 ], [ %146, %155 ]
  br label %159, !dbg !1517

159:                                              ; preds = %148, %155, %157
  %160 = phi i8* [ %158, %157 ], [ %146, %155 ], [ %146, %148 ]
  %161 = phi i32 [ 2, %157 ], [ 1, %155 ], [ 1, %148 ]
  %162 = phi i8 [ 8, %157 ], [ 0, %155 ], [ 0, %148 ]
  %163 = and i8 %147, -9, !dbg !1517
  %164 = or i8 %162, %163, !dbg !1517
  store i8 %164, i8* %160, align 8, !dbg !1517
  switch i32 %118, label %165 [
    i32 -1, label %167
    i32 10, label %167
  ], !dbg !1519

165:                                              ; preds = %159
  %166 = load i1, i1* @uniform, align 1, !dbg !1521
  br i1 %166, label %167, label %168, !dbg !1522

167:                                              ; preds = %159, %159, %165
  store i32 %161, i32* %144, align 4, !dbg !1523, !tbaa !1508
  br label %168, !dbg !1524

168:                                              ; preds = %167, %165
  %169 = icmp eq %struct.Word* %143, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), !dbg !1525
  br i1 %169, label %170, label %191, !dbg !1527

170:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i1 true, metadata !1092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1528
  %171 = load i1, i1* @split, align 1, !dbg !1531
  br i1 %171, label %172, label %174, !dbg !1532

172:                                              ; preds = %170
  %173 = load i32, i32* @first_indent, align 4, !dbg !1533, !tbaa !643
  br label %187, !dbg !1534

174:                                              ; preds = %170
  %175 = load i1, i1* @crown, align 1, !dbg !1535
  br i1 %175, label %187, label %176, !dbg !1536

176:                                              ; preds = %174
  %177 = load i1, i1* @tagged, align 1, !dbg !1537
  %178 = load i32, i32* @first_indent, align 4, !dbg !1538, !tbaa !643
  br i1 %177, label %179, label %187, !dbg !1539

179:                                              ; preds = %176
  %180 = icmp eq i32 %141, %178, !dbg !1540
  br i1 %180, label %181, label %187, !dbg !1541

181:                                              ; preds = %179
  %182 = load i32, i32* @other_indent, align 4, !dbg !1542, !tbaa !643
  %183 = icmp eq i32 %182, %141, !dbg !1543
  br i1 %183, label %184, label %189, !dbg !1544

184:                                              ; preds = %181
  %185 = icmp eq i32 %141, 0, !dbg !1545
  %186 = select i1 %185, i32 3, i32 0, !dbg !1546
  br label %187, !dbg !1547

187:                                              ; preds = %176, %174, %184, %179, %172
  %188 = phi i32 [ %186, %184 ], [ %173, %172 ], [ %141, %179 ], [ %141, %174 ], [ %178, %176 ]
  store i32 %188, i32* @other_indent, align 4, !dbg !1548, !tbaa !643
  br label %189, !dbg !1549

189:                                              ; preds = %181, %187
  tail call fastcc void @flush_paragraph(), !dbg !1550
  %190 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1551, !tbaa !544
  br label %191, !dbg !1552

191:                                              ; preds = %189, %168
  %192 = phi %struct.Word* [ %190, %189 ], [ %143, %168 ], !dbg !1551
  %193 = getelementptr inbounds %struct.Word, %struct.Word* %192, i64 1, !dbg !1551
  store %struct.Word* %193, %struct.Word** @word_limit, align 8, !dbg !1551, !tbaa !544
  switch i32 %118, label %6 [
    i32 -1, label %194
    i32 10, label %194
  ], !dbg !1553

194:                                              ; preds = %191, %191
  %195 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* noundef %0), !dbg !1554
  ret i32 %195, !dbg !1555
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #13 !dbg !1556 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1565, !tbaa !544
  %2 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 5, !dbg !1566
  store i64 0, i64* %2, align 8, !dbg !1567, !tbaa !1568
  %3 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 1, !dbg !1569
  %4 = load i32, i32* %3, align 8, !dbg !1569, !tbaa !1462
  call void @llvm.dbg.value(metadata i32 %4, metadata !1562, metadata !DIExpression()), !dbg !1570
  %5 = load i32, i32* @max_width, align 4, !dbg !1571, !tbaa !643
  store i32 %5, i32* %3, align 8, !dbg !1572, !tbaa !1462
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !1563, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1573
  %6 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 -1, !dbg !1573
  call void @llvm.dbg.value(metadata %struct.Word* %6, metadata !1563, metadata !DIExpression()), !dbg !1573
  %7 = icmp ult %struct.Word* %6, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1574
  br i1 %7, label %14, label %8, !dbg !1576

8:                                                ; preds = %0
  %9 = load i32, i32* @first_indent, align 4
  %10 = load i32, i32* @other_indent, align 4
  %11 = load i32, i32* @last_line_length, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = load i32, i32* @goal_width, align 4
  br label %15, !dbg !1576

14:                                               ; preds = %119, %0
  store i32 %4, i32* %3, align 8, !dbg !1577, !tbaa !1462
  ret void, !dbg !1578

15:                                               ; preds = %8, %119
  %16 = phi %struct.Word* [ %6, %8 ], [ %123, %119 ]
  %17 = phi %struct.Word* [ %1, %8 ], [ %16, %119 ]
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1561, metadata !DIExpression()), !dbg !1570
  %18 = icmp eq %struct.Word* %16, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1579
  %19 = select i1 %18, i32 %9, i32 %10, !dbg !1581
  call void @llvm.dbg.value(metadata i32 %19, metadata !1559, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata %struct.Word* %16, metadata !1558, metadata !DIExpression()), !dbg !1570
  %20 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -1, i32 1, !dbg !1582
  %21 = load i32, i32* %20, align 8, !dbg !1582, !tbaa !1462
  %22 = add nsw i32 %19, %21, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %22, metadata !1559, metadata !DIExpression()), !dbg !1570
  %23 = select i1 %18, i1 %12, i1 false
  %24 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -1, i32 6
  %25 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -1, i32 4
  br label %26, !dbg !1584

26:                                               ; preds = %67, %15
  %27 = phi i32 [ %22, %15 ], [ %73, %67 ], !dbg !1585
  %28 = phi i64 [ 9223372036854775807, %15 ], [ %66, %67 ], !dbg !1585
  %29 = phi %struct.Word* [ %16, %15 ], [ %30, %67 ], !dbg !1585
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !1558, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %28, metadata !1561, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i32 %27, metadata !1559, metadata !DIExpression()), !dbg !1570
  %30 = getelementptr inbounds %struct.Word, %struct.Word* %29, i64 1, !dbg !1586
  call void @llvm.dbg.value(metadata %struct.Word* %30, metadata !1558, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata %struct.Word* %30, metadata !1588, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i32 %27, metadata !1593, metadata !DIExpression()), !dbg !1596
  %31 = icmp eq %struct.Word* %1, %30, !dbg !1598
  br i1 %31, label %49, label %32, !dbg !1600

32:                                               ; preds = %26
  %33 = sub nsw i32 %13, %27, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %33, metadata !1594, metadata !DIExpression()), !dbg !1596
  %34 = mul nsw i32 %33, 10, !dbg !1602
  %35 = sext i32 %34 to i64, !dbg !1602
  %36 = mul nsw i64 %35, %35, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %36, metadata !1595, metadata !DIExpression()), !dbg !1596
  %37 = getelementptr inbounds %struct.Word, %struct.Word* %29, i64 1, i32 6, !dbg !1603
  %38 = load %struct.Word*, %struct.Word** %37, align 8, !dbg !1603, !tbaa !1227
  %39 = icmp eq %struct.Word* %38, %1, !dbg !1605
  br i1 %39, label %49, label %40, !dbg !1606

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.Word, %struct.Word* %29, i64 1, i32 4, !dbg !1607
  %42 = load i32, i32* %41, align 4, !dbg !1607, !tbaa !1609
  %43 = sub nsw i32 %27, %42, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %43, metadata !1594, metadata !DIExpression()), !dbg !1596
  %44 = mul nsw i32 %43, 10, !dbg !1611
  %45 = sext i32 %44 to i64, !dbg !1611
  %46 = mul nsw i64 %45, %45, !dbg !1611
  %47 = lshr exact i64 %46, 1, !dbg !1611
  %48 = add nuw nsw i64 %47, %36, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %48, metadata !1595, metadata !DIExpression()), !dbg !1596
  br label %49, !dbg !1613

49:                                               ; preds = %26, %32, %40
  %50 = phi i64 [ 0, %26 ], [ %48, %40 ], [ %36, %32 ], !dbg !1596
  %51 = getelementptr inbounds %struct.Word, %struct.Word* %29, i64 1, i32 5, !dbg !1614
  %52 = load i64, i64* %51, align 8, !dbg !1614, !tbaa !1568
  %53 = add nsw i64 %52, %50, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %53, metadata !1560, metadata !DIExpression()), !dbg !1570
  br i1 %23, label %54, label %61, !dbg !1616

54:                                               ; preds = %49
  %55 = sub nsw i32 %27, %11, !dbg !1618
  %56 = mul nsw i32 %55, 10, !dbg !1618
  %57 = sext i32 %56 to i64, !dbg !1618
  %58 = mul nsw i64 %57, %57, !dbg !1618
  %59 = lshr exact i64 %58, 1, !dbg !1618
  %60 = add nsw i64 %59, %53, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %60, metadata !1560, metadata !DIExpression()), !dbg !1570
  br label %61, !dbg !1620

61:                                               ; preds = %54, %49
  %62 = phi i64 [ %60, %54 ], [ %53, %49 ], !dbg !1621
  call void @llvm.dbg.value(metadata i64 %62, metadata !1560, metadata !DIExpression()), !dbg !1570
  %63 = icmp slt i64 %62, %28, !dbg !1622
  br i1 %63, label %64, label %65, !dbg !1624

64:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 %62, metadata !1561, metadata !DIExpression()), !dbg !1570
  store %struct.Word* %30, %struct.Word** %24, align 8, !dbg !1625, !tbaa !1227
  store i32 %27, i32* %25, align 4, !dbg !1627, !tbaa !1609
  br label %65, !dbg !1628

65:                                               ; preds = %64, %61
  %66 = phi i64 [ %62, %64 ], [ %28, %61 ], !dbg !1585
  call void @llvm.dbg.value(metadata i64 %66, metadata !1561, metadata !DIExpression()), !dbg !1570
  br i1 %31, label %75, label %67, !dbg !1629

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.Word, %struct.Word* %29, i64 0, i32 2, !dbg !1630
  %69 = load i32, i32* %68, align 4, !dbg !1630, !tbaa !1508
  %70 = getelementptr inbounds %struct.Word, %struct.Word* %29, i64 1, i32 1, !dbg !1631
  %71 = load i32, i32* %70, align 8, !dbg !1631, !tbaa !1462
  %72 = add i32 %69, %27, !dbg !1632
  %73 = add i32 %72, %71, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %73, metadata !1559, metadata !DIExpression()), !dbg !1570
  %74 = icmp sgt i32 %73, %5, !dbg !1634
  br i1 %74, label %75, label %26, !dbg !1635, !llvm.loop !1636

75:                                               ; preds = %65, %67
  call void @llvm.dbg.value(metadata %struct.Word* %16, metadata !1638, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 4900, metadata !1643, metadata !DIExpression()), !dbg !1644
  %76 = icmp ugt %struct.Word* %16, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1646
  br i1 %76, label %77, label %103, !dbg !1648

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -2, i32 3, !dbg !1649
  %79 = load i8, i8* %78, align 8, !dbg !1649
  %80 = and i8 %79, 2, !dbg !1652
  %81 = icmp eq i8 %80, 0, !dbg !1652
  br i1 %81, label %86, label %82, !dbg !1653

82:                                               ; preds = %77
  %83 = and i8 %79, 8, !dbg !1654
  %84 = icmp eq i8 %83, 0, !dbg !1654
  %85 = select i1 %84, i64 364900, i64 2400
  br label %103

86:                                               ; preds = %77
  %87 = and i8 %79, 4, !dbg !1657
  %88 = icmp eq i8 %87, 0, !dbg !1657
  br i1 %88, label %89, label %103, !dbg !1659

89:                                               ; preds = %86
  %90 = icmp ugt %struct.Word* %16, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 1), !dbg !1660
  br i1 %90, label %91, label %103, !dbg !1662

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -3, i32 3, !dbg !1663
  %93 = load i8, i8* %92, align 8, !dbg !1663
  %94 = and i8 %93, 8, !dbg !1664
  %95 = icmp eq i8 %94, 0, !dbg !1664
  br i1 %95, label %103, label %96, !dbg !1665

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -2, i32 1, !dbg !1666
  %98 = load i32, i32* %97, align 8, !dbg !1666, !tbaa !1462
  %99 = add nsw i32 %98, 2, !dbg !1666
  %100 = sdiv i32 40000, %99, !dbg !1666
  %101 = add nsw i32 %100, 4900, !dbg !1667
  %102 = sext i32 %101 to i64, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %102, metadata !1643, metadata !DIExpression()), !dbg !1644
  br label %103, !dbg !1668

103:                                              ; preds = %96, %91, %89, %86, %82, %75
  %104 = phi i64 [ %102, %96 ], [ 4900, %91 ], [ 4900, %89 ], [ 4900, %75 ], [ %85, %82 ], [ 3300, %86 ], !dbg !1644
  call void @llvm.dbg.value(metadata i64 %104, metadata !1643, metadata !DIExpression()), !dbg !1644
  %105 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -1, i32 3, !dbg !1669
  %106 = load i8, i8* %105, align 8, !dbg !1669
  %107 = and i8 %106, 1, !dbg !1669
  %108 = icmp eq i8 %107, 0, !dbg !1671
  br i1 %108, label %111, label %109, !dbg !1672

109:                                              ; preds = %103
  %110 = add nsw i64 %104, -1600, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %110, metadata !1643, metadata !DIExpression()), !dbg !1644
  br label %119, !dbg !1674

111:                                              ; preds = %103
  %112 = and i8 %106, 8, !dbg !1675
  %113 = icmp eq i8 %112, 0, !dbg !1675
  br i1 %113, label %119, label %114, !dbg !1677

114:                                              ; preds = %111
  %115 = add nsw i32 %21, 2, !dbg !1678
  %116 = sdiv i32 22500, %115, !dbg !1678
  %117 = sext i32 %116 to i64, !dbg !1678
  %118 = add nsw i64 %104, %117, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %118, metadata !1643, metadata !DIExpression()), !dbg !1644
  br label %119, !dbg !1680

119:                                              ; preds = %109, %111, %114
  %120 = phi i64 [ %110, %109 ], [ %118, %114 ], [ %104, %111 ], !dbg !1644
  call void @llvm.dbg.value(metadata i64 %120, metadata !1643, metadata !DIExpression()), !dbg !1644
  %121 = add nsw i64 %120, %66, !dbg !1681
  %122 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 -1, i32 5, !dbg !1682
  store i64 %121, i64* %122, align 8, !dbg !1683, !tbaa !1568
  call void @llvm.dbg.value(metadata %struct.Word* %16, metadata !1563, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1573
  %123 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, !dbg !1573
  call void @llvm.dbg.value(metadata %struct.Word* %123, metadata !1563, metadata !DIExpression()), !dbg !1573
  %124 = icmp ult %struct.Word* %123, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1574
  br i1 %124, label %14, label %15, !dbg !1576, !llvm.loop !1684
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_line(%struct.Word* noundef readonly %0, i32 noundef %1) unnamed_addr #12 !dbg !1686 {
  call void @llvm.dbg.value(metadata %struct.Word* %0, metadata !1690, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 %1, metadata !1691, metadata !DIExpression()), !dbg !1693
  store i32 0, i32* @out_column, align 4, !dbg !1694, !tbaa !643
  %3 = load i32, i32* @prefix_indent, align 4, !dbg !1695, !tbaa !643
  tail call fastcc void @put_space(i32 noundef %3), !dbg !1696
  %4 = load i8*, i8** @prefix, align 8, !dbg !1697, !tbaa !544
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1697, !tbaa !544
  %6 = tail call i32 @fputs_unlocked(i8* noundef %4, %struct._IO_FILE* noundef %5), !dbg !1697
  %7 = load i32, i32* @prefix_length, align 4, !dbg !1698, !tbaa !643
  %8 = load i32, i32* @out_column, align 4, !dbg !1699, !tbaa !643
  %9 = add nsw i32 %8, %7, !dbg !1699
  store i32 %9, i32* @out_column, align 4, !dbg !1699, !tbaa !643
  %10 = sub nsw i32 %1, %9, !dbg !1700
  tail call fastcc void @put_space(i32 noundef %10), !dbg !1701
  %11 = getelementptr inbounds %struct.Word, %struct.Word* %0, i64 0, i32 6, !dbg !1702
  %12 = load %struct.Word*, %struct.Word** %11, align 8, !dbg !1702, !tbaa !1227
  %13 = getelementptr inbounds %struct.Word, %struct.Word* %12, i64 -1, !dbg !1703
  call void @llvm.dbg.value(metadata %struct.Word* %13, metadata !1692, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata %struct.Word* %0, metadata !1690, metadata !DIExpression()), !dbg !1693
  %14 = icmp eq %struct.Word* %13, %0, !dbg !1704
  br i1 %14, label %52, label %15, !dbg !1707

15:                                               ; preds = %2, %44
  %16 = phi %struct.Word* [ %50, %44 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata %struct.Word* %16, metadata !1690, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata %struct.Word* %16, metadata !1708, metadata !DIExpression()) #34, !dbg !1714
  call void @llvm.dbg.value(metadata i8* undef, metadata !1711, metadata !DIExpression()) #34, !dbg !1714
  %17 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 0, i32 1, !dbg !1717
  %18 = load i32, i32* %17, align 8, !dbg !1717, !tbaa !1462
  call void @llvm.dbg.value(metadata i32 %18, metadata !1712, metadata !DIExpression()) #34, !dbg !1718
  call void @llvm.dbg.value(metadata i8* undef, metadata !1711, metadata !DIExpression()) #34, !dbg !1714
  %19 = icmp eq i32 %18, 0, !dbg !1719
  br i1 %19, label %44, label %20, !dbg !1721

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 0, i32 0, !dbg !1722
  %22 = load i8*, i8** %21, align 8, !dbg !1722, !tbaa !1407
  call void @llvm.dbg.value(metadata i8* %22, metadata !1711, metadata !DIExpression()) #34, !dbg !1714
  br label %25, !dbg !1721

23:                                               ; preds = %41
  %24 = load i32, i32* %17, align 8, !dbg !1723, !tbaa !1462
  br label %44, !dbg !1723

25:                                               ; preds = %41, %20
  %26 = phi i32 [ %42, %41 ], [ %18, %20 ]
  %27 = phi i8* [ %28, %41 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !1712, metadata !DIExpression()) #34, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %27, metadata !1711, metadata !DIExpression()) #34, !dbg !1714
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %28, metadata !1711, metadata !DIExpression()) #34, !dbg !1714
  %29 = load i8, i8* %27, align 1, !dbg !1724, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %29, metadata !1021, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1725
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1727, !tbaa !544
  %31 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %30, i64 0, i32 5, !dbg !1727
  %32 = load i8*, i8** %31, align 8, !dbg !1727, !tbaa !1030
  %33 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %30, i64 0, i32 6, !dbg !1727
  %34 = load i8*, i8** %33, align 8, !dbg !1727, !tbaa !1033
  %35 = icmp ult i8* %32, %34, !dbg !1727
  br i1 %35, label %39, label %36, !dbg !1727, !prof !1034

36:                                               ; preds = %25
  %37 = zext i8 %29 to i32, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %37, metadata !1021, metadata !DIExpression()) #34, !dbg !1725
  %38 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %30, i32 noundef %37) #34, !dbg !1727
  br label %41, !dbg !1727

39:                                               ; preds = %25
  %40 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1727
  store i8* %40, i8** %31, align 8, !dbg !1727, !tbaa !1030
  store i8 %29, i8* %32, align 1, !dbg !1727, !tbaa !652
  br label %41, !dbg !1727

41:                                               ; preds = %39, %36
  %42 = add nsw i32 %26, -1, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %42, metadata !1712, metadata !DIExpression()) #34, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %28, metadata !1711, metadata !DIExpression()) #34, !dbg !1714
  %43 = icmp eq i32 %42, 0, !dbg !1719
  br i1 %43, label %23, label %25, !dbg !1721, !llvm.loop !1729

44:                                               ; preds = %15, %23
  %45 = phi i32 [ %24, %23 ], [ 0, %15 ], !dbg !1723
  %46 = load i32, i32* @out_column, align 4, !dbg !1731, !tbaa !643
  %47 = add nsw i32 %46, %45, !dbg !1731
  store i32 %47, i32* @out_column, align 4, !dbg !1731, !tbaa !643
  %48 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 0, i32 2, !dbg !1732
  %49 = load i32, i32* %48, align 4, !dbg !1732, !tbaa !1508
  tail call fastcc void @put_space(i32 noundef %49), !dbg !1733
  %50 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 1, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.Word* %50, metadata !1690, metadata !DIExpression()), !dbg !1693
  %51 = icmp eq %struct.Word* %50, %13, !dbg !1704
  br i1 %51, label %52, label %15, !dbg !1707, !llvm.loop !1735

52:                                               ; preds = %44, %2
  %53 = phi %struct.Word* [ %0, %2 ], [ %13, %44 ]
  call void @llvm.dbg.value(metadata %struct.Word* %53, metadata !1708, metadata !DIExpression()) #34, !dbg !1737
  call void @llvm.dbg.value(metadata i8* undef, metadata !1711, metadata !DIExpression()) #34, !dbg !1737
  %54 = getelementptr inbounds %struct.Word, %struct.Word* %53, i64 0, i32 1, !dbg !1739
  %55 = load i32, i32* %54, align 8, !dbg !1739, !tbaa !1462
  call void @llvm.dbg.value(metadata i32 %55, metadata !1712, metadata !DIExpression()) #34, !dbg !1740
  %56 = icmp eq i32 %55, 0, !dbg !1741
  br i1 %56, label %81, label %57, !dbg !1742

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Word, %struct.Word* %53, i64 0, i32 0, !dbg !1743
  %59 = load i8*, i8** %58, align 8, !dbg !1743, !tbaa !1407
  call void @llvm.dbg.value(metadata i8* %59, metadata !1711, metadata !DIExpression()) #34, !dbg !1737
  br label %62, !dbg !1742

60:                                               ; preds = %78
  %61 = load i32, i32* %54, align 8, !dbg !1744, !tbaa !1462
  br label %81, !dbg !1744

62:                                               ; preds = %78, %57
  %63 = phi i32 [ %79, %78 ], [ %55, %57 ]
  %64 = phi i8* [ %65, %78 ], [ %59, %57 ]
  call void @llvm.dbg.value(metadata i32 %63, metadata !1712, metadata !DIExpression()) #34, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %64, metadata !1711, metadata !DIExpression()) #34, !dbg !1737
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %65, metadata !1711, metadata !DIExpression()) #34, !dbg !1737
  %66 = load i8, i8* %64, align 1, !dbg !1745, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %66, metadata !1021, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1746
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1748, !tbaa !544
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 5, !dbg !1748
  %69 = load i8*, i8** %68, align 8, !dbg !1748, !tbaa !1030
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %67, i64 0, i32 6, !dbg !1748
  %71 = load i8*, i8** %70, align 8, !dbg !1748, !tbaa !1033
  %72 = icmp ult i8* %69, %71, !dbg !1748
  br i1 %72, label %76, label %73, !dbg !1748, !prof !1034

73:                                               ; preds = %62
  %74 = zext i8 %66 to i32, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %74, metadata !1021, metadata !DIExpression()) #34, !dbg !1746
  %75 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %67, i32 noundef %74) #34, !dbg !1748
  br label %78, !dbg !1748

76:                                               ; preds = %62
  %77 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1748
  store i8* %77, i8** %68, align 8, !dbg !1748, !tbaa !1030
  store i8 %66, i8* %69, align 1, !dbg !1748, !tbaa !652
  br label %78, !dbg !1748

78:                                               ; preds = %76, %73
  %79 = add nsw i32 %63, -1, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %79, metadata !1712, metadata !DIExpression()) #34, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %65, metadata !1711, metadata !DIExpression()) #34, !dbg !1737
  %80 = icmp eq i32 %79, 0, !dbg !1741
  br i1 %80, label %60, label %62, !dbg !1742, !llvm.loop !1750

81:                                               ; preds = %52, %60
  %82 = phi i32 [ %61, %60 ], [ 0, %52 ], !dbg !1744
  %83 = load i32, i32* @out_column, align 4, !dbg !1752, !tbaa !643
  %84 = add nsw i32 %83, %82, !dbg !1752
  store i32 %84, i32* @out_column, align 4, !dbg !1752, !tbaa !643
  store i32 %84, i32* @last_line_length, align 4, !dbg !1753, !tbaa !643
  call void @llvm.dbg.value(metadata i32 10, metadata !1021, metadata !DIExpression()) #34, !dbg !1754
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1756, !tbaa !544
  %86 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 5, !dbg !1756
  %87 = load i8*, i8** %86, align 8, !dbg !1756, !tbaa !1030
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 6, !dbg !1756
  %89 = load i8*, i8** %88, align 8, !dbg !1756, !tbaa !1033
  %90 = icmp ult i8* %87, %89, !dbg !1756
  br i1 %90, label %93, label %91, !dbg !1756, !prof !1034

91:                                               ; preds = %81
  %92 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %85, i32 noundef 10) #34, !dbg !1756
  br label %95, !dbg !1756

93:                                               ; preds = %81
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1756
  store i8* %94, i8** %86, align 8, !dbg !1756, !tbaa !1030
  store i8 10, i8* %87, align 1, !dbg !1756, !tbaa !652
  br label %95, !dbg !1756

95:                                               ; preds = %91, %93
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1757, !tbaa !544
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %96, metadata !1239, metadata !DIExpression()), !dbg !1759
  %97 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %96, i64 0, i32 0, !dbg !1761
  %98 = load i32, i32* %97, align 8, !dbg !1761, !tbaa !1245
  %99 = and i32 %98, 32, !dbg !1757
  %100 = icmp eq i32 %99, 0, !dbg !1757
  br i1 %100, label %109, label %101, !dbg !1762

101:                                              ; preds = %95
  %102 = tail call i32* @__errno_location() #37, !dbg !1763
  %103 = load i32, i32* %102, align 4, !dbg !1763, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %103, metadata !1766, metadata !DIExpression()) #34, !dbg !1768
  %104 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %96) #34, !dbg !1769
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1770, !tbaa !544
  %106 = tail call i32 @fpurge(%struct._IO_FILE* noundef %105) #34, !dbg !1771
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1772, !tbaa !544
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %107) #34, !dbg !1772
  %108 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !1773
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %103, i8* noundef %108) #34, !dbg !1773
  unreachable, !dbg !1773

109:                                              ; preds = %95
  ret void, !dbg !1774
}

; Function Attrs: nounwind
declare !dbg !1775 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare !dbg !1778 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #12 !dbg !1779 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1793, !tbaa !544
  %2 = icmp eq %struct.Word* %1, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1794
  br i1 %2, label %3, label %20, !dbg !1795

3:                                                ; preds = %0
  %4 = load i8*, i8** @wptr, align 8, !dbg !1796, !tbaa !544
  %5 = ptrtoint i8* %4 to i64, !dbg !1797
  %6 = sub i64 %5, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %6, metadata !1785, metadata !DIExpression()), !dbg !1798
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1799, !tbaa !544
  %8 = tail call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i64 noundef 1, i64 noundef %6, %struct._IO_FILE* noundef %7), !dbg !1799
  %9 = icmp eq i64 %8, %6, !dbg !1800
  br i1 %9, label %19, label %10, !dbg !1801

10:                                               ; preds = %3
  %11 = tail call i32* @__errno_location() #37, !dbg !1802
  %12 = load i32, i32* %11, align 4, !dbg !1802, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %12, metadata !1766, metadata !DIExpression()) #34, !dbg !1804
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1805, !tbaa !544
  %14 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %13) #34, !dbg !1805
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1806, !tbaa !544
  %16 = tail call i32 @fpurge(%struct._IO_FILE* noundef %15) #34, !dbg !1807
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1808, !tbaa !544
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %17) #34, !dbg !1808
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !1809
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %12, i8* noundef %18) #34, !dbg !1809
  unreachable, !dbg !1809

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1810, !tbaa !544
  br label %123

20:                                               ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !1811
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !1781, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1784, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1782, metadata !DIExpression()), !dbg !1812
  %21 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 8, !dbg !1813, !tbaa !1227
  call void @llvm.dbg.value(metadata %struct.Word* %21, metadata !1782, metadata !DIExpression()), !dbg !1812
  %22 = icmp eq %struct.Word* %21, %1, !dbg !1815
  br i1 %22, label %43, label %23, !dbg !1817

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Word, %struct.Word* %21, i64 0, i32 5
  %25 = load i64, i64* %24, align 8, !dbg !1818, !tbaa !1568
  br label %26, !dbg !1817

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %34, %26 ], [ %25, %23 ], !dbg !1818
  %28 = phi %struct.Word* [ %32, %26 ], [ %21, %23 ]
  %29 = phi %struct.Word* [ %38, %26 ], [ %1, %23 ]
  %30 = phi i64 [ %41, %26 ], [ 9223372036854775807, %23 ]
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !1781, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %30, metadata !1784, metadata !DIExpression()), !dbg !1812
  %31 = getelementptr inbounds %struct.Word, %struct.Word* %28, i64 0, i32 6, !dbg !1821
  %32 = load %struct.Word*, %struct.Word** %31, align 8, !dbg !1821, !tbaa !1227
  %33 = getelementptr inbounds %struct.Word, %struct.Word* %32, i64 0, i32 5, !dbg !1822
  %34 = load i64, i64* %33, align 8, !dbg !1822, !tbaa !1568
  %35 = sub nsw i64 %27, %34, !dbg !1823
  %36 = icmp slt i64 %35, %30, !dbg !1824
  %37 = select i1 %36, i64 %35, i64 %30, !dbg !1825
  %38 = select i1 %36, %struct.Word* %28, %struct.Word* %29, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.Word* %38, metadata !1781, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %37, metadata !1784, metadata !DIExpression()), !dbg !1812
  %39 = icmp slt i64 %37, 9223372036854775799, !dbg !1826
  %40 = add nsw i64 %37, 9, !dbg !1828
  %41 = select i1 %39, i64 %40, i64 %37, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %41, metadata !1784, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata %struct.Word* %32, metadata !1782, metadata !DIExpression()), !dbg !1812
  %42 = icmp eq %struct.Word* %32, %1, !dbg !1815
  br i1 %42, label %43, label %26, !dbg !1817, !llvm.loop !1829

43:                                               ; preds = %26, %20
  %44 = phi %struct.Word* [ %1, %20 ], [ %38, %26 ], !dbg !1812
  %45 = ptrtoint %struct.Word* %44 to i64, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.Word* %44, metadata !1215, metadata !DIExpression()) #34, !dbg !1831
  %46 = load i32, i32* @first_indent, align 4, !dbg !1833, !tbaa !643
  tail call fastcc void @put_line(%struct.Word* noundef getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 noundef %46) #34, !dbg !1834
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1220, metadata !DIExpression()) #34, !dbg !1835
  %47 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 8, !dbg !1835, !tbaa !1227
  call void @llvm.dbg.value(metadata %struct.Word* %47, metadata !1220, metadata !DIExpression()) #34, !dbg !1835
  %48 = icmp eq %struct.Word* %47, %44, !dbg !1836
  br i1 %48, label %55, label %49, !dbg !1837

49:                                               ; preds = %43, %49
  %50 = phi %struct.Word* [ %53, %49 ], [ %47, %43 ]
  %51 = load i32, i32* @other_indent, align 4, !dbg !1838, !tbaa !643
  tail call fastcc void @put_line(%struct.Word* noundef %50, i32 noundef %51) #34, !dbg !1839
  %52 = getelementptr inbounds %struct.Word, %struct.Word* %50, i64 0, i32 6, !dbg !1840
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1220, metadata !DIExpression()) #34, !dbg !1835
  %53 = load %struct.Word*, %struct.Word** %52, align 8, !dbg !1835, !tbaa !1227
  call void @llvm.dbg.value(metadata %struct.Word* %53, metadata !1220, metadata !DIExpression()) #34, !dbg !1835
  %54 = icmp eq %struct.Word* %53, %44, !dbg !1836
  br i1 %54, label %55, label %49, !dbg !1837, !llvm.loop !1841

55:                                               ; preds = %49, %43
  %56 = getelementptr inbounds %struct.Word, %struct.Word* %44, i64 0, i32 0, !dbg !1843
  %57 = load i8*, i8** %56, align 8, !dbg !1843, !tbaa !1407
  %58 = load i8*, i8** @wptr, align 8, !dbg !1844, !tbaa !544
  %59 = ptrtoint i8* %58 to i64, !dbg !1845
  %60 = ptrtoint i8* %57 to i64, !dbg !1845
  %61 = sub i64 %59, %60, !dbg !1845
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), metadata !1846, metadata !DIExpression()) #34, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %57, metadata !1852, metadata !DIExpression()) #34, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %61, metadata !1853, metadata !DIExpression()) #34, !dbg !1854
  %62 = tail call i8* @__memmove_chk(i8* noundef nonnull getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8* noundef nonnull %57, i64 noundef %61, i64 noundef 5000) #34, !dbg !1856
  %63 = load i8*, i8** %56, align 8, !dbg !1857, !tbaa !1407
  %64 = ptrtoint i8* %63 to i64, !dbg !1858
  %65 = sub i64 %64, sext (i32 ptrtoint ([5000 x i8]* @parabuf to i32) to i64), !dbg !1859
  call void @llvm.dbg.value(metadata !DIArgList(i64 %64, i32 ptrtoint ([5000 x i8]* @parabuf to i32)), metadata !1783, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1812
  %66 = load i8*, i8** @wptr, align 8, !dbg !1860, !tbaa !544
  %67 = shl i64 %65, 32, !dbg !1860
  %68 = ashr exact i64 %67, 32, !dbg !1860
  %69 = sub nsw i64 0, %68, !dbg !1860
  %70 = getelementptr inbounds i8, i8* %66, i64 %69, !dbg !1860
  store i8* %70, i8** @wptr, align 8, !dbg !1860, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.Word* %44, metadata !1782, metadata !DIExpression()), !dbg !1812
  %71 = load %struct.Word*, %struct.Word** @word_limit, align 8, !tbaa !544
  %72 = icmp ugt %struct.Word* %44, %71, !dbg !1861
  br i1 %72, label %112, label %73, !dbg !1864

73:                                               ; preds = %55
  %74 = ptrtoint %struct.Word* %71 to i64, !dbg !1861
  %75 = add i64 %45, 40, !dbg !1864
  %76 = add nuw i64 %74, 1, !dbg !1864
  %77 = call i64 @llvm.umax.i64(i64 %75, i64 %76), !dbg !1864
  %78 = add i64 %77, -40, !dbg !1864
  %79 = sub i64 %78, %45, !dbg !1864
  %80 = icmp ne i64 %79, 0, !dbg !1864
  %81 = zext i1 %80 to i64, !dbg !1864
  %82 = sub i64 %79, %81, !dbg !1864
  %83 = udiv i64 %82, 40, !dbg !1864
  %84 = add nuw nsw i64 %83, %81, !dbg !1864
  %85 = add nuw nsw i64 %84, 1, !dbg !1864
  %86 = icmp eq i64 %84, 0, !dbg !1864
  br i1 %86, label %103, label %87, !dbg !1864

87:                                               ; preds = %73
  %88 = and i64 %85, 2305843009213693950, !dbg !1864
  %89 = getelementptr %struct.Word, %struct.Word* %44, i64 %88, !dbg !1864
  br label %90, !dbg !1864

90:                                               ; preds = %90, %87
  %91 = phi i64 [ 0, %87 ], [ %99, %90 ]
  %92 = or i64 %91, 1
  %93 = getelementptr %struct.Word, %struct.Word* %44, i64 %91, i32 0, !dbg !1865
  %94 = getelementptr %struct.Word, %struct.Word* %44, i64 %92, i32 0, !dbg !1865
  %95 = load i8*, i8** %93, align 8, !dbg !1866, !tbaa !1407
  %96 = load i8*, i8** %94, align 8, !dbg !1866, !tbaa !1407
  %97 = getelementptr inbounds i8, i8* %95, i64 %69, !dbg !1866
  %98 = getelementptr inbounds i8, i8* %96, i64 %69, !dbg !1866
  store i8* %97, i8** %93, align 8, !dbg !1866, !tbaa !1407
  store i8* %98, i8** %94, align 8, !dbg !1866, !tbaa !1407
  %99 = add nuw i64 %91, 2
  %100 = icmp eq i64 %99, %88
  br i1 %100, label %101, label %90, !llvm.loop !1867

101:                                              ; preds = %90
  %102 = icmp eq i64 %85, %88, !dbg !1864
  br i1 %102, label %112, label %103, !dbg !1864

103:                                              ; preds = %73, %101
  %104 = phi %struct.Word* [ %44, %73 ], [ %89, %101 ]
  br label %105, !dbg !1864

105:                                              ; preds = %103, %105
  %106 = phi %struct.Word* [ %110, %105 ], [ %104, %103 ]
  call void @llvm.dbg.value(metadata %struct.Word* %106, metadata !1782, metadata !DIExpression()), !dbg !1812
  %107 = getelementptr inbounds %struct.Word, %struct.Word* %106, i64 0, i32 0, !dbg !1865
  %108 = load i8*, i8** %107, align 8, !dbg !1866, !tbaa !1407
  %109 = getelementptr inbounds i8, i8* %108, i64 %69, !dbg !1866
  store i8* %109, i8** %107, align 8, !dbg !1866, !tbaa !1407
  %110 = getelementptr inbounds %struct.Word, %struct.Word* %106, i64 1, !dbg !1870
  call void @llvm.dbg.value(metadata %struct.Word* %110, metadata !1782, metadata !DIExpression()), !dbg !1812
  %111 = icmp ugt %struct.Word* %110, %71, !dbg !1861
  br i1 %111, label %112, label %105, !dbg !1864, !llvm.loop !1871

112:                                              ; preds = %105, %101, %55
  %113 = bitcast %struct.Word* %44 to i8*, !dbg !1872
  %114 = ptrtoint %struct.Word* %71 to i64, !dbg !1873
  %115 = ptrtoint %struct.Word* %44 to i64, !dbg !1873
  %116 = sub i64 40, %115, !dbg !1873
  %117 = add i64 %116, %114, !dbg !1874
  call void @llvm.dbg.value(metadata i8* bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), metadata !1846, metadata !DIExpression()) #34, !dbg !1875
  call void @llvm.dbg.value(metadata i8* %113, metadata !1852, metadata !DIExpression()) #34, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %117, metadata !1853, metadata !DIExpression()) #34, !dbg !1875
  %118 = tail call i8* @__memmove_chk(i8* noundef nonnull bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), i8* noundef nonnull %113, i64 noundef %117, i64 noundef 40000) #34, !dbg !1877
  %119 = sub i64 %115, ptrtoint ([1000 x %struct.Word]* @unused_word_type to i64), !dbg !1878
  %120 = sdiv exact i64 %119, -40, !dbg !1878
  %121 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1879, !tbaa !544
  %122 = getelementptr inbounds %struct.Word, %struct.Word* %121, i64 %120, !dbg !1879
  store %struct.Word* %122, %struct.Word** @word_limit, align 8, !dbg !1879, !tbaa !544
  br label %123, !dbg !1880

123:                                              ; preds = %112, %19
  ret void, !dbg !1880
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1881 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1883, metadata !DIExpression()), !dbg !1884
  store i8* %0, i8** @file_name, align 8, !dbg !1885, !tbaa !544
  ret void, !dbg !1886
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1887 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1891, !tbaa !1892
  ret void, !dbg !1894
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1895 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1900, !tbaa !544
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1901
  %3 = icmp eq i32 %2, 0, !dbg !1902
  br i1 %3, label %22, label %4, !dbg !1903

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1904, !tbaa !1892, !range !1905
  %6 = icmp eq i8 %5, 0, !dbg !1904
  br i1 %6, label %11, label %7, !dbg !1906

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1907
  %9 = load i32, i32* %8, align 4, !dbg !1907, !tbaa !643
  %10 = icmp eq i32 %9, 32, !dbg !1908
  br i1 %10, label %22, label %11, !dbg !1909

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.37, i64 0, i64 0), i32 noundef 5) #34, !dbg !1910
  call void @llvm.dbg.value(metadata i8* %12, metadata !1897, metadata !DIExpression()), !dbg !1911
  %13 = load i8*, i8** @file_name, align 8, !dbg !1912, !tbaa !544
  %14 = icmp eq i8* %13, null, !dbg !1912
  %15 = tail call i32* @__errno_location() #37, !dbg !1914
  %16 = load i32, i32* %15, align 4, !dbg !1914, !tbaa !643
  br i1 %14, label %19, label %17, !dbg !1915

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1916
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.38, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1916
  br label %20, !dbg !1916

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.39, i64 0, i64 0), i8* noundef %12) #34, !dbg !1917
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1918, !tbaa !643
  tail call void @_exit(i32 noundef %21) #36, !dbg !1919
  unreachable, !dbg !1919

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1920, !tbaa !544
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1922
  %25 = icmp eq i32 %24, 0, !dbg !1923
  br i1 %25, label %28, label %26, !dbg !1924

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1925, !tbaa !643
  tail call void @_exit(i32 noundef %27) #36, !dbg !1926
  unreachable, !dbg !1926

28:                                               ; preds = %22
  ret void, !dbg !1927
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1928 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1932, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 %1, metadata !1933, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %2, metadata !1934, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1935, metadata !DIExpression()), !dbg !1937
  tail call fastcc void @flush_stdout(), !dbg !1938
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1939, !tbaa !544
  %7 = icmp eq void ()* %6, null, !dbg !1939
  br i1 %7, label %9, label %8, !dbg !1941

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1942
  br label %13, !dbg !1942

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1943, !tbaa !544
  %11 = tail call i8* @getprogname() #35, !dbg !1943
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* noundef %11) #34, !dbg !1943
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1945
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1945
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1945
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1945, !tbaa.struct !1946
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1945
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1945
  ret void, !dbg !1947
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1948 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1950, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i32 1, metadata !1952, metadata !DIExpression()) #34, !dbg !1955
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1958
  %2 = icmp slt i32 %1, 0, !dbg !1959
  br i1 %2, label %6, label %3, !dbg !1960

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1961, !tbaa !544
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1961
  br label %6, !dbg !1961

6:                                                ; preds = %3, %0
  ret void, !dbg !1962
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1963 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1965, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i32 %1, metadata !1966, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %2, metadata !1967, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1968, metadata !DIExpression()), !dbg !1970
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1971, !tbaa !544
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1972
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1973, metadata !DIExpression()) #34, !dbg !2016
  call void @llvm.dbg.value(metadata i8* %2, metadata !2014, metadata !DIExpression()) #34, !dbg !2016
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2018
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !2018, !noalias !2019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2018
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !2018
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !2018, !noalias !2019
  %11 = load i32, i32* @error_message_count, align 4, !dbg !2023, !tbaa !643
  %12 = add i32 %11, 1, !dbg !2023
  store i32 %12, i32* @error_message_count, align 4, !dbg !2023, !tbaa !643
  %13 = icmp eq i32 %1, 0, !dbg !2024
  br i1 %13, label %24, label %14, !dbg !2026

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2027, metadata !DIExpression()) #34, !dbg !2035
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !2037
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !2031, metadata !DIExpression()) #34, !dbg !2038
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %16, metadata !2030, metadata !DIExpression()) #34, !dbg !2035
  %17 = icmp eq i8* %16, null, !dbg !2040
  br i1 %17, label %18, label %20, !dbg !2042

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.42, i64 0, i64 0), i32 noundef 5) #34, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %19, metadata !2030, metadata !DIExpression()) #34, !dbg !2035
  br label %20, !dbg !2044

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !2035
  call void @llvm.dbg.value(metadata i8* %21, metadata !2030, metadata !DIExpression()) #34, !dbg !2035
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2045, !tbaa !544
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.43, i64 0, i64 0), i8* noundef %21) #34, !dbg !2045
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !2046
  br label %24, !dbg !2047

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2048, !tbaa !544
  call void @llvm.dbg.value(metadata i32 10, metadata !2049, metadata !DIExpression()) #34, !dbg !2055
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !2054, metadata !DIExpression()) #34, !dbg !2055
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !2057
  %27 = load i8*, i8** %26, align 8, !dbg !2057, !tbaa !1030
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !2057
  %29 = load i8*, i8** %28, align 8, !dbg !2057, !tbaa !1033
  %30 = icmp ult i8* %27, %29, !dbg !2057
  br i1 %30, label %33, label %31, !dbg !2057, !prof !1034

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !2057
  br label %35, !dbg !2057

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2057
  store i8* %34, i8** %26, align 8, !dbg !2057, !tbaa !1030
  store i8 10, i8* %27, align 1, !dbg !2057, !tbaa !652
  br label %35, !dbg !2057

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2058, !tbaa !544
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !2058
  %38 = icmp eq i32 %0, 0, !dbg !2059
  br i1 %38, label %40, label %39, !dbg !2061

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !2062
  unreachable, !dbg !2062

40:                                               ; preds = %35
  ret void, !dbg !2063
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2064 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2068 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !2072 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2076, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i32 %1, metadata !2077, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* %2, metadata !2078, metadata !DIExpression()), !dbg !2080
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !2081
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !2081
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2079, metadata !DIExpression()), !dbg !2082
  call void @llvm.va_start(i8* nonnull %6), !dbg !2083
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2084
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2084, !tbaa.struct !1946
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2084
  call void @llvm.va_end(i8* nonnull %6), !dbg !2085
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !2086
  ret void, !dbg !2086
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !256 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !274, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %1, metadata !275, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %2, metadata !276, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %3, metadata !277, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %4, metadata !278, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !279, metadata !DIExpression()), !dbg !2088
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !2089, !tbaa !643
  %9 = icmp eq i32 %8, 0, !dbg !2089
  br i1 %9, label %24, label %10, !dbg !2091

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2092, !tbaa !643
  %12 = icmp eq i32 %11, %3, !dbg !2095
  br i1 %12, label %13, label %23, !dbg !2096

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2097, !tbaa !544
  %15 = icmp eq i8* %14, %2, !dbg !2098
  br i1 %15, label %39, label %16, !dbg !2099

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2100
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2101
  br i1 %19, label %20, label %23, !dbg !2101

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !2102
  %22 = icmp eq i32 %21, 0, !dbg !2103
  br i1 %22, label %39, label %23, !dbg !2104

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2105, !tbaa !544
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2106, !tbaa !643
  br label %24, !dbg !2107

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2108
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2109, !tbaa !544
  %26 = icmp eq void ()* %25, null, !dbg !2109
  br i1 %26, label %28, label %27, !dbg !2111

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !2112
  br label %32, !dbg !2112

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2113, !tbaa !544
  %30 = tail call i8* @getprogname() #35, !dbg !2113
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.46, i64 0, i64 0), i8* noundef %30) #34, !dbg !2113
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2115, !tbaa !544
  %34 = icmp eq i8* %2, null, !dbg !2115
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.47, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.48, i64 0, i64 0), !dbg !2115
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !2115
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2116
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !2116
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2116, !tbaa.struct !1946
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !2116
  br label %39, !dbg !2117

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2117
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !2118 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2122, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2123, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8* %2, metadata !2124, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %3, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8* %4, metadata !2126, metadata !DIExpression()), !dbg !2128
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2129
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.va_start(i8* nonnull %8), !dbg !2131
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2132
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !2132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2132, !tbaa.struct !1946
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !2132
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !2132
  call void @llvm.va_end(i8* nonnull %8), !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2134
  ret void, !dbg !2134
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !2135 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %1, metadata !2142, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %2, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %3, metadata !2144, metadata !DIExpression()), !dbg !2145
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #34, !dbg !2146
  ret void, !dbg !2147
}

; Function Attrs: nounwind
declare !dbg !2148 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !2151 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2189, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1, metadata !2190, metadata !DIExpression()), !dbg !2191
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2192
  br i1 %3, label %7, label %4, !dbg !2194

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %5, metadata !2141, metadata !DIExpression()) #34, !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2142, metadata !DIExpression()) #34, !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2143, metadata !DIExpression()) #34, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %1, metadata !2144, metadata !DIExpression()) #34, !dbg !2196
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #34, !dbg !2198
  br label %7, !dbg !2199

7:                                                ; preds = %4, %2
  ret void, !dbg !2200
}

; Function Attrs: nofree nounwind
declare !dbg !2201 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2204 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2242, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2243, metadata !DIExpression()), !dbg !2246
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %2, metadata !2244, metadata !DIExpression()), !dbg !2246
  %3 = icmp slt i32 %2, 0, !dbg !2248
  br i1 %3, label %4, label %6, !dbg !2250

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2251
  br label %24, !dbg !2252

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2253
  %8 = icmp eq i32 %7, 0, !dbg !2253
  br i1 %8, label %13, label %9, !dbg !2255

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2256
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !2257
  %12 = icmp eq i64 %11, -1, !dbg !2258
  br i1 %12, label %16, label %13, !dbg !2259

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2260
  %15 = icmp eq i32 %14, 0, !dbg !2260
  br i1 %15, label %16, label %18, !dbg !2261

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2245, metadata !DIExpression()), !dbg !2246
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %21, metadata !2245, metadata !DIExpression()), !dbg !2246
  br label %24, !dbg !2263

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !2264
  %20 = load i32, i32* %19, align 4, !dbg !2264, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %20, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2245, metadata !DIExpression()), !dbg !2246
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %21, metadata !2245, metadata !DIExpression()), !dbg !2246
  %22 = icmp eq i32 %20, 0, !dbg !2265
  br i1 %22, label %24, label %23, !dbg !2263

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !2267, !tbaa !643
  call void @llvm.dbg.value(metadata i32 -1, metadata !2245, metadata !DIExpression()), !dbg !2246
  br label %24, !dbg !2269

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2246
  ret i32 %25, !dbg !2270
}

; Function Attrs: nofree nounwind
declare !dbg !2271 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2272 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !2276 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2314, metadata !DIExpression()), !dbg !2315
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !2316
  br i1 %2, label %6, label %3, !dbg !2318

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2319
  %5 = icmp eq i32 %4, 0, !dbg !2319
  br i1 %5, label %6, label %8, !dbg !2320

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !2321
  br label %17, !dbg !2322

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2323, metadata !DIExpression()) #34, !dbg !2328
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2330
  %10 = load i32, i32* %9, align 8, !dbg !2330, !tbaa !1245
  %11 = and i32 %10, 256, !dbg !2332
  %12 = icmp eq i32 %11, 0, !dbg !2332
  br i1 %12, label %15, label %13, !dbg !2333

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !2334
  br label %15, !dbg !2334

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !2335
  br label %17, !dbg !2336

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !2315
  ret i32 %18, !dbg !2337
}

; Function Attrs: nofree nounwind
declare !dbg !2338 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2339 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2377, metadata !DIExpression()), !dbg !2378
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2379
  ret i32 0, !dbg !2380
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2381 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %1, metadata !2420, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %2, metadata !2421, metadata !DIExpression()), !dbg !2425
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2426
  %5 = load i8*, i8** %4, align 8, !dbg !2426, !tbaa !1064
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2427
  %7 = load i8*, i8** %6, align 8, !dbg !2427, !tbaa !1063
  %8 = icmp eq i8* %5, %7, !dbg !2428
  br i1 %8, label %9, label %28, !dbg !2429

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2430
  %11 = load i8*, i8** %10, align 8, !dbg !2430, !tbaa !1030
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2431
  %13 = load i8*, i8** %12, align 8, !dbg !2431, !tbaa !2432
  %14 = icmp eq i8* %11, %13, !dbg !2433
  br i1 %14, label %15, label %28, !dbg !2434

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2435
  %17 = load i8*, i8** %16, align 8, !dbg !2435, !tbaa !2436
  %18 = icmp eq i8* %17, null, !dbg !2437
  br i1 %18, label %19, label %28, !dbg !2438

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2439
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %21, metadata !2422, metadata !DIExpression()), !dbg !2441
  %22 = icmp eq i64 %21, -1, !dbg !2442
  br i1 %22, label %30, label %23, !dbg !2444

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2445
  %25 = load i32, i32* %24, align 8, !dbg !2446, !tbaa !1245
  %26 = and i32 %25, -17, !dbg !2446
  store i32 %26, i32* %24, align 8, !dbg !2446, !tbaa !1245
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2447
  store i64 %21, i64* %27, align 8, !dbg !2448, !tbaa !2449
  br label %30, !dbg !2450

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2451
  br label %30, !dbg !2452

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2425
  ret i32 %31, !dbg !2453
}

; Function Attrs: nofree nounwind
declare !dbg !2454 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !2457 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2460, !tbaa !544
  ret i8* %1, !dbg !2461
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !2462 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2464, metadata !DIExpression()), !dbg !2467
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !2468
  call void @llvm.dbg.value(metadata i8* %2, metadata !2465, metadata !DIExpression()), !dbg !2467
  %3 = icmp eq i8* %2, null, !dbg !2469
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2469
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2469
  call void @llvm.dbg.value(metadata i8* %5, metadata !2466, metadata !DIExpression()), !dbg !2467
  %6 = ptrtoint i8* %5 to i64, !dbg !2470
  %7 = ptrtoint i8* %0 to i64, !dbg !2470
  %8 = sub i64 %6, %7, !dbg !2470
  %9 = icmp sgt i64 %8, 6, !dbg !2472
  br i1 %9, label %10, label %19, !dbg !2473

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2474
  call void @llvm.dbg.value(metadata i8* %11, metadata !2475, metadata !DIExpression()) #34, !dbg !2482
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), metadata !2480, metadata !DIExpression()) #34, !dbg !2482
  call void @llvm.dbg.value(metadata i64 7, metadata !2481, metadata !DIExpression()) #34, !dbg !2482
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i64 7) #34, !dbg !2484
  %13 = icmp eq i32 %12, 0, !dbg !2485
  br i1 %13, label %14, label %19, !dbg !2486

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2464, metadata !DIExpression()), !dbg !2467
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.78, i64 0, i64 0), i64 noundef 3) #35, !dbg !2487
  %16 = icmp eq i32 %15, 0, !dbg !2490
  %17 = select i1 %16, i64 3, i64 0, !dbg !2491
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2491
  br label %19, !dbg !2491

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2467
  call void @llvm.dbg.value(metadata i8* %21, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %20, metadata !2464, metadata !DIExpression()), !dbg !2467
  store i8* %20, i8** @program_name, align 8, !dbg !2492, !tbaa !544
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2493, !tbaa !544
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2494, !tbaa !544
  ret void, !dbg !2495
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !297 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !304, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %1, metadata !305, metadata !DIExpression()), !dbg !2496
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %5, metadata !306, metadata !DIExpression()), !dbg !2496
  %6 = icmp eq i8* %5, %0, !dbg !2498
  br i1 %6, label %7, label %17, !dbg !2500

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2501
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2501
  %10 = bitcast i64* %4 to i8*, !dbg !2502
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2502
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !312, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2504, metadata !DIExpression()) #34, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %10, metadata !2513, metadata !DIExpression()) #34, !dbg !2520
  call void @llvm.dbg.value(metadata i32 0, metadata !2518, metadata !DIExpression()) #34, !dbg !2520
  call void @llvm.dbg.value(metadata i64 8, metadata !2519, metadata !DIExpression()) #34, !dbg !2520
  store i64 0, i64* %4, align 8, !dbg !2522
  call void @llvm.dbg.value(metadata i32* %3, metadata !307, metadata !DIExpression(DW_OP_deref)), !dbg !2496
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !2523
  %12 = icmp eq i64 %11, 2, !dbg !2525
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !307, metadata !DIExpression()), !dbg !2496
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2526
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2527
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2527
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2496
  ret i8* %18, !dbg !2527
}

; Function Attrs: nounwind
declare !dbg !2528 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2534 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2539, metadata !DIExpression()), !dbg !2542
  %2 = tail call i32* @__errno_location() #37, !dbg !2543
  %3 = load i32, i32* %2, align 4, !dbg !2543, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %3, metadata !2540, metadata !DIExpression()), !dbg !2542
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2544
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2544
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2544
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !2545
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2541, metadata !DIExpression()), !dbg !2542
  store i32 %3, i32* %2, align 4, !dbg !2546, !tbaa !643
  ret %struct.quoting_options* %8, !dbg !2547
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2548 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2554, metadata !DIExpression()), !dbg !2555
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2556
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2556
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2557
  %5 = load i32, i32* %4, align 8, !dbg !2557, !tbaa !2558
  ret i32 %5, !dbg !2560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !2561 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2565, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2566, metadata !DIExpression()), !dbg !2567
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2568
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2568
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2569
  store i32 %1, i32* %5, align 8, !dbg !2570, !tbaa !2558
  ret void, !dbg !2571
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !2572 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2576, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %1, metadata !2577, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %2, metadata !2578, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %1, metadata !2579, metadata !DIExpression()), !dbg !2584
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2585
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2585
  %6 = lshr i8 %1, 5, !dbg !2586
  %7 = zext i8 %6 to i64, !dbg !2586
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2587
  call void @llvm.dbg.value(metadata i32* %8, metadata !2580, metadata !DIExpression()), !dbg !2584
  %9 = and i8 %1, 31, !dbg !2588
  %10 = zext i8 %9 to i32, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %10, metadata !2582, metadata !DIExpression()), !dbg !2584
  %11 = load i32, i32* %8, align 4, !dbg !2589, !tbaa !643
  %12 = lshr i32 %11, %10, !dbg !2590
  %13 = and i32 %12, 1, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %13, metadata !2583, metadata !DIExpression()), !dbg !2584
  %14 = and i32 %2, 1, !dbg !2592
  %15 = xor i32 %13, %14, !dbg !2593
  %16 = shl i32 %15, %10, !dbg !2594
  %17 = xor i32 %16, %11, !dbg !2595
  store i32 %17, i32* %8, align 4, !dbg !2595, !tbaa !643
  ret i32 %13, !dbg !2596
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2597 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2601, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %1, metadata !2602, metadata !DIExpression()), !dbg !2604
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2605
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2607
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2601, metadata !DIExpression()), !dbg !2604
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2608
  %6 = load i32, i32* %5, align 4, !dbg !2608, !tbaa !2609
  call void @llvm.dbg.value(metadata i32 %6, metadata !2603, metadata !DIExpression()), !dbg !2604
  store i32 %1, i32* %5, align 4, !dbg !2610, !tbaa !2609
  ret i32 %6, !dbg !2611
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2612 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %2, metadata !2618, metadata !DIExpression()), !dbg !2619
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2620
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2622
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2616, metadata !DIExpression()), !dbg !2619
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2623
  store i32 10, i32* %6, align 8, !dbg !2624, !tbaa !2558
  %7 = icmp ne i8* %1, null, !dbg !2625
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2627
  br i1 %9, label %11, label %10, !dbg !2627

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2628
  unreachable, !dbg !2628

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2629
  store i8* %1, i8** %12, align 8, !dbg !2630, !tbaa !2631
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2632
  store i8* %2, i8** %13, align 8, !dbg !2633, !tbaa !2634
  ret void, !dbg !2635
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2636 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2640, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %2, metadata !2642, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %3, metadata !2643, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2644, metadata !DIExpression()), !dbg !2648
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2649
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2645, metadata !DIExpression()), !dbg !2648
  %8 = tail call i32* @__errno_location() #37, !dbg !2650
  %9 = load i32, i32* %8, align 4, !dbg !2650, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %9, metadata !2646, metadata !DIExpression()), !dbg !2648
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2651
  %11 = load i32, i32* %10, align 8, !dbg !2651, !tbaa !2558
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2652
  %13 = load i32, i32* %12, align 4, !dbg !2652, !tbaa !2609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2653
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2654
  %16 = load i8*, i8** %15, align 8, !dbg !2654, !tbaa !2631
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2655
  %18 = load i8*, i8** %17, align 8, !dbg !2655, !tbaa !2634
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %19, metadata !2647, metadata !DIExpression()), !dbg !2648
  store i32 %9, i32* %8, align 4, !dbg !2657, !tbaa !643
  ret i64 %19, !dbg !2658
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2659 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2665, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2667, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %3, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %4, metadata !2669, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %5, metadata !2670, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32* %6, metadata !2671, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %7, metadata !2672, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %8, metadata !2673, metadata !DIExpression()), !dbg !2727
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !2728
  %18 = icmp eq i64 %17, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i1 %18, metadata !2674, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2727
  call void @llvm.dbg.value(metadata i64 0, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 0, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* null, metadata !2677, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 0, metadata !2678, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %5, metadata !2680, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, metadata !2682, metadata !DIExpression()), !dbg !2727
  %19 = and i32 %5, 2, !dbg !2730
  %20 = icmp ne i32 %19, 0, !dbg !2730
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
  br label %36, !dbg !2730

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2731
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2732
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2733
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2680, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %43, metadata !2678, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %42, metadata !2677, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %41, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 0, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %40, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %39, metadata !2673, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %38, metadata !2672, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %37, metadata !2669, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.label(metadata !2720), !dbg !2734
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2727
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
  ], !dbg !2735

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2680, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 5, metadata !2669, metadata !DIExpression()), !dbg !2727
  br label %111, !dbg !2736

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2680, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 5, metadata !2669, metadata !DIExpression()), !dbg !2727
  br i1 %45, label %111, label %51, !dbg !2736

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2737
  br i1 %52, label %111, label %53, !dbg !2741

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2737, !tbaa !652
  br label %111, !dbg !2737

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.91, i64 0, i64 0), metadata !372, metadata !DIExpression()) #34, !dbg !2742
  call void @llvm.dbg.value(metadata i32 %37, metadata !373, metadata !DIExpression()) #34, !dbg !2742
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.91, i64 0, i64 0), i32 noundef 5) #34, !dbg !2746
  call void @llvm.dbg.value(metadata i8* %55, metadata !374, metadata !DIExpression()) #34, !dbg !2742
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.91, i64 0, i64 0), !dbg !2747
  br i1 %56, label %57, label %66, !dbg !2749

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2751
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !376, metadata !DIExpression()) #34, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2753, metadata !DIExpression()) #34, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %23, metadata !2761, metadata !DIExpression()) #34, !dbg !2766
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()) #34, !dbg !2766
  call void @llvm.dbg.value(metadata i64 8, metadata !2765, metadata !DIExpression()) #34, !dbg !2766
  store i64 0, i64* %13, align 8, !dbg !2768
  call void @llvm.dbg.value(metadata i32* %12, metadata !375, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2742
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !2769
  %59 = icmp eq i64 %58, 3, !dbg !2771
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !375, metadata !DIExpression()) #34, !dbg !2742
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2772
  %63 = icmp eq i32 %37, 9, !dbg !2772
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !2772
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2772
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2773
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2773
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2742
  call void @llvm.dbg.value(metadata i8* %67, metadata !2672, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), metadata !372, metadata !DIExpression()) #34, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %37, metadata !373, metadata !DIExpression()) #34, !dbg !2774
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), i32 noundef 5) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i8* %68, metadata !374, metadata !DIExpression()) #34, !dbg !2774
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !2777
  br i1 %69, label %70, label %79, !dbg !2778

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2780
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !376, metadata !DIExpression()) #34, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2753, metadata !DIExpression()) #34, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %26, metadata !2761, metadata !DIExpression()) #34, !dbg !2784
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()) #34, !dbg !2784
  call void @llvm.dbg.value(metadata i64 8, metadata !2765, metadata !DIExpression()) #34, !dbg !2784
  store i64 0, i64* %11, align 8, !dbg !2786
  call void @llvm.dbg.value(metadata i32* %10, metadata !375, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2774
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !2787
  %72 = icmp eq i64 %71, 3, !dbg !2788
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !375, metadata !DIExpression()) #34, !dbg !2774
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2789
  %76 = icmp eq i32 %37, 9, !dbg !2789
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), !dbg !2789
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2789
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2790
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2790
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2673, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %80, metadata !2672, metadata !DIExpression()), !dbg !2727
  br i1 %45, label %97, label %82, !dbg !2791

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2684, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 0, metadata !2675, metadata !DIExpression()), !dbg !2727
  %83 = load i8, i8* %80, align 1, !dbg !2793, !tbaa !652
  %84 = icmp eq i8 %83, 0, !dbg !2795
  br i1 %84, label %97, label %85, !dbg !2795

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2684, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %88, metadata !2675, metadata !DIExpression()), !dbg !2727
  %89 = icmp ult i64 %88, %48, !dbg !2796
  br i1 %89, label %90, label %92, !dbg !2799

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2796
  store i8 %86, i8* %91, align 1, !dbg !2796, !tbaa !652
  br label %92, !dbg !2796

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %93, metadata !2675, metadata !DIExpression()), !dbg !2727
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %94, metadata !2684, metadata !DIExpression()), !dbg !2792
  %95 = load i8, i8* %94, align 1, !dbg !2793, !tbaa !652
  %96 = icmp eq i8 %95, 0, !dbg !2795
  br i1 %96, label %97, label %85, !dbg !2795, !llvm.loop !2801

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2803
  call void @llvm.dbg.value(metadata i64 %98, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, metadata !2679, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %81, metadata !2677, metadata !DIExpression()), !dbg !2727
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %99, metadata !2678, metadata !DIExpression()), !dbg !2727
  br label %111, !dbg !2805

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2679, metadata !DIExpression()), !dbg !2727
  br label %102, !dbg !2806

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2680, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2727
  br i1 %45, label %102, label %105, !dbg !2807

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2680, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 2, metadata !2669, metadata !DIExpression()), !dbg !2727
  br label %111, !dbg !2808

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2680, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 2, metadata !2669, metadata !DIExpression()), !dbg !2727
  br i1 %45, label %111, label %105, !dbg !2808

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2809
  br i1 %107, label %111, label %108, !dbg !2813

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2809, !tbaa !652
  br label %111, !dbg !2809

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2727
  br label %111, !dbg !2814

110:                                              ; preds = %36
  call void @abort() #36, !dbg !2815
  unreachable, !dbg !2815

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2803
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.94, i64 0, i64 0), %102 ], !dbg !2727
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2727
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2680, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2679, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %117, metadata !2678, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %116, metadata !2677, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %115, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %114, metadata !2673, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %113, metadata !2672, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %112, metadata !2669, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2816
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
  br label %132, !dbg !2817

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2803
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2731
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2816
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %139, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %135, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %134, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %133, metadata !2668, metadata !DIExpression()), !dbg !2727
  %141 = icmp eq i64 %133, -1, !dbg !2818
  br i1 %141, label %142, label %146, !dbg !2819

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2820
  %144 = load i8, i8* %143, align 1, !dbg !2820, !tbaa !652
  %145 = icmp eq i8 %144, 0, !dbg !2821
  br i1 %145, label %596, label %148, !dbg !2822

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2823
  br i1 %147, label %596, label %148, !dbg !2822

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2691, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 0, metadata !2694, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2824
  br i1 %123, label %149, label %163, !dbg !2825

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2827
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2828
  br i1 %151, label %152, label %154, !dbg !2828

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %153, metadata !2668, metadata !DIExpression()), !dbg !2727
  br label %154, !dbg !2830

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2830
  call void @llvm.dbg.value(metadata i64 %155, metadata !2668, metadata !DIExpression()), !dbg !2727
  %156 = icmp ugt i64 %150, %155, !dbg !2831
  br i1 %156, label %163, label %157, !dbg !2832

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %158, metadata !2834, metadata !DIExpression()) #34, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %116, metadata !2837, metadata !DIExpression()) #34, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %117, metadata !2838, metadata !DIExpression()) #34, !dbg !2839
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !2841
  %160 = icmp ne i32 %159, 0, !dbg !2842
  %161 = or i1 %160, %125, !dbg !2843
  %162 = xor i1 %160, true, !dbg !2843
  br i1 %161, label %163, label %647, !dbg !2843

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %164, metadata !2668, metadata !DIExpression()), !dbg !2727
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2844
  %167 = load i8, i8* %166, align 1, !dbg !2844, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %167, metadata !2696, metadata !DIExpression()), !dbg !2824
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
  ], !dbg !2845

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2846

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2847

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2694, metadata !DIExpression()), !dbg !2824
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2851
  br i1 %171, label %188, label %172, !dbg !2851

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2853
  br i1 %173, label %174, label %176, !dbg !2857

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2853
  store i8 39, i8* %175, align 1, !dbg !2853, !tbaa !652
  br label %176, !dbg !2853

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %177, metadata !2675, metadata !DIExpression()), !dbg !2727
  %178 = icmp ult i64 %177, %140, !dbg !2858
  br i1 %178, label %179, label %181, !dbg !2861

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2858
  store i8 36, i8* %180, align 1, !dbg !2858, !tbaa !652
  br label %181, !dbg !2858

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %182, metadata !2675, metadata !DIExpression()), !dbg !2727
  %183 = icmp ult i64 %182, %140, !dbg !2862
  br i1 %183, label %184, label %186, !dbg !2865

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2862
  store i8 39, i8* %185, align 1, !dbg !2862, !tbaa !652
  br label %186, !dbg !2862

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %187, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, metadata !2683, metadata !DIExpression()), !dbg !2727
  br label %188, !dbg !2866

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2727
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %189, metadata !2675, metadata !DIExpression()), !dbg !2727
  %191 = icmp ult i64 %189, %140, !dbg !2867
  br i1 %191, label %192, label %194, !dbg !2870

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2867
  store i8 92, i8* %193, align 1, !dbg !2867, !tbaa !652
  br label %194, !dbg !2867

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %195, metadata !2675, metadata !DIExpression()), !dbg !2727
  br i1 %120, label %196, label %499, !dbg !2871

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2873
  %198 = icmp ult i64 %197, %164, !dbg !2874
  br i1 %198, label %199, label %456, !dbg !2875

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2876
  %201 = load i8, i8* %200, align 1, !dbg !2876, !tbaa !652
  %202 = add i8 %201, -48, !dbg !2877
  %203 = icmp ult i8 %202, 10, !dbg !2877
  br i1 %203, label %204, label %456, !dbg !2877

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2878
  br i1 %205, label %206, label %208, !dbg !2882

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2878
  store i8 48, i8* %207, align 1, !dbg !2878, !tbaa !652
  br label %208, !dbg !2878

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %209, metadata !2675, metadata !DIExpression()), !dbg !2727
  %210 = icmp ult i64 %209, %140, !dbg !2883
  br i1 %210, label %211, label %213, !dbg !2886

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2883
  store i8 48, i8* %212, align 1, !dbg !2883, !tbaa !652
  br label %213, !dbg !2883

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %214, metadata !2675, metadata !DIExpression()), !dbg !2727
  br label %456, !dbg !2887

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2888

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2889

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2890

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2892

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2894
  %221 = icmp ult i64 %220, %164, !dbg !2895
  br i1 %221, label %222, label %456, !dbg !2896

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2897
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2898
  %225 = load i8, i8* %224, align 1, !dbg !2898, !tbaa !652
  %226 = icmp eq i8 %225, 63, !dbg !2899
  br i1 %226, label %227, label %456, !dbg !2900

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2901
  %229 = load i8, i8* %228, align 1, !dbg !2901, !tbaa !652
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
  ], !dbg !2902

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2903

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %220, metadata !2689, metadata !DIExpression()), !dbg !2816
  %232 = icmp ult i64 %134, %140, !dbg !2905
  br i1 %232, label %233, label %235, !dbg !2908

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2905
  store i8 63, i8* %234, align 1, !dbg !2905, !tbaa !652
  br label %235, !dbg !2905

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %236, metadata !2675, metadata !DIExpression()), !dbg !2727
  %237 = icmp ult i64 %236, %140, !dbg !2909
  br i1 %237, label %238, label %240, !dbg !2912

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2909
  store i8 34, i8* %239, align 1, !dbg !2909, !tbaa !652
  br label %240, !dbg !2909

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %241, metadata !2675, metadata !DIExpression()), !dbg !2727
  %242 = icmp ult i64 %241, %140, !dbg !2913
  br i1 %242, label %243, label %245, !dbg !2916

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2913
  store i8 34, i8* %244, align 1, !dbg !2913, !tbaa !652
  br label %245, !dbg !2913

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %246, metadata !2675, metadata !DIExpression()), !dbg !2727
  %247 = icmp ult i64 %246, %140, !dbg !2917
  br i1 %247, label %248, label %250, !dbg !2920

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2917
  store i8 63, i8* %249, align 1, !dbg !2917, !tbaa !652
  br label %250, !dbg !2917

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %251, metadata !2675, metadata !DIExpression()), !dbg !2727
  br label %456, !dbg !2921

252:                                              ; preds = %163
  br label %263, !dbg !2922

253:                                              ; preds = %163
  br label %263, !dbg !2923

254:                                              ; preds = %163
  br label %261, !dbg !2924

255:                                              ; preds = %163
  br label %261, !dbg !2925

256:                                              ; preds = %163
  br label %263, !dbg !2926

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2927

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2928

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2931

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2933

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2934
  call void @llvm.dbg.label(metadata !2721), !dbg !2935
  br i1 %128, label %263, label %638, !dbg !2936

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2934
  call void @llvm.dbg.label(metadata !2723), !dbg !2938
  br i1 %118, label %510, label %467, !dbg !2939

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2940

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2941, !tbaa !652
  %268 = icmp eq i8 %267, 0, !dbg !2943
  br i1 %268, label %269, label %456, !dbg !2944

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2945
  br i1 %270, label %271, label %456, !dbg !2947

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2695, metadata !DIExpression()), !dbg !2824
  br label %272, !dbg !2948

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2695, metadata !DIExpression()), !dbg !2824
  br i1 %126, label %274, label %456, !dbg !2949

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2951

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, metadata !2695, metadata !DIExpression()), !dbg !2824
  br i1 %126, label %276, label %456, !dbg !2952

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2953

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2956
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2958
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2958
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %282, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %281, metadata !2676, metadata !DIExpression()), !dbg !2727
  %283 = icmp ult i64 %134, %282, !dbg !2959
  br i1 %283, label %284, label %286, !dbg !2962

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2959
  store i8 39, i8* %285, align 1, !dbg !2959, !tbaa !652
  br label %286, !dbg !2959

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %287, metadata !2675, metadata !DIExpression()), !dbg !2727
  %288 = icmp ult i64 %287, %282, !dbg !2963
  br i1 %288, label %289, label %291, !dbg !2966

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2963
  store i8 92, i8* %290, align 1, !dbg !2963, !tbaa !652
  br label %291, !dbg !2963

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %292, metadata !2675, metadata !DIExpression()), !dbg !2727
  %293 = icmp ult i64 %292, %282, !dbg !2967
  br i1 %293, label %294, label %296, !dbg !2970

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2967
  store i8 39, i8* %295, align 1, !dbg !2967, !tbaa !652
  br label %296, !dbg !2967

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %297, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2727
  br label %456, !dbg !2971

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2972

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2697, metadata !DIExpression()), !dbg !2973
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2974
  %301 = load i16*, i16** %300, align 8, !dbg !2974, !tbaa !544
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2974
  %304 = load i16, i16* %303, align 2, !dbg !2974, !tbaa !677
  %305 = and i16 %304, 16384, !dbg !2974
  %306 = icmp ne i16 %305, 0, !dbg !2976
  call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %349, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %312, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i1 %350, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  br label %352, !dbg !2977

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2978
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2701, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2753, metadata !DIExpression()) #34, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %32, metadata !2761, metadata !DIExpression()) #34, !dbg !2982
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()) #34, !dbg !2982
  call void @llvm.dbg.value(metadata i64 8, metadata !2765, metadata !DIExpression()) #34, !dbg !2982
  store i64 0, i64* %14, align 8, !dbg !2984
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 1, metadata !2700, metadata !DIExpression()), !dbg !2973
  %308 = icmp eq i64 %164, -1, !dbg !2985
  br i1 %308, label %309, label %311, !dbg !2987

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %310, metadata !2668, metadata !DIExpression()), !dbg !2727
  br label %311, !dbg !2989

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2824
  call void @llvm.dbg.value(metadata i64 %312, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2990
  %313 = sub i64 %312, %139, !dbg !2991
  call void @llvm.dbg.value(metadata i32* %16, metadata !2704, metadata !DIExpression(DW_OP_deref)), !dbg !2992
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %314, metadata !2708, metadata !DIExpression()), !dbg !2992
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2994

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2973
  %316 = icmp ugt i64 %312, %139, !dbg !2995
  br i1 %316, label %319, label %317, !dbg !2997

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %349, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %312, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i1 %350, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  br label %352, !dbg !2977

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2700, metadata !DIExpression()), !dbg !2973
  br label %346, !dbg !3000

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2697, metadata !DIExpression()), !dbg !2973
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !3002
  %323 = load i8, i8* %322, align 1, !dbg !3002, !tbaa !652
  %324 = icmp eq i8 %323, 0, !dbg !2997
  br i1 %324, label %348, label %325, !dbg !3003

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %326, metadata !2697, metadata !DIExpression()), !dbg !2973
  %327 = add i64 %326, %139, !dbg !3005
  %328 = icmp eq i64 %326, %313, !dbg !2995
  br i1 %328, label %348, label %319, !dbg !2997, !llvm.loop !3006

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !3007
  call void @llvm.dbg.value(metadata i64 1, metadata !2709, metadata !DIExpression()), !dbg !3008
  br i1 %331, label %332, label %340, !dbg !3007

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2709, metadata !DIExpression()), !dbg !3008
  %334 = add i64 %333, %139, !dbg !3009
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !3011
  %336 = load i8, i8* %335, align 1, !dbg !3011, !tbaa !652
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !3012

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %338, metadata !2709, metadata !DIExpression()), !dbg !3008
  %339 = icmp eq i64 %338, %314, !dbg !3014
  br i1 %339, label %340, label %332, !dbg !3015, !llvm.loop !3016

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !3018, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %341, metadata !2704, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %341, metadata !3020, metadata !DIExpression()) #34, !dbg !3028
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !3030
  %343 = icmp ne i32 %342, 0, !dbg !3031
  call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %314, metadata !2697, metadata !DIExpression()), !dbg !2973
  br label %348, !dbg !3032

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2999
  call void @llvm.dbg.label(metadata !2726), !dbg !3033
  %345 = select i1 %118, i32 4, i32 2, !dbg !3034
  br label %643, !dbg !3034

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %349, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %312, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i1 %350, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  br label %352, !dbg !2977

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %349, metadata !2697, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %312, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i1 %350, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  %351 = icmp ugt i64 %349, 1, !dbg !3036
  br i1 %351, label %357, label %352, !dbg !2977

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !3037
  br i1 %356, label %456, label %357, !dbg !3037

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %361, metadata !2717, metadata !DIExpression()), !dbg !3039
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !3040

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2727
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2816
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !3041
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2824
  call void @llvm.dbg.value(metadata i8 %369, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 %368, metadata !2694, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %366, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %364, metadata !2675, metadata !DIExpression()), !dbg !2727
  br i1 %362, label %414, label %370, !dbg !3042

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !3047

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2694, metadata !DIExpression()), !dbg !2824
  %372 = select i1 %120, i1 true, i1 %365, !dbg !3050
  br i1 %372, label %389, label %373, !dbg !3050

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !3052
  br i1 %374, label %375, label %377, !dbg !3056

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !3052
  store i8 39, i8* %376, align 1, !dbg !3052, !tbaa !652
  br label %377, !dbg !3052

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %378, metadata !2675, metadata !DIExpression()), !dbg !2727
  %379 = icmp ult i64 %378, %140, !dbg !3057
  br i1 %379, label %380, label %382, !dbg !3060

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !3057
  store i8 36, i8* %381, align 1, !dbg !3057, !tbaa !652
  br label %382, !dbg !3057

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %383, metadata !2675, metadata !DIExpression()), !dbg !2727
  %384 = icmp ult i64 %383, %140, !dbg !3061
  br i1 %384, label %385, label %387, !dbg !3064

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3061
  store i8 39, i8* %386, align 1, !dbg !3061, !tbaa !652
  br label %387, !dbg !3061

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %388, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, metadata !2683, metadata !DIExpression()), !dbg !2727
  br label %389, !dbg !3065

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2727
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %390, metadata !2675, metadata !DIExpression()), !dbg !2727
  %392 = icmp ult i64 %390, %140, !dbg !3066
  br i1 %392, label %393, label %395, !dbg !3069

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !3066
  store i8 92, i8* %394, align 1, !dbg !3066, !tbaa !652
  br label %395, !dbg !3066

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %396, metadata !2675, metadata !DIExpression()), !dbg !2727
  %397 = icmp ult i64 %396, %140, !dbg !3070
  br i1 %397, label %398, label %402, !dbg !3073

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !3070
  %400 = or i8 %399, 48, !dbg !3070
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3070
  store i8 %400, i8* %401, align 1, !dbg !3070, !tbaa !652
  br label %402, !dbg !3070

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %403, metadata !2675, metadata !DIExpression()), !dbg !2727
  %404 = icmp ult i64 %403, %140, !dbg !3074
  br i1 %404, label %405, label %410, !dbg !3077

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !3074
  %407 = and i8 %406, 7, !dbg !3074
  %408 = or i8 %407, 48, !dbg !3074
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3074
  store i8 %408, i8* %409, align 1, !dbg !3074, !tbaa !652
  br label %410, !dbg !3074

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %411, metadata !2675, metadata !DIExpression()), !dbg !2727
  %412 = and i8 %369, 7, !dbg !3078
  %413 = or i8 %412, 48, !dbg !3079
  call void @llvm.dbg.value(metadata i8 %413, metadata !2696, metadata !DIExpression()), !dbg !2824
  br label %421, !dbg !3080

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !3081

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !3082
  br i1 %416, label %417, label %419, !dbg !3087

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !3082
  store i8 92, i8* %418, align 1, !dbg !3082, !tbaa !652
  br label %419, !dbg !3082

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %420, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2691, metadata !DIExpression()), !dbg !2824
  br label %421, !dbg !3088

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2727
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2824
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2824
  call void @llvm.dbg.value(metadata i8 %426, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 %425, metadata !2694, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %422, metadata !2675, metadata !DIExpression()), !dbg !2727
  %427 = add i64 %366, 1, !dbg !3089
  %428 = icmp ugt i64 %361, %427, !dbg !3091
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !3092

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !3093
  %432 = select i1 %423, i1 %431, i1 false, !dbg !3093
  br i1 %432, label %433, label %444, !dbg !3093

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !3096
  br i1 %434, label %435, label %437, !dbg !3100

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !3096
  store i8 39, i8* %436, align 1, !dbg !3096, !tbaa !652
  br label %437, !dbg !3096

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %438, metadata !2675, metadata !DIExpression()), !dbg !2727
  %439 = icmp ult i64 %438, %140, !dbg !3101
  br i1 %439, label %440, label %442, !dbg !3104

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !3101
  store i8 39, i8* %441, align 1, !dbg !3101, !tbaa !652
  br label %442, !dbg !3101

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %443, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2727
  br label %444, !dbg !3105

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !3106
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %445, metadata !2675, metadata !DIExpression()), !dbg !2727
  %447 = icmp ult i64 %445, %140, !dbg !3107
  br i1 %447, label %448, label %450, !dbg !3110

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !3107
  store i8 %426, i8* %449, align 1, !dbg !3107, !tbaa !652
  br label %450, !dbg !3107

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %451, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %427, metadata !2689, metadata !DIExpression()), !dbg !2816
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !3111
  %453 = load i8, i8* %452, align 1, !dbg !3111, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %453, metadata !2696, metadata !DIExpression()), !dbg !2824
  br label %363, !dbg !3112, !llvm.loop !3113

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i1 %358, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  call void @llvm.dbg.value(metadata i8 %425, metadata !2694, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %366, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %422, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %360, metadata !2668, metadata !DIExpression()), !dbg !2727
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !3116
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2727
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2731
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2816
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2824
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 %465, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2695, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2694, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2691, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %462, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %459, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %458, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %457, metadata !2668, metadata !DIExpression()), !dbg !2727
  br i1 %121, label %478, label %467, !dbg !3117

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
  br i1 %131, label %479, label %499, !dbg !3119

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !3120

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
  %490 = lshr i8 %481, 5, !dbg !3121
  %491 = zext i8 %490 to i64, !dbg !3121
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3122
  %493 = load i32, i32* %492, align 4, !dbg !3122, !tbaa !643
  %494 = and i8 %481, 31, !dbg !3123
  %495 = zext i8 %494 to i32, !dbg !3123
  %496 = shl nuw i32 1, %495, !dbg !3124
  %497 = and i32 %493, %496, !dbg !3124
  %498 = icmp eq i32 %497, 0, !dbg !3124
  br i1 %498, label %499, label %510, !dbg !3125

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
  br i1 %165, label %510, label %546, !dbg !3126

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !3116
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2727
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2731
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !3127
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2824
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 %518, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2695, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %516, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %513, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %512, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %511, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.label(metadata !2724), !dbg !3128
  br i1 %119, label %638, label %520, !dbg !3129

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2694, metadata !DIExpression()), !dbg !2824
  %521 = select i1 %120, i1 true, i1 %515, !dbg !3131
  br i1 %521, label %538, label %522, !dbg !3131

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !3133
  br i1 %523, label %524, label %526, !dbg !3137

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3133
  store i8 39, i8* %525, align 1, !dbg !3133, !tbaa !652
  br label %526, !dbg !3133

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %527, metadata !2675, metadata !DIExpression()), !dbg !2727
  %528 = icmp ult i64 %527, %519, !dbg !3138
  br i1 %528, label %529, label %531, !dbg !3141

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3138
  store i8 36, i8* %530, align 1, !dbg !3138, !tbaa !652
  br label %531, !dbg !3138

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %532, metadata !2675, metadata !DIExpression()), !dbg !2727
  %533 = icmp ult i64 %532, %519, !dbg !3142
  br i1 %533, label %534, label %536, !dbg !3145

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !3142
  store i8 39, i8* %535, align 1, !dbg !3142, !tbaa !652
  br label %536, !dbg !3142

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %537, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, metadata !2683, metadata !DIExpression()), !dbg !2727
  br label %538, !dbg !3146

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2824
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %539, metadata !2675, metadata !DIExpression()), !dbg !2727
  %541 = icmp ult i64 %539, %519, !dbg !3147
  br i1 %541, label %542, label %544, !dbg !3150

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !3147
  store i8 92, i8* %543, align 1, !dbg !3147, !tbaa !652
  br label %544, !dbg !3147

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %556, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 %555, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2695, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2694, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %552, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %549, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %548, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %547, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.label(metadata !2725), !dbg !3151
  br label %570, !dbg !3152

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !3116
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2727
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2731
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !3127
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !3155
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 %555, metadata !2696, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2695, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 poison, metadata !2694, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %552, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %549, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %548, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %547, metadata !2668, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.label(metadata !2725), !dbg !3151
  %557 = xor i1 %551, true, !dbg !3152
  %558 = select i1 %557, i1 true, i1 %553, !dbg !3152
  br i1 %558, label %570, label %559, !dbg !3152

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !3156
  br i1 %560, label %561, label %563, !dbg !3160

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3156
  store i8 39, i8* %562, align 1, !dbg !3156, !tbaa !652
  br label %563, !dbg !3156

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %564, metadata !2675, metadata !DIExpression()), !dbg !2727
  %565 = icmp ult i64 %564, %556, !dbg !3161
  br i1 %565, label %566, label %568, !dbg !3164

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3161
  store i8 39, i8* %567, align 1, !dbg !3161, !tbaa !652
  br label %568, !dbg !3161

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %569, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2727
  br label %570, !dbg !3165

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2824
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %578, metadata !2675, metadata !DIExpression()), !dbg !2727
  %580 = icmp ult i64 %578, %571, !dbg !3166
  br i1 %580, label %581, label %583, !dbg !3169

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3166
  store i8 %572, i8* %582, align 1, !dbg !3166, !tbaa !652
  br label %583, !dbg !3166

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %584, metadata !2675, metadata !DIExpression()), !dbg !2727
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3170
  call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2727
  br label %586, !dbg !3171

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !3116
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2727
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2731
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !3127
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %593, metadata !2689, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %589, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %588, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %587, metadata !2668, metadata !DIExpression()), !dbg !2727
  %595 = add i64 %593, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %595, metadata !2689, metadata !DIExpression()), !dbg !2816
  br label %132, !dbg !3173, !llvm.loop !3174

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2666, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2682, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 poison, metadata !2681, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 undef, metadata !2676, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 undef, metadata !2675, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 undef, metadata !2668, metadata !DIExpression()), !dbg !2727
  %597 = icmp eq i64 %134, 0, !dbg !3176
  %598 = and i1 %126, %597, !dbg !3178
  %599 = and i1 %598, %119, !dbg !3178
  br i1 %599, label %638, label %600, !dbg !3178

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3179
  %602 = or i1 %119, %601, !dbg !3179
  %603 = xor i1 %136, true, !dbg !3179
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3179
  br i1 %604, label %612, label %605, !dbg !3179

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3181

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3183
  br label %653, !dbg !3185

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3186
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3188
  br i1 %611, label %36, label %612, !dbg !3188

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3189
  %615 = or i1 %614, %613, !dbg !3191
  br i1 %615, label %631, label %616, !dbg !3191

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2677, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %134, metadata !2675, metadata !DIExpression()), !dbg !2727
  %617 = load i8, i8* %116, align 1, !dbg !3192, !tbaa !652
  %618 = icmp eq i8 %617, 0, !dbg !3195
  br i1 %618, label %631, label %619, !dbg !3195

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2677, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %622, metadata !2675, metadata !DIExpression()), !dbg !2727
  %623 = icmp ult i64 %622, %140, !dbg !3196
  br i1 %623, label %624, label %626, !dbg !3199

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3196
  store i8 %620, i8* %625, align 1, !dbg !3196, !tbaa !652
  br label %626, !dbg !3196

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %627, metadata !2675, metadata !DIExpression()), !dbg !2727
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %628, metadata !2677, metadata !DIExpression()), !dbg !2727
  %629 = load i8, i8* %628, align 1, !dbg !3192, !tbaa !652
  %630 = icmp eq i8 %629, 0, !dbg !3195
  br i1 %630, label %631, label %619, !dbg !3195, !llvm.loop !3201

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2803
  call void @llvm.dbg.value(metadata i64 %632, metadata !2675, metadata !DIExpression()), !dbg !2727
  %633 = icmp ult i64 %632, %140, !dbg !3203
  br i1 %633, label %634, label %653, !dbg !3205

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3206
  store i8 0, i8* %635, align 1, !dbg !3207, !tbaa !652
  br label %653, !dbg !3206

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2726), !dbg !3033
  %637 = icmp eq i32 %112, 2, !dbg !3208
  br i1 %637, label %643, label %647, !dbg !3034

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2726), !dbg !3033
  %641 = icmp eq i32 %112, 2, !dbg !3208
  %642 = select i1 %118, i32 4, i32 2, !dbg !3034
  br i1 %641, label %643, label %647, !dbg !3034

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !3034

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2669, metadata !DIExpression()), !dbg !2727
  %651 = and i32 %5, -3, !dbg !3209
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3210
  br label %653, !dbg !3211

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3212
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3213 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !3215 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3219, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3220, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #34, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()) #34, !dbg !3236
  call void @llvm.dbg.value(metadata i64* null, metadata !3229, metadata !DIExpression()) #34, !dbg !3236
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3230, metadata !DIExpression()) #34, !dbg !3236
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3238
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3231, metadata !DIExpression()) #34, !dbg !3236
  %6 = tail call i32* @__errno_location() #37, !dbg !3239
  %7 = load i32, i32* %6, align 4, !dbg !3239, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %7, metadata !3232, metadata !DIExpression()) #34, !dbg !3236
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3240
  %9 = load i32, i32* %8, align 4, !dbg !3240, !tbaa !2609
  %10 = or i32 %9, 1, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %10, metadata !3233, metadata !DIExpression()) #34, !dbg !3236
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3242
  %12 = load i32, i32* %11, align 8, !dbg !3242, !tbaa !2558
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3243
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3244
  %15 = load i8*, i8** %14, align 8, !dbg !3244, !tbaa !2631
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3245
  %17 = load i8*, i8** %16, align 8, !dbg !3245, !tbaa !2634
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !3246
  %19 = add i64 %18, 1, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %19, metadata !3234, metadata !DIExpression()) #34, !dbg !3236
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !3248
  call void @llvm.dbg.value(metadata i8* %20, metadata !3235, metadata !DIExpression()) #34, !dbg !3236
  %21 = load i32, i32* %11, align 8, !dbg !3249, !tbaa !2558
  %22 = load i8*, i8** %14, align 8, !dbg !3250, !tbaa !2631
  %23 = load i8*, i8** %16, align 8, !dbg !3251, !tbaa !2634
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !3252
  store i32 %7, i32* %6, align 4, !dbg !3253, !tbaa !643
  ret i8* %20, !dbg !3254
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !3224 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64* %2, metadata !3229, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3230, metadata !DIExpression()), !dbg !3255
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3256
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3231, metadata !DIExpression()), !dbg !3255
  %7 = tail call i32* @__errno_location() #37, !dbg !3257
  %8 = load i32, i32* %7, align 4, !dbg !3257, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %8, metadata !3232, metadata !DIExpression()), !dbg !3255
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3258
  %10 = load i32, i32* %9, align 4, !dbg !3258, !tbaa !2609
  %11 = icmp eq i64* %2, null, !dbg !3259
  %12 = zext i1 %11 to i32, !dbg !3259
  %13 = or i32 %10, %12, !dbg !3260
  call void @llvm.dbg.value(metadata i32 %13, metadata !3233, metadata !DIExpression()), !dbg !3255
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3261
  %15 = load i32, i32* %14, align 8, !dbg !3261, !tbaa !2558
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3262
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3263
  %18 = load i8*, i8** %17, align 8, !dbg !3263, !tbaa !2631
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3264
  %20 = load i8*, i8** %19, align 8, !dbg !3264, !tbaa !2634
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3265
  %22 = add i64 %21, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %22, metadata !3234, metadata !DIExpression()), !dbg !3255
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !3267
  call void @llvm.dbg.value(metadata i8* %23, metadata !3235, metadata !DIExpression()), !dbg !3255
  %24 = load i32, i32* %14, align 8, !dbg !3268, !tbaa !2558
  %25 = load i8*, i8** %17, align 8, !dbg !3269, !tbaa !2631
  %26 = load i8*, i8** %19, align 8, !dbg !3270, !tbaa !2634
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3271
  store i32 %8, i32* %7, align 4, !dbg !3272, !tbaa !643
  br i1 %11, label %29, label %28, !dbg !3273

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3274, !tbaa !3276
  br label %29, !dbg !3277

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3278
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3279 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3284, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3281, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i32 1, metadata !3282, metadata !DIExpression()), !dbg !3286
  %2 = load i32, i32* @nslots, align 4, !tbaa !643
  call void @llvm.dbg.value(metadata i32 1, metadata !3282, metadata !DIExpression()), !dbg !3286
  %3 = icmp sgt i32 %2, 1, !dbg !3287
  br i1 %3, label %4, label %6, !dbg !3289

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3287
  br label %10, !dbg !3289

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3290
  %8 = load i8*, i8** %7, align 8, !dbg !3290, !tbaa !3292
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3294
  br i1 %9, label %17, label %16, !dbg !3295

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3282, metadata !DIExpression()), !dbg !3286
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3296
  %13 = load i8*, i8** %12, align 8, !dbg !3296, !tbaa !3292
  tail call void @free(i8* noundef %13) #34, !dbg !3297
  %14 = add nuw nsw i64 %11, 1, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %14, metadata !3282, metadata !DIExpression()), !dbg !3286
  %15 = icmp eq i64 %14, %5, !dbg !3287
  br i1 %15, label %6, label %10, !dbg !3289, !llvm.loop !3299

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !3301
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3303, !tbaa !3304
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3305, !tbaa !3292
  br label %17, !dbg !3306

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3307
  br i1 %18, label %21, label %19, !dbg !3309

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3310
  tail call void @free(i8* noundef %20) #34, !dbg !3312
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3313, !tbaa !544
  br label %21, !dbg !3314

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3315, !tbaa !643
  ret void, !dbg !3316
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %1, metadata !3320, metadata !DIExpression()), !dbg !3321
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3322
  ret i8* %3, !dbg !3323
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3324 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3328, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3329, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %2, metadata !3330, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3331, metadata !DIExpression()), !dbg !3344
  %6 = tail call i32* @__errno_location() #37, !dbg !3345
  %7 = load i32, i32* %6, align 4, !dbg !3345, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %7, metadata !3332, metadata !DIExpression()), !dbg !3344
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3346, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3333, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3334, metadata !DIExpression()), !dbg !3344
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3347
  br i1 %9, label %10, label %11, !dbg !3347

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3349
  unreachable, !dbg !3349

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3350, !tbaa !643
  %13 = icmp sgt i32 %12, %0, !dbg !3351
  br i1 %13, label %36, label %14, !dbg !3352

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3353
  call void @llvm.dbg.value(metadata i1 %15, metadata !3335, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3354
  %16 = bitcast i64* %5 to i8*, !dbg !3355
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !3355
  %17 = sext i32 %12 to i64, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %17, metadata !3338, metadata !DIExpression()), !dbg !3354
  store i64 %17, i64* %5, align 8, !dbg !3357, !tbaa !3276
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3358
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3358
  %20 = add nuw nsw i32 %0, 1, !dbg !3359
  %21 = sub i32 %20, %12, !dbg !3360
  %22 = sext i32 %21 to i64, !dbg !3361
  call void @llvm.dbg.value(metadata i64* %5, metadata !3338, metadata !DIExpression(DW_OP_deref)), !dbg !3354
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !3362
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3362
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3333, metadata !DIExpression()), !dbg !3344
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3363, !tbaa !544
  br i1 %15, label %25, label %26, !dbg !3364

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3365, !tbaa.struct !3367
  br label %26, !dbg !3368

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3369, !tbaa !643
  %28 = sext i32 %27 to i64, !dbg !3370
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3370
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3371
  %31 = load i64, i64* %5, align 8, !dbg !3372, !tbaa !3276
  call void @llvm.dbg.value(metadata i64 %31, metadata !3338, metadata !DIExpression()), !dbg !3354
  %32 = sub nsw i64 %31, %28, !dbg !3373
  %33 = shl i64 %32, 4, !dbg !3374
  call void @llvm.dbg.value(metadata i8* %30, metadata !2761, metadata !DIExpression()) #34, !dbg !3375
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()) #34, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %33, metadata !2765, metadata !DIExpression()) #34, !dbg !3375
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !3377
  %34 = load i64, i64* %5, align 8, !dbg !3378, !tbaa !3276
  call void @llvm.dbg.value(metadata i64 %34, metadata !3338, metadata !DIExpression()), !dbg !3354
  %35 = trunc i64 %34 to i32, !dbg !3378
  store i32 %35, i32* @nslots, align 4, !dbg !3379, !tbaa !643
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !3380
  br label %36, !dbg !3381

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3344
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3333, metadata !DIExpression()), !dbg !3344
  %38 = zext i32 %0 to i64, !dbg !3382
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3383
  %40 = load i64, i64* %39, align 8, !dbg !3383, !tbaa !3304
  call void @llvm.dbg.value(metadata i64 %40, metadata !3339, metadata !DIExpression()), !dbg !3384
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3385
  %42 = load i8*, i8** %41, align 8, !dbg !3385, !tbaa !3292
  call void @llvm.dbg.value(metadata i8* %42, metadata !3341, metadata !DIExpression()), !dbg !3384
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3386
  %44 = load i32, i32* %43, align 4, !dbg !3386, !tbaa !2609
  %45 = or i32 %44, 1, !dbg !3387
  call void @llvm.dbg.value(metadata i32 %45, metadata !3342, metadata !DIExpression()), !dbg !3384
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3388
  %47 = load i32, i32* %46, align 8, !dbg !3388, !tbaa !2558
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3389
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3390
  %50 = load i8*, i8** %49, align 8, !dbg !3390, !tbaa !2631
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3391
  %52 = load i8*, i8** %51, align 8, !dbg !3391, !tbaa !2634
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %53, metadata !3343, metadata !DIExpression()), !dbg !3384
  %54 = icmp ugt i64 %40, %53, !dbg !3393
  br i1 %54, label %65, label %55, !dbg !3395

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %56, metadata !3339, metadata !DIExpression()), !dbg !3384
  store i64 %56, i64* %39, align 8, !dbg !3398, !tbaa !3304
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3399
  br i1 %57, label %59, label %58, !dbg !3401

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !3402
  br label %59, !dbg !3402

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !3403
  call void @llvm.dbg.value(metadata i8* %60, metadata !3341, metadata !DIExpression()), !dbg !3384
  store i8* %60, i8** %41, align 8, !dbg !3404, !tbaa !3292
  %61 = load i32, i32* %46, align 8, !dbg !3405, !tbaa !2558
  %62 = load i8*, i8** %49, align 8, !dbg !3406, !tbaa !2631
  %63 = load i8*, i8** %51, align 8, !dbg !3407, !tbaa !2634
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3408
  br label %65, !dbg !3409

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3384
  call void @llvm.dbg.value(metadata i8* %66, metadata !3341, metadata !DIExpression()), !dbg !3384
  store i32 %7, i32* %6, align 4, !dbg !3410, !tbaa !643
  ret i8* %66, !dbg !3411
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3412 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i8* %1, metadata !3417, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %2, metadata !3418, metadata !DIExpression()), !dbg !3419
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3420
  ret i8* %4, !dbg !3421
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3422 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 0, metadata !3319, metadata !DIExpression()) #34, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()) #34, !dbg !3426
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3428
  ret i8* %2, !dbg !3429
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3430 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %1, metadata !3435, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !3416, metadata !DIExpression()) #34, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %0, metadata !3417, metadata !DIExpression()) #34, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3418, metadata !DIExpression()) #34, !dbg !3437
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3439
  ret i8* %3, !dbg !3440
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3441 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 %1, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8* %2, metadata !3447, metadata !DIExpression()), !dbg !3449
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3450
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3450
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3448, metadata !DIExpression()), !dbg !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3452), !dbg !3455
  call void @llvm.dbg.value(metadata i32 %1, metadata !3456, metadata !DIExpression()) #34, !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3461, metadata !DIExpression()) #34, !dbg !3464
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3464, !alias.scope !3452
  %6 = icmp eq i32 %1, 10, !dbg !3465
  br i1 %6, label %7, label %8, !dbg !3467

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3468, !noalias !3452
  unreachable, !dbg !3468

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3469
  store i32 %1, i32* %9, align 8, !dbg !3470, !tbaa !2558, !alias.scope !3452
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3472
  ret i8* %10, !dbg !3473
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3474 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3478, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %1, metadata !3479, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %2, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %3, metadata !3481, metadata !DIExpression()), !dbg !3483
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3484
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3484
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3482, metadata !DIExpression()), !dbg !3485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3486), !dbg !3489
  call void @llvm.dbg.value(metadata i32 %1, metadata !3456, metadata !DIExpression()) #34, !dbg !3490
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3461, metadata !DIExpression()) #34, !dbg !3492
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !3492, !alias.scope !3486
  %7 = icmp eq i32 %1, 10, !dbg !3493
  br i1 %7, label %8, label %9, !dbg !3494

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !3495, !noalias !3486
  unreachable, !dbg !3495

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3496
  store i32 %1, i32* %10, align 8, !dbg !3497, !tbaa !2558, !alias.scope !3486
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3498
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3499
  ret i8* %11, !dbg !3500
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3501 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3505, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8* %1, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 0, metadata !3445, metadata !DIExpression()) #34, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()) #34, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %1, metadata !3447, metadata !DIExpression()) #34, !dbg !3508
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3510
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3448, metadata !DIExpression()) #34, !dbg !3511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3512) #34, !dbg !3515
  call void @llvm.dbg.value(metadata i32 %0, metadata !3456, metadata !DIExpression()) #34, !dbg !3516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3461, metadata !DIExpression()) #34, !dbg !3518
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !3518, !alias.scope !3512
  %5 = icmp eq i32 %0, 10, !dbg !3519
  br i1 %5, label %6, label %7, !dbg !3520

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !3521, !noalias !3512
  unreachable, !dbg !3521

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3522
  store i32 %0, i32* %8, align 8, !dbg !3523, !tbaa !2558, !alias.scope !3512
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3525
  ret i8* %9, !dbg !3526
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3527 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3531, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %1, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %2, metadata !3533, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()) #34, !dbg !3535
  call void @llvm.dbg.value(metadata i32 %0, metadata !3479, metadata !DIExpression()) #34, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3480, metadata !DIExpression()) #34, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %2, metadata !3481, metadata !DIExpression()) #34, !dbg !3535
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3537
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3537
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3482, metadata !DIExpression()) #34, !dbg !3538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3539) #34, !dbg !3542
  call void @llvm.dbg.value(metadata i32 %0, metadata !3456, metadata !DIExpression()) #34, !dbg !3543
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3461, metadata !DIExpression()) #34, !dbg !3545
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3545, !alias.scope !3539
  %6 = icmp eq i32 %0, 10, !dbg !3546
  br i1 %6, label %7, label %8, !dbg !3547

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3548, !noalias !3539
  unreachable, !dbg !3548

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3549
  store i32 %0, i32* %9, align 8, !dbg !3550, !tbaa !2558, !alias.scope !3539
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3551
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3552
  ret i8* %10, !dbg !3553
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3554 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3559, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8 %2, metadata !3560, metadata !DIExpression()), !dbg !3562
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3563
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3563
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3561, metadata !DIExpression()), !dbg !3564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3565, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2576, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i8 %2, metadata !2577, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i32 1, metadata !2578, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i8 %2, metadata !2579, metadata !DIExpression()), !dbg !3567
  %6 = lshr i8 %2, 5, !dbg !3569
  %7 = zext i8 %6 to i64, !dbg !3569
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3570
  call void @llvm.dbg.value(metadata i32* %8, metadata !2580, metadata !DIExpression()), !dbg !3567
  %9 = and i8 %2, 31, !dbg !3571
  %10 = zext i8 %9 to i32, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %10, metadata !2582, metadata !DIExpression()), !dbg !3567
  %11 = load i32, i32* %8, align 4, !dbg !3572, !tbaa !643
  %12 = lshr i32 %11, %10, !dbg !3573
  %13 = and i32 %12, 1, !dbg !3574
  call void @llvm.dbg.value(metadata i32 %13, metadata !2583, metadata !DIExpression()), !dbg !3567
  %14 = xor i32 %13, 1, !dbg !3575
  %15 = shl i32 %14, %10, !dbg !3576
  %16 = xor i32 %15, %11, !dbg !3577
  store i32 %16, i32* %8, align 4, !dbg !3577, !tbaa !643
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3579
  ret i8* %17, !dbg !3580
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3581 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 %1, metadata !3586, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #34, !dbg !3588
  call void @llvm.dbg.value(metadata i64 -1, metadata !3559, metadata !DIExpression()) #34, !dbg !3588
  call void @llvm.dbg.value(metadata i8 %1, metadata !3560, metadata !DIExpression()) #34, !dbg !3588
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3590
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3590
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3561, metadata !DIExpression()) #34, !dbg !3591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3592, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2576, metadata !DIExpression()) #34, !dbg !3593
  call void @llvm.dbg.value(metadata i8 %1, metadata !2577, metadata !DIExpression()) #34, !dbg !3593
  call void @llvm.dbg.value(metadata i32 1, metadata !2578, metadata !DIExpression()) #34, !dbg !3593
  call void @llvm.dbg.value(metadata i8 %1, metadata !2579, metadata !DIExpression()) #34, !dbg !3593
  %5 = lshr i8 %1, 5, !dbg !3595
  %6 = zext i8 %5 to i64, !dbg !3595
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3596
  call void @llvm.dbg.value(metadata i32* %7, metadata !2580, metadata !DIExpression()) #34, !dbg !3593
  %8 = and i8 %1, 31, !dbg !3597
  %9 = zext i8 %8 to i32, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %9, metadata !2582, metadata !DIExpression()) #34, !dbg !3593
  %10 = load i32, i32* %7, align 4, !dbg !3598, !tbaa !643
  %11 = lshr i32 %10, %9, !dbg !3599
  %12 = and i32 %11, 1, !dbg !3600
  call void @llvm.dbg.value(metadata i32 %12, metadata !2583, metadata !DIExpression()) #34, !dbg !3593
  %13 = xor i32 %12, 1, !dbg !3601
  %14 = shl i32 %13, %9, !dbg !3602
  %15 = xor i32 %14, %10, !dbg !3603
  store i32 %15, i32* %7, align 4, !dbg !3603, !tbaa !643
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3604
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3605
  ret i8* %16, !dbg !3606
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3607 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()) #34, !dbg !3611
  call void @llvm.dbg.value(metadata i8 58, metadata !3586, metadata !DIExpression()) #34, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #34, !dbg !3613
  call void @llvm.dbg.value(metadata i64 -1, metadata !3559, metadata !DIExpression()) #34, !dbg !3613
  call void @llvm.dbg.value(metadata i8 58, metadata !3560, metadata !DIExpression()) #34, !dbg !3613
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3615
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3615
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3561, metadata !DIExpression()) #34, !dbg !3616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3617, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2576, metadata !DIExpression()) #34, !dbg !3618
  call void @llvm.dbg.value(metadata i8 58, metadata !2577, metadata !DIExpression()) #34, !dbg !3618
  call void @llvm.dbg.value(metadata i32 1, metadata !2578, metadata !DIExpression()) #34, !dbg !3618
  call void @llvm.dbg.value(metadata i8 58, metadata !2579, metadata !DIExpression()) #34, !dbg !3618
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3620
  call void @llvm.dbg.value(metadata i32* %4, metadata !2580, metadata !DIExpression()) #34, !dbg !3618
  call void @llvm.dbg.value(metadata i32 26, metadata !2582, metadata !DIExpression()) #34, !dbg !3618
  %5 = load i32, i32* %4, align 4, !dbg !3621, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %5, metadata !2583, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3618
  %6 = or i32 %5, 67108864, !dbg !3622
  store i32 %6, i32* %4, align 4, !dbg !3622, !tbaa !643
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !3623
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3624
  ret i8* %7, !dbg !3625
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3626 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #34, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3559, metadata !DIExpression()) #34, !dbg !3631
  call void @llvm.dbg.value(metadata i8 58, metadata !3560, metadata !DIExpression()) #34, !dbg !3631
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3633
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3633
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3561, metadata !DIExpression()) #34, !dbg !3634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3635, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2576, metadata !DIExpression()) #34, !dbg !3636
  call void @llvm.dbg.value(metadata i8 58, metadata !2577, metadata !DIExpression()) #34, !dbg !3636
  call void @llvm.dbg.value(metadata i32 1, metadata !2578, metadata !DIExpression()) #34, !dbg !3636
  call void @llvm.dbg.value(metadata i8 58, metadata !2579, metadata !DIExpression()) #34, !dbg !3636
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3638
  call void @llvm.dbg.value(metadata i32* %5, metadata !2580, metadata !DIExpression()) #34, !dbg !3636
  call void @llvm.dbg.value(metadata i32 26, metadata !2582, metadata !DIExpression()) #34, !dbg !3636
  %6 = load i32, i32* %5, align 4, !dbg !3639, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %6, metadata !2583, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3636
  %7 = or i32 %6, 67108864, !dbg !3640
  store i32 %7, i32* %5, align 4, !dbg !3640, !tbaa !643
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3642
  ret i8* %8, !dbg !3643
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3644 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3646, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %1, metadata !3647, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %2, metadata !3648, metadata !DIExpression()), !dbg !3650
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3651
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3651
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3649, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 %1, metadata !3456, metadata !DIExpression()) #34, !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3653
  %6 = icmp eq i32 %1, 10, !dbg !3655
  br i1 %6, label %7, label %8, !dbg !3656

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3657, !noalias !3658
  unreachable, !dbg !3657

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3653
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3661
  store i32 %1, i32* %9, align 8, !dbg !3661, !tbaa.struct !3566
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3661
  %11 = bitcast i32* %10 to i8*, !dbg !3661
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3661
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2576, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 58, metadata !2577, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 1, metadata !2578, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 58, metadata !2579, metadata !DIExpression()), !dbg !3662
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3664
  call void @llvm.dbg.value(metadata i32* %12, metadata !2580, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 26, metadata !2582, metadata !DIExpression()), !dbg !3662
  %13 = load i32, i32* %12, align 4, !dbg !3665, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %13, metadata !2583, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3662
  %14 = or i32 %13, 67108864, !dbg !3666
  store i32 %14, i32* %12, align 4, !dbg !3666, !tbaa !643
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3667
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3668
  ret i8* %15, !dbg !3669
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3670 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3674, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %1, metadata !3675, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %2, metadata !3676, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %3, metadata !3677, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 %0, metadata !3679, metadata !DIExpression()) #34, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()) #34, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %2, metadata !3685, metadata !DIExpression()) #34, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %3, metadata !3686, metadata !DIExpression()) #34, !dbg !3689
  call void @llvm.dbg.value(metadata i64 -1, metadata !3687, metadata !DIExpression()) #34, !dbg !3689
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3691
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3691
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3688, metadata !DIExpression()) #34, !dbg !3692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3693, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2616, metadata !DIExpression()) #34, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()) #34, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %2, metadata !2618, metadata !DIExpression()) #34, !dbg !3694
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2616, metadata !DIExpression()) #34, !dbg !3694
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3696
  store i32 10, i32* %7, align 8, !dbg !3697, !tbaa !2558
  %8 = icmp ne i8* %1, null, !dbg !3698
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3699
  br i1 %10, label %12, label %11, !dbg !3699

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3700
  unreachable, !dbg !3700

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3701
  store i8* %1, i8** %13, align 8, !dbg !3702, !tbaa !2631
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3703
  store i8* %2, i8** %14, align 8, !dbg !3704, !tbaa !2634
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3705
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3706
  ret i8* %15, !dbg !3707
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3680 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3679, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i8* %2, metadata !3685, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i8* %3, metadata !3686, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %4, metadata !3687, metadata !DIExpression()), !dbg !3708
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3709
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3709
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3688, metadata !DIExpression()), !dbg !3710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3711, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2616, metadata !DIExpression()) #34, !dbg !3712
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()) #34, !dbg !3712
  call void @llvm.dbg.value(metadata i8* %2, metadata !2618, metadata !DIExpression()) #34, !dbg !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2616, metadata !DIExpression()) #34, !dbg !3712
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3714
  store i32 10, i32* %8, align 8, !dbg !3715, !tbaa !2558
  %9 = icmp ne i8* %1, null, !dbg !3716
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3717
  br i1 %11, label %13, label %12, !dbg !3717

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !3718
  unreachable, !dbg !3718

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3719
  store i8* %1, i8** %14, align 8, !dbg !3720, !tbaa !2631
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3721
  store i8* %2, i8** %15, align 8, !dbg !3722, !tbaa !2634
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3724
  ret i8* %16, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3726 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3730, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8* %1, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8* %2, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 0, metadata !3674, metadata !DIExpression()) #34, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %0, metadata !3675, metadata !DIExpression()) #34, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %1, metadata !3676, metadata !DIExpression()) #34, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %2, metadata !3677, metadata !DIExpression()) #34, !dbg !3734
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()) #34, !dbg !3736
  call void @llvm.dbg.value(metadata i8* %0, metadata !3684, metadata !DIExpression()) #34, !dbg !3736
  call void @llvm.dbg.value(metadata i8* %1, metadata !3685, metadata !DIExpression()) #34, !dbg !3736
  call void @llvm.dbg.value(metadata i8* %2, metadata !3686, metadata !DIExpression()) #34, !dbg !3736
  call void @llvm.dbg.value(metadata i64 -1, metadata !3687, metadata !DIExpression()) #34, !dbg !3736
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3738
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3738
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3688, metadata !DIExpression()) #34, !dbg !3739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3740, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2616, metadata !DIExpression()) #34, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()) #34, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %1, metadata !2618, metadata !DIExpression()) #34, !dbg !3741
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2616, metadata !DIExpression()) #34, !dbg !3741
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3743
  store i32 10, i32* %6, align 8, !dbg !3744, !tbaa !2558
  %7 = icmp ne i8* %0, null, !dbg !3745
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3746
  br i1 %9, label %11, label %10, !dbg !3746

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !3747
  unreachable, !dbg !3747

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3748
  store i8* %0, i8** %12, align 8, !dbg !3749, !tbaa !2631
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3750
  store i8* %1, i8** %13, align 8, !dbg !3751, !tbaa !2634
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3752
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3753
  ret i8* %14, !dbg !3754
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3755 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %1, metadata !3760, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %2, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %3, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()) #34, !dbg !3764
  call void @llvm.dbg.value(metadata i8* %0, metadata !3684, metadata !DIExpression()) #34, !dbg !3764
  call void @llvm.dbg.value(metadata i8* %1, metadata !3685, metadata !DIExpression()) #34, !dbg !3764
  call void @llvm.dbg.value(metadata i8* %2, metadata !3686, metadata !DIExpression()) #34, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %3, metadata !3687, metadata !DIExpression()) #34, !dbg !3764
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3766
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3766
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3688, metadata !DIExpression()) #34, !dbg !3767
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3768, !tbaa.struct !3566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2616, metadata !DIExpression()) #34, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()) #34, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %1, metadata !2618, metadata !DIExpression()) #34, !dbg !3769
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2616, metadata !DIExpression()) #34, !dbg !3769
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3771
  store i32 10, i32* %7, align 8, !dbg !3772, !tbaa !2558
  %8 = icmp ne i8* %0, null, !dbg !3773
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3774
  br i1 %10, label %12, label %11, !dbg !3774

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3775
  unreachable, !dbg !3775

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3776
  store i8* %0, i8** %13, align 8, !dbg !3777, !tbaa !2631
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3778
  store i8* %1, i8** %14, align 8, !dbg !3779, !tbaa !2634
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3780
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3781
  ret i8* %15, !dbg !3782
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %1, metadata !3788, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %2, metadata !3789, metadata !DIExpression()), !dbg !3790
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3791
  ret i8* %4, !dbg !3792
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3793 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3797, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %1, metadata !3798, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 0, metadata !3787, metadata !DIExpression()) #34, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %0, metadata !3788, metadata !DIExpression()) #34, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %1, metadata !3789, metadata !DIExpression()) #34, !dbg !3800
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3802
  ret i8* %3, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* %1, metadata !3809, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()) #34, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %1, metadata !3788, metadata !DIExpression()) #34, !dbg !3811
  call void @llvm.dbg.value(metadata i64 -1, metadata !3789, metadata !DIExpression()) #34, !dbg !3811
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3813
  ret i8* %3, !dbg !3814
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3815 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3819, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()) #34, !dbg !3821
  call void @llvm.dbg.value(metadata i8* %0, metadata !3809, metadata !DIExpression()) #34, !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3787, metadata !DIExpression()) #34, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %0, metadata !3788, metadata !DIExpression()) #34, !dbg !3823
  call void @llvm.dbg.value(metadata i64 -1, metadata !3789, metadata !DIExpression()) #34, !dbg !3823
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3825
  ret i8* %2, !dbg !3826
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3827 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3866, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8* %1, metadata !3867, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8* %2, metadata !3868, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8* %3, metadata !3869, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8** %4, metadata !3870, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 %5, metadata !3871, metadata !DIExpression()), !dbg !3872
  %7 = icmp eq i8* %1, null, !dbg !3873
  br i1 %7, label %10, label %8, !dbg !3875

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3876
  br label %12, !dbg !3876

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3877
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.102, i64 0, i64 0), i32 noundef 5) #34, !dbg !3878
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3878
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3879
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.104, i64 0, i64 0), i32 noundef 5) #34, !dbg !3880
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.105, i64 0, i64 0)) #34, !dbg !3880
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3881
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
  ], !dbg !3882

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.106, i64 0, i64 0), i32 noundef 5) #34, !dbg !3883
  %21 = load i8*, i8** %4, align 8, !dbg !3883, !tbaa !544
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3883
  br label %147, !dbg !3885

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.107, i64 0, i64 0), i32 noundef 5) #34, !dbg !3886
  %25 = load i8*, i8** %4, align 8, !dbg !3886, !tbaa !544
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3886
  %27 = load i8*, i8** %26, align 8, !dbg !3886, !tbaa !544
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3886
  br label %147, !dbg !3887

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.108, i64 0, i64 0), i32 noundef 5) #34, !dbg !3888
  %31 = load i8*, i8** %4, align 8, !dbg !3888, !tbaa !544
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3888
  %33 = load i8*, i8** %32, align 8, !dbg !3888, !tbaa !544
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3888
  %35 = load i8*, i8** %34, align 8, !dbg !3888, !tbaa !544
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3888
  br label %147, !dbg !3889

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.109, i64 0, i64 0), i32 noundef 5) #34, !dbg !3890
  %39 = load i8*, i8** %4, align 8, !dbg !3890, !tbaa !544
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3890
  %41 = load i8*, i8** %40, align 8, !dbg !3890, !tbaa !544
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3890
  %43 = load i8*, i8** %42, align 8, !dbg !3890, !tbaa !544
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3890
  %45 = load i8*, i8** %44, align 8, !dbg !3890, !tbaa !544
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3890
  br label %147, !dbg !3891

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.110, i64 0, i64 0), i32 noundef 5) #34, !dbg !3892
  %49 = load i8*, i8** %4, align 8, !dbg !3892, !tbaa !544
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3892
  %51 = load i8*, i8** %50, align 8, !dbg !3892, !tbaa !544
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3892
  %53 = load i8*, i8** %52, align 8, !dbg !3892, !tbaa !544
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3892
  %55 = load i8*, i8** %54, align 8, !dbg !3892, !tbaa !544
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3892
  %57 = load i8*, i8** %56, align 8, !dbg !3892, !tbaa !544
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3892
  br label %147, !dbg !3893

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.111, i64 0, i64 0), i32 noundef 5) #34, !dbg !3894
  %61 = load i8*, i8** %4, align 8, !dbg !3894, !tbaa !544
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3894
  %63 = load i8*, i8** %62, align 8, !dbg !3894, !tbaa !544
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3894
  %65 = load i8*, i8** %64, align 8, !dbg !3894, !tbaa !544
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3894
  %67 = load i8*, i8** %66, align 8, !dbg !3894, !tbaa !544
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3894
  %69 = load i8*, i8** %68, align 8, !dbg !3894, !tbaa !544
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3894
  %71 = load i8*, i8** %70, align 8, !dbg !3894, !tbaa !544
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3894
  br label %147, !dbg !3895

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.112, i64 0, i64 0), i32 noundef 5) #34, !dbg !3896
  %75 = load i8*, i8** %4, align 8, !dbg !3896, !tbaa !544
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3896
  %77 = load i8*, i8** %76, align 8, !dbg !3896, !tbaa !544
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3896
  %79 = load i8*, i8** %78, align 8, !dbg !3896, !tbaa !544
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3896
  %81 = load i8*, i8** %80, align 8, !dbg !3896, !tbaa !544
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3896
  %83 = load i8*, i8** %82, align 8, !dbg !3896, !tbaa !544
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3896
  %85 = load i8*, i8** %84, align 8, !dbg !3896, !tbaa !544
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3896
  %87 = load i8*, i8** %86, align 8, !dbg !3896, !tbaa !544
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3896
  br label %147, !dbg !3897

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.113, i64 0, i64 0), i32 noundef 5) #34, !dbg !3898
  %91 = load i8*, i8** %4, align 8, !dbg !3898, !tbaa !544
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3898
  %93 = load i8*, i8** %92, align 8, !dbg !3898, !tbaa !544
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3898
  %95 = load i8*, i8** %94, align 8, !dbg !3898, !tbaa !544
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3898
  %97 = load i8*, i8** %96, align 8, !dbg !3898, !tbaa !544
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3898
  %99 = load i8*, i8** %98, align 8, !dbg !3898, !tbaa !544
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3898
  %101 = load i8*, i8** %100, align 8, !dbg !3898, !tbaa !544
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3898
  %103 = load i8*, i8** %102, align 8, !dbg !3898, !tbaa !544
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3898
  %105 = load i8*, i8** %104, align 8, !dbg !3898, !tbaa !544
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3898
  br label %147, !dbg !3899

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.114, i64 0, i64 0), i32 noundef 5) #34, !dbg !3900
  %109 = load i8*, i8** %4, align 8, !dbg !3900, !tbaa !544
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3900
  %111 = load i8*, i8** %110, align 8, !dbg !3900, !tbaa !544
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3900
  %113 = load i8*, i8** %112, align 8, !dbg !3900, !tbaa !544
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3900
  %115 = load i8*, i8** %114, align 8, !dbg !3900, !tbaa !544
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3900
  %117 = load i8*, i8** %116, align 8, !dbg !3900, !tbaa !544
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3900
  %119 = load i8*, i8** %118, align 8, !dbg !3900, !tbaa !544
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3900
  %121 = load i8*, i8** %120, align 8, !dbg !3900, !tbaa !544
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3900
  %123 = load i8*, i8** %122, align 8, !dbg !3900, !tbaa !544
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3900
  %125 = load i8*, i8** %124, align 8, !dbg !3900, !tbaa !544
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3900
  br label %147, !dbg !3901

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.115, i64 0, i64 0), i32 noundef 5) #34, !dbg !3902
  %129 = load i8*, i8** %4, align 8, !dbg !3902, !tbaa !544
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3902
  %131 = load i8*, i8** %130, align 8, !dbg !3902, !tbaa !544
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3902
  %133 = load i8*, i8** %132, align 8, !dbg !3902, !tbaa !544
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3902
  %135 = load i8*, i8** %134, align 8, !dbg !3902, !tbaa !544
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3902
  %137 = load i8*, i8** %136, align 8, !dbg !3902, !tbaa !544
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3902
  %139 = load i8*, i8** %138, align 8, !dbg !3902, !tbaa !544
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3902
  %141 = load i8*, i8** %140, align 8, !dbg !3902, !tbaa !544
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3902
  %143 = load i8*, i8** %142, align 8, !dbg !3902, !tbaa !544
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3902
  %145 = load i8*, i8** %144, align 8, !dbg !3902, !tbaa !544
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3902
  br label %147, !dbg !3903

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3904
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3905 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3909, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %1, metadata !3910, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8** %4, metadata !3913, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 0, metadata !3914, metadata !DIExpression()), !dbg !3915
  br label %6, !dbg !3916

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3918
  call void @llvm.dbg.value(metadata i64 %7, metadata !3914, metadata !DIExpression()), !dbg !3915
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3919
  %9 = load i8*, i8** %8, align 8, !dbg !3919, !tbaa !544
  %10 = icmp eq i8* %9, null, !dbg !3921
  %11 = add i64 %7, 1, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %11, metadata !3914, metadata !DIExpression()), !dbg !3915
  br i1 %10, label %12, label %6, !dbg !3921, !llvm.loop !3923

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3925
  ret void, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3927 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3942, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i8* %1, metadata !3943, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i8* %2, metadata !3944, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i8* %3, metadata !3945, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3946, metadata !DIExpression()), !dbg !3951
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3952
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3952
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 0, metadata !3947, metadata !DIExpression()), !dbg !3950
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3947, metadata !DIExpression()), !dbg !3950
  %11 = load i32, i32* %8, align 8, !dbg !3954
  %12 = icmp sgt i32 %11, -1, !dbg !3954
  br i1 %12, label %20, label %13, !dbg !3954

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3954
  store i32 %14, i32* %8, align 8, !dbg !3954
  %15 = icmp ult i32 %11, -7, !dbg !3954
  br i1 %15, label %16, label %20, !dbg !3954

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3954
  %18 = sext i32 %11 to i64, !dbg !3954
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3954
  br label %24, !dbg !3954

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3954
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3954
  store i8* %23, i8** %10, align 8, !dbg !3954
  br label %24, !dbg !3954

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3954
  %28 = load i8*, i8** %27, align 8, !dbg !3954
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3957
  store i8* %28, i8** %29, align 8, !dbg !3958, !tbaa !544
  %30 = icmp eq i8* %28, null, !dbg !3959
  br i1 %30, label %210, label %31, !dbg !3960

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 1, metadata !3947, metadata !DIExpression()), !dbg !3950
  %32 = icmp sgt i32 %25, -1, !dbg !3954
  br i1 %32, label %40, label %33, !dbg !3954

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3954
  store i32 %34, i32* %8, align 8, !dbg !3954
  %35 = icmp ult i32 %25, -7, !dbg !3954
  br i1 %35, label %36, label %40, !dbg !3954

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3954
  %38 = sext i32 %25 to i64, !dbg !3954
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3954
  br label %44, !dbg !3954

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3954
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3954
  store i8* %43, i8** %10, align 8, !dbg !3954
  br label %44, !dbg !3954

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3954
  %48 = load i8*, i8** %47, align 8, !dbg !3954
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3957
  store i8* %48, i8** %49, align 8, !dbg !3958, !tbaa !544
  %50 = icmp eq i8* %48, null, !dbg !3959
  br i1 %50, label %210, label %51, !dbg !3960

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 2, metadata !3947, metadata !DIExpression()), !dbg !3950
  %52 = icmp sgt i32 %45, -1, !dbg !3954
  br i1 %52, label %60, label %53, !dbg !3954

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3954
  store i32 %54, i32* %8, align 8, !dbg !3954
  %55 = icmp ult i32 %45, -7, !dbg !3954
  br i1 %55, label %56, label %60, !dbg !3954

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3954
  %58 = sext i32 %45 to i64, !dbg !3954
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3954
  br label %64, !dbg !3954

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3954
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3954
  store i8* %63, i8** %10, align 8, !dbg !3954
  br label %64, !dbg !3954

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3954
  %68 = load i8*, i8** %67, align 8, !dbg !3954
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3957
  store i8* %68, i8** %69, align 8, !dbg !3958, !tbaa !544
  %70 = icmp eq i8* %68, null, !dbg !3959
  br i1 %70, label %210, label %71, !dbg !3960

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 3, metadata !3947, metadata !DIExpression()), !dbg !3950
  %72 = icmp sgt i32 %65, -1, !dbg !3954
  br i1 %72, label %80, label %73, !dbg !3954

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3954
  store i32 %74, i32* %8, align 8, !dbg !3954
  %75 = icmp ult i32 %65, -7, !dbg !3954
  br i1 %75, label %76, label %80, !dbg !3954

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3954
  %78 = sext i32 %65 to i64, !dbg !3954
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3954
  br label %84, !dbg !3954

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3954
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3954
  store i8* %83, i8** %10, align 8, !dbg !3954
  br label %84, !dbg !3954

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3954
  %88 = load i8*, i8** %87, align 8, !dbg !3954
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3957
  store i8* %88, i8** %89, align 8, !dbg !3958, !tbaa !544
  %90 = icmp eq i8* %88, null, !dbg !3959
  br i1 %90, label %210, label %91, !dbg !3960

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 4, metadata !3947, metadata !DIExpression()), !dbg !3950
  %92 = icmp sgt i32 %85, -1, !dbg !3954
  br i1 %92, label %100, label %93, !dbg !3954

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3954
  store i32 %94, i32* %8, align 8, !dbg !3954
  %95 = icmp ult i32 %85, -7, !dbg !3954
  br i1 %95, label %96, label %100, !dbg !3954

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3954
  %98 = sext i32 %85 to i64, !dbg !3954
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3954
  br label %104, !dbg !3954

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3954
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3954
  store i8* %103, i8** %10, align 8, !dbg !3954
  br label %104, !dbg !3954

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3954
  %108 = load i8*, i8** %107, align 8, !dbg !3954
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3957
  store i8* %108, i8** %109, align 8, !dbg !3958, !tbaa !544
  %110 = icmp eq i8* %108, null, !dbg !3959
  br i1 %110, label %210, label %111, !dbg !3960

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 5, metadata !3947, metadata !DIExpression()), !dbg !3950
  %112 = icmp sgt i32 %105, -1, !dbg !3954
  br i1 %112, label %120, label %113, !dbg !3954

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3954
  store i32 %114, i32* %8, align 8, !dbg !3954
  %115 = icmp ult i32 %105, -7, !dbg !3954
  br i1 %115, label %116, label %120, !dbg !3954

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3954
  %118 = sext i32 %105 to i64, !dbg !3954
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3954
  br label %124, !dbg !3954

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3954
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3954
  store i8* %123, i8** %10, align 8, !dbg !3954
  br label %124, !dbg !3954

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3954
  %128 = load i8*, i8** %127, align 8, !dbg !3954
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3957
  store i8* %128, i8** %129, align 8, !dbg !3958, !tbaa !544
  %130 = icmp eq i8* %128, null, !dbg !3959
  br i1 %130, label %210, label %131, !dbg !3960

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 6, metadata !3947, metadata !DIExpression()), !dbg !3950
  %132 = icmp sgt i32 %125, -1, !dbg !3954
  br i1 %132, label %140, label %133, !dbg !3954

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3954
  store i32 %134, i32* %8, align 8, !dbg !3954
  %135 = icmp ult i32 %125, -7, !dbg !3954
  br i1 %135, label %136, label %140, !dbg !3954

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3954
  %138 = sext i32 %125 to i64, !dbg !3954
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3954
  br label %144, !dbg !3954

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3954
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3954
  store i8* %143, i8** %10, align 8, !dbg !3954
  br label %144, !dbg !3954

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3954
  %148 = load i8*, i8** %147, align 8, !dbg !3954
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3957
  store i8* %148, i8** %149, align 8, !dbg !3958, !tbaa !544
  %150 = icmp eq i8* %148, null, !dbg !3959
  br i1 %150, label %210, label %151, !dbg !3960

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 7, metadata !3947, metadata !DIExpression()), !dbg !3950
  %152 = icmp sgt i32 %145, -1, !dbg !3954
  br i1 %152, label %160, label %153, !dbg !3954

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3954
  store i32 %154, i32* %8, align 8, !dbg !3954
  %155 = icmp ult i32 %145, -7, !dbg !3954
  br i1 %155, label %156, label %160, !dbg !3954

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3954
  %158 = sext i32 %145 to i64, !dbg !3954
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3954
  br label %164, !dbg !3954

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3954
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3954
  store i8* %163, i8** %10, align 8, !dbg !3954
  br label %164, !dbg !3954

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3954
  %168 = load i8*, i8** %167, align 8, !dbg !3954
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3957
  store i8* %168, i8** %169, align 8, !dbg !3958, !tbaa !544
  %170 = icmp eq i8* %168, null, !dbg !3959
  br i1 %170, label %210, label %171, !dbg !3960

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 8, metadata !3947, metadata !DIExpression()), !dbg !3950
  %172 = icmp sgt i32 %165, -1, !dbg !3954
  br i1 %172, label %180, label %173, !dbg !3954

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3954
  store i32 %174, i32* %8, align 8, !dbg !3954
  %175 = icmp ult i32 %165, -7, !dbg !3954
  br i1 %175, label %176, label %180, !dbg !3954

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3954
  %178 = sext i32 %165 to i64, !dbg !3954
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3954
  br label %184, !dbg !3954

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3954
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3954
  store i8* %183, i8** %10, align 8, !dbg !3954
  br label %184, !dbg !3954

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3954
  %188 = load i8*, i8** %187, align 8, !dbg !3954
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3957
  store i8* %188, i8** %189, align 8, !dbg !3958, !tbaa !544
  %190 = icmp eq i8* %188, null, !dbg !3959
  br i1 %190, label %210, label %191, !dbg !3960

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 9, metadata !3947, metadata !DIExpression()), !dbg !3950
  %192 = icmp sgt i32 %185, -1, !dbg !3954
  br i1 %192, label %200, label %193, !dbg !3954

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3954
  store i32 %194, i32* %8, align 8, !dbg !3954
  %195 = icmp ult i32 %185, -7, !dbg !3954
  br i1 %195, label %196, label %200, !dbg !3954

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3954
  %198 = sext i32 %185 to i64, !dbg !3954
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3954
  br label %203, !dbg !3954

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3954
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3954
  store i8* %202, i8** %10, align 8, !dbg !3954
  br label %203, !dbg !3954

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3954
  %206 = load i8*, i8** %205, align 8, !dbg !3954
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3957
  store i8* %206, i8** %207, align 8, !dbg !3958, !tbaa !544
  %208 = icmp eq i8* %206, null, !dbg !3959
  %209 = select i1 %208, i64 9, i64 10, !dbg !3960
  br label %210, !dbg !3960

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3961
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3962
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3963
  ret void, !dbg !3963
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3964 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3968, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i8* %1, metadata !3969, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i8* %2, metadata !3970, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i8* %3, metadata !3971, metadata !DIExpression()), !dbg !3973
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3974
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3974
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3972, metadata !DIExpression()), !dbg !3975
  call void @llvm.va_start(i8* nonnull %7), !dbg !3976
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3977
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3977, !tbaa.struct !1946
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3977
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3977
  call void @llvm.va_end(i8* nonnull %7), !dbg !3978
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3979
  ret void, !dbg !3979
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3980 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3981, !tbaa !544
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3981
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.120, i64 0, i64 0), i32 noundef 5) #34, !dbg !3982
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.121, i64 0, i64 0)) #34, !dbg !3982
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.122, i64 0, i64 0), i32 noundef 5) #34, !dbg !3983
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.124, i64 0, i64 0)) #34, !dbg !3983
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.125, i64 0, i64 0), i32 noundef 5) #34, !dbg !3984
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.126, i64 0, i64 0)) #34, !dbg !3984
  ret void, !dbg !3985
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3986 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %2, metadata !3993, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %0, metadata !3995, metadata !DIExpression()) #34, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %1, metadata !3998, metadata !DIExpression()) #34, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %2, metadata !3999, metadata !DIExpression()) #34, !dbg !4000
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %4, metadata !4003, metadata !DIExpression()) #34, !dbg !4008
  %5 = icmp eq i8* %4, null, !dbg !4010
  br i1 %5, label %6, label %7, !dbg !4012

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !4013
  unreachable, !dbg !4013

7:                                                ; preds = %3
  ret i8* %4, !dbg !4014
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3996 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3995, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3998, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %2, metadata !3999, metadata !DIExpression()), !dbg !4015
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !4016
  call void @llvm.dbg.value(metadata i8* %4, metadata !4003, metadata !DIExpression()) #34, !dbg !4017
  %5 = icmp eq i8* %4, null, !dbg !4019
  br i1 %5, label %6, label %7, !dbg !4020

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !4021
  unreachable, !dbg !4021

7:                                                ; preds = %3
  ret i8* %4, !dbg !4022
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4023 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4027, metadata !DIExpression()), !dbg !4028
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !4029
  call void @llvm.dbg.value(metadata i8* %2, metadata !4003, metadata !DIExpression()) #34, !dbg !4030
  %3 = icmp eq i8* %2, null, !dbg !4032
  br i1 %3, label %4, label %5, !dbg !4033

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4034
  unreachable, !dbg !4034

5:                                                ; preds = %1
  ret i8* %2, !dbg !4035
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4036 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %0, metadata !4042, metadata !DIExpression()) #34, !dbg !4046
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %2, metadata !4003, metadata !DIExpression()) #34, !dbg !4049
  %3 = icmp eq i8* %2, null, !dbg !4051
  br i1 %3, label %4, label %5, !dbg !4052

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4053
  unreachable, !dbg !4053

5:                                                ; preds = %1
  ret i8* %2, !dbg !4054
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %0, metadata !4027, metadata !DIExpression()) #34, !dbg !4061
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !4063
  call void @llvm.dbg.value(metadata i8* %2, metadata !4003, metadata !DIExpression()) #34, !dbg !4064
  %3 = icmp eq i8* %2, null, !dbg !4066
  br i1 %3, label %4, label %5, !dbg !4067

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4068
  unreachable, !dbg !4068

5:                                                ; preds = %1
  ret i8* %2, !dbg !4069
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4070 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4074, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()) #34, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %1, metadata !4081, metadata !DIExpression()) #34, !dbg !4082
  %3 = icmp eq i64 %1, 0, !dbg !4084
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4084
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !4085
  call void @llvm.dbg.value(metadata i8* %5, metadata !4003, metadata !DIExpression()) #34, !dbg !4086
  %6 = icmp eq i8* %5, null, !dbg !4088
  br i1 %6, label %7, label %8, !dbg !4089

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4090
  unreachable, !dbg !4090

8:                                                ; preds = %2
  ret i8* %5, !dbg !4091
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4092 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %0, metadata !4099, metadata !DIExpression()) #34, !dbg !4103
  call void @llvm.dbg.value(metadata i64 %1, metadata !4102, metadata !DIExpression()) #34, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()) #34, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %1, metadata !4081, metadata !DIExpression()) #34, !dbg !4105
  %3 = icmp eq i64 %1, 0, !dbg !4107
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4107
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !4108
  call void @llvm.dbg.value(metadata i8* %5, metadata !4003, metadata !DIExpression()) #34, !dbg !4109
  %6 = icmp eq i8* %5, null, !dbg !4111
  br i1 %6, label %7, label %8, !dbg !4112

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4113
  unreachable, !dbg !4113

8:                                                ; preds = %2
  ret i8* %5, !dbg !4114
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !4115 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4119, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 %1, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 %2, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i8* %0, metadata !4123, metadata !DIExpression()) #34, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %1, metadata !4126, metadata !DIExpression()) #34, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %2, metadata !4127, metadata !DIExpression()) #34, !dbg !4128
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !4130
  call void @llvm.dbg.value(metadata i8* %4, metadata !4003, metadata !DIExpression()) #34, !dbg !4131
  %5 = icmp eq i8* %4, null, !dbg !4133
  br i1 %5, label %6, label %7, !dbg !4134

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !4135
  unreachable, !dbg !4135

7:                                                ; preds = %3
  ret i8* %4, !dbg !4136
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4137 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4141, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %1, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i8* null, metadata !3995, metadata !DIExpression()) #34, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %0, metadata !3998, metadata !DIExpression()) #34, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %1, metadata !3999, metadata !DIExpression()) #34, !dbg !4144
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %3, metadata !4003, metadata !DIExpression()) #34, !dbg !4147
  %4 = icmp eq i8* %3, null, !dbg !4149
  br i1 %4, label %5, label %6, !dbg !4150

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4151
  unreachable, !dbg !4151

6:                                                ; preds = %2
  ret i8* %3, !dbg !4152
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4153 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4157, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %1, metadata !4158, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* null, metadata !4119, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %0, metadata !4120, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %1, metadata !4121, metadata !DIExpression()) #34, !dbg !4160
  call void @llvm.dbg.value(metadata i8* null, metadata !4123, metadata !DIExpression()) #34, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %0, metadata !4126, metadata !DIExpression()) #34, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %1, metadata !4127, metadata !DIExpression()) #34, !dbg !4162
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !4164
  call void @llvm.dbg.value(metadata i8* %3, metadata !4003, metadata !DIExpression()) #34, !dbg !4165
  %4 = icmp eq i8* %3, null, !dbg !4167
  br i1 %4, label %5, label %6, !dbg !4168

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4169
  unreachable, !dbg !4169

6:                                                ; preds = %2
  ret i8* %3, !dbg !4170
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4175, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64* %1, metadata !4176, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %0, metadata !463, metadata !DIExpression()) #34, !dbg !4178
  call void @llvm.dbg.value(metadata i64* %1, metadata !464, metadata !DIExpression()) #34, !dbg !4178
  call void @llvm.dbg.value(metadata i64 1, metadata !465, metadata !DIExpression()) #34, !dbg !4178
  %3 = load i64, i64* %1, align 8, !dbg !4180, !tbaa !3276
  call void @llvm.dbg.value(metadata i64 %3, metadata !466, metadata !DIExpression()) #34, !dbg !4178
  %4 = icmp eq i8* %0, null, !dbg !4181
  br i1 %4, label %5, label %8, !dbg !4183

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4184
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4187
  br label %15, !dbg !4187

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4188
  %10 = add nuw i64 %9, 1, !dbg !4188
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !4188
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4188
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %13, metadata !466, metadata !DIExpression()) #34, !dbg !4178
  br i1 %12, label %14, label %15, !dbg !4191

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !4192
  unreachable, !dbg !4192

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4178
  call void @llvm.dbg.value(metadata i64 %16, metadata !466, metadata !DIExpression()) #34, !dbg !4178
  call void @llvm.dbg.value(metadata i8* %0, metadata !3995, metadata !DIExpression()) #34, !dbg !4193
  call void @llvm.dbg.value(metadata i64 %16, metadata !3998, metadata !DIExpression()) #34, !dbg !4193
  call void @llvm.dbg.value(metadata i64 1, metadata !3999, metadata !DIExpression()) #34, !dbg !4193
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !4195
  call void @llvm.dbg.value(metadata i8* %17, metadata !4003, metadata !DIExpression()) #34, !dbg !4196
  %18 = icmp eq i8* %17, null, !dbg !4198
  br i1 %18, label %19, label %20, !dbg !4199

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !4200
  unreachable, !dbg !4200

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !463, metadata !DIExpression()) #34, !dbg !4178
  store i64 %16, i64* %1, align 8, !dbg !4201, !tbaa !3276
  ret i8* %17, !dbg !4202
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !458 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !463, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64* %1, metadata !464, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %2, metadata !465, metadata !DIExpression()), !dbg !4203
  %4 = load i64, i64* %1, align 8, !dbg !4204, !tbaa !3276
  call void @llvm.dbg.value(metadata i64 %4, metadata !466, metadata !DIExpression()), !dbg !4203
  %5 = icmp eq i8* %0, null, !dbg !4205
  br i1 %5, label %6, label %13, !dbg !4206

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4207
  br i1 %7, label %8, label %20, !dbg !4208

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4209
  call void @llvm.dbg.value(metadata i64 %9, metadata !466, metadata !DIExpression()), !dbg !4203
  %10 = icmp ugt i64 %2, 128, !dbg !4211
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4212
  call void @llvm.dbg.value(metadata i64 %12, metadata !466, metadata !DIExpression()), !dbg !4203
  br label %20, !dbg !4213

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4214
  %15 = add nuw i64 %14, 1, !dbg !4214
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4214
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4214
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4214
  call void @llvm.dbg.value(metadata i64 %18, metadata !466, metadata !DIExpression()), !dbg !4203
  br i1 %17, label %19, label %20, !dbg !4215

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !4216
  unreachable, !dbg !4216

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4203
  call void @llvm.dbg.value(metadata i64 %21, metadata !466, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i8* %0, metadata !3995, metadata !DIExpression()) #34, !dbg !4217
  call void @llvm.dbg.value(metadata i64 %21, metadata !3998, metadata !DIExpression()) #34, !dbg !4217
  call void @llvm.dbg.value(metadata i64 %2, metadata !3999, metadata !DIExpression()) #34, !dbg !4217
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %22, metadata !4003, metadata !DIExpression()) #34, !dbg !4220
  %23 = icmp eq i8* %22, null, !dbg !4222
  br i1 %23, label %24, label %25, !dbg !4223

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !4224
  unreachable, !dbg !4224

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !463, metadata !DIExpression()), !dbg !4203
  store i64 %21, i64* %1, align 8, !dbg !4225, !tbaa !3276
  ret i8* %22, !dbg !4226
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !478, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64* %1, metadata !479, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %2, metadata !480, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %3, metadata !481, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %4, metadata !482, metadata !DIExpression()), !dbg !4227
  %6 = load i64, i64* %1, align 8, !dbg !4228, !tbaa !3276
  call void @llvm.dbg.value(metadata i64 %6, metadata !483, metadata !DIExpression()), !dbg !4227
  %7 = ashr i64 %6, 1, !dbg !4229
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4229
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4229
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %10, metadata !484, metadata !DIExpression()), !dbg !4227
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4231
  call void @llvm.dbg.value(metadata i64 %11, metadata !484, metadata !DIExpression()), !dbg !4227
  %12 = icmp sgt i64 %3, -1, !dbg !4232
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4234
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4234
  call void @llvm.dbg.value(metadata i64 %15, metadata !484, metadata !DIExpression()), !dbg !4227
  %16 = icmp slt i64 %4, 0, !dbg !4235
  br i1 %16, label %17, label %30, !dbg !4235

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4235
  br i1 %18, label %19, label %24, !dbg !4235

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4235
  %21 = udiv i64 9223372036854775807, %20, !dbg !4235
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4235
  br i1 %23, label %46, label %43, !dbg !4235

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4235
  br i1 %25, label %43, label %26, !dbg !4235

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4235
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4235
  %29 = icmp ult i64 %28, %15, !dbg !4235
  br i1 %29, label %46, label %43, !dbg !4235

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4235
  br i1 %31, label %43, label %32, !dbg !4235

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4235
  br i1 %33, label %34, label %40, !dbg !4235

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4235
  br i1 %35, label %43, label %36, !dbg !4235

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4235
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4235
  %39 = icmp ult i64 %38, %4, !dbg !4235
  br i1 %39, label %46, label %43, !dbg !4235

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4235
  %42 = icmp ult i64 %41, %15, !dbg !4235
  br i1 %42, label %46, label %43, !dbg !4235

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !485, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4227
  %44 = mul i64 %15, %4, !dbg !4235
  call void @llvm.dbg.value(metadata i64 %44, metadata !485, metadata !DIExpression()), !dbg !4227
  %45 = icmp slt i64 %44, 128, !dbg !4235
  br i1 %45, label %46, label %52, !dbg !4235

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !486, metadata !DIExpression()), !dbg !4227
  %48 = sdiv i64 %47, %4, !dbg !4236
  call void @llvm.dbg.value(metadata i64 %48, metadata !484, metadata !DIExpression()), !dbg !4227
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4239
  call void @llvm.dbg.value(metadata i64 %51, metadata !485, metadata !DIExpression()), !dbg !4227
  br label %52, !dbg !4240

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4227
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4227
  call void @llvm.dbg.value(metadata i64 %54, metadata !485, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %53, metadata !484, metadata !DIExpression()), !dbg !4227
  %55 = icmp eq i8* %0, null, !dbg !4241
  br i1 %55, label %56, label %57, !dbg !4243

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4244, !tbaa !3276
  br label %57, !dbg !4245

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4246
  %59 = icmp slt i64 %58, %2, !dbg !4248
  br i1 %59, label %60, label %97, !dbg !4249

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4250
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4250
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %63, metadata !484, metadata !DIExpression()), !dbg !4227
  br i1 %62, label %96, label %64, !dbg !4251

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4252
  br i1 %66, label %96, label %67, !dbg !4252

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4253

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4253
  br i1 %69, label %70, label %75, !dbg !4253

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4253
  %72 = udiv i64 9223372036854775807, %71, !dbg !4253
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4253
  br i1 %74, label %96, label %94, !dbg !4253

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4253
  br i1 %76, label %94, label %77, !dbg !4253

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4253
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4253
  %80 = icmp ult i64 %79, %63, !dbg !4253
  br i1 %80, label %96, label %94, !dbg !4253

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4253
  br i1 %82, label %94, label %83, !dbg !4253

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4253
  br i1 %84, label %85, label %91, !dbg !4253

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4253
  br i1 %86, label %94, label %87, !dbg !4253

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4253
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4253
  %90 = icmp ult i64 %89, %4, !dbg !4253
  br i1 %90, label %96, label %94, !dbg !4253

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4253
  %93 = icmp ult i64 %92, %63, !dbg !4253
  br i1 %93, label %96, label %94, !dbg !4253

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !485, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4227
  %95 = mul i64 %63, %4, !dbg !4253
  call void @llvm.dbg.value(metadata i64 %95, metadata !485, metadata !DIExpression()), !dbg !4227
  br label %97, !dbg !4254

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !4255
  unreachable, !dbg !4255

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4227
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4227
  call void @llvm.dbg.value(metadata i64 %99, metadata !485, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %98, metadata !484, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i8* %0, metadata !4074, metadata !DIExpression()) #34, !dbg !4256
  call void @llvm.dbg.value(metadata i64 %99, metadata !4075, metadata !DIExpression()) #34, !dbg !4256
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()) #34, !dbg !4258
  call void @llvm.dbg.value(metadata i64 %99, metadata !4081, metadata !DIExpression()) #34, !dbg !4258
  %100 = icmp eq i64 %99, 0, !dbg !4260
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4260
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %102, metadata !4003, metadata !DIExpression()) #34, !dbg !4262
  %103 = icmp eq i8* %102, null, !dbg !4264
  br i1 %103, label %104, label %105, !dbg !4265

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !4266
  unreachable, !dbg !4266

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !478, metadata !DIExpression()), !dbg !4227
  store i64 %98, i64* %1, align 8, !dbg !4267, !tbaa !3276
  ret i8* %102, !dbg !4268
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4269 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4271, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()) #34, !dbg !4277
  call void @llvm.dbg.value(metadata i64 1, metadata !4276, metadata !DIExpression()) #34, !dbg !4277
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !4279
  call void @llvm.dbg.value(metadata i8* %2, metadata !4003, metadata !DIExpression()) #34, !dbg !4280
  %3 = icmp eq i8* %2, null, !dbg !4282
  br i1 %3, label %4, label %5, !dbg !4283

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4284
  unreachable, !dbg !4284

5:                                                ; preds = %1
  ret i8* %2, !dbg !4285
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4274 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4286
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !4287
  call void @llvm.dbg.value(metadata i8* %3, metadata !4003, metadata !DIExpression()) #34, !dbg !4288
  %4 = icmp eq i8* %3, null, !dbg !4290
  br i1 %4, label %5, label %6, !dbg !4291

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4292
  unreachable, !dbg !4292

6:                                                ; preds = %2
  ret i8* %3, !dbg !4293
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4296, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %0, metadata !4298, metadata !DIExpression()) #34, !dbg !4302
  call void @llvm.dbg.value(metadata i64 1, metadata !4301, metadata !DIExpression()) #34, !dbg !4302
  call void @llvm.dbg.value(metadata i64 %0, metadata !4304, metadata !DIExpression()) #34, !dbg !4308
  call void @llvm.dbg.value(metadata i64 1, metadata !4307, metadata !DIExpression()) #34, !dbg !4308
  call void @llvm.dbg.value(metadata i64 %0, metadata !4304, metadata !DIExpression()) #34, !dbg !4308
  call void @llvm.dbg.value(metadata i64 1, metadata !4307, metadata !DIExpression()) #34, !dbg !4308
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !4310
  call void @llvm.dbg.value(metadata i8* %2, metadata !4003, metadata !DIExpression()) #34, !dbg !4311
  %3 = icmp eq i8* %2, null, !dbg !4313
  br i1 %3, label %4, label %5, !dbg !4314

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4315
  unreachable, !dbg !4315

5:                                                ; preds = %1
  ret i8* %2, !dbg !4316
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4299 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4298, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %0, metadata !4304, metadata !DIExpression()) #34, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %1, metadata !4307, metadata !DIExpression()) #34, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %0, metadata !4304, metadata !DIExpression()) #34, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %1, metadata !4307, metadata !DIExpression()) #34, !dbg !4318
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %3, metadata !4003, metadata !DIExpression()) #34, !dbg !4321
  %4 = icmp eq i8* %3, null, !dbg !4323
  br i1 %4, label %5, label %6, !dbg !4324

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4325
  unreachable, !dbg !4325

6:                                                ; preds = %2
  ret i8* %3, !dbg !4326
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4331, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %1, metadata !4332, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %1, metadata !4027, metadata !DIExpression()) #34, !dbg !4334
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4336
  call void @llvm.dbg.value(metadata i8* %3, metadata !4003, metadata !DIExpression()) #34, !dbg !4337
  %4 = icmp eq i8* %3, null, !dbg !4339
  br i1 %4, label %5, label %6, !dbg !4340

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4341
  unreachable, !dbg !4341

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4342, metadata !DIExpression()) #34, !dbg !4350
  call void @llvm.dbg.value(metadata i8* %0, metadata !4348, metadata !DIExpression()) #34, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()) #34, !dbg !4350
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4352
  ret i8* %3, !dbg !4353
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4354 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4358, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %1, metadata !4359, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()) #34, !dbg !4361
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()) #34, !dbg !4363
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %3, metadata !4003, metadata !DIExpression()) #34, !dbg !4366
  %4 = icmp eq i8* %3, null, !dbg !4368
  br i1 %4, label %5, label %6, !dbg !4369

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4370
  unreachable, !dbg !4370

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4342, metadata !DIExpression()) #34, !dbg !4371
  call void @llvm.dbg.value(metadata i8* %0, metadata !4348, metadata !DIExpression()) #34, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()) #34, !dbg !4371
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4373
  ret i8* %3, !dbg !4374
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4379, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %1, metadata !4380, metadata !DIExpression()), !dbg !4382
  %3 = add nsw i64 %1, 1, !dbg !4383
  call void @llvm.dbg.value(metadata i64 %3, metadata !4040, metadata !DIExpression()) #34, !dbg !4384
  call void @llvm.dbg.value(metadata i64 %3, metadata !4042, metadata !DIExpression()) #34, !dbg !4386
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4388
  call void @llvm.dbg.value(metadata i8* %4, metadata !4003, metadata !DIExpression()) #34, !dbg !4389
  %5 = icmp eq i8* %4, null, !dbg !4391
  br i1 %5, label %6, label %7, !dbg !4392

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4393
  unreachable, !dbg !4393

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4381, metadata !DIExpression()), !dbg !4382
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4394
  store i8 0, i8* %8, align 1, !dbg !4395, !tbaa !652
  call void @llvm.dbg.value(metadata i8* %4, metadata !4342, metadata !DIExpression()) #34, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %0, metadata !4348, metadata !DIExpression()) #34, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()) #34, !dbg !4396
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4398
  ret i8* %4, !dbg !4399
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4400 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4402, metadata !DIExpression()), !dbg !4403
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !4404
  %3 = add i64 %2, 1, !dbg !4405
  call void @llvm.dbg.value(metadata i8* %0, metadata !4331, metadata !DIExpression()) #34, !dbg !4406
  call void @llvm.dbg.value(metadata i64 %3, metadata !4332, metadata !DIExpression()) #34, !dbg !4406
  call void @llvm.dbg.value(metadata i64 %3, metadata !4027, metadata !DIExpression()) #34, !dbg !4408
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4410
  call void @llvm.dbg.value(metadata i8* %4, metadata !4003, metadata !DIExpression()) #34, !dbg !4411
  %5 = icmp eq i8* %4, null, !dbg !4413
  br i1 %5, label %6, label %7, !dbg !4414

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4415
  unreachable, !dbg !4415

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4342, metadata !DIExpression()) #34, !dbg !4416
  call void @llvm.dbg.value(metadata i8* %0, metadata !4348, metadata !DIExpression()) #34, !dbg !4416
  call void @llvm.dbg.value(metadata i64 %3, metadata !4349, metadata !DIExpression()) #34, !dbg !4416
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !4418
  ret i8* %4, !dbg !4419
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4420 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4425, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %1, metadata !4422, metadata !DIExpression()), !dbg !4426
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.137, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.138, i64 0, i64 0), i32 noundef 5) #34, !dbg !4425
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* noundef %2) #34, !dbg !4425
  %3 = icmp eq i32 %1, 0, !dbg !4425
  tail call void @llvm.assume(i1 %3), !dbg !4425
  tail call void @abort() #36, !dbg !4427
  unreachable, !dbg !4427
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #12 !dbg !4428 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4433, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %1, metadata !4434, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %2, metadata !4435, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %3, metadata !4436, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i8* %4, metadata !4437, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i8* %5, metadata !4438, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %6, metadata !4439, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %7, metadata !4440, metadata !DIExpression()), !dbg !4450
  %10 = bitcast i64* %9 to i8*, !dbg !4451
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !4451
  call void @llvm.dbg.value(metadata i64* %9, metadata !4441, metadata !DIExpression(DW_OP_deref)), !dbg !4450
  %11 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef %1, i64* noundef nonnull %9, i8* noundef %4) #34, !dbg !4452
  call void @llvm.dbg.value(metadata i32 %11, metadata !4443, metadata !DIExpression()), !dbg !4450
  %12 = icmp eq i32 %11, 4, !dbg !4453
  br i1 %12, label %41, label %13, !dbg !4455

13:                                               ; preds = %8
  %14 = load i64, i64* %9, align 8, !dbg !4456, !tbaa !3276
  call void @llvm.dbg.value(metadata i64 %14, metadata !4441, metadata !DIExpression()), !dbg !4450
  %15 = icmp ult i64 %14, %2, !dbg !4459
  br i1 %15, label %16, label %21, !dbg !4460

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %2, metadata !4442, metadata !DIExpression()), !dbg !4450
  %17 = and i32 %7, 4, !dbg !4461
  %18 = icmp eq i32 %17, 0, !dbg !4463
  %19 = select i1 %18, i32 75, i32 34, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %19, metadata !4445, metadata !DIExpression()), !dbg !4450
  %20 = icmp eq i32 %11, 0, !dbg !4464
  call void @llvm.dbg.value(metadata i32 undef, metadata !4443, metadata !DIExpression()), !dbg !4450
  br i1 %20, label %34, label %28, !dbg !4466

21:                                               ; preds = %13
  %22 = icmp ugt i64 %14, %3, !dbg !4467
  br i1 %22, label %23, label %28, !dbg !4469

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %3, metadata !4442, metadata !DIExpression()), !dbg !4450
  %24 = and i32 %7, 8, !dbg !4470
  %25 = icmp eq i32 %24, 0, !dbg !4472
  %26 = select i1 %25, i32 75, i32 34, !dbg !4472
  call void @llvm.dbg.value(metadata i32 %26, metadata !4445, metadata !DIExpression()), !dbg !4450
  %27 = icmp eq i32 %11, 0, !dbg !4473
  call void @llvm.dbg.value(metadata i32 undef, metadata !4443, metadata !DIExpression()), !dbg !4450
  br i1 %27, label %34, label %28, !dbg !4475

28:                                               ; preds = %23, %16, %21
  %29 = phi i32 [ %19, %16 ], [ %26, %23 ], [ 75, %21 ]
  %30 = phi i64 [ %2, %16 ], [ %3, %23 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !4442, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %11, metadata !4443, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %29, metadata !4445, metadata !DIExpression()), !dbg !4450
  %31 = icmp eq i32 %11, 1, !dbg !4476
  %32 = select i1 %31, i32 %29, i32 0, !dbg !4477
  call void @llvm.dbg.value(metadata i32 %32, metadata !4446, metadata !DIExpression()), !dbg !4450
  %33 = icmp eq i32 %11, 0, !dbg !4478
  br i1 %33, label %46, label %34, !dbg !4479

34:                                               ; preds = %16, %23, %28
  %35 = phi i32 [ %32, %28 ], [ %26, %23 ], [ %19, %16 ]
  %36 = phi i1 [ %31, %28 ], [ true, %23 ], [ true, %16 ]
  %37 = phi i64 [ %30, %28 ], [ %3, %23 ], [ %2, %16 ]
  %38 = and i32 %7, 2
  %39 = icmp ne i32 %38, 0
  %40 = and i1 %39, %36, !dbg !4480
  call void @llvm.dbg.value(metadata i64 undef, metadata !4441, metadata !DIExpression()), !dbg !4450
  br i1 %40, label %46, label %41, !dbg !4480

41:                                               ; preds = %8, %34
  %42 = phi i32 [ %35, %34 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !4481
  %44 = select i1 %43, i32 1, i32 %6, !dbg !4481
  %45 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !4482
  call void (i32, i32, i8*, ...) @error(i32 noundef %44, i32 noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef %45) #34, !dbg !4482
  unreachable, !dbg !4482

46:                                               ; preds = %34, %28
  %47 = phi i32 [ %35, %34 ], [ %32, %28 ]
  %48 = phi i64 [ %37, %34 ], [ %30, %28 ]
  %49 = tail call i32* @__errno_location() #37, !dbg !4483
  store i32 %47, i32* %49, align 4, !dbg !4484, !tbaa !643
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !4485
  ret i64 %48, !dbg !4486
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) local_unnamed_addr #12 !dbg !4487 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4491, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %2, metadata !4493, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %3, metadata !4494, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %4, metadata !4495, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i32 %5, metadata !4496, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %0, metadata !4433, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i32 10, metadata !4434, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %1, metadata !4435, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %2, metadata !4436, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i8* %3, metadata !4437, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i8* %4, metadata !4438, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i32 %5, metadata !4439, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i32 0, metadata !4440, metadata !DIExpression()) #34, !dbg !4498
  %8 = bitcast i64* %7 to i8*, !dbg !4500
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #34, !dbg !4500
  call void @llvm.dbg.value(metadata i64* %7, metadata !4441, metadata !DIExpression(DW_OP_deref)) #34, !dbg !4498
  %9 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef %3) #34, !dbg !4501
  call void @llvm.dbg.value(metadata i32 %9, metadata !4443, metadata !DIExpression()) #34, !dbg !4498
  %10 = icmp eq i32 %9, 4, !dbg !4502
  br i1 %10, label %25, label %11, !dbg !4503

11:                                               ; preds = %6
  %12 = load i64, i64* %7, align 8, !dbg !4504, !tbaa !3276
  call void @llvm.dbg.value(metadata i64 %12, metadata !4441, metadata !DIExpression()) #34, !dbg !4498
  %13 = icmp ult i64 %12, %1, !dbg !4505
  br i1 %13, label %14, label %16, !dbg !4506

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %1, metadata !4442, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i32 75, metadata !4445, metadata !DIExpression()) #34, !dbg !4498
  %15 = icmp eq i32 %9, 0, !dbg !4507
  call void @llvm.dbg.value(metadata i32 undef, metadata !4443, metadata !DIExpression()) #34, !dbg !4498
  br i1 %15, label %25, label %20, !dbg !4508

16:                                               ; preds = %11
  %17 = icmp ugt i64 %12, %2, !dbg !4509
  br i1 %17, label %18, label %20, !dbg !4510

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 %2, metadata !4442, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i32 75, metadata !4445, metadata !DIExpression()) #34, !dbg !4498
  %19 = icmp eq i32 %9, 0, !dbg !4511
  call void @llvm.dbg.value(metadata i32 undef, metadata !4443, metadata !DIExpression()) #34, !dbg !4498
  br i1 %19, label %25, label %20, !dbg !4512

20:                                               ; preds = %18, %16, %14
  %21 = phi i64 [ %1, %14 ], [ %2, %18 ], [ %12, %16 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !4442, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i32 %9, metadata !4443, metadata !DIExpression()) #34, !dbg !4498
  call void @llvm.dbg.value(metadata i32 75, metadata !4445, metadata !DIExpression()) #34, !dbg !4498
  %22 = icmp eq i32 %9, 1, !dbg !4513
  %23 = select i1 %22, i32 75, i32 0, !dbg !4514
  call void @llvm.dbg.value(metadata i32 %23, metadata !4446, metadata !DIExpression()) #34, !dbg !4498
  %24 = icmp eq i32 %9, 0, !dbg !4515
  br i1 %24, label %30, label %25, !dbg !4516

25:                                               ; preds = %14, %18, %20, %6
  %26 = phi i32 [ 0, %6 ], [ %23, %20 ], [ 75, %18 ], [ 75, %14 ]
  %27 = icmp eq i32 %5, 0, !dbg !4517
  %28 = select i1 %27, i32 1, i32 %5, !dbg !4517
  %29 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !4518
  call void (i32, i32, i8*, ...) @error(i32 noundef %28, i32 noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i64 0, i64 0), i8* noundef nonnull %4, i8* noundef %29) #34, !dbg !4518
  unreachable, !dbg !4518

30:                                               ; preds = %20
  %31 = tail call i32* @__errno_location() #37, !dbg !4519
  store i32 %23, i32* %31, align 4, !dbg !4520, !tbaa !643
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #34, !dbg !4521
  ret i64 %21, !dbg !4522
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 !dbg !4523 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4529, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i8** %1, metadata !4530, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 %2, metadata !4531, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64* %3, metadata !4532, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i8* %4, metadata !4533, metadata !DIExpression()), !dbg !4547
  %7 = bitcast i8** %6 to i8*, !dbg !4548
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4548
  %8 = icmp eq i8** %1, null, !dbg !4549
  call void @llvm.dbg.value(metadata i8** %21, metadata !4535, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i8* %0, metadata !4536, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i8 undef, metadata !4539, metadata !DIExpression()), !dbg !4550
  %9 = tail call i16** @__ctype_b_loc() #37, !dbg !4547
  %10 = load i16*, i16** %9, align 8, !tbaa !544
  br label %11, !dbg !4551

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ], !dbg !4550
  %13 = load i8, i8* %12, align 1, !dbg !4550, !tbaa !652
  call void @llvm.dbg.value(metadata i8 %13, metadata !4539, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i8* %12, metadata !4536, metadata !DIExpression()), !dbg !4550
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14, !dbg !4552
  %16 = load i16, i16* %15, align 2, !dbg !4552, !tbaa !677
  %17 = and i16 %16, 8192, !dbg !4552
  %18 = icmp eq i16 %17, 0, !dbg !4551
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4553
  call void @llvm.dbg.value(metadata i8* %19, metadata !4536, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i8 undef, metadata !4539, metadata !DIExpression()), !dbg !4550
  br i1 %18, label %20, label %11, !dbg !4551, !llvm.loop !4554

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1, !dbg !4549
  %22 = icmp eq i8 %13, 45, !dbg !4556
  br i1 %22, label %23, label %24, !dbg !4558

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !dbg !4559, !tbaa !544
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #37, !dbg !4561
  store i32 0, i32* %25, align 4, !dbg !4562, !tbaa !643
  %26 = call i64 @strtoumax(i8* noundef %0, i8** noundef %21, i32 noundef %2) #34, !dbg !4563
  call void @llvm.dbg.value(metadata i64 %26, metadata !4540, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 0, metadata !4541, metadata !DIExpression()), !dbg !4547
  %27 = load i8*, i8** %21, align 8, !dbg !4564, !tbaa !544
  %28 = icmp eq i8* %27, %0, !dbg !4566
  br i1 %28, label %29, label %38, !dbg !4567

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null, !dbg !4568
  br i1 %30, label %387, label %31, !dbg !4571

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !dbg !4572, !tbaa !652
  %33 = icmp eq i8 %32, 0, !dbg !4572
  br i1 %33, label %387, label %34, !dbg !4573

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32, !dbg !4572
  %36 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #35, !dbg !4574
  %37 = icmp eq i8* %36, null, !dbg !4574
  br i1 %37, label %387, label %45, !dbg !4575

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !dbg !4576, !tbaa !643
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ], !dbg !4578

40:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 1, metadata !4541, metadata !DIExpression()), !dbg !4547
  br label %41, !dbg !4579

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ], !dbg !4547
  call void @llvm.dbg.value(metadata i32 %42, metadata !4541, metadata !DIExpression()), !dbg !4547
  %43 = icmp eq i8* %4, null, !dbg !4581
  br i1 %43, label %44, label %45, !dbg !4583

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %26, metadata !4540, metadata !DIExpression()), !dbg !4547
  store i64 %26, i64* %3, align 8, !dbg !4584, !tbaa !3276
  br label %387, !dbg !4586

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !dbg !4587, !tbaa !652
  %49 = icmp eq i8 %48, 0, !dbg !4588
  br i1 %49, label %384, label %50, !dbg !4589

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32, !dbg !4587
  %52 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #35, !dbg !4590
  %53 = icmp eq i8* %52, null, !dbg !4590
  br i1 %53, label %54, label %56, !dbg !4592

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %26, metadata !4540, metadata !DIExpression()), !dbg !4547
  store i64 %47, i64* %3, align 8, !dbg !4593, !tbaa !3276
  %55 = or i32 %46, 2, !dbg !4595
  br label %387, !dbg !4596

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !4542, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i32 1, metadata !4545, metadata !DIExpression()), !dbg !4597
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
  ], !dbg !4598

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #35, !dbg !4599
  %59 = icmp eq i8* %58, null, !dbg !4599
  br i1 %59, label %69, label %60, !dbg !4602

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !4603
  %62 = load i8, i8* %61, align 1, !dbg !4603, !tbaa !652
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ], !dbg !4604

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !4605
  %65 = load i8, i8* %64, align 1, !dbg !4605, !tbaa !652
  %66 = icmp eq i8 %65, 66, !dbg !4608
  %67 = select i1 %66, i64 3, i64 1, !dbg !4609
  br label %69, !dbg !4609

68:                                               ; preds = %60, %60
  call void @llvm.dbg.value(metadata i32 1000, metadata !4542, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i32 2, metadata !4545, metadata !DIExpression()), !dbg !4597
  br label %69, !dbg !4610

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4545, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i32 undef, metadata !4542, metadata !DIExpression()), !dbg !4597
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
  ], !dbg !4611

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4630
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4632
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !4632
  %75 = mul i64 %47, %70, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %75, metadata !4629, metadata !DIExpression()) #34, !dbg !4630
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !4630
  call void @llvm.dbg.value(metadata i1 %74, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %74, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4630
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #34, !dbg !4632
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4632
  %79 = mul i64 %76, %70, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %79, metadata !4629, metadata !DIExpression()) #34, !dbg !4630
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !4630
  %81 = or i1 %74, %78, !dbg !4634
  call void @llvm.dbg.value(metadata i1 %81, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %81, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4630
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #34, !dbg !4632
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !4632
  %84 = mul i64 %80, %70, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %84, metadata !4629, metadata !DIExpression()) #34, !dbg !4630
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !4630
  %86 = or i1 %81, %83, !dbg !4634
  call void @llvm.dbg.value(metadata i1 %86, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %86, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4630
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #34, !dbg !4632
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !4632
  %89 = mul i64 %85, %70, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %89, metadata !4629, metadata !DIExpression()) #34, !dbg !4630
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !4630
  %91 = or i1 %86, %88, !dbg !4634
  call void @llvm.dbg.value(metadata i1 %91, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %91, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4630
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #34, !dbg !4632
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !4632
  %94 = mul i64 %90, %70, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %94, metadata !4629, metadata !DIExpression()) #34, !dbg !4630
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !4630
  %96 = or i1 %91, %93, !dbg !4634
  call void @llvm.dbg.value(metadata i1 %96, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %96, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4630
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #34, !dbg !4632
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !4632
  %99 = mul i64 %95, %70, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %99, metadata !4629, metadata !DIExpression()) #34, !dbg !4630
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4630
  %101 = or i1 %96, %98, !dbg !4634
  call void @llvm.dbg.value(metadata i1 %101, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %101, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4630
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #34, !dbg !4632
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !4632
  %104 = mul i64 %100, %70, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %104, metadata !4629, metadata !DIExpression()) #34, !dbg !4630
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !4630
  %106 = or i1 %101, %103, !dbg !4634
  %107 = zext i1 %106 to i32, !dbg !4634
  call void @llvm.dbg.value(metadata i32 %107, metadata !4612, metadata !DIExpression()) #34, !dbg !4620
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4620
  br label %373, !dbg !4635

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 8, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4640
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4640
  %111 = mul i64 %47, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %111, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4638
  call void @llvm.dbg.value(metadata i1 %110, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %110, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #34, !dbg !4640
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4640
  %115 = mul i64 %112, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %115, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4638
  %117 = or i1 %110, %114, !dbg !4641
  call void @llvm.dbg.value(metadata i1 %117, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %117, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #34, !dbg !4640
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4640
  %120 = mul i64 %116, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %120, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4638
  %122 = or i1 %117, %119, !dbg !4641
  call void @llvm.dbg.value(metadata i1 %122, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %122, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #34, !dbg !4640
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4640
  %125 = mul i64 %121, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %125, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4638
  %127 = or i1 %122, %124, !dbg !4641
  call void @llvm.dbg.value(metadata i1 %127, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %127, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #34, !dbg !4640
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4640
  %130 = mul i64 %126, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %130, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4638
  %132 = or i1 %127, %129, !dbg !4641
  call void @llvm.dbg.value(metadata i1 %132, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %132, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #34, !dbg !4640
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4640
  %135 = mul i64 %131, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %135, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4638
  %137 = or i1 %132, %134, !dbg !4641
  call void @llvm.dbg.value(metadata i1 %137, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %137, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #34, !dbg !4640
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4640
  %140 = mul i64 %136, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %140, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4638
  %142 = or i1 %137, %139, !dbg !4641
  call void @llvm.dbg.value(metadata i1 %142, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %142, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4638
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4638
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #34, !dbg !4640
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4640
  %145 = mul i64 %141, %70, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %145, metadata !4629, metadata !DIExpression()) #34, !dbg !4638
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4638
  %147 = or i1 %142, %144, !dbg !4641
  %148 = zext i1 %147 to i32, !dbg !4641
  call void @llvm.dbg.value(metadata i32 %148, metadata !4612, metadata !DIExpression()) #34, !dbg !4636
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4636
  br label %373, !dbg !4635

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 9, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 8, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4646
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4646
  %152 = mul i64 %47, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %152, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4644
  call void @llvm.dbg.value(metadata i1 %151, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 8, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %151, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 8, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #34, !dbg !4646
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4646
  %156 = mul i64 %153, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %156, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4644
  %158 = or i1 %151, %155, !dbg !4647
  call void @llvm.dbg.value(metadata i1 %158, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %158, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #34, !dbg !4646
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4646
  %161 = mul i64 %157, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %161, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4644
  %163 = or i1 %158, %160, !dbg !4647
  call void @llvm.dbg.value(metadata i1 %163, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %163, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #34, !dbg !4646
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4646
  %166 = mul i64 %162, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %166, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4644
  %168 = or i1 %163, %165, !dbg !4647
  call void @llvm.dbg.value(metadata i1 %168, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %168, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #34, !dbg !4646
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4646
  %171 = mul i64 %167, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %171, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4644
  %173 = or i1 %168, %170, !dbg !4647
  call void @llvm.dbg.value(metadata i1 %173, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %173, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #34, !dbg !4646
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4646
  %176 = mul i64 %172, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %176, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4644
  %178 = or i1 %173, %175, !dbg !4647
  call void @llvm.dbg.value(metadata i1 %178, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %178, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #34, !dbg !4646
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4646
  %181 = mul i64 %177, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %181, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4644
  %183 = or i1 %178, %180, !dbg !4647
  call void @llvm.dbg.value(metadata i1 %183, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %183, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #34, !dbg !4646
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4646
  %186 = mul i64 %182, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %186, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4644
  %188 = or i1 %183, %185, !dbg !4647
  call void @llvm.dbg.value(metadata i1 %188, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %188, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4644
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4644
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #34, !dbg !4646
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4646
  %191 = mul i64 %187, %70, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %191, metadata !4629, metadata !DIExpression()) #34, !dbg !4644
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4644
  %193 = or i1 %188, %190, !dbg !4647
  %194 = zext i1 %193 to i32, !dbg !4647
  call void @llvm.dbg.value(metadata i32 %194, metadata !4612, metadata !DIExpression()) #34, !dbg !4642
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4642
  br label %373, !dbg !4635

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 10, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 9, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4652
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4652
  %198 = mul i64 %47, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %198, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4650
  call void @llvm.dbg.value(metadata i1 %197, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 9, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %197, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 9, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 8, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #34, !dbg !4652
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4652
  %202 = mul i64 %199, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %202, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4650
  %204 = or i1 %197, %201, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %204, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 8, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %204, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 8, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #34, !dbg !4652
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4652
  %207 = mul i64 %203, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %207, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4650
  %209 = or i1 %204, %206, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %209, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %209, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 7, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #34, !dbg !4652
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4652
  %212 = mul i64 %208, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %212, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4650
  %214 = or i1 %209, %211, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %214, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %214, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #34, !dbg !4652
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4652
  %217 = mul i64 %213, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %217, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4650
  %219 = or i1 %214, %216, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %219, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %219, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #34, !dbg !4652
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4652
  %222 = mul i64 %218, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %222, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4650
  %224 = or i1 %219, %221, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %224, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %224, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #34, !dbg !4652
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4652
  %227 = mul i64 %223, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %227, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4650
  %229 = or i1 %224, %226, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %229, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %229, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #34, !dbg !4652
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4652
  %232 = mul i64 %228, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %232, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4650
  %234 = or i1 %229, %231, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %234, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %234, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #34, !dbg !4652
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4652
  %237 = mul i64 %233, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %237, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4650
  %239 = or i1 %234, %236, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %239, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i1 %239, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4650
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4650
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #34, !dbg !4652
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4652
  %242 = mul i64 %238, %70, !dbg !4652
  call void @llvm.dbg.value(metadata i64 %242, metadata !4629, metadata !DIExpression()) #34, !dbg !4650
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4650
  %244 = or i1 %239, %241, !dbg !4653
  %245 = zext i1 %244 to i32, !dbg !4653
  call void @llvm.dbg.value(metadata i32 %245, metadata !4612, metadata !DIExpression()) #34, !dbg !4648
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4648
  br label %373, !dbg !4635

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4656
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4656
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4658
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4658
  %249 = mul i64 %47, %70, !dbg !4658
  call void @llvm.dbg.value(metadata i64 %249, metadata !4629, metadata !DIExpression()) #34, !dbg !4656
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4656
  call void @llvm.dbg.value(metadata i1 %248, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i1 %248, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4656
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4656
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #34, !dbg !4658
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4658
  %253 = mul i64 %250, %70, !dbg !4658
  call void @llvm.dbg.value(metadata i64 %253, metadata !4629, metadata !DIExpression()) #34, !dbg !4656
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4656
  %255 = or i1 %248, %252, !dbg !4659
  call void @llvm.dbg.value(metadata i1 %255, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i1 %255, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4656
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4656
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #34, !dbg !4658
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4658
  %258 = mul i64 %254, %70, !dbg !4658
  call void @llvm.dbg.value(metadata i64 %258, metadata !4629, metadata !DIExpression()) #34, !dbg !4656
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4656
  %260 = or i1 %255, %257, !dbg !4659
  call void @llvm.dbg.value(metadata i1 %260, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i1 %260, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4656
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4656
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #34, !dbg !4658
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4658
  %263 = mul i64 %259, %70, !dbg !4658
  call void @llvm.dbg.value(metadata i64 %263, metadata !4629, metadata !DIExpression()) #34, !dbg !4656
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4656
  %265 = or i1 %260, %262, !dbg !4659
  call void @llvm.dbg.value(metadata i1 %265, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i1 %265, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4656
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4656
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #34, !dbg !4658
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4658
  %268 = mul i64 %264, %70, !dbg !4658
  call void @llvm.dbg.value(metadata i64 %268, metadata !4629, metadata !DIExpression()) #34, !dbg !4656
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4656
  %270 = or i1 %265, %267, !dbg !4659
  %271 = zext i1 %270 to i32, !dbg !4659
  call void @llvm.dbg.value(metadata i32 %271, metadata !4612, metadata !DIExpression()) #34, !dbg !4654
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4654
  br label %373, !dbg !4635

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 6, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4662
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4662
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4664
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4664
  %275 = mul i64 %47, %70, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %275, metadata !4629, metadata !DIExpression()) #34, !dbg !4662
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4662
  call void @llvm.dbg.value(metadata i1 %274, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i1 %274, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 5, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4662
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4662
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #34, !dbg !4664
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4664
  %279 = mul i64 %276, %70, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %279, metadata !4629, metadata !DIExpression()) #34, !dbg !4662
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4662
  %281 = or i1 %274, %278, !dbg !4665
  call void @llvm.dbg.value(metadata i1 %281, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i1 %281, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4662
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4662
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #34, !dbg !4664
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4664
  %284 = mul i64 %280, %70, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %284, metadata !4629, metadata !DIExpression()) #34, !dbg !4662
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4662
  %286 = or i1 %281, %283, !dbg !4665
  call void @llvm.dbg.value(metadata i1 %286, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i1 %286, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4662
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4662
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #34, !dbg !4664
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4664
  %289 = mul i64 %285, %70, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %289, metadata !4629, metadata !DIExpression()) #34, !dbg !4662
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4662
  %291 = or i1 %286, %288, !dbg !4665
  call void @llvm.dbg.value(metadata i1 %291, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i1 %291, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4662
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4662
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #34, !dbg !4664
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4664
  %294 = mul i64 %290, %70, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %294, metadata !4629, metadata !DIExpression()) #34, !dbg !4662
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4662
  %296 = or i1 %291, %293, !dbg !4665
  call void @llvm.dbg.value(metadata i1 %296, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i1 %296, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4662
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4662
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #34, !dbg !4664
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4664
  %299 = mul i64 %295, %70, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %299, metadata !4629, metadata !DIExpression()) #34, !dbg !4662
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4662
  %301 = or i1 %296, %298, !dbg !4665
  %302 = zext i1 %301 to i32, !dbg !4665
  call void @llvm.dbg.value(metadata i32 %302, metadata !4612, metadata !DIExpression()) #34, !dbg !4660
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4660
  br label %373, !dbg !4635

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4666
  call void @llvm.dbg.value(metadata i32 512, metadata !4628, metadata !DIExpression()) #34, !dbg !4666
  %304 = icmp ugt i64 %47, 36028797018963967, !dbg !4668
  %305 = shl i64 %47, 9, !dbg !4668
  call void @llvm.dbg.value(metadata i64 %305, metadata !4629, metadata !DIExpression()) #34, !dbg !4666
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4666
  %307 = zext i1 %304 to i32, !dbg !4666
  call void @llvm.dbg.value(metadata i32 %307, metadata !4546, metadata !DIExpression()), !dbg !4597
  br label %373, !dbg !4669

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4670
  call void @llvm.dbg.value(metadata i32 1024, metadata !4628, metadata !DIExpression()) #34, !dbg !4670
  %309 = icmp ugt i64 %47, 18014398509481983, !dbg !4672
  %310 = shl i64 %47, 10, !dbg !4672
  call void @llvm.dbg.value(metadata i64 %310, metadata !4629, metadata !DIExpression()) #34, !dbg !4670
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4670
  %312 = zext i1 %309 to i32, !dbg !4670
  call void @llvm.dbg.value(metadata i32 %312, metadata !4546, metadata !DIExpression()), !dbg !4597
  br label %373, !dbg !4673

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4617, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 undef, metadata !4618, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4676
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4676
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4678
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4678
  %316 = mul i64 %47, %70, !dbg !4678
  call void @llvm.dbg.value(metadata i64 %316, metadata !4629, metadata !DIExpression()) #34, !dbg !4676
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4676
  call void @llvm.dbg.value(metadata i1 %315, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i1 %315, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4676
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4676
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #34, !dbg !4678
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4678
  %320 = mul i64 %317, %70, !dbg !4678
  call void @llvm.dbg.value(metadata i64 %320, metadata !4629, metadata !DIExpression()) #34, !dbg !4676
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4676
  %322 = or i1 %315, %319, !dbg !4679
  call void @llvm.dbg.value(metadata i1 %322, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i1 %322, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4676
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4676
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #34, !dbg !4678
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4678
  %325 = mul i64 %321, %70, !dbg !4678
  call void @llvm.dbg.value(metadata i64 %325, metadata !4629, metadata !DIExpression()) #34, !dbg !4676
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4676
  %327 = or i1 %322, %324, !dbg !4679
  %328 = zext i1 %327 to i32, !dbg !4679
  call void @llvm.dbg.value(metadata i32 %328, metadata !4612, metadata !DIExpression()) #34, !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4674
  br label %373, !dbg !4635

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4617, metadata !DIExpression()) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i32 undef, metadata !4618, metadata !DIExpression()) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i32 undef, metadata !4619, metadata !DIExpression()) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i32 undef, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4682
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4682
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4684
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4684
  %332 = mul i64 %47, %70, !dbg !4684
  call void @llvm.dbg.value(metadata i64 %332, metadata !4629, metadata !DIExpression()) #34, !dbg !4682
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4682
  %334 = zext i1 %331 to i32, !dbg !4682
  call void @llvm.dbg.value(metadata i32 %334, metadata !4612, metadata !DIExpression()) #34, !dbg !4680
  call void @llvm.dbg.value(metadata i32 undef, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4680
  br label %373, !dbg !4635

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4617, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 undef, metadata !4618, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4687
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4687
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4689
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4689
  %338 = mul i64 %47, %70, !dbg !4689
  call void @llvm.dbg.value(metadata i64 %338, metadata !4629, metadata !DIExpression()) #34, !dbg !4687
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4687
  call void @llvm.dbg.value(metadata i1 %337, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i1 %337, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4687
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4687
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #34, !dbg !4689
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4689
  %342 = mul i64 %339, %70, !dbg !4689
  call void @llvm.dbg.value(metadata i64 %342, metadata !4629, metadata !DIExpression()) #34, !dbg !4687
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4687
  %344 = or i1 %337, %341, !dbg !4690
  %345 = zext i1 %344 to i32, !dbg !4690
  call void @llvm.dbg.value(metadata i32 %345, metadata !4612, metadata !DIExpression()) #34, !dbg !4685
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4685
  br label %373, !dbg !4635

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4617, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 undef, metadata !4618, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 4, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4693
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4693
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #34, !dbg !4695
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4695
  %349 = mul i64 %47, %70, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %349, metadata !4629, metadata !DIExpression()) #34, !dbg !4693
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4693
  call void @llvm.dbg.value(metadata i1 %348, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i1 %348, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 3, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4693
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4693
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #34, !dbg !4695
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4695
  %353 = mul i64 %350, %70, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %353, metadata !4629, metadata !DIExpression()) #34, !dbg !4693
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4693
  %355 = or i1 %348, %352, !dbg !4696
  call void @llvm.dbg.value(metadata i1 %355, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i1 %355, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 2, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4693
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4693
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #34, !dbg !4695
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4695
  %358 = mul i64 %354, %70, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %358, metadata !4629, metadata !DIExpression()) #34, !dbg !4693
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4693
  %360 = or i1 %355, %357, !dbg !4696
  call void @llvm.dbg.value(metadata i1 %360, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i1 %360, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 1, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4693
  call void @llvm.dbg.value(metadata i32 undef, metadata !4628, metadata !DIExpression()) #34, !dbg !4693
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #34, !dbg !4695
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4695
  %363 = mul i64 %359, %70, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %363, metadata !4629, metadata !DIExpression()) #34, !dbg !4693
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4693
  %365 = or i1 %360, %362, !dbg !4696
  %366 = zext i1 %365 to i32, !dbg !4696
  call void @llvm.dbg.value(metadata i32 %366, metadata !4612, metadata !DIExpression()) #34, !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !4691
  br label %373, !dbg !4635

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !4623, metadata !DIExpression()) #34, !dbg !4697
  call void @llvm.dbg.value(metadata i32 2, metadata !4628, metadata !DIExpression()) #34, !dbg !4697
  %368 = shl i64 %47, 1, !dbg !4699
  call void @llvm.dbg.value(metadata i64 %368, metadata !4629, metadata !DIExpression()) #34, !dbg !4697
  %369 = icmp sgt i64 %47, -1, !dbg !4697
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4697
  %371 = lshr i64 %47, 63, !dbg !4697
  %372 = trunc i64 %371 to i32, !dbg !4697
  call void @llvm.dbg.value(metadata i32 %372, metadata !4546, metadata !DIExpression()), !dbg !4597
  br label %373, !dbg !4700

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !4547
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4701
  call void @llvm.dbg.value(metadata i32 %375, metadata !4546, metadata !DIExpression()), !dbg !4597
  %376 = or i32 %375, %46, !dbg !4635
  call void @llvm.dbg.value(metadata i32 %376, metadata !4541, metadata !DIExpression()), !dbg !4547
  %377 = getelementptr inbounds i8, i8* %27, i64 %71, !dbg !4702
  store i8* %377, i8** %21, align 8, !dbg !4702, !tbaa !544
  %378 = load i8, i8* %377, align 1, !dbg !4703, !tbaa !652
  %379 = icmp eq i8 %378, 0, !dbg !4703
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4705
  call void @llvm.dbg.value(metadata i32 %46, metadata !4541, metadata !DIExpression()), !dbg !4547
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %26, metadata !4540, metadata !DIExpression()), !dbg !4547
  store i64 %47, i64* %3, align 8, !dbg !4706, !tbaa !3276
  %383 = or i32 %46, 2, !dbg !4707
  call void @llvm.dbg.value(metadata i32 %46, metadata !4541, metadata !DIExpression()), !dbg !4547
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ], !dbg !4708
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ], !dbg !4709
  call void @llvm.dbg.value(metadata i32 %386, metadata !4541, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %385, metadata !4540, metadata !DIExpression()), !dbg !4547
  store i64 %385, i64* %3, align 8, !dbg !4710, !tbaa !3276
  br label %387, !dbg !4711

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ], !dbg !4547
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4712
  ret i32 %388, !dbg !4712
}

; Function Attrs: nounwind
declare !dbg !4713 i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4718 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4756, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i8* %1, metadata !4757, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i32 0, metadata !4758, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i32 0, metadata !4759, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i8 0, metadata !4760, metadata !DIExpression()), !dbg !4780
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4781
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4781
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4761, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i8* %1, metadata !4765, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i8* %4, metadata !4767, metadata !DIExpression()), !dbg !4783
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4784

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4783
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4785
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4780
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4786
  call void @llvm.dbg.value(metadata i32 %11, metadata !4758, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i32 %10, metadata !4759, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i8* %9, metadata !4767, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i8* %8, metadata !4765, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i8 poison, metadata !4760, metadata !DIExpression()), !dbg !4780
  %12 = load i8, i8* %8, align 1, !dbg !4787, !tbaa !652
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4788

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4758, metadata !DIExpression()), !dbg !4780
  %14 = icmp ult i8* %9, %5, !dbg !4789
  br i1 %14, label %15, label %47, !dbg !4792

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4793
  call void @llvm.dbg.value(metadata i8* %16, metadata !4767, metadata !DIExpression()), !dbg !4783
  store i8 114, i8* %9, align 1, !dbg !4794, !tbaa !652
  br label %47, !dbg !4795

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4758, metadata !DIExpression()), !dbg !4780
  %18 = or i32 %10, 576, !dbg !4796
  call void @llvm.dbg.value(metadata i32 %18, metadata !4759, metadata !DIExpression()), !dbg !4780
  %19 = icmp ult i8* %9, %5, !dbg !4797
  br i1 %19, label %20, label %47, !dbg !4799

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4800
  call void @llvm.dbg.value(metadata i8* %21, metadata !4767, metadata !DIExpression()), !dbg !4783
  store i8 119, i8* %9, align 1, !dbg !4801, !tbaa !652
  br label %47, !dbg !4802

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4758, metadata !DIExpression()), !dbg !4780
  %23 = or i32 %10, 1088, !dbg !4803
  call void @llvm.dbg.value(metadata i32 %23, metadata !4759, metadata !DIExpression()), !dbg !4780
  %24 = icmp ult i8* %9, %5, !dbg !4804
  br i1 %24, label %25, label %47, !dbg !4806

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4807
  call void @llvm.dbg.value(metadata i8* %26, metadata !4767, metadata !DIExpression()), !dbg !4783
  store i8 97, i8* %9, align 1, !dbg !4808, !tbaa !652
  br label %47, !dbg !4809

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4759, metadata !DIExpression()), !dbg !4780
  %28 = icmp ult i8* %9, %5, !dbg !4810
  br i1 %28, label %29, label %47, !dbg !4812

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4813
  call void @llvm.dbg.value(metadata i8* %30, metadata !4767, metadata !DIExpression()), !dbg !4783
  store i8 98, i8* %9, align 1, !dbg !4814, !tbaa !652
  br label %47, !dbg !4815

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4758, metadata !DIExpression()), !dbg !4780
  %32 = icmp ult i8* %9, %5, !dbg !4816
  br i1 %32, label %33, label %47, !dbg !4818

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4819
  call void @llvm.dbg.value(metadata i8* %34, metadata !4767, metadata !DIExpression()), !dbg !4783
  store i8 43, i8* %9, align 1, !dbg !4820, !tbaa !652
  br label %47, !dbg !4821

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4822
  call void @llvm.dbg.value(metadata i32 %36, metadata !4759, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i8 1, metadata !4760, metadata !DIExpression()), !dbg !4780
  br label %47, !dbg !4823

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4824
  call void @llvm.dbg.value(metadata i32 %38, metadata !4759, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i8 1, metadata !4760, metadata !DIExpression()), !dbg !4780
  br label %47, !dbg !4825

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #35, !dbg !4826
  call void @llvm.dbg.value(metadata i64 %40, metadata !4768, metadata !DIExpression()), !dbg !4827
  %41 = ptrtoint i8* %5 to i64, !dbg !4828
  %42 = ptrtoint i8* %9 to i64, !dbg !4828
  %43 = sub i64 %41, %42, !dbg !4828
  %44 = icmp ugt i64 %40, %43, !dbg !4830
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4831
  call void @llvm.dbg.value(metadata i64 %45, metadata !4768, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i8* %9, metadata !4832, metadata !DIExpression()) #34, !dbg !4837
  call void @llvm.dbg.value(metadata i8* %8, metadata !4835, metadata !DIExpression()) #34, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %45, metadata !4836, metadata !DIExpression()) #34, !dbg !4837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #34, !dbg !4839
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4840
  call void @llvm.dbg.value(metadata i8* %46, metadata !4767, metadata !DIExpression()), !dbg !4783
  br label %53, !dbg !4841

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4783
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4780
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4780
  call void @llvm.dbg.value(metadata i32 %51, metadata !4758, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i32 %50, metadata !4759, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i8* %49, metadata !4767, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i8 poison, metadata !4760, metadata !DIExpression()), !dbg !4780
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4842
  call void @llvm.dbg.value(metadata i8* %52, metadata !4765, metadata !DIExpression()), !dbg !4783
  br label %6, !dbg !4843, !llvm.loop !4844

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4783
  call void @llvm.dbg.value(metadata i8* %54, metadata !4767, metadata !DIExpression()), !dbg !4783
  store i8 0, i8* %54, align 1, !dbg !4846, !tbaa !652
  br i1 %7, label %55, label %66, !dbg !4847

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4848
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #34, !dbg !4849
  call void @llvm.dbg.value(metadata i32 %57, metadata !4773, metadata !DIExpression()), !dbg !4850
  %58 = icmp slt i32 %57, 0, !dbg !4851
  br i1 %58, label %68, label %59, !dbg !4853

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #34, !dbg !4854
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4776, metadata !DIExpression()), !dbg !4850
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4855
  br i1 %61, label %62, label %68, !dbg !4856

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #37, !dbg !4857
  %64 = load i32, i32* %63, align 4, !dbg !4857, !tbaa !643
  call void @llvm.dbg.value(metadata i32 %64, metadata !4777, metadata !DIExpression()), !dbg !4858
  %65 = call i32 @close(i32 noundef %57) #34, !dbg !4859
  store i32 %64, i32* %63, align 4, !dbg !4860, !tbaa !643
  br label %68, !dbg !4861

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4862, metadata !DIExpression()) #34, !dbg !4866
  call void @llvm.dbg.value(metadata i8* %1, metadata !4865, metadata !DIExpression()) #34, !dbg !4866
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #34, !dbg !4868
  br label %68, !dbg !4869

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4780
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4870
  ret %struct._IO_FILE* %69, !dbg !4870
}

; Function Attrs: nofree
declare !dbg !4871 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare !dbg !4874 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4877 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4878 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4916, metadata !DIExpression()), !dbg !4921
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !4922
  call void @llvm.dbg.value(metadata i1 undef, metadata !4917, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4921
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4923, metadata !DIExpression()), !dbg !4926
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4928
  %4 = load i32, i32* %3, align 8, !dbg !4928, !tbaa !1245
  %5 = and i32 %4, 32, !dbg !4929
  %6 = icmp eq i32 %5, 0, !dbg !4929
  call void @llvm.dbg.value(metadata i1 %6, metadata !4919, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4921
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !4930
  %8 = icmp eq i32 %7, 0, !dbg !4931
  call void @llvm.dbg.value(metadata i1 %8, metadata !4920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4921
  br i1 %6, label %9, label %19, !dbg !4932

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4934
  call void @llvm.dbg.value(metadata i1 %10, metadata !4917, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4921
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4935
  %12 = xor i1 %8, true, !dbg !4935
  %13 = sext i1 %12 to i32, !dbg !4935
  br i1 %11, label %22, label %14, !dbg !4935

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !4936
  %16 = load i32, i32* %15, align 4, !dbg !4936, !tbaa !643
  %17 = icmp ne i32 %16, 9, !dbg !4937
  %18 = sext i1 %17 to i32, !dbg !4938
  br label %22, !dbg !4938

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4939

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !4941
  store i32 0, i32* %21, align 4, !dbg !4943, !tbaa !643
  br label %22, !dbg !4941

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4921
  ret i32 %23, !dbg !4944
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4945 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4950, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i8* %1, metadata !4951, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i64 %2, metadata !4952, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4953, metadata !DIExpression()), !dbg !4955
  %5 = icmp eq i8* %1, null, !dbg !4956
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4958
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %1, !dbg !4958
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4958
  call void @llvm.dbg.value(metadata i64 %8, metadata !4952, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i8* %7, metadata !4951, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i32* %6, metadata !4950, metadata !DIExpression()), !dbg !4955
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4959
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4961
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4953, metadata !DIExpression()), !dbg !4955
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !4962
  call void @llvm.dbg.value(metadata i64 %11, metadata !4954, metadata !DIExpression()), !dbg !4955
  %12 = icmp ult i64 %11, -3, !dbg !4963
  br i1 %12, label %13, label %18, !dbg !4965

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !4966
  %15 = icmp eq i32 %14, 0, !dbg !4966
  br i1 %15, label %16, label %30, !dbg !4967

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4968, metadata !DIExpression()) #34, !dbg !4973
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4975, metadata !DIExpression()) #34, !dbg !4980
  call void @llvm.dbg.value(metadata i32 0, metadata !4978, metadata !DIExpression()) #34, !dbg !4980
  call void @llvm.dbg.value(metadata i64 8, metadata !4979, metadata !DIExpression()) #34, !dbg !4980
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4982
  store i64 0, i64* %17, align 1, !dbg !4982
  br label %30, !dbg !4983

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4984
  br i1 %19, label %20, label %21, !dbg !4986

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !4987
  unreachable, !dbg !4987

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4988

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !4990
  br i1 %24, label %30, label %25, !dbg !4991

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4992
  br i1 %26, label %30, label %27, !dbg !4995

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4996, !tbaa !652
  %29 = zext i8 %28 to i32, !dbg !4997
  store i32 %29, i32* %6, align 4, !dbg !4998, !tbaa !643
  br label %30, !dbg !4999

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4955
  ret i64 %31, !dbg !5000
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !5001 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !5007 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5009, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i64 %1, metadata !5010, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i64 %2, metadata !5011, metadata !DIExpression()), !dbg !5013
  %4 = icmp eq i64 %2, 0, !dbg !5014
  br i1 %4, label %8, label %5, !dbg !5014

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5014
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5014
  br i1 %7, label %13, label %8, !dbg !5014

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5012, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5013
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5012, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5013
  %9 = mul i64 %2, %1, !dbg !5014
  call void @llvm.dbg.value(metadata i64 %9, metadata !5012, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i8* %0, metadata !5016, metadata !DIExpression()) #34, !dbg !5020
  call void @llvm.dbg.value(metadata i64 %9, metadata !5019, metadata !DIExpression()) #34, !dbg !5020
  %10 = icmp eq i64 %9, 0, !dbg !5022
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5022
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !5023
  br label %15, !dbg !5024

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5012, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5013
  %14 = tail call i32* @__errno_location() #37, !dbg !5025
  store i32 12, i32* %14, align 4, !dbg !5027, !tbaa !643
  br label %15, !dbg !5028

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !5013
  ret i8* %16, !dbg !5029
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !5030 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5032, metadata !DIExpression()), !dbg !5037
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5038
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !5038
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5033, metadata !DIExpression()), !dbg !5039
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !5040
  %5 = icmp eq i32 %4, 0, !dbg !5040
  br i1 %5, label %6, label %13, !dbg !5042

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !5043, metadata !DIExpression()) #34, !dbg !5047
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), metadata !5046, metadata !DIExpression()) #34, !dbg !5047
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), i64 2), !dbg !5050
  %8 = icmp eq i32 %7, 0, !dbg !5051
  br i1 %8, label %12, label %9, !dbg !5052

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !5043, metadata !DIExpression()) #34, !dbg !5053
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), metadata !5046, metadata !DIExpression()) #34, !dbg !5053
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i64 6), !dbg !5055
  %11 = icmp eq i32 %10, 0, !dbg !5056
  br i1 %11, label %12, label %13, !dbg !5057

12:                                               ; preds = %9, %6
  br label %13, !dbg !5058

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !5037
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !5059
  ret i1 %14, !dbg !5059
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !5060 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5064, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i8* %1, metadata !5065, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i64 %2, metadata !5066, metadata !DIExpression()), !dbg !5067
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !5068
  ret i32 %4, !dbg !5069
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !5070 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5074, metadata !DIExpression()), !dbg !5075
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !5076
  ret i8* %2, !dbg !5077
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !5078 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5080, metadata !DIExpression()), !dbg !5082
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !5083
  call void @llvm.dbg.value(metadata i8* %2, metadata !5081, metadata !DIExpression()), !dbg !5082
  ret i8* %2, !dbg !5084
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !5085 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5087, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i8* %1, metadata !5088, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i64 %2, metadata !5089, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 %0, metadata !5080, metadata !DIExpression()) #34, !dbg !5095
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !5097
  call void @llvm.dbg.value(metadata i8* %4, metadata !5081, metadata !DIExpression()) #34, !dbg !5095
  call void @llvm.dbg.value(metadata i8* %4, metadata !5090, metadata !DIExpression()), !dbg !5094
  %5 = icmp eq i8* %4, null, !dbg !5098
  br i1 %5, label %6, label %9, !dbg !5099

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5100
  br i1 %7, label %19, label %8, !dbg !5103

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5104, !tbaa !652
  br label %19, !dbg !5105

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !5106
  call void @llvm.dbg.value(metadata i64 %10, metadata !5091, metadata !DIExpression()), !dbg !5107
  %11 = icmp ult i64 %10, %2, !dbg !5108
  br i1 %11, label %12, label %14, !dbg !5110

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5111
  call void @llvm.dbg.value(metadata i8* %1, metadata !5113, metadata !DIExpression()) #34, !dbg !5118
  call void @llvm.dbg.value(metadata i8* %4, metadata !5116, metadata !DIExpression()) #34, !dbg !5118
  call void @llvm.dbg.value(metadata i64 %13, metadata !5117, metadata !DIExpression()) #34, !dbg !5118
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !5120
  br label %19, !dbg !5121

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5122
  br i1 %15, label %19, label %16, !dbg !5125

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5126
  call void @llvm.dbg.value(metadata i8* %1, metadata !5113, metadata !DIExpression()) #34, !dbg !5128
  call void @llvm.dbg.value(metadata i8* %4, metadata !5116, metadata !DIExpression()) #34, !dbg !5128
  call void @llvm.dbg.value(metadata i64 %17, metadata !5117, metadata !DIExpression()) #34, !dbg !5128
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !5130
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5131
  store i8 0, i8* %18, align 1, !dbg !5132, !tbaa !652
  br label %19, !dbg !5133

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5134
  ret i32 %20, !dbg !5135
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
attributes #13 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
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

!llvm.dbg.cu = !{!2, !238, !243, !250, !414, !434, !437, !439, !442, !444, !446, !291, !301, !333, !448, !406, !454, !488, !490, !501, !508, !510, !420, !512, !515, !517, !519}
!llvm.ident = !{!521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521}
!llvm.module.flags = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 317, type: !219, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fmt.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eb1a2f812a56a354a71cb409e5b398fe")
!4 = !{!5, !13, !27, !42}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!10 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!11 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!12 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !14, line: 42, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 46, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!30 = !DIEnumerator(name: "_ISupper", value: 256)
!31 = !DIEnumerator(name: "_ISlower", value: 512)
!32 = !DIEnumerator(name: "_ISalpha", value: 1024)
!33 = !DIEnumerator(name: "_ISdigit", value: 2048)
!34 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!35 = !DIEnumerator(name: "_ISspace", value: 8192)
!36 = !DIEnumerator(name: "_ISprint", value: 16384)
!37 = !DIEnumerator(name: "_ISgraph", value: 32768)
!38 = !DIEnumerator(name: "_ISblank", value: 1)
!39 = !DIEnumerator(name: "_IScntrl", value: 2)
!40 = !DIEnumerator(name: "_ISpunct", value: 4)
!41 = !DIEnumerator(name: "_ISalnum", value: 8)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 44, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!46 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!47 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!48 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!49 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!50 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!51 = !{!52, !54, !55, !56, !57, !60, !62, !63, !64}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "COST", file: !3, line: 63, baseType: !65)
!65 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!66 = !{!67, !70, !72, !74, !76, !78, !0, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !196, !198, !217}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "crown", scope: !2, file: !3, line: 173, type: !69, isLocal: true, isDefinition: true)
!69 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "tagged", scope: !2, file: !3, line: 176, type: !69, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "split", scope: !2, file: !3, line: 179, type: !69, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "uniform", scope: !2, file: !3, line: 182, type: !69, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "goal_width", scope: !2, file: !3, line: 203, type: !55, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !80, file: !81, line: 575, type: !55, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "oputs_", scope: !81, file: !81, line: 573, type: !82, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!81 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!82 = !DISubroutineType(types: !83)
!83 = !{null, !60, !60}
!84 = !{!85, !86, !87, !90, !91, !92, !93, !97, !98, !99, !100, !102, !157, !158, !159, !161, !162}
!85 = !DILocalVariable(name: "program", arg: 1, scope: !80, file: !81, line: 573, type: !60)
!86 = !DILocalVariable(name: "option", arg: 2, scope: !80, file: !81, line: 573, type: !60)
!87 = !DILocalVariable(name: "term", scope: !88, file: !81, line: 585, type: !60)
!88 = distinct !DILexicalBlock(scope: !89, file: !81, line: 582, column: 5)
!89 = distinct !DILexicalBlock(scope: !80, file: !81, line: 581, column: 7)
!90 = !DILocalVariable(name: "double_space", scope: !80, file: !81, line: 594, type: !69)
!91 = !DILocalVariable(name: "first_word", scope: !80, file: !81, line: 595, type: !60)
!92 = !DILocalVariable(name: "option_text", scope: !80, file: !81, line: 596, type: !60)
!93 = !DILocalVariable(name: "s", scope: !94, file: !81, line: 608, type: !60)
!94 = distinct !DILexicalBlock(scope: !95, file: !81, line: 605, column: 5)
!95 = distinct !DILexicalBlock(scope: !96, file: !81, line: 604, column: 12)
!96 = distinct !DILexicalBlock(scope: !80, file: !81, line: 597, column: 7)
!97 = !DILocalVariable(name: "spaces", scope: !94, file: !81, line: 609, type: !57)
!98 = !DILocalVariable(name: "anchor_len", scope: !80, file: !81, line: 620, type: !57)
!99 = !DILocalVariable(name: "desc_text", scope: !80, file: !81, line: 625, type: !60)
!100 = !DILocalVariable(name: "__ptr", scope: !101, file: !81, line: 644, type: !60)
!101 = distinct !DILexicalBlock(scope: !80, file: !81, line: 644, column: 3)
!102 = !DILocalVariable(name: "__stream", scope: !101, file: !81, line: 644, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !106)
!105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !108)
!107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !124, !126, !127, !128, !131, !132, !134, !138, !141, !143, !146, !149, !150, !151, !152, !153}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !106, file: !107, line: 51, baseType: !55, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !106, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !106, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !106, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !106, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !106, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !106, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !106, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !106, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !106, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !106, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !106, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !106, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !107, line: 36, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !106, file: !107, line: 70, baseType: !125, size: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !106, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !106, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !106, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !130, line: 152, baseType: !65)
!130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !106, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !106, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!133 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !106, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 1)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !106, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !107, line: 43, baseType: null)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !106, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !130, line: 153, baseType: !65)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !106, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !107, line: 37, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !106, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !107, line: 38, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !106, file: !107, line: 93, baseType: !125, size: 64, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !106, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !106, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !106, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !106, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 20)
!157 = !DILocalVariable(name: "__cnt", scope: !101, file: !81, line: 644, type: !57)
!158 = !DILocalVariable(name: "url_program", scope: !80, file: !81, line: 648, type: !60)
!159 = !DILocalVariable(name: "__ptr", scope: !160, file: !81, line: 686, type: !60)
!160 = distinct !DILexicalBlock(scope: !80, file: !81, line: 686, column: 3)
!161 = !DILocalVariable(name: "__stream", scope: !160, file: !81, line: 686, type: !103)
!162 = !DILocalVariable(name: "__cnt", scope: !160, file: !81, line: 686, type: !57)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "max_width", scope: !2, file: !3, line: 189, type: !55, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "prefix_lead_space", scope: !2, file: !3, line: 197, type: !55, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 185, type: !60, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "prefix_full_length", scope: !2, file: !3, line: 194, type: !55, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "prefix_length", scope: !2, file: !3, line: 200, type: !55, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "tabs", scope: !2, file: !3, line: 231, type: !69, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "other_indent", scope: !2, file: !3, line: 240, type: !55, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "in_column", scope: !2, file: !3, line: 208, type: !55, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "next_prefix_indent", scope: !2, file: !3, line: 254, type: !55, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "next_char", scope: !2, file: !3, line: 250, type: !55, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "last_line_length", scope: !2, file: !3, line: 259, type: !55, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "out_column", scope: !2, file: !3, line: 211, type: !55, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "prefix_indent", scope: !2, file: !3, line: 234, type: !55, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "first_indent", scope: !2, file: !3, line: 237, type: !55, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "parabuf", scope: !2, file: !3, line: 215, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 40000, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 5000)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "wptr", scope: !2, file: !3, line: 218, type: !52, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "unused_word_type", scope: !2, file: !3, line: 222, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 320000, elements: !215)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !3, line: 128, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Word", file: !3, line: 130, size: 320, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !202, file: !3, line: 135, baseType: !60, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !202, file: !3, line: 136, baseType: !55, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !202, file: !3, line: 137, baseType: !55, size: 32, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "paren", scope: !202, file: !3, line: 138, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !202, file: !3, line: 139, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !202, file: !3, line: 140, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !202, file: !3, line: 141, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !202, file: !3, line: 145, baseType: !55, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "best_cost", scope: !202, file: !3, line: 146, baseType: !64, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next_break", scope: !202, file: !3, line: 147, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!215 = !{!216}
!216 = !DISubrange(count: 1000)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "word_limit", scope: !2, file: !3, line: 227, type: !214, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2560, elements: !229)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !222, line: 50, size: 256, elements: !223)
!222 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!223 = !{!224, !225, !226, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !222, line: 52, baseType: !60, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !221, file: !222, line: 55, baseType: !55, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !221, file: !222, line: 56, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !221, file: !222, line: 57, baseType: !55, size: 32, offset: 192)
!229 = !{!230}
!230 = !DISubrange(count: 10)
!231 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!232 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!233 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!234 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!235 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "Version", scope: !238, file: !239, line: 3, type: !60, isLocal: false, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !240, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!240 = !{!236}
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "file_name", scope: !243, file: !244, line: 45, type: !60, isLocal: true, isDefinition: true)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !245, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!245 = !{!241, !246}
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !243, file: !244, line: 55, type: !69, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !250, file: !251, line: 66, type: !286, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !252, globals: !253, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!252 = !{!54, !62}
!253 = !{!254, !280, !248, !282, !284}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "old_file_name", scope: !256, file: !251, line: 304, type: !60, isLocal: true, isDefinition: true)
!256 = distinct !DISubprogram(name: "verror_at_line", scope: !251, file: !251, line: 298, type: !257, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !273)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !55, !55, !60, !7, !60, !259}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !260, line: 52, baseType: !261)
!260 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !262, line: 32, baseType: !263)
!262 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !264, baseType: !265)
!264 = !DIFile(filename: "lib/error.c", directory: "/src")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !266, size: 256, elements: !267)
!266 = !DINamespace(name: "std", scope: null)
!267 = !{!268, !269, !270, !271, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !265, file: !264, baseType: !54, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !265, file: !264, baseType: !54, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !265, file: !264, baseType: !54, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !265, file: !264, baseType: !55, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !265, file: !264, baseType: !55, size: 32, offset: 224)
!273 = !{!274, !275, !276, !277, !278, !279}
!274 = !DILocalVariable(name: "status", arg: 1, scope: !256, file: !251, line: 298, type: !55)
!275 = !DILocalVariable(name: "errnum", arg: 2, scope: !256, file: !251, line: 298, type: !55)
!276 = !DILocalVariable(name: "file_name", arg: 3, scope: !256, file: !251, line: 298, type: !60)
!277 = !DILocalVariable(name: "line_number", arg: 4, scope: !256, file: !251, line: 298, type: !7)
!278 = !DILocalVariable(name: "message", arg: 5, scope: !256, file: !251, line: 298, type: !60)
!279 = !DILocalVariable(name: "args", arg: 6, scope: !256, file: !251, line: 298, type: !259)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "old_line_number", scope: !256, file: !251, line: 305, type: !7, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "error_message_count", scope: !250, file: !251, line: 69, type: !7, isLocal: false, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !250, file: !251, line: 295, type: !55, isLocal: false, isDefinition: true)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null}
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "program_name", scope: !291, file: !292, line: 31, type: !60, isLocal: false, isDefinition: true)
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !293, globals: !294, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!293 = !{!52}
!294 = !{!289}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "utf07FF", scope: !297, file: !298, line: 46, type: !328, isLocal: true, isDefinition: true)
!297 = distinct !DISubprogram(name: "proper_name_lite", scope: !298, file: !298, line: 38, type: !299, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !301, retainedNodes: !303)
!298 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!299 = !DISubroutineType(types: !300)
!300 = !{!60, !60, !60}
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !302, splitDebugInlining: false, nameTableKind: None)
!302 = !{!295}
!303 = !{!304, !305, !306, !307, !312}
!304 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !297, file: !298, line: 38, type: !60)
!305 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !297, file: !298, line: 38, type: !60)
!306 = !DILocalVariable(name: "translation", scope: !297, file: !298, line: 40, type: !60)
!307 = !DILocalVariable(name: "w", scope: !297, file: !298, line: 47, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !309, line: 37, baseType: !310)
!309 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !130, line: 57, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !130, line: 42, baseType: !7)
!312 = !DILocalVariable(name: "mbs", scope: !297, file: !298, line: 48, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !314, line: 6, baseType: !315)
!314 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !316, line: 21, baseType: !317)
!316 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 13, size: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !317, file: !316, line: 15, baseType: !55, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !317, file: !316, line: 20, baseType: !321, size: 32, offset: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !316, line: 16, size: 32, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !321, file: !316, line: 18, baseType: !7, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !321, file: !316, line: 19, baseType: !325, size: 32)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 4)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 16, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 2)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !333, file: !334, line: 76, type: !400, isLocal: false, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !335, retainedTypes: !341, globals: !342, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!335 = !{!13, !336, !27}
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !14, line: 254, baseType: !7, size: 32, elements: !337)
!337 = !{!338, !339, !340}
!338 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!339 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!340 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!341 = !{!55, !56, !57}
!342 = !{!331, !343, !347, !359, !361, !366, !389, !396, !398}
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !333, file: !334, line: 92, type: !345, isLocal: false, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 320, elements: !229)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !333, file: !334, line: 1040, type: !349, isLocal: false, isDefinition: true)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !334, line: 56, size: 448, elements: !350)
!350 = !{!351, !352, !353, !357, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !349, file: !334, line: 59, baseType: !13, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !334, line: 62, baseType: !55, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !349, file: !334, line: 66, baseType: !354, size: 256, offset: 64)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !349, file: !334, line: 69, baseType: !60, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !349, file: !334, line: 72, baseType: !60, size: 64, offset: 384)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !333, file: !334, line: 107, type: !349, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "slot0", scope: !333, file: !334, line: 831, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 256)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "quote", scope: !368, file: !334, line: 228, type: !387, isLocal: true, isDefinition: true)
!368 = distinct !DISubprogram(name: "gettext_quote", scope: !334, file: !334, line: 197, type: !369, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!60, !60, !13}
!371 = !{!372, !373, !374, !375, !376}
!372 = !DILocalVariable(name: "msgid", arg: 1, scope: !368, file: !334, line: 197, type: !60)
!373 = !DILocalVariable(name: "s", arg: 2, scope: !368, file: !334, line: 197, type: !13)
!374 = !DILocalVariable(name: "translation", scope: !368, file: !334, line: 199, type: !60)
!375 = !DILocalVariable(name: "w", scope: !368, file: !334, line: 229, type: !308)
!376 = !DILocalVariable(name: "mbs", scope: !368, file: !334, line: 230, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !314, line: 6, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !316, line: 21, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 13, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !379, file: !316, line: 15, baseType: !55, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !379, file: !316, line: 20, baseType: !383, size: 32, offset: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !316, line: 16, size: 32, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !383, file: !316, line: 18, baseType: !7, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !383, file: !316, line: 19, baseType: !325, size: 32)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !388)
!388 = !{!330, !327}
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "slotvec", scope: !333, file: !334, line: 834, type: !391, isLocal: true, isDefinition: true)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !334, line: 823, size: 128, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !392, file: !334, line: 825, baseType: !57, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !392, file: !334, line: 826, baseType: !52, size: 64, offset: 64)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "nslots", scope: !333, file: !334, line: 832, type: !55, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "slotvec0", scope: !333, file: !334, line: 833, type: !392, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 704, elements: !402)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!402 = !{!403}
!403 = !DISubrange(count: 11)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !406, file: !407, line: 26, type: !409, isLocal: false, isDefinition: true)
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !408, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!408 = !{!404}
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 376, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 47)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "exit_failure", scope: !414, file: !415, line: 24, type: !417, isLocal: false, isDefinition: true)
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !416, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!416 = !{!412}
!417 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "internal_state", scope: !420, file: !421, line: 97, type: !424, isLocal: true, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !422, globals: !423, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!422 = !{!54, !57, !62}
!423 = !{!418}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !314, line: 6, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !316, line: 21, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 13, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !426, file: !316, line: 15, baseType: !55, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !426, file: !316, line: 20, baseType: !430, size: 32, offset: 32)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !316, line: 16, size: 32, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !430, file: !316, line: 18, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !430, file: !316, line: 19, baseType: !325, size: 32)
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !436, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!436 = !{!42}
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !440, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !441, splitDebugInlining: false, nameTableKind: None)
!440 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!441 = !{!54}
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!444 = distinct !DICompileUnit(language: DW_LANG_C99, file: !445, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !441, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !450, retainedTypes: !441, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!450 = !{!451}
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 40, baseType: !7, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !456, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!456 = !{!457, !469}
!457 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !458, file: !455, line: 188, baseType: !7, size: 32, elements: !467)
!458 = distinct !DISubprogram(name: "x2nrealloc", scope: !455, file: !455, line: 176, type: !459, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !462)
!459 = !DISubroutineType(types: !460)
!460 = !{!54, !54, !461, !57}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(name: "p", arg: 1, scope: !458, file: !455, line: 176, type: !54)
!464 = !DILocalVariable(name: "pn", arg: 2, scope: !458, file: !455, line: 176, type: !461)
!465 = !DILocalVariable(name: "s", arg: 3, scope: !458, file: !455, line: 176, type: !57)
!466 = !DILocalVariable(name: "n", scope: !458, file: !455, line: 178, type: !57)
!467 = !{!468}
!468 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!469 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !470, file: !455, line: 228, baseType: !7, size: 32, elements: !467)
!470 = distinct !DISubprogram(name: "xpalloc", scope: !455, file: !455, line: 223, type: !471, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !477)
!471 = !DISubroutineType(types: !472)
!472 = !{!54, !54, !473, !474, !476, !474}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !475, line: 130, baseType: !476)
!475 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !58, line: 35, baseType: !65)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486}
!478 = !DILocalVariable(name: "pa", arg: 1, scope: !470, file: !455, line: 223, type: !54)
!479 = !DILocalVariable(name: "pn", arg: 2, scope: !470, file: !455, line: 223, type: !473)
!480 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !470, file: !455, line: 223, type: !474)
!481 = !DILocalVariable(name: "n_max", arg: 4, scope: !470, file: !455, line: 223, type: !476)
!482 = !DILocalVariable(name: "s", arg: 5, scope: !470, file: !455, line: 223, type: !474)
!483 = !DILocalVariable(name: "n0", scope: !470, file: !455, line: 230, type: !474)
!484 = !DILocalVariable(name: "n", scope: !470, file: !455, line: 237, type: !474)
!485 = !DILocalVariable(name: "nbytes", scope: !470, file: !455, line: 248, type: !474)
!486 = !DILocalVariable(name: "adjusted_nbytes", scope: !470, file: !455, line: 252, type: !474)
!487 = !{!52, !54, !69, !65, !59}
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !491, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !492, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!492 = !{!493, !5}
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !494, line: 30, baseType: !7, size: 32, elements: !495)
!494 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!495 = !{!496, !497, !498, !499, !500}
!496 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!497 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!498 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!499 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!500 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !503, retainedTypes: !504, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!503 = !{!493, !27}
!504 = !{!55, !56, !52, !69, !59, !505}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !506, line: 102, baseType: !507)
!506 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !130, line: 73, baseType: !59)
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !441, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!510 = distinct !DICompileUnit(language: DW_LANG_C99, file: !511, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!511 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !514, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!514 = !{!69, !59, !54}
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !441, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!521 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!522 = !{i32 7, !"Dwarf Version", i32 5}
!523 = !{i32 2, !"Debug Info Version", i32 3}
!524 = !{i32 1, !"wchar_size", i32 4}
!525 = !{i32 1, !"branch-target-enforcement", i32 0}
!526 = !{i32 1, !"sign-return-address", i32 0}
!527 = !{i32 1, !"sign-return-address-all", i32 0}
!528 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!529 = !{i32 7, !"PIC Level", i32 2}
!530 = !{i32 7, !"PIE Level", i32 2}
!531 = !{i32 7, !"uwtable", i32 1}
!532 = !{i32 7, !"frame-pointer", i32 1}
!533 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 262, type: !534, scopeLine: 263, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !55}
!536 = !{!537}
!537 = !DILocalVariable(name: "status", arg: 1, scope: !533, file: !3, line: 262, type: !55)
!538 = !DILocation(line: 0, scope: !533)
!539 = !DILocation(line: 264, column: 14, scope: !540)
!540 = distinct !DILexicalBlock(scope: !533, file: !3, line: 264, column: 7)
!541 = !DILocation(line: 264, column: 7, scope: !533)
!542 = !DILocation(line: 265, column: 5, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !3, line: 265, column: 5)
!544 = !{!545, !545, i64 0}
!545 = !{!"any pointer", !546, i64 0}
!546 = !{!"omnipotent char", !547, i64 0}
!547 = !{!"Simple C/C++ TBAA"}
!548 = !DILocation(line: 268, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !540, file: !3, line: 267, column: 5)
!550 = !DILocation(line: 269, column: 7, scope: !549)
!551 = !DILocation(line: 729, column: 3, scope: !552, inlinedAt: !554)
!552 = distinct !DISubprogram(name: "emit_stdin_note", scope: !81, file: !81, line: 727, type: !287, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!553 = !{}
!554 = distinct !DILocation(line: 274, column: 7, scope: !549)
!555 = !DILocation(line: 736, column: 3, scope: !556, inlinedAt: !557)
!556 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !81, file: !81, line: 734, type: !287, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!557 = distinct !DILocation(line: 275, column: 7, scope: !549)
!558 = !DILocation(line: 277, column: 7, scope: !549)
!559 = !DILocation(line: 281, column: 7, scope: !549)
!560 = !DILocation(line: 286, column: 7, scope: !549)
!561 = !DILocation(line: 290, column: 7, scope: !549)
!562 = !DILocation(line: 294, column: 7, scope: !549)
!563 = !DILocation(line: 298, column: 7, scope: !549)
!564 = !DILocation(line: 304, column: 7, scope: !549)
!565 = !DILocation(line: 308, column: 7, scope: !549)
!566 = !DILocation(line: 309, column: 7, scope: !549)
!567 = !DILocalVariable(name: "program", arg: 1, scope: !568, file: !81, line: 836, type: !60)
!568 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !81, file: !81, line: 836, type: !569, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !60}
!571 = !{!567, !572, !581, !582, !584, !585}
!572 = !DILocalVariable(name: "infomap", scope: !568, file: !81, line: 838, type: !573)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 896, elements: !579)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !568, file: !81, line: 838, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !575, file: !81, line: 838, baseType: !60, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !575, file: !81, line: 838, baseType: !60, size: 64, offset: 64)
!579 = !{!580}
!580 = !DISubrange(count: 7)
!581 = !DILocalVariable(name: "node", scope: !568, file: !81, line: 848, type: !60)
!582 = !DILocalVariable(name: "map_prog", scope: !568, file: !81, line: 849, type: !583)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!584 = !DILocalVariable(name: "lc_messages", scope: !568, file: !81, line: 861, type: !60)
!585 = !DILocalVariable(name: "url_program", scope: !568, file: !81, line: 874, type: !60)
!586 = !DILocation(line: 0, scope: !568, inlinedAt: !587)
!587 = distinct !DILocation(line: 310, column: 7, scope: !549)
!588 = !DILocation(line: 838, column: 3, scope: !568, inlinedAt: !587)
!589 = !DILocation(line: 838, column: 67, scope: !568, inlinedAt: !587)
!590 = !DILocation(line: 849, column: 36, scope: !568, inlinedAt: !587)
!591 = !DILocation(line: 851, column: 3, scope: !568, inlinedAt: !587)
!592 = !DILocalVariable(name: "__s1", arg: 1, scope: !593, file: !594, line: 1359, type: !60)
!593 = distinct !DISubprogram(name: "streq", scope: !594, file: !594, line: 1359, type: !595, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!594 = !DIFile(filename: "./lib/string.h", directory: "/src")
!595 = !DISubroutineType(types: !596)
!596 = !{!69, !60, !60}
!597 = !{!592, !598}
!598 = !DILocalVariable(name: "__s2", arg: 2, scope: !593, file: !594, line: 1359, type: !60)
!599 = !DILocation(line: 0, scope: !593, inlinedAt: !600)
!600 = distinct !DILocation(line: 851, column: 33, scope: !568, inlinedAt: !587)
!601 = !DILocation(line: 1361, column: 11, scope: !593, inlinedAt: !600)
!602 = !DILocation(line: 1361, column: 10, scope: !593, inlinedAt: !600)
!603 = !DILocation(line: 852, column: 13, scope: !568, inlinedAt: !587)
!604 = !DILocation(line: 851, column: 20, scope: !568, inlinedAt: !587)
!605 = !{!606, !545, i64 0}
!606 = !{!"infomap", !545, i64 0, !545, i64 8}
!607 = !DILocation(line: 851, column: 10, scope: !568, inlinedAt: !587)
!608 = !DILocation(line: 851, column: 28, scope: !568, inlinedAt: !587)
!609 = distinct !{!609, !591, !603, !610}
!610 = !{!"llvm.loop.mustprogress"}
!611 = !DILocation(line: 854, column: 17, scope: !612, inlinedAt: !587)
!612 = distinct !DILexicalBlock(scope: !568, file: !81, line: 854, column: 7)
!613 = !{!606, !545, i64 8}
!614 = !DILocation(line: 854, column: 7, scope: !612, inlinedAt: !587)
!615 = !DILocation(line: 854, column: 7, scope: !568, inlinedAt: !587)
!616 = !DILocation(line: 857, column: 3, scope: !568, inlinedAt: !587)
!617 = !DILocation(line: 861, column: 29, scope: !568, inlinedAt: !587)
!618 = !DILocation(line: 862, column: 7, scope: !619, inlinedAt: !587)
!619 = distinct !DILexicalBlock(scope: !568, file: !81, line: 862, column: 7)
!620 = !DILocation(line: 862, column: 19, scope: !619, inlinedAt: !587)
!621 = !DILocation(line: 862, column: 22, scope: !619, inlinedAt: !587)
!622 = !DILocation(line: 862, column: 7, scope: !568, inlinedAt: !587)
!623 = !DILocation(line: 868, column: 7, scope: !624, inlinedAt: !587)
!624 = distinct !DILexicalBlock(scope: !619, file: !81, line: 863, column: 5)
!625 = !DILocation(line: 870, column: 5, scope: !624, inlinedAt: !587)
!626 = !DILocation(line: 0, scope: !593, inlinedAt: !627)
!627 = distinct !DILocation(line: 874, column: 29, scope: !568, inlinedAt: !587)
!628 = !DILocation(line: 875, column: 3, scope: !568, inlinedAt: !587)
!629 = !DILocation(line: 877, column: 3, scope: !568, inlinedAt: !587)
!630 = !DILocation(line: 879, column: 1, scope: !568, inlinedAt: !587)
!631 = !DILocation(line: 312, column: 3, scope: !533)
!632 = !DISubprogram(name: "dcgettext", scope: !633, file: !633, line: 51, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!633 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!634 = !DISubroutineType(types: !635)
!635 = !{!52, !60, !60, !55}
!636 = !DISubprogram(name: "fputs_unlocked", scope: !260, file: !260, line: 691, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!637 = !DISubroutineType(types: !638)
!638 = !{!55, !639, !640}
!639 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!641 = !DILocation(line: 0, scope: !80)
!642 = !DILocation(line: 581, column: 7, scope: !89)
!643 = !{!644, !644, i64 0}
!644 = !{!"int", !546, i64 0}
!645 = !DILocation(line: 581, column: 19, scope: !89)
!646 = !DILocation(line: 581, column: 7, scope: !80)
!647 = !DILocation(line: 585, column: 26, scope: !88)
!648 = !DILocation(line: 0, scope: !88)
!649 = !DILocation(line: 586, column: 23, scope: !88)
!650 = !DILocation(line: 586, column: 28, scope: !88)
!651 = !DILocation(line: 586, column: 32, scope: !88)
!652 = !{!546, !546, i64 0}
!653 = !DILocation(line: 586, column: 38, scope: !88)
!654 = !DILocation(line: 0, scope: !593, inlinedAt: !655)
!655 = distinct !DILocation(line: 586, column: 41, scope: !88)
!656 = !DILocation(line: 1361, column: 11, scope: !593, inlinedAt: !655)
!657 = !DILocation(line: 1361, column: 10, scope: !593, inlinedAt: !655)
!658 = !DILocation(line: 586, column: 19, scope: !88)
!659 = !DILocation(line: 587, column: 5, scope: !88)
!660 = !DILocation(line: 588, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !80, file: !81, line: 588, column: 7)
!662 = !DILocation(line: 588, column: 7, scope: !80)
!663 = !DILocation(line: 590, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !81, line: 589, column: 5)
!665 = !DILocation(line: 591, column: 7, scope: !664)
!666 = !DILocation(line: 595, column: 37, scope: !80)
!667 = !DILocation(line: 595, column: 35, scope: !80)
!668 = !DILocation(line: 596, column: 29, scope: !80)
!669 = !DILocation(line: 597, column: 8, scope: !96)
!670 = !DILocation(line: 597, column: 7, scope: !80)
!671 = !DILocation(line: 604, column: 24, scope: !95)
!672 = !DILocation(line: 604, column: 12, scope: !96)
!673 = !DILocation(line: 0, scope: !94)
!674 = !DILocation(line: 610, column: 16, scope: !94)
!675 = !DILocation(line: 610, column: 7, scope: !94)
!676 = !DILocation(line: 611, column: 21, scope: !94)
!677 = !{!678, !678, i64 0}
!678 = !{!"short", !546, i64 0}
!679 = !DILocation(line: 611, column: 19, scope: !94)
!680 = !DILocation(line: 611, column: 16, scope: !94)
!681 = !DILocation(line: 610, column: 30, scope: !94)
!682 = distinct !{!682, !675, !676, !610}
!683 = !DILocation(line: 612, column: 18, scope: !684)
!684 = distinct !DILexicalBlock(scope: !94, file: !81, line: 612, column: 11)
!685 = !DILocation(line: 612, column: 11, scope: !94)
!686 = !DILocation(line: 620, column: 23, scope: !80)
!687 = !DILocation(line: 625, column: 39, scope: !80)
!688 = !DILocation(line: 626, column: 3, scope: !80)
!689 = !DILocation(line: 626, column: 10, scope: !80)
!690 = !DILocation(line: 626, column: 21, scope: !80)
!691 = !DILocation(line: 628, column: 44, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !81, line: 628, column: 11)
!693 = distinct !DILexicalBlock(scope: !80, file: !81, line: 627, column: 5)
!694 = !DILocation(line: 628, column: 32, scope: !692)
!695 = !DILocation(line: 628, column: 49, scope: !692)
!696 = !DILocation(line: 628, column: 11, scope: !693)
!697 = !DILocation(line: 630, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !81, line: 630, column: 11)
!699 = !DILocation(line: 630, column: 11, scope: !693)
!700 = !DILocation(line: 632, column: 26, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !81, line: 632, column: 15)
!702 = distinct !DILexicalBlock(scope: !698, file: !81, line: 631, column: 9)
!703 = !DILocation(line: 632, column: 34, scope: !701)
!704 = !DILocation(line: 632, column: 37, scope: !701)
!705 = !DILocation(line: 632, column: 15, scope: !702)
!706 = !DILocation(line: 636, column: 29, scope: !707)
!707 = distinct !DILexicalBlock(scope: !702, file: !81, line: 636, column: 15)
!708 = !DILocation(line: 640, column: 16, scope: !693)
!709 = distinct !{!709, !688, !710, !610}
!710 = !DILocation(line: 641, column: 5, scope: !80)
!711 = !DILocation(line: 644, column: 3, scope: !80)
!712 = !DILocation(line: 0, scope: !593, inlinedAt: !713)
!713 = distinct !DILocation(line: 648, column: 31, scope: !80)
!714 = !DILocation(line: 0, scope: !593, inlinedAt: !715)
!715 = distinct !DILocation(line: 649, column: 31, scope: !80)
!716 = !DILocation(line: 0, scope: !593, inlinedAt: !717)
!717 = distinct !DILocation(line: 650, column: 31, scope: !80)
!718 = !DILocation(line: 0, scope: !593, inlinedAt: !719)
!719 = distinct !DILocation(line: 651, column: 31, scope: !80)
!720 = !DILocation(line: 0, scope: !593, inlinedAt: !721)
!721 = distinct !DILocation(line: 652, column: 31, scope: !80)
!722 = !DILocation(line: 0, scope: !593, inlinedAt: !723)
!723 = distinct !DILocation(line: 653, column: 31, scope: !80)
!724 = !DILocation(line: 0, scope: !593, inlinedAt: !725)
!725 = distinct !DILocation(line: 654, column: 31, scope: !80)
!726 = !DILocation(line: 0, scope: !593, inlinedAt: !727)
!727 = distinct !DILocation(line: 655, column: 31, scope: !80)
!728 = !DILocation(line: 0, scope: !593, inlinedAt: !729)
!729 = distinct !DILocation(line: 656, column: 31, scope: !80)
!730 = !DILocation(line: 0, scope: !593, inlinedAt: !731)
!731 = distinct !DILocation(line: 657, column: 31, scope: !80)
!732 = !DILocation(line: 663, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !80, file: !81, line: 663, column: 7)
!734 = !DILocation(line: 664, column: 7, scope: !733)
!735 = !DILocation(line: 664, column: 10, scope: !733)
!736 = !DILocation(line: 663, column: 7, scope: !80)
!737 = !DILocation(line: 669, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !733, file: !81, line: 665, column: 5)
!739 = !DILocation(line: 671, column: 5, scope: !738)
!740 = !DILocation(line: 676, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !733, file: !81, line: 673, column: 5)
!742 = !DILocation(line: 679, column: 3, scope: !80)
!743 = !DILocation(line: 683, column: 3, scope: !80)
!744 = !DILocation(line: 686, column: 3, scope: !80)
!745 = !DILocation(line: 688, column: 3, scope: !80)
!746 = !DILocation(line: 691, column: 3, scope: !80)
!747 = !DILocation(line: 695, column: 3, scope: !80)
!748 = !DILocation(line: 696, column: 1, scope: !80)
!749 = !DISubprogram(name: "setlocale", scope: !750, file: !750, line: 122, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!750 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!751 = !DISubroutineType(types: !752)
!752 = !{!52, !55, !60}
!753 = !DISubprogram(name: "getenv", scope: !754, file: !754, line: 641, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!754 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!755 = !DISubroutineType(types: !756)
!756 = !{!52, !60}
!757 = !DISubprogram(name: "fwrite_unlocked", scope: !260, file: !260, line: 704, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!758 = !DISubroutineType(types: !759)
!759 = !{!57, !760, !57, !57, !640}
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!763 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 332, type: !764, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !767)
!764 = !DISubroutineType(types: !765)
!765 = !{!55, !55, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !781}
!768 = !DILocalVariable(name: "argc", arg: 1, scope: !763, file: !3, line: 332, type: !55)
!769 = !DILocalVariable(name: "argv", arg: 2, scope: !763, file: !3, line: 332, type: !766)
!770 = !DILocalVariable(name: "optchar", scope: !763, file: !3, line: 334, type: !55)
!771 = !DILocalVariable(name: "ok", scope: !763, file: !3, line: 335, type: !69)
!772 = !DILocalVariable(name: "max_width_option", scope: !763, file: !3, line: 336, type: !60)
!773 = !DILocalVariable(name: "goal_width_option", scope: !763, file: !3, line: 337, type: !60)
!774 = !DILocalVariable(name: "have_read_stdin", scope: !763, file: !3, line: 425, type: !69)
!775 = !DILocalVariable(name: "file", scope: !776, file: !3, line: 436, type: !52)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 435, column: 9)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 434, column: 7)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 434, column: 7)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 433, column: 5)
!780 = distinct !DILexicalBlock(scope: !763, file: !3, line: 427, column: 7)
!781 = !DILocalVariable(name: "in_stream", scope: !782, file: !3, line: 444, type: !103)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 443, column: 13)
!783 = distinct !DILexicalBlock(scope: !776, file: !3, line: 437, column: 15)
!784 = !DILocation(line: 0, scope: !763)
!785 = !DILocation(line: 340, column: 21, scope: !763)
!786 = !DILocation(line: 340, column: 3, scope: !763)
!787 = !DILocation(line: 341, column: 3, scope: !763)
!788 = !DILocation(line: 342, column: 3, scope: !763)
!789 = !DILocation(line: 343, column: 3, scope: !763)
!790 = !DILocation(line: 345, column: 3, scope: !763)
!791 = !DILocation(line: 347, column: 12, scope: !792)
!792 = distinct !DILexicalBlock(scope: !763, file: !3, line: 347, column: 7)
!793 = !DILocation(line: 347, column: 16, scope: !792)
!794 = !DILocation(line: 347, column: 19, scope: !792)
!795 = !DILocation(line: 347, column: 30, scope: !792)
!796 = !DILocation(line: 347, column: 37, scope: !792)
!797 = !DILocation(line: 347, column: 51, scope: !792)
!798 = !DILocalVariable(name: "c", arg: 1, scope: !799, file: !800, line: 233, type: !55)
!799 = distinct !DISubprogram(name: "c_isdigit", scope: !800, file: !800, line: 233, type: !801, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!800 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!801 = !DISubroutineType(types: !802)
!802 = !{!69, !55}
!803 = !{!798}
!804 = !DILocation(line: 0, scope: !799, inlinedAt: !805)
!805 = distinct !DILocation(line: 347, column: 40, scope: !792)
!806 = !DILocation(line: 235, column: 3, scope: !799, inlinedAt: !805)
!807 = !DILocation(line: 347, column: 7, scope: !763)
!808 = !DILocation(line: 353, column: 17, scope: !809)
!809 = distinct !DILexicalBlock(scope: !792, file: !3, line: 348, column: 5)
!810 = !DILocation(line: 353, column: 15, scope: !809)
!811 = !DILocation(line: 355, column: 11, scope: !809)
!812 = !DILocation(line: 356, column: 5, scope: !809)
!813 = !DILocation(line: 358, column: 3, scope: !763)
!814 = !DILocation(line: 358, column: 21, scope: !763)
!815 = !DILocation(line: 0, scope: !799, inlinedAt: !816)
!816 = distinct !DILocation(line: 364, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 364, column: 13)
!818 = distinct !DILexicalBlock(scope: !763, file: !3, line: 362, column: 7)
!819 = !DILocation(line: 235, column: 3, scope: !799, inlinedAt: !816)
!820 = !DILocation(line: 364, column: 13, scope: !818)
!821 = !DILocation(line: 365, column: 11, scope: !817)
!822 = !DILocation(line: 368, column: 9, scope: !818)
!823 = !DILocation(line: 371, column: 15, scope: !818)
!824 = !DILocation(line: 372, column: 9, scope: !818)
!825 = !DILocation(line: 375, column: 15, scope: !818)
!826 = !DILocation(line: 376, column: 9, scope: !818)
!827 = !DILocation(line: 379, column: 16, scope: !818)
!828 = !DILocation(line: 380, column: 9, scope: !818)
!829 = !DILocation(line: 383, column: 17, scope: !818)
!830 = !DILocation(line: 384, column: 9, scope: !818)
!831 = !DILocation(line: 387, column: 28, scope: !818)
!832 = !DILocation(line: 388, column: 9, scope: !818)
!833 = distinct !{!833, !813, !834, !610}
!834 = !DILocation(line: 402, column: 7, scope: !763)
!835 = !DILocation(line: 391, column: 29, scope: !818)
!836 = !DILocation(line: 392, column: 9, scope: !818)
!837 = !DILocation(line: 395, column: 21, scope: !818)
!838 = !DILocalVariable(name: "p", arg: 1, scope: !839, file: !3, line: 468, type: !52)
!839 = distinct !DISubprogram(name: "set_prefix", scope: !3, file: !3, line: 468, type: !840, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !52}
!842 = !{!838, !843}
!843 = !DILocalVariable(name: "s", scope: !839, file: !3, line: 470, type: !52)
!844 = !DILocation(line: 0, scope: !839, inlinedAt: !845)
!845 = distinct !DILocation(line: 395, column: 9, scope: !818)
!846 = !DILocation(line: 472, column: 21, scope: !839, inlinedAt: !845)
!847 = !DILocation(line: 473, column: 10, scope: !839, inlinedAt: !845)
!848 = !DILocation(line: 473, column: 13, scope: !839, inlinedAt: !845)
!849 = !DILocation(line: 473, column: 3, scope: !839, inlinedAt: !845)
!850 = !DILocation(line: 475, column: 24, scope: !851, inlinedAt: !845)
!851 = distinct !DILexicalBlock(scope: !839, file: !3, line: 474, column: 5)
!852 = !DILocation(line: 476, column: 8, scope: !851, inlinedAt: !845)
!853 = distinct !{!853, !849, !854, !610}
!854 = !DILocation(line: 477, column: 5, scope: !839, inlinedAt: !845)
!855 = !DILocation(line: 478, column: 10, scope: !839, inlinedAt: !845)
!856 = !DILocation(line: 479, column: 24, scope: !839, inlinedAt: !845)
!857 = !DILocation(line: 479, column: 22, scope: !839, inlinedAt: !845)
!858 = !DILocation(line: 480, column: 9, scope: !839, inlinedAt: !845)
!859 = !DILocation(line: 481, column: 3, scope: !839, inlinedAt: !845)
!860 = !DILocation(line: 481, column: 12, scope: !839, inlinedAt: !845)
!861 = !DILocation(line: 481, column: 16, scope: !839, inlinedAt: !845)
!862 = !DILocation(line: 481, column: 19, scope: !839, inlinedAt: !845)
!863 = !DILocation(line: 481, column: 25, scope: !839, inlinedAt: !845)
!864 = distinct !{!864, !859, !865, !610}
!865 = !DILocation(line: 482, column: 6, scope: !839, inlinedAt: !845)
!866 = !DILocation(line: 483, column: 6, scope: !839, inlinedAt: !845)
!867 = !DILocation(line: 484, column: 21, scope: !839, inlinedAt: !845)
!868 = !DILocation(line: 484, column: 19, scope: !839, inlinedAt: !845)
!869 = !DILocation(line: 484, column: 17, scope: !839, inlinedAt: !845)
!870 = !DILocation(line: 396, column: 9, scope: !818)
!871 = !DILocation(line: 398, column: 7, scope: !818)
!872 = !DILocation(line: 400, column: 7, scope: !818)
!873 = !DILocation(line: 404, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !763, file: !3, line: 404, column: 7)
!875 = !DILocation(line: 404, column: 7, scope: !763)
!876 = !DILocation(line: 409, column: 31, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 405, column: 5)
!878 = !DILocation(line: 408, column: 19, scope: !877)
!879 = !DILocation(line: 408, column: 17, scope: !877)
!880 = !DILocation(line: 410, column: 5, scope: !877)
!881 = !DILocation(line: 412, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !763, file: !3, line: 412, column: 7)
!883 = !DILocation(line: 0, scope: !882)
!884 = !DILocation(line: 412, column: 7, scope: !763)
!885 = !DILocation(line: 415, column: 54, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !3, line: 413, column: 5)
!887 = !DILocation(line: 416, column: 32, scope: !886)
!888 = !DILocation(line: 415, column: 20, scope: !886)
!889 = !DILocation(line: 415, column: 18, scope: !886)
!890 = !DILocation(line: 417, column: 11, scope: !886)
!891 = !DILocation(line: 418, column: 32, scope: !892)
!892 = distinct !DILexicalBlock(scope: !886, file: !3, line: 417, column: 11)
!893 = !DILocation(line: 418, column: 19, scope: !892)
!894 = !DILocation(line: 418, column: 9, scope: !892)
!895 = !DILocation(line: 422, column: 30, scope: !896)
!896 = distinct !DILexicalBlock(scope: !882, file: !3, line: 421, column: 5)
!897 = !DILocation(line: 422, column: 57, scope: !896)
!898 = !DILocation(line: 422, column: 18, scope: !896)
!899 = !DILocation(line: 427, column: 7, scope: !780)
!900 = !DILocation(line: 427, column: 14, scope: !780)
!901 = !DILocation(line: 427, column: 7, scope: !763)
!902 = !DILocation(line: 434, column: 21, scope: !777)
!903 = !DILocation(line: 434, column: 7, scope: !778)
!904 = !DILocation(line: 430, column: 17, scope: !905)
!905 = distinct !DILexicalBlock(scope: !780, file: !3, line: 428, column: 5)
!906 = !DILocation(line: 430, column: 12, scope: !905)
!907 = !DILocation(line: 458, column: 23, scope: !908)
!908 = distinct !DILexicalBlock(scope: !763, file: !3, line: 458, column: 7)
!909 = !DILocation(line: 436, column: 24, scope: !776)
!910 = !DILocation(line: 0, scope: !776)
!911 = !DILocation(line: 0, scope: !593, inlinedAt: !912)
!912 = distinct !DILocation(line: 437, column: 15, scope: !783)
!913 = !DILocation(line: 1361, column: 11, scope: !593, inlinedAt: !912)
!914 = !DILocation(line: 1361, column: 10, scope: !593, inlinedAt: !912)
!915 = !DILocation(line: 437, column: 15, scope: !776)
!916 = !DILocation(line: 439, column: 26, scope: !917)
!917 = distinct !DILexicalBlock(scope: !783, file: !3, line: 438, column: 13)
!918 = !DILocation(line: 439, column: 21, scope: !917)
!919 = !DILocation(line: 439, column: 18, scope: !917)
!920 = !DILocation(line: 441, column: 13, scope: !917)
!921 = !DILocation(line: 445, column: 27, scope: !782)
!922 = !DILocation(line: 0, scope: !782)
!923 = !DILocation(line: 446, column: 29, scope: !924)
!924 = distinct !DILexicalBlock(scope: !782, file: !3, line: 446, column: 19)
!925 = !DILocation(line: 446, column: 19, scope: !782)
!926 = !DILocation(line: 447, column: 23, scope: !924)
!927 = !DILocation(line: 447, column: 20, scope: !924)
!928 = !DILocation(line: 447, column: 17, scope: !924)
!929 = !DILocation(line: 450, column: 19, scope: !930)
!930 = distinct !DILexicalBlock(scope: !924, file: !3, line: 449, column: 17)
!931 = !DILocation(line: 0, scope: !783)
!932 = !DILocation(line: 434, column: 35, scope: !777)
!933 = distinct !{!933, !903, !934, !610}
!934 = !DILocation(line: 455, column: 9, scope: !778)
!935 = !DILocation(line: 458, column: 34, scope: !908)
!936 = !DILocation(line: 458, column: 26, scope: !908)
!937 = !DILocation(line: 458, column: 41, scope: !908)
!938 = !DILocation(line: 458, column: 7, scope: !763)
!939 = !DILocation(line: 459, column: 5, scope: !908)
!940 = !DILocation(line: 461, column: 10, scope: !763)
!941 = !DILocation(line: 462, column: 1, scope: !763)
!942 = !DISubprogram(name: "bindtextdomain", scope: !633, file: !633, line: 86, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!943 = !DISubroutineType(types: !944)
!944 = !{!52, !60, !60}
!945 = !DISubprogram(name: "textdomain", scope: !633, file: !633, line: 82, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!946 = !DISubprogram(name: "atexit", scope: !754, file: !754, line: 602, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!947 = !DISubroutineType(types: !948)
!948 = !{!55, !286}
!949 = !DISubprogram(name: "getopt_long", scope: !222, file: !222, line: 66, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!950 = !DISubroutineType(types: !951)
!951 = !{!55, !55, !952, !60, !954, !227}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!955 = distinct !DISubprogram(name: "fmt", scope: !3, file: !3, line: 493, type: !956, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{!69, !103, !60}
!958 = !{!959, !960, !961}
!959 = !DILocalVariable(name: "f", arg: 1, scope: !955, file: !3, line: 493, type: !103)
!960 = !DILocalVariable(name: "file", arg: 2, scope: !955, file: !3, line: 493, type: !60)
!961 = !DILocalVariable(name: "err", scope: !955, file: !3, line: 505, type: !55)
!962 = !DILocation(line: 0, scope: !955)
!963 = !DILocation(line: 495, column: 3, scope: !955)
!964 = !DILocation(line: 496, column: 8, scope: !955)
!965 = !DILocation(line: 497, column: 16, scope: !955)
!966 = !DILocation(line: 498, column: 15, scope: !955)
!967 = !DILocation(line: 498, column: 13, scope: !955)
!968 = !DILocation(line: 499, column: 3, scope: !955)
!969 = !DILocation(line: 575, column: 7, scope: !970, inlinedAt: !976)
!970 = distinct !DISubprogram(name: "get_paragraph", scope: !3, file: !3, line: 570, type: !971, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{!69, !103}
!973 = !{!974, !975}
!974 = !DILocalVariable(name: "f", arg: 1, scope: !970, file: !3, line: 570, type: !103)
!975 = !DILocalVariable(name: "c", scope: !970, file: !3, line: 572, type: !55)
!976 = distinct !DILocation(line: 499, column: 10, scope: !955)
!977 = !DILocation(line: 0, scope: !970, inlinedAt: !976)
!978 = !DILocation(line: 574, column: 20, scope: !970, inlinedAt: !976)
!979 = !DILocation(line: 579, column: 3, scope: !970, inlinedAt: !976)
!980 = !DILocation(line: 579, column: 20, scope: !970, inlinedAt: !976)
!981 = !DILocation(line: 580, column: 13, scope: !970, inlinedAt: !976)
!982 = !DILocation(line: 580, column: 34, scope: !970, inlinedAt: !976)
!983 = !DILocation(line: 580, column: 32, scope: !970, inlinedAt: !976)
!984 = !DILocation(line: 581, column: 10, scope: !970, inlinedAt: !976)
!985 = !DILocation(line: 581, column: 13, scope: !970, inlinedAt: !976)
!986 = !DILocation(line: 581, column: 46, scope: !970, inlinedAt: !976)
!987 = !DILocation(line: 581, column: 44, scope: !970, inlinedAt: !976)
!988 = !DILocation(line: 581, column: 23, scope: !970, inlinedAt: !976)
!989 = !DILocalVariable(name: "f", arg: 1, scope: !990, file: !3, line: 647, type: !103)
!990 = distinct !DISubprogram(name: "copy_rest", scope: !3, file: !3, line: 647, type: !991, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!55, !103, !55}
!993 = !{!989, !994, !995}
!994 = !DILocalVariable(name: "c", arg: 2, scope: !990, file: !3, line: 647, type: !55)
!995 = !DILocalVariable(name: "s", scope: !996, file: !3, line: 653, type: !60)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 653, column: 7)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 651, column: 5)
!998 = distinct !DILexicalBlock(scope: !990, file: !3, line: 650, column: 7)
!999 = !DILocation(line: 0, scope: !990, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 583, column: 11, scope: !1001, inlinedAt: !976)
!1001 = distinct !DILexicalBlock(scope: !970, file: !3, line: 582, column: 5)
!1002 = !DILocation(line: 649, column: 14, scope: !990, inlinedAt: !1000)
!1003 = !DILocation(line: 650, column: 7, scope: !998, inlinedAt: !1000)
!1004 = !DILocation(line: 650, column: 19, scope: !998, inlinedAt: !1000)
!1005 = !DILocation(line: 650, column: 17, scope: !998, inlinedAt: !1000)
!1006 = !DILocation(line: 650, column: 38, scope: !998, inlinedAt: !1000)
!1007 = !DILocation(line: 650, column: 52, scope: !998, inlinedAt: !1000)
!1008 = !DILocation(line: 652, column: 7, scope: !997, inlinedAt: !1000)
!1009 = !DILocation(line: 0, scope: !996, inlinedAt: !1000)
!1010 = !DILocation(line: 653, column: 36, scope: !1011, inlinedAt: !1000)
!1011 = distinct !DILexicalBlock(scope: !996, file: !3, line: 653, column: 7)
!1012 = !DILocation(line: 653, column: 50, scope: !1011, inlinedAt: !1000)
!1013 = !DILocation(line: 653, column: 47, scope: !1011, inlinedAt: !1000)
!1014 = !DILocation(line: 653, column: 60, scope: !1011, inlinedAt: !1000)
!1015 = !DILocation(line: 653, column: 28, scope: !996, inlinedAt: !1000)
!1016 = !DILocation(line: 653, column: 7, scope: !996, inlinedAt: !1000)
!1017 = !DILocation(line: 653, column: 63, scope: !1011, inlinedAt: !1000)
!1018 = !DILocation(line: 655, column: 20, scope: !1019, inlinedAt: !1000)
!1019 = distinct !DILexicalBlock(scope: !997, file: !3, line: 655, column: 11)
!1020 = !DILocation(line: 654, column: 9, scope: !1011, inlinedAt: !1000)
!1021 = !DILocalVariable(name: "__c", arg: 1, scope: !1022, file: !1023, line: 108, type: !55)
!1022 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1023, file: !1023, line: 108, type: !1024, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1026)
!1023 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!55, !55}
!1026 = !{!1021}
!1027 = !DILocation(line: 0, scope: !1022, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 654, column: 9, scope: !1011, inlinedAt: !1000)
!1029 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1028)
!1030 = !{!1031, !545, i64 40}
!1031 = !{!"_IO_FILE", !644, i64 0, !545, i64 8, !545, i64 16, !545, i64 24, !545, i64 32, !545, i64 40, !545, i64 48, !545, i64 56, !545, i64 64, !545, i64 72, !545, i64 80, !545, i64 88, !545, i64 96, !545, i64 104, !644, i64 112, !644, i64 116, !1032, i64 120, !678, i64 128, !546, i64 130, !546, i64 131, !545, i64 136, !1032, i64 144, !545, i64 152, !545, i64 160, !545, i64 168, !545, i64 176, !1032, i64 184, !644, i64 192, !546, i64 196}
!1032 = !{!"long", !546, i64 0}
!1033 = !{!1031, !545, i64 48}
!1034 = !{!"branch_weights", i32 2000, i32 1}
!1035 = !DILocation(line: 653, column: 77, scope: !1011, inlinedAt: !1000)
!1036 = distinct !{!1036, !1016, !1037, !610}
!1037 = !DILocation(line: 654, column: 9, scope: !996, inlinedAt: !1000)
!1038 = !DILocation(line: 656, column: 30, scope: !1019, inlinedAt: !1000)
!1039 = !DILocation(line: 656, column: 9, scope: !1019, inlinedAt: !1000)
!1040 = !DILocation(line: 657, column: 20, scope: !1041, inlinedAt: !1000)
!1041 = distinct !DILexicalBlock(scope: !997, file: !3, line: 657, column: 11)
!1042 = !DILocation(line: 657, column: 36, scope: !1041, inlinedAt: !1000)
!1043 = !DILocation(line: 657, column: 57, scope: !1041, inlinedAt: !1000)
!1044 = !DILocation(line: 657, column: 55, scope: !1041, inlinedAt: !1000)
!1045 = !DILocation(line: 657, column: 33, scope: !1041, inlinedAt: !1000)
!1046 = !DILocation(line: 657, column: 11, scope: !997, inlinedAt: !1000)
!1047 = !DILocation(line: 0, scope: !1022, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 658, column: 9, scope: !1041, inlinedAt: !1000)
!1049 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1048)
!1050 = !DILocation(line: 660, column: 3, scope: !990, inlinedAt: !1000)
!1051 = !DILocation(line: 0, scope: !1022, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 662, column: 7, scope: !1053, inlinedAt: !1000)
!1053 = distinct !DILexicalBlock(scope: !990, file: !3, line: 661, column: 5)
!1054 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1052)
!1055 = !DILocalVariable(name: "__fp", arg: 1, scope: !1056, file: !1023, line: 66, type: !103)
!1056 = distinct !DISubprogram(name: "getc_unlocked", scope: !1023, file: !1023, line: 66, type: !1057, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!55, !103}
!1059 = !{!1055}
!1060 = !DILocation(line: 0, scope: !1056, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 663, column: 11, scope: !1053, inlinedAt: !1000)
!1062 = !DILocation(line: 68, column: 10, scope: !1056, inlinedAt: !1061)
!1063 = !{!1031, !545, i64 8}
!1064 = !{!1031, !545, i64 16}
!1065 = distinct !{!1065, !1050, !1066, !610}
!1066 = !DILocation(line: 664, column: 5, scope: !990, inlinedAt: !1000)
!1067 = !DILocation(line: 0, scope: !1022, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 589, column: 7, scope: !1001, inlinedAt: !976)
!1069 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1068)
!1070 = !DILocation(line: 590, column: 11, scope: !1001, inlinedAt: !976)
!1071 = distinct !{!1071, !979, !1072, !610}
!1072 = !DILocation(line: 591, column: 5, scope: !970, inlinedAt: !976)
!1073 = !DILocation(line: 595, column: 17, scope: !970, inlinedAt: !976)
!1074 = !DILocation(line: 596, column: 16, scope: !970, inlinedAt: !976)
!1075 = !DILocation(line: 597, column: 8, scope: !970, inlinedAt: !976)
!1076 = !DILocation(line: 598, column: 14, scope: !970, inlinedAt: !976)
!1077 = !DILocation(line: 599, column: 7, scope: !970, inlinedAt: !976)
!1078 = !DILocalVariable(name: "c", arg: 1, scope: !1079, file: !3, line: 673, type: !55)
!1079 = distinct !DISubprogram(name: "same_para", scope: !3, file: !3, line: 673, type: !801, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1080 = !{!1078}
!1081 = !DILocation(line: 0, scope: !1079, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 600, column: 21, scope: !970, inlinedAt: !976)
!1083 = !DILocation(line: 675, column: 11, scope: !1079, inlinedAt: !1082)
!1084 = !DILocation(line: 675, column: 33, scope: !1079, inlinedAt: !1082)
!1085 = !DILocation(line: 675, column: 30, scope: !1079, inlinedAt: !1082)
!1086 = !DILocation(line: 676, column: 11, scope: !1079, inlinedAt: !1082)
!1087 = !DILocation(line: 676, column: 14, scope: !1079, inlinedAt: !1082)
!1088 = !DILocation(line: 676, column: 48, scope: !1079, inlinedAt: !1082)
!1089 = !DILocation(line: 676, column: 46, scope: !1079, inlinedAt: !1082)
!1090 = !DILocation(line: 676, column: 24, scope: !1079, inlinedAt: !1082)
!1091 = !DILocation(line: 677, column: 11, scope: !1079, inlinedAt: !1082)
!1092 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1093, file: !3, line: 525, type: !69)
!1093 = distinct !DISubprogram(name: "set_other_indent", scope: !3, file: !3, line: 525, type: !1094, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !69}
!1096 = !{!1092}
!1097 = !DILocation(line: 0, scope: !1093, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 600, column: 3, scope: !970, inlinedAt: !976)
!1099 = !DILocation(line: 527, column: 7, scope: !1100, inlinedAt: !1098)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 527, column: 7)
!1101 = !DILocation(line: 527, column: 7, scope: !1093, inlinedAt: !1098)
!1102 = !DILocation(line: 529, column: 12, scope: !1103, inlinedAt: !1098)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 529, column: 12)
!1104 = !DILocation(line: 529, column: 12, scope: !1100, inlinedAt: !1098)
!1105 = !DILocation(line: 533, column: 12, scope: !1106, inlinedAt: !1098)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 533, column: 12)
!1107 = !DILocation(line: 533, column: 12, scope: !1103, inlinedAt: !1098)
!1108 = !DILocation(line: 535, column: 26, scope: !1109, inlinedAt: !1098)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 535, column: 11)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 534, column: 5)
!1111 = !DILocation(line: 545, column: 32, scope: !1112, inlinedAt: !1098)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 545, column: 16)
!1113 = !DILocation(line: 535, column: 29, scope: !1109, inlinedAt: !1098)
!1114 = !DILocation(line: 535, column: 42, scope: !1109, inlinedAt: !1098)
!1115 = !DILocation(line: 535, column: 39, scope: !1109, inlinedAt: !1098)
!1116 = !DILocation(line: 535, column: 11, scope: !1110, inlinedAt: !1098)
!1117 = !DILocation(line: 545, column: 16, scope: !1112, inlinedAt: !1098)
!1118 = !DILocation(line: 545, column: 29, scope: !1112, inlinedAt: !1098)
!1119 = !DILocation(line: 545, column: 16, scope: !1109, inlinedAt: !1098)
!1120 = !DILocation(line: 546, column: 37, scope: !1112, inlinedAt: !1098)
!1121 = !DILocation(line: 546, column: 24, scope: !1112, inlinedAt: !1098)
!1122 = !DILocation(line: 546, column: 9, scope: !1112, inlinedAt: !1098)
!1123 = !DILocation(line: 528, column: 20, scope: !1100, inlinedAt: !1098)
!1124 = !DILocation(line: 0, scope: !1100, inlinedAt: !1098)
!1125 = !DILocation(line: 531, column: 23, scope: !1126, inlinedAt: !1098)
!1126 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 530, column: 5)
!1127 = !DILocation(line: 0, scope: !1079, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 610, column: 11, scope: !1129, inlinedAt: !976)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 610, column: 11)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 609, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 608, column: 12)
!1132 = distinct !DILexicalBlock(scope: !970, file: !3, line: 604, column: 7)
!1133 = !DILocation(line: 676, column: 11, scope: !1079, inlinedAt: !1128)
!1134 = !DILocation(line: 676, column: 48, scope: !1079, inlinedAt: !1128)
!1135 = !DILocation(line: 676, column: 46, scope: !1079, inlinedAt: !1128)
!1136 = !DILocation(line: 676, column: 24, scope: !1079, inlinedAt: !1128)
!1137 = !DILocation(line: 610, column: 11, scope: !1130, inlinedAt: !976)
!1138 = !DILocation(line: 614, column: 19, scope: !1139, inlinedAt: !976)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 613, column: 13)
!1140 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 611, column: 9)
!1141 = !DILocation(line: 0, scope: !1079, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 616, column: 18, scope: !1140, inlinedAt: !976)
!1143 = !DILocation(line: 675, column: 11, scope: !1079, inlinedAt: !1142)
!1144 = !DILocation(line: 675, column: 33, scope: !1079, inlinedAt: !1142)
!1145 = !DILocation(line: 675, column: 30, scope: !1079, inlinedAt: !1142)
!1146 = !DILocation(line: 676, column: 11, scope: !1079, inlinedAt: !1142)
!1147 = !DILocation(line: 676, column: 14, scope: !1079, inlinedAt: !1142)
!1148 = !DILocation(line: 676, column: 48, scope: !1079, inlinedAt: !1142)
!1149 = !DILocation(line: 676, column: 46, scope: !1079, inlinedAt: !1142)
!1150 = !DILocation(line: 676, column: 24, scope: !1079, inlinedAt: !1142)
!1151 = !DILocation(line: 677, column: 11, scope: !1079, inlinedAt: !1142)
!1152 = !DILocation(line: 616, column: 32, scope: !1140, inlinedAt: !976)
!1153 = !DILocation(line: 615, column: 13, scope: !1139, inlinedAt: !976)
!1154 = distinct !{!1154, !1155, !1156, !610}
!1155 = !DILocation(line: 612, column: 11, scope: !1140, inlinedAt: !976)
!1156 = !DILocation(line: 616, column: 60, scope: !1140, inlinedAt: !976)
!1157 = !DILocation(line: 619, column: 12, scope: !1131, inlinedAt: !976)
!1158 = !DILocation(line: 550, column: 22, scope: !1159, inlinedAt: !1098)
!1159 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 549, column: 5)
!1160 = !DILocation(line: 0, scope: !1079, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 632, column: 14, scope: !1162, inlinedAt: !976)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 631, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 619, column: 12)
!1164 = !DILocation(line: 676, column: 11, scope: !1079, inlinedAt: !1161)
!1165 = !DILocation(line: 676, column: 14, scope: !1079, inlinedAt: !1161)
!1166 = !DILocation(line: 676, column: 48, scope: !1079, inlinedAt: !1161)
!1167 = !DILocation(line: 676, column: 46, scope: !1079, inlinedAt: !1161)
!1168 = !DILocation(line: 676, column: 24, scope: !1079, inlinedAt: !1161)
!1169 = !DILocation(line: 677, column: 11, scope: !1079, inlinedAt: !1161)
!1170 = !DILocation(line: 632, column: 28, scope: !1162, inlinedAt: !976)
!1171 = !DILocation(line: 632, column: 7, scope: !1162, inlinedAt: !976)
!1172 = !DILocation(line: 0, scope: !1079, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 621, column: 11, scope: !1174, inlinedAt: !976)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 621, column: 11)
!1175 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 620, column: 5)
!1176 = !DILocation(line: 676, column: 11, scope: !1079, inlinedAt: !1173)
!1177 = !DILocation(line: 676, column: 14, scope: !1079, inlinedAt: !1173)
!1178 = !DILocation(line: 676, column: 48, scope: !1079, inlinedAt: !1173)
!1179 = !DILocation(line: 676, column: 46, scope: !1079, inlinedAt: !1173)
!1180 = !DILocation(line: 676, column: 24, scope: !1079, inlinedAt: !1173)
!1181 = !DILocation(line: 621, column: 25, scope: !1174, inlinedAt: !976)
!1182 = !DILocation(line: 621, column: 38, scope: !1174, inlinedAt: !976)
!1183 = !DILocation(line: 621, column: 11, scope: !1175, inlinedAt: !976)
!1184 = !DILocation(line: 625, column: 19, scope: !1185, inlinedAt: !976)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 624, column: 13)
!1186 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 622, column: 9)
!1187 = !DILocation(line: 0, scope: !1079, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 627, column: 18, scope: !1186, inlinedAt: !976)
!1189 = !DILocation(line: 675, column: 11, scope: !1079, inlinedAt: !1188)
!1190 = !DILocation(line: 675, column: 33, scope: !1079, inlinedAt: !1188)
!1191 = !DILocation(line: 675, column: 30, scope: !1079, inlinedAt: !1188)
!1192 = !DILocation(line: 676, column: 11, scope: !1079, inlinedAt: !1188)
!1193 = !DILocation(line: 676, column: 14, scope: !1079, inlinedAt: !1188)
!1194 = !DILocation(line: 676, column: 48, scope: !1079, inlinedAt: !1188)
!1195 = !DILocation(line: 676, column: 46, scope: !1079, inlinedAt: !1188)
!1196 = !DILocation(line: 676, column: 24, scope: !1079, inlinedAt: !1188)
!1197 = !DILocation(line: 677, column: 11, scope: !1079, inlinedAt: !1188)
!1198 = !DILocation(line: 627, column: 32, scope: !1186, inlinedAt: !976)
!1199 = !DILocation(line: 626, column: 13, scope: !1185, inlinedAt: !976)
!1200 = distinct !{!1200, !1201, !1202, !610}
!1201 = !DILocation(line: 623, column: 11, scope: !1186, inlinedAt: !976)
!1202 = !DILocation(line: 627, column: 60, scope: !1186, inlinedAt: !976)
!1203 = !DILocation(line: 633, column: 13, scope: !1162, inlinedAt: !976)
!1204 = !DILocation(line: 675, column: 11, scope: !1079, inlinedAt: !1161)
!1205 = !DILocation(line: 675, column: 33, scope: !1079, inlinedAt: !1161)
!1206 = !DILocation(line: 675, column: 30, scope: !1079, inlinedAt: !1161)
!1207 = distinct !{!1207, !1171, !1208, !610}
!1208 = !DILocation(line: 633, column: 27, scope: !1162, inlinedAt: !976)
!1209 = !DILocation(line: 636, column: 31, scope: !970, inlinedAt: !976)
!1210 = !DILocation(line: 636, column: 48, scope: !970, inlinedAt: !976)
!1211 = !DILocation(line: 636, column: 54, scope: !970, inlinedAt: !976)
!1212 = !DILocation(line: 636, column: 28, scope: !970, inlinedAt: !976)
!1213 = !DILocation(line: 501, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !955, file: !3, line: 500, column: 5)
!1215 = !DILocalVariable(name: "finish", arg: 1, scope: !1216, file: !3, line: 991, type: !214)
!1216 = distinct !DISubprogram(name: "put_paragraph", scope: !3, file: !3, line: 991, type: !1217, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !214}
!1219 = !{!1215, !1220}
!1220 = !DILocalVariable(name: "w", scope: !1221, file: !3, line: 994, type: !214)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 994, column: 3)
!1222 = !DILocation(line: 0, scope: !1216, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 502, column: 7, scope: !1214)
!1224 = !DILocation(line: 993, column: 19, scope: !1216, inlinedAt: !1223)
!1225 = !DILocation(line: 993, column: 3, scope: !1216, inlinedAt: !1223)
!1226 = !DILocation(line: 0, scope: !1221, inlinedAt: !1223)
!1227 = !{!1228, !545, i64 32}
!1228 = !{!"Word", !545, i64 0, !644, i64 8, !644, i64 12, !644, i64 16, !644, i64 16, !644, i64 16, !644, i64 16, !644, i64 20, !1032, i64 24, !545, i64 32}
!1229 = !DILocation(line: 994, column: 38, scope: !1230, inlinedAt: !1223)
!1230 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 994, column: 3)
!1231 = !DILocation(line: 994, column: 3, scope: !1221, inlinedAt: !1223)
!1232 = !DILocation(line: 995, column: 18, scope: !1230, inlinedAt: !1223)
!1233 = !DILocation(line: 995, column: 5, scope: !1230, inlinedAt: !1223)
!1234 = !DILocation(line: 994, column: 56, scope: !1230, inlinedAt: !1223)
!1235 = distinct !{!1235, !1231, !1236, !610}
!1236 = !DILocation(line: 995, column: 30, scope: !1221, inlinedAt: !1223)
!1237 = distinct !{!1237, !968, !1238, !610}
!1238 = !DILocation(line: 503, column: 5, scope: !955)
!1239 = !DILocalVariable(name: "__stream", arg: 1, scope: !1240, file: !1023, line: 135, type: !103)
!1240 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1023, file: !1023, line: 135, type: !1057, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1241)
!1241 = !{!1239}
!1242 = !DILocation(line: 0, scope: !1240, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 505, column: 13, scope: !955)
!1244 = !DILocation(line: 137, column: 10, scope: !1240, inlinedAt: !1243)
!1245 = !{!1031, !644, i64 0}
!1246 = !DILocation(line: 505, column: 13, scope: !955)
!1247 = !DILocation(line: 507, column: 12, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !955, file: !3, line: 507, column: 7)
!1249 = !DILocation(line: 507, column: 9, scope: !1248)
!1250 = !DILocation(line: 507, column: 7, scope: !955)
!1251 = !DILocation(line: 508, column: 5, scope: !1248)
!1252 = !DILocation(line: 509, column: 12, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 509, column: 12)
!1254 = !DILocation(line: 509, column: 23, scope: !1253)
!1255 = !DILocation(line: 509, column: 28, scope: !1253)
!1256 = !DILocation(line: 510, column: 11, scope: !1253)
!1257 = !DILocation(line: 510, column: 5, scope: !1253)
!1258 = !DILocation(line: 511, column: 9, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !955, file: !3, line: 511, column: 7)
!1260 = !DILocation(line: 511, column: 7, scope: !955)
!1261 = !DILocation(line: 513, column: 16, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 513, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 512, column: 5)
!1264 = !DILocation(line: 513, column: 13, scope: !1262)
!1265 = !DILocation(line: 0, scope: !1262)
!1266 = !DILocation(line: 513, column: 11, scope: !1263)
!1267 = !DILocation(line: 514, column: 9, scope: !1262)
!1268 = !DILocation(line: 516, column: 9, scope: !1262)
!1269 = !DILocation(line: 518, column: 14, scope: !955)
!1270 = !DILocation(line: 518, column: 3, scope: !955)
!1271 = distinct !DISubprogram(name: "get_prefix", scope: !3, file: !3, line: 743, type: !1057, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1272)
!1272 = !{!1273, !1274, !1275, !1279}
!1273 = !DILocalVariable(name: "f", arg: 1, scope: !1271, file: !3, line: 743, type: !103)
!1274 = !DILocalVariable(name: "c", scope: !1271, file: !3, line: 745, type: !55)
!1275 = !DILocalVariable(name: "p", scope: !1276, file: !3, line: 755, type: !60)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 755, column: 7)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 753, column: 5)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 749, column: 7)
!1279 = !DILocalVariable(name: "pc", scope: !1280, file: !3, line: 757, type: !62)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 756, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 755, column: 7)
!1282 = !DILocation(line: 0, scope: !1271)
!1283 = !DILocation(line: 747, column: 13, scope: !1271)
!1284 = !DILocation(line: 0, scope: !1056, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 748, column: 21, scope: !1271)
!1286 = !DILocation(line: 68, column: 10, scope: !1056, inlinedAt: !1285)
!1287 = !DILocation(line: 774, column: 3, scope: !1288, inlinedAt: !1292)
!1288 = distinct !DISubprogram(name: "get_space", scope: !3, file: !3, line: 772, type: !991, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1289)
!1289 = !{!1290, !1291}
!1290 = !DILocalVariable(name: "f", arg: 1, scope: !1288, file: !3, line: 772, type: !103)
!1291 = !DILocalVariable(name: "c", arg: 2, scope: !1288, file: !3, line: 772, type: !55)
!1292 = distinct !DILocation(line: 748, column: 7, scope: !1271)
!1293 = !DILocation(line: 0, scope: !1288, inlinedAt: !1292)
!1294 = !DILocation(line: 776, column: 11, scope: !1295, inlinedAt: !1292)
!1295 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 775, column: 5)
!1296 = !DILocation(line: 777, column: 18, scope: !1297, inlinedAt: !1292)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 776, column: 11)
!1298 = !DILocation(line: 777, column: 9, scope: !1297, inlinedAt: !1292)
!1299 = !DILocation(line: 780, column: 16, scope: !1300, inlinedAt: !1292)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 779, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 778, column: 16)
!1302 = !DILocation(line: 781, column: 24, scope: !1300, inlinedAt: !1292)
!1303 = !DILocation(line: 781, column: 34, scope: !1300, inlinedAt: !1292)
!1304 = !DILocation(line: 781, column: 50, scope: !1300, inlinedAt: !1292)
!1305 = !DILocation(line: 0, scope: !1297, inlinedAt: !1292)
!1306 = !DILocation(line: 0, scope: !1056, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 785, column: 11, scope: !1295, inlinedAt: !1292)
!1308 = !DILocation(line: 68, column: 10, scope: !1056, inlinedAt: !1307)
!1309 = distinct !{!1309, !1287, !1310}
!1310 = !DILocation(line: 786, column: 5, scope: !1288, inlinedAt: !1292)
!1311 = !DILocation(line: 749, column: 7, scope: !1278)
!1312 = !DILocation(line: 749, column: 21, scope: !1278)
!1313 = !DILocation(line: 749, column: 7, scope: !1271)
!1314 = !DILocation(line: 750, column: 26, scope: !1278)
!1315 = !DILocation(line: 750, column: 46, scope: !1278)
!1316 = !DILocation(line: 750, column: 44, scope: !1278)
!1317 = !DILocation(line: 750, column: 24, scope: !1278)
!1318 = !DILocation(line: 750, column: 5, scope: !1278)
!1319 = !DILocation(line: 754, column: 28, scope: !1277)
!1320 = !DILocation(line: 754, column: 26, scope: !1277)
!1321 = !DILocation(line: 755, column: 28, scope: !1276)
!1322 = !DILocation(line: 0, scope: !1276)
!1323 = !DILocation(line: 755, column: 36, scope: !1281)
!1324 = !DILocation(line: 755, column: 39, scope: !1281)
!1325 = !DILocation(line: 755, column: 7, scope: !1276)
!1326 = !DILocation(line: 0, scope: !1280)
!1327 = !DILocation(line: 758, column: 17, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 758, column: 15)
!1329 = !DILocation(line: 758, column: 15, scope: !1280)
!1330 = !DILocation(line: 760, column: 20, scope: !1280)
!1331 = !DILocation(line: 0, scope: !1056, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 761, column: 15, scope: !1280)
!1333 = !DILocation(line: 68, column: 10, scope: !1056, inlinedAt: !1332)
!1334 = !DILocation(line: 755, column: 49, scope: !1281)
!1335 = distinct !{!1335, !1325, !1336, !610}
!1336 = !DILocation(line: 762, column: 9, scope: !1276)
!1337 = !DILocation(line: 774, column: 3, scope: !1288, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 763, column: 11, scope: !1277)
!1339 = !DILocation(line: 0, scope: !1288, inlinedAt: !1338)
!1340 = !DILocation(line: 776, column: 11, scope: !1295, inlinedAt: !1338)
!1341 = !DILocation(line: 777, column: 18, scope: !1297, inlinedAt: !1338)
!1342 = !DILocation(line: 777, column: 9, scope: !1297, inlinedAt: !1338)
!1343 = !DILocation(line: 780, column: 16, scope: !1300, inlinedAt: !1338)
!1344 = !DILocation(line: 781, column: 24, scope: !1300, inlinedAt: !1338)
!1345 = !DILocation(line: 781, column: 34, scope: !1300, inlinedAt: !1338)
!1346 = !DILocation(line: 781, column: 50, scope: !1300, inlinedAt: !1338)
!1347 = !DILocation(line: 0, scope: !1297, inlinedAt: !1338)
!1348 = !DILocation(line: 0, scope: !1056, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 785, column: 11, scope: !1295, inlinedAt: !1338)
!1350 = !DILocation(line: 68, column: 10, scope: !1056, inlinedAt: !1349)
!1351 = distinct !{!1351, !1337, !1352}
!1352 = !DILocation(line: 786, column: 5, scope: !1288, inlinedAt: !1338)
!1353 = !DILocation(line: 766, column: 1, scope: !1271)
!1354 = distinct !DISubprogram(name: "put_space", scope: !3, file: !3, line: 1040, type: !534, scopeLine: 1041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1355 = !{!1356, !1357, !1358}
!1356 = !DILocalVariable(name: "space", arg: 1, scope: !1354, file: !3, line: 1040, type: !55)
!1357 = !DILocalVariable(name: "space_target", scope: !1354, file: !3, line: 1042, type: !55)
!1358 = !DILocalVariable(name: "tab_target", scope: !1354, file: !3, line: 1042, type: !55)
!1359 = !DILocation(line: 0, scope: !1354)
!1360 = !DILocation(line: 1044, column: 18, scope: !1354)
!1361 = !DILocation(line: 1044, column: 29, scope: !1354)
!1362 = !DILocation(line: 1045, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1045, column: 7)
!1364 = !DILocation(line: 1045, column: 7, scope: !1354)
!1365 = !DILocation(line: 1047, column: 33, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 1046, column: 5)
!1367 = !DILocation(line: 1047, column: 44, scope: !1366)
!1368 = !DILocation(line: 1048, column: 22, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1048, column: 11)
!1370 = !DILocation(line: 1048, column: 26, scope: !1369)
!1371 = !DILocation(line: 1048, column: 11, scope: !1366)
!1372 = !DILocation(line: 0, scope: !1022, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 1051, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 1050, column: 11)
!1375 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1373)
!1376 = !DILocation(line: 1052, column: 27, scope: !1374)
!1377 = !DILocation(line: 1052, column: 38, scope: !1374)
!1378 = !DILocation(line: 1052, column: 54, scope: !1374)
!1379 = !DILocation(line: 1052, column: 24, scope: !1374)
!1380 = !DILocation(line: 1049, column: 27, scope: !1369)
!1381 = !DILocation(line: 1049, column: 9, scope: !1369)
!1382 = !DILocation(line: 1055, column: 10, scope: !1354)
!1383 = !DILocation(line: 1055, column: 21, scope: !1354)
!1384 = !DILocation(line: 1055, column: 3, scope: !1354)
!1385 = !DILocation(line: 0, scope: !1022, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 1057, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1056, column: 5)
!1388 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1386)
!1389 = !DILocation(line: 1058, column: 17, scope: !1387)
!1390 = distinct !{!1390, !1384, !1391, !610}
!1391 = !DILocation(line: 1059, column: 5, scope: !1354)
!1392 = !DILocation(line: 1060, column: 1, scope: !1354)
!1393 = distinct !DISubprogram(name: "get_line", scope: !3, file: !3, line: 689, type: !991, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399}
!1395 = !DILocalVariable(name: "f", arg: 1, scope: !1393, file: !3, line: 689, type: !103)
!1396 = !DILocalVariable(name: "c", arg: 2, scope: !1393, file: !3, line: 689, type: !55)
!1397 = !DILocalVariable(name: "start", scope: !1393, file: !3, line: 691, type: !55)
!1398 = !DILocalVariable(name: "end_of_parabuf", scope: !1393, file: !3, line: 692, type: !52)
!1399 = !DILocalVariable(name: "end_of_word", scope: !1393, file: !3, line: 693, type: !214)
!1400 = !DILocation(line: 0, scope: !1393)
!1401 = !DILocation(line: 703, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 699, column: 5)
!1403 = !DILocation(line: 698, column: 3, scope: !1393)
!1404 = !DILocation(line: 703, column: 26, scope: !1402)
!1405 = !DILocation(line: 703, column: 19, scope: !1402)
!1406 = !DILocation(line: 703, column: 24, scope: !1402)
!1407 = !{!1228, !545, i64 0}
!1408 = !DILocation(line: 704, column: 7, scope: !1402)
!1409 = !DILocation(line: 706, column: 15, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 706, column: 15)
!1411 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 705, column: 9)
!1412 = !DILocation(line: 706, column: 20, scope: !1410)
!1413 = !DILocation(line: 706, column: 15, scope: !1411)
!1414 = !DILocation(line: 0, scope: !1093, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 708, column: 15, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 707, column: 13)
!1417 = !DILocation(line: 527, column: 7, scope: !1100, inlinedAt: !1415)
!1418 = !DILocation(line: 527, column: 7, scope: !1093, inlinedAt: !1415)
!1419 = !DILocation(line: 528, column: 20, scope: !1100, inlinedAt: !1415)
!1420 = !DILocation(line: 528, column: 5, scope: !1100, inlinedAt: !1415)
!1421 = !DILocation(line: 529, column: 12, scope: !1103, inlinedAt: !1415)
!1422 = !DILocation(line: 529, column: 12, scope: !1100, inlinedAt: !1415)
!1423 = !DILocation(line: 531, column: 23, scope: !1126, inlinedAt: !1415)
!1424 = !DILocation(line: 532, column: 5, scope: !1126, inlinedAt: !1415)
!1425 = !DILocation(line: 533, column: 12, scope: !1106, inlinedAt: !1415)
!1426 = !DILocation(line: 533, column: 12, scope: !1103, inlinedAt: !1415)
!1427 = !DILocation(line: 535, column: 29, scope: !1109, inlinedAt: !1415)
!1428 = !DILocation(line: 535, column: 42, scope: !1109, inlinedAt: !1415)
!1429 = !DILocation(line: 535, column: 39, scope: !1109, inlinedAt: !1415)
!1430 = !DILocation(line: 535, column: 11, scope: !1110, inlinedAt: !1415)
!1431 = !DILocation(line: 545, column: 16, scope: !1112, inlinedAt: !1415)
!1432 = !DILocation(line: 545, column: 29, scope: !1112, inlinedAt: !1415)
!1433 = !DILocation(line: 545, column: 16, scope: !1109, inlinedAt: !1415)
!1434 = !DILocation(line: 546, column: 37, scope: !1112, inlinedAt: !1415)
!1435 = !DILocation(line: 546, column: 24, scope: !1112, inlinedAt: !1415)
!1436 = !DILocation(line: 546, column: 9, scope: !1112, inlinedAt: !1415)
!1437 = !DILocation(line: 550, column: 22, scope: !1159, inlinedAt: !1415)
!1438 = !DILocation(line: 0, scope: !1100, inlinedAt: !1415)
!1439 = !DILocation(line: 552, column: 1, scope: !1093, inlinedAt: !1415)
!1440 = !DILocation(line: 709, column: 15, scope: !1416)
!1441 = !DILocation(line: 711, column: 16, scope: !1411)
!1442 = !DILocation(line: 710, column: 13, scope: !1416)
!1443 = !DILocation(line: 711, column: 21, scope: !1411)
!1444 = !DILocation(line: 711, column: 19, scope: !1411)
!1445 = !DILocation(line: 0, scope: !1056, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 712, column: 15, scope: !1411)
!1447 = !DILocation(line: 68, column: 10, scope: !1056, inlinedAt: !1446)
!1448 = !DILocation(line: 714, column: 23, scope: !1402)
!1449 = !DILocation(line: 714, column: 16, scope: !1402)
!1450 = !DILocalVariable(name: "c", arg: 1, scope: !1451, file: !800, line: 300, type: !55)
!1451 = distinct !DISubprogram(name: "c_isspace", scope: !800, file: !800, line: 300, type: !801, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1452)
!1452 = !{!1450}
!1453 = !DILocation(line: 0, scope: !1451, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 714, column: 27, scope: !1402)
!1455 = !DILocation(line: 302, column: 3, scope: !1451, inlinedAt: !1454)
!1456 = !DILocation(line: 715, column: 41, scope: !1402)
!1457 = !DILocation(line: 715, column: 48, scope: !1402)
!1458 = !DILocation(line: 715, column: 60, scope: !1402)
!1459 = !DILocation(line: 715, column: 46, scope: !1402)
!1460 = !DILocation(line: 715, column: 32, scope: !1402)
!1461 = !DILocation(line: 715, column: 39, scope: !1402)
!1462 = !{!1228, !644, i64 8}
!1463 = !DILocation(line: 715, column: 17, scope: !1402)
!1464 = !DILocalVariable(name: "w", arg: 1, scope: !1465, file: !3, line: 792, type: !214)
!1465 = distinct !DISubprogram(name: "check_punctuation", scope: !3, file: !3, line: 792, type: !1217, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1466)
!1466 = !{!1464, !1467, !1468, !1469}
!1467 = !DILocalVariable(name: "start", scope: !1465, file: !3, line: 794, type: !60)
!1468 = !DILocalVariable(name: "finish", scope: !1465, file: !3, line: 795, type: !60)
!1469 = !DILocalVariable(name: "fin", scope: !1465, file: !3, line: 796, type: !62)
!1470 = !DILocation(line: 0, scope: !1465, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 716, column: 7, scope: !1402)
!1472 = !DILocation(line: 795, column: 30, scope: !1465, inlinedAt: !1471)
!1473 = !DILocation(line: 796, column: 23, scope: !1465, inlinedAt: !1471)
!1474 = !DILocation(line: 798, column: 14, scope: !1465, inlinedAt: !1471)
!1475 = !DILocation(line: 798, column: 6, scope: !1465, inlinedAt: !1471)
!1476 = !DILocation(line: 798, column: 12, scope: !1465, inlinedAt: !1471)
!1477 = !DILocation(line: 799, column: 17, scope: !1465, inlinedAt: !1471)
!1478 = !DILocation(line: 799, column: 12, scope: !1465, inlinedAt: !1471)
!1479 = !DILocation(line: 800, column: 16, scope: !1465, inlinedAt: !1471)
!1480 = !DILocation(line: 800, column: 25, scope: !1465, inlinedAt: !1471)
!1481 = !DILocation(line: 800, column: 28, scope: !1465, inlinedAt: !1471)
!1482 = !DILocation(line: 800, column: 3, scope: !1465, inlinedAt: !1471)
!1483 = !DILocation(line: 801, column: 11, scope: !1465, inlinedAt: !1471)
!1484 = distinct !{!1484, !1482, !1483, !610}
!1485 = !DILocation(line: 802, column: 15, scope: !1465, inlinedAt: !1471)
!1486 = !DILocation(line: 802, column: 13, scope: !1465, inlinedAt: !1471)
!1487 = !DILocation(line: 0, scope: !1288, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 721, column: 11, scope: !1402)
!1489 = !DILocation(line: 774, column: 3, scope: !1288, inlinedAt: !1488)
!1490 = !DILocation(line: 776, column: 11, scope: !1295, inlinedAt: !1488)
!1491 = !DILocation(line: 777, column: 18, scope: !1297, inlinedAt: !1488)
!1492 = !DILocation(line: 777, column: 9, scope: !1297, inlinedAt: !1488)
!1493 = !DILocation(line: 780, column: 16, scope: !1300, inlinedAt: !1488)
!1494 = !DILocation(line: 781, column: 24, scope: !1300, inlinedAt: !1488)
!1495 = !DILocation(line: 781, column: 34, scope: !1300, inlinedAt: !1488)
!1496 = !DILocation(line: 781, column: 50, scope: !1300, inlinedAt: !1488)
!1497 = !DILocation(line: 0, scope: !1297, inlinedAt: !1488)
!1498 = !DILocation(line: 0, scope: !1056, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 785, column: 11, scope: !1295, inlinedAt: !1488)
!1500 = !DILocation(line: 68, column: 10, scope: !1056, inlinedAt: !1499)
!1501 = distinct !{!1501, !1489, !1502}
!1502 = !DILocation(line: 786, column: 5, scope: !1288, inlinedAt: !1488)
!1503 = !DILocation(line: 722, column: 27, scope: !1402)
!1504 = !DILocation(line: 722, column: 37, scope: !1402)
!1505 = !DILocation(line: 722, column: 7, scope: !1402)
!1506 = !DILocation(line: 722, column: 19, scope: !1402)
!1507 = !DILocation(line: 722, column: 25, scope: !1402)
!1508 = !{!1228, !644, i64 12}
!1509 = !DILocation(line: 723, column: 30, scope: !1402)
!1510 = !DILocation(line: 0, scope: !1402)
!1511 = !DILocation(line: 724, column: 28, scope: !1402)
!1512 = !DILocation(line: 724, column: 32, scope: !1402)
!1513 = !DILocation(line: 725, column: 32, scope: !1402)
!1514 = !DILocation(line: 725, column: 38, scope: !1402)
!1515 = !DILocation(line: 725, column: 46, scope: !1402)
!1516 = !DILocation(line: 723, column: 19, scope: !1402)
!1517 = !DILocation(line: 723, column: 25, scope: !1402)
!1518 = !DILocation(line: 725, column: 67, scope: !1402)
!1519 = !DILocation(line: 726, column: 21, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 726, column: 11)
!1521 = !DILocation(line: 726, column: 36, scope: !1520)
!1522 = !DILocation(line: 726, column: 11, scope: !1402)
!1523 = !DILocation(line: 727, column: 27, scope: !1520)
!1524 = !DILocation(line: 727, column: 9, scope: !1520)
!1525 = !DILocation(line: 728, column: 22, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 728, column: 11)
!1527 = !DILocation(line: 728, column: 11, scope: !1402)
!1528 = !DILocation(line: 0, scope: !1093, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 730, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 729, column: 9)
!1531 = !DILocation(line: 527, column: 7, scope: !1100, inlinedAt: !1529)
!1532 = !DILocation(line: 527, column: 7, scope: !1093, inlinedAt: !1529)
!1533 = !DILocation(line: 528, column: 20, scope: !1100, inlinedAt: !1529)
!1534 = !DILocation(line: 528, column: 5, scope: !1100, inlinedAt: !1529)
!1535 = !DILocation(line: 529, column: 12, scope: !1103, inlinedAt: !1529)
!1536 = !DILocation(line: 529, column: 12, scope: !1100, inlinedAt: !1529)
!1537 = !DILocation(line: 533, column: 12, scope: !1106, inlinedAt: !1529)
!1538 = !DILocation(line: 0, scope: !1106, inlinedAt: !1529)
!1539 = !DILocation(line: 533, column: 12, scope: !1103, inlinedAt: !1529)
!1540 = !DILocation(line: 535, column: 39, scope: !1109, inlinedAt: !1529)
!1541 = !DILocation(line: 535, column: 11, scope: !1110, inlinedAt: !1529)
!1542 = !DILocation(line: 545, column: 16, scope: !1112, inlinedAt: !1529)
!1543 = !DILocation(line: 545, column: 29, scope: !1112, inlinedAt: !1529)
!1544 = !DILocation(line: 545, column: 16, scope: !1109, inlinedAt: !1529)
!1545 = !DILocation(line: 546, column: 37, scope: !1112, inlinedAt: !1529)
!1546 = !DILocation(line: 546, column: 24, scope: !1112, inlinedAt: !1529)
!1547 = !DILocation(line: 546, column: 9, scope: !1112, inlinedAt: !1529)
!1548 = !DILocation(line: 0, scope: !1100, inlinedAt: !1529)
!1549 = !DILocation(line: 552, column: 1, scope: !1093, inlinedAt: !1529)
!1550 = !DILocation(line: 731, column: 11, scope: !1530)
!1551 = !DILocation(line: 733, column: 17, scope: !1402)
!1552 = !DILocation(line: 732, column: 9, scope: !1530)
!1553 = !DILocation(line: 734, column: 5, scope: !1402)
!1554 = !DILocation(line: 736, column: 10, scope: !1393)
!1555 = !DILocation(line: 736, column: 3, scope: !1393)
!1556 = distinct !DISubprogram(name: "fmt_paragraph", scope: !3, file: !3, line: 876, type: !287, scopeLine: 877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563}
!1558 = !DILocalVariable(name: "w", scope: !1556, file: !3, line: 878, type: !214)
!1559 = !DILocalVariable(name: "len", scope: !1556, file: !3, line: 879, type: !55)
!1560 = !DILocalVariable(name: "wcost", scope: !1556, file: !3, line: 880, type: !64)
!1561 = !DILocalVariable(name: "best", scope: !1556, file: !3, line: 880, type: !64)
!1562 = !DILocalVariable(name: "saved_length", scope: !1556, file: !3, line: 881, type: !55)
!1563 = !DILocalVariable(name: "start", scope: !1564, file: !3, line: 887, type: !214)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 887, column: 3)
!1565 = !DILocation(line: 883, column: 3, scope: !1556)
!1566 = !DILocation(line: 883, column: 15, scope: !1556)
!1567 = !DILocation(line: 883, column: 25, scope: !1556)
!1568 = !{!1228, !1032, i64 24}
!1569 = !DILocation(line: 884, column: 30, scope: !1556)
!1570 = !DILocation(line: 0, scope: !1556)
!1571 = !DILocation(line: 885, column: 24, scope: !1556)
!1572 = !DILocation(line: 885, column: 22, scope: !1556)
!1573 = !DILocation(line: 0, scope: !1564)
!1574 = !DILocation(line: 887, column: 44, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 887, column: 3)
!1576 = !DILocation(line: 887, column: 3, scope: !1564)
!1577 = !DILocation(line: 925, column: 22, scope: !1556)
!1578 = !DILocation(line: 926, column: 1, scope: !1556)
!1579 = !DILocation(line: 890, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 888, column: 5)
!1581 = !DILocation(line: 890, column: 13, scope: !1580)
!1582 = !DILocation(line: 895, column: 17, scope: !1580)
!1583 = !DILocation(line: 895, column: 11, scope: !1580)
!1584 = !DILocation(line: 896, column: 7, scope: !1580)
!1585 = !DILocation(line: 0, scope: !1580)
!1586 = !DILocation(line: 898, column: 12, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 897, column: 9)
!1588 = !DILocalVariable(name: "next", arg: 1, scope: !1589, file: !3, line: 970, type: !214)
!1589 = distinct !DISubprogram(name: "line_cost", scope: !3, file: !3, line: 970, type: !1590, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!64, !214, !55}
!1592 = !{!1588, !1593, !1594, !1595}
!1593 = !DILocalVariable(name: "len", arg: 2, scope: !1589, file: !3, line: 970, type: !55)
!1594 = !DILocalVariable(name: "n", scope: !1589, file: !3, line: 972, type: !55)
!1595 = !DILocalVariable(name: "cost", scope: !1589, file: !3, line: 973, type: !64)
!1596 = !DILocation(line: 0, scope: !1589, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 902, column: 19, scope: !1587)
!1598 = !DILocation(line: 975, column: 12, scope: !1599, inlinedAt: !1597)
!1599 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 975, column: 7)
!1600 = !DILocation(line: 975, column: 7, scope: !1589, inlinedAt: !1597)
!1601 = !DILocation(line: 977, column: 18, scope: !1589, inlinedAt: !1597)
!1602 = !DILocation(line: 978, column: 10, scope: !1589, inlinedAt: !1597)
!1603 = !DILocation(line: 979, column: 13, scope: !1604, inlinedAt: !1597)
!1604 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 979, column: 7)
!1605 = !DILocation(line: 979, column: 24, scope: !1604, inlinedAt: !1597)
!1606 = !DILocation(line: 979, column: 7, scope: !1589, inlinedAt: !1597)
!1607 = !DILocation(line: 981, column: 23, scope: !1608, inlinedAt: !1597)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 980, column: 5)
!1609 = !{!1228, !644, i64 20}
!1610 = !DILocation(line: 981, column: 15, scope: !1608, inlinedAt: !1597)
!1611 = !DILocation(line: 982, column: 15, scope: !1608, inlinedAt: !1597)
!1612 = !DILocation(line: 982, column: 12, scope: !1608, inlinedAt: !1597)
!1613 = !DILocation(line: 983, column: 5, scope: !1608, inlinedAt: !1597)
!1614 = !DILocation(line: 902, column: 43, scope: !1587)
!1615 = !DILocation(line: 902, column: 38, scope: !1587)
!1616 = !DILocation(line: 903, column: 29, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 903, column: 15)
!1618 = !DILocation(line: 904, column: 22, scope: !1617)
!1619 = !DILocation(line: 904, column: 19, scope: !1617)
!1620 = !DILocation(line: 904, column: 13, scope: !1617)
!1621 = !DILocation(line: 0, scope: !1587)
!1622 = !DILocation(line: 905, column: 21, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 905, column: 15)
!1624 = !DILocation(line: 905, column: 15, scope: !1587)
!1625 = !DILocation(line: 908, column: 33, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 906, column: 13)
!1627 = !DILocation(line: 909, column: 34, scope: !1626)
!1628 = !DILocation(line: 910, column: 13, scope: !1626)
!1629 = !DILocation(line: 916, column: 15, scope: !1587)
!1630 = !DILocation(line: 919, column: 27, scope: !1587)
!1631 = !DILocation(line: 919, column: 38, scope: !1587)
!1632 = !DILocation(line: 919, column: 33, scope: !1587)
!1633 = !DILocation(line: 919, column: 15, scope: !1587)
!1634 = !DILocation(line: 921, column: 18, scope: !1580)
!1635 = !DILocation(line: 920, column: 9, scope: !1587)
!1636 = distinct !{!1636, !1584, !1637, !610}
!1637 = !DILocation(line: 921, column: 30, scope: !1580)
!1638 = !DILocalVariable(name: "this", arg: 1, scope: !1639, file: !3, line: 937, type: !214)
!1639 = distinct !DISubprogram(name: "base_cost", scope: !3, file: !3, line: 937, type: !1640, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!64, !214}
!1642 = !{!1638, !1643}
!1643 = !DILocalVariable(name: "cost", scope: !1639, file: !3, line: 939, type: !64)
!1644 = !DILocation(line: 0, scope: !1639, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 922, column: 33, scope: !1580)
!1646 = !DILocation(line: 943, column: 12, scope: !1647, inlinedAt: !1645)
!1647 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 943, column: 7)
!1648 = !DILocation(line: 943, column: 7, scope: !1639, inlinedAt: !1645)
!1649 = !DILocation(line: 945, column: 23, scope: !1650, inlinedAt: !1645)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 945, column: 11)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 944, column: 5)
!1652 = !DILocation(line: 945, column: 11, scope: !1650, inlinedAt: !1645)
!1653 = !DILocation(line: 945, column: 11, scope: !1651, inlinedAt: !1645)
!1654 = !DILocation(line: 947, column: 15, scope: !1655, inlinedAt: !1645)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 947, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 946, column: 9)
!1657 = !DILocation(line: 952, column: 16, scope: !1658, inlinedAt: !1645)
!1658 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 952, column: 16)
!1659 = !DILocation(line: 952, column: 16, scope: !1650, inlinedAt: !1645)
!1660 = !DILocation(line: 954, column: 21, scope: !1661, inlinedAt: !1645)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 954, column: 16)
!1662 = !DILocation(line: 954, column: 32, scope: !1661, inlinedAt: !1645)
!1663 = !DILocation(line: 954, column: 47, scope: !1661, inlinedAt: !1645)
!1664 = !DILocation(line: 954, column: 35, scope: !1661, inlinedAt: !1645)
!1665 = !DILocation(line: 954, column: 16, scope: !1658, inlinedAt: !1645)
!1666 = !DILocation(line: 955, column: 17, scope: !1661, inlinedAt: !1645)
!1667 = !DILocation(line: 955, column: 14, scope: !1661, inlinedAt: !1645)
!1668 = !DILocation(line: 955, column: 9, scope: !1661, inlinedAt: !1645)
!1669 = !DILocation(line: 958, column: 13, scope: !1670, inlinedAt: !1645)
!1670 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 958, column: 7)
!1671 = !DILocation(line: 958, column: 7, scope: !1670, inlinedAt: !1645)
!1672 = !DILocation(line: 958, column: 7, scope: !1639, inlinedAt: !1645)
!1673 = !DILocation(line: 959, column: 10, scope: !1670, inlinedAt: !1645)
!1674 = !DILocation(line: 959, column: 5, scope: !1670, inlinedAt: !1645)
!1675 = !DILocation(line: 960, column: 12, scope: !1676, inlinedAt: !1645)
!1676 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 960, column: 12)
!1677 = !DILocation(line: 960, column: 12, scope: !1670, inlinedAt: !1645)
!1678 = !DILocation(line: 961, column: 13, scope: !1676, inlinedAt: !1645)
!1679 = !DILocation(line: 961, column: 10, scope: !1676, inlinedAt: !1645)
!1680 = !DILocation(line: 961, column: 5, scope: !1676, inlinedAt: !1645)
!1681 = !DILocation(line: 922, column: 31, scope: !1580)
!1682 = !DILocation(line: 922, column: 14, scope: !1580)
!1683 = !DILocation(line: 922, column: 24, scope: !1580)
!1684 = distinct !{!1684, !1576, !1685, !610}
!1685 = !DILocation(line: 923, column: 5, scope: !1564)
!1686 = distinct !DISubprogram(name: "put_line", scope: !3, file: !3, line: 1002, type: !1687, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !214, !55}
!1689 = !{!1690, !1691, !1692}
!1690 = !DILocalVariable(name: "w", arg: 1, scope: !1686, file: !3, line: 1002, type: !214)
!1691 = !DILocalVariable(name: "indent", arg: 2, scope: !1686, file: !3, line: 1002, type: !55)
!1692 = !DILocalVariable(name: "endline", scope: !1686, file: !3, line: 1004, type: !214)
!1693 = !DILocation(line: 0, scope: !1686)
!1694 = !DILocation(line: 1006, column: 14, scope: !1686)
!1695 = !DILocation(line: 1007, column: 14, scope: !1686)
!1696 = !DILocation(line: 1007, column: 3, scope: !1686)
!1697 = !DILocation(line: 1008, column: 3, scope: !1686)
!1698 = !DILocation(line: 1009, column: 17, scope: !1686)
!1699 = !DILocation(line: 1009, column: 14, scope: !1686)
!1700 = !DILocation(line: 1010, column: 21, scope: !1686)
!1701 = !DILocation(line: 1010, column: 3, scope: !1686)
!1702 = !DILocation(line: 1012, column: 16, scope: !1686)
!1703 = !DILocation(line: 1012, column: 27, scope: !1686)
!1704 = !DILocation(line: 1013, column: 12, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1013, column: 3)
!1706 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 1013, column: 3)
!1707 = !DILocation(line: 1013, column: 3, scope: !1706)
!1708 = !DILocalVariable(name: "w", arg: 1, scope: !1709, file: !3, line: 1029, type: !214)
!1709 = distinct !DISubprogram(name: "put_word", scope: !3, file: !3, line: 1029, type: !1217, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1710)
!1710 = !{!1708, !1711, !1712}
!1711 = !DILocalVariable(name: "s", scope: !1709, file: !3, line: 1031, type: !60)
!1712 = !DILocalVariable(name: "n", scope: !1713, file: !3, line: 1032, type: !55)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 1032, column: 3)
!1714 = !DILocation(line: 0, scope: !1709, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1015, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 1014, column: 5)
!1717 = !DILocation(line: 1032, column: 19, scope: !1713, inlinedAt: !1715)
!1718 = !DILocation(line: 0, scope: !1713, inlinedAt: !1715)
!1719 = !DILocation(line: 1032, column: 29, scope: !1720, inlinedAt: !1715)
!1720 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1032, column: 3)
!1721 = !DILocation(line: 1032, column: 3, scope: !1713, inlinedAt: !1715)
!1722 = !DILocation(line: 1031, column: 22, scope: !1709, inlinedAt: !1715)
!1723 = !DILocation(line: 1034, column: 20, scope: !1709, inlinedAt: !1715)
!1724 = !DILocation(line: 1033, column: 5, scope: !1720, inlinedAt: !1715)
!1725 = !DILocation(line: 0, scope: !1022, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 1033, column: 5, scope: !1720, inlinedAt: !1715)
!1727 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1726)
!1728 = !DILocation(line: 1032, column: 36, scope: !1720, inlinedAt: !1715)
!1729 = distinct !{!1729, !1721, !1730, !610}
!1730 = !DILocation(line: 1033, column: 5, scope: !1713, inlinedAt: !1715)
!1731 = !DILocation(line: 1034, column: 14, scope: !1709, inlinedAt: !1715)
!1732 = !DILocation(line: 1016, column: 21, scope: !1716)
!1733 = !DILocation(line: 1016, column: 7, scope: !1716)
!1734 = !DILocation(line: 1013, column: 25, scope: !1705)
!1735 = distinct !{!1735, !1707, !1736, !610}
!1736 = !DILocation(line: 1017, column: 5, scope: !1706)
!1737 = !DILocation(line: 0, scope: !1709, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 1018, column: 3, scope: !1686)
!1739 = !DILocation(line: 1032, column: 19, scope: !1713, inlinedAt: !1738)
!1740 = !DILocation(line: 0, scope: !1713, inlinedAt: !1738)
!1741 = !DILocation(line: 1032, column: 29, scope: !1720, inlinedAt: !1738)
!1742 = !DILocation(line: 1032, column: 3, scope: !1713, inlinedAt: !1738)
!1743 = !DILocation(line: 1031, column: 22, scope: !1709, inlinedAt: !1738)
!1744 = !DILocation(line: 1034, column: 20, scope: !1709, inlinedAt: !1738)
!1745 = !DILocation(line: 1033, column: 5, scope: !1720, inlinedAt: !1738)
!1746 = !DILocation(line: 0, scope: !1022, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 1033, column: 5, scope: !1720, inlinedAt: !1738)
!1748 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1747)
!1749 = !DILocation(line: 1032, column: 36, scope: !1720, inlinedAt: !1738)
!1750 = distinct !{!1750, !1742, !1751, !610}
!1751 = !DILocation(line: 1033, column: 5, scope: !1713, inlinedAt: !1738)
!1752 = !DILocation(line: 1034, column: 14, scope: !1709, inlinedAt: !1738)
!1753 = !DILocation(line: 1019, column: 20, scope: !1686)
!1754 = !DILocation(line: 0, scope: !1022, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 1020, column: 3, scope: !1686)
!1756 = !DILocation(line: 110, column: 10, scope: !1022, inlinedAt: !1755)
!1757 = !DILocation(line: 1022, column: 7, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 1022, column: 7)
!1759 = !DILocation(line: 0, scope: !1240, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 1022, column: 7, scope: !1758)
!1761 = !DILocation(line: 137, column: 10, scope: !1240, inlinedAt: !1760)
!1762 = !DILocation(line: 1022, column: 7, scope: !1686)
!1763 = !DILocation(line: 948, column: 21, scope: !1764, inlinedAt: !1767)
!1764 = distinct !DISubprogram(name: "write_error", scope: !81, file: !81, line: 946, type: !287, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1765)
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "saved_errno", scope: !1764, file: !81, line: 948, type: !55)
!1767 = distinct !DILocation(line: 1023, column: 5, scope: !1758)
!1768 = !DILocation(line: 0, scope: !1764, inlinedAt: !1767)
!1769 = !DILocation(line: 949, column: 3, scope: !1764, inlinedAt: !1767)
!1770 = !DILocation(line: 950, column: 11, scope: !1764, inlinedAt: !1767)
!1771 = !DILocation(line: 950, column: 3, scope: !1764, inlinedAt: !1767)
!1772 = !DILocation(line: 951, column: 3, scope: !1764, inlinedAt: !1767)
!1773 = !DILocation(line: 952, column: 3, scope: !1764, inlinedAt: !1767)
!1774 = !DILocation(line: 1024, column: 1, scope: !1686)
!1775 = !DISubprogram(name: "clearerr_unlocked", scope: !260, file: !260, line: 794, type: !1776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !103}
!1778 = !DISubprogram(name: "fflush_unlocked", scope: !260, file: !260, line: 239, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1779 = distinct !DISubprogram(name: "flush_paragraph", scope: !3, file: !3, line: 809, type: !287, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1788, !1791, !1792}
!1781 = !DILocalVariable(name: "split_point", scope: !1779, file: !3, line: 811, type: !214)
!1782 = !DILocalVariable(name: "w", scope: !1779, file: !3, line: 812, type: !214)
!1783 = !DILocalVariable(name: "shift", scope: !1779, file: !3, line: 813, type: !55)
!1784 = !DILocalVariable(name: "best_break", scope: !1779, file: !3, line: 814, type: !64)
!1785 = !DILocalVariable(name: "to_write", scope: !1786, file: !3, line: 820, type: !57)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 819, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 818, column: 7)
!1788 = !DILocalVariable(name: "__ptr", scope: !1789, file: !3, line: 821, type: !60)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 821, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 821, column: 11)
!1791 = !DILocalVariable(name: "__stream", scope: !1789, file: !3, line: 821, type: !103)
!1792 = !DILocalVariable(name: "__cnt", scope: !1789, file: !3, line: 821, type: !57)
!1793 = !DILocation(line: 818, column: 7, scope: !1787)
!1794 = !DILocation(line: 818, column: 18, scope: !1787)
!1795 = !DILocation(line: 818, column: 7, scope: !1779)
!1796 = !DILocation(line: 820, column: 25, scope: !1786)
!1797 = !DILocation(line: 820, column: 30, scope: !1786)
!1798 = !DILocation(line: 0, scope: !1786)
!1799 = !DILocation(line: 821, column: 11, scope: !1790)
!1800 = !DILocation(line: 821, column: 49, scope: !1790)
!1801 = !DILocation(line: 821, column: 11, scope: !1786)
!1802 = !DILocation(line: 948, column: 21, scope: !1764, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 822, column: 9, scope: !1790)
!1804 = !DILocation(line: 0, scope: !1764, inlinedAt: !1803)
!1805 = !DILocation(line: 949, column: 3, scope: !1764, inlinedAt: !1803)
!1806 = !DILocation(line: 950, column: 11, scope: !1764, inlinedAt: !1803)
!1807 = !DILocation(line: 950, column: 3, scope: !1764, inlinedAt: !1803)
!1808 = !DILocation(line: 951, column: 3, scope: !1764, inlinedAt: !1803)
!1809 = !DILocation(line: 952, column: 3, scope: !1764, inlinedAt: !1803)
!1810 = !DILocation(line: 824, column: 12, scope: !1786)
!1811 = !DILocation(line: 834, column: 3, scope: !1779)
!1812 = !DILocation(line: 0, scope: !1779)
!1813 = !DILocation(line: 0, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 840, column: 3)
!1815 = !DILocation(line: 840, column: 32, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 840, column: 3)
!1817 = !DILocation(line: 840, column: 3, scope: !1814)
!1818 = !DILocation(line: 842, column: 14, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 842, column: 11)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 841, column: 5)
!1821 = !DILocation(line: 842, column: 29, scope: !1819)
!1822 = !DILocation(line: 842, column: 41, scope: !1819)
!1823 = !DILocation(line: 842, column: 24, scope: !1819)
!1824 = !DILocation(line: 842, column: 51, scope: !1819)
!1825 = !DILocation(line: 842, column: 11, scope: !1820)
!1826 = !DILocation(line: 847, column: 22, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 847, column: 11)
!1828 = !DILocation(line: 847, column: 11, scope: !1820)
!1829 = distinct !{!1829, !1817, !1830, !610}
!1830 = !DILocation(line: 849, column: 5, scope: !1814)
!1831 = !DILocation(line: 0, scope: !1216, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 850, column: 3, scope: !1779)
!1833 = !DILocation(line: 993, column: 19, scope: !1216, inlinedAt: !1832)
!1834 = !DILocation(line: 993, column: 3, scope: !1216, inlinedAt: !1832)
!1835 = !DILocation(line: 0, scope: !1221, inlinedAt: !1832)
!1836 = !DILocation(line: 994, column: 38, scope: !1230, inlinedAt: !1832)
!1837 = !DILocation(line: 994, column: 3, scope: !1221, inlinedAt: !1832)
!1838 = !DILocation(line: 995, column: 18, scope: !1230, inlinedAt: !1832)
!1839 = !DILocation(line: 995, column: 5, scope: !1230, inlinedAt: !1832)
!1840 = !DILocation(line: 994, column: 56, scope: !1230, inlinedAt: !1832)
!1841 = distinct !{!1841, !1837, !1842, !610}
!1842 = !DILocation(line: 995, column: 30, scope: !1221, inlinedAt: !1832)
!1843 = !DILocation(line: 855, column: 34, scope: !1779)
!1844 = !DILocation(line: 855, column: 40, scope: !1779)
!1845 = !DILocation(line: 855, column: 45, scope: !1779)
!1846 = !DILocalVariable(name: "__dest", arg: 1, scope: !1847, file: !1848, line: 34, type: !54)
!1847 = distinct !DISubprogram(name: "memmove", scope: !1848, file: !1848, line: 34, type: !1849, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1851)
!1848 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!54, !54, !761, !57}
!1851 = !{!1846, !1852, !1853}
!1852 = !DILocalVariable(name: "__src", arg: 2, scope: !1847, file: !1848, line: 34, type: !761)
!1853 = !DILocalVariable(name: "__len", arg: 3, scope: !1847, file: !1848, line: 34, type: !57)
!1854 = !DILocation(line: 0, scope: !1847, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 855, column: 3, scope: !1779)
!1856 = !DILocation(line: 36, column: 10, scope: !1847, inlinedAt: !1855)
!1857 = !DILocation(line: 856, column: 24, scope: !1779)
!1858 = !DILocation(line: 856, column: 29, scope: !1779)
!1859 = !DILocation(line: 856, column: 11, scope: !1779)
!1860 = !DILocation(line: 857, column: 8, scope: !1779)
!1861 = !DILocation(line: 861, column: 27, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 861, column: 3)
!1863 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 861, column: 3)
!1864 = !DILocation(line: 861, column: 3, scope: !1863)
!1865 = !DILocation(line: 862, column: 8, scope: !1862)
!1866 = !DILocation(line: 862, column: 13, scope: !1862)
!1867 = distinct !{!1867, !1864, !1868, !610, !1869}
!1868 = !DILocation(line: 862, column: 16, scope: !1863)
!1869 = !{!"llvm.loop.isvectorized", i32 1}
!1870 = !DILocation(line: 861, column: 43, scope: !1862)
!1871 = distinct !{!1871, !1864, !1868, !610, !1869}
!1872 = !DILocation(line: 867, column: 18, scope: !1779)
!1873 = !DILocation(line: 867, column: 43, scope: !1779)
!1874 = !DILocation(line: 867, column: 62, scope: !1779)
!1875 = !DILocation(line: 0, scope: !1847, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 867, column: 3, scope: !1779)
!1877 = !DILocation(line: 36, column: 10, scope: !1847, inlinedAt: !1876)
!1878 = !DILocation(line: 868, column: 29, scope: !1779)
!1879 = !DILocation(line: 868, column: 14, scope: !1779)
!1880 = !DILocation(line: 869, column: 1, scope: !1779)
!1881 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !244, file: !244, line: 50, type: !569, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1882)
!1882 = !{!1883}
!1883 = !DILocalVariable(name: "file", arg: 1, scope: !1881, file: !244, line: 50, type: !60)
!1884 = !DILocation(line: 0, scope: !1881)
!1885 = !DILocation(line: 52, column: 13, scope: !1881)
!1886 = !DILocation(line: 53, column: 1, scope: !1881)
!1887 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !244, file: !244, line: 87, type: !1094, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1888)
!1888 = !{!1889}
!1889 = !DILocalVariable(name: "ignore", arg: 1, scope: !1887, file: !244, line: 87, type: !69)
!1890 = !DILocation(line: 0, scope: !1887)
!1891 = !DILocation(line: 89, column: 16, scope: !1887)
!1892 = !{!1893, !1893, i64 0}
!1893 = !{!"_Bool", !546, i64 0}
!1894 = !DILocation(line: 90, column: 1, scope: !1887)
!1895 = distinct !DISubprogram(name: "close_stdout", scope: !244, file: !244, line: 116, type: !287, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1896)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "write_error", scope: !1898, file: !244, line: 121, type: !60)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !244, line: 120, column: 5)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !244, line: 118, column: 7)
!1900 = !DILocation(line: 118, column: 21, scope: !1899)
!1901 = !DILocation(line: 118, column: 7, scope: !1899)
!1902 = !DILocation(line: 118, column: 29, scope: !1899)
!1903 = !DILocation(line: 119, column: 7, scope: !1899)
!1904 = !DILocation(line: 119, column: 12, scope: !1899)
!1905 = !{i8 0, i8 2}
!1906 = !DILocation(line: 119, column: 25, scope: !1899)
!1907 = !DILocation(line: 119, column: 28, scope: !1899)
!1908 = !DILocation(line: 119, column: 34, scope: !1899)
!1909 = !DILocation(line: 118, column: 7, scope: !1895)
!1910 = !DILocation(line: 121, column: 33, scope: !1898)
!1911 = !DILocation(line: 0, scope: !1898)
!1912 = !DILocation(line: 122, column: 11, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1898, file: !244, line: 122, column: 11)
!1914 = !DILocation(line: 0, scope: !1913)
!1915 = !DILocation(line: 122, column: 11, scope: !1898)
!1916 = !DILocation(line: 123, column: 9, scope: !1913)
!1917 = !DILocation(line: 126, column: 9, scope: !1913)
!1918 = !DILocation(line: 128, column: 14, scope: !1898)
!1919 = !DILocation(line: 128, column: 7, scope: !1898)
!1920 = !DILocation(line: 133, column: 42, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1895, file: !244, line: 133, column: 7)
!1922 = !DILocation(line: 133, column: 28, scope: !1921)
!1923 = !DILocation(line: 133, column: 50, scope: !1921)
!1924 = !DILocation(line: 133, column: 7, scope: !1895)
!1925 = !DILocation(line: 134, column: 12, scope: !1921)
!1926 = !DILocation(line: 134, column: 5, scope: !1921)
!1927 = !DILocation(line: 135, column: 1, scope: !1895)
!1928 = distinct !DISubprogram(name: "verror", scope: !251, file: !251, line: 251, type: !1929, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !55, !55, !60, !259}
!1931 = !{!1932, !1933, !1934, !1935}
!1932 = !DILocalVariable(name: "status", arg: 1, scope: !1928, file: !251, line: 251, type: !55)
!1933 = !DILocalVariable(name: "errnum", arg: 2, scope: !1928, file: !251, line: 251, type: !55)
!1934 = !DILocalVariable(name: "message", arg: 3, scope: !1928, file: !251, line: 251, type: !60)
!1935 = !DILocalVariable(name: "args", arg: 4, scope: !1928, file: !251, line: 251, type: !259)
!1936 = !DILocation(line: 0, scope: !1928)
!1937 = !DILocation(line: 251, column: 1, scope: !1928)
!1938 = !DILocation(line: 261, column: 3, scope: !1928)
!1939 = !DILocation(line: 265, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1928, file: !251, line: 265, column: 7)
!1941 = !DILocation(line: 265, column: 7, scope: !1928)
!1942 = !DILocation(line: 266, column: 5, scope: !1940)
!1943 = !DILocation(line: 272, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !251, line: 268, column: 5)
!1945 = !DILocation(line: 276, column: 3, scope: !1928)
!1946 = !{i64 0, i64 8, !544, i64 8, i64 8, !544, i64 16, i64 8, !544, i64 24, i64 4, !643, i64 28, i64 4, !643}
!1947 = !DILocation(line: 282, column: 1, scope: !1928)
!1948 = distinct !DISubprogram(name: "flush_stdout", scope: !251, file: !251, line: 163, type: !287, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !1949)
!1949 = !{!1950}
!1950 = !DILocalVariable(name: "stdout_fd", scope: !1948, file: !251, line: 166, type: !55)
!1951 = !DILocation(line: 0, scope: !1948)
!1952 = !DILocalVariable(name: "fd", arg: 1, scope: !1953, file: !251, line: 145, type: !55)
!1953 = distinct !DISubprogram(name: "is_open", scope: !251, file: !251, line: 145, type: !1024, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !1954)
!1954 = !{!1952}
!1955 = !DILocation(line: 0, scope: !1953, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 182, column: 25, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1948, file: !251, line: 182, column: 7)
!1958 = !DILocation(line: 157, column: 15, scope: !1953, inlinedAt: !1956)
!1959 = !DILocation(line: 182, column: 25, scope: !1957)
!1960 = !DILocation(line: 182, column: 7, scope: !1948)
!1961 = !DILocation(line: 184, column: 5, scope: !1957)
!1962 = !DILocation(line: 185, column: 1, scope: !1948)
!1963 = distinct !DISubprogram(name: "error_tail", scope: !251, file: !251, line: 219, type: !1929, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !1964)
!1964 = !{!1965, !1966, !1967, !1968}
!1965 = !DILocalVariable(name: "status", arg: 1, scope: !1963, file: !251, line: 219, type: !55)
!1966 = !DILocalVariable(name: "errnum", arg: 2, scope: !1963, file: !251, line: 219, type: !55)
!1967 = !DILocalVariable(name: "message", arg: 3, scope: !1963, file: !251, line: 219, type: !60)
!1968 = !DILocalVariable(name: "args", arg: 4, scope: !1963, file: !251, line: 219, type: !259)
!1969 = !DILocation(line: 0, scope: !1963)
!1970 = !DILocation(line: 219, column: 1, scope: !1963)
!1971 = !DILocation(line: 229, column: 13, scope: !1963)
!1972 = !DILocation(line: 229, column: 3, scope: !1963)
!1973 = !DILocalVariable(name: "__stream", arg: 1, scope: !1974, file: !1975, line: 132, type: !1978)
!1974 = distinct !DISubprogram(name: "vfprintf", scope: !1975, file: !1975, line: 132, type: !1976, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !2013)
!1975 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!55, !1978, !639, !261}
!1978 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1979)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1981, file: !107, line: 51, baseType: !55, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1981, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1981, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1981, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1981, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1981, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1981, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1981, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1981, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1981, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1981, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1981, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1981, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1981, file: !107, line: 70, baseType: !1997, size: 64, offset: 832)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1981, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1981, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1981, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1981, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1981, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1981, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1981, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1981, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1981, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1981, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1981, file: !107, line: 93, baseType: !1997, size: 64, offset: 1344)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1981, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1981, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1981, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1981, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!2013 = !{!1973, !2014, !2015}
!2014 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1974, file: !1975, line: 133, type: !639)
!2015 = !DILocalVariable(name: "__ap", arg: 3, scope: !1974, file: !1975, line: 133, type: !261)
!2016 = !DILocation(line: 0, scope: !1974, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 229, column: 3, scope: !1963)
!2018 = !DILocation(line: 135, column: 10, scope: !1974, inlinedAt: !2017)
!2019 = !{!2020, !2022}
!2020 = distinct !{!2020, !2021, !"vfprintf.inline: argument 0"}
!2021 = distinct !{!2021, !"vfprintf.inline"}
!2022 = distinct !{!2022, !2021, !"vfprintf.inline: argument 1"}
!2023 = !DILocation(line: 232, column: 3, scope: !1963)
!2024 = !DILocation(line: 233, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1963, file: !251, line: 233, column: 7)
!2026 = !DILocation(line: 233, column: 7, scope: !1963)
!2027 = !DILocalVariable(name: "errnum", arg: 1, scope: !2028, file: !251, line: 188, type: !55)
!2028 = distinct !DISubprogram(name: "print_errno_message", scope: !251, file: !251, line: 188, type: !534, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !2029)
!2029 = !{!2027, !2030, !2031}
!2030 = !DILocalVariable(name: "s", scope: !2028, file: !251, line: 190, type: !60)
!2031 = !DILocalVariable(name: "errbuf", scope: !2028, file: !251, line: 193, type: !2032)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8192, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 1024)
!2035 = !DILocation(line: 0, scope: !2028, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 234, column: 5, scope: !2025)
!2037 = !DILocation(line: 193, column: 3, scope: !2028, inlinedAt: !2036)
!2038 = !DILocation(line: 193, column: 8, scope: !2028, inlinedAt: !2036)
!2039 = !DILocation(line: 195, column: 7, scope: !2028, inlinedAt: !2036)
!2040 = !DILocation(line: 207, column: 9, scope: !2041, inlinedAt: !2036)
!2041 = distinct !DILexicalBlock(scope: !2028, file: !251, line: 207, column: 7)
!2042 = !DILocation(line: 207, column: 7, scope: !2028, inlinedAt: !2036)
!2043 = !DILocation(line: 208, column: 9, scope: !2041, inlinedAt: !2036)
!2044 = !DILocation(line: 208, column: 5, scope: !2041, inlinedAt: !2036)
!2045 = !DILocation(line: 214, column: 3, scope: !2028, inlinedAt: !2036)
!2046 = !DILocation(line: 216, column: 1, scope: !2028, inlinedAt: !2036)
!2047 = !DILocation(line: 234, column: 5, scope: !2025)
!2048 = !DILocation(line: 238, column: 3, scope: !1963)
!2049 = !DILocalVariable(name: "__c", arg: 1, scope: !2050, file: !1023, line: 101, type: !55)
!2050 = distinct !DISubprogram(name: "putc_unlocked", scope: !1023, file: !1023, line: 101, type: !2051, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!55, !55, !1979}
!2053 = !{!2049, !2054}
!2054 = !DILocalVariable(name: "__stream", arg: 2, scope: !2050, file: !1023, line: 101, type: !1979)
!2055 = !DILocation(line: 0, scope: !2050, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 238, column: 3, scope: !1963)
!2057 = !DILocation(line: 103, column: 10, scope: !2050, inlinedAt: !2056)
!2058 = !DILocation(line: 240, column: 3, scope: !1963)
!2059 = !DILocation(line: 241, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1963, file: !251, line: 241, column: 7)
!2061 = !DILocation(line: 241, column: 7, scope: !1963)
!2062 = !DILocation(line: 242, column: 5, scope: !2060)
!2063 = !DILocation(line: 243, column: 1, scope: !1963)
!2064 = !DISubprogram(name: "strerror_r", scope: !2065, file: !2065, line: 444, type: !2066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2065 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!52, !55, !52, !57}
!2068 = !DISubprogram(name: "fcntl", scope: !2069, file: !2069, line: 149, type: !2070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2069 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!55, !55, !55, null}
!2072 = distinct !DISubprogram(name: "error", scope: !251, file: !251, line: 285, type: !2073, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !55, !55, !60, null}
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DILocalVariable(name: "status", arg: 1, scope: !2072, file: !251, line: 285, type: !55)
!2077 = !DILocalVariable(name: "errnum", arg: 2, scope: !2072, file: !251, line: 285, type: !55)
!2078 = !DILocalVariable(name: "message", arg: 3, scope: !2072, file: !251, line: 285, type: !60)
!2079 = !DILocalVariable(name: "ap", scope: !2072, file: !251, line: 287, type: !259)
!2080 = !DILocation(line: 0, scope: !2072)
!2081 = !DILocation(line: 287, column: 3, scope: !2072)
!2082 = !DILocation(line: 287, column: 11, scope: !2072)
!2083 = !DILocation(line: 288, column: 3, scope: !2072)
!2084 = !DILocation(line: 289, column: 3, scope: !2072)
!2085 = !DILocation(line: 290, column: 3, scope: !2072)
!2086 = !DILocation(line: 291, column: 1, scope: !2072)
!2087 = !DILocation(line: 0, scope: !256)
!2088 = !DILocation(line: 298, column: 1, scope: !256)
!2089 = !DILocation(line: 302, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !256, file: !251, line: 302, column: 7)
!2091 = !DILocation(line: 302, column: 7, scope: !256)
!2092 = !DILocation(line: 307, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !251, line: 307, column: 11)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !251, line: 303, column: 5)
!2095 = !DILocation(line: 307, column: 27, scope: !2093)
!2096 = !DILocation(line: 308, column: 11, scope: !2093)
!2097 = !DILocation(line: 308, column: 28, scope: !2093)
!2098 = !DILocation(line: 308, column: 25, scope: !2093)
!2099 = !DILocation(line: 309, column: 15, scope: !2093)
!2100 = !DILocation(line: 309, column: 33, scope: !2093)
!2101 = !DILocation(line: 310, column: 19, scope: !2093)
!2102 = !DILocation(line: 311, column: 22, scope: !2093)
!2103 = !DILocation(line: 311, column: 56, scope: !2093)
!2104 = !DILocation(line: 307, column: 11, scope: !2094)
!2105 = !DILocation(line: 316, column: 21, scope: !2094)
!2106 = !DILocation(line: 317, column: 23, scope: !2094)
!2107 = !DILocation(line: 318, column: 5, scope: !2094)
!2108 = !DILocation(line: 327, column: 3, scope: !256)
!2109 = !DILocation(line: 331, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !256, file: !251, line: 331, column: 7)
!2111 = !DILocation(line: 331, column: 7, scope: !256)
!2112 = !DILocation(line: 332, column: 5, scope: !2110)
!2113 = !DILocation(line: 338, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !251, line: 334, column: 5)
!2115 = !DILocation(line: 346, column: 3, scope: !256)
!2116 = !DILocation(line: 350, column: 3, scope: !256)
!2117 = !DILocation(line: 356, column: 1, scope: !256)
!2118 = distinct !DISubprogram(name: "error_at_line", scope: !251, file: !251, line: 359, type: !2119, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !55, !55, !60, !7, !60, null}
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127}
!2122 = !DILocalVariable(name: "status", arg: 1, scope: !2118, file: !251, line: 359, type: !55)
!2123 = !DILocalVariable(name: "errnum", arg: 2, scope: !2118, file: !251, line: 359, type: !55)
!2124 = !DILocalVariable(name: "file_name", arg: 3, scope: !2118, file: !251, line: 359, type: !60)
!2125 = !DILocalVariable(name: "line_number", arg: 4, scope: !2118, file: !251, line: 360, type: !7)
!2126 = !DILocalVariable(name: "message", arg: 5, scope: !2118, file: !251, line: 360, type: !60)
!2127 = !DILocalVariable(name: "ap", scope: !2118, file: !251, line: 362, type: !259)
!2128 = !DILocation(line: 0, scope: !2118)
!2129 = !DILocation(line: 362, column: 3, scope: !2118)
!2130 = !DILocation(line: 362, column: 11, scope: !2118)
!2131 = !DILocation(line: 363, column: 3, scope: !2118)
!2132 = !DILocation(line: 364, column: 3, scope: !2118)
!2133 = !DILocation(line: 366, column: 3, scope: !2118)
!2134 = !DILocation(line: 367, column: 1, scope: !2118)
!2135 = distinct !DISubprogram(name: "fdadvise", scope: !435, file: !435, line: 25, type: !2136, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !2140)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !55, !2138, !2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !260, line: 63, baseType: !129)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !43, line: 51, baseType: !42)
!2140 = !{!2141, !2142, !2143, !2144}
!2141 = !DILocalVariable(name: "fd", arg: 1, scope: !2135, file: !435, line: 25, type: !55)
!2142 = !DILocalVariable(name: "offset", arg: 2, scope: !2135, file: !435, line: 25, type: !2138)
!2143 = !DILocalVariable(name: "len", arg: 3, scope: !2135, file: !435, line: 25, type: !2138)
!2144 = !DILocalVariable(name: "advice", arg: 4, scope: !2135, file: !435, line: 25, type: !2139)
!2145 = !DILocation(line: 0, scope: !2135)
!2146 = !DILocation(line: 28, column: 3, scope: !2135)
!2147 = !DILocation(line: 30, column: 1, scope: !2135)
!2148 = !DISubprogram(name: "posix_fadvise", scope: !2069, file: !2069, line: 273, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!55, !55, !2138, !2138, !55}
!2151 = distinct !DISubprogram(name: "fadvise", scope: !435, file: !435, line: 33, type: !2152, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !2188)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !2154, !2139}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !2156)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !2157)
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2156, file: !107, line: 51, baseType: !55, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2156, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2156, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2156, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2156, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2156, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2156, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2156, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2156, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2156, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2156, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2156, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2156, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2156, file: !107, line: 70, baseType: !2172, size: 64, offset: 832)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2156, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2156, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2156, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2156, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2156, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2156, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2156, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2156, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2156, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2156, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2156, file: !107, line: 93, baseType: !2172, size: 64, offset: 1344)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2156, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2156, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2156, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2156, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!2188 = !{!2189, !2190}
!2189 = !DILocalVariable(name: "fp", arg: 1, scope: !2151, file: !435, line: 33, type: !2154)
!2190 = !DILocalVariable(name: "advice", arg: 2, scope: !2151, file: !435, line: 33, type: !2139)
!2191 = !DILocation(line: 0, scope: !2151)
!2192 = !DILocation(line: 35, column: 7, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2151, file: !435, line: 35, column: 7)
!2194 = !DILocation(line: 35, column: 7, scope: !2151)
!2195 = !DILocation(line: 36, column: 15, scope: !2193)
!2196 = !DILocation(line: 0, scope: !2135, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 36, column: 5, scope: !2193)
!2198 = !DILocation(line: 28, column: 3, scope: !2135, inlinedAt: !2197)
!2199 = !DILocation(line: 36, column: 5, scope: !2193)
!2200 = !DILocation(line: 37, column: 1, scope: !2151)
!2201 = !DISubprogram(name: "fileno", scope: !260, file: !260, line: 809, type: !2202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!55, !2154}
!2204 = distinct !DISubprogram(name: "rpl_fclose", scope: !438, file: !438, line: 58, type: !2205, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !2241)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!55, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !2209)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2209, file: !107, line: 51, baseType: !55, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2209, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2209, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2209, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2209, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2209, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2209, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2209, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2209, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2209, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2209, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2209, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2209, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2209, file: !107, line: 70, baseType: !2225, size: 64, offset: 832)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2209, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2209, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2209, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2209, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2209, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2209, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2209, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2209, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2209, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2209, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2209, file: !107, line: 93, baseType: !2225, size: 64, offset: 1344)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2209, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2209, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2209, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2209, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DILocalVariable(name: "fp", arg: 1, scope: !2204, file: !438, line: 58, type: !2207)
!2243 = !DILocalVariable(name: "saved_errno", scope: !2204, file: !438, line: 60, type: !55)
!2244 = !DILocalVariable(name: "fd", scope: !2204, file: !438, line: 63, type: !55)
!2245 = !DILocalVariable(name: "result", scope: !2204, file: !438, line: 74, type: !55)
!2246 = !DILocation(line: 0, scope: !2204)
!2247 = !DILocation(line: 63, column: 12, scope: !2204)
!2248 = !DILocation(line: 64, column: 10, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2204, file: !438, line: 64, column: 7)
!2250 = !DILocation(line: 64, column: 7, scope: !2204)
!2251 = !DILocation(line: 65, column: 12, scope: !2249)
!2252 = !DILocation(line: 65, column: 5, scope: !2249)
!2253 = !DILocation(line: 70, column: 9, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2204, file: !438, line: 70, column: 7)
!2255 = !DILocation(line: 70, column: 23, scope: !2254)
!2256 = !DILocation(line: 70, column: 33, scope: !2254)
!2257 = !DILocation(line: 70, column: 26, scope: !2254)
!2258 = !DILocation(line: 70, column: 59, scope: !2254)
!2259 = !DILocation(line: 71, column: 7, scope: !2254)
!2260 = !DILocation(line: 71, column: 10, scope: !2254)
!2261 = !DILocation(line: 70, column: 7, scope: !2204)
!2262 = !DILocation(line: 100, column: 12, scope: !2204)
!2263 = !DILocation(line: 105, column: 7, scope: !2204)
!2264 = !DILocation(line: 72, column: 19, scope: !2254)
!2265 = !DILocation(line: 105, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2204, file: !438, line: 105, column: 7)
!2267 = !DILocation(line: 107, column: 13, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2266, file: !438, line: 106, column: 5)
!2269 = !DILocation(line: 109, column: 5, scope: !2268)
!2270 = !DILocation(line: 112, column: 1, scope: !2204)
!2271 = !DISubprogram(name: "fclose", scope: !260, file: !260, line: 178, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2272 = !DISubprogram(name: "lseek", scope: !2273, file: !2273, line: 339, type: !2274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2273 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!129, !55, !129, !55}
!2276 = distinct !DISubprogram(name: "rpl_fflush", scope: !440, file: !440, line: 130, type: !2277, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !2313)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!55, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2281, file: !107, line: 51, baseType: !55, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2281, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2281, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2281, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2281, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2281, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2281, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2281, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2281, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2281, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2281, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2281, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2281, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2281, file: !107, line: 70, baseType: !2297, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2281, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2281, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2281, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2281, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2281, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2281, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2281, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2281, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2281, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2281, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2281, file: !107, line: 93, baseType: !2297, size: 64, offset: 1344)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2281, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2281, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2281, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2281, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "stream", arg: 1, scope: !2276, file: !440, line: 130, type: !2279)
!2315 = !DILocation(line: 0, scope: !2276)
!2316 = !DILocation(line: 151, column: 14, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2276, file: !440, line: 151, column: 7)
!2318 = !DILocation(line: 151, column: 22, scope: !2317)
!2319 = !DILocation(line: 151, column: 27, scope: !2317)
!2320 = !DILocation(line: 151, column: 7, scope: !2276)
!2321 = !DILocation(line: 152, column: 12, scope: !2317)
!2322 = !DILocation(line: 152, column: 5, scope: !2317)
!2323 = !DILocalVariable(name: "fp", arg: 1, scope: !2324, file: !440, line: 42, type: !2279)
!2324 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !440, file: !440, line: 42, type: !2325, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2279}
!2327 = !{!2323}
!2328 = !DILocation(line: 0, scope: !2324, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 157, column: 3, scope: !2276)
!2330 = !DILocation(line: 44, column: 12, scope: !2331, inlinedAt: !2329)
!2331 = distinct !DILexicalBlock(scope: !2324, file: !440, line: 44, column: 7)
!2332 = !DILocation(line: 44, column: 19, scope: !2331, inlinedAt: !2329)
!2333 = !DILocation(line: 44, column: 7, scope: !2324, inlinedAt: !2329)
!2334 = !DILocation(line: 46, column: 5, scope: !2331, inlinedAt: !2329)
!2335 = !DILocation(line: 159, column: 10, scope: !2276)
!2336 = !DILocation(line: 159, column: 3, scope: !2276)
!2337 = !DILocation(line: 236, column: 1, scope: !2276)
!2338 = !DISubprogram(name: "fflush", scope: !260, file: !260, line: 230, type: !2277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2339 = distinct !DISubprogram(name: "fpurge", scope: !443, file: !443, line: 32, type: !2340, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2376)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!55, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2344, file: !107, line: 51, baseType: !55, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2344, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2344, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2344, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2344, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2344, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2344, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2344, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2344, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2344, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2344, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2344, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2344, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2344, file: !107, line: 70, baseType: !2360, size: 64, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2344, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2344, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2344, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2344, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2344, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2344, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2344, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2344, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2344, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2344, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2344, file: !107, line: 93, baseType: !2360, size: 64, offset: 1344)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2344, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2344, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2344, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2344, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!2376 = !{!2377}
!2377 = !DILocalVariable(name: "fp", arg: 1, scope: !2339, file: !443, line: 32, type: !2342)
!2378 = !DILocation(line: 0, scope: !2339)
!2379 = !DILocation(line: 36, column: 3, scope: !2339)
!2380 = !DILocation(line: 38, column: 3, scope: !2339)
!2381 = distinct !DISubprogram(name: "rpl_fseeko", scope: !445, file: !445, line: 28, type: !2382, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2418)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!55, !2384, !2138, !55}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !2386)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2386, file: !107, line: 51, baseType: !55, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2386, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2386, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2386, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2386, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2386, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2386, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2386, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2386, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2386, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2386, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2386, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2386, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2386, file: !107, line: 70, baseType: !2402, size: 64, offset: 832)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2386, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2386, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2386, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2386, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2386, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2386, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2386, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2386, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2386, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2386, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2386, file: !107, line: 93, baseType: !2402, size: 64, offset: 1344)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2386, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2386, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2386, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2386, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!2418 = !{!2419, !2420, !2421, !2422}
!2419 = !DILocalVariable(name: "fp", arg: 1, scope: !2381, file: !445, line: 28, type: !2384)
!2420 = !DILocalVariable(name: "offset", arg: 2, scope: !2381, file: !445, line: 28, type: !2138)
!2421 = !DILocalVariable(name: "whence", arg: 3, scope: !2381, file: !445, line: 28, type: !55)
!2422 = !DILocalVariable(name: "pos", scope: !2423, file: !445, line: 123, type: !2138)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !445, line: 119, column: 5)
!2424 = distinct !DILexicalBlock(scope: !2381, file: !445, line: 55, column: 7)
!2425 = !DILocation(line: 0, scope: !2381)
!2426 = !DILocation(line: 55, column: 12, scope: !2424)
!2427 = !DILocation(line: 55, column: 33, scope: !2424)
!2428 = !DILocation(line: 55, column: 25, scope: !2424)
!2429 = !DILocation(line: 56, column: 7, scope: !2424)
!2430 = !DILocation(line: 56, column: 15, scope: !2424)
!2431 = !DILocation(line: 56, column: 37, scope: !2424)
!2432 = !{!1031, !545, i64 32}
!2433 = !DILocation(line: 56, column: 29, scope: !2424)
!2434 = !DILocation(line: 57, column: 7, scope: !2424)
!2435 = !DILocation(line: 57, column: 15, scope: !2424)
!2436 = !{!1031, !545, i64 72}
!2437 = !DILocation(line: 57, column: 29, scope: !2424)
!2438 = !DILocation(line: 55, column: 7, scope: !2381)
!2439 = !DILocation(line: 123, column: 26, scope: !2423)
!2440 = !DILocation(line: 123, column: 19, scope: !2423)
!2441 = !DILocation(line: 0, scope: !2423)
!2442 = !DILocation(line: 124, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2423, file: !445, line: 124, column: 11)
!2444 = !DILocation(line: 124, column: 11, scope: !2423)
!2445 = !DILocation(line: 135, column: 12, scope: !2423)
!2446 = !DILocation(line: 135, column: 19, scope: !2423)
!2447 = !DILocation(line: 136, column: 12, scope: !2423)
!2448 = !DILocation(line: 136, column: 20, scope: !2423)
!2449 = !{!1031, !1032, i64 144}
!2450 = !DILocation(line: 167, column: 7, scope: !2423)
!2451 = !DILocation(line: 169, column: 10, scope: !2381)
!2452 = !DILocation(line: 169, column: 3, scope: !2381)
!2453 = !DILocation(line: 170, column: 1, scope: !2381)
!2454 = !DISubprogram(name: "fseeko", scope: !260, file: !260, line: 736, type: !2455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!55, !2384, !129, !55}
!2457 = distinct !DISubprogram(name: "getprogname", scope: !447, file: !447, line: 54, type: !2458, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !553)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!60}
!2460 = !DILocation(line: 58, column: 10, scope: !2457)
!2461 = !DILocation(line: 58, column: 3, scope: !2457)
!2462 = distinct !DISubprogram(name: "set_program_name", scope: !292, file: !292, line: 37, type: !569, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2463)
!2463 = !{!2464, !2465, !2466}
!2464 = !DILocalVariable(name: "argv0", arg: 1, scope: !2462, file: !292, line: 37, type: !60)
!2465 = !DILocalVariable(name: "slash", scope: !2462, file: !292, line: 44, type: !60)
!2466 = !DILocalVariable(name: "base", scope: !2462, file: !292, line: 45, type: !60)
!2467 = !DILocation(line: 0, scope: !2462)
!2468 = !DILocation(line: 44, column: 23, scope: !2462)
!2469 = !DILocation(line: 45, column: 22, scope: !2462)
!2470 = !DILocation(line: 46, column: 17, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2462, file: !292, line: 46, column: 7)
!2472 = !DILocation(line: 46, column: 9, scope: !2471)
!2473 = !DILocation(line: 46, column: 25, scope: !2471)
!2474 = !DILocation(line: 46, column: 40, scope: !2471)
!2475 = !DILocalVariable(name: "__s1", arg: 1, scope: !2476, file: !594, line: 974, type: !761)
!2476 = distinct !DISubprogram(name: "memeq", scope: !594, file: !594, line: 974, type: !2477, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!69, !761, !761, !57}
!2479 = !{!2475, !2480, !2481}
!2480 = !DILocalVariable(name: "__s2", arg: 2, scope: !2476, file: !594, line: 974, type: !761)
!2481 = !DILocalVariable(name: "__n", arg: 3, scope: !2476, file: !594, line: 974, type: !57)
!2482 = !DILocation(line: 0, scope: !2476, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 46, column: 28, scope: !2471)
!2484 = !DILocation(line: 976, column: 11, scope: !2476, inlinedAt: !2483)
!2485 = !DILocation(line: 976, column: 10, scope: !2476, inlinedAt: !2483)
!2486 = !DILocation(line: 46, column: 7, scope: !2462)
!2487 = !DILocation(line: 49, column: 11, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !292, line: 49, column: 11)
!2489 = distinct !DILexicalBlock(scope: !2471, file: !292, line: 47, column: 5)
!2490 = !DILocation(line: 49, column: 36, scope: !2488)
!2491 = !DILocation(line: 49, column: 11, scope: !2489)
!2492 = !DILocation(line: 65, column: 16, scope: !2462)
!2493 = !DILocation(line: 71, column: 27, scope: !2462)
!2494 = !DILocation(line: 74, column: 33, scope: !2462)
!2495 = !DILocation(line: 76, column: 1, scope: !2462)
!2496 = !DILocation(line: 0, scope: !297)
!2497 = !DILocation(line: 40, column: 29, scope: !297)
!2498 = !DILocation(line: 41, column: 19, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !297, file: !298, line: 41, column: 7)
!2500 = !DILocation(line: 41, column: 7, scope: !297)
!2501 = !DILocation(line: 47, column: 3, scope: !297)
!2502 = !DILocation(line: 48, column: 3, scope: !297)
!2503 = !DILocation(line: 48, column: 13, scope: !297)
!2504 = !DILocalVariable(name: "ps", arg: 1, scope: !2505, file: !2506, line: 1135, type: !2509)
!2505 = distinct !DISubprogram(name: "mbszero", scope: !2506, file: !2506, line: 1135, type: !2507, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !301, retainedNodes: !2510)
!2506 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2510 = !{!2504}
!2511 = !DILocation(line: 0, scope: !2505, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 48, column: 18, scope: !297)
!2513 = !DILocalVariable(name: "__dest", arg: 1, scope: !2514, file: !1848, line: 57, type: !54)
!2514 = distinct !DISubprogram(name: "memset", scope: !1848, file: !1848, line: 57, type: !2515, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !301, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!54, !54, !55, !57}
!2517 = !{!2513, !2518, !2519}
!2518 = !DILocalVariable(name: "__ch", arg: 2, scope: !2514, file: !1848, line: 57, type: !55)
!2519 = !DILocalVariable(name: "__len", arg: 3, scope: !2514, file: !1848, line: 57, type: !57)
!2520 = !DILocation(line: 0, scope: !2514, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 1137, column: 3, scope: !2505, inlinedAt: !2512)
!2522 = !DILocation(line: 59, column: 10, scope: !2514, inlinedAt: !2521)
!2523 = !DILocation(line: 49, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !297, file: !298, line: 49, column: 7)
!2525 = !DILocation(line: 49, column: 39, scope: !2524)
!2526 = !DILocation(line: 49, column: 44, scope: !2524)
!2527 = !DILocation(line: 54, column: 1, scope: !297)
!2528 = !DISubprogram(name: "mbrtoc32", scope: !309, file: !309, line: 57, type: !2529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!57, !2531, !639, !57, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2532)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2509)
!2534 = distinct !DISubprogram(name: "clone_quoting_options", scope: !334, file: !334, line: 113, type: !2535, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2538)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!2537, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2538 = !{!2539, !2540, !2541}
!2539 = !DILocalVariable(name: "o", arg: 1, scope: !2534, file: !334, line: 113, type: !2537)
!2540 = !DILocalVariable(name: "saved_errno", scope: !2534, file: !334, line: 115, type: !55)
!2541 = !DILocalVariable(name: "p", scope: !2534, file: !334, line: 116, type: !2537)
!2542 = !DILocation(line: 0, scope: !2534)
!2543 = !DILocation(line: 115, column: 21, scope: !2534)
!2544 = !DILocation(line: 116, column: 40, scope: !2534)
!2545 = !DILocation(line: 116, column: 31, scope: !2534)
!2546 = !DILocation(line: 118, column: 9, scope: !2534)
!2547 = !DILocation(line: 119, column: 3, scope: !2534)
!2548 = distinct !DISubprogram(name: "get_quoting_style", scope: !334, file: !334, line: 124, type: !2549, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2553)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!13, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2553 = !{!2554}
!2554 = !DILocalVariable(name: "o", arg: 1, scope: !2548, file: !334, line: 124, type: !2551)
!2555 = !DILocation(line: 0, scope: !2548)
!2556 = !DILocation(line: 126, column: 11, scope: !2548)
!2557 = !DILocation(line: 126, column: 46, scope: !2548)
!2558 = !{!2559, !546, i64 0}
!2559 = !{!"quoting_options", !546, i64 0, !644, i64 4, !546, i64 8, !545, i64 40, !545, i64 48}
!2560 = !DILocation(line: 126, column: 3, scope: !2548)
!2561 = distinct !DISubprogram(name: "set_quoting_style", scope: !334, file: !334, line: 132, type: !2562, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2537, !13}
!2564 = !{!2565, !2566}
!2565 = !DILocalVariable(name: "o", arg: 1, scope: !2561, file: !334, line: 132, type: !2537)
!2566 = !DILocalVariable(name: "s", arg: 2, scope: !2561, file: !334, line: 132, type: !13)
!2567 = !DILocation(line: 0, scope: !2561)
!2568 = !DILocation(line: 134, column: 4, scope: !2561)
!2569 = !DILocation(line: 134, column: 39, scope: !2561)
!2570 = !DILocation(line: 134, column: 45, scope: !2561)
!2571 = !DILocation(line: 135, column: 1, scope: !2561)
!2572 = distinct !DISubprogram(name: "set_char_quoting", scope: !334, file: !334, line: 143, type: !2573, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!55, !2537, !53, !55}
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2582, !2583}
!2576 = !DILocalVariable(name: "o", arg: 1, scope: !2572, file: !334, line: 143, type: !2537)
!2577 = !DILocalVariable(name: "c", arg: 2, scope: !2572, file: !334, line: 143, type: !53)
!2578 = !DILocalVariable(name: "i", arg: 3, scope: !2572, file: !334, line: 143, type: !55)
!2579 = !DILocalVariable(name: "uc", scope: !2572, file: !334, line: 145, type: !62)
!2580 = !DILocalVariable(name: "p", scope: !2572, file: !334, line: 146, type: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2582 = !DILocalVariable(name: "shift", scope: !2572, file: !334, line: 148, type: !55)
!2583 = !DILocalVariable(name: "r", scope: !2572, file: !334, line: 149, type: !7)
!2584 = !DILocation(line: 0, scope: !2572)
!2585 = !DILocation(line: 147, column: 6, scope: !2572)
!2586 = !DILocation(line: 147, column: 62, scope: !2572)
!2587 = !DILocation(line: 147, column: 57, scope: !2572)
!2588 = !DILocation(line: 148, column: 15, scope: !2572)
!2589 = !DILocation(line: 149, column: 21, scope: !2572)
!2590 = !DILocation(line: 149, column: 24, scope: !2572)
!2591 = !DILocation(line: 149, column: 34, scope: !2572)
!2592 = !DILocation(line: 150, column: 13, scope: !2572)
!2593 = !DILocation(line: 150, column: 19, scope: !2572)
!2594 = !DILocation(line: 150, column: 24, scope: !2572)
!2595 = !DILocation(line: 150, column: 6, scope: !2572)
!2596 = !DILocation(line: 151, column: 3, scope: !2572)
!2597 = distinct !DISubprogram(name: "set_quoting_flags", scope: !334, file: !334, line: 159, type: !2598, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!55, !2537, !55}
!2600 = !{!2601, !2602, !2603}
!2601 = !DILocalVariable(name: "o", arg: 1, scope: !2597, file: !334, line: 159, type: !2537)
!2602 = !DILocalVariable(name: "i", arg: 2, scope: !2597, file: !334, line: 159, type: !55)
!2603 = !DILocalVariable(name: "r", scope: !2597, file: !334, line: 163, type: !55)
!2604 = !DILocation(line: 0, scope: !2597)
!2605 = !DILocation(line: 161, column: 8, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2597, file: !334, line: 161, column: 7)
!2607 = !DILocation(line: 161, column: 7, scope: !2597)
!2608 = !DILocation(line: 163, column: 14, scope: !2597)
!2609 = !{!2559, !644, i64 4}
!2610 = !DILocation(line: 164, column: 12, scope: !2597)
!2611 = !DILocation(line: 165, column: 3, scope: !2597)
!2612 = distinct !DISubprogram(name: "set_custom_quoting", scope: !334, file: !334, line: 169, type: !2613, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !2537, !60, !60}
!2615 = !{!2616, !2617, !2618}
!2616 = !DILocalVariable(name: "o", arg: 1, scope: !2612, file: !334, line: 169, type: !2537)
!2617 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2612, file: !334, line: 170, type: !60)
!2618 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2612, file: !334, line: 170, type: !60)
!2619 = !DILocation(line: 0, scope: !2612)
!2620 = !DILocation(line: 172, column: 8, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2612, file: !334, line: 172, column: 7)
!2622 = !DILocation(line: 172, column: 7, scope: !2612)
!2623 = !DILocation(line: 174, column: 6, scope: !2612)
!2624 = !DILocation(line: 174, column: 12, scope: !2612)
!2625 = !DILocation(line: 175, column: 8, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2612, file: !334, line: 175, column: 7)
!2627 = !DILocation(line: 175, column: 19, scope: !2626)
!2628 = !DILocation(line: 176, column: 5, scope: !2626)
!2629 = !DILocation(line: 177, column: 6, scope: !2612)
!2630 = !DILocation(line: 177, column: 17, scope: !2612)
!2631 = !{!2559, !545, i64 40}
!2632 = !DILocation(line: 178, column: 6, scope: !2612)
!2633 = !DILocation(line: 178, column: 18, scope: !2612)
!2634 = !{!2559, !545, i64 48}
!2635 = !DILocation(line: 179, column: 1, scope: !2612)
!2636 = distinct !DISubprogram(name: "quotearg_buffer", scope: !334, file: !334, line: 774, type: !2637, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!57, !52, !57, !60, !57, !2551}
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2640 = !DILocalVariable(name: "buffer", arg: 1, scope: !2636, file: !334, line: 774, type: !52)
!2641 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2636, file: !334, line: 774, type: !57)
!2642 = !DILocalVariable(name: "arg", arg: 3, scope: !2636, file: !334, line: 775, type: !60)
!2643 = !DILocalVariable(name: "argsize", arg: 4, scope: !2636, file: !334, line: 775, type: !57)
!2644 = !DILocalVariable(name: "o", arg: 5, scope: !2636, file: !334, line: 776, type: !2551)
!2645 = !DILocalVariable(name: "p", scope: !2636, file: !334, line: 778, type: !2551)
!2646 = !DILocalVariable(name: "saved_errno", scope: !2636, file: !334, line: 779, type: !55)
!2647 = !DILocalVariable(name: "r", scope: !2636, file: !334, line: 780, type: !57)
!2648 = !DILocation(line: 0, scope: !2636)
!2649 = !DILocation(line: 778, column: 37, scope: !2636)
!2650 = !DILocation(line: 779, column: 21, scope: !2636)
!2651 = !DILocation(line: 781, column: 43, scope: !2636)
!2652 = !DILocation(line: 781, column: 53, scope: !2636)
!2653 = !DILocation(line: 781, column: 60, scope: !2636)
!2654 = !DILocation(line: 782, column: 43, scope: !2636)
!2655 = !DILocation(line: 782, column: 58, scope: !2636)
!2656 = !DILocation(line: 780, column: 14, scope: !2636)
!2657 = !DILocation(line: 783, column: 9, scope: !2636)
!2658 = !DILocation(line: 784, column: 3, scope: !2636)
!2659 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !334, file: !334, line: 251, type: !2660, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2664)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!57, !52, !57, !60, !57, !13, !55, !2662, !60, !60}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2689, !2691, !2694, !2695, !2696, !2697, !2700, !2701, !2704, !2708, !2709, !2717, !2720, !2721, !2723, !2724, !2725, !2726}
!2665 = !DILocalVariable(name: "buffer", arg: 1, scope: !2659, file: !334, line: 251, type: !52)
!2666 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2659, file: !334, line: 251, type: !57)
!2667 = !DILocalVariable(name: "arg", arg: 3, scope: !2659, file: !334, line: 252, type: !60)
!2668 = !DILocalVariable(name: "argsize", arg: 4, scope: !2659, file: !334, line: 252, type: !57)
!2669 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2659, file: !334, line: 253, type: !13)
!2670 = !DILocalVariable(name: "flags", arg: 6, scope: !2659, file: !334, line: 253, type: !55)
!2671 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2659, file: !334, line: 254, type: !2662)
!2672 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2659, file: !334, line: 255, type: !60)
!2673 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2659, file: !334, line: 256, type: !60)
!2674 = !DILocalVariable(name: "unibyte_locale", scope: !2659, file: !334, line: 258, type: !69)
!2675 = !DILocalVariable(name: "len", scope: !2659, file: !334, line: 260, type: !57)
!2676 = !DILocalVariable(name: "orig_buffersize", scope: !2659, file: !334, line: 261, type: !57)
!2677 = !DILocalVariable(name: "quote_string", scope: !2659, file: !334, line: 262, type: !60)
!2678 = !DILocalVariable(name: "quote_string_len", scope: !2659, file: !334, line: 263, type: !57)
!2679 = !DILocalVariable(name: "backslash_escapes", scope: !2659, file: !334, line: 264, type: !69)
!2680 = !DILocalVariable(name: "elide_outer_quotes", scope: !2659, file: !334, line: 265, type: !69)
!2681 = !DILocalVariable(name: "encountered_single_quote", scope: !2659, file: !334, line: 266, type: !69)
!2682 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2659, file: !334, line: 267, type: !69)
!2683 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2659, file: !334, line: 309, type: !69)
!2684 = !DILocalVariable(name: "lq", scope: !2685, file: !334, line: 361, type: !60)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !334, line: 361, column: 11)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !334, line: 360, column: 13)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !334, line: 333, column: 7)
!2688 = distinct !DILexicalBlock(scope: !2659, file: !334, line: 312, column: 5)
!2689 = !DILocalVariable(name: "i", scope: !2690, file: !334, line: 395, type: !57)
!2690 = distinct !DILexicalBlock(scope: !2659, file: !334, line: 395, column: 3)
!2691 = !DILocalVariable(name: "is_right_quote", scope: !2692, file: !334, line: 397, type: !69)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !334, line: 396, column: 5)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !334, line: 395, column: 3)
!2694 = !DILocalVariable(name: "escaping", scope: !2692, file: !334, line: 398, type: !69)
!2695 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2692, file: !334, line: 399, type: !69)
!2696 = !DILocalVariable(name: "c", scope: !2692, file: !334, line: 417, type: !62)
!2697 = !DILocalVariable(name: "m", scope: !2698, file: !334, line: 598, type: !57)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 596, column: 11)
!2699 = distinct !DILexicalBlock(scope: !2692, file: !334, line: 419, column: 9)
!2700 = !DILocalVariable(name: "printable", scope: !2698, file: !334, line: 600, type: !69)
!2701 = !DILocalVariable(name: "mbs", scope: !2702, file: !334, line: 609, type: !377)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !334, line: 608, column: 15)
!2703 = distinct !DILexicalBlock(scope: !2698, file: !334, line: 602, column: 17)
!2704 = !DILocalVariable(name: "w", scope: !2705, file: !334, line: 618, type: !308)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !334, line: 617, column: 19)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !334, line: 616, column: 17)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !334, line: 616, column: 17)
!2708 = !DILocalVariable(name: "bytes", scope: !2705, file: !334, line: 619, type: !57)
!2709 = !DILocalVariable(name: "j", scope: !2710, file: !334, line: 648, type: !57)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !334, line: 648, column: 29)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !334, line: 647, column: 27)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !334, line: 645, column: 29)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !334, line: 636, column: 23)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !334, line: 628, column: 30)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !334, line: 623, column: 30)
!2716 = distinct !DILexicalBlock(scope: !2705, file: !334, line: 621, column: 25)
!2717 = !DILocalVariable(name: "ilim", scope: !2718, file: !334, line: 674, type: !57)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !334, line: 671, column: 15)
!2719 = distinct !DILexicalBlock(scope: !2698, file: !334, line: 670, column: 17)
!2720 = !DILabel(scope: !2659, name: "process_input", file: !334, line: 308)
!2721 = !DILabel(scope: !2722, name: "c_and_shell_escape", file: !334, line: 502)
!2722 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 478, column: 9)
!2723 = !DILabel(scope: !2722, name: "c_escape", file: !334, line: 507)
!2724 = !DILabel(scope: !2692, name: "store_escape", file: !334, line: 709)
!2725 = !DILabel(scope: !2692, name: "store_c", file: !334, line: 712)
!2726 = !DILabel(scope: !2659, name: "force_outer_quoting_style", file: !334, line: 753)
!2727 = !DILocation(line: 0, scope: !2659)
!2728 = !DILocation(line: 258, column: 25, scope: !2659)
!2729 = !DILocation(line: 258, column: 36, scope: !2659)
!2730 = !DILocation(line: 267, column: 3, scope: !2659)
!2731 = !DILocation(line: 261, column: 10, scope: !2659)
!2732 = !DILocation(line: 262, column: 15, scope: !2659)
!2733 = !DILocation(line: 263, column: 10, scope: !2659)
!2734 = !DILocation(line: 308, column: 2, scope: !2659)
!2735 = !DILocation(line: 311, column: 3, scope: !2659)
!2736 = !DILocation(line: 318, column: 11, scope: !2688)
!2737 = !DILocation(line: 319, column: 9, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !334, line: 319, column: 9)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !334, line: 319, column: 9)
!2740 = distinct !DILexicalBlock(scope: !2688, file: !334, line: 318, column: 11)
!2741 = !DILocation(line: 319, column: 9, scope: !2739)
!2742 = !DILocation(line: 0, scope: !368, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 357, column: 26, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !334, line: 335, column: 11)
!2745 = distinct !DILexicalBlock(scope: !2687, file: !334, line: 334, column: 13)
!2746 = !DILocation(line: 199, column: 29, scope: !368, inlinedAt: !2743)
!2747 = !DILocation(line: 201, column: 19, scope: !2748, inlinedAt: !2743)
!2748 = distinct !DILexicalBlock(scope: !368, file: !334, line: 201, column: 7)
!2749 = !DILocation(line: 201, column: 7, scope: !368, inlinedAt: !2743)
!2750 = !DILocation(line: 229, column: 3, scope: !368, inlinedAt: !2743)
!2751 = !DILocation(line: 230, column: 3, scope: !368, inlinedAt: !2743)
!2752 = !DILocation(line: 230, column: 13, scope: !368, inlinedAt: !2743)
!2753 = !DILocalVariable(name: "ps", arg: 1, scope: !2754, file: !2506, line: 1135, type: !2757)
!2754 = distinct !DISubprogram(name: "mbszero", scope: !2506, file: !2506, line: 1135, type: !2755, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2758)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2758 = !{!2753}
!2759 = !DILocation(line: 0, scope: !2754, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 230, column: 18, scope: !368, inlinedAt: !2743)
!2761 = !DILocalVariable(name: "__dest", arg: 1, scope: !2762, file: !1848, line: 57, type: !54)
!2762 = distinct !DISubprogram(name: "memset", scope: !1848, file: !1848, line: 57, type: !2515, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2763)
!2763 = !{!2761, !2764, !2765}
!2764 = !DILocalVariable(name: "__ch", arg: 2, scope: !2762, file: !1848, line: 57, type: !55)
!2765 = !DILocalVariable(name: "__len", arg: 3, scope: !2762, file: !1848, line: 57, type: !57)
!2766 = !DILocation(line: 0, scope: !2762, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1137, column: 3, scope: !2754, inlinedAt: !2760)
!2768 = !DILocation(line: 59, column: 10, scope: !2762, inlinedAt: !2767)
!2769 = !DILocation(line: 231, column: 7, scope: !2770, inlinedAt: !2743)
!2770 = distinct !DILexicalBlock(scope: !368, file: !334, line: 231, column: 7)
!2771 = !DILocation(line: 231, column: 40, scope: !2770, inlinedAt: !2743)
!2772 = !DILocation(line: 231, column: 45, scope: !2770, inlinedAt: !2743)
!2773 = !DILocation(line: 235, column: 1, scope: !368, inlinedAt: !2743)
!2774 = !DILocation(line: 0, scope: !368, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 358, column: 27, scope: !2744)
!2776 = !DILocation(line: 199, column: 29, scope: !368, inlinedAt: !2775)
!2777 = !DILocation(line: 201, column: 19, scope: !2748, inlinedAt: !2775)
!2778 = !DILocation(line: 201, column: 7, scope: !368, inlinedAt: !2775)
!2779 = !DILocation(line: 229, column: 3, scope: !368, inlinedAt: !2775)
!2780 = !DILocation(line: 230, column: 3, scope: !368, inlinedAt: !2775)
!2781 = !DILocation(line: 230, column: 13, scope: !368, inlinedAt: !2775)
!2782 = !DILocation(line: 0, scope: !2754, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 230, column: 18, scope: !368, inlinedAt: !2775)
!2784 = !DILocation(line: 0, scope: !2762, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 1137, column: 3, scope: !2754, inlinedAt: !2783)
!2786 = !DILocation(line: 59, column: 10, scope: !2762, inlinedAt: !2785)
!2787 = !DILocation(line: 231, column: 7, scope: !2770, inlinedAt: !2775)
!2788 = !DILocation(line: 231, column: 40, scope: !2770, inlinedAt: !2775)
!2789 = !DILocation(line: 231, column: 45, scope: !2770, inlinedAt: !2775)
!2790 = !DILocation(line: 235, column: 1, scope: !368, inlinedAt: !2775)
!2791 = !DILocation(line: 360, column: 13, scope: !2687)
!2792 = !DILocation(line: 0, scope: !2685)
!2793 = !DILocation(line: 361, column: 45, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2685, file: !334, line: 361, column: 11)
!2795 = !DILocation(line: 361, column: 11, scope: !2685)
!2796 = !DILocation(line: 362, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !334, line: 362, column: 13)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !334, line: 362, column: 13)
!2799 = !DILocation(line: 362, column: 13, scope: !2798)
!2800 = !DILocation(line: 361, column: 52, scope: !2794)
!2801 = distinct !{!2801, !2795, !2802, !610}
!2802 = !DILocation(line: 362, column: 13, scope: !2685)
!2803 = !DILocation(line: 260, column: 10, scope: !2659)
!2804 = !DILocation(line: 365, column: 28, scope: !2687)
!2805 = !DILocation(line: 367, column: 7, scope: !2688)
!2806 = !DILocation(line: 370, column: 7, scope: !2688)
!2807 = !DILocation(line: 376, column: 11, scope: !2688)
!2808 = !DILocation(line: 381, column: 11, scope: !2688)
!2809 = !DILocation(line: 382, column: 9, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !334, line: 382, column: 9)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !334, line: 382, column: 9)
!2812 = distinct !DILexicalBlock(scope: !2688, file: !334, line: 381, column: 11)
!2813 = !DILocation(line: 382, column: 9, scope: !2811)
!2814 = !DILocation(line: 389, column: 7, scope: !2688)
!2815 = !DILocation(line: 392, column: 7, scope: !2688)
!2816 = !DILocation(line: 0, scope: !2690)
!2817 = !DILocation(line: 395, column: 8, scope: !2690)
!2818 = !DILocation(line: 395, column: 34, scope: !2693)
!2819 = !DILocation(line: 395, column: 26, scope: !2693)
!2820 = !DILocation(line: 395, column: 48, scope: !2693)
!2821 = !DILocation(line: 395, column: 55, scope: !2693)
!2822 = !DILocation(line: 395, column: 3, scope: !2690)
!2823 = !DILocation(line: 395, column: 67, scope: !2693)
!2824 = !DILocation(line: 0, scope: !2692)
!2825 = !DILocation(line: 402, column: 11, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2692, file: !334, line: 401, column: 11)
!2827 = !DILocation(line: 404, column: 17, scope: !2826)
!2828 = !DILocation(line: 405, column: 39, scope: !2826)
!2829 = !DILocation(line: 409, column: 32, scope: !2826)
!2830 = !DILocation(line: 405, column: 19, scope: !2826)
!2831 = !DILocation(line: 405, column: 15, scope: !2826)
!2832 = !DILocation(line: 410, column: 11, scope: !2826)
!2833 = !DILocation(line: 410, column: 25, scope: !2826)
!2834 = !DILocalVariable(name: "__s1", arg: 1, scope: !2835, file: !594, line: 974, type: !761)
!2835 = distinct !DISubprogram(name: "memeq", scope: !594, file: !594, line: 974, type: !2477, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !2836)
!2836 = !{!2834, !2837, !2838}
!2837 = !DILocalVariable(name: "__s2", arg: 2, scope: !2835, file: !594, line: 974, type: !761)
!2838 = !DILocalVariable(name: "__n", arg: 3, scope: !2835, file: !594, line: 974, type: !57)
!2839 = !DILocation(line: 0, scope: !2835, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 410, column: 14, scope: !2826)
!2841 = !DILocation(line: 976, column: 11, scope: !2835, inlinedAt: !2840)
!2842 = !DILocation(line: 976, column: 10, scope: !2835, inlinedAt: !2840)
!2843 = !DILocation(line: 401, column: 11, scope: !2692)
!2844 = !DILocation(line: 417, column: 25, scope: !2692)
!2845 = !DILocation(line: 418, column: 7, scope: !2692)
!2846 = !DILocation(line: 421, column: 15, scope: !2699)
!2847 = !DILocation(line: 423, column: 15, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !334, line: 423, column: 15)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !334, line: 422, column: 13)
!2850 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 421, column: 15)
!2851 = !DILocation(line: 423, column: 15, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !334, line: 423, column: 15)
!2853 = !DILocation(line: 423, column: 15, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !334, line: 423, column: 15)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !334, line: 423, column: 15)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !334, line: 423, column: 15)
!2857 = !DILocation(line: 423, column: 15, scope: !2855)
!2858 = !DILocation(line: 423, column: 15, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !334, line: 423, column: 15)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !334, line: 423, column: 15)
!2861 = !DILocation(line: 423, column: 15, scope: !2860)
!2862 = !DILocation(line: 423, column: 15, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !334, line: 423, column: 15)
!2864 = distinct !DILexicalBlock(scope: !2856, file: !334, line: 423, column: 15)
!2865 = !DILocation(line: 423, column: 15, scope: !2864)
!2866 = !DILocation(line: 423, column: 15, scope: !2856)
!2867 = !DILocation(line: 423, column: 15, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !334, line: 423, column: 15)
!2869 = distinct !DILexicalBlock(scope: !2848, file: !334, line: 423, column: 15)
!2870 = !DILocation(line: 423, column: 15, scope: !2869)
!2871 = !DILocation(line: 431, column: 19, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2849, file: !334, line: 430, column: 19)
!2873 = !DILocation(line: 431, column: 24, scope: !2872)
!2874 = !DILocation(line: 431, column: 28, scope: !2872)
!2875 = !DILocation(line: 431, column: 38, scope: !2872)
!2876 = !DILocation(line: 431, column: 48, scope: !2872)
!2877 = !DILocation(line: 431, column: 59, scope: !2872)
!2878 = !DILocation(line: 433, column: 19, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !334, line: 433, column: 19)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !334, line: 433, column: 19)
!2881 = distinct !DILexicalBlock(scope: !2872, file: !334, line: 432, column: 17)
!2882 = !DILocation(line: 433, column: 19, scope: !2880)
!2883 = !DILocation(line: 434, column: 19, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !334, line: 434, column: 19)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !334, line: 434, column: 19)
!2886 = !DILocation(line: 434, column: 19, scope: !2885)
!2887 = !DILocation(line: 435, column: 17, scope: !2881)
!2888 = !DILocation(line: 442, column: 20, scope: !2850)
!2889 = !DILocation(line: 447, column: 11, scope: !2699)
!2890 = !DILocation(line: 450, column: 19, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 448, column: 13)
!2892 = !DILocation(line: 456, column: 19, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2891, file: !334, line: 455, column: 19)
!2894 = !DILocation(line: 456, column: 24, scope: !2893)
!2895 = !DILocation(line: 456, column: 28, scope: !2893)
!2896 = !DILocation(line: 456, column: 38, scope: !2893)
!2897 = !DILocation(line: 456, column: 47, scope: !2893)
!2898 = !DILocation(line: 456, column: 41, scope: !2893)
!2899 = !DILocation(line: 456, column: 52, scope: !2893)
!2900 = !DILocation(line: 455, column: 19, scope: !2891)
!2901 = !DILocation(line: 457, column: 25, scope: !2893)
!2902 = !DILocation(line: 457, column: 17, scope: !2893)
!2903 = !DILocation(line: 464, column: 25, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2893, file: !334, line: 458, column: 19)
!2905 = !DILocation(line: 468, column: 21, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !334, line: 468, column: 21)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !334, line: 468, column: 21)
!2908 = !DILocation(line: 468, column: 21, scope: !2907)
!2909 = !DILocation(line: 469, column: 21, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !334, line: 469, column: 21)
!2911 = distinct !DILexicalBlock(scope: !2904, file: !334, line: 469, column: 21)
!2912 = !DILocation(line: 469, column: 21, scope: !2911)
!2913 = !DILocation(line: 470, column: 21, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !334, line: 470, column: 21)
!2915 = distinct !DILexicalBlock(scope: !2904, file: !334, line: 470, column: 21)
!2916 = !DILocation(line: 470, column: 21, scope: !2915)
!2917 = !DILocation(line: 471, column: 21, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !334, line: 471, column: 21)
!2919 = distinct !DILexicalBlock(scope: !2904, file: !334, line: 471, column: 21)
!2920 = !DILocation(line: 471, column: 21, scope: !2919)
!2921 = !DILocation(line: 472, column: 21, scope: !2904)
!2922 = !DILocation(line: 482, column: 33, scope: !2722)
!2923 = !DILocation(line: 483, column: 33, scope: !2722)
!2924 = !DILocation(line: 485, column: 33, scope: !2722)
!2925 = !DILocation(line: 486, column: 33, scope: !2722)
!2926 = !DILocation(line: 487, column: 33, scope: !2722)
!2927 = !DILocation(line: 490, column: 17, scope: !2722)
!2928 = !DILocation(line: 492, column: 21, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !334, line: 491, column: 15)
!2930 = distinct !DILexicalBlock(scope: !2722, file: !334, line: 490, column: 17)
!2931 = !DILocation(line: 499, column: 35, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2722, file: !334, line: 499, column: 17)
!2933 = !DILocation(line: 499, column: 57, scope: !2932)
!2934 = !DILocation(line: 0, scope: !2722)
!2935 = !DILocation(line: 502, column: 11, scope: !2722)
!2936 = !DILocation(line: 504, column: 17, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2722, file: !334, line: 503, column: 17)
!2938 = !DILocation(line: 507, column: 11, scope: !2722)
!2939 = !DILocation(line: 508, column: 17, scope: !2722)
!2940 = !DILocation(line: 517, column: 15, scope: !2699)
!2941 = !DILocation(line: 517, column: 40, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 517, column: 15)
!2943 = !DILocation(line: 517, column: 47, scope: !2942)
!2944 = !DILocation(line: 517, column: 18, scope: !2942)
!2945 = !DILocation(line: 521, column: 17, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 521, column: 15)
!2947 = !DILocation(line: 521, column: 15, scope: !2699)
!2948 = !DILocation(line: 525, column: 11, scope: !2699)
!2949 = !DILocation(line: 537, column: 15, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 536, column: 15)
!2951 = !DILocation(line: 536, column: 15, scope: !2699)
!2952 = !DILocation(line: 544, column: 15, scope: !2699)
!2953 = !DILocation(line: 546, column: 19, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !334, line: 545, column: 13)
!2955 = distinct !DILexicalBlock(scope: !2699, file: !334, line: 544, column: 15)
!2956 = !DILocation(line: 549, column: 19, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2954, file: !334, line: 549, column: 19)
!2958 = !DILocation(line: 549, column: 30, scope: !2957)
!2959 = !DILocation(line: 558, column: 15, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !334, line: 558, column: 15)
!2961 = distinct !DILexicalBlock(scope: !2954, file: !334, line: 558, column: 15)
!2962 = !DILocation(line: 558, column: 15, scope: !2961)
!2963 = !DILocation(line: 559, column: 15, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !334, line: 559, column: 15)
!2965 = distinct !DILexicalBlock(scope: !2954, file: !334, line: 559, column: 15)
!2966 = !DILocation(line: 559, column: 15, scope: !2965)
!2967 = !DILocation(line: 560, column: 15, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !334, line: 560, column: 15)
!2969 = distinct !DILexicalBlock(scope: !2954, file: !334, line: 560, column: 15)
!2970 = !DILocation(line: 560, column: 15, scope: !2969)
!2971 = !DILocation(line: 562, column: 13, scope: !2954)
!2972 = !DILocation(line: 602, column: 17, scope: !2698)
!2973 = !DILocation(line: 0, scope: !2698)
!2974 = !DILocation(line: 605, column: 29, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2703, file: !334, line: 603, column: 15)
!2976 = !DILocation(line: 605, column: 41, scope: !2975)
!2977 = !DILocation(line: 670, column: 23, scope: !2719)
!2978 = !DILocation(line: 609, column: 17, scope: !2702)
!2979 = !DILocation(line: 609, column: 27, scope: !2702)
!2980 = !DILocation(line: 0, scope: !2754, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 609, column: 32, scope: !2702)
!2982 = !DILocation(line: 0, scope: !2762, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1137, column: 3, scope: !2754, inlinedAt: !2981)
!2984 = !DILocation(line: 59, column: 10, scope: !2762, inlinedAt: !2983)
!2985 = !DILocation(line: 613, column: 29, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2702, file: !334, line: 613, column: 21)
!2987 = !DILocation(line: 613, column: 21, scope: !2702)
!2988 = !DILocation(line: 614, column: 29, scope: !2986)
!2989 = !DILocation(line: 614, column: 19, scope: !2986)
!2990 = !DILocation(line: 618, column: 21, scope: !2705)
!2991 = !DILocation(line: 620, column: 54, scope: !2705)
!2992 = !DILocation(line: 0, scope: !2705)
!2993 = !DILocation(line: 619, column: 36, scope: !2705)
!2994 = !DILocation(line: 621, column: 25, scope: !2705)
!2995 = !DILocation(line: 631, column: 38, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2714, file: !334, line: 629, column: 23)
!2997 = !DILocation(line: 631, column: 48, scope: !2996)
!2998 = !DILocation(line: 665, column: 19, scope: !2706)
!2999 = !DILocation(line: 666, column: 15, scope: !2703)
!3000 = !DILocation(line: 626, column: 25, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2715, file: !334, line: 624, column: 23)
!3002 = !DILocation(line: 631, column: 51, scope: !2996)
!3003 = !DILocation(line: 631, column: 25, scope: !2996)
!3004 = !DILocation(line: 632, column: 28, scope: !2996)
!3005 = !DILocation(line: 631, column: 34, scope: !2996)
!3006 = distinct !{!3006, !3003, !3004, !610}
!3007 = !DILocation(line: 646, column: 29, scope: !2712)
!3008 = !DILocation(line: 0, scope: !2710)
!3009 = !DILocation(line: 649, column: 49, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2710, file: !334, line: 648, column: 29)
!3011 = !DILocation(line: 649, column: 39, scope: !3010)
!3012 = !DILocation(line: 649, column: 31, scope: !3010)
!3013 = !DILocation(line: 648, column: 60, scope: !3010)
!3014 = !DILocation(line: 648, column: 50, scope: !3010)
!3015 = !DILocation(line: 648, column: 29, scope: !2710)
!3016 = distinct !{!3016, !3015, !3017, !610}
!3017 = !DILocation(line: 654, column: 33, scope: !2710)
!3018 = !DILocation(line: 657, column: 43, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2713, file: !334, line: 657, column: 29)
!3020 = !DILocalVariable(name: "wc", arg: 1, scope: !3021, file: !3022, line: 865, type: !3025)
!3021 = distinct !DISubprogram(name: "c32isprint", scope: !3022, file: !3022, line: 865, type: !3023, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3027)
!3022 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!55, !3025}
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3026, line: 20, baseType: !7)
!3026 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3027 = !{!3020}
!3028 = !DILocation(line: 0, scope: !3021, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 657, column: 31, scope: !3019)
!3030 = !DILocation(line: 871, column: 10, scope: !3021, inlinedAt: !3029)
!3031 = !DILocation(line: 657, column: 31, scope: !3019)
!3032 = !DILocation(line: 664, column: 23, scope: !2705)
!3033 = !DILocation(line: 753, column: 2, scope: !2659)
!3034 = !DILocation(line: 756, column: 51, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2659, file: !334, line: 756, column: 7)
!3036 = !DILocation(line: 670, column: 19, scope: !2719)
!3037 = !DILocation(line: 670, column: 45, scope: !2719)
!3038 = !DILocation(line: 674, column: 33, scope: !2718)
!3039 = !DILocation(line: 0, scope: !2718)
!3040 = !DILocation(line: 676, column: 17, scope: !2718)
!3041 = !DILocation(line: 398, column: 12, scope: !2692)
!3042 = !DILocation(line: 678, column: 43, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !334, line: 678, column: 25)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !334, line: 677, column: 19)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !334, line: 676, column: 17)
!3046 = distinct !DILexicalBlock(scope: !2718, file: !334, line: 676, column: 17)
!3047 = !DILocation(line: 680, column: 25, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !334, line: 680, column: 25)
!3049 = distinct !DILexicalBlock(scope: !3043, file: !334, line: 679, column: 23)
!3050 = !DILocation(line: 680, column: 25, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3048, file: !334, line: 680, column: 25)
!3052 = !DILocation(line: 680, column: 25, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !334, line: 680, column: 25)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !334, line: 680, column: 25)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !334, line: 680, column: 25)
!3056 = !DILocation(line: 680, column: 25, scope: !3054)
!3057 = !DILocation(line: 680, column: 25, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !334, line: 680, column: 25)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !334, line: 680, column: 25)
!3060 = !DILocation(line: 680, column: 25, scope: !3059)
!3061 = !DILocation(line: 680, column: 25, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !334, line: 680, column: 25)
!3063 = distinct !DILexicalBlock(scope: !3055, file: !334, line: 680, column: 25)
!3064 = !DILocation(line: 680, column: 25, scope: !3063)
!3065 = !DILocation(line: 680, column: 25, scope: !3055)
!3066 = !DILocation(line: 680, column: 25, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !334, line: 680, column: 25)
!3068 = distinct !DILexicalBlock(scope: !3048, file: !334, line: 680, column: 25)
!3069 = !DILocation(line: 680, column: 25, scope: !3068)
!3070 = !DILocation(line: 681, column: 25, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !334, line: 681, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3049, file: !334, line: 681, column: 25)
!3073 = !DILocation(line: 681, column: 25, scope: !3072)
!3074 = !DILocation(line: 682, column: 25, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !334, line: 682, column: 25)
!3076 = distinct !DILexicalBlock(scope: !3049, file: !334, line: 682, column: 25)
!3077 = !DILocation(line: 682, column: 25, scope: !3076)
!3078 = !DILocation(line: 683, column: 38, scope: !3049)
!3079 = !DILocation(line: 683, column: 33, scope: !3049)
!3080 = !DILocation(line: 684, column: 23, scope: !3049)
!3081 = !DILocation(line: 685, column: 30, scope: !3043)
!3082 = !DILocation(line: 687, column: 25, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !334, line: 687, column: 25)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !334, line: 687, column: 25)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !334, line: 686, column: 23)
!3086 = distinct !DILexicalBlock(scope: !3043, file: !334, line: 685, column: 30)
!3087 = !DILocation(line: 687, column: 25, scope: !3084)
!3088 = !DILocation(line: 689, column: 23, scope: !3085)
!3089 = !DILocation(line: 690, column: 35, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3044, file: !334, line: 690, column: 25)
!3091 = !DILocation(line: 690, column: 30, scope: !3090)
!3092 = !DILocation(line: 690, column: 25, scope: !3044)
!3093 = !DILocation(line: 692, column: 21, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !334, line: 692, column: 21)
!3095 = distinct !DILexicalBlock(scope: !3044, file: !334, line: 692, column: 21)
!3096 = !DILocation(line: 692, column: 21, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !334, line: 692, column: 21)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !334, line: 692, column: 21)
!3099 = distinct !DILexicalBlock(scope: !3094, file: !334, line: 692, column: 21)
!3100 = !DILocation(line: 692, column: 21, scope: !3098)
!3101 = !DILocation(line: 692, column: 21, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !334, line: 692, column: 21)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !334, line: 692, column: 21)
!3104 = !DILocation(line: 692, column: 21, scope: !3103)
!3105 = !DILocation(line: 692, column: 21, scope: !3099)
!3106 = !DILocation(line: 0, scope: !3044)
!3107 = !DILocation(line: 693, column: 21, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !334, line: 693, column: 21)
!3109 = distinct !DILexicalBlock(scope: !3044, file: !334, line: 693, column: 21)
!3110 = !DILocation(line: 693, column: 21, scope: !3109)
!3111 = !DILocation(line: 694, column: 25, scope: !3044)
!3112 = !DILocation(line: 676, column: 17, scope: !3045)
!3113 = distinct !{!3113, !3114, !3115}
!3114 = !DILocation(line: 676, column: 17, scope: !3046)
!3115 = !DILocation(line: 695, column: 19, scope: !3046)
!3116 = !DILocation(line: 409, column: 30, scope: !2826)
!3117 = !DILocation(line: 702, column: 34, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !2692, file: !334, line: 702, column: 11)
!3119 = !DILocation(line: 704, column: 14, scope: !3118)
!3120 = !DILocation(line: 705, column: 14, scope: !3118)
!3121 = !DILocation(line: 705, column: 35, scope: !3118)
!3122 = !DILocation(line: 705, column: 17, scope: !3118)
!3123 = !DILocation(line: 705, column: 47, scope: !3118)
!3124 = !DILocation(line: 705, column: 65, scope: !3118)
!3125 = !DILocation(line: 706, column: 11, scope: !3118)
!3126 = !DILocation(line: 702, column: 11, scope: !2692)
!3127 = !DILocation(line: 395, column: 15, scope: !2690)
!3128 = !DILocation(line: 709, column: 5, scope: !2692)
!3129 = !DILocation(line: 710, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !2692, file: !334, line: 710, column: 7)
!3131 = !DILocation(line: 710, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3130, file: !334, line: 710, column: 7)
!3133 = !DILocation(line: 710, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !334, line: 710, column: 7)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !334, line: 710, column: 7)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !334, line: 710, column: 7)
!3137 = !DILocation(line: 710, column: 7, scope: !3135)
!3138 = !DILocation(line: 710, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !334, line: 710, column: 7)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !334, line: 710, column: 7)
!3141 = !DILocation(line: 710, column: 7, scope: !3140)
!3142 = !DILocation(line: 710, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !334, line: 710, column: 7)
!3144 = distinct !DILexicalBlock(scope: !3136, file: !334, line: 710, column: 7)
!3145 = !DILocation(line: 710, column: 7, scope: !3144)
!3146 = !DILocation(line: 710, column: 7, scope: !3136)
!3147 = !DILocation(line: 710, column: 7, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !334, line: 710, column: 7)
!3149 = distinct !DILexicalBlock(scope: !3130, file: !334, line: 710, column: 7)
!3150 = !DILocation(line: 710, column: 7, scope: !3149)
!3151 = !DILocation(line: 712, column: 5, scope: !2692)
!3152 = !DILocation(line: 713, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !334, line: 713, column: 7)
!3154 = distinct !DILexicalBlock(scope: !2692, file: !334, line: 713, column: 7)
!3155 = !DILocation(line: 417, column: 21, scope: !2692)
!3156 = !DILocation(line: 713, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !334, line: 713, column: 7)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !334, line: 713, column: 7)
!3159 = distinct !DILexicalBlock(scope: !3153, file: !334, line: 713, column: 7)
!3160 = !DILocation(line: 713, column: 7, scope: !3158)
!3161 = !DILocation(line: 713, column: 7, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !334, line: 713, column: 7)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !334, line: 713, column: 7)
!3164 = !DILocation(line: 713, column: 7, scope: !3163)
!3165 = !DILocation(line: 713, column: 7, scope: !3159)
!3166 = !DILocation(line: 714, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !334, line: 714, column: 7)
!3168 = distinct !DILexicalBlock(scope: !2692, file: !334, line: 714, column: 7)
!3169 = !DILocation(line: 714, column: 7, scope: !3168)
!3170 = !DILocation(line: 716, column: 11, scope: !2692)
!3171 = !DILocation(line: 718, column: 5, scope: !2693)
!3172 = !DILocation(line: 395, column: 82, scope: !2693)
!3173 = !DILocation(line: 395, column: 3, scope: !2693)
!3174 = distinct !{!3174, !2822, !3175, !610}
!3175 = !DILocation(line: 718, column: 5, scope: !2690)
!3176 = !DILocation(line: 720, column: 11, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !2659, file: !334, line: 720, column: 7)
!3178 = !DILocation(line: 720, column: 16, scope: !3177)
!3179 = !DILocation(line: 728, column: 51, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !2659, file: !334, line: 728, column: 7)
!3181 = !DILocation(line: 731, column: 11, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3180, file: !334, line: 730, column: 5)
!3183 = !DILocation(line: 732, column: 16, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3182, file: !334, line: 731, column: 11)
!3185 = !DILocation(line: 732, column: 9, scope: !3184)
!3186 = !DILocation(line: 736, column: 18, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !334, line: 736, column: 16)
!3188 = !DILocation(line: 736, column: 29, scope: !3187)
!3189 = !DILocation(line: 745, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !2659, file: !334, line: 745, column: 7)
!3191 = !DILocation(line: 745, column: 20, scope: !3190)
!3192 = !DILocation(line: 746, column: 12, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !334, line: 746, column: 5)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !334, line: 746, column: 5)
!3195 = !DILocation(line: 746, column: 5, scope: !3194)
!3196 = !DILocation(line: 747, column: 7, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !334, line: 747, column: 7)
!3198 = distinct !DILexicalBlock(scope: !3193, file: !334, line: 747, column: 7)
!3199 = !DILocation(line: 747, column: 7, scope: !3198)
!3200 = !DILocation(line: 746, column: 39, scope: !3193)
!3201 = distinct !{!3201, !3195, !3202, !610}
!3202 = !DILocation(line: 747, column: 7, scope: !3194)
!3203 = !DILocation(line: 749, column: 11, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !2659, file: !334, line: 749, column: 7)
!3205 = !DILocation(line: 749, column: 7, scope: !2659)
!3206 = !DILocation(line: 750, column: 5, scope: !3204)
!3207 = !DILocation(line: 750, column: 17, scope: !3204)
!3208 = !DILocation(line: 756, column: 21, scope: !3035)
!3209 = !DILocation(line: 760, column: 42, scope: !2659)
!3210 = !DILocation(line: 758, column: 10, scope: !2659)
!3211 = !DILocation(line: 758, column: 3, scope: !2659)
!3212 = !DILocation(line: 762, column: 1, scope: !2659)
!3213 = !DISubprogram(name: "iswprint", scope: !3214, file: !3214, line: 120, type: !3023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3214 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3215 = distinct !DISubprogram(name: "quotearg_alloc", scope: !334, file: !334, line: 788, type: !3216, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!52, !60, !57, !2551}
!3218 = !{!3219, !3220, !3221}
!3219 = !DILocalVariable(name: "arg", arg: 1, scope: !3215, file: !334, line: 788, type: !60)
!3220 = !DILocalVariable(name: "argsize", arg: 2, scope: !3215, file: !334, line: 788, type: !57)
!3221 = !DILocalVariable(name: "o", arg: 3, scope: !3215, file: !334, line: 789, type: !2551)
!3222 = !DILocation(line: 0, scope: !3215)
!3223 = !DILocalVariable(name: "arg", arg: 1, scope: !3224, file: !334, line: 801, type: !60)
!3224 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !334, file: !334, line: 801, type: !3225, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!52, !60, !57, !461, !2551}
!3227 = !{!3223, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3228 = !DILocalVariable(name: "argsize", arg: 2, scope: !3224, file: !334, line: 801, type: !57)
!3229 = !DILocalVariable(name: "size", arg: 3, scope: !3224, file: !334, line: 801, type: !461)
!3230 = !DILocalVariable(name: "o", arg: 4, scope: !3224, file: !334, line: 802, type: !2551)
!3231 = !DILocalVariable(name: "p", scope: !3224, file: !334, line: 804, type: !2551)
!3232 = !DILocalVariable(name: "saved_errno", scope: !3224, file: !334, line: 805, type: !55)
!3233 = !DILocalVariable(name: "flags", scope: !3224, file: !334, line: 807, type: !55)
!3234 = !DILocalVariable(name: "bufsize", scope: !3224, file: !334, line: 808, type: !57)
!3235 = !DILocalVariable(name: "buf", scope: !3224, file: !334, line: 812, type: !52)
!3236 = !DILocation(line: 0, scope: !3224, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 791, column: 10, scope: !3215)
!3238 = !DILocation(line: 804, column: 37, scope: !3224, inlinedAt: !3237)
!3239 = !DILocation(line: 805, column: 21, scope: !3224, inlinedAt: !3237)
!3240 = !DILocation(line: 807, column: 18, scope: !3224, inlinedAt: !3237)
!3241 = !DILocation(line: 807, column: 24, scope: !3224, inlinedAt: !3237)
!3242 = !DILocation(line: 808, column: 72, scope: !3224, inlinedAt: !3237)
!3243 = !DILocation(line: 809, column: 53, scope: !3224, inlinedAt: !3237)
!3244 = !DILocation(line: 810, column: 49, scope: !3224, inlinedAt: !3237)
!3245 = !DILocation(line: 811, column: 49, scope: !3224, inlinedAt: !3237)
!3246 = !DILocation(line: 808, column: 20, scope: !3224, inlinedAt: !3237)
!3247 = !DILocation(line: 811, column: 62, scope: !3224, inlinedAt: !3237)
!3248 = !DILocation(line: 812, column: 15, scope: !3224, inlinedAt: !3237)
!3249 = !DILocation(line: 813, column: 60, scope: !3224, inlinedAt: !3237)
!3250 = !DILocation(line: 815, column: 32, scope: !3224, inlinedAt: !3237)
!3251 = !DILocation(line: 815, column: 47, scope: !3224, inlinedAt: !3237)
!3252 = !DILocation(line: 813, column: 3, scope: !3224, inlinedAt: !3237)
!3253 = !DILocation(line: 816, column: 9, scope: !3224, inlinedAt: !3237)
!3254 = !DILocation(line: 791, column: 3, scope: !3215)
!3255 = !DILocation(line: 0, scope: !3224)
!3256 = !DILocation(line: 804, column: 37, scope: !3224)
!3257 = !DILocation(line: 805, column: 21, scope: !3224)
!3258 = !DILocation(line: 807, column: 18, scope: !3224)
!3259 = !DILocation(line: 807, column: 27, scope: !3224)
!3260 = !DILocation(line: 807, column: 24, scope: !3224)
!3261 = !DILocation(line: 808, column: 72, scope: !3224)
!3262 = !DILocation(line: 809, column: 53, scope: !3224)
!3263 = !DILocation(line: 810, column: 49, scope: !3224)
!3264 = !DILocation(line: 811, column: 49, scope: !3224)
!3265 = !DILocation(line: 808, column: 20, scope: !3224)
!3266 = !DILocation(line: 811, column: 62, scope: !3224)
!3267 = !DILocation(line: 812, column: 15, scope: !3224)
!3268 = !DILocation(line: 813, column: 60, scope: !3224)
!3269 = !DILocation(line: 815, column: 32, scope: !3224)
!3270 = !DILocation(line: 815, column: 47, scope: !3224)
!3271 = !DILocation(line: 813, column: 3, scope: !3224)
!3272 = !DILocation(line: 816, column: 9, scope: !3224)
!3273 = !DILocation(line: 817, column: 7, scope: !3224)
!3274 = !DILocation(line: 818, column: 11, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3224, file: !334, line: 817, column: 7)
!3276 = !{!1032, !1032, i64 0}
!3277 = !DILocation(line: 818, column: 5, scope: !3275)
!3278 = !DILocation(line: 819, column: 3, scope: !3224)
!3279 = distinct !DISubprogram(name: "quotearg_free", scope: !334, file: !334, line: 837, type: !287, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3280)
!3280 = !{!3281, !3282}
!3281 = !DILocalVariable(name: "sv", scope: !3279, file: !334, line: 839, type: !391)
!3282 = !DILocalVariable(name: "i", scope: !3283, file: !334, line: 840, type: !55)
!3283 = distinct !DILexicalBlock(scope: !3279, file: !334, line: 840, column: 3)
!3284 = !DILocation(line: 839, column: 24, scope: !3279)
!3285 = !DILocation(line: 0, scope: !3279)
!3286 = !DILocation(line: 0, scope: !3283)
!3287 = !DILocation(line: 840, column: 21, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3283, file: !334, line: 840, column: 3)
!3289 = !DILocation(line: 840, column: 3, scope: !3283)
!3290 = !DILocation(line: 842, column: 13, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3279, file: !334, line: 842, column: 7)
!3292 = !{!3293, !545, i64 8}
!3293 = !{!"slotvec", !1032, i64 0, !545, i64 8}
!3294 = !DILocation(line: 842, column: 17, scope: !3291)
!3295 = !DILocation(line: 842, column: 7, scope: !3279)
!3296 = !DILocation(line: 841, column: 17, scope: !3288)
!3297 = !DILocation(line: 841, column: 5, scope: !3288)
!3298 = !DILocation(line: 840, column: 32, scope: !3288)
!3299 = distinct !{!3299, !3289, !3300, !610}
!3300 = !DILocation(line: 841, column: 20, scope: !3283)
!3301 = !DILocation(line: 844, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3291, file: !334, line: 843, column: 5)
!3303 = !DILocation(line: 845, column: 21, scope: !3302)
!3304 = !{!3293, !1032, i64 0}
!3305 = !DILocation(line: 846, column: 20, scope: !3302)
!3306 = !DILocation(line: 847, column: 5, scope: !3302)
!3307 = !DILocation(line: 848, column: 10, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3279, file: !334, line: 848, column: 7)
!3309 = !DILocation(line: 848, column: 7, scope: !3279)
!3310 = !DILocation(line: 850, column: 13, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3308, file: !334, line: 849, column: 5)
!3312 = !DILocation(line: 850, column: 7, scope: !3311)
!3313 = !DILocation(line: 851, column: 15, scope: !3311)
!3314 = !DILocation(line: 852, column: 5, scope: !3311)
!3315 = !DILocation(line: 853, column: 10, scope: !3279)
!3316 = !DILocation(line: 854, column: 1, scope: !3279)
!3317 = distinct !DISubprogram(name: "quotearg_n", scope: !334, file: !334, line: 919, type: !751, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3318)
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "n", arg: 1, scope: !3317, file: !334, line: 919, type: !55)
!3320 = !DILocalVariable(name: "arg", arg: 2, scope: !3317, file: !334, line: 919, type: !60)
!3321 = !DILocation(line: 0, scope: !3317)
!3322 = !DILocation(line: 921, column: 10, scope: !3317)
!3323 = !DILocation(line: 921, column: 3, scope: !3317)
!3324 = distinct !DISubprogram(name: "quotearg_n_options", scope: !334, file: !334, line: 866, type: !3325, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!52, !55, !60, !57, !2551}
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3338, !3339, !3341, !3342, !3343}
!3328 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !334, line: 866, type: !55)
!3329 = !DILocalVariable(name: "arg", arg: 2, scope: !3324, file: !334, line: 866, type: !60)
!3330 = !DILocalVariable(name: "argsize", arg: 3, scope: !3324, file: !334, line: 866, type: !57)
!3331 = !DILocalVariable(name: "options", arg: 4, scope: !3324, file: !334, line: 867, type: !2551)
!3332 = !DILocalVariable(name: "saved_errno", scope: !3324, file: !334, line: 869, type: !55)
!3333 = !DILocalVariable(name: "sv", scope: !3324, file: !334, line: 871, type: !391)
!3334 = !DILocalVariable(name: "nslots_max", scope: !3324, file: !334, line: 873, type: !55)
!3335 = !DILocalVariable(name: "preallocated", scope: !3336, file: !334, line: 879, type: !69)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !334, line: 878, column: 5)
!3337 = distinct !DILexicalBlock(scope: !3324, file: !334, line: 877, column: 7)
!3338 = !DILocalVariable(name: "new_nslots", scope: !3336, file: !334, line: 880, type: !474)
!3339 = !DILocalVariable(name: "size", scope: !3340, file: !334, line: 891, type: !57)
!3340 = distinct !DILexicalBlock(scope: !3324, file: !334, line: 890, column: 3)
!3341 = !DILocalVariable(name: "val", scope: !3340, file: !334, line: 892, type: !52)
!3342 = !DILocalVariable(name: "flags", scope: !3340, file: !334, line: 894, type: !55)
!3343 = !DILocalVariable(name: "qsize", scope: !3340, file: !334, line: 895, type: !57)
!3344 = !DILocation(line: 0, scope: !3324)
!3345 = !DILocation(line: 869, column: 21, scope: !3324)
!3346 = !DILocation(line: 871, column: 24, scope: !3324)
!3347 = !DILocation(line: 874, column: 17, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3324, file: !334, line: 874, column: 7)
!3349 = !DILocation(line: 875, column: 5, scope: !3348)
!3350 = !DILocation(line: 877, column: 7, scope: !3337)
!3351 = !DILocation(line: 877, column: 14, scope: !3337)
!3352 = !DILocation(line: 877, column: 7, scope: !3324)
!3353 = !DILocation(line: 879, column: 31, scope: !3336)
!3354 = !DILocation(line: 0, scope: !3336)
!3355 = !DILocation(line: 880, column: 7, scope: !3336)
!3356 = !DILocation(line: 880, column: 26, scope: !3336)
!3357 = !DILocation(line: 880, column: 13, scope: !3336)
!3358 = !DILocation(line: 882, column: 31, scope: !3336)
!3359 = !DILocation(line: 883, column: 33, scope: !3336)
!3360 = !DILocation(line: 883, column: 42, scope: !3336)
!3361 = !DILocation(line: 883, column: 31, scope: !3336)
!3362 = !DILocation(line: 882, column: 22, scope: !3336)
!3363 = !DILocation(line: 882, column: 15, scope: !3336)
!3364 = !DILocation(line: 884, column: 11, scope: !3336)
!3365 = !DILocation(line: 885, column: 15, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3336, file: !334, line: 884, column: 11)
!3367 = !{i64 0, i64 8, !3276, i64 8, i64 8, !544}
!3368 = !DILocation(line: 885, column: 9, scope: !3366)
!3369 = !DILocation(line: 886, column: 20, scope: !3336)
!3370 = !DILocation(line: 886, column: 18, scope: !3336)
!3371 = !DILocation(line: 886, column: 15, scope: !3336)
!3372 = !DILocation(line: 886, column: 32, scope: !3336)
!3373 = !DILocation(line: 886, column: 43, scope: !3336)
!3374 = !DILocation(line: 886, column: 53, scope: !3336)
!3375 = !DILocation(line: 0, scope: !2762, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 886, column: 7, scope: !3336)
!3377 = !DILocation(line: 59, column: 10, scope: !2762, inlinedAt: !3376)
!3378 = !DILocation(line: 887, column: 16, scope: !3336)
!3379 = !DILocation(line: 887, column: 14, scope: !3336)
!3380 = !DILocation(line: 888, column: 5, scope: !3337)
!3381 = !DILocation(line: 888, column: 5, scope: !3336)
!3382 = !DILocation(line: 891, column: 19, scope: !3340)
!3383 = !DILocation(line: 891, column: 25, scope: !3340)
!3384 = !DILocation(line: 0, scope: !3340)
!3385 = !DILocation(line: 892, column: 23, scope: !3340)
!3386 = !DILocation(line: 894, column: 26, scope: !3340)
!3387 = !DILocation(line: 894, column: 32, scope: !3340)
!3388 = !DILocation(line: 896, column: 55, scope: !3340)
!3389 = !DILocation(line: 897, column: 46, scope: !3340)
!3390 = !DILocation(line: 898, column: 55, scope: !3340)
!3391 = !DILocation(line: 899, column: 55, scope: !3340)
!3392 = !DILocation(line: 895, column: 20, scope: !3340)
!3393 = !DILocation(line: 901, column: 14, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3340, file: !334, line: 901, column: 9)
!3395 = !DILocation(line: 901, column: 9, scope: !3340)
!3396 = !DILocation(line: 903, column: 35, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !334, line: 902, column: 7)
!3398 = !DILocation(line: 903, column: 20, scope: !3397)
!3399 = !DILocation(line: 904, column: 17, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3397, file: !334, line: 904, column: 13)
!3401 = !DILocation(line: 904, column: 13, scope: !3397)
!3402 = !DILocation(line: 905, column: 11, scope: !3400)
!3403 = !DILocation(line: 906, column: 27, scope: !3397)
!3404 = !DILocation(line: 906, column: 19, scope: !3397)
!3405 = !DILocation(line: 907, column: 69, scope: !3397)
!3406 = !DILocation(line: 909, column: 44, scope: !3397)
!3407 = !DILocation(line: 910, column: 44, scope: !3397)
!3408 = !DILocation(line: 907, column: 9, scope: !3397)
!3409 = !DILocation(line: 911, column: 7, scope: !3397)
!3410 = !DILocation(line: 913, column: 11, scope: !3340)
!3411 = !DILocation(line: 914, column: 5, scope: !3340)
!3412 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !334, file: !334, line: 925, type: !3413, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!52, !55, !60, !57}
!3415 = !{!3416, !3417, !3418}
!3416 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !334, line: 925, type: !55)
!3417 = !DILocalVariable(name: "arg", arg: 2, scope: !3412, file: !334, line: 925, type: !60)
!3418 = !DILocalVariable(name: "argsize", arg: 3, scope: !3412, file: !334, line: 925, type: !57)
!3419 = !DILocation(line: 0, scope: !3412)
!3420 = !DILocation(line: 927, column: 10, scope: !3412)
!3421 = !DILocation(line: 927, column: 3, scope: !3412)
!3422 = distinct !DISubprogram(name: "quotearg", scope: !334, file: !334, line: 931, type: !755, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3423)
!3423 = !{!3424}
!3424 = !DILocalVariable(name: "arg", arg: 1, scope: !3422, file: !334, line: 931, type: !60)
!3425 = !DILocation(line: 0, scope: !3422)
!3426 = !DILocation(line: 0, scope: !3317, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 933, column: 10, scope: !3422)
!3428 = !DILocation(line: 921, column: 10, scope: !3317, inlinedAt: !3427)
!3429 = !DILocation(line: 933, column: 3, scope: !3422)
!3430 = distinct !DISubprogram(name: "quotearg_mem", scope: !334, file: !334, line: 937, type: !3431, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!52, !60, !57}
!3433 = !{!3434, !3435}
!3434 = !DILocalVariable(name: "arg", arg: 1, scope: !3430, file: !334, line: 937, type: !60)
!3435 = !DILocalVariable(name: "argsize", arg: 2, scope: !3430, file: !334, line: 937, type: !57)
!3436 = !DILocation(line: 0, scope: !3430)
!3437 = !DILocation(line: 0, scope: !3412, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 939, column: 10, scope: !3430)
!3439 = !DILocation(line: 927, column: 10, scope: !3412, inlinedAt: !3438)
!3440 = !DILocation(line: 939, column: 3, scope: !3430)
!3441 = distinct !DISubprogram(name: "quotearg_n_style", scope: !334, file: !334, line: 943, type: !3442, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!52, !55, !13, !60}
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "n", arg: 1, scope: !3441, file: !334, line: 943, type: !55)
!3446 = !DILocalVariable(name: "s", arg: 2, scope: !3441, file: !334, line: 943, type: !13)
!3447 = !DILocalVariable(name: "arg", arg: 3, scope: !3441, file: !334, line: 943, type: !60)
!3448 = !DILocalVariable(name: "o", scope: !3441, file: !334, line: 945, type: !2552)
!3449 = !DILocation(line: 0, scope: !3441)
!3450 = !DILocation(line: 945, column: 3, scope: !3441)
!3451 = !DILocation(line: 945, column: 32, scope: !3441)
!3452 = !{!3453}
!3453 = distinct !{!3453, !3454, !"quoting_options_from_style: argument 0"}
!3454 = distinct !{!3454, !"quoting_options_from_style"}
!3455 = !DILocation(line: 945, column: 36, scope: !3441)
!3456 = !DILocalVariable(name: "style", arg: 1, scope: !3457, file: !334, line: 183, type: !13)
!3457 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !334, file: !334, line: 183, type: !3458, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!349, !13}
!3460 = !{!3456, !3461}
!3461 = !DILocalVariable(name: "o", scope: !3457, file: !334, line: 185, type: !349)
!3462 = !DILocation(line: 0, scope: !3457, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 945, column: 36, scope: !3441)
!3464 = !DILocation(line: 185, column: 26, scope: !3457, inlinedAt: !3463)
!3465 = !DILocation(line: 186, column: 13, scope: !3466, inlinedAt: !3463)
!3466 = distinct !DILexicalBlock(scope: !3457, file: !334, line: 186, column: 7)
!3467 = !DILocation(line: 186, column: 7, scope: !3457, inlinedAt: !3463)
!3468 = !DILocation(line: 187, column: 5, scope: !3466, inlinedAt: !3463)
!3469 = !DILocation(line: 188, column: 5, scope: !3457, inlinedAt: !3463)
!3470 = !DILocation(line: 188, column: 11, scope: !3457, inlinedAt: !3463)
!3471 = !DILocation(line: 946, column: 10, scope: !3441)
!3472 = !DILocation(line: 947, column: 1, scope: !3441)
!3473 = !DILocation(line: 946, column: 3, scope: !3441)
!3474 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !334, file: !334, line: 950, type: !3475, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!52, !55, !13, !60, !57}
!3477 = !{!3478, !3479, !3480, !3481, !3482}
!3478 = !DILocalVariable(name: "n", arg: 1, scope: !3474, file: !334, line: 950, type: !55)
!3479 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !334, line: 950, type: !13)
!3480 = !DILocalVariable(name: "arg", arg: 3, scope: !3474, file: !334, line: 951, type: !60)
!3481 = !DILocalVariable(name: "argsize", arg: 4, scope: !3474, file: !334, line: 951, type: !57)
!3482 = !DILocalVariable(name: "o", scope: !3474, file: !334, line: 953, type: !2552)
!3483 = !DILocation(line: 0, scope: !3474)
!3484 = !DILocation(line: 953, column: 3, scope: !3474)
!3485 = !DILocation(line: 953, column: 32, scope: !3474)
!3486 = !{!3487}
!3487 = distinct !{!3487, !3488, !"quoting_options_from_style: argument 0"}
!3488 = distinct !{!3488, !"quoting_options_from_style"}
!3489 = !DILocation(line: 953, column: 36, scope: !3474)
!3490 = !DILocation(line: 0, scope: !3457, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 953, column: 36, scope: !3474)
!3492 = !DILocation(line: 185, column: 26, scope: !3457, inlinedAt: !3491)
!3493 = !DILocation(line: 186, column: 13, scope: !3466, inlinedAt: !3491)
!3494 = !DILocation(line: 186, column: 7, scope: !3457, inlinedAt: !3491)
!3495 = !DILocation(line: 187, column: 5, scope: !3466, inlinedAt: !3491)
!3496 = !DILocation(line: 188, column: 5, scope: !3457, inlinedAt: !3491)
!3497 = !DILocation(line: 188, column: 11, scope: !3457, inlinedAt: !3491)
!3498 = !DILocation(line: 954, column: 10, scope: !3474)
!3499 = !DILocation(line: 955, column: 1, scope: !3474)
!3500 = !DILocation(line: 954, column: 3, scope: !3474)
!3501 = distinct !DISubprogram(name: "quotearg_style", scope: !334, file: !334, line: 958, type: !3502, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!52, !13, !60}
!3504 = !{!3505, !3506}
!3505 = !DILocalVariable(name: "s", arg: 1, scope: !3501, file: !334, line: 958, type: !13)
!3506 = !DILocalVariable(name: "arg", arg: 2, scope: !3501, file: !334, line: 958, type: !60)
!3507 = !DILocation(line: 0, scope: !3501)
!3508 = !DILocation(line: 0, scope: !3441, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 960, column: 10, scope: !3501)
!3510 = !DILocation(line: 945, column: 3, scope: !3441, inlinedAt: !3509)
!3511 = !DILocation(line: 945, column: 32, scope: !3441, inlinedAt: !3509)
!3512 = !{!3513}
!3513 = distinct !{!3513, !3514, !"quoting_options_from_style: argument 0"}
!3514 = distinct !{!3514, !"quoting_options_from_style"}
!3515 = !DILocation(line: 945, column: 36, scope: !3441, inlinedAt: !3509)
!3516 = !DILocation(line: 0, scope: !3457, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 945, column: 36, scope: !3441, inlinedAt: !3509)
!3518 = !DILocation(line: 185, column: 26, scope: !3457, inlinedAt: !3517)
!3519 = !DILocation(line: 186, column: 13, scope: !3466, inlinedAt: !3517)
!3520 = !DILocation(line: 186, column: 7, scope: !3457, inlinedAt: !3517)
!3521 = !DILocation(line: 187, column: 5, scope: !3466, inlinedAt: !3517)
!3522 = !DILocation(line: 188, column: 5, scope: !3457, inlinedAt: !3517)
!3523 = !DILocation(line: 188, column: 11, scope: !3457, inlinedAt: !3517)
!3524 = !DILocation(line: 946, column: 10, scope: !3441, inlinedAt: !3509)
!3525 = !DILocation(line: 947, column: 1, scope: !3441, inlinedAt: !3509)
!3526 = !DILocation(line: 960, column: 3, scope: !3501)
!3527 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !334, file: !334, line: 964, type: !3528, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!52, !13, !60, !57}
!3530 = !{!3531, !3532, !3533}
!3531 = !DILocalVariable(name: "s", arg: 1, scope: !3527, file: !334, line: 964, type: !13)
!3532 = !DILocalVariable(name: "arg", arg: 2, scope: !3527, file: !334, line: 964, type: !60)
!3533 = !DILocalVariable(name: "argsize", arg: 3, scope: !3527, file: !334, line: 964, type: !57)
!3534 = !DILocation(line: 0, scope: !3527)
!3535 = !DILocation(line: 0, scope: !3474, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 966, column: 10, scope: !3527)
!3537 = !DILocation(line: 953, column: 3, scope: !3474, inlinedAt: !3536)
!3538 = !DILocation(line: 953, column: 32, scope: !3474, inlinedAt: !3536)
!3539 = !{!3540}
!3540 = distinct !{!3540, !3541, !"quoting_options_from_style: argument 0"}
!3541 = distinct !{!3541, !"quoting_options_from_style"}
!3542 = !DILocation(line: 953, column: 36, scope: !3474, inlinedAt: !3536)
!3543 = !DILocation(line: 0, scope: !3457, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 953, column: 36, scope: !3474, inlinedAt: !3536)
!3545 = !DILocation(line: 185, column: 26, scope: !3457, inlinedAt: !3544)
!3546 = !DILocation(line: 186, column: 13, scope: !3466, inlinedAt: !3544)
!3547 = !DILocation(line: 186, column: 7, scope: !3457, inlinedAt: !3544)
!3548 = !DILocation(line: 187, column: 5, scope: !3466, inlinedAt: !3544)
!3549 = !DILocation(line: 188, column: 5, scope: !3457, inlinedAt: !3544)
!3550 = !DILocation(line: 188, column: 11, scope: !3457, inlinedAt: !3544)
!3551 = !DILocation(line: 954, column: 10, scope: !3474, inlinedAt: !3536)
!3552 = !DILocation(line: 955, column: 1, scope: !3474, inlinedAt: !3536)
!3553 = !DILocation(line: 966, column: 3, scope: !3527)
!3554 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !334, file: !334, line: 970, type: !3555, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!52, !60, !57, !53}
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DILocalVariable(name: "arg", arg: 1, scope: !3554, file: !334, line: 970, type: !60)
!3559 = !DILocalVariable(name: "argsize", arg: 2, scope: !3554, file: !334, line: 970, type: !57)
!3560 = !DILocalVariable(name: "ch", arg: 3, scope: !3554, file: !334, line: 970, type: !53)
!3561 = !DILocalVariable(name: "options", scope: !3554, file: !334, line: 972, type: !349)
!3562 = !DILocation(line: 0, scope: !3554)
!3563 = !DILocation(line: 972, column: 3, scope: !3554)
!3564 = !DILocation(line: 972, column: 26, scope: !3554)
!3565 = !DILocation(line: 973, column: 13, scope: !3554)
!3566 = !{i64 0, i64 4, !652, i64 4, i64 4, !643, i64 8, i64 32, !652, i64 40, i64 8, !544, i64 48, i64 8, !544}
!3567 = !DILocation(line: 0, scope: !2572, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 974, column: 3, scope: !3554)
!3569 = !DILocation(line: 147, column: 62, scope: !2572, inlinedAt: !3568)
!3570 = !DILocation(line: 147, column: 57, scope: !2572, inlinedAt: !3568)
!3571 = !DILocation(line: 148, column: 15, scope: !2572, inlinedAt: !3568)
!3572 = !DILocation(line: 149, column: 21, scope: !2572, inlinedAt: !3568)
!3573 = !DILocation(line: 149, column: 24, scope: !2572, inlinedAt: !3568)
!3574 = !DILocation(line: 149, column: 34, scope: !2572, inlinedAt: !3568)
!3575 = !DILocation(line: 150, column: 19, scope: !2572, inlinedAt: !3568)
!3576 = !DILocation(line: 150, column: 24, scope: !2572, inlinedAt: !3568)
!3577 = !DILocation(line: 150, column: 6, scope: !2572, inlinedAt: !3568)
!3578 = !DILocation(line: 975, column: 10, scope: !3554)
!3579 = !DILocation(line: 976, column: 1, scope: !3554)
!3580 = !DILocation(line: 975, column: 3, scope: !3554)
!3581 = distinct !DISubprogram(name: "quotearg_char", scope: !334, file: !334, line: 979, type: !3582, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!52, !60, !53}
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "arg", arg: 1, scope: !3581, file: !334, line: 979, type: !60)
!3586 = !DILocalVariable(name: "ch", arg: 2, scope: !3581, file: !334, line: 979, type: !53)
!3587 = !DILocation(line: 0, scope: !3581)
!3588 = !DILocation(line: 0, scope: !3554, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 981, column: 10, scope: !3581)
!3590 = !DILocation(line: 972, column: 3, scope: !3554, inlinedAt: !3589)
!3591 = !DILocation(line: 972, column: 26, scope: !3554, inlinedAt: !3589)
!3592 = !DILocation(line: 973, column: 13, scope: !3554, inlinedAt: !3589)
!3593 = !DILocation(line: 0, scope: !2572, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 974, column: 3, scope: !3554, inlinedAt: !3589)
!3595 = !DILocation(line: 147, column: 62, scope: !2572, inlinedAt: !3594)
!3596 = !DILocation(line: 147, column: 57, scope: !2572, inlinedAt: !3594)
!3597 = !DILocation(line: 148, column: 15, scope: !2572, inlinedAt: !3594)
!3598 = !DILocation(line: 149, column: 21, scope: !2572, inlinedAt: !3594)
!3599 = !DILocation(line: 149, column: 24, scope: !2572, inlinedAt: !3594)
!3600 = !DILocation(line: 149, column: 34, scope: !2572, inlinedAt: !3594)
!3601 = !DILocation(line: 150, column: 19, scope: !2572, inlinedAt: !3594)
!3602 = !DILocation(line: 150, column: 24, scope: !2572, inlinedAt: !3594)
!3603 = !DILocation(line: 150, column: 6, scope: !2572, inlinedAt: !3594)
!3604 = !DILocation(line: 975, column: 10, scope: !3554, inlinedAt: !3589)
!3605 = !DILocation(line: 976, column: 1, scope: !3554, inlinedAt: !3589)
!3606 = !DILocation(line: 981, column: 3, scope: !3581)
!3607 = distinct !DISubprogram(name: "quotearg_colon", scope: !334, file: !334, line: 985, type: !755, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3608)
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "arg", arg: 1, scope: !3607, file: !334, line: 985, type: !60)
!3610 = !DILocation(line: 0, scope: !3607)
!3611 = !DILocation(line: 0, scope: !3581, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 987, column: 10, scope: !3607)
!3613 = !DILocation(line: 0, scope: !3554, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 981, column: 10, scope: !3581, inlinedAt: !3612)
!3615 = !DILocation(line: 972, column: 3, scope: !3554, inlinedAt: !3614)
!3616 = !DILocation(line: 972, column: 26, scope: !3554, inlinedAt: !3614)
!3617 = !DILocation(line: 973, column: 13, scope: !3554, inlinedAt: !3614)
!3618 = !DILocation(line: 0, scope: !2572, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 974, column: 3, scope: !3554, inlinedAt: !3614)
!3620 = !DILocation(line: 147, column: 57, scope: !2572, inlinedAt: !3619)
!3621 = !DILocation(line: 149, column: 21, scope: !2572, inlinedAt: !3619)
!3622 = !DILocation(line: 150, column: 6, scope: !2572, inlinedAt: !3619)
!3623 = !DILocation(line: 975, column: 10, scope: !3554, inlinedAt: !3614)
!3624 = !DILocation(line: 976, column: 1, scope: !3554, inlinedAt: !3614)
!3625 = !DILocation(line: 987, column: 3, scope: !3607)
!3626 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !334, file: !334, line: 991, type: !3431, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3627)
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "arg", arg: 1, scope: !3626, file: !334, line: 991, type: !60)
!3629 = !DILocalVariable(name: "argsize", arg: 2, scope: !3626, file: !334, line: 991, type: !57)
!3630 = !DILocation(line: 0, scope: !3626)
!3631 = !DILocation(line: 0, scope: !3554, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 993, column: 10, scope: !3626)
!3633 = !DILocation(line: 972, column: 3, scope: !3554, inlinedAt: !3632)
!3634 = !DILocation(line: 972, column: 26, scope: !3554, inlinedAt: !3632)
!3635 = !DILocation(line: 973, column: 13, scope: !3554, inlinedAt: !3632)
!3636 = !DILocation(line: 0, scope: !2572, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 974, column: 3, scope: !3554, inlinedAt: !3632)
!3638 = !DILocation(line: 147, column: 57, scope: !2572, inlinedAt: !3637)
!3639 = !DILocation(line: 149, column: 21, scope: !2572, inlinedAt: !3637)
!3640 = !DILocation(line: 150, column: 6, scope: !2572, inlinedAt: !3637)
!3641 = !DILocation(line: 975, column: 10, scope: !3554, inlinedAt: !3632)
!3642 = !DILocation(line: 976, column: 1, scope: !3554, inlinedAt: !3632)
!3643 = !DILocation(line: 993, column: 3, scope: !3626)
!3644 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !334, file: !334, line: 997, type: !3442, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3645)
!3645 = !{!3646, !3647, !3648, !3649}
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3644, file: !334, line: 997, type: !55)
!3647 = !DILocalVariable(name: "s", arg: 2, scope: !3644, file: !334, line: 997, type: !13)
!3648 = !DILocalVariable(name: "arg", arg: 3, scope: !3644, file: !334, line: 997, type: !60)
!3649 = !DILocalVariable(name: "options", scope: !3644, file: !334, line: 999, type: !349)
!3650 = !DILocation(line: 0, scope: !3644)
!3651 = !DILocation(line: 999, column: 3, scope: !3644)
!3652 = !DILocation(line: 999, column: 26, scope: !3644)
!3653 = !DILocation(line: 0, scope: !3457, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 1000, column: 13, scope: !3644)
!3655 = !DILocation(line: 186, column: 13, scope: !3466, inlinedAt: !3654)
!3656 = !DILocation(line: 186, column: 7, scope: !3457, inlinedAt: !3654)
!3657 = !DILocation(line: 187, column: 5, scope: !3466, inlinedAt: !3654)
!3658 = !{!3659}
!3659 = distinct !{!3659, !3660, !"quoting_options_from_style: argument 0"}
!3660 = distinct !{!3660, !"quoting_options_from_style"}
!3661 = !DILocation(line: 1000, column: 13, scope: !3644)
!3662 = !DILocation(line: 0, scope: !2572, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 1001, column: 3, scope: !3644)
!3664 = !DILocation(line: 147, column: 57, scope: !2572, inlinedAt: !3663)
!3665 = !DILocation(line: 149, column: 21, scope: !2572, inlinedAt: !3663)
!3666 = !DILocation(line: 150, column: 6, scope: !2572, inlinedAt: !3663)
!3667 = !DILocation(line: 1002, column: 10, scope: !3644)
!3668 = !DILocation(line: 1003, column: 1, scope: !3644)
!3669 = !DILocation(line: 1002, column: 3, scope: !3644)
!3670 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !334, file: !334, line: 1006, type: !3671, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!52, !55, !60, !60, !60}
!3673 = !{!3674, !3675, !3676, !3677}
!3674 = !DILocalVariable(name: "n", arg: 1, scope: !3670, file: !334, line: 1006, type: !55)
!3675 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3670, file: !334, line: 1006, type: !60)
!3676 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3670, file: !334, line: 1007, type: !60)
!3677 = !DILocalVariable(name: "arg", arg: 4, scope: !3670, file: !334, line: 1007, type: !60)
!3678 = !DILocation(line: 0, scope: !3670)
!3679 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !334, line: 1014, type: !55)
!3680 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !334, file: !334, line: 1014, type: !3681, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!52, !55, !60, !60, !60, !57}
!3683 = !{!3679, !3684, !3685, !3686, !3687, !3688}
!3684 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3680, file: !334, line: 1014, type: !60)
!3685 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3680, file: !334, line: 1015, type: !60)
!3686 = !DILocalVariable(name: "arg", arg: 4, scope: !3680, file: !334, line: 1016, type: !60)
!3687 = !DILocalVariable(name: "argsize", arg: 5, scope: !3680, file: !334, line: 1016, type: !57)
!3688 = !DILocalVariable(name: "o", scope: !3680, file: !334, line: 1018, type: !349)
!3689 = !DILocation(line: 0, scope: !3680, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1009, column: 10, scope: !3670)
!3691 = !DILocation(line: 1018, column: 3, scope: !3680, inlinedAt: !3690)
!3692 = !DILocation(line: 1018, column: 26, scope: !3680, inlinedAt: !3690)
!3693 = !DILocation(line: 1018, column: 30, scope: !3680, inlinedAt: !3690)
!3694 = !DILocation(line: 0, scope: !2612, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1019, column: 3, scope: !3680, inlinedAt: !3690)
!3696 = !DILocation(line: 174, column: 6, scope: !2612, inlinedAt: !3695)
!3697 = !DILocation(line: 174, column: 12, scope: !2612, inlinedAt: !3695)
!3698 = !DILocation(line: 175, column: 8, scope: !2626, inlinedAt: !3695)
!3699 = !DILocation(line: 175, column: 19, scope: !2626, inlinedAt: !3695)
!3700 = !DILocation(line: 176, column: 5, scope: !2626, inlinedAt: !3695)
!3701 = !DILocation(line: 177, column: 6, scope: !2612, inlinedAt: !3695)
!3702 = !DILocation(line: 177, column: 17, scope: !2612, inlinedAt: !3695)
!3703 = !DILocation(line: 178, column: 6, scope: !2612, inlinedAt: !3695)
!3704 = !DILocation(line: 178, column: 18, scope: !2612, inlinedAt: !3695)
!3705 = !DILocation(line: 1020, column: 10, scope: !3680, inlinedAt: !3690)
!3706 = !DILocation(line: 1021, column: 1, scope: !3680, inlinedAt: !3690)
!3707 = !DILocation(line: 1009, column: 3, scope: !3670)
!3708 = !DILocation(line: 0, scope: !3680)
!3709 = !DILocation(line: 1018, column: 3, scope: !3680)
!3710 = !DILocation(line: 1018, column: 26, scope: !3680)
!3711 = !DILocation(line: 1018, column: 30, scope: !3680)
!3712 = !DILocation(line: 0, scope: !2612, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 1019, column: 3, scope: !3680)
!3714 = !DILocation(line: 174, column: 6, scope: !2612, inlinedAt: !3713)
!3715 = !DILocation(line: 174, column: 12, scope: !2612, inlinedAt: !3713)
!3716 = !DILocation(line: 175, column: 8, scope: !2626, inlinedAt: !3713)
!3717 = !DILocation(line: 175, column: 19, scope: !2626, inlinedAt: !3713)
!3718 = !DILocation(line: 176, column: 5, scope: !2626, inlinedAt: !3713)
!3719 = !DILocation(line: 177, column: 6, scope: !2612, inlinedAt: !3713)
!3720 = !DILocation(line: 177, column: 17, scope: !2612, inlinedAt: !3713)
!3721 = !DILocation(line: 178, column: 6, scope: !2612, inlinedAt: !3713)
!3722 = !DILocation(line: 178, column: 18, scope: !2612, inlinedAt: !3713)
!3723 = !DILocation(line: 1020, column: 10, scope: !3680)
!3724 = !DILocation(line: 1021, column: 1, scope: !3680)
!3725 = !DILocation(line: 1020, column: 3, scope: !3680)
!3726 = distinct !DISubprogram(name: "quotearg_custom", scope: !334, file: !334, line: 1024, type: !3727, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!52, !60, !60, !60}
!3729 = !{!3730, !3731, !3732}
!3730 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3726, file: !334, line: 1024, type: !60)
!3731 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3726, file: !334, line: 1024, type: !60)
!3732 = !DILocalVariable(name: "arg", arg: 3, scope: !3726, file: !334, line: 1025, type: !60)
!3733 = !DILocation(line: 0, scope: !3726)
!3734 = !DILocation(line: 0, scope: !3670, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1027, column: 10, scope: !3726)
!3736 = !DILocation(line: 0, scope: !3680, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 1009, column: 10, scope: !3670, inlinedAt: !3735)
!3738 = !DILocation(line: 1018, column: 3, scope: !3680, inlinedAt: !3737)
!3739 = !DILocation(line: 1018, column: 26, scope: !3680, inlinedAt: !3737)
!3740 = !DILocation(line: 1018, column: 30, scope: !3680, inlinedAt: !3737)
!3741 = !DILocation(line: 0, scope: !2612, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 1019, column: 3, scope: !3680, inlinedAt: !3737)
!3743 = !DILocation(line: 174, column: 6, scope: !2612, inlinedAt: !3742)
!3744 = !DILocation(line: 174, column: 12, scope: !2612, inlinedAt: !3742)
!3745 = !DILocation(line: 175, column: 8, scope: !2626, inlinedAt: !3742)
!3746 = !DILocation(line: 175, column: 19, scope: !2626, inlinedAt: !3742)
!3747 = !DILocation(line: 176, column: 5, scope: !2626, inlinedAt: !3742)
!3748 = !DILocation(line: 177, column: 6, scope: !2612, inlinedAt: !3742)
!3749 = !DILocation(line: 177, column: 17, scope: !2612, inlinedAt: !3742)
!3750 = !DILocation(line: 178, column: 6, scope: !2612, inlinedAt: !3742)
!3751 = !DILocation(line: 178, column: 18, scope: !2612, inlinedAt: !3742)
!3752 = !DILocation(line: 1020, column: 10, scope: !3680, inlinedAt: !3737)
!3753 = !DILocation(line: 1021, column: 1, scope: !3680, inlinedAt: !3737)
!3754 = !DILocation(line: 1027, column: 3, scope: !3726)
!3755 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !334, file: !334, line: 1031, type: !3756, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!52, !60, !60, !60, !57}
!3758 = !{!3759, !3760, !3761, !3762}
!3759 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3755, file: !334, line: 1031, type: !60)
!3760 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3755, file: !334, line: 1031, type: !60)
!3761 = !DILocalVariable(name: "arg", arg: 3, scope: !3755, file: !334, line: 1032, type: !60)
!3762 = !DILocalVariable(name: "argsize", arg: 4, scope: !3755, file: !334, line: 1032, type: !57)
!3763 = !DILocation(line: 0, scope: !3755)
!3764 = !DILocation(line: 0, scope: !3680, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 1034, column: 10, scope: !3755)
!3766 = !DILocation(line: 1018, column: 3, scope: !3680, inlinedAt: !3765)
!3767 = !DILocation(line: 1018, column: 26, scope: !3680, inlinedAt: !3765)
!3768 = !DILocation(line: 1018, column: 30, scope: !3680, inlinedAt: !3765)
!3769 = !DILocation(line: 0, scope: !2612, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 1019, column: 3, scope: !3680, inlinedAt: !3765)
!3771 = !DILocation(line: 174, column: 6, scope: !2612, inlinedAt: !3770)
!3772 = !DILocation(line: 174, column: 12, scope: !2612, inlinedAt: !3770)
!3773 = !DILocation(line: 175, column: 8, scope: !2626, inlinedAt: !3770)
!3774 = !DILocation(line: 175, column: 19, scope: !2626, inlinedAt: !3770)
!3775 = !DILocation(line: 176, column: 5, scope: !2626, inlinedAt: !3770)
!3776 = !DILocation(line: 177, column: 6, scope: !2612, inlinedAt: !3770)
!3777 = !DILocation(line: 177, column: 17, scope: !2612, inlinedAt: !3770)
!3778 = !DILocation(line: 178, column: 6, scope: !2612, inlinedAt: !3770)
!3779 = !DILocation(line: 178, column: 18, scope: !2612, inlinedAt: !3770)
!3780 = !DILocation(line: 1020, column: 10, scope: !3680, inlinedAt: !3765)
!3781 = !DILocation(line: 1021, column: 1, scope: !3680, inlinedAt: !3765)
!3782 = !DILocation(line: 1034, column: 3, scope: !3755)
!3783 = distinct !DISubprogram(name: "quote_n_mem", scope: !334, file: !334, line: 1049, type: !3784, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!60, !55, !60, !57}
!3786 = !{!3787, !3788, !3789}
!3787 = !DILocalVariable(name: "n", arg: 1, scope: !3783, file: !334, line: 1049, type: !55)
!3788 = !DILocalVariable(name: "arg", arg: 2, scope: !3783, file: !334, line: 1049, type: !60)
!3789 = !DILocalVariable(name: "argsize", arg: 3, scope: !3783, file: !334, line: 1049, type: !57)
!3790 = !DILocation(line: 0, scope: !3783)
!3791 = !DILocation(line: 1051, column: 10, scope: !3783)
!3792 = !DILocation(line: 1051, column: 3, scope: !3783)
!3793 = distinct !DISubprogram(name: "quote_mem", scope: !334, file: !334, line: 1055, type: !3794, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!60, !60, !57}
!3796 = !{!3797, !3798}
!3797 = !DILocalVariable(name: "arg", arg: 1, scope: !3793, file: !334, line: 1055, type: !60)
!3798 = !DILocalVariable(name: "argsize", arg: 2, scope: !3793, file: !334, line: 1055, type: !57)
!3799 = !DILocation(line: 0, scope: !3793)
!3800 = !DILocation(line: 0, scope: !3783, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 1057, column: 10, scope: !3793)
!3802 = !DILocation(line: 1051, column: 10, scope: !3783, inlinedAt: !3801)
!3803 = !DILocation(line: 1057, column: 3, scope: !3793)
!3804 = distinct !DISubprogram(name: "quote_n", scope: !334, file: !334, line: 1061, type: !3805, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!60, !55, !60}
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "n", arg: 1, scope: !3804, file: !334, line: 1061, type: !55)
!3809 = !DILocalVariable(name: "arg", arg: 2, scope: !3804, file: !334, line: 1061, type: !60)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocation(line: 0, scope: !3783, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 1063, column: 10, scope: !3804)
!3813 = !DILocation(line: 1051, column: 10, scope: !3783, inlinedAt: !3812)
!3814 = !DILocation(line: 1063, column: 3, scope: !3804)
!3815 = distinct !DISubprogram(name: "quote", scope: !334, file: !334, line: 1067, type: !3816, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!60, !60}
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "arg", arg: 1, scope: !3815, file: !334, line: 1067, type: !60)
!3820 = !DILocation(line: 0, scope: !3815)
!3821 = !DILocation(line: 0, scope: !3804, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 1069, column: 10, scope: !3815)
!3823 = !DILocation(line: 0, scope: !3783, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 1063, column: 10, scope: !3804, inlinedAt: !3822)
!3825 = !DILocation(line: 1051, column: 10, scope: !3783, inlinedAt: !3824)
!3826 = !DILocation(line: 1069, column: 3, scope: !3815)
!3827 = distinct !DISubprogram(name: "version_etc_arn", scope: !449, file: !449, line: 61, type: !3828, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3865)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3830, !60, !60, !60, !3864, !57}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3832)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3833)
!3833 = !{!3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3832, file: !107, line: 51, baseType: !55, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3832, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3832, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3832, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3832, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3832, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3832, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3832, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3832, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3832, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3832, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3832, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3832, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3832, file: !107, line: 70, baseType: !3848, size: 64, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3832, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3832, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3832, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3832, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3832, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3832, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3832, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3832, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3832, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3832, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3832, file: !107, line: 93, baseType: !3848, size: 64, offset: 1344)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3832, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3832, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3832, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3832, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871}
!3866 = !DILocalVariable(name: "stream", arg: 1, scope: !3827, file: !449, line: 61, type: !3830)
!3867 = !DILocalVariable(name: "command_name", arg: 2, scope: !3827, file: !449, line: 62, type: !60)
!3868 = !DILocalVariable(name: "package", arg: 3, scope: !3827, file: !449, line: 62, type: !60)
!3869 = !DILocalVariable(name: "version", arg: 4, scope: !3827, file: !449, line: 63, type: !60)
!3870 = !DILocalVariable(name: "authors", arg: 5, scope: !3827, file: !449, line: 64, type: !3864)
!3871 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3827, file: !449, line: 64, type: !57)
!3872 = !DILocation(line: 0, scope: !3827)
!3873 = !DILocation(line: 66, column: 7, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3827, file: !449, line: 66, column: 7)
!3875 = !DILocation(line: 66, column: 7, scope: !3827)
!3876 = !DILocation(line: 67, column: 5, scope: !3874)
!3877 = !DILocation(line: 69, column: 5, scope: !3874)
!3878 = !DILocation(line: 83, column: 3, scope: !3827)
!3879 = !DILocation(line: 85, column: 3, scope: !3827)
!3880 = !DILocation(line: 88, column: 3, scope: !3827)
!3881 = !DILocation(line: 95, column: 3, scope: !3827)
!3882 = !DILocation(line: 97, column: 3, scope: !3827)
!3883 = !DILocation(line: 105, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3827, file: !449, line: 98, column: 5)
!3885 = !DILocation(line: 106, column: 7, scope: !3884)
!3886 = !DILocation(line: 109, column: 7, scope: !3884)
!3887 = !DILocation(line: 110, column: 7, scope: !3884)
!3888 = !DILocation(line: 113, column: 7, scope: !3884)
!3889 = !DILocation(line: 115, column: 7, scope: !3884)
!3890 = !DILocation(line: 120, column: 7, scope: !3884)
!3891 = !DILocation(line: 122, column: 7, scope: !3884)
!3892 = !DILocation(line: 127, column: 7, scope: !3884)
!3893 = !DILocation(line: 129, column: 7, scope: !3884)
!3894 = !DILocation(line: 134, column: 7, scope: !3884)
!3895 = !DILocation(line: 137, column: 7, scope: !3884)
!3896 = !DILocation(line: 142, column: 7, scope: !3884)
!3897 = !DILocation(line: 145, column: 7, scope: !3884)
!3898 = !DILocation(line: 150, column: 7, scope: !3884)
!3899 = !DILocation(line: 154, column: 7, scope: !3884)
!3900 = !DILocation(line: 159, column: 7, scope: !3884)
!3901 = !DILocation(line: 163, column: 7, scope: !3884)
!3902 = !DILocation(line: 170, column: 7, scope: !3884)
!3903 = !DILocation(line: 174, column: 7, scope: !3884)
!3904 = !DILocation(line: 176, column: 1, scope: !3827)
!3905 = distinct !DISubprogram(name: "version_etc_ar", scope: !449, file: !449, line: 183, type: !3906, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3830, !60, !60, !60, !3864}
!3908 = !{!3909, !3910, !3911, !3912, !3913, !3914}
!3909 = !DILocalVariable(name: "stream", arg: 1, scope: !3905, file: !449, line: 183, type: !3830)
!3910 = !DILocalVariable(name: "command_name", arg: 2, scope: !3905, file: !449, line: 184, type: !60)
!3911 = !DILocalVariable(name: "package", arg: 3, scope: !3905, file: !449, line: 184, type: !60)
!3912 = !DILocalVariable(name: "version", arg: 4, scope: !3905, file: !449, line: 185, type: !60)
!3913 = !DILocalVariable(name: "authors", arg: 5, scope: !3905, file: !449, line: 185, type: !3864)
!3914 = !DILocalVariable(name: "n_authors", scope: !3905, file: !449, line: 187, type: !57)
!3915 = !DILocation(line: 0, scope: !3905)
!3916 = !DILocation(line: 189, column: 8, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3905, file: !449, line: 189, column: 3)
!3918 = !DILocation(line: 0, scope: !3917)
!3919 = !DILocation(line: 189, column: 23, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3917, file: !449, line: 189, column: 3)
!3921 = !DILocation(line: 189, column: 3, scope: !3917)
!3922 = !DILocation(line: 189, column: 52, scope: !3920)
!3923 = distinct !{!3923, !3921, !3924, !610}
!3924 = !DILocation(line: 190, column: 5, scope: !3917)
!3925 = !DILocation(line: 191, column: 3, scope: !3905)
!3926 = !DILocation(line: 192, column: 1, scope: !3905)
!3927 = distinct !DISubprogram(name: "version_etc_va", scope: !449, file: !449, line: 199, type: !3928, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3941)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !3830, !60, !60, !60, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !260, line: 52, baseType: !3931)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !262, line: 32, baseType: !3932)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3933, baseType: !3934)
!3933 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !266, size: 256, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3934, file: !3933, line: 192, baseType: !54, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3934, file: !3933, line: 192, baseType: !54, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3934, file: !3933, line: 192, baseType: !54, size: 64, offset: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3934, file: !3933, line: 192, baseType: !55, size: 32, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3934, file: !3933, line: 192, baseType: !55, size: 32, offset: 224)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3942 = !DILocalVariable(name: "stream", arg: 1, scope: !3927, file: !449, line: 199, type: !3830)
!3943 = !DILocalVariable(name: "command_name", arg: 2, scope: !3927, file: !449, line: 200, type: !60)
!3944 = !DILocalVariable(name: "package", arg: 3, scope: !3927, file: !449, line: 200, type: !60)
!3945 = !DILocalVariable(name: "version", arg: 4, scope: !3927, file: !449, line: 201, type: !60)
!3946 = !DILocalVariable(name: "authors", arg: 5, scope: !3927, file: !449, line: 201, type: !3930)
!3947 = !DILocalVariable(name: "n_authors", scope: !3927, file: !449, line: 203, type: !57)
!3948 = !DILocalVariable(name: "authtab", scope: !3927, file: !449, line: 204, type: !3949)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 640, elements: !229)
!3950 = !DILocation(line: 0, scope: !3927)
!3951 = !DILocation(line: 201, column: 46, scope: !3927)
!3952 = !DILocation(line: 204, column: 3, scope: !3927)
!3953 = !DILocation(line: 204, column: 15, scope: !3927)
!3954 = !DILocation(line: 208, column: 35, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !449, line: 206, column: 3)
!3956 = distinct !DILexicalBlock(scope: !3927, file: !449, line: 206, column: 3)
!3957 = !DILocation(line: 208, column: 14, scope: !3955)
!3958 = !DILocation(line: 208, column: 33, scope: !3955)
!3959 = !DILocation(line: 208, column: 67, scope: !3955)
!3960 = !DILocation(line: 206, column: 3, scope: !3956)
!3961 = !DILocation(line: 0, scope: !3956)
!3962 = !DILocation(line: 211, column: 3, scope: !3927)
!3963 = !DILocation(line: 213, column: 1, scope: !3927)
!3964 = distinct !DISubprogram(name: "version_etc", scope: !449, file: !449, line: 230, type: !3965, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3830, !60, !60, !60, null}
!3967 = !{!3968, !3969, !3970, !3971, !3972}
!3968 = !DILocalVariable(name: "stream", arg: 1, scope: !3964, file: !449, line: 230, type: !3830)
!3969 = !DILocalVariable(name: "command_name", arg: 2, scope: !3964, file: !449, line: 231, type: !60)
!3970 = !DILocalVariable(name: "package", arg: 3, scope: !3964, file: !449, line: 231, type: !60)
!3971 = !DILocalVariable(name: "version", arg: 4, scope: !3964, file: !449, line: 232, type: !60)
!3972 = !DILocalVariable(name: "authors", scope: !3964, file: !449, line: 234, type: !3930)
!3973 = !DILocation(line: 0, scope: !3964)
!3974 = !DILocation(line: 234, column: 3, scope: !3964)
!3975 = !DILocation(line: 234, column: 11, scope: !3964)
!3976 = !DILocation(line: 235, column: 3, scope: !3964)
!3977 = !DILocation(line: 236, column: 3, scope: !3964)
!3978 = !DILocation(line: 237, column: 3, scope: !3964)
!3979 = !DILocation(line: 238, column: 1, scope: !3964)
!3980 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !449, file: !449, line: 241, type: !287, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !553)
!3981 = !DILocation(line: 243, column: 3, scope: !3980)
!3982 = !DILocation(line: 248, column: 3, scope: !3980)
!3983 = !DILocation(line: 254, column: 3, scope: !3980)
!3984 = !DILocation(line: 259, column: 3, scope: !3980)
!3985 = !DILocation(line: 261, column: 1, scope: !3980)
!3986 = distinct !DISubprogram(name: "xnrealloc", scope: !3987, file: !3987, line: 147, type: !3988, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3990)
!3987 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!54, !54, !57, !57}
!3990 = !{!3991, !3992, !3993}
!3991 = !DILocalVariable(name: "p", arg: 1, scope: !3986, file: !3987, line: 147, type: !54)
!3992 = !DILocalVariable(name: "n", arg: 2, scope: !3986, file: !3987, line: 147, type: !57)
!3993 = !DILocalVariable(name: "s", arg: 3, scope: !3986, file: !3987, line: 147, type: !57)
!3994 = !DILocation(line: 0, scope: !3986)
!3995 = !DILocalVariable(name: "p", arg: 1, scope: !3996, file: !455, line: 83, type: !54)
!3996 = distinct !DISubprogram(name: "xreallocarray", scope: !455, file: !455, line: 83, type: !3988, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3997)
!3997 = !{!3995, !3998, !3999}
!3998 = !DILocalVariable(name: "n", arg: 2, scope: !3996, file: !455, line: 83, type: !57)
!3999 = !DILocalVariable(name: "s", arg: 3, scope: !3996, file: !455, line: 83, type: !57)
!4000 = !DILocation(line: 0, scope: !3996, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 149, column: 10, scope: !3986)
!4002 = !DILocation(line: 85, column: 25, scope: !3996, inlinedAt: !4001)
!4003 = !DILocalVariable(name: "p", arg: 1, scope: !4004, file: !455, line: 37, type: !54)
!4004 = distinct !DISubprogram(name: "check_nonnull", scope: !455, file: !455, line: 37, type: !4005, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!54, !54}
!4007 = !{!4003}
!4008 = !DILocation(line: 0, scope: !4004, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 85, column: 10, scope: !3996, inlinedAt: !4001)
!4010 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4009)
!4011 = distinct !DILexicalBlock(scope: !4004, file: !455, line: 39, column: 7)
!4012 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4009)
!4013 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4009)
!4014 = !DILocation(line: 149, column: 3, scope: !3986)
!4015 = !DILocation(line: 0, scope: !3996)
!4016 = !DILocation(line: 85, column: 25, scope: !3996)
!4017 = !DILocation(line: 0, scope: !4004, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 85, column: 10, scope: !3996)
!4019 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4018)
!4020 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4018)
!4021 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4018)
!4022 = !DILocation(line: 85, column: 3, scope: !3996)
!4023 = distinct !DISubprogram(name: "xmalloc", scope: !455, file: !455, line: 47, type: !4024, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!54, !57}
!4026 = !{!4027}
!4027 = !DILocalVariable(name: "s", arg: 1, scope: !4023, file: !455, line: 47, type: !57)
!4028 = !DILocation(line: 0, scope: !4023)
!4029 = !DILocation(line: 49, column: 25, scope: !4023)
!4030 = !DILocation(line: 0, scope: !4004, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 49, column: 10, scope: !4023)
!4032 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4031)
!4033 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4031)
!4034 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4031)
!4035 = !DILocation(line: 49, column: 3, scope: !4023)
!4036 = distinct !DISubprogram(name: "ximalloc", scope: !455, file: !455, line: 53, type: !4037, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!54, !474}
!4039 = !{!4040}
!4040 = !DILocalVariable(name: "s", arg: 1, scope: !4036, file: !455, line: 53, type: !474)
!4041 = !DILocation(line: 0, scope: !4036)
!4042 = !DILocalVariable(name: "s", arg: 1, scope: !4043, file: !4044, line: 55, type: !474)
!4043 = distinct !DISubprogram(name: "imalloc", scope: !4044, file: !4044, line: 55, type: !4037, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4045)
!4044 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4045 = !{!4042}
!4046 = !DILocation(line: 0, scope: !4043, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 55, column: 25, scope: !4036)
!4048 = !DILocation(line: 57, column: 26, scope: !4043, inlinedAt: !4047)
!4049 = !DILocation(line: 0, scope: !4004, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 55, column: 10, scope: !4036)
!4051 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4050)
!4052 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4050)
!4053 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4050)
!4054 = !DILocation(line: 55, column: 3, scope: !4036)
!4055 = distinct !DISubprogram(name: "xcharalloc", scope: !455, file: !455, line: 59, type: !4056, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!52, !57}
!4058 = !{!4059}
!4059 = !DILocalVariable(name: "n", arg: 1, scope: !4055, file: !455, line: 59, type: !57)
!4060 = !DILocation(line: 0, scope: !4055)
!4061 = !DILocation(line: 0, scope: !4023, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 61, column: 10, scope: !4055)
!4063 = !DILocation(line: 49, column: 25, scope: !4023, inlinedAt: !4062)
!4064 = !DILocation(line: 0, scope: !4004, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 49, column: 10, scope: !4023, inlinedAt: !4062)
!4066 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4065)
!4067 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4065)
!4068 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4065)
!4069 = !DILocation(line: 61, column: 3, scope: !4055)
!4070 = distinct !DISubprogram(name: "xrealloc", scope: !455, file: !455, line: 68, type: !4071, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!54, !54, !57}
!4073 = !{!4074, !4075}
!4074 = !DILocalVariable(name: "p", arg: 1, scope: !4070, file: !455, line: 68, type: !54)
!4075 = !DILocalVariable(name: "s", arg: 2, scope: !4070, file: !455, line: 68, type: !57)
!4076 = !DILocation(line: 0, scope: !4070)
!4077 = !DILocalVariable(name: "ptr", arg: 1, scope: !4078, file: !4079, line: 2057, type: !54)
!4078 = distinct !DISubprogram(name: "rpl_realloc", scope: !4079, file: !4079, line: 2057, type: !4071, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4080)
!4079 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4080 = !{!4077, !4081}
!4081 = !DILocalVariable(name: "size", arg: 2, scope: !4078, file: !4079, line: 2057, type: !57)
!4082 = !DILocation(line: 0, scope: !4078, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 70, column: 25, scope: !4070)
!4084 = !DILocation(line: 2059, column: 24, scope: !4078, inlinedAt: !4083)
!4085 = !DILocation(line: 2059, column: 10, scope: !4078, inlinedAt: !4083)
!4086 = !DILocation(line: 0, scope: !4004, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 70, column: 10, scope: !4070)
!4088 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4087)
!4089 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4087)
!4090 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4087)
!4091 = !DILocation(line: 70, column: 3, scope: !4070)
!4092 = distinct !DISubprogram(name: "xirealloc", scope: !455, file: !455, line: 74, type: !4093, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!54, !54, !474}
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "p", arg: 1, scope: !4092, file: !455, line: 74, type: !54)
!4097 = !DILocalVariable(name: "s", arg: 2, scope: !4092, file: !455, line: 74, type: !474)
!4098 = !DILocation(line: 0, scope: !4092)
!4099 = !DILocalVariable(name: "p", arg: 1, scope: !4100, file: !4044, line: 66, type: !54)
!4100 = distinct !DISubprogram(name: "irealloc", scope: !4044, file: !4044, line: 66, type: !4093, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4101)
!4101 = !{!4099, !4102}
!4102 = !DILocalVariable(name: "s", arg: 2, scope: !4100, file: !4044, line: 66, type: !474)
!4103 = !DILocation(line: 0, scope: !4100, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 76, column: 25, scope: !4092)
!4105 = !DILocation(line: 0, scope: !4078, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 68, column: 26, scope: !4100, inlinedAt: !4104)
!4107 = !DILocation(line: 2059, column: 24, scope: !4078, inlinedAt: !4106)
!4108 = !DILocation(line: 2059, column: 10, scope: !4078, inlinedAt: !4106)
!4109 = !DILocation(line: 0, scope: !4004, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 76, column: 10, scope: !4092)
!4111 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4110)
!4112 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4110)
!4113 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4110)
!4114 = !DILocation(line: 76, column: 3, scope: !4092)
!4115 = distinct !DISubprogram(name: "xireallocarray", scope: !455, file: !455, line: 89, type: !4116, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4118)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!54, !54, !474, !474}
!4118 = !{!4119, !4120, !4121}
!4119 = !DILocalVariable(name: "p", arg: 1, scope: !4115, file: !455, line: 89, type: !54)
!4120 = !DILocalVariable(name: "n", arg: 2, scope: !4115, file: !455, line: 89, type: !474)
!4121 = !DILocalVariable(name: "s", arg: 3, scope: !4115, file: !455, line: 89, type: !474)
!4122 = !DILocation(line: 0, scope: !4115)
!4123 = !DILocalVariable(name: "p", arg: 1, scope: !4124, file: !4044, line: 98, type: !54)
!4124 = distinct !DISubprogram(name: "ireallocarray", scope: !4044, file: !4044, line: 98, type: !4116, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4125)
!4125 = !{!4123, !4126, !4127}
!4126 = !DILocalVariable(name: "n", arg: 2, scope: !4124, file: !4044, line: 98, type: !474)
!4127 = !DILocalVariable(name: "s", arg: 3, scope: !4124, file: !4044, line: 98, type: !474)
!4128 = !DILocation(line: 0, scope: !4124, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 91, column: 25, scope: !4115)
!4130 = !DILocation(line: 101, column: 13, scope: !4124, inlinedAt: !4129)
!4131 = !DILocation(line: 0, scope: !4004, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 91, column: 10, scope: !4115)
!4133 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4132)
!4134 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4132)
!4135 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4132)
!4136 = !DILocation(line: 91, column: 3, scope: !4115)
!4137 = distinct !DISubprogram(name: "xnmalloc", scope: !455, file: !455, line: 98, type: !4138, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!54, !57, !57}
!4140 = !{!4141, !4142}
!4141 = !DILocalVariable(name: "n", arg: 1, scope: !4137, file: !455, line: 98, type: !57)
!4142 = !DILocalVariable(name: "s", arg: 2, scope: !4137, file: !455, line: 98, type: !57)
!4143 = !DILocation(line: 0, scope: !4137)
!4144 = !DILocation(line: 0, scope: !3996, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 100, column: 10, scope: !4137)
!4146 = !DILocation(line: 85, column: 25, scope: !3996, inlinedAt: !4145)
!4147 = !DILocation(line: 0, scope: !4004, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 85, column: 10, scope: !3996, inlinedAt: !4145)
!4149 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4148)
!4150 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4148)
!4151 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4148)
!4152 = !DILocation(line: 100, column: 3, scope: !4137)
!4153 = distinct !DISubprogram(name: "xinmalloc", scope: !455, file: !455, line: 104, type: !4154, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4156)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!54, !474, !474}
!4156 = !{!4157, !4158}
!4157 = !DILocalVariable(name: "n", arg: 1, scope: !4153, file: !455, line: 104, type: !474)
!4158 = !DILocalVariable(name: "s", arg: 2, scope: !4153, file: !455, line: 104, type: !474)
!4159 = !DILocation(line: 0, scope: !4153)
!4160 = !DILocation(line: 0, scope: !4115, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 106, column: 10, scope: !4153)
!4162 = !DILocation(line: 0, scope: !4124, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 91, column: 25, scope: !4115, inlinedAt: !4161)
!4164 = !DILocation(line: 101, column: 13, scope: !4124, inlinedAt: !4163)
!4165 = !DILocation(line: 0, scope: !4004, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 91, column: 10, scope: !4115, inlinedAt: !4161)
!4167 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4166)
!4168 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4166)
!4169 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4166)
!4170 = !DILocation(line: 106, column: 3, scope: !4153)
!4171 = distinct !DISubprogram(name: "x2realloc", scope: !455, file: !455, line: 116, type: !4172, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!54, !54, !461}
!4174 = !{!4175, !4176}
!4175 = !DILocalVariable(name: "p", arg: 1, scope: !4171, file: !455, line: 116, type: !54)
!4176 = !DILocalVariable(name: "ps", arg: 2, scope: !4171, file: !455, line: 116, type: !461)
!4177 = !DILocation(line: 0, scope: !4171)
!4178 = !DILocation(line: 0, scope: !458, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 118, column: 10, scope: !4171)
!4180 = !DILocation(line: 178, column: 14, scope: !458, inlinedAt: !4179)
!4181 = !DILocation(line: 180, column: 9, scope: !4182, inlinedAt: !4179)
!4182 = distinct !DILexicalBlock(scope: !458, file: !455, line: 180, column: 7)
!4183 = !DILocation(line: 180, column: 7, scope: !458, inlinedAt: !4179)
!4184 = !DILocation(line: 182, column: 13, scope: !4185, inlinedAt: !4179)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !455, line: 182, column: 11)
!4186 = distinct !DILexicalBlock(scope: !4182, file: !455, line: 181, column: 5)
!4187 = !DILocation(line: 182, column: 11, scope: !4186, inlinedAt: !4179)
!4188 = !DILocation(line: 197, column: 11, scope: !4189, inlinedAt: !4179)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !455, line: 197, column: 11)
!4190 = distinct !DILexicalBlock(scope: !4182, file: !455, line: 195, column: 5)
!4191 = !DILocation(line: 197, column: 11, scope: !4190, inlinedAt: !4179)
!4192 = !DILocation(line: 198, column: 9, scope: !4189, inlinedAt: !4179)
!4193 = !DILocation(line: 0, scope: !3996, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 201, column: 7, scope: !458, inlinedAt: !4179)
!4195 = !DILocation(line: 85, column: 25, scope: !3996, inlinedAt: !4194)
!4196 = !DILocation(line: 0, scope: !4004, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 85, column: 10, scope: !3996, inlinedAt: !4194)
!4198 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4197)
!4199 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4197)
!4200 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4197)
!4201 = !DILocation(line: 202, column: 7, scope: !458, inlinedAt: !4179)
!4202 = !DILocation(line: 118, column: 3, scope: !4171)
!4203 = !DILocation(line: 0, scope: !458)
!4204 = !DILocation(line: 178, column: 14, scope: !458)
!4205 = !DILocation(line: 180, column: 9, scope: !4182)
!4206 = !DILocation(line: 180, column: 7, scope: !458)
!4207 = !DILocation(line: 182, column: 13, scope: !4185)
!4208 = !DILocation(line: 182, column: 11, scope: !4186)
!4209 = !DILocation(line: 190, column: 30, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4185, file: !455, line: 183, column: 9)
!4211 = !DILocation(line: 191, column: 16, scope: !4210)
!4212 = !DILocation(line: 191, column: 13, scope: !4210)
!4213 = !DILocation(line: 192, column: 9, scope: !4210)
!4214 = !DILocation(line: 197, column: 11, scope: !4189)
!4215 = !DILocation(line: 197, column: 11, scope: !4190)
!4216 = !DILocation(line: 198, column: 9, scope: !4189)
!4217 = !DILocation(line: 0, scope: !3996, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 201, column: 7, scope: !458)
!4219 = !DILocation(line: 85, column: 25, scope: !3996, inlinedAt: !4218)
!4220 = !DILocation(line: 0, scope: !4004, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 85, column: 10, scope: !3996, inlinedAt: !4218)
!4222 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4221)
!4223 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4221)
!4224 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4221)
!4225 = !DILocation(line: 202, column: 7, scope: !458)
!4226 = !DILocation(line: 203, column: 3, scope: !458)
!4227 = !DILocation(line: 0, scope: !470)
!4228 = !DILocation(line: 230, column: 14, scope: !470)
!4229 = !DILocation(line: 238, column: 7, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !470, file: !455, line: 238, column: 7)
!4231 = !DILocation(line: 238, column: 7, scope: !470)
!4232 = !DILocation(line: 240, column: 9, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !470, file: !455, line: 240, column: 7)
!4234 = !DILocation(line: 240, column: 18, scope: !4233)
!4235 = !DILocation(line: 253, column: 8, scope: !470)
!4236 = !DILocation(line: 258, column: 27, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !455, line: 257, column: 5)
!4238 = distinct !DILexicalBlock(scope: !470, file: !455, line: 256, column: 7)
!4239 = !DILocation(line: 259, column: 32, scope: !4237)
!4240 = !DILocation(line: 260, column: 5, scope: !4237)
!4241 = !DILocation(line: 262, column: 9, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !470, file: !455, line: 262, column: 7)
!4243 = !DILocation(line: 262, column: 7, scope: !470)
!4244 = !DILocation(line: 263, column: 9, scope: !4242)
!4245 = !DILocation(line: 263, column: 5, scope: !4242)
!4246 = !DILocation(line: 264, column: 9, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !470, file: !455, line: 264, column: 7)
!4248 = !DILocation(line: 264, column: 14, scope: !4247)
!4249 = !DILocation(line: 265, column: 7, scope: !4247)
!4250 = !DILocation(line: 265, column: 11, scope: !4247)
!4251 = !DILocation(line: 266, column: 11, scope: !4247)
!4252 = !DILocation(line: 266, column: 26, scope: !4247)
!4253 = !DILocation(line: 267, column: 14, scope: !4247)
!4254 = !DILocation(line: 264, column: 7, scope: !470)
!4255 = !DILocation(line: 268, column: 5, scope: !4247)
!4256 = !DILocation(line: 0, scope: !4070, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 269, column: 8, scope: !470)
!4258 = !DILocation(line: 0, scope: !4078, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 70, column: 25, scope: !4070, inlinedAt: !4257)
!4260 = !DILocation(line: 2059, column: 24, scope: !4078, inlinedAt: !4259)
!4261 = !DILocation(line: 2059, column: 10, scope: !4078, inlinedAt: !4259)
!4262 = !DILocation(line: 0, scope: !4004, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 70, column: 10, scope: !4070, inlinedAt: !4257)
!4264 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4263)
!4265 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4263)
!4266 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4263)
!4267 = !DILocation(line: 270, column: 7, scope: !470)
!4268 = !DILocation(line: 271, column: 3, scope: !470)
!4269 = distinct !DISubprogram(name: "xzalloc", scope: !455, file: !455, line: 279, type: !4024, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4270)
!4270 = !{!4271}
!4271 = !DILocalVariable(name: "s", arg: 1, scope: !4269, file: !455, line: 279, type: !57)
!4272 = !DILocation(line: 0, scope: !4269)
!4273 = !DILocalVariable(name: "n", arg: 1, scope: !4274, file: !455, line: 294, type: !57)
!4274 = distinct !DISubprogram(name: "xcalloc", scope: !455, file: !455, line: 294, type: !4138, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4275)
!4275 = !{!4273, !4276}
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4274, file: !455, line: 294, type: !57)
!4277 = !DILocation(line: 0, scope: !4274, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 281, column: 10, scope: !4269)
!4279 = !DILocation(line: 296, column: 25, scope: !4274, inlinedAt: !4278)
!4280 = !DILocation(line: 0, scope: !4004, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 296, column: 10, scope: !4274, inlinedAt: !4278)
!4282 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4281)
!4283 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4281)
!4284 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4281)
!4285 = !DILocation(line: 281, column: 3, scope: !4269)
!4286 = !DILocation(line: 0, scope: !4274)
!4287 = !DILocation(line: 296, column: 25, scope: !4274)
!4288 = !DILocation(line: 0, scope: !4004, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 296, column: 10, scope: !4274)
!4290 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4289)
!4291 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4289)
!4292 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4289)
!4293 = !DILocation(line: 296, column: 3, scope: !4274)
!4294 = distinct !DISubprogram(name: "xizalloc", scope: !455, file: !455, line: 285, type: !4037, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4295)
!4295 = !{!4296}
!4296 = !DILocalVariable(name: "s", arg: 1, scope: !4294, file: !455, line: 285, type: !474)
!4297 = !DILocation(line: 0, scope: !4294)
!4298 = !DILocalVariable(name: "n", arg: 1, scope: !4299, file: !455, line: 300, type: !474)
!4299 = distinct !DISubprogram(name: "xicalloc", scope: !455, file: !455, line: 300, type: !4154, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4300)
!4300 = !{!4298, !4301}
!4301 = !DILocalVariable(name: "s", arg: 2, scope: !4299, file: !455, line: 300, type: !474)
!4302 = !DILocation(line: 0, scope: !4299, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 287, column: 10, scope: !4294)
!4304 = !DILocalVariable(name: "n", arg: 1, scope: !4305, file: !4044, line: 77, type: !474)
!4305 = distinct !DISubprogram(name: "icalloc", scope: !4044, file: !4044, line: 77, type: !4154, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4306)
!4306 = !{!4304, !4307}
!4307 = !DILocalVariable(name: "s", arg: 2, scope: !4305, file: !4044, line: 77, type: !474)
!4308 = !DILocation(line: 0, scope: !4305, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 302, column: 25, scope: !4299, inlinedAt: !4303)
!4310 = !DILocation(line: 91, column: 10, scope: !4305, inlinedAt: !4309)
!4311 = !DILocation(line: 0, scope: !4004, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 302, column: 10, scope: !4299, inlinedAt: !4303)
!4313 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4312)
!4314 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4312)
!4315 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4312)
!4316 = !DILocation(line: 287, column: 3, scope: !4294)
!4317 = !DILocation(line: 0, scope: !4299)
!4318 = !DILocation(line: 0, scope: !4305, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 302, column: 25, scope: !4299)
!4320 = !DILocation(line: 91, column: 10, scope: !4305, inlinedAt: !4319)
!4321 = !DILocation(line: 0, scope: !4004, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 302, column: 10, scope: !4299)
!4323 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4322)
!4324 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4322)
!4325 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4322)
!4326 = !DILocation(line: 302, column: 3, scope: !4299)
!4327 = distinct !DISubprogram(name: "xmemdup", scope: !455, file: !455, line: 310, type: !4328, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!54, !761, !57}
!4330 = !{!4331, !4332}
!4331 = !DILocalVariable(name: "p", arg: 1, scope: !4327, file: !455, line: 310, type: !761)
!4332 = !DILocalVariable(name: "s", arg: 2, scope: !4327, file: !455, line: 310, type: !57)
!4333 = !DILocation(line: 0, scope: !4327)
!4334 = !DILocation(line: 0, scope: !4023, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 312, column: 18, scope: !4327)
!4336 = !DILocation(line: 49, column: 25, scope: !4023, inlinedAt: !4335)
!4337 = !DILocation(line: 0, scope: !4004, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 49, column: 10, scope: !4023, inlinedAt: !4335)
!4339 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4338)
!4340 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4338)
!4341 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4338)
!4342 = !DILocalVariable(name: "__dest", arg: 1, scope: !4343, file: !1848, line: 26, type: !4346)
!4343 = distinct !DISubprogram(name: "memcpy", scope: !1848, file: !1848, line: 26, type: !4344, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4347)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!54, !4346, !760, !57}
!4346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!4347 = !{!4342, !4348, !4349}
!4348 = !DILocalVariable(name: "__src", arg: 2, scope: !4343, file: !1848, line: 26, type: !760)
!4349 = !DILocalVariable(name: "__len", arg: 3, scope: !4343, file: !1848, line: 26, type: !57)
!4350 = !DILocation(line: 0, scope: !4343, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 312, column: 10, scope: !4327)
!4352 = !DILocation(line: 29, column: 10, scope: !4343, inlinedAt: !4351)
!4353 = !DILocation(line: 312, column: 3, scope: !4327)
!4354 = distinct !DISubprogram(name: "ximemdup", scope: !455, file: !455, line: 316, type: !4355, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4357)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!54, !761, !474}
!4357 = !{!4358, !4359}
!4358 = !DILocalVariable(name: "p", arg: 1, scope: !4354, file: !455, line: 316, type: !761)
!4359 = !DILocalVariable(name: "s", arg: 2, scope: !4354, file: !455, line: 316, type: !474)
!4360 = !DILocation(line: 0, scope: !4354)
!4361 = !DILocation(line: 0, scope: !4036, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 318, column: 18, scope: !4354)
!4363 = !DILocation(line: 0, scope: !4043, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 55, column: 25, scope: !4036, inlinedAt: !4362)
!4365 = !DILocation(line: 57, column: 26, scope: !4043, inlinedAt: !4364)
!4366 = !DILocation(line: 0, scope: !4004, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 55, column: 10, scope: !4036, inlinedAt: !4362)
!4368 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4367)
!4369 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4367)
!4370 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4367)
!4371 = !DILocation(line: 0, scope: !4343, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 318, column: 10, scope: !4354)
!4373 = !DILocation(line: 29, column: 10, scope: !4343, inlinedAt: !4372)
!4374 = !DILocation(line: 318, column: 3, scope: !4354)
!4375 = distinct !DISubprogram(name: "ximemdup0", scope: !455, file: !455, line: 325, type: !4376, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4378)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!52, !761, !474}
!4378 = !{!4379, !4380, !4381}
!4379 = !DILocalVariable(name: "p", arg: 1, scope: !4375, file: !455, line: 325, type: !761)
!4380 = !DILocalVariable(name: "s", arg: 2, scope: !4375, file: !455, line: 325, type: !474)
!4381 = !DILocalVariable(name: "result", scope: !4375, file: !455, line: 327, type: !52)
!4382 = !DILocation(line: 0, scope: !4375)
!4383 = !DILocation(line: 327, column: 30, scope: !4375)
!4384 = !DILocation(line: 0, scope: !4036, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 327, column: 18, scope: !4375)
!4386 = !DILocation(line: 0, scope: !4043, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 55, column: 25, scope: !4036, inlinedAt: !4385)
!4388 = !DILocation(line: 57, column: 26, scope: !4043, inlinedAt: !4387)
!4389 = !DILocation(line: 0, scope: !4004, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 55, column: 10, scope: !4036, inlinedAt: !4385)
!4391 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4390)
!4392 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4390)
!4393 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4390)
!4394 = !DILocation(line: 328, column: 3, scope: !4375)
!4395 = !DILocation(line: 328, column: 13, scope: !4375)
!4396 = !DILocation(line: 0, scope: !4343, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 329, column: 10, scope: !4375)
!4398 = !DILocation(line: 29, column: 10, scope: !4343, inlinedAt: !4397)
!4399 = !DILocation(line: 329, column: 3, scope: !4375)
!4400 = distinct !DISubprogram(name: "xstrdup", scope: !455, file: !455, line: 335, type: !755, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4401)
!4401 = !{!4402}
!4402 = !DILocalVariable(name: "string", arg: 1, scope: !4400, file: !455, line: 335, type: !60)
!4403 = !DILocation(line: 0, scope: !4400)
!4404 = !DILocation(line: 337, column: 27, scope: !4400)
!4405 = !DILocation(line: 337, column: 43, scope: !4400)
!4406 = !DILocation(line: 0, scope: !4327, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 337, column: 10, scope: !4400)
!4408 = !DILocation(line: 0, scope: !4023, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 312, column: 18, scope: !4327, inlinedAt: !4407)
!4410 = !DILocation(line: 49, column: 25, scope: !4023, inlinedAt: !4409)
!4411 = !DILocation(line: 0, scope: !4004, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 49, column: 10, scope: !4023, inlinedAt: !4409)
!4413 = !DILocation(line: 39, column: 8, scope: !4011, inlinedAt: !4412)
!4414 = !DILocation(line: 39, column: 7, scope: !4004, inlinedAt: !4412)
!4415 = !DILocation(line: 40, column: 5, scope: !4011, inlinedAt: !4412)
!4416 = !DILocation(line: 0, scope: !4343, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 312, column: 10, scope: !4327, inlinedAt: !4407)
!4418 = !DILocation(line: 29, column: 10, scope: !4343, inlinedAt: !4417)
!4419 = !DILocation(line: 337, column: 3, scope: !4400)
!4420 = distinct !DISubprogram(name: "xalloc_die", scope: !489, file: !489, line: 32, type: !287, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !4421)
!4421 = !{!4422}
!4422 = !DILocalVariable(name: "__errstatus", scope: !4423, file: !489, line: 34, type: !4424)
!4423 = distinct !DILexicalBlock(scope: !4420, file: !489, line: 34, column: 3)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!4425 = !DILocation(line: 34, column: 3, scope: !4423)
!4426 = !DILocation(line: 0, scope: !4423)
!4427 = !DILocation(line: 40, column: 3, scope: !4420)
!4428 = distinct !DISubprogram(name: "xnumtoumax", scope: !4429, file: !4429, line: 42, type: !4430, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !4432)
!4429 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!505, !60, !55, !505, !505, !60, !60, !55, !55}
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4445, !4446, !4447}
!4433 = !DILocalVariable(name: "n_str", arg: 1, scope: !4428, file: !4429, line: 42, type: !60)
!4434 = !DILocalVariable(name: "base", arg: 2, scope: !4428, file: !4429, line: 42, type: !55)
!4435 = !DILocalVariable(name: "min", arg: 3, scope: !4428, file: !4429, line: 42, type: !505)
!4436 = !DILocalVariable(name: "max", arg: 4, scope: !4428, file: !4429, line: 42, type: !505)
!4437 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4428, file: !4429, line: 43, type: !60)
!4438 = !DILocalVariable(name: "err", arg: 6, scope: !4428, file: !4429, line: 43, type: !60)
!4439 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4428, file: !4429, line: 43, type: !55)
!4440 = !DILocalVariable(name: "flags", arg: 8, scope: !4428, file: !4429, line: 44, type: !55)
!4441 = !DILocalVariable(name: "tnum", scope: !4428, file: !4429, line: 46, type: !505)
!4442 = !DILocalVariable(name: "r", scope: !4428, file: !4429, line: 46, type: !505)
!4443 = !DILocalVariable(name: "s_err", scope: !4428, file: !4429, line: 47, type: !4444)
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !494, line: 43, baseType: !493)
!4445 = !DILocalVariable(name: "overflow_errno", scope: !4428, file: !4429, line: 50, type: !55)
!4446 = !DILocalVariable(name: "e", scope: !4428, file: !4429, line: 75, type: !55)
!4447 = !DILocalVariable(name: "__errstatus", scope: !4448, file: !4429, line: 80, type: !4424)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !4429, line: 80, column: 5)
!4449 = distinct !DILexicalBlock(scope: !4428, file: !4429, line: 77, column: 7)
!4450 = !DILocation(line: 0, scope: !4428)
!4451 = !DILocation(line: 46, column: 3, scope: !4428)
!4452 = !DILocation(line: 47, column: 24, scope: !4428)
!4453 = !DILocation(line: 52, column: 13, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4428, file: !4429, line: 52, column: 7)
!4455 = !DILocation(line: 52, column: 7, scope: !4428)
!4456 = !DILocation(line: 54, column: 11, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !4429, line: 54, column: 11)
!4458 = distinct !DILexicalBlock(scope: !4454, file: !4429, line: 53, column: 5)
!4459 = !DILocation(line: 54, column: 16, scope: !4457)
!4460 = !DILocation(line: 54, column: 11, scope: !4458)
!4461 = !DILocation(line: 57, column: 34, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4457, file: !4429, line: 55, column: 9)
!4463 = !DILocation(line: 57, column: 28, scope: !4462)
!4464 = !DILocation(line: 58, column: 21, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4462, file: !4429, line: 58, column: 15)
!4466 = !DILocation(line: 0, scope: !4462)
!4467 = !DILocation(line: 61, column: 20, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4457, file: !4429, line: 61, column: 16)
!4469 = !DILocation(line: 61, column: 16, scope: !4457)
!4470 = !DILocation(line: 64, column: 34, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4468, file: !4429, line: 62, column: 9)
!4472 = !DILocation(line: 64, column: 28, scope: !4471)
!4473 = !DILocation(line: 65, column: 21, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4471, file: !4429, line: 65, column: 15)
!4475 = !DILocation(line: 0, scope: !4471)
!4476 = !DILocation(line: 75, column: 17, scope: !4428)
!4477 = !DILocation(line: 75, column: 11, scope: !4428)
!4478 = !DILocation(line: 77, column: 16, scope: !4449)
!4479 = !DILocation(line: 78, column: 10, scope: !4449)
!4480 = !DILocation(line: 79, column: 14, scope: !4449)
!4481 = !DILocation(line: 80, column: 5, scope: !4449)
!4482 = !DILocation(line: 0, scope: !4449)
!4483 = !DILocation(line: 82, column: 3, scope: !4428)
!4484 = !DILocation(line: 82, column: 9, scope: !4428)
!4485 = !DILocation(line: 84, column: 1, scope: !4428)
!4486 = !DILocation(line: 83, column: 3, scope: !4428)
!4487 = distinct !DISubprogram(name: "xdectoumax", scope: !4429, file: !4429, line: 92, type: !4488, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!505, !60, !505, !505, !60, !60, !55}
!4490 = !{!4491, !4492, !4493, !4494, !4495, !4496}
!4491 = !DILocalVariable(name: "n_str", arg: 1, scope: !4487, file: !4429, line: 92, type: !60)
!4492 = !DILocalVariable(name: "min", arg: 2, scope: !4487, file: !4429, line: 92, type: !505)
!4493 = !DILocalVariable(name: "max", arg: 3, scope: !4487, file: !4429, line: 92, type: !505)
!4494 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4487, file: !4429, line: 93, type: !60)
!4495 = !DILocalVariable(name: "err", arg: 5, scope: !4487, file: !4429, line: 93, type: !60)
!4496 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4487, file: !4429, line: 93, type: !55)
!4497 = !DILocation(line: 0, scope: !4487)
!4498 = !DILocation(line: 0, scope: !4428, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 95, column: 10, scope: !4487)
!4500 = !DILocation(line: 46, column: 3, scope: !4428, inlinedAt: !4499)
!4501 = !DILocation(line: 47, column: 24, scope: !4428, inlinedAt: !4499)
!4502 = !DILocation(line: 52, column: 13, scope: !4454, inlinedAt: !4499)
!4503 = !DILocation(line: 52, column: 7, scope: !4428, inlinedAt: !4499)
!4504 = !DILocation(line: 54, column: 11, scope: !4457, inlinedAt: !4499)
!4505 = !DILocation(line: 54, column: 16, scope: !4457, inlinedAt: !4499)
!4506 = !DILocation(line: 54, column: 11, scope: !4458, inlinedAt: !4499)
!4507 = !DILocation(line: 58, column: 21, scope: !4465, inlinedAt: !4499)
!4508 = !DILocation(line: 0, scope: !4462, inlinedAt: !4499)
!4509 = !DILocation(line: 61, column: 20, scope: !4468, inlinedAt: !4499)
!4510 = !DILocation(line: 61, column: 16, scope: !4457, inlinedAt: !4499)
!4511 = !DILocation(line: 65, column: 21, scope: !4474, inlinedAt: !4499)
!4512 = !DILocation(line: 0, scope: !4471, inlinedAt: !4499)
!4513 = !DILocation(line: 75, column: 17, scope: !4428, inlinedAt: !4499)
!4514 = !DILocation(line: 75, column: 11, scope: !4428, inlinedAt: !4499)
!4515 = !DILocation(line: 77, column: 16, scope: !4449, inlinedAt: !4499)
!4516 = !DILocation(line: 78, column: 10, scope: !4449, inlinedAt: !4499)
!4517 = !DILocation(line: 80, column: 5, scope: !4449, inlinedAt: !4499)
!4518 = !DILocation(line: 0, scope: !4449, inlinedAt: !4499)
!4519 = !DILocation(line: 82, column: 3, scope: !4428, inlinedAt: !4499)
!4520 = !DILocation(line: 82, column: 9, scope: !4428, inlinedAt: !4499)
!4521 = !DILocation(line: 84, column: 1, scope: !4428, inlinedAt: !4499)
!4522 = !DILocation(line: 95, column: 3, scope: !4487)
!4523 = distinct !DISubprogram(name: "xstrtoumax", scope: !4524, file: !4524, line: 71, type: !4525, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !4528)
!4524 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!4444, !60, !766, !55, !4527, !60}
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4539, !4540, !4541, !4542, !4545, !4546}
!4529 = !DILocalVariable(name: "nptr", arg: 1, scope: !4523, file: !4524, line: 71, type: !60)
!4530 = !DILocalVariable(name: "endptr", arg: 2, scope: !4523, file: !4524, line: 71, type: !766)
!4531 = !DILocalVariable(name: "base", arg: 3, scope: !4523, file: !4524, line: 71, type: !55)
!4532 = !DILocalVariable(name: "val", arg: 4, scope: !4523, file: !4524, line: 72, type: !4527)
!4533 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4523, file: !4524, line: 72, type: !60)
!4534 = !DILocalVariable(name: "t_ptr", scope: !4523, file: !4524, line: 74, type: !52)
!4535 = !DILocalVariable(name: "p", scope: !4523, file: !4524, line: 75, type: !766)
!4536 = !DILocalVariable(name: "q", scope: !4537, file: !4524, line: 79, type: !60)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !4524, line: 78, column: 5)
!4538 = distinct !DILexicalBlock(scope: !4523, file: !4524, line: 77, column: 7)
!4539 = !DILocalVariable(name: "ch", scope: !4537, file: !4524, line: 80, type: !62)
!4540 = !DILocalVariable(name: "tmp", scope: !4523, file: !4524, line: 91, type: !505)
!4541 = !DILocalVariable(name: "err", scope: !4523, file: !4524, line: 92, type: !4444)
!4542 = !DILocalVariable(name: "xbase", scope: !4543, file: !4524, line: 126, type: !55)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !4524, line: 119, column: 5)
!4544 = distinct !DILexicalBlock(scope: !4523, file: !4524, line: 118, column: 7)
!4545 = !DILocalVariable(name: "suffixes", scope: !4543, file: !4524, line: 127, type: !55)
!4546 = !DILocalVariable(name: "overflow", scope: !4543, file: !4524, line: 156, type: !4444)
!4547 = !DILocation(line: 0, scope: !4523)
!4548 = !DILocation(line: 74, column: 3, scope: !4523)
!4549 = !DILocation(line: 75, column: 14, scope: !4523)
!4550 = !DILocation(line: 0, scope: !4537)
!4551 = !DILocation(line: 81, column: 7, scope: !4537)
!4552 = !DILocation(line: 81, column: 14, scope: !4537)
!4553 = !DILocation(line: 82, column: 15, scope: !4537)
!4554 = distinct !{!4554, !4551, !4555, !610}
!4555 = !DILocation(line: 82, column: 17, scope: !4537)
!4556 = !DILocation(line: 83, column: 14, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4537, file: !4524, line: 83, column: 11)
!4558 = !DILocation(line: 83, column: 11, scope: !4537)
!4559 = !DILocation(line: 85, column: 14, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4557, file: !4524, line: 84, column: 9)
!4561 = !DILocation(line: 90, column: 3, scope: !4523)
!4562 = !DILocation(line: 90, column: 9, scope: !4523)
!4563 = !DILocation(line: 91, column: 20, scope: !4523)
!4564 = !DILocation(line: 94, column: 7, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4523, file: !4524, line: 94, column: 7)
!4566 = !DILocation(line: 94, column: 10, scope: !4565)
!4567 = !DILocation(line: 94, column: 7, scope: !4523)
!4568 = !DILocation(line: 98, column: 14, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !4524, line: 98, column: 11)
!4570 = distinct !DILexicalBlock(scope: !4565, file: !4524, line: 95, column: 5)
!4571 = !DILocation(line: 98, column: 29, scope: !4569)
!4572 = !DILocation(line: 98, column: 32, scope: !4569)
!4573 = !DILocation(line: 98, column: 38, scope: !4569)
!4574 = !DILocation(line: 98, column: 41, scope: !4569)
!4575 = !DILocation(line: 98, column: 11, scope: !4570)
!4576 = !DILocation(line: 102, column: 12, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4565, file: !4524, line: 102, column: 12)
!4578 = !DILocation(line: 102, column: 12, scope: !4565)
!4579 = !DILocation(line: 107, column: 5, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4577, file: !4524, line: 103, column: 5)
!4581 = !DILocation(line: 112, column: 8, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4523, file: !4524, line: 112, column: 7)
!4583 = !DILocation(line: 112, column: 7, scope: !4523)
!4584 = !DILocation(line: 114, column: 12, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4582, file: !4524, line: 113, column: 5)
!4586 = !DILocation(line: 115, column: 7, scope: !4585)
!4587 = !DILocation(line: 118, column: 7, scope: !4544)
!4588 = !DILocation(line: 118, column: 11, scope: !4544)
!4589 = !DILocation(line: 118, column: 7, scope: !4523)
!4590 = !DILocation(line: 120, column: 12, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4543, file: !4524, line: 120, column: 11)
!4592 = !DILocation(line: 120, column: 11, scope: !4543)
!4593 = !DILocation(line: 122, column: 16, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4591, file: !4524, line: 121, column: 9)
!4595 = !DILocation(line: 123, column: 22, scope: !4594)
!4596 = !DILocation(line: 123, column: 11, scope: !4594)
!4597 = !DILocation(line: 0, scope: !4543)
!4598 = !DILocation(line: 128, column: 7, scope: !4543)
!4599 = !DILocation(line: 140, column: 15, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !4524, line: 140, column: 15)
!4601 = distinct !DILexicalBlock(scope: !4543, file: !4524, line: 129, column: 9)
!4602 = !DILocation(line: 140, column: 15, scope: !4601)
!4603 = !DILocation(line: 141, column: 21, scope: !4600)
!4604 = !DILocation(line: 141, column: 13, scope: !4600)
!4605 = !DILocation(line: 144, column: 21, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !4524, line: 144, column: 21)
!4607 = distinct !DILexicalBlock(scope: !4600, file: !4524, line: 142, column: 15)
!4608 = !DILocation(line: 144, column: 29, scope: !4606)
!4609 = !DILocation(line: 144, column: 21, scope: !4607)
!4610 = !DILocation(line: 152, column: 17, scope: !4607)
!4611 = !DILocation(line: 157, column: 7, scope: !4543)
!4612 = !DILocalVariable(name: "err", scope: !4613, file: !4524, line: 64, type: !4444)
!4613 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4524, file: !4524, line: 62, type: !4614, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!4444, !4527, !55, !55}
!4616 = !{!4617, !4618, !4619, !4612}
!4617 = !DILocalVariable(name: "x", arg: 1, scope: !4613, file: !4524, line: 62, type: !4527)
!4618 = !DILocalVariable(name: "base", arg: 2, scope: !4613, file: !4524, line: 62, type: !55)
!4619 = !DILocalVariable(name: "power", arg: 3, scope: !4613, file: !4524, line: 62, type: !55)
!4620 = !DILocation(line: 0, scope: !4613, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 219, column: 22, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4543, file: !4524, line: 158, column: 9)
!4623 = !DILocalVariable(name: "x", arg: 1, scope: !4624, file: !4524, line: 47, type: !4527)
!4624 = distinct !DISubprogram(name: "bkm_scale", scope: !4524, file: !4524, line: 47, type: !4625, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !4627)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!4444, !4527, !55}
!4627 = !{!4623, !4628, !4629}
!4628 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4624, file: !4524, line: 47, type: !55)
!4629 = !DILocalVariable(name: "scaled", scope: !4624, file: !4524, line: 49, type: !505)
!4630 = !DILocation(line: 0, scope: !4624, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4621)
!4632 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4631)
!4633 = distinct !DILexicalBlock(scope: !4624, file: !4524, line: 50, column: 7)
!4634 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4621)
!4635 = !DILocation(line: 227, column: 11, scope: !4543)
!4636 = !DILocation(line: 0, scope: !4613, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 215, column: 22, scope: !4622)
!4638 = !DILocation(line: 0, scope: !4624, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4637)
!4640 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4639)
!4641 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4637)
!4642 = !DILocation(line: 0, scope: !4613, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 202, column: 22, scope: !4622)
!4644 = !DILocation(line: 0, scope: !4624, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4643)
!4646 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4645)
!4647 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4643)
!4648 = !DILocation(line: 0, scope: !4613, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 198, column: 22, scope: !4622)
!4650 = !DILocation(line: 0, scope: !4624, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4649)
!4652 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4651)
!4653 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4649)
!4654 = !DILocation(line: 0, scope: !4613, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 194, column: 22, scope: !4622)
!4656 = !DILocation(line: 0, scope: !4624, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4655)
!4658 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4657)
!4659 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4655)
!4660 = !DILocation(line: 0, scope: !4613, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 175, column: 22, scope: !4622)
!4662 = !DILocation(line: 0, scope: !4624, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4661)
!4664 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4663)
!4665 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4661)
!4666 = !DILocation(line: 0, scope: !4624, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 160, column: 22, scope: !4622)
!4668 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4667)
!4669 = !DILocation(line: 161, column: 11, scope: !4622)
!4670 = !DILocation(line: 0, scope: !4624, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 167, column: 22, scope: !4622)
!4672 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4671)
!4673 = !DILocation(line: 168, column: 11, scope: !4622)
!4674 = !DILocation(line: 0, scope: !4613, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 180, column: 22, scope: !4622)
!4676 = !DILocation(line: 0, scope: !4624, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4675)
!4678 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4677)
!4679 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4675)
!4680 = !DILocation(line: 0, scope: !4613, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 185, column: 22, scope: !4622)
!4682 = !DILocation(line: 0, scope: !4624, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4681)
!4684 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4683)
!4685 = !DILocation(line: 0, scope: !4613, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 190, column: 22, scope: !4622)
!4687 = !DILocation(line: 0, scope: !4624, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4686)
!4689 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4688)
!4690 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4686)
!4691 = !DILocation(line: 0, scope: !4613, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 207, column: 22, scope: !4622)
!4693 = !DILocation(line: 0, scope: !4624, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 66, column: 12, scope: !4613, inlinedAt: !4692)
!4695 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4694)
!4696 = !DILocation(line: 66, column: 9, scope: !4613, inlinedAt: !4692)
!4697 = !DILocation(line: 0, scope: !4624, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 211, column: 22, scope: !4622)
!4699 = !DILocation(line: 50, column: 7, scope: !4633, inlinedAt: !4698)
!4700 = !DILocation(line: 212, column: 11, scope: !4622)
!4701 = !DILocation(line: 0, scope: !4622)
!4702 = !DILocation(line: 228, column: 10, scope: !4543)
!4703 = !DILocation(line: 229, column: 11, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4543, file: !4524, line: 229, column: 11)
!4705 = !DILocation(line: 229, column: 11, scope: !4543)
!4706 = !DILocation(line: 223, column: 16, scope: !4622)
!4707 = !DILocation(line: 224, column: 22, scope: !4622)
!4708 = !DILocation(line: 100, column: 11, scope: !4570)
!4709 = !DILocation(line: 92, column: 16, scope: !4523)
!4710 = !DILocation(line: 233, column: 8, scope: !4523)
!4711 = !DILocation(line: 234, column: 3, scope: !4523)
!4712 = !DILocation(line: 235, column: 1, scope: !4523)
!4713 = !DISubprogram(name: "strtoumax", scope: !4714, file: !4714, line: 301, type: !4715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4714 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!505, !639, !4717, !55}
!4717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !766)
!4718 = distinct !DISubprogram(name: "rpl_fopen", scope: !509, file: !509, line: 46, type: !4719, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4755)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!4721, !60, !60}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4723)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4724)
!4724 = !{!4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4723, file: !107, line: 51, baseType: !55, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4723, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4723, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4723, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4723, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4723, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4723, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4723, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4723, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4723, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4723, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4723, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4723, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4723, file: !107, line: 70, baseType: !4739, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4723, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4723, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4723, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4723, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4723, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4723, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4723, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4723, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4723, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4723, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4723, file: !107, line: 93, baseType: !4739, size: 64, offset: 1344)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4723, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4723, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4723, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4723, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!4755 = !{!4756, !4757, !4758, !4759, !4760, !4761, !4765, !4767, !4768, !4773, !4776, !4777}
!4756 = !DILocalVariable(name: "filename", arg: 1, scope: !4718, file: !509, line: 46, type: !60)
!4757 = !DILocalVariable(name: "mode", arg: 2, scope: !4718, file: !509, line: 46, type: !60)
!4758 = !DILocalVariable(name: "open_direction", scope: !4718, file: !509, line: 54, type: !55)
!4759 = !DILocalVariable(name: "open_flags", scope: !4718, file: !509, line: 55, type: !55)
!4760 = !DILocalVariable(name: "open_flags_gnu", scope: !4718, file: !509, line: 57, type: !69)
!4761 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4718, file: !509, line: 59, type: !4762)
!4762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 648, elements: !4763)
!4763 = !{!4764}
!4764 = !DISubrange(count: 81)
!4765 = !DILocalVariable(name: "p", scope: !4766, file: !509, line: 62, type: !60)
!4766 = distinct !DILexicalBlock(scope: !4718, file: !509, line: 61, column: 3)
!4767 = !DILocalVariable(name: "q", scope: !4766, file: !509, line: 64, type: !52)
!4768 = !DILocalVariable(name: "len", scope: !4769, file: !509, line: 128, type: !57)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !509, line: 127, column: 9)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !509, line: 68, column: 7)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !509, line: 67, column: 5)
!4772 = distinct !DILexicalBlock(scope: !4766, file: !509, line: 67, column: 5)
!4773 = !DILocalVariable(name: "fd", scope: !4774, file: !509, line: 199, type: !55)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !509, line: 198, column: 5)
!4775 = distinct !DILexicalBlock(scope: !4718, file: !509, line: 197, column: 7)
!4776 = !DILocalVariable(name: "fp", scope: !4774, file: !509, line: 204, type: !4721)
!4777 = !DILocalVariable(name: "saved_errno", scope: !4778, file: !509, line: 207, type: !55)
!4778 = distinct !DILexicalBlock(scope: !4779, file: !509, line: 206, column: 9)
!4779 = distinct !DILexicalBlock(scope: !4774, file: !509, line: 205, column: 11)
!4780 = !DILocation(line: 0, scope: !4718)
!4781 = !DILocation(line: 59, column: 3, scope: !4718)
!4782 = !DILocation(line: 59, column: 8, scope: !4718)
!4783 = !DILocation(line: 0, scope: !4766)
!4784 = !DILocation(line: 67, column: 5, scope: !4766)
!4785 = !DILocation(line: 64, column: 11, scope: !4766)
!4786 = !DILocation(line: 54, column: 7, scope: !4718)
!4787 = !DILocation(line: 67, column: 12, scope: !4771)
!4788 = !DILocation(line: 67, column: 5, scope: !4772)
!4789 = !DILocation(line: 74, column: 19, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4791, file: !509, line: 74, column: 17)
!4791 = distinct !DILexicalBlock(scope: !4770, file: !509, line: 70, column: 11)
!4792 = !DILocation(line: 74, column: 17, scope: !4791)
!4793 = !DILocation(line: 75, column: 17, scope: !4790)
!4794 = !DILocation(line: 75, column: 20, scope: !4790)
!4795 = !DILocation(line: 75, column: 15, scope: !4790)
!4796 = !DILocation(line: 80, column: 24, scope: !4791)
!4797 = !DILocation(line: 82, column: 19, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4791, file: !509, line: 82, column: 17)
!4799 = !DILocation(line: 82, column: 17, scope: !4791)
!4800 = !DILocation(line: 83, column: 17, scope: !4798)
!4801 = !DILocation(line: 83, column: 20, scope: !4798)
!4802 = !DILocation(line: 83, column: 15, scope: !4798)
!4803 = !DILocation(line: 88, column: 24, scope: !4791)
!4804 = !DILocation(line: 90, column: 19, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4791, file: !509, line: 90, column: 17)
!4806 = !DILocation(line: 90, column: 17, scope: !4791)
!4807 = !DILocation(line: 91, column: 17, scope: !4805)
!4808 = !DILocation(line: 91, column: 20, scope: !4805)
!4809 = !DILocation(line: 91, column: 15, scope: !4805)
!4810 = !DILocation(line: 100, column: 19, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4791, file: !509, line: 100, column: 17)
!4812 = !DILocation(line: 100, column: 17, scope: !4791)
!4813 = !DILocation(line: 101, column: 17, scope: !4811)
!4814 = !DILocation(line: 101, column: 20, scope: !4811)
!4815 = !DILocation(line: 101, column: 15, scope: !4811)
!4816 = !DILocation(line: 107, column: 19, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4791, file: !509, line: 107, column: 17)
!4818 = !DILocation(line: 107, column: 17, scope: !4791)
!4819 = !DILocation(line: 108, column: 17, scope: !4817)
!4820 = !DILocation(line: 108, column: 20, scope: !4817)
!4821 = !DILocation(line: 108, column: 15, scope: !4817)
!4822 = !DILocation(line: 113, column: 24, scope: !4791)
!4823 = !DILocation(line: 115, column: 13, scope: !4791)
!4824 = !DILocation(line: 117, column: 24, scope: !4791)
!4825 = !DILocation(line: 119, column: 13, scope: !4791)
!4826 = !DILocation(line: 128, column: 24, scope: !4769)
!4827 = !DILocation(line: 0, scope: !4769)
!4828 = !DILocation(line: 129, column: 48, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4769, file: !509, line: 129, column: 15)
!4830 = !DILocation(line: 129, column: 19, scope: !4829)
!4831 = !DILocation(line: 129, column: 15, scope: !4769)
!4832 = !DILocalVariable(name: "__dest", arg: 1, scope: !4833, file: !1848, line: 26, type: !4346)
!4833 = distinct !DISubprogram(name: "memcpy", scope: !1848, file: !1848, line: 26, type: !4344, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4834)
!4834 = !{!4832, !4835, !4836}
!4835 = !DILocalVariable(name: "__src", arg: 2, scope: !4833, file: !1848, line: 26, type: !760)
!4836 = !DILocalVariable(name: "__len", arg: 3, scope: !4833, file: !1848, line: 26, type: !57)
!4837 = !DILocation(line: 0, scope: !4833, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 131, column: 11, scope: !4769)
!4839 = !DILocation(line: 29, column: 10, scope: !4833, inlinedAt: !4838)
!4840 = !DILocation(line: 132, column: 13, scope: !4769)
!4841 = !DILocation(line: 135, column: 9, scope: !4770)
!4842 = !DILocation(line: 67, column: 25, scope: !4771)
!4843 = !DILocation(line: 67, column: 5, scope: !4771)
!4844 = distinct !{!4844, !4788, !4845, !610}
!4845 = !DILocation(line: 136, column: 7, scope: !4772)
!4846 = !DILocation(line: 138, column: 8, scope: !4766)
!4847 = !DILocation(line: 197, column: 7, scope: !4718)
!4848 = !DILocation(line: 199, column: 47, scope: !4774)
!4849 = !DILocation(line: 199, column: 16, scope: !4774)
!4850 = !DILocation(line: 0, scope: !4774)
!4851 = !DILocation(line: 201, column: 14, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4774, file: !509, line: 201, column: 11)
!4853 = !DILocation(line: 201, column: 11, scope: !4774)
!4854 = !DILocation(line: 204, column: 18, scope: !4774)
!4855 = !DILocation(line: 205, column: 14, scope: !4779)
!4856 = !DILocation(line: 205, column: 11, scope: !4774)
!4857 = !DILocation(line: 207, column: 29, scope: !4778)
!4858 = !DILocation(line: 0, scope: !4778)
!4859 = !DILocation(line: 208, column: 11, scope: !4778)
!4860 = !DILocation(line: 209, column: 17, scope: !4778)
!4861 = !DILocation(line: 210, column: 9, scope: !4778)
!4862 = !DILocalVariable(name: "filename", arg: 1, scope: !4863, file: !509, line: 30, type: !60)
!4863 = distinct !DISubprogram(name: "orig_fopen", scope: !509, file: !509, line: 30, type: !4719, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4864)
!4864 = !{!4862, !4865}
!4865 = !DILocalVariable(name: "mode", arg: 2, scope: !4863, file: !509, line: 30, type: !60)
!4866 = !DILocation(line: 0, scope: !4863, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 219, column: 10, scope: !4718)
!4868 = !DILocation(line: 32, column: 10, scope: !4863, inlinedAt: !4867)
!4869 = !DILocation(line: 219, column: 3, scope: !4718)
!4870 = !DILocation(line: 220, column: 1, scope: !4718)
!4871 = !DISubprogram(name: "open", scope: !2069, file: !2069, line: 181, type: !4872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!55, !60, !55, null}
!4874 = !DISubprogram(name: "fdopen", scope: !260, file: !260, line: 293, type: !4875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!4721, !55, !60}
!4877 = !DISubprogram(name: "close", scope: !2273, file: !2273, line: 358, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4878 = distinct !DISubprogram(name: "close_stream", scope: !511, file: !511, line: 55, type: !4879, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !510, retainedNodes: !4915)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!55, !4881}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4883)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4884)
!4884 = !{!4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4883, file: !107, line: 51, baseType: !55, size: 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4883, file: !107, line: 54, baseType: !52, size: 64, offset: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4883, file: !107, line: 55, baseType: !52, size: 64, offset: 128)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4883, file: !107, line: 56, baseType: !52, size: 64, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4883, file: !107, line: 57, baseType: !52, size: 64, offset: 256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4883, file: !107, line: 58, baseType: !52, size: 64, offset: 320)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4883, file: !107, line: 59, baseType: !52, size: 64, offset: 384)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4883, file: !107, line: 60, baseType: !52, size: 64, offset: 448)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4883, file: !107, line: 61, baseType: !52, size: 64, offset: 512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4883, file: !107, line: 64, baseType: !52, size: 64, offset: 576)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4883, file: !107, line: 65, baseType: !52, size: 64, offset: 640)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4883, file: !107, line: 66, baseType: !52, size: 64, offset: 704)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4883, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4883, file: !107, line: 70, baseType: !4899, size: 64, offset: 832)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4883, file: !107, line: 72, baseType: !55, size: 32, offset: 896)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4883, file: !107, line: 73, baseType: !55, size: 32, offset: 928)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4883, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4883, file: !107, line: 77, baseType: !56, size: 16, offset: 1024)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4883, file: !107, line: 78, baseType: !133, size: 8, offset: 1040)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4883, file: !107, line: 79, baseType: !135, size: 8, offset: 1048)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4883, file: !107, line: 81, baseType: !139, size: 64, offset: 1088)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4883, file: !107, line: 89, baseType: !142, size: 64, offset: 1152)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4883, file: !107, line: 91, baseType: !144, size: 64, offset: 1216)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4883, file: !107, line: 92, baseType: !147, size: 64, offset: 1280)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4883, file: !107, line: 93, baseType: !4899, size: 64, offset: 1344)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4883, file: !107, line: 94, baseType: !54, size: 64, offset: 1408)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4883, file: !107, line: 95, baseType: !57, size: 64, offset: 1472)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4883, file: !107, line: 96, baseType: !55, size: 32, offset: 1536)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4883, file: !107, line: 98, baseType: !154, size: 160, offset: 1568)
!4915 = !{!4916, !4917, !4919, !4920}
!4916 = !DILocalVariable(name: "stream", arg: 1, scope: !4878, file: !511, line: 55, type: !4881)
!4917 = !DILocalVariable(name: "some_pending", scope: !4878, file: !511, line: 57, type: !4918)
!4918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!4919 = !DILocalVariable(name: "prev_fail", scope: !4878, file: !511, line: 58, type: !4918)
!4920 = !DILocalVariable(name: "fclose_fail", scope: !4878, file: !511, line: 59, type: !4918)
!4921 = !DILocation(line: 0, scope: !4878)
!4922 = !DILocation(line: 57, column: 30, scope: !4878)
!4923 = !DILocalVariable(name: "__stream", arg: 1, scope: !4924, file: !1023, line: 135, type: !4881)
!4924 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1023, file: !1023, line: 135, type: !4879, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !510, retainedNodes: !4925)
!4925 = !{!4923}
!4926 = !DILocation(line: 0, scope: !4924, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 58, column: 27, scope: !4878)
!4928 = !DILocation(line: 137, column: 10, scope: !4924, inlinedAt: !4927)
!4929 = !DILocation(line: 58, column: 43, scope: !4878)
!4930 = !DILocation(line: 59, column: 29, scope: !4878)
!4931 = !DILocation(line: 59, column: 45, scope: !4878)
!4932 = !DILocation(line: 69, column: 17, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4878, file: !511, line: 69, column: 7)
!4934 = !DILocation(line: 57, column: 50, scope: !4878)
!4935 = !DILocation(line: 69, column: 33, scope: !4933)
!4936 = !DILocation(line: 69, column: 53, scope: !4933)
!4937 = !DILocation(line: 69, column: 59, scope: !4933)
!4938 = !DILocation(line: 69, column: 7, scope: !4878)
!4939 = !DILocation(line: 71, column: 11, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4933, file: !511, line: 70, column: 5)
!4941 = !DILocation(line: 72, column: 9, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4940, file: !511, line: 71, column: 11)
!4943 = !DILocation(line: 72, column: 15, scope: !4942)
!4944 = !DILocation(line: 77, column: 1, scope: !4878)
!4945 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !421, file: !421, line: 100, type: !4946, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4949)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!57, !2532, !60, !57, !4948}
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!4949 = !{!4950, !4951, !4952, !4953, !4954}
!4950 = !DILocalVariable(name: "pwc", arg: 1, scope: !4945, file: !421, line: 100, type: !2532)
!4951 = !DILocalVariable(name: "s", arg: 2, scope: !4945, file: !421, line: 100, type: !60)
!4952 = !DILocalVariable(name: "n", arg: 3, scope: !4945, file: !421, line: 100, type: !57)
!4953 = !DILocalVariable(name: "ps", arg: 4, scope: !4945, file: !421, line: 100, type: !4948)
!4954 = !DILocalVariable(name: "ret", scope: !4945, file: !421, line: 130, type: !57)
!4955 = !DILocation(line: 0, scope: !4945)
!4956 = !DILocation(line: 105, column: 9, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4945, file: !421, line: 105, column: 7)
!4958 = !DILocation(line: 105, column: 7, scope: !4945)
!4959 = !DILocation(line: 117, column: 10, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4945, file: !421, line: 117, column: 7)
!4961 = !DILocation(line: 117, column: 7, scope: !4945)
!4962 = !DILocation(line: 130, column: 16, scope: !4945)
!4963 = !DILocation(line: 135, column: 11, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4945, file: !421, line: 135, column: 7)
!4965 = !DILocation(line: 135, column: 25, scope: !4964)
!4966 = !DILocation(line: 135, column: 30, scope: !4964)
!4967 = !DILocation(line: 135, column: 7, scope: !4945)
!4968 = !DILocalVariable(name: "ps", arg: 1, scope: !4969, file: !2506, line: 1135, type: !4948)
!4969 = distinct !DISubprogram(name: "mbszero", scope: !2506, file: !2506, line: 1135, type: !4970, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4972)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{null, !4948}
!4972 = !{!4968}
!4973 = !DILocation(line: 0, scope: !4969, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 137, column: 5, scope: !4964)
!4975 = !DILocalVariable(name: "__dest", arg: 1, scope: !4976, file: !1848, line: 57, type: !54)
!4976 = distinct !DISubprogram(name: "memset", scope: !1848, file: !1848, line: 57, type: !2515, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4977)
!4977 = !{!4975, !4978, !4979}
!4978 = !DILocalVariable(name: "__ch", arg: 2, scope: !4976, file: !1848, line: 57, type: !55)
!4979 = !DILocalVariable(name: "__len", arg: 3, scope: !4976, file: !1848, line: 57, type: !57)
!4980 = !DILocation(line: 0, scope: !4976, inlinedAt: !4981)
!4981 = distinct !DILocation(line: 1137, column: 3, scope: !4969, inlinedAt: !4974)
!4982 = !DILocation(line: 59, column: 10, scope: !4976, inlinedAt: !4981)
!4983 = !DILocation(line: 137, column: 5, scope: !4964)
!4984 = !DILocation(line: 138, column: 11, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4945, file: !421, line: 138, column: 7)
!4986 = !DILocation(line: 138, column: 7, scope: !4945)
!4987 = !DILocation(line: 139, column: 5, scope: !4985)
!4988 = !DILocation(line: 143, column: 26, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4945, file: !421, line: 143, column: 7)
!4990 = !DILocation(line: 143, column: 41, scope: !4989)
!4991 = !DILocation(line: 143, column: 7, scope: !4945)
!4992 = !DILocation(line: 145, column: 15, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !421, line: 145, column: 11)
!4994 = distinct !DILexicalBlock(scope: !4989, file: !421, line: 144, column: 5)
!4995 = !DILocation(line: 145, column: 11, scope: !4994)
!4996 = !DILocation(line: 146, column: 32, scope: !4993)
!4997 = !DILocation(line: 146, column: 16, scope: !4993)
!4998 = !DILocation(line: 146, column: 14, scope: !4993)
!4999 = !DILocation(line: 146, column: 9, scope: !4993)
!5000 = !DILocation(line: 286, column: 1, scope: !4945)
!5001 = !DISubprogram(name: "mbsinit", scope: !5002, file: !5002, line: 293, type: !5003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!5002 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!55, !5005}
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!5007 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !513, file: !513, line: 27, type: !3988, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !5008)
!5008 = !{!5009, !5010, !5011, !5012}
!5009 = !DILocalVariable(name: "ptr", arg: 1, scope: !5007, file: !513, line: 27, type: !54)
!5010 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5007, file: !513, line: 27, type: !57)
!5011 = !DILocalVariable(name: "size", arg: 3, scope: !5007, file: !513, line: 27, type: !57)
!5012 = !DILocalVariable(name: "nbytes", scope: !5007, file: !513, line: 29, type: !57)
!5013 = !DILocation(line: 0, scope: !5007)
!5014 = !DILocation(line: 30, column: 7, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5007, file: !513, line: 30, column: 7)
!5016 = !DILocalVariable(name: "ptr", arg: 1, scope: !5017, file: !4079, line: 2057, type: !54)
!5017 = distinct !DISubprogram(name: "rpl_realloc", scope: !4079, file: !4079, line: 2057, type: !4071, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !5018)
!5018 = !{!5016, !5019}
!5019 = !DILocalVariable(name: "size", arg: 2, scope: !5017, file: !4079, line: 2057, type: !57)
!5020 = !DILocation(line: 0, scope: !5017, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 37, column: 10, scope: !5007)
!5022 = !DILocation(line: 2059, column: 24, scope: !5017, inlinedAt: !5021)
!5023 = !DILocation(line: 2059, column: 10, scope: !5017, inlinedAt: !5021)
!5024 = !DILocation(line: 37, column: 3, scope: !5007)
!5025 = !DILocation(line: 32, column: 7, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5015, file: !513, line: 31, column: 5)
!5027 = !DILocation(line: 32, column: 13, scope: !5026)
!5028 = !DILocation(line: 33, column: 7, scope: !5026)
!5029 = !DILocation(line: 38, column: 1, scope: !5007)
!5030 = distinct !DISubprogram(name: "hard_locale", scope: !516, file: !516, line: 28, type: !801, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !5031)
!5031 = !{!5032, !5033}
!5032 = !DILocalVariable(name: "category", arg: 1, scope: !5030, file: !516, line: 28, type: !55)
!5033 = !DILocalVariable(name: "locale", scope: !5030, file: !516, line: 30, type: !5034)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2056, elements: !5035)
!5035 = !{!5036}
!5036 = !DISubrange(count: 257)
!5037 = !DILocation(line: 0, scope: !5030)
!5038 = !DILocation(line: 30, column: 3, scope: !5030)
!5039 = !DILocation(line: 30, column: 8, scope: !5030)
!5040 = !DILocation(line: 32, column: 7, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5030, file: !516, line: 32, column: 7)
!5042 = !DILocation(line: 32, column: 7, scope: !5030)
!5043 = !DILocalVariable(name: "__s1", arg: 1, scope: !5044, file: !594, line: 1359, type: !60)
!5044 = distinct !DISubprogram(name: "streq", scope: !594, file: !594, line: 1359, type: !595, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !5045)
!5045 = !{!5043, !5046}
!5046 = !DILocalVariable(name: "__s2", arg: 2, scope: !5044, file: !594, line: 1359, type: !60)
!5047 = !DILocation(line: 0, scope: !5044, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 35, column: 9, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5030, file: !516, line: 35, column: 7)
!5050 = !DILocation(line: 1361, column: 11, scope: !5044, inlinedAt: !5048)
!5051 = !DILocation(line: 1361, column: 10, scope: !5044, inlinedAt: !5048)
!5052 = !DILocation(line: 35, column: 29, scope: !5049)
!5053 = !DILocation(line: 0, scope: !5044, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 35, column: 32, scope: !5049)
!5055 = !DILocation(line: 1361, column: 11, scope: !5044, inlinedAt: !5054)
!5056 = !DILocation(line: 1361, column: 10, scope: !5044, inlinedAt: !5054)
!5057 = !DILocation(line: 35, column: 7, scope: !5030)
!5058 = !DILocation(line: 46, column: 3, scope: !5030)
!5059 = !DILocation(line: 47, column: 1, scope: !5030)
!5060 = distinct !DISubprogram(name: "setlocale_null_r", scope: !518, file: !518, line: 154, type: !5061, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !5063)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!55, !55, !52, !57}
!5063 = !{!5064, !5065, !5066}
!5064 = !DILocalVariable(name: "category", arg: 1, scope: !5060, file: !518, line: 154, type: !55)
!5065 = !DILocalVariable(name: "buf", arg: 2, scope: !5060, file: !518, line: 154, type: !52)
!5066 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5060, file: !518, line: 154, type: !57)
!5067 = !DILocation(line: 0, scope: !5060)
!5068 = !DILocation(line: 159, column: 10, scope: !5060)
!5069 = !DILocation(line: 159, column: 3, scope: !5060)
!5070 = distinct !DISubprogram(name: "setlocale_null", scope: !518, file: !518, line: 186, type: !5071, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !5073)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!60, !55}
!5073 = !{!5074}
!5074 = !DILocalVariable(name: "category", arg: 1, scope: !5070, file: !518, line: 186, type: !55)
!5075 = !DILocation(line: 0, scope: !5070)
!5076 = !DILocation(line: 189, column: 10, scope: !5070)
!5077 = !DILocation(line: 189, column: 3, scope: !5070)
!5078 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !520, file: !520, line: 35, type: !5071, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !5079)
!5079 = !{!5080, !5081}
!5080 = !DILocalVariable(name: "category", arg: 1, scope: !5078, file: !520, line: 35, type: !55)
!5081 = !DILocalVariable(name: "result", scope: !5078, file: !520, line: 37, type: !60)
!5082 = !DILocation(line: 0, scope: !5078)
!5083 = !DILocation(line: 37, column: 24, scope: !5078)
!5084 = !DILocation(line: 62, column: 3, scope: !5078)
!5085 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !520, file: !520, line: 66, type: !5061, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !5086)
!5086 = !{!5087, !5088, !5089, !5090, !5091}
!5087 = !DILocalVariable(name: "category", arg: 1, scope: !5085, file: !520, line: 66, type: !55)
!5088 = !DILocalVariable(name: "buf", arg: 2, scope: !5085, file: !520, line: 66, type: !52)
!5089 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5085, file: !520, line: 66, type: !57)
!5090 = !DILocalVariable(name: "result", scope: !5085, file: !520, line: 111, type: !60)
!5091 = !DILocalVariable(name: "length", scope: !5092, file: !520, line: 125, type: !57)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !520, line: 124, column: 5)
!5093 = distinct !DILexicalBlock(scope: !5085, file: !520, line: 113, column: 7)
!5094 = !DILocation(line: 0, scope: !5085)
!5095 = !DILocation(line: 0, scope: !5078, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 111, column: 24, scope: !5085)
!5097 = !DILocation(line: 37, column: 24, scope: !5078, inlinedAt: !5096)
!5098 = !DILocation(line: 113, column: 14, scope: !5093)
!5099 = !DILocation(line: 113, column: 7, scope: !5085)
!5100 = !DILocation(line: 116, column: 19, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5102, file: !520, line: 116, column: 11)
!5102 = distinct !DILexicalBlock(scope: !5093, file: !520, line: 114, column: 5)
!5103 = !DILocation(line: 116, column: 11, scope: !5102)
!5104 = !DILocation(line: 120, column: 16, scope: !5101)
!5105 = !DILocation(line: 120, column: 9, scope: !5101)
!5106 = !DILocation(line: 125, column: 23, scope: !5092)
!5107 = !DILocation(line: 0, scope: !5092)
!5108 = !DILocation(line: 126, column: 18, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5092, file: !520, line: 126, column: 11)
!5110 = !DILocation(line: 126, column: 11, scope: !5092)
!5111 = !DILocation(line: 128, column: 39, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5109, file: !520, line: 127, column: 9)
!5113 = !DILocalVariable(name: "__dest", arg: 1, scope: !5114, file: !1848, line: 26, type: !4346)
!5114 = distinct !DISubprogram(name: "memcpy", scope: !1848, file: !1848, line: 26, type: !4344, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !5115)
!5115 = !{!5113, !5116, !5117}
!5116 = !DILocalVariable(name: "__src", arg: 2, scope: !5114, file: !1848, line: 26, type: !760)
!5117 = !DILocalVariable(name: "__len", arg: 3, scope: !5114, file: !1848, line: 26, type: !57)
!5118 = !DILocation(line: 0, scope: !5114, inlinedAt: !5119)
!5119 = distinct !DILocation(line: 128, column: 11, scope: !5112)
!5120 = !DILocation(line: 29, column: 10, scope: !5114, inlinedAt: !5119)
!5121 = !DILocation(line: 129, column: 11, scope: !5112)
!5122 = !DILocation(line: 133, column: 23, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !520, line: 133, column: 15)
!5124 = distinct !DILexicalBlock(scope: !5109, file: !520, line: 132, column: 9)
!5125 = !DILocation(line: 133, column: 15, scope: !5124)
!5126 = !DILocation(line: 138, column: 44, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5123, file: !520, line: 134, column: 13)
!5128 = !DILocation(line: 0, scope: !5114, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 138, column: 15, scope: !5127)
!5130 = !DILocation(line: 29, column: 10, scope: !5114, inlinedAt: !5129)
!5131 = !DILocation(line: 139, column: 15, scope: !5127)
!5132 = !DILocation(line: 139, column: 32, scope: !5127)
!5133 = !DILocation(line: 140, column: 13, scope: !5127)
!5134 = !DILocation(line: 0, scope: !5093)
!5135 = !DILocation(line: 145, column: 1, scope: !5085)
