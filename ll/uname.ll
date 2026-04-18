; ModuleID = 'src/uname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Print certain system information.  With no OPTION, same as -s.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.5 = private unnamed_addr constant [137 x i8] c"  -a, --all                print all information, in the following order,\0A                             except omit -p and -i if unknown\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"  -s, --kernel-name        print the kernel name\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"  -n, --nodename           print the network node hostname\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"  -r, --kernel-release     print the kernel release\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"  -v, --kernel-version     print the kernel version\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"  -m, --machine            print the machine hardware name\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"  -p, --processor          print the processor type (non-portable)\0A\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"  -i, --hardware-platform  print the hardware platform (non-portable)\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"  -o, --operating-system   print the operating system\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Print machine architecture.\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !0
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"GNU/Linux\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !43
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !130
@.str.62 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !144
@optind = external local_unnamed_addr global i32, align 4
@.str.66 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"kernel-name\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"kernel-release\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"kernel-version\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"hardware-platform\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"operating-system\00", align 1
@print_element.printed = internal unnamed_addr global i1 false, align 1, !dbg !184
@uname_mode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !185
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !191
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !196
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !201
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !203
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.80 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !239
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !209
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !235
@.str.1.86 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.88 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.87 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !237
@.str.4.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.82 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.83 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !244
@.str.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !250
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.102 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.103 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.104 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.105 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.106 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.107 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.104, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.110, i32 0, i32 0), i8* null], align 8, !dbg !286
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !312
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !328
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !358
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !365
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !330
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !367
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !318
@.str.10.113 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.114 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !335
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !373
@exit_failure = dso_local global i32 1, align 4, !dbg !381
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.156 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !387
@.str.173 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !477 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !481, metadata !DIExpression()), !dbg !482
  %3 = icmp eq i32 %0, 0, !dbg !483
  br i1 %3, label %9, label %4, !dbg !485

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !486, !tbaa !488
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !486
  %7 = load i8*, i8** @program_name, align 8, !dbg !486, !tbaa !488
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !486
  br label %108, !dbg !486

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !492
  %11 = load i8*, i8** @program_name, align 8, !dbg !492, !tbaa !488
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !492
  %13 = load i32, i32* @uname_mode, align 4, !dbg !494, !tbaa !496
  %14 = icmp eq i32 %13, 0, !dbg !497
  br i1 %14, label %15, label %55, !dbg !498

15:                                               ; preds = %9
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !499
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !499, !tbaa !488
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !499
  %19 = load i32, i32* @uname_mode, align 4, !dbg !501, !tbaa !496
  %20 = icmp eq i32 %19, 0, !dbg !501
  %21 = select i1 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !501
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !501
  tail call fastcc void @oputs_(i8* noundef %21, i8* noundef %22), !dbg !501
  %23 = load i32, i32* @uname_mode, align 4, !dbg !502, !tbaa !496
  %24 = icmp eq i32 %23, 0, !dbg !502
  %25 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !502
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !502
  tail call fastcc void @oputs_(i8* noundef %25, i8* noundef %26), !dbg !502
  %27 = load i32, i32* @uname_mode, align 4, !dbg !503, !tbaa !496
  %28 = icmp eq i32 %27, 0, !dbg !503
  %29 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !503
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #32, !dbg !503
  tail call fastcc void @oputs_(i8* noundef %29, i8* noundef %30), !dbg !503
  %31 = load i32, i32* @uname_mode, align 4, !dbg !504, !tbaa !496
  %32 = icmp eq i32 %31, 0, !dbg !504
  %33 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !504
  %34 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #32, !dbg !504
  tail call fastcc void @oputs_(i8* noundef %33, i8* noundef %34), !dbg !504
  %35 = load i32, i32* @uname_mode, align 4, !dbg !505, !tbaa !496
  %36 = icmp eq i32 %35, 0, !dbg !505
  %37 = select i1 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !505
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #32, !dbg !505
  tail call fastcc void @oputs_(i8* noundef %37, i8* noundef %38), !dbg !505
  %39 = load i32, i32* @uname_mode, align 4, !dbg !506, !tbaa !496
  %40 = icmp eq i32 %39, 0, !dbg !506
  %41 = select i1 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !506
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #32, !dbg !506
  tail call fastcc void @oputs_(i8* noundef %41, i8* noundef %42), !dbg !506
  %43 = load i32, i32* @uname_mode, align 4, !dbg !507, !tbaa !496
  %44 = icmp eq i32 %43, 0, !dbg !507
  %45 = select i1 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !507
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #32, !dbg !507
  tail call fastcc void @oputs_(i8* noundef %45, i8* noundef %46), !dbg !507
  %47 = load i32, i32* @uname_mode, align 4, !dbg !508, !tbaa !496
  %48 = icmp eq i32 %47, 0, !dbg !508
  %49 = select i1 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !508
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #32, !dbg !508
  tail call fastcc void @oputs_(i8* noundef %49, i8* noundef %50), !dbg !508
  %51 = load i32, i32* @uname_mode, align 4, !dbg !509, !tbaa !496
  %52 = icmp eq i32 %51, 0, !dbg !509
  %53 = select i1 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !509
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !509
  tail call fastcc void @oputs_(i8* noundef %53, i8* noundef %54), !dbg !509
  br label %59, !dbg !510

55:                                               ; preds = %9
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #32, !dbg !511
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !511, !tbaa !488
  %58 = tail call i32 @fputs_unlocked(i8* noundef %56, %struct._IO_FILE* noundef %57), !dbg !511
  br label %59

59:                                               ; preds = %55, %15
  %60 = load i32, i32* @uname_mode, align 4, !dbg !513, !tbaa !496
  %61 = icmp eq i32 %60, 0, !dbg !513
  %62 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !513
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #32, !dbg !513
  tail call fastcc void @oputs_(i8* noundef %62, i8* noundef %63), !dbg !513
  %64 = load i32, i32* @uname_mode, align 4, !dbg !514, !tbaa !496
  %65 = icmp eq i32 %64, 0, !dbg !514
  %66 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !514
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #32, !dbg !514
  tail call fastcc void @oputs_(i8* noundef %66, i8* noundef %67), !dbg !514
  %68 = load i32, i32* @uname_mode, align 4, !dbg !515, !tbaa !496
  %69 = icmp eq i32 %68, 0, !dbg !515
  %70 = select i1 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !515
  call void @llvm.dbg.value(metadata i8* %70, metadata !516, metadata !DIExpression()) #32, !dbg !533
  %71 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !535
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %71) #32, !dbg !535
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !519, metadata !DIExpression()) #32, !dbg !536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %71, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !536
  call void @llvm.dbg.value(metadata i8* %70, metadata !528, metadata !DIExpression()) #32, !dbg !533
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !529, metadata !DIExpression()) #32, !dbg !533
  %72 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !537
  call void @llvm.dbg.value(metadata %struct.infomap* %72, metadata !529, metadata !DIExpression()) #32, !dbg !533
  br label %73, !dbg !538

73:                                               ; preds = %78, %59
  %74 = phi i8* [ %81, %78 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %59 ]
  %75 = phi %struct.infomap* [ %79, %78 ], [ %72, %59 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %75, metadata !529, metadata !DIExpression()) #32, !dbg !533
  call void @llvm.dbg.value(metadata i8* %70, metadata !539, metadata !DIExpression()) #32, !dbg !546
  call void @llvm.dbg.value(metadata i8* %74, metadata !545, metadata !DIExpression()) #32, !dbg !546
  %76 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %70, i8* noundef nonnull dereferenceable(1) %74) #33, !dbg !548
  %77 = icmp eq i32 %76, 0, !dbg !549
  br i1 %77, label %83, label %78, !dbg !538

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.infomap, %struct.infomap* %75, i64 1, !dbg !550
  call void @llvm.dbg.value(metadata %struct.infomap* %79, metadata !529, metadata !DIExpression()) #32, !dbg !533
  %80 = getelementptr inbounds %struct.infomap, %struct.infomap* %79, i64 0, i32 0, !dbg !551
  %81 = load i8*, i8** %80, align 8, !dbg !551, !tbaa !552
  %82 = icmp eq i8* %81, null, !dbg !554
  br i1 %82, label %83, label %73, !dbg !555, !llvm.loop !556

83:                                               ; preds = %78, %73
  %84 = phi %struct.infomap* [ %75, %73 ], [ %79, %78 ]
  %85 = getelementptr inbounds %struct.infomap, %struct.infomap* %84, i64 0, i32 1, !dbg !558
  %86 = load i8*, i8** %85, align 8, !dbg !558, !tbaa !560
  %87 = icmp eq i8* %86, null, !dbg !561
  %88 = select i1 %87, i8* %70, i8* %86, !dbg !562
  call void @llvm.dbg.value(metadata i8* %88, metadata !528, metadata !DIExpression()) #32, !dbg !533
  tail call void @emit_bug_reporting_address() #32, !dbg !563
  %89 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !564
  call void @llvm.dbg.value(metadata i8* %89, metadata !531, metadata !DIExpression()) #32, !dbg !533
  %90 = icmp eq i8* %89, null, !dbg !565
  br i1 %90, label %98, label %91, !dbg !567

91:                                               ; preds = %83
  %92 = tail call i32 @strncmp(i8* noundef nonnull %89, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i64 noundef 3) #33, !dbg !568
  %93 = icmp eq i32 %92, 0, !dbg !568
  br i1 %93, label %98, label %94, !dbg !569

94:                                               ; preds = %91
  %95 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.58, i64 0, i64 0), i32 noundef 5) #32, !dbg !570
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !570, !tbaa !488
  %97 = tail call i32 @fputs_unlocked(i8* noundef %95, %struct._IO_FILE* noundef %96) #32, !dbg !570
  br label %98, !dbg !572

98:                                               ; preds = %83, %91, %94
  call void @llvm.dbg.value(metadata i8* %70, metadata !539, metadata !DIExpression()) #32, !dbg !573
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !573
  %99 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %70, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 2), !dbg !575
  %100 = icmp eq i32 %99, 0, !dbg !576
  %101 = select i1 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* %70, !dbg !577
  call void @llvm.dbg.value(metadata i8* %101, metadata !532, metadata !DIExpression()) #32, !dbg !533
  %102 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #32, !dbg !578
  %103 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %102, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef %101) #32, !dbg !578
  %104 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #32, !dbg !579
  %105 = icmp eq i8* %88, %70, !dbg !579
  %106 = select i1 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !579
  %107 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %104, i8* noundef %88, i8* noundef %106) #32, !dbg !579
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %71) #32, !dbg !580
  br label %108

108:                                              ; preds = %98, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !581
  unreachable, !dbg !581
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !582 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !587 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0, i8* noundef %1) unnamed_addr #5 !dbg !45 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !50, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %1, metadata !51, metadata !DIExpression()), !dbg !592
  %3 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !593, !tbaa !594
  %4 = icmp eq i32 %3, -1, !dbg !596
  br i1 %4, label %5, label %17, !dbg !597

5:                                                ; preds = %2
  %6 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #32, !dbg !598
  call void @llvm.dbg.value(metadata i8* %6, metadata !52, metadata !DIExpression()), !dbg !599
  %7 = icmp eq i8* %6, null, !dbg !600
  br i1 %7, label %15, label %8, !dbg !601

8:                                                ; preds = %5
  %9 = load i8, i8* %6, align 1, !dbg !602, !tbaa !496
  %10 = icmp eq i8 %9, 0, !dbg !602
  br i1 %10, label %15, label %11, !dbg !603

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8* %6, metadata !539, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !604
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #33, !dbg !606
  %13 = icmp eq i32 %12, 0, !dbg !607
  %14 = zext i1 %13 to i32, !dbg !603
  br label %15, !dbg !603

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, i32* @oputs_.help_no_sgr, align 4, !dbg !608, !tbaa !594
  br label %17, !dbg !609

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ %3, %2 ], !dbg !610
  %19 = icmp eq i32 %18, 0, !dbg !610
  br i1 %19, label %23, label %20, !dbg !612

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !488
  %22 = tail call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %21), !dbg !613
  br label %156, !dbg !615

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !55, metadata !DIExpression()), !dbg !592
  %24 = tail call i64 @strspn(i8* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #33, !dbg !616
  %25 = getelementptr inbounds i8, i8* %1, i64 %24, !dbg !617
  call void @llvm.dbg.value(metadata i8* %25, metadata !57, metadata !DIExpression()), !dbg !592
  %26 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1, i32 noundef 45) #33, !dbg !618
  call void @llvm.dbg.value(metadata i8* %26, metadata !58, metadata !DIExpression()), !dbg !592
  %27 = icmp eq i8* %26, null, !dbg !619
  br i1 %27, label %56, label %28, !dbg !620

28:                                               ; preds = %23
  %29 = icmp eq i8* %26, %25, !dbg !621
  br i1 %29, label %56, label %30, !dbg !622

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %25, metadata !59, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i64 0, metadata !63, metadata !DIExpression()), !dbg !623
  %31 = icmp ult i8* %25, %26, !dbg !624
  br i1 %31, label %32, label %52, !dbg !625

32:                                               ; preds = %30
  %33 = tail call i16** @__ctype_b_loc() #35, !dbg !592
  %34 = load i16*, i16** %33, align 8, !tbaa !488
  br label %35, !dbg !625

35:                                               ; preds = %32, %35
  %36 = phi i8* [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !59, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i64 %37, metadata !63, metadata !DIExpression()), !dbg !623
  %38 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !626
  call void @llvm.dbg.value(metadata i8* %38, metadata !59, metadata !DIExpression()), !dbg !623
  %39 = load i8, i8* %36, align 1, !dbg !626, !tbaa !496
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, i16* %34, i64 %40, !dbg !626
  %42 = load i16, i16* %41, align 2, !dbg !626, !tbaa !627
  %43 = lshr i16 %42, 13, !dbg !629
  %44 = and i16 %43, 1, !dbg !629
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !630
  call void @llvm.dbg.value(metadata i64 %46, metadata !63, metadata !DIExpression()), !dbg !623
  %47 = icmp ult i8* %38, %26, !dbg !624
  %48 = icmp ult i64 %46, 2, !dbg !631
  %49 = select i1 %47, i1 %48, i1 false, !dbg !631
  br i1 %49, label %35, label %50, !dbg !625, !llvm.loop !632

50:                                               ; preds = %35
  %51 = icmp eq i64 %46, 2, !dbg !633
  br label %52, !dbg !633

52:                                               ; preds = %50, %30
  %53 = phi i1 [ false, %30 ], [ %51, %50 ]
  %54 = select i1 %53, i8* %25, i8* %26, !dbg !635
  %55 = xor i1 %53, true, !dbg !592
  call void @llvm.dbg.value(metadata i8 undef, metadata !55, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %54, metadata !58, metadata !DIExpression()), !dbg !592
  br label %56, !dbg !636

56:                                               ; preds = %23, %28, %52
  %57 = phi i8* [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !592
  %58 = phi i1 [ %55, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !55, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %57, metadata !58, metadata !DIExpression()), !dbg !592
  %59 = tail call i64 @strcspn(i8* noundef %57, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #33, !dbg !637
  call void @llvm.dbg.value(metadata i64 %59, metadata !64, metadata !DIExpression()), !dbg !592
  %60 = getelementptr inbounds i8, i8* %57, i64 %59, !dbg !638
  call void @llvm.dbg.value(metadata i8* %60, metadata !65, metadata !DIExpression()), !dbg !592
  br label %61, !dbg !639

61:                                               ; preds = %92, %56
  %62 = phi i8* [ %60, %56 ], [ %93, %92 ], !dbg !592
  %63 = phi i1 [ %58, %56 ], [ %71, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !55, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %62, metadata !65, metadata !DIExpression()), !dbg !592
  %64 = load i8, i8* %62, align 1, !dbg !640, !tbaa !496
  switch i8 %64, label %70 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %65
  ], !dbg !641

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !642
  %67 = load i8, i8* %66, align 1, !dbg !645, !tbaa !496
  %68 = icmp ne i8 %67, 45, !dbg !646
  %69 = select i1 %68, i1 %63, i1 false, !dbg !647
  br label %70, !dbg !647

70:                                               ; preds = %65, %61
  %71 = phi i1 [ %63, %61 ], [ %69, %65 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !55, metadata !DIExpression()), !dbg !592
  %72 = tail call i16** @__ctype_b_loc() #35, !dbg !648
  %73 = load i16*, i16** %72, align 8, !dbg !648, !tbaa !488
  %74 = zext i8 %64 to i64
  %75 = getelementptr inbounds i16, i16* %73, i64 %74, !dbg !648
  %76 = load i16, i16* %75, align 2, !dbg !648, !tbaa !627
  %77 = and i16 %76, 8192, !dbg !648
  %78 = icmp eq i16 %77, 0, !dbg !648
  br i1 %78, label %92, label %79, !dbg !650

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !651
  br i1 %80, label %94, label %81, !dbg !654

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !655
  %83 = load i8, i8* %82, align 1, !dbg !655, !tbaa !496
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i16, i16* %73, i64 %84, !dbg !655
  %86 = load i16, i16* %85, align 2, !dbg !655, !tbaa !627
  %87 = and i16 %86, 8192, !dbg !655
  %88 = icmp eq i16 %87, 0, !dbg !655
  br i1 %88, label %89, label %94, !dbg !656

89:                                               ; preds = %81
  %90 = icmp eq i8 %83, 45
  %91 = select i1 %71, i1 true, i1 %90, !dbg !657
  br i1 %91, label %92, label %94, !dbg !657

92:                                               ; preds = %89, %70
  %93 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !659
  call void @llvm.dbg.value(metadata i8* %93, metadata !65, metadata !DIExpression()), !dbg !592
  br label %61, !dbg !639, !llvm.loop !660

94:                                               ; preds = %89, %61, %61, %79, %81
  %95 = ptrtoint i8* %25 to i64, !dbg !662
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !488
  %97 = tail call i64 @fwrite_unlocked(i8* noundef %1, i64 noundef 1, i64 noundef %24, %struct._IO_FILE* noundef %96), !dbg !662
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !663
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !663
  %98 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #33, !dbg !665
  %99 = icmp eq i32 %98, 0, !dbg !666
  br i1 %99, label %128, label %100, !dbg !667

100:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !668
  %101 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #33, !dbg !670
  %102 = icmp eq i32 %101, 0, !dbg !671
  br i1 %102, label %128, label %103, !dbg !672

103:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !673
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !673
  %104 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #33, !dbg !675
  %105 = icmp eq i32 %104, 0, !dbg !676
  br i1 %105, label %128, label %106, !dbg !677

106:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !678
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !678
  %107 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #33, !dbg !680
  %108 = icmp eq i32 %107, 0, !dbg !681
  br i1 %108, label %128, label %109, !dbg !682

109:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !683
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !683
  %110 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #33, !dbg !685
  %111 = icmp eq i32 %110, 0, !dbg !686
  br i1 %111, label %128, label %112, !dbg !687

112:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !688
  %113 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)) #33, !dbg !690
  %114 = icmp eq i32 %113, 0, !dbg !691
  br i1 %114, label %128, label %115, !dbg !692

115:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !693
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !693
  %116 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0)) #33, !dbg !695
  %117 = icmp eq i32 %116, 0, !dbg !696
  br i1 %117, label %128, label %118, !dbg !697

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !698
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !698
  %119 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)) #33, !dbg !700
  %120 = icmp eq i32 %119, 0, !dbg !701
  br i1 %120, label %128, label %121, !dbg !702

121:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !703
  %122 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)) #33, !dbg !705
  %123 = icmp eq i32 %122, 0, !dbg !706
  br i1 %123, label %128, label %124, !dbg !707

124:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()) #32, !dbg !708
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), metadata !545, metadata !DIExpression()) #32, !dbg !708
  %125 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)) #33, !dbg !710
  %126 = icmp eq i32 %125, 0, !dbg !711
  %127 = select i1 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* %0, !dbg !712
  br label %128, !dbg !707

128:                                              ; preds = %100, %106, %112, %118, %121, %124, %115, %109, %103, %94
  %129 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), %94 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %100 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %103 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %106 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %109 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %112 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %115 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %118 ], [ %127, %124 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %121 ], !dbg !667
  call void @llvm.dbg.value(metadata i8* %129, metadata !125, metadata !DIExpression()), !dbg !592
  %130 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 noundef 6) #33, !dbg !713
  %131 = icmp eq i32 %130, 0, !dbg !713
  br i1 %131, label %135, label %132, !dbg !715

132:                                              ; preds = %128
  %133 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i64 noundef 9) #33, !dbg !716
  %134 = icmp eq i32 %133, 0, !dbg !716
  br i1 %134, label %135, label %138, !dbg !717

135:                                              ; preds = %132, %128
  %136 = trunc i64 %59 to i32, !dbg !718
  %137 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef %129, i8* noundef %129, i32 noundef %136, i8* noundef %57) #32, !dbg !718
  br label %141, !dbg !720

138:                                              ; preds = %132
  %139 = trunc i64 %59 to i32, !dbg !721
  %140 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i8* noundef %129, i32 noundef %139, i8* noundef %57) #32, !dbg !721
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !488
  %143 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %142), !dbg !723
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !488
  %145 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %144), !dbg !724
  %146 = ptrtoint i8* %62 to i64, !dbg !725
  %147 = sub i64 %146, %95, !dbg !725
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !488
  %149 = tail call i64 @fwrite_unlocked(i8* noundef %25, i64 noundef 1, i64 noundef %147, %struct._IO_FILE* noundef %148), !dbg !725
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726, !tbaa !488
  %151 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %150), !dbg !726
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !727, !tbaa !488
  %153 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %152), !dbg !727
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !728, !tbaa !488
  %155 = tail call i32 @fputs_unlocked(i8* noundef nonnull %62, %struct._IO_FILE* noundef %154), !dbg !728
  br label %156

156:                                              ; preds = %141, %20
  ret void, !dbg !729
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
declare !dbg !730 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind readonly
declare !dbg !734 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !738 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #13 !dbg !2 {
  %3 = alloca %struct.utsname, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i8** %1, metadata !158, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 0, metadata !159, metadata !DIExpression()), !dbg !744
  %4 = load i8*, i8** %1, align 8, !dbg !745, !tbaa !488
  tail call void @set_program_name(i8* noundef %4) #32, !dbg !746
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #32, !dbg !747
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #32, !dbg !748
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #32, !dbg !749
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !750
  call void @llvm.dbg.value(metadata i32 %0, metadata !751, metadata !DIExpression()) #32, !dbg !757
  call void @llvm.dbg.value(metadata i8** %1, metadata !754, metadata !DIExpression()) #32, !dbg !757
  call void @llvm.dbg.value(metadata i32 0, metadata !756, metadata !DIExpression()) #32, !dbg !757
  %9 = load i32, i32* @uname_mode, align 4, !dbg !759, !tbaa !496
  %10 = icmp eq i32 %9, 1, !dbg !761
  br i1 %10, label %11, label %21, !dbg !762

11:                                               ; preds = %2
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @arch_long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !763
  call void @llvm.dbg.value(metadata i32 %12, metadata !755, metadata !DIExpression()) #32, !dbg !757
  switch i32 %12, label %20 [
    i32 -1, label %51
    i32 -2, label %13
    i32 -3, label %14
  ], !dbg !765

13:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #34, !dbg !766
  unreachable, !dbg !766

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !769, !tbaa !488
  %16 = load i32, i32* @uname_mode, align 4, !dbg !769, !tbaa !496
  %17 = icmp eq i32 %16, 0, !dbg !769
  %18 = select i1 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !769
  %19 = load i8*, i8** @Version, align 8, !dbg !769, !tbaa !488
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %15, i8* noundef %18, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* noundef %19, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i8* noundef null) #32, !dbg !769
  tail call void @exit(i32 noundef 0) #34, !dbg !769
  unreachable, !dbg !769

20:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #34, !dbg !770
  unreachable, !dbg !770

21:                                               ; preds = %2, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %2 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %22, metadata !756, metadata !DIExpression()) #32, !dbg !757
  %23 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @uname_long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !771
  call void @llvm.dbg.value(metadata i32 %23, metadata !755, metadata !DIExpression()) #32, !dbg !757
  switch i32 %23, label %50 [
    i32 -1, label %51
    i32 97, label %40
    i32 115, label %24
    i32 110, label %26
    i32 114, label %28
    i32 118, label %30
    i32 109, label %32
    i32 112, label %34
    i32 105, label %36
    i32 111, label %38
    i32 -2, label %42
    i32 -3, label %43
  ], !dbg !773

24:                                               ; preds = %21
  %25 = or i32 %22, 1, !dbg !774
  call void @llvm.dbg.value(metadata i32 %25, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !777

26:                                               ; preds = %21
  %27 = or i32 %22, 2, !dbg !778
  call void @llvm.dbg.value(metadata i32 %27, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !779

28:                                               ; preds = %21
  %29 = or i32 %22, 4, !dbg !780
  call void @llvm.dbg.value(metadata i32 %29, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !781

30:                                               ; preds = %21
  %31 = or i32 %22, 8, !dbg !782
  call void @llvm.dbg.value(metadata i32 %31, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !783

32:                                               ; preds = %21
  %33 = or i32 %22, 16, !dbg !784
  call void @llvm.dbg.value(metadata i32 %33, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !785

34:                                               ; preds = %21
  %35 = or i32 %22, 32, !dbg !786
  call void @llvm.dbg.value(metadata i32 %35, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !787

36:                                               ; preds = %21
  %37 = or i32 %22, 64, !dbg !788
  call void @llvm.dbg.value(metadata i32 %37, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !789

38:                                               ; preds = %21
  %39 = or i32 %22, 128, !dbg !790
  call void @llvm.dbg.value(metadata i32 %39, metadata !756, metadata !DIExpression()) #32, !dbg !757
  br label %40, !dbg !791

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %21
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ -1, %21 ]
  br label %21, !dbg !757, !llvm.loop !792

42:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #34, !dbg !794
  unreachable, !dbg !794

43:                                               ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !795, !tbaa !488
  %45 = load i32, i32* @uname_mode, align 4, !dbg !795, !tbaa !496
  %46 = icmp eq i32 %45, 0, !dbg !795
  %47 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !795
  %48 = load i8*, i8** @Version, align 8, !dbg !795, !tbaa !488
  %49 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0)) #32, !dbg !795
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %44, i8* noundef %47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* noundef %48, i8* noundef %49, i8* noundef null) #32, !dbg !795
  tail call void @exit(i32 noundef 0) #34, !dbg !795
  unreachable, !dbg !795

50:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #34, !dbg !796
  unreachable, !dbg !796

51:                                               ; preds = %21, %11
  %52 = phi i32 [ 16, %11 ], [ %22, %21 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %52, metadata !756, metadata !DIExpression()) #32, !dbg !757
  %53 = load i32, i32* @optind, align 4, !dbg !797, !tbaa !594
  %54 = icmp eq i32 %53, %0, !dbg !799
  br i1 %54, label %62, label %55, !dbg !800

55:                                               ; preds = %51
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #32, !dbg !801
  %57 = load i32, i32* @optind, align 4, !dbg !801, !tbaa !594
  %58 = sext i32 %57 to i64, !dbg !801
  %59 = getelementptr inbounds i8*, i8** %1, i64 %58, !dbg !801
  %60 = load i8*, i8** %59, align 8, !dbg !801, !tbaa !488
  %61 = tail call i8* @quote(i8* noundef %60) #32, !dbg !801
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %56, i8* noundef %61) #32, !dbg !801
  tail call void @usage(i32 noundef 1) #34, !dbg !803
  unreachable, !dbg !803

62:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %52, metadata !159, metadata !DIExpression()), !dbg !744
  %63 = icmp eq i32 %52, 0, !dbg !804
  %64 = select i1 %63, i32 1, i32 %52, !dbg !806
  call void @llvm.dbg.value(metadata i32 %64, metadata !159, metadata !DIExpression()), !dbg !744
  %65 = and i32 %64, 31, !dbg !807
  %66 = icmp eq i32 %65, 0, !dbg !807
  br i1 %66, label %175, label %67, !dbg !808

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 0, i64 0, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 390, i8* nonnull %68) #32, !dbg !809
  call void @llvm.dbg.declare(metadata %struct.utsname* %3, metadata !160, metadata !DIExpression()), !dbg !810
  %69 = call i32 @uname(%struct.utsname* noundef nonnull %3) #32, !dbg !811
  %70 = icmp eq i32 %69, -1, !dbg !813
  br i1 %70, label %71, label %75, !dbg !814

71:                                               ; preds = %67
  %72 = tail call i32* @__errno_location() #35, !dbg !815
  %73 = load i32, i32* %72, align 4, !dbg !815, !tbaa !594
  %74 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #32, !dbg !815
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %73, i8* noundef %74) #32, !dbg !815
  unreachable, !dbg !815

75:                                               ; preds = %67
  %76 = and i32 %64, 1, !dbg !816
  %77 = icmp eq i32 %76, 0, !dbg !816
  br i1 %77, label %94, label %78, !dbg !818

78:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i8* %68, metadata !819, metadata !DIExpression()) #32, !dbg !823
  call void @llvm.dbg.value(metadata i8* undef, metadata !822, metadata !DIExpression()) #32, !dbg !823
  call void @llvm.dbg.value(metadata i8* %68, metadata !155, metadata !DIExpression()) #32, !dbg !825
  %79 = load i1, i1* @print_element.printed, align 1, !dbg !827
  br i1 %79, label %80, label %91, !dbg !829

80:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !836
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !838, !tbaa !488
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %81, i64 0, i32 5, !dbg !838
  %83 = load i8*, i8** %82, align 8, !dbg !838, !tbaa !839
  %84 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %81, i64 0, i32 6, !dbg !838
  %85 = load i8*, i8** %84, align 8, !dbg !838, !tbaa !842
  %86 = icmp ult i8* %83, %85, !dbg !838
  br i1 %86, label %89, label %87, !dbg !838, !prof !843

87:                                               ; preds = %80
  %88 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %81, i32 noundef 32) #32, !dbg !838
  br label %91, !dbg !838

89:                                               ; preds = %80
  %90 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !838
  store i8* %90, i8** %82, align 8, !dbg !838, !tbaa !839
  store i8 32, i8* %83, align 1, !dbg !838, !tbaa !496
  br label %91, !dbg !838

91:                                               ; preds = %78, %87, %89
  store i1 true, i1* @print_element.printed, align 1, !dbg !844
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !845, !tbaa !488
  %93 = call i32 @fputs_unlocked(i8* noundef nonnull %68, %struct._IO_FILE* noundef %92) #32, !dbg !845
  br label %94, !dbg !846

94:                                               ; preds = %91, %75
  %95 = and i32 %64, 2, !dbg !847
  %96 = icmp eq i32 %95, 0, !dbg !847
  br i1 %96, label %114, label %97, !dbg !849

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 1, i64 0, !dbg !850
  call void @llvm.dbg.value(metadata i8* %98, metadata !819, metadata !DIExpression()) #32, !dbg !851
  call void @llvm.dbg.value(metadata i8* undef, metadata !822, metadata !DIExpression()) #32, !dbg !851
  call void @llvm.dbg.value(metadata i8* %98, metadata !155, metadata !DIExpression()) #32, !dbg !853
  %99 = load i1, i1* @print_element.printed, align 1, !dbg !855
  br i1 %99, label %100, label %111, !dbg !856

100:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !857
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !859, !tbaa !488
  %102 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 5, !dbg !859
  %103 = load i8*, i8** %102, align 8, !dbg !859, !tbaa !839
  %104 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 6, !dbg !859
  %105 = load i8*, i8** %104, align 8, !dbg !859, !tbaa !842
  %106 = icmp ult i8* %103, %105, !dbg !859
  br i1 %106, label %109, label %107, !dbg !859, !prof !843

107:                                              ; preds = %100
  %108 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %101, i32 noundef 32) #32, !dbg !859
  br label %111, !dbg !859

109:                                              ; preds = %100
  %110 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !859
  store i8* %110, i8** %102, align 8, !dbg !859, !tbaa !839
  store i8 32, i8* %103, align 1, !dbg !859, !tbaa !496
  br label %111, !dbg !859

111:                                              ; preds = %97, %107, %109
  store i1 true, i1* @print_element.printed, align 1, !dbg !860
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !861, !tbaa !488
  %113 = call i32 @fputs_unlocked(i8* noundef nonnull %98, %struct._IO_FILE* noundef %112) #32, !dbg !861
  br label %114, !dbg !862

114:                                              ; preds = %111, %94
  %115 = and i32 %64, 4, !dbg !863
  %116 = icmp eq i32 %115, 0, !dbg !863
  br i1 %116, label %134, label %117, !dbg !865

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 2, i64 0, !dbg !866
  call void @llvm.dbg.value(metadata i8* %118, metadata !819, metadata !DIExpression()) #32, !dbg !867
  call void @llvm.dbg.value(metadata i8* undef, metadata !822, metadata !DIExpression()) #32, !dbg !867
  call void @llvm.dbg.value(metadata i8* %118, metadata !155, metadata !DIExpression()) #32, !dbg !869
  %119 = load i1, i1* @print_element.printed, align 1, !dbg !871
  br i1 %119, label %120, label %131, !dbg !872

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !873
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !875, !tbaa !488
  %122 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 5, !dbg !875
  %123 = load i8*, i8** %122, align 8, !dbg !875, !tbaa !839
  %124 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 6, !dbg !875
  %125 = load i8*, i8** %124, align 8, !dbg !875, !tbaa !842
  %126 = icmp ult i8* %123, %125, !dbg !875
  br i1 %126, label %129, label %127, !dbg !875, !prof !843

127:                                              ; preds = %120
  %128 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %121, i32 noundef 32) #32, !dbg !875
  br label %131, !dbg !875

129:                                              ; preds = %120
  %130 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !875
  store i8* %130, i8** %122, align 8, !dbg !875, !tbaa !839
  store i8 32, i8* %123, align 1, !dbg !875, !tbaa !496
  br label %131, !dbg !875

131:                                              ; preds = %117, %127, %129
  store i1 true, i1* @print_element.printed, align 1, !dbg !876
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !877, !tbaa !488
  %133 = call i32 @fputs_unlocked(i8* noundef nonnull %118, %struct._IO_FILE* noundef %132) #32, !dbg !877
  br label %134, !dbg !878

134:                                              ; preds = %131, %114
  %135 = and i32 %64, 8, !dbg !879
  %136 = icmp eq i32 %135, 0, !dbg !879
  br i1 %136, label %154, label %137, !dbg !881

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 3, i64 0, !dbg !882
  call void @llvm.dbg.value(metadata i8* %138, metadata !819, metadata !DIExpression()) #32, !dbg !883
  call void @llvm.dbg.value(metadata i8* undef, metadata !822, metadata !DIExpression()) #32, !dbg !883
  call void @llvm.dbg.value(metadata i8* %138, metadata !155, metadata !DIExpression()) #32, !dbg !885
  %139 = load i1, i1* @print_element.printed, align 1, !dbg !887
  br i1 %139, label %140, label %151, !dbg !888

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !889
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !891, !tbaa !488
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %141, i64 0, i32 5, !dbg !891
  %143 = load i8*, i8** %142, align 8, !dbg !891, !tbaa !839
  %144 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %141, i64 0, i32 6, !dbg !891
  %145 = load i8*, i8** %144, align 8, !dbg !891, !tbaa !842
  %146 = icmp ult i8* %143, %145, !dbg !891
  br i1 %146, label %149, label %147, !dbg !891, !prof !843

147:                                              ; preds = %140
  %148 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %141, i32 noundef 32) #32, !dbg !891
  br label %151, !dbg !891

149:                                              ; preds = %140
  %150 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !891
  store i8* %150, i8** %142, align 8, !dbg !891, !tbaa !839
  store i8 32, i8* %143, align 1, !dbg !891, !tbaa !496
  br label %151, !dbg !891

151:                                              ; preds = %137, %147, %149
  store i1 true, i1* @print_element.printed, align 1, !dbg !892
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !893, !tbaa !488
  %153 = call i32 @fputs_unlocked(i8* noundef nonnull %138, %struct._IO_FILE* noundef %152) #32, !dbg !893
  br label %154, !dbg !894

154:                                              ; preds = %151, %134
  %155 = and i32 %64, 16, !dbg !895
  %156 = icmp eq i32 %155, 0, !dbg !895
  br i1 %156, label %174, label %157, !dbg !897

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 4, i64 0, !dbg !898
  call void @llvm.dbg.value(metadata i8* %158, metadata !819, metadata !DIExpression()) #32, !dbg !899
  call void @llvm.dbg.value(metadata i8* undef, metadata !822, metadata !DIExpression()) #32, !dbg !899
  call void @llvm.dbg.value(metadata i8* %158, metadata !155, metadata !DIExpression()) #32, !dbg !901
  %159 = load i1, i1* @print_element.printed, align 1, !dbg !903
  br i1 %159, label %160, label %171, !dbg !904

160:                                              ; preds = %157
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !905
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !907, !tbaa !488
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 5, !dbg !907
  %163 = load i8*, i8** %162, align 8, !dbg !907, !tbaa !839
  %164 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 6, !dbg !907
  %165 = load i8*, i8** %164, align 8, !dbg !907, !tbaa !842
  %166 = icmp ult i8* %163, %165, !dbg !907
  br i1 %166, label %169, label %167, !dbg !907, !prof !843

167:                                              ; preds = %160
  %168 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %161, i32 noundef 32) #32, !dbg !907
  br label %171, !dbg !907

169:                                              ; preds = %160
  %170 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !907
  store i8* %170, i8** %162, align 8, !dbg !907, !tbaa !839
  store i8 32, i8* %163, align 1, !dbg !907, !tbaa !496
  br label %171, !dbg !907

171:                                              ; preds = %157, %167, %169
  store i1 true, i1* @print_element.printed, align 1, !dbg !908
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !909, !tbaa !488
  %173 = call i32 @fputs_unlocked(i8* noundef nonnull %158, %struct._IO_FILE* noundef %172) #32, !dbg !909
  br label %174, !dbg !910

174:                                              ; preds = %171, %154
  call void @llvm.lifetime.end.p0i8(i64 390, i8* nonnull %68) #32, !dbg !911
  br label %175, !dbg !912

175:                                              ; preds = %174, %62
  %176 = and i32 %64, 32, !dbg !913
  %177 = icmp eq i32 %176, 0, !dbg !913
  %178 = icmp eq i32 %64, -1
  %179 = or i1 %178, %177, !dbg !914
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !175, metadata !DIExpression()), !dbg !915
  br i1 %179, label %196, label %180, !dbg !914

180:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !155, metadata !DIExpression()) #32, !dbg !916
  %181 = load i1, i1* @print_element.printed, align 1, !dbg !919
  br i1 %181, label %182, label %193, !dbg !920

182:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !921
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !923, !tbaa !488
  %184 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 5, !dbg !923
  %185 = load i8*, i8** %184, align 8, !dbg !923, !tbaa !839
  %186 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 6, !dbg !923
  %187 = load i8*, i8** %186, align 8, !dbg !923, !tbaa !842
  %188 = icmp ult i8* %185, %187, !dbg !923
  br i1 %188, label %191, label %189, !dbg !923, !prof !843

189:                                              ; preds = %182
  %190 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %183, i32 noundef 32) #32, !dbg !923
  br label %193, !dbg !923

191:                                              ; preds = %182
  %192 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !923
  store i8* %192, i8** %184, align 8, !dbg !923, !tbaa !839
  store i8 32, i8* %185, align 1, !dbg !923, !tbaa !496
  br label %193, !dbg !923

193:                                              ; preds = %180, %189, %191
  store i1 true, i1* @print_element.printed, align 1, !dbg !924
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !925, !tbaa !488
  %195 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* noundef %194) #32, !dbg !925
  br label %196, !dbg !926

196:                                              ; preds = %193, %175
  %197 = and i32 %64, 64, !dbg !927
  %198 = icmp eq i32 %197, 0, !dbg !927
  %199 = or i1 %178, %198, !dbg !928
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !178, metadata !DIExpression()), !dbg !929
  br i1 %199, label %216, label %200, !dbg !928

200:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !155, metadata !DIExpression()) #32, !dbg !930
  %201 = load i1, i1* @print_element.printed, align 1, !dbg !933
  br i1 %201, label %202, label %213, !dbg !934

202:                                              ; preds = %200
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !935
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !937, !tbaa !488
  %204 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 5, !dbg !937
  %205 = load i8*, i8** %204, align 8, !dbg !937, !tbaa !839
  %206 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 6, !dbg !937
  %207 = load i8*, i8** %206, align 8, !dbg !937, !tbaa !842
  %208 = icmp ult i8* %205, %207, !dbg !937
  br i1 %208, label %211, label %209, !dbg !937, !prof !843

209:                                              ; preds = %202
  %210 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %203, i32 noundef 32) #32, !dbg !937
  br label %213, !dbg !937

211:                                              ; preds = %202
  %212 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !937
  store i8* %212, i8** %204, align 8, !dbg !937, !tbaa !839
  store i8 32, i8* %205, align 1, !dbg !937, !tbaa !496
  br label %213, !dbg !937

213:                                              ; preds = %200, %209, %211
  store i1 true, i1* @print_element.printed, align 1, !dbg !938
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939, !tbaa !488
  %215 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* noundef %214) #32, !dbg !939
  br label %216, !dbg !940

216:                                              ; preds = %213, %196
  %217 = and i32 %64, 128, !dbg !941
  %218 = icmp eq i32 %217, 0, !dbg !941
  br i1 %218, label %235, label %219, !dbg !943

219:                                              ; preds = %216
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), metadata !155, metadata !DIExpression()) #32, !dbg !944
  %220 = load i1, i1* @print_element.printed, align 1, !dbg !946
  br i1 %220, label %221, label %232, !dbg !947

221:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i32 32, metadata !830, metadata !DIExpression()) #32, !dbg !948
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !950, !tbaa !488
  %223 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %222, i64 0, i32 5, !dbg !950
  %224 = load i8*, i8** %223, align 8, !dbg !950, !tbaa !839
  %225 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %222, i64 0, i32 6, !dbg !950
  %226 = load i8*, i8** %225, align 8, !dbg !950, !tbaa !842
  %227 = icmp ult i8* %224, %226, !dbg !950
  br i1 %227, label %230, label %228, !dbg !950, !prof !843

228:                                              ; preds = %221
  %229 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %222, i32 noundef 32) #32, !dbg !950
  br label %232, !dbg !950

230:                                              ; preds = %221
  %231 = getelementptr inbounds i8, i8* %224, i64 1, !dbg !950
  store i8* %231, i8** %223, align 8, !dbg !950, !tbaa !839
  store i8 32, i8* %224, align 1, !dbg !950, !tbaa !496
  br label %232, !dbg !950

232:                                              ; preds = %219, %228, %230
  store i1 true, i1* @print_element.printed, align 1, !dbg !951
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !952, !tbaa !488
  %234 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), %struct._IO_FILE* noundef %233) #32, !dbg !952
  br label %235, !dbg !953

235:                                              ; preds = %232, %216
  call void @llvm.dbg.value(metadata i32 10, metadata !830, metadata !DIExpression()) #32, !dbg !954
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !956, !tbaa !488
  %237 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %236, i64 0, i32 5, !dbg !956
  %238 = load i8*, i8** %237, align 8, !dbg !956, !tbaa !839
  %239 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %236, i64 0, i32 6, !dbg !956
  %240 = load i8*, i8** %239, align 8, !dbg !956, !tbaa !842
  %241 = icmp ult i8* %238, %240, !dbg !956
  br i1 %241, label %244, label %242, !dbg !956, !prof !843

242:                                              ; preds = %235
  %243 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %236, i32 noundef 10) #32, !dbg !956
  br label %246, !dbg !956

244:                                              ; preds = %235
  %245 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !956
  store i8* %245, i8** %237, align 8, !dbg !956, !tbaa !839
  store i8 10, i8* %238, align 1, !dbg !956, !tbaa !496
  br label %246, !dbg !956

246:                                              ; preds = %242, %244
  ret i32 0, !dbg !957
}

; Function Attrs: nounwind
declare !dbg !958 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !961 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !962 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !965 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !971 noundef i32 @uname(%struct.utsname* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #12

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !975 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !977, metadata !DIExpression()), !dbg !978
  store i8* %0, i8** @file_name, align 8, !dbg !979, !tbaa !488
  ret void, !dbg !980
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !981 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !985, metadata !DIExpression()), !dbg !986
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !987, !tbaa !988
  ret void, !dbg !990
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #13 !dbg !991 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !996, !tbaa !488
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !997
  %3 = icmp eq i32 %2, 0, !dbg !998
  br i1 %3, label %22, label %4, !dbg !999

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1000, !tbaa !988, !range !1001
  %6 = icmp eq i8 %5, 0, !dbg !1000
  br i1 %6, label %11, label %7, !dbg !1002

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !1003
  %9 = load i32, i32* %8, align 4, !dbg !1003, !tbaa !594
  %10 = icmp eq i32 %9, 32, !dbg !1004
  br i1 %10, label %22, label %11, !dbg !1005

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.25, i64 0, i64 0), i32 noundef 5) #32, !dbg !1006
  call void @llvm.dbg.value(metadata i8* %12, metadata !993, metadata !DIExpression()), !dbg !1007
  %13 = load i8*, i8** @file_name, align 8, !dbg !1008, !tbaa !488
  %14 = icmp eq i8* %13, null, !dbg !1008
  %15 = tail call i32* @__errno_location() #35, !dbg !1010
  %16 = load i32, i32* %15, align 4, !dbg !1010, !tbaa !594
  br i1 %14, label %19, label %17, !dbg !1011

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !1012
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.26, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !1012
  br label %20, !dbg !1012

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.27, i64 0, i64 0), i8* noundef %12) #32, !dbg !1013
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1014, !tbaa !594
  tail call void @_exit(i32 noundef %21) #34, !dbg !1015
  unreachable, !dbg !1015

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1016, !tbaa !488
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !1018
  %25 = icmp eq i32 %24, 0, !dbg !1019
  br i1 %25, label %28, label %26, !dbg !1020

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1021, !tbaa !594
  tail call void @_exit(i32 noundef %27) #34, !dbg !1022
  unreachable, !dbg !1022

28:                                               ; preds = %22
  ret void, !dbg !1023
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1024 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1028, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %1, metadata !1029, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i8* %2, metadata !1030, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1031, metadata !DIExpression()), !dbg !1033
  tail call fastcc void @flush_stdout(), !dbg !1034
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1035, !tbaa !488
  %7 = icmp eq void ()* %6, null, !dbg !1035
  br i1 %7, label %9, label %8, !dbg !1037

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !1038
  br label %13, !dbg !1038

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1039, !tbaa !488
  %11 = tail call i8* @getprogname() #33, !dbg !1039
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* noundef %11) #32, !dbg !1039
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1041
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1041, !tbaa.struct !1042
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1041
  ret void, !dbg !1043
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #13 !dbg !1044 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1046, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i32 1, metadata !1048, metadata !DIExpression()) #32, !dbg !1051
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !1054
  %2 = icmp slt i32 %1, 0, !dbg !1055
  br i1 %2, label %6, label %3, !dbg !1056

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1057, !tbaa !488
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !1057
  br label %6, !dbg !1057

6:                                                ; preds = %3, %0
  ret void, !dbg !1058
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #13 !dbg !1059 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1061, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i32 %1, metadata !1062, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8* %2, metadata !1063, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1064, metadata !DIExpression()), !dbg !1066
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1067, !tbaa !488
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1068
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1069, metadata !DIExpression()) #32, !dbg !1112
  call void @llvm.dbg.value(metadata i8* %2, metadata !1110, metadata !DIExpression()) #32, !dbg !1112
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1114
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1114, !noalias !1115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1114
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !1114
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1114, !noalias !1115
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1119, !tbaa !594
  %12 = add i32 %11, 1, !dbg !1119
  store i32 %12, i32* @error_message_count, align 4, !dbg !1119, !tbaa !594
  %13 = icmp eq i32 %1, 0, !dbg !1120
  br i1 %13, label %24, label %14, !dbg !1122

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1123, metadata !DIExpression()) #32, !dbg !1131
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1133
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1133
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1127, metadata !DIExpression()) #32, !dbg !1134
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %16, metadata !1126, metadata !DIExpression()) #32, !dbg !1131
  %17 = icmp eq i8* %16, null, !dbg !1136
  br i1 %17, label %18, label %20, !dbg !1138

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.82, i64 0, i64 0), i32 noundef 5) #32, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %19, metadata !1126, metadata !DIExpression()) #32, !dbg !1131
  br label %20, !dbg !1140

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1131
  call void @llvm.dbg.value(metadata i8* %21, metadata !1126, metadata !DIExpression()) #32, !dbg !1131
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1141, !tbaa !488
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.83, i64 0, i64 0), i8* noundef %21) #32, !dbg !1141
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1142
  br label %24, !dbg !1143

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1144, !tbaa !488
  call void @llvm.dbg.value(metadata i32 10, metadata !1145, metadata !DIExpression()) #32, !dbg !1151
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1150, metadata !DIExpression()) #32, !dbg !1151
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1153
  %27 = load i8*, i8** %26, align 8, !dbg !1153, !tbaa !839
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1153
  %29 = load i8*, i8** %28, align 8, !dbg !1153, !tbaa !842
  %30 = icmp ult i8* %27, %29, !dbg !1153
  br i1 %30, label %33, label %31, !dbg !1153, !prof !843

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !1153
  br label %35, !dbg !1153

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1153
  store i8* %34, i8** %26, align 8, !dbg !1153, !tbaa !839
  store i8 10, i8* %27, align 1, !dbg !1153, !tbaa !496
  br label %35, !dbg !1153

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1154, !tbaa !488
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !1154
  %38 = icmp eq i32 %0, 0, !dbg !1155
  br i1 %38, label %40, label %39, !dbg !1157

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !1158
  unreachable, !dbg !1158

40:                                               ; preds = %35
  ret void, !dbg !1159
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1160 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1164 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1167 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #13 !dbg !1171 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1175, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 %1, metadata !1176, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %2, metadata !1177, metadata !DIExpression()), !dbg !1179
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1180
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1180
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1178, metadata !DIExpression()), !dbg !1181
  call void @llvm.va_start(i8* nonnull %6), !dbg !1182
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1183
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1183, !tbaa.struct !1042
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #36, !dbg !1183
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1183
  call void @llvm.va_end(i8* nonnull %6), !dbg !1184
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1185
  ret void, !dbg !1185
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !211 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !229, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 %1, metadata !230, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %2, metadata !231, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 %3, metadata !232, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %4, metadata !233, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !234, metadata !DIExpression()), !dbg !1187
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1188, !tbaa !594
  %9 = icmp eq i32 %8, 0, !dbg !1188
  br i1 %9, label %24, label %10, !dbg !1190

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1191, !tbaa !594
  %12 = icmp eq i32 %11, %3, !dbg !1194
  br i1 %12, label %13, label %23, !dbg !1195

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1196, !tbaa !488
  %15 = icmp eq i8* %14, %2, !dbg !1197
  br i1 %15, label %39, label %16, !dbg !1198

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1199
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1200
  br i1 %19, label %20, label %23, !dbg !1200

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1201
  %22 = icmp eq i32 %21, 0, !dbg !1202
  br i1 %22, label %39, label %23, !dbg !1203

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1204, !tbaa !488
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1205, !tbaa !594
  br label %24, !dbg !1206

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1207
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1208, !tbaa !488
  %26 = icmp eq void ()* %25, null, !dbg !1208
  br i1 %26, label %28, label %27, !dbg !1210

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1211
  br label %32, !dbg !1211

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1212, !tbaa !488
  %30 = tail call i8* @getprogname() #33, !dbg !1212
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.86, i64 0, i64 0), i8* noundef %30) #32, !dbg !1212
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1214, !tbaa !488
  %34 = icmp eq i8* %2, null, !dbg !1214
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.87, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.88, i64 0, i64 0), !dbg !1214
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1214
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1215
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1215
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1215, !tbaa.struct !1042
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1215
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1215
  br label %39, !dbg !1216

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1216
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #13 !dbg !1217 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1221, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %1, metadata !1222, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8* %2, metadata !1223, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %3, metadata !1224, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8* %4, metadata !1225, metadata !DIExpression()), !dbg !1227
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1228
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1228
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1226, metadata !DIExpression()), !dbg !1229
  call void @llvm.va_start(i8* nonnull %8), !dbg !1230
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1231
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1231, !tbaa.struct !1042
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #36, !dbg !1231
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1231
  call void @llvm.va_end(i8* nonnull %8), !dbg !1232
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1233
  ret void, !dbg !1233
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1234 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1237, !tbaa !488
  ret i8* %1, !dbg !1238
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1239 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1241, metadata !DIExpression()), !dbg !1244
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %2, metadata !1242, metadata !DIExpression()), !dbg !1244
  %3 = icmp eq i8* %2, null, !dbg !1246
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1246
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1246
  call void @llvm.dbg.value(metadata i8* %5, metadata !1243, metadata !DIExpression()), !dbg !1244
  %6 = ptrtoint i8* %5 to i64, !dbg !1247
  %7 = ptrtoint i8* %0 to i64, !dbg !1247
  %8 = sub i64 %6, %7, !dbg !1247
  %9 = icmp sgt i64 %8, 6, !dbg !1249
  br i1 %9, label %10, label %19, !dbg !1250

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %11, metadata !1252, metadata !DIExpression()) #32, !dbg !1259
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0), metadata !1257, metadata !DIExpression()) #32, !dbg !1259
  call void @llvm.dbg.value(metadata i64 7, metadata !1258, metadata !DIExpression()) #32, !dbg !1259
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0), i64 7) #32, !dbg !1261
  %13 = icmp eq i32 %12, 0, !dbg !1262
  br i1 %13, label %14, label %19, !dbg !1263

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1241, metadata !DIExpression()), !dbg !1244
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i64 noundef 3) #33, !dbg !1264
  %16 = icmp eq i32 %15, 0, !dbg !1267
  %17 = select i1 %16, i64 3, i64 0, !dbg !1268
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1268
  br label %19, !dbg !1268

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1244
  call void @llvm.dbg.value(metadata i8* %21, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8* %20, metadata !1241, metadata !DIExpression()), !dbg !1244
  store i8* %20, i8** @program_name, align 8, !dbg !1269, !tbaa !488
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1270, !tbaa !488
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1271, !tbaa !488
  ret void, !dbg !1272
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #13 !dbg !252 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !259, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i8* %1, metadata !260, metadata !DIExpression()), !dbg !1273
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1274
  call void @llvm.dbg.value(metadata i8* %5, metadata !261, metadata !DIExpression()), !dbg !1273
  %6 = icmp eq i8* %5, %0, !dbg !1275
  br i1 %6, label %7, label %17, !dbg !1277

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1278
  %10 = bitcast i64* %4 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1279
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !267, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1281, metadata !DIExpression()) #32, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %10, metadata !1290, metadata !DIExpression()) #32, !dbg !1298
  call void @llvm.dbg.value(metadata i32 0, metadata !1296, metadata !DIExpression()) #32, !dbg !1298
  call void @llvm.dbg.value(metadata i64 8, metadata !1297, metadata !DIExpression()) #32, !dbg !1298
  store i64 0, i64* %4, align 8, !dbg !1300
  call void @llvm.dbg.value(metadata i32* %3, metadata !262, metadata !DIExpression(DW_OP_deref)), !dbg !1273
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1301
  %12 = icmp eq i64 %11, 2, !dbg !1303
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !262, metadata !DIExpression()), !dbg !1273
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1304
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1305
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1305
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1273
  ret i8* %18, !dbg !1305
}

; Function Attrs: nounwind
declare !dbg !1306 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #13 !dbg !1312 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1317, metadata !DIExpression()), !dbg !1320
  %2 = tail call i32* @__errno_location() #35, !dbg !1321
  %3 = load i32, i32* %2, align 4, !dbg !1321, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %3, metadata !1318, metadata !DIExpression()), !dbg !1320
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1322
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1322
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1322
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #37, !dbg !1323
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1323
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1319, metadata !DIExpression()), !dbg !1320
  store i32 %3, i32* %2, align 4, !dbg !1324, !tbaa !594
  ret %struct.quoting_options* %8, !dbg !1325
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1326 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1332, metadata !DIExpression()), !dbg !1333
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1334
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1334
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1335
  %5 = load i32, i32* %4, align 8, !dbg !1335, !tbaa !1336
  ret i32 %5, !dbg !1338
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1339 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1343, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i32 %1, metadata !1344, metadata !DIExpression()), !dbg !1345
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1346
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1346
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1347
  store i32 %1, i32* %5, align 8, !dbg !1348, !tbaa !1336
  ret void, !dbg !1349
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1350 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1354, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8 %1, metadata !1355, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 %2, metadata !1356, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8 %1, metadata !1357, metadata !DIExpression()), !dbg !1362
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1363
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1363
  %6 = lshr i8 %1, 5, !dbg !1364
  %7 = zext i8 %6 to i64, !dbg !1364
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1365
  call void @llvm.dbg.value(metadata i32* %8, metadata !1358, metadata !DIExpression()), !dbg !1362
  %9 = and i8 %1, 31, !dbg !1366
  %10 = zext i8 %9 to i32, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %10, metadata !1360, metadata !DIExpression()), !dbg !1362
  %11 = load i32, i32* %8, align 4, !dbg !1367, !tbaa !594
  %12 = lshr i32 %11, %10, !dbg !1368
  %13 = and i32 %12, 1, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %13, metadata !1361, metadata !DIExpression()), !dbg !1362
  %14 = and i32 %2, 1, !dbg !1370
  %15 = xor i32 %13, %14, !dbg !1371
  %16 = shl i32 %15, %10, !dbg !1372
  %17 = xor i32 %16, %11, !dbg !1373
  store i32 %17, i32* %8, align 4, !dbg !1373, !tbaa !594
  ret i32 %13, !dbg !1374
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1375 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1379, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i32 %1, metadata !1380, metadata !DIExpression()), !dbg !1382
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1383
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1385
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1379, metadata !DIExpression()), !dbg !1382
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1386
  %6 = load i32, i32* %5, align 4, !dbg !1386, !tbaa !1387
  call void @llvm.dbg.value(metadata i32 %6, metadata !1381, metadata !DIExpression()), !dbg !1382
  store i32 %1, i32* %5, align 4, !dbg !1388, !tbaa !1387
  ret i32 %6, !dbg !1389
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !1390 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1394, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %1, metadata !1395, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %2, metadata !1396, metadata !DIExpression()), !dbg !1397
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1398
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1394, metadata !DIExpression()), !dbg !1397
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1401
  store i32 10, i32* %6, align 8, !dbg !1402, !tbaa !1336
  %7 = icmp ne i8* %1, null, !dbg !1403
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1405
  br i1 %9, label %11, label %10, !dbg !1405

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1406
  unreachable, !dbg !1406

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1407
  store i8* %1, i8** %12, align 8, !dbg !1408, !tbaa !1409
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1410
  store i8* %2, i8** %13, align 8, !dbg !1411, !tbaa !1412
  ret void, !dbg !1413
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #13 !dbg !1414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1418, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i64 %1, metadata !1419, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8* %2, metadata !1420, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i64 %3, metadata !1421, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1422, metadata !DIExpression()), !dbg !1426
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1427
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1427
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1423, metadata !DIExpression()), !dbg !1426
  %8 = tail call i32* @__errno_location() #35, !dbg !1428
  %9 = load i32, i32* %8, align 4, !dbg !1428, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %9, metadata !1424, metadata !DIExpression()), !dbg !1426
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1429
  %11 = load i32, i32* %10, align 8, !dbg !1429, !tbaa !1336
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1430
  %13 = load i32, i32* %12, align 4, !dbg !1430, !tbaa !1387
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1431
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1432
  %16 = load i8*, i8** %15, align 8, !dbg !1432, !tbaa !1409
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1433
  %18 = load i8*, i8** %17, align 8, !dbg !1433, !tbaa !1412
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %19, metadata !1425, metadata !DIExpression()), !dbg !1426
  store i32 %9, i32* %8, align 4, !dbg !1435, !tbaa !594
  ret i64 %19, !dbg !1436
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #13 !dbg !1437 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1443, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %1, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %2, metadata !1445, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %3, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %4, metadata !1447, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %5, metadata !1448, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32* %6, metadata !1449, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %7, metadata !1450, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %8, metadata !1451, metadata !DIExpression()), !dbg !1505
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1506
  %18 = icmp eq i64 %17, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i1 %18, metadata !1452, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1505
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 0, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* null, metadata !1455, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 0, metadata !1456, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1457, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %5, metadata !1458, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 1, metadata !1460, metadata !DIExpression()), !dbg !1505
  %19 = and i32 %5, 2, !dbg !1508
  %20 = icmp ne i32 %19, 0, !dbg !1508
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
  br label %36, !dbg !1508

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1509
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1510
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1511
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1458, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %43, metadata !1456, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %42, metadata !1455, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %41, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %40, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %39, metadata !1451, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %38, metadata !1450, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %37, metadata !1447, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.label(metadata !1498), !dbg !1512
  call void @llvm.dbg.value(metadata i8 0, metadata !1461, metadata !DIExpression()), !dbg !1505
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
  ], !dbg !1513

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1458, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 5, metadata !1447, metadata !DIExpression()), !dbg !1505
  br label %111, !dbg !1514

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1458, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 5, metadata !1447, metadata !DIExpression()), !dbg !1505
  br i1 %45, label %111, label %51, !dbg !1514

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1515
  br i1 %52, label %111, label %53, !dbg !1519

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1515, !tbaa !496
  br label %111, !dbg !1515

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), metadata !341, metadata !DIExpression()) #32, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %37, metadata !342, metadata !DIExpression()) #32, !dbg !1520
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), i32 noundef 5) #32, !dbg !1524
  call void @llvm.dbg.value(metadata i8* %55, metadata !343, metadata !DIExpression()) #32, !dbg !1520
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), !dbg !1525
  br i1 %56, label %57, label %66, !dbg !1527

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1529
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !345, metadata !DIExpression()) #32, !dbg !1530
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1531, metadata !DIExpression()) #32, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %23, metadata !1539, metadata !DIExpression()) #32, !dbg !1544
  call void @llvm.dbg.value(metadata i32 0, metadata !1542, metadata !DIExpression()) #32, !dbg !1544
  call void @llvm.dbg.value(metadata i64 8, metadata !1543, metadata !DIExpression()) #32, !dbg !1544
  store i64 0, i64* %13, align 8, !dbg !1546
  call void @llvm.dbg.value(metadata i32* %12, metadata !344, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1520
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1547
  %59 = icmp eq i64 %58, 3, !dbg !1549
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !344, metadata !DIExpression()) #32, !dbg !1520
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1550
  %63 = icmp eq i32 %37, 9, !dbg !1550
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), !dbg !1550
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1551
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1551
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8* %67, metadata !1450, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), metadata !341, metadata !DIExpression()) #32, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %37, metadata !342, metadata !DIExpression()) #32, !dbg !1552
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), i32 noundef 5) #32, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %68, metadata !343, metadata !DIExpression()) #32, !dbg !1552
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), !dbg !1555
  br i1 %69, label %70, label %79, !dbg !1556

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1558
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !345, metadata !DIExpression()) #32, !dbg !1559
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1531, metadata !DIExpression()) #32, !dbg !1560
  call void @llvm.dbg.value(metadata i8* %26, metadata !1539, metadata !DIExpression()) #32, !dbg !1562
  call void @llvm.dbg.value(metadata i32 0, metadata !1542, metadata !DIExpression()) #32, !dbg !1562
  call void @llvm.dbg.value(metadata i64 8, metadata !1543, metadata !DIExpression()) #32, !dbg !1562
  store i64 0, i64* %11, align 8, !dbg !1564
  call void @llvm.dbg.value(metadata i32* %10, metadata !344, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1552
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1565
  %72 = icmp eq i64 %71, 3, !dbg !1566
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !344, metadata !DIExpression()) #32, !dbg !1552
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1567
  %76 = icmp eq i32 %37, 9, !dbg !1567
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), !dbg !1567
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1567
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1568
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1568
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1451, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %80, metadata !1450, metadata !DIExpression()), !dbg !1505
  br i1 %45, label %97, label %82, !dbg !1569

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1462, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1505
  %83 = load i8, i8* %80, align 1, !dbg !1571, !tbaa !496
  %84 = icmp eq i8 %83, 0, !dbg !1573
  br i1 %84, label %97, label %85, !dbg !1573

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1462, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %88, metadata !1453, metadata !DIExpression()), !dbg !1505
  %89 = icmp ult i64 %88, %48, !dbg !1574
  br i1 %89, label %90, label %92, !dbg !1577

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1574
  store i8 %86, i8* %91, align 1, !dbg !1574, !tbaa !496
  br label %92, !dbg !1574

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %93, metadata !1453, metadata !DIExpression()), !dbg !1505
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1578
  call void @llvm.dbg.value(metadata i8* %94, metadata !1462, metadata !DIExpression()), !dbg !1570
  %95 = load i8, i8* %94, align 1, !dbg !1571, !tbaa !496
  %96 = icmp eq i8 %95, 0, !dbg !1573
  br i1 %96, label %97, label %85, !dbg !1573, !llvm.loop !1579

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1581
  call void @llvm.dbg.value(metadata i64 %98, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 1, metadata !1457, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %81, metadata !1455, metadata !DIExpression()), !dbg !1505
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %99, metadata !1456, metadata !DIExpression()), !dbg !1505
  br label %111, !dbg !1583

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1457, metadata !DIExpression()), !dbg !1505
  br label %102, !dbg !1584

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1458, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1505
  br i1 %45, label %102, label %105, !dbg !1585

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1458, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 2, metadata !1447, metadata !DIExpression()), !dbg !1505
  br label %111, !dbg !1586

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1458, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 2, metadata !1447, metadata !DIExpression()), !dbg !1505
  br i1 %45, label %111, label %105, !dbg !1586

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1587
  br i1 %107, label %111, label %108, !dbg !1591

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1587, !tbaa !496
  br label %111, !dbg !1587

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1458, metadata !DIExpression()), !dbg !1505
  br label %111, !dbg !1592

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1593
  unreachable, !dbg !1593

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1581
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %102 ], !dbg !1505
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1505
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1458, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %117, metadata !1456, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %116, metadata !1455, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %115, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %114, metadata !1451, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %113, metadata !1450, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %112, metadata !1447, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 0, metadata !1467, metadata !DIExpression()), !dbg !1594
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
  br label %132, !dbg !1595

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1581
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1509
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1594
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %139, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %135, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %134, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %133, metadata !1446, metadata !DIExpression()), !dbg !1505
  %141 = icmp eq i64 %133, -1, !dbg !1596
  br i1 %141, label %142, label %146, !dbg !1597

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1598
  %144 = load i8, i8* %143, align 1, !dbg !1598, !tbaa !496
  %145 = icmp eq i8 %144, 0, !dbg !1599
  br i1 %145, label %596, label %148, !dbg !1600

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1601
  br i1 %147, label %596, label %148, !dbg !1600

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1469, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1472, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1473, metadata !DIExpression()), !dbg !1602
  br i1 %123, label %149, label %163, !dbg !1603

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1605
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1606
  br i1 %151, label %152, label %154, !dbg !1606

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %153, metadata !1446, metadata !DIExpression()), !dbg !1505
  br label %154, !dbg !1608

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1608
  call void @llvm.dbg.value(metadata i64 %155, metadata !1446, metadata !DIExpression()), !dbg !1505
  %156 = icmp ugt i64 %150, %155, !dbg !1609
  br i1 %156, label %163, label %157, !dbg !1610

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %158, metadata !1612, metadata !DIExpression()) #32, !dbg !1617
  call void @llvm.dbg.value(metadata i8* %116, metadata !1615, metadata !DIExpression()) #32, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %117, metadata !1616, metadata !DIExpression()) #32, !dbg !1617
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1619
  %160 = icmp ne i32 %159, 0, !dbg !1620
  %161 = or i1 %160, %125, !dbg !1621
  %162 = xor i1 %160, true, !dbg !1621
  br i1 %161, label %163, label %647, !dbg !1621

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1469, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %164, metadata !1446, metadata !DIExpression()), !dbg !1505
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1622
  %167 = load i8, i8* %166, align 1, !dbg !1622, !tbaa !496
  call void @llvm.dbg.value(metadata i8 %167, metadata !1474, metadata !DIExpression()), !dbg !1602
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
  ], !dbg !1623

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1624

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1625

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1602
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1629
  br i1 %171, label %188, label %172, !dbg !1629

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1631
  br i1 %173, label %174, label %176, !dbg !1635

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1631
  store i8 39, i8* %175, align 1, !dbg !1631, !tbaa !496
  br label %176, !dbg !1631

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %177, metadata !1453, metadata !DIExpression()), !dbg !1505
  %178 = icmp ult i64 %177, %140, !dbg !1636
  br i1 %178, label %179, label %181, !dbg !1639

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1636
  store i8 36, i8* %180, align 1, !dbg !1636, !tbaa !496
  br label %181, !dbg !1636

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %182, metadata !1453, metadata !DIExpression()), !dbg !1505
  %183 = icmp ult i64 %182, %140, !dbg !1640
  br i1 %183, label %184, label %186, !dbg !1643

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1640
  store i8 39, i8* %185, align 1, !dbg !1640, !tbaa !496
  br label %186, !dbg !1640

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %187, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1505
  br label %188, !dbg !1644

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1505
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %189, metadata !1453, metadata !DIExpression()), !dbg !1505
  %191 = icmp ult i64 %189, %140, !dbg !1645
  br i1 %191, label %192, label %194, !dbg !1648

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1645
  store i8 92, i8* %193, align 1, !dbg !1645, !tbaa !496
  br label %194, !dbg !1645

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %195, metadata !1453, metadata !DIExpression()), !dbg !1505
  br i1 %120, label %196, label %499, !dbg !1649

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1651
  %198 = icmp ult i64 %197, %164, !dbg !1652
  br i1 %198, label %199, label %456, !dbg !1653

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1654
  %201 = load i8, i8* %200, align 1, !dbg !1654, !tbaa !496
  %202 = add i8 %201, -48, !dbg !1655
  %203 = icmp ult i8 %202, 10, !dbg !1655
  br i1 %203, label %204, label %456, !dbg !1655

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1656
  br i1 %205, label %206, label %208, !dbg !1660

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1656
  store i8 48, i8* %207, align 1, !dbg !1656, !tbaa !496
  br label %208, !dbg !1656

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %209, metadata !1453, metadata !DIExpression()), !dbg !1505
  %210 = icmp ult i64 %209, %140, !dbg !1661
  br i1 %210, label %211, label %213, !dbg !1664

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1661
  store i8 48, i8* %212, align 1, !dbg !1661, !tbaa !496
  br label %213, !dbg !1661

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %214, metadata !1453, metadata !DIExpression()), !dbg !1505
  br label %456, !dbg !1665

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1666

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1667

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1668

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1670

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1672
  %221 = icmp ult i64 %220, %164, !dbg !1673
  br i1 %221, label %222, label %456, !dbg !1674

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1675
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1676
  %225 = load i8, i8* %224, align 1, !dbg !1676, !tbaa !496
  %226 = icmp eq i8 %225, 63, !dbg !1677
  br i1 %226, label %227, label %456, !dbg !1678

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1679
  %229 = load i8, i8* %228, align 1, !dbg !1679, !tbaa !496
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
  ], !dbg !1680

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1681

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %220, metadata !1467, metadata !DIExpression()), !dbg !1594
  %232 = icmp ult i64 %134, %140, !dbg !1683
  br i1 %232, label %233, label %235, !dbg !1686

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1683
  store i8 63, i8* %234, align 1, !dbg !1683, !tbaa !496
  br label %235, !dbg !1683

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %236, metadata !1453, metadata !DIExpression()), !dbg !1505
  %237 = icmp ult i64 %236, %140, !dbg !1687
  br i1 %237, label %238, label %240, !dbg !1690

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1687
  store i8 34, i8* %239, align 1, !dbg !1687, !tbaa !496
  br label %240, !dbg !1687

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %241, metadata !1453, metadata !DIExpression()), !dbg !1505
  %242 = icmp ult i64 %241, %140, !dbg !1691
  br i1 %242, label %243, label %245, !dbg !1694

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1691
  store i8 34, i8* %244, align 1, !dbg !1691, !tbaa !496
  br label %245, !dbg !1691

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %246, metadata !1453, metadata !DIExpression()), !dbg !1505
  %247 = icmp ult i64 %246, %140, !dbg !1695
  br i1 %247, label %248, label %250, !dbg !1698

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1695
  store i8 63, i8* %249, align 1, !dbg !1695, !tbaa !496
  br label %250, !dbg !1695

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %251, metadata !1453, metadata !DIExpression()), !dbg !1505
  br label %456, !dbg !1699

252:                                              ; preds = %163
  br label %263, !dbg !1700

253:                                              ; preds = %163
  br label %263, !dbg !1701

254:                                              ; preds = %163
  br label %261, !dbg !1702

255:                                              ; preds = %163
  br label %261, !dbg !1703

256:                                              ; preds = %163
  br label %263, !dbg !1704

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1705

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1706

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1709

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1711

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1712
  call void @llvm.dbg.label(metadata !1499), !dbg !1713
  br i1 %128, label %263, label %638, !dbg !1714

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1712
  call void @llvm.dbg.label(metadata !1501), !dbg !1716
  br i1 %118, label %510, label %467, !dbg !1717

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1718

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1719, !tbaa !496
  %268 = icmp eq i8 %267, 0, !dbg !1721
  br i1 %268, label %269, label %456, !dbg !1722

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1723
  br i1 %270, label %271, label %456, !dbg !1725

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1602
  br label %272, !dbg !1726

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1473, metadata !DIExpression()), !dbg !1602
  br i1 %126, label %274, label %456, !dbg !1727

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1729

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1602
  br i1 %126, label %276, label %456, !dbg !1730

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1731

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1734
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1736
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1736
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %282, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %281, metadata !1454, metadata !DIExpression()), !dbg !1505
  %283 = icmp ult i64 %134, %282, !dbg !1737
  br i1 %283, label %284, label %286, !dbg !1740

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1737
  store i8 39, i8* %285, align 1, !dbg !1737, !tbaa !496
  br label %286, !dbg !1737

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %287, metadata !1453, metadata !DIExpression()), !dbg !1505
  %288 = icmp ult i64 %287, %282, !dbg !1741
  br i1 %288, label %289, label %291, !dbg !1744

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1741
  store i8 92, i8* %290, align 1, !dbg !1741, !tbaa !496
  br label %291, !dbg !1741

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %292, metadata !1453, metadata !DIExpression()), !dbg !1505
  %293 = icmp ult i64 %292, %282, !dbg !1745
  br i1 %293, label %294, label %296, !dbg !1748

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1745
  store i8 39, i8* %295, align 1, !dbg !1745, !tbaa !496
  br label %296, !dbg !1745

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %297, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1461, metadata !DIExpression()), !dbg !1505
  br label %456, !dbg !1749

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1750

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1475, metadata !DIExpression()), !dbg !1751
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1752
  %301 = load i16*, i16** %300, align 8, !dbg !1752, !tbaa !488
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1752
  %304 = load i16, i16* %303, align 2, !dbg !1752, !tbaa !627
  %305 = and i16 %304, 16384, !dbg !1752
  %306 = icmp ne i16 %305, 0, !dbg !1754
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %349, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %312, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i1 %350, metadata !1473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  br label %352, !dbg !1755

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1756
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1479, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1531, metadata !DIExpression()) #32, !dbg !1758
  call void @llvm.dbg.value(metadata i8* %32, metadata !1539, metadata !DIExpression()) #32, !dbg !1760
  call void @llvm.dbg.value(metadata i32 0, metadata !1542, metadata !DIExpression()) #32, !dbg !1760
  call void @llvm.dbg.value(metadata i64 8, metadata !1543, metadata !DIExpression()) #32, !dbg !1760
  store i64 0, i64* %14, align 8, !dbg !1762
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1751
  %308 = icmp eq i64 %164, -1, !dbg !1763
  br i1 %308, label %309, label %311, !dbg !1765

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %310, metadata !1446, metadata !DIExpression()), !dbg !1505
  br label %311, !dbg !1767

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %312, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1768
  %313 = sub i64 %312, %139, !dbg !1769
  call void @llvm.dbg.value(metadata i32* %16, metadata !1482, metadata !DIExpression(DW_OP_deref)), !dbg !1770
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %314, metadata !1486, metadata !DIExpression()), !dbg !1770
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1772

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1751
  %316 = icmp ugt i64 %312, %139, !dbg !1773
  br i1 %316, label %319, label %317, !dbg !1775

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1776
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %349, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %312, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i1 %350, metadata !1473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  br label %352, !dbg !1755

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1751
  br label %346, !dbg !1778

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1475, metadata !DIExpression()), !dbg !1751
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1780
  %323 = load i8, i8* %322, align 1, !dbg !1780, !tbaa !496
  %324 = icmp eq i8 %323, 0, !dbg !1775
  br i1 %324, label %348, label %325, !dbg !1781

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %326, metadata !1475, metadata !DIExpression()), !dbg !1751
  %327 = add i64 %326, %139, !dbg !1783
  %328 = icmp eq i64 %326, %313, !dbg !1773
  br i1 %328, label %348, label %319, !dbg !1775, !llvm.loop !1784

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1785
  call void @llvm.dbg.value(metadata i64 1, metadata !1487, metadata !DIExpression()), !dbg !1786
  br i1 %331, label %332, label %340, !dbg !1785

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1487, metadata !DIExpression()), !dbg !1786
  %334 = add i64 %333, %139, !dbg !1787
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1789
  %336 = load i8, i8* %335, align 1, !dbg !1789, !tbaa !496
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1790

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %338, metadata !1487, metadata !DIExpression()), !dbg !1786
  %339 = icmp eq i64 %338, %314, !dbg !1792
  br i1 %339, label %340, label %332, !dbg !1793, !llvm.loop !1794

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1796, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %341, metadata !1482, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %341, metadata !1798, metadata !DIExpression()) #32, !dbg !1806
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1808
  %343 = icmp ne i32 %342, 0, !dbg !1809
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %314, metadata !1475, metadata !DIExpression()), !dbg !1751
  br label %348, !dbg !1810

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1776
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1777
  call void @llvm.dbg.label(metadata !1504), !dbg !1811
  %345 = select i1 %118, i32 4, i32 2, !dbg !1812
  br label %643, !dbg !1812

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1776
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %349, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %312, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i1 %350, metadata !1473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  br label %352, !dbg !1755

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1776
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %349, metadata !1475, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %312, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i1 %350, metadata !1473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  %351 = icmp ugt i64 %349, 1, !dbg !1814
  br i1 %351, label %357, label %352, !dbg !1755

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1815
  br i1 %356, label %456, label %357, !dbg !1815

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %361, metadata !1495, metadata !DIExpression()), !dbg !1817
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1818

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1505
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1594
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1819
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %369, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %368, metadata !1472, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1469, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %366, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %364, metadata !1453, metadata !DIExpression()), !dbg !1505
  br i1 %362, label %414, label %370, !dbg !1820

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1825

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1602
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1828
  br i1 %372, label %389, label %373, !dbg !1828

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1830
  br i1 %374, label %375, label %377, !dbg !1834

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1830
  store i8 39, i8* %376, align 1, !dbg !1830, !tbaa !496
  br label %377, !dbg !1830

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %378, metadata !1453, metadata !DIExpression()), !dbg !1505
  %379 = icmp ult i64 %378, %140, !dbg !1835
  br i1 %379, label %380, label %382, !dbg !1838

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1835
  store i8 36, i8* %381, align 1, !dbg !1835, !tbaa !496
  br label %382, !dbg !1835

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %383, metadata !1453, metadata !DIExpression()), !dbg !1505
  %384 = icmp ult i64 %383, %140, !dbg !1839
  br i1 %384, label %385, label %387, !dbg !1842

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1839
  store i8 39, i8* %386, align 1, !dbg !1839, !tbaa !496
  br label %387, !dbg !1839

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %388, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1505
  br label %389, !dbg !1843

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1505
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %390, metadata !1453, metadata !DIExpression()), !dbg !1505
  %392 = icmp ult i64 %390, %140, !dbg !1844
  br i1 %392, label %393, label %395, !dbg !1847

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1844
  store i8 92, i8* %394, align 1, !dbg !1844, !tbaa !496
  br label %395, !dbg !1844

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %396, metadata !1453, metadata !DIExpression()), !dbg !1505
  %397 = icmp ult i64 %396, %140, !dbg !1848
  br i1 %397, label %398, label %402, !dbg !1851

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1848
  %400 = or i8 %399, 48, !dbg !1848
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1848
  store i8 %400, i8* %401, align 1, !dbg !1848, !tbaa !496
  br label %402, !dbg !1848

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %403, metadata !1453, metadata !DIExpression()), !dbg !1505
  %404 = icmp ult i64 %403, %140, !dbg !1852
  br i1 %404, label %405, label %410, !dbg !1855

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1852
  %407 = and i8 %406, 7, !dbg !1852
  %408 = or i8 %407, 48, !dbg !1852
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1852
  store i8 %408, i8* %409, align 1, !dbg !1852, !tbaa !496
  br label %410, !dbg !1852

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %411, metadata !1453, metadata !DIExpression()), !dbg !1505
  %412 = and i8 %369, 7, !dbg !1856
  %413 = or i8 %412, 48, !dbg !1857
  call void @llvm.dbg.value(metadata i8 %413, metadata !1474, metadata !DIExpression()), !dbg !1602
  br label %421, !dbg !1858

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1859

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1860
  br i1 %416, label %417, label %419, !dbg !1865

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1860
  store i8 92, i8* %418, align 1, !dbg !1860, !tbaa !496
  br label %419, !dbg !1860

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %420, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1469, metadata !DIExpression()), !dbg !1602
  br label %421, !dbg !1866

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1505
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1602
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %426, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %425, metadata !1472, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1469, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %422, metadata !1453, metadata !DIExpression()), !dbg !1505
  %427 = add i64 %366, 1, !dbg !1867
  %428 = icmp ugt i64 %361, %427, !dbg !1869
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1870

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1871
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1871
  br i1 %432, label %433, label %444, !dbg !1871

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1874
  br i1 %434, label %435, label %437, !dbg !1878

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1874
  store i8 39, i8* %436, align 1, !dbg !1874, !tbaa !496
  br label %437, !dbg !1874

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %438, metadata !1453, metadata !DIExpression()), !dbg !1505
  %439 = icmp ult i64 %438, %140, !dbg !1879
  br i1 %439, label %440, label %442, !dbg !1882

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1879
  store i8 39, i8* %441, align 1, !dbg !1879, !tbaa !496
  br label %442, !dbg !1879

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %443, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1461, metadata !DIExpression()), !dbg !1505
  br label %444, !dbg !1883

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1884
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %445, metadata !1453, metadata !DIExpression()), !dbg !1505
  %447 = icmp ult i64 %445, %140, !dbg !1885
  br i1 %447, label %448, label %450, !dbg !1888

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1885
  store i8 %426, i8* %449, align 1, !dbg !1885, !tbaa !496
  br label %450, !dbg !1885

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %451, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %427, metadata !1467, metadata !DIExpression()), !dbg !1594
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1889
  %453 = load i8, i8* %452, align 1, !dbg !1889, !tbaa !496
  call void @llvm.dbg.value(metadata i8 %453, metadata !1474, metadata !DIExpression()), !dbg !1602
  br label %363, !dbg !1890, !llvm.loop !1891

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i1 %358, metadata !1473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %425, metadata !1472, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1469, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %366, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %422, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %360, metadata !1446, metadata !DIExpression()), !dbg !1505
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1894
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1505
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1509
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1594
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1602
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %465, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1473, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1472, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1469, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %462, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %459, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %458, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %457, metadata !1446, metadata !DIExpression()), !dbg !1505
  br i1 %121, label %478, label %467, !dbg !1895

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
  br i1 %131, label %479, label %499, !dbg !1897

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1898

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
  %490 = lshr i8 %481, 5, !dbg !1899
  %491 = zext i8 %490 to i64, !dbg !1899
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1900
  %493 = load i32, i32* %492, align 4, !dbg !1900, !tbaa !594
  %494 = and i8 %481, 31, !dbg !1901
  %495 = zext i8 %494 to i32, !dbg !1901
  %496 = shl nuw i32 1, %495, !dbg !1902
  %497 = and i32 %493, %496, !dbg !1902
  %498 = icmp eq i32 %497, 0, !dbg !1902
  br i1 %498, label %499, label %510, !dbg !1903

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
  br i1 %165, label %510, label %546, !dbg !1904

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1894
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1505
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1509
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1905
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1602
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %518, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1473, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %516, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %513, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %512, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %511, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.label(metadata !1502), !dbg !1906
  br i1 %119, label %638, label %520, !dbg !1907

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1602
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1909
  br i1 %521, label %538, label %522, !dbg !1909

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1911
  br i1 %523, label %524, label %526, !dbg !1915

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1911
  store i8 39, i8* %525, align 1, !dbg !1911, !tbaa !496
  br label %526, !dbg !1911

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %527, metadata !1453, metadata !DIExpression()), !dbg !1505
  %528 = icmp ult i64 %527, %519, !dbg !1916
  br i1 %528, label %529, label %531, !dbg !1919

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1916
  store i8 36, i8* %530, align 1, !dbg !1916, !tbaa !496
  br label %531, !dbg !1916

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %532, metadata !1453, metadata !DIExpression()), !dbg !1505
  %533 = icmp ult i64 %532, %519, !dbg !1920
  br i1 %533, label %534, label %536, !dbg !1923

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1920
  store i8 39, i8* %535, align 1, !dbg !1920, !tbaa !496
  br label %536, !dbg !1920

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %537, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1505
  br label %538, !dbg !1924

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1602
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %539, metadata !1453, metadata !DIExpression()), !dbg !1505
  %541 = icmp ult i64 %539, %519, !dbg !1925
  br i1 %541, label %542, label %544, !dbg !1928

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1925
  store i8 92, i8* %543, align 1, !dbg !1925, !tbaa !496
  br label %544, !dbg !1925

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %556, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %555, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1473, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1472, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %552, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %549, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %548, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %547, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.label(metadata !1503), !dbg !1929
  br label %570, !dbg !1930

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1894
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1505
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1509
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1905
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1933
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %555, metadata !1474, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1473, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1472, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %552, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %549, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %548, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %547, metadata !1446, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.label(metadata !1503), !dbg !1929
  %557 = xor i1 %551, true, !dbg !1930
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1930
  br i1 %558, label %570, label %559, !dbg !1930

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1934
  br i1 %560, label %561, label %563, !dbg !1938

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1934
  store i8 39, i8* %562, align 1, !dbg !1934, !tbaa !496
  br label %563, !dbg !1934

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %564, metadata !1453, metadata !DIExpression()), !dbg !1505
  %565 = icmp ult i64 %564, %556, !dbg !1939
  br i1 %565, label %566, label %568, !dbg !1942

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1939
  store i8 39, i8* %567, align 1, !dbg !1939, !tbaa !496
  br label %568, !dbg !1939

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %569, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1461, metadata !DIExpression()), !dbg !1505
  br label %570, !dbg !1943

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1602
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %578, metadata !1453, metadata !DIExpression()), !dbg !1505
  %580 = icmp ult i64 %578, %571, !dbg !1944
  br i1 %580, label %581, label %583, !dbg !1947

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1944
  store i8 %572, i8* %582, align 1, !dbg !1944, !tbaa !496
  br label %583, !dbg !1944

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %584, metadata !1453, metadata !DIExpression()), !dbg !1505
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1948
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1505
  br label %586, !dbg !1949

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1894
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1505
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1509
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1905
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %593, metadata !1467, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %589, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %588, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %587, metadata !1446, metadata !DIExpression()), !dbg !1505
  %595 = add i64 %593, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %595, metadata !1467, metadata !DIExpression()), !dbg !1594
  br label %132, !dbg !1951, !llvm.loop !1952

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1444, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1459, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 undef, metadata !1454, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 undef, metadata !1453, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 undef, metadata !1446, metadata !DIExpression()), !dbg !1505
  %597 = icmp eq i64 %134, 0, !dbg !1954
  %598 = and i1 %126, %597, !dbg !1956
  %599 = and i1 %598, %119, !dbg !1956
  br i1 %599, label %638, label %600, !dbg !1956

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1957
  %602 = or i1 %119, %601, !dbg !1957
  %603 = xor i1 %136, true, !dbg !1957
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1957
  br i1 %604, label %612, label %605, !dbg !1957

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1959

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1961
  br label %653, !dbg !1963

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1964
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1966
  br i1 %611, label %36, label %612, !dbg !1966

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1967
  %615 = or i1 %614, %613, !dbg !1969
  br i1 %615, label %631, label %616, !dbg !1969

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1455, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %134, metadata !1453, metadata !DIExpression()), !dbg !1505
  %617 = load i8, i8* %116, align 1, !dbg !1970, !tbaa !496
  %618 = icmp eq i8 %617, 0, !dbg !1973
  br i1 %618, label %631, label %619, !dbg !1973

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1455, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %622, metadata !1453, metadata !DIExpression()), !dbg !1505
  %623 = icmp ult i64 %622, %140, !dbg !1974
  br i1 %623, label %624, label %626, !dbg !1977

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1974
  store i8 %620, i8* %625, align 1, !dbg !1974, !tbaa !496
  br label %626, !dbg !1974

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %627, metadata !1453, metadata !DIExpression()), !dbg !1505
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1978
  call void @llvm.dbg.value(metadata i8* %628, metadata !1455, metadata !DIExpression()), !dbg !1505
  %629 = load i8, i8* %628, align 1, !dbg !1970, !tbaa !496
  %630 = icmp eq i8 %629, 0, !dbg !1973
  br i1 %630, label %631, label %619, !dbg !1973, !llvm.loop !1979

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1581
  call void @llvm.dbg.value(metadata i64 %632, metadata !1453, metadata !DIExpression()), !dbg !1505
  %633 = icmp ult i64 %632, %140, !dbg !1981
  br i1 %633, label %634, label %653, !dbg !1983

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1984
  store i8 0, i8* %635, align 1, !dbg !1985, !tbaa !496
  br label %653, !dbg !1984

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1504), !dbg !1811
  %637 = icmp eq i32 %112, 2, !dbg !1986
  br i1 %637, label %643, label %647, !dbg !1812

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1504), !dbg !1811
  %641 = icmp eq i32 %112, 2, !dbg !1986
  %642 = select i1 %118, i32 4, i32 2, !dbg !1812
  br i1 %641, label %643, label %647, !dbg !1812

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1812

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1447, metadata !DIExpression()), !dbg !1505
  %651 = and i32 %5, -3, !dbg !1987
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1988
  br label %653, !dbg !1989

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1990
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1991 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #13 !dbg !1993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1997, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i64 %1, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1999, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8* %0, metadata !2001, metadata !DIExpression()) #32, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %1, metadata !2006, metadata !DIExpression()) #32, !dbg !2014
  call void @llvm.dbg.value(metadata i64* null, metadata !2007, metadata !DIExpression()) #32, !dbg !2014
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2008, metadata !DIExpression()) #32, !dbg !2014
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2016
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2009, metadata !DIExpression()) #32, !dbg !2014
  %6 = tail call i32* @__errno_location() #35, !dbg !2017
  %7 = load i32, i32* %6, align 4, !dbg !2017, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %7, metadata !2010, metadata !DIExpression()) #32, !dbg !2014
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2018
  %9 = load i32, i32* %8, align 4, !dbg !2018, !tbaa !1387
  %10 = or i32 %9, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %10, metadata !2011, metadata !DIExpression()) #32, !dbg !2014
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2020
  %12 = load i32, i32* %11, align 8, !dbg !2020, !tbaa !1336
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2021
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2022
  %15 = load i8*, i8** %14, align 8, !dbg !2022, !tbaa !1409
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2023
  %17 = load i8*, i8** %16, align 8, !dbg !2023, !tbaa !1412
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !2024
  %19 = add i64 %18, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %19, metadata !2012, metadata !DIExpression()) #32, !dbg !2014
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %20, metadata !2013, metadata !DIExpression()) #32, !dbg !2014
  %21 = load i32, i32* %11, align 8, !dbg !2027, !tbaa !1336
  %22 = load i8*, i8** %14, align 8, !dbg !2028, !tbaa !1409
  %23 = load i8*, i8** %16, align 8, !dbg !2029, !tbaa !1412
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !2030
  store i32 %7, i32* %6, align 4, !dbg !2031, !tbaa !594
  ret i8* %20, !dbg !2032
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #13 !dbg !2002 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2001, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i64 %1, metadata !2006, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i64* %2, metadata !2007, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2008, metadata !DIExpression()), !dbg !2033
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2034
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2009, metadata !DIExpression()), !dbg !2033
  %7 = tail call i32* @__errno_location() #35, !dbg !2035
  %8 = load i32, i32* %7, align 4, !dbg !2035, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %8, metadata !2010, metadata !DIExpression()), !dbg !2033
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2036
  %10 = load i32, i32* %9, align 4, !dbg !2036, !tbaa !1387
  %11 = icmp eq i64* %2, null, !dbg !2037
  %12 = zext i1 %11 to i32, !dbg !2037
  %13 = or i32 %10, %12, !dbg !2038
  call void @llvm.dbg.value(metadata i32 %13, metadata !2011, metadata !DIExpression()), !dbg !2033
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2039
  %15 = load i32, i32* %14, align 8, !dbg !2039, !tbaa !1336
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2040
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2041
  %18 = load i8*, i8** %17, align 8, !dbg !2041, !tbaa !1409
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2042
  %20 = load i8*, i8** %19, align 8, !dbg !2042, !tbaa !1412
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2043
  %22 = add i64 %21, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %22, metadata !2012, metadata !DIExpression()), !dbg !2033
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2045
  call void @llvm.dbg.value(metadata i8* %23, metadata !2013, metadata !DIExpression()), !dbg !2033
  %24 = load i32, i32* %14, align 8, !dbg !2046, !tbaa !1336
  %25 = load i8*, i8** %17, align 8, !dbg !2047, !tbaa !1409
  %26 = load i8*, i8** %19, align 8, !dbg !2048, !tbaa !1412
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2049
  store i32 %8, i32* %7, align 4, !dbg !2050, !tbaa !594
  br i1 %11, label %29, label %28, !dbg !2051

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2052, !tbaa !2054
  br label %29, !dbg !2055

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2056
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #13 !dbg !2057 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2062, !tbaa !488
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2059, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 1, metadata !2060, metadata !DIExpression()), !dbg !2064
  %2 = load i32, i32* @nslots, align 4, !tbaa !594
  call void @llvm.dbg.value(metadata i32 1, metadata !2060, metadata !DIExpression()), !dbg !2064
  %3 = icmp sgt i32 %2, 1, !dbg !2065
  br i1 %3, label %4, label %6, !dbg !2067

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2065
  br label %10, !dbg !2067

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2068
  %8 = load i8*, i8** %7, align 8, !dbg !2068, !tbaa !2070
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2072
  br i1 %9, label %17, label %16, !dbg !2073

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2060, metadata !DIExpression()), !dbg !2064
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2074
  %13 = load i8*, i8** %12, align 8, !dbg !2074, !tbaa !2070
  tail call void @free(i8* noundef %13) #32, !dbg !2075
  %14 = add nuw nsw i64 %11, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %14, metadata !2060, metadata !DIExpression()), !dbg !2064
  %15 = icmp eq i64 %14, %5, !dbg !2065
  br i1 %15, label %6, label %10, !dbg !2067, !llvm.loop !2077

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !2079
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2081, !tbaa !2082
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2083, !tbaa !2070
  br label %17, !dbg !2084

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2085
  br i1 %18, label %21, label %19, !dbg !2087

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2088
  tail call void @free(i8* noundef %20) #32, !dbg !2090
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2091, !tbaa !488
  br label %21, !dbg !2092

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2093, !tbaa !594
  ret void, !dbg !2094
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 !dbg !2095 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2097, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* %1, metadata !2098, metadata !DIExpression()), !dbg !2099
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2100
  ret i8* %3, !dbg !2101
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #13 !dbg !2102 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2106, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8* %1, metadata !2107, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i64 %2, metadata !2108, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2109, metadata !DIExpression()), !dbg !2122
  %6 = tail call i32* @__errno_location() #35, !dbg !2123
  %7 = load i32, i32* %6, align 4, !dbg !2123, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %7, metadata !2110, metadata !DIExpression()), !dbg !2122
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2124, !tbaa !488
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2111, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2112, metadata !DIExpression()), !dbg !2122
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2125
  br i1 %9, label %10, label %11, !dbg !2125

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2127
  unreachable, !dbg !2127

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2128, !tbaa !594
  %13 = icmp sgt i32 %12, %0, !dbg !2129
  br i1 %13, label %36, label %14, !dbg !2130

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2131
  call void @llvm.dbg.value(metadata i1 %15, metadata !2113, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2132
  %16 = bitcast i64* %5 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2133
  %17 = sext i32 %12 to i64, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %17, metadata !2116, metadata !DIExpression()), !dbg !2132
  store i64 %17, i64* %5, align 8, !dbg !2135, !tbaa !2054
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2136
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2136
  %20 = add nuw nsw i32 %0, 1, !dbg !2137
  %21 = sub i32 %20, %12, !dbg !2138
  %22 = sext i32 %21 to i64, !dbg !2139
  call void @llvm.dbg.value(metadata i64* %5, metadata !2116, metadata !DIExpression(DW_OP_deref)), !dbg !2132
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !2140
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2140
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2111, metadata !DIExpression()), !dbg !2122
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2141, !tbaa !488
  br i1 %15, label %25, label %26, !dbg !2142

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2143, !tbaa.struct !2145
  br label %26, !dbg !2146

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2147, !tbaa !594
  %28 = sext i32 %27 to i64, !dbg !2148
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2148
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2149
  %31 = load i64, i64* %5, align 8, !dbg !2150, !tbaa !2054
  call void @llvm.dbg.value(metadata i64 %31, metadata !2116, metadata !DIExpression()), !dbg !2132
  %32 = sub nsw i64 %31, %28, !dbg !2151
  %33 = shl i64 %32, 4, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %30, metadata !1539, metadata !DIExpression()) #32, !dbg !2153
  call void @llvm.dbg.value(metadata i32 0, metadata !1542, metadata !DIExpression()) #32, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %33, metadata !1543, metadata !DIExpression()) #32, !dbg !2153
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2155
  %34 = load i64, i64* %5, align 8, !dbg !2156, !tbaa !2054
  call void @llvm.dbg.value(metadata i64 %34, metadata !2116, metadata !DIExpression()), !dbg !2132
  %35 = trunc i64 %34 to i32, !dbg !2156
  store i32 %35, i32* @nslots, align 4, !dbg !2157, !tbaa !594
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2158
  br label %36, !dbg !2159

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2122
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2111, metadata !DIExpression()), !dbg !2122
  %38 = zext i32 %0 to i64, !dbg !2160
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2161
  %40 = load i64, i64* %39, align 8, !dbg !2161, !tbaa !2082
  call void @llvm.dbg.value(metadata i64 %40, metadata !2117, metadata !DIExpression()), !dbg !2162
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2163
  %42 = load i8*, i8** %41, align 8, !dbg !2163, !tbaa !2070
  call void @llvm.dbg.value(metadata i8* %42, metadata !2119, metadata !DIExpression()), !dbg !2162
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2164
  %44 = load i32, i32* %43, align 4, !dbg !2164, !tbaa !1387
  %45 = or i32 %44, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %45, metadata !2120, metadata !DIExpression()), !dbg !2162
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2166
  %47 = load i32, i32* %46, align 8, !dbg !2166, !tbaa !1336
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2167
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2168
  %50 = load i8*, i8** %49, align 8, !dbg !2168, !tbaa !1409
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2169
  %52 = load i8*, i8** %51, align 8, !dbg !2169, !tbaa !1412
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %53, metadata !2121, metadata !DIExpression()), !dbg !2162
  %54 = icmp ugt i64 %40, %53, !dbg !2171
  br i1 %54, label %65, label %55, !dbg !2173

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %56, metadata !2117, metadata !DIExpression()), !dbg !2162
  store i64 %56, i64* %39, align 8, !dbg !2176, !tbaa !2082
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2177
  br i1 %57, label %59, label %58, !dbg !2179

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2180
  br label %59, !dbg !2180

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %60, metadata !2119, metadata !DIExpression()), !dbg !2162
  store i8* %60, i8** %41, align 8, !dbg !2182, !tbaa !2070
  %61 = load i32, i32* %46, align 8, !dbg !2183, !tbaa !1336
  %62 = load i8*, i8** %49, align 8, !dbg !2184, !tbaa !1409
  %63 = load i8*, i8** %51, align 8, !dbg !2185, !tbaa !1412
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2186
  br label %65, !dbg !2187

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2162
  call void @llvm.dbg.value(metadata i8* %66, metadata !2119, metadata !DIExpression()), !dbg !2162
  store i32 %7, i32* %6, align 4, !dbg !2188, !tbaa !594
  ret i8* %66, !dbg !2189
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !2190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* %1, metadata !2195, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i64 %2, metadata !2196, metadata !DIExpression()), !dbg !2197
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2198
  ret i8* %4, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #13 !dbg !2200 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2202, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 0, metadata !2097, metadata !DIExpression()) #32, !dbg !2204
  call void @llvm.dbg.value(metadata i8* %0, metadata !2098, metadata !DIExpression()) #32, !dbg !2204
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2206
  ret i8* %2, !dbg !2207
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 !dbg !2208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i64 %1, metadata !2213, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 0, metadata !2194, metadata !DIExpression()) #32, !dbg !2215
  call void @llvm.dbg.value(metadata i8* %0, metadata !2195, metadata !DIExpression()) #32, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %1, metadata !2196, metadata !DIExpression()) #32, !dbg !2215
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2217
  ret i8* %3, !dbg !2218
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !2219 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2223, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 %1, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8* %2, metadata !2225, metadata !DIExpression()), !dbg !2227
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2228
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2226, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230), !dbg !2233
  call void @llvm.dbg.value(metadata i32 %1, metadata !2234, metadata !DIExpression()) #32, !dbg !2240
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2239, metadata !DIExpression()) #32, !dbg !2242
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2242, !alias.scope !2230
  %6 = icmp eq i32 %1, 10, !dbg !2243
  br i1 %6, label %7, label %8, !dbg !2245

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2246, !noalias !2230
  unreachable, !dbg !2246

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2247
  store i32 %1, i32* %9, align 8, !dbg !2248, !tbaa !1336, !alias.scope !2230
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2249
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2250
  ret i8* %10, !dbg !2251
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #13 !dbg !2252 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %1, metadata !2257, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8* %2, metadata !2258, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 %3, metadata !2259, metadata !DIExpression()), !dbg !2261
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2262
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2262
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2260, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1, metadata !2234, metadata !DIExpression()) #32, !dbg !2268
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2239, metadata !DIExpression()) #32, !dbg !2270
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2270, !alias.scope !2264
  %7 = icmp eq i32 %1, 10, !dbg !2271
  br i1 %7, label %8, label %9, !dbg !2272

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2273, !noalias !2264
  unreachable, !dbg !2273

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2274
  store i32 %1, i32* %10, align 8, !dbg !2275, !tbaa !1336, !alias.scope !2264
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2277
  ret i8* %11, !dbg !2278
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 !dbg !2279 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2283, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 0, metadata !2223, metadata !DIExpression()) #32, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()) #32, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %1, metadata !2225, metadata !DIExpression()) #32, !dbg !2286
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2288
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2288
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2226, metadata !DIExpression()) #32, !dbg !2289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2290) #32, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %0, metadata !2234, metadata !DIExpression()) #32, !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2239, metadata !DIExpression()) #32, !dbg !2296
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2296, !alias.scope !2290
  %5 = icmp eq i32 %0, 10, !dbg !2297
  br i1 %5, label %6, label %7, !dbg !2298

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2299, !noalias !2290
  unreachable, !dbg !2299

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2300
  store i32 %0, i32* %8, align 8, !dbg !2301, !tbaa !1336, !alias.scope !2290
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2302
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2303
  ret i8* %9, !dbg !2304
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !2305 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2309, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8* %1, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %2, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %0, metadata !2257, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %1, metadata !2258, metadata !DIExpression()) #32, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %2, metadata !2259, metadata !DIExpression()) #32, !dbg !2313
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2315
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2315
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2260, metadata !DIExpression()) #32, !dbg !2316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317) #32, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %0, metadata !2234, metadata !DIExpression()) #32, !dbg !2321
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2239, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2323, !alias.scope !2317
  %6 = icmp eq i32 %0, 10, !dbg !2324
  br i1 %6, label %7, label %8, !dbg !2325

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2326, !noalias !2317
  unreachable, !dbg !2326

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2327
  store i32 %0, i32* %9, align 8, !dbg !2328, !tbaa !1336, !alias.scope !2317
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2329
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2330
  ret i8* %10, !dbg !2331
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #13 !dbg !2332 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2336, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %1, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %2, metadata !2338, metadata !DIExpression()), !dbg !2340
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2341
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2341
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2339, metadata !DIExpression()), !dbg !2342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2343, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1354, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %2, metadata !1355, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 1, metadata !1356, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %2, metadata !1357, metadata !DIExpression()), !dbg !2345
  %6 = lshr i8 %2, 5, !dbg !2347
  %7 = zext i8 %6 to i64, !dbg !2347
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2348
  call void @llvm.dbg.value(metadata i32* %8, metadata !1358, metadata !DIExpression()), !dbg !2345
  %9 = and i8 %2, 31, !dbg !2349
  %10 = zext i8 %9 to i32, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %10, metadata !1360, metadata !DIExpression()), !dbg !2345
  %11 = load i32, i32* %8, align 4, !dbg !2350, !tbaa !594
  %12 = lshr i32 %11, %10, !dbg !2351
  %13 = and i32 %12, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %13, metadata !1361, metadata !DIExpression()), !dbg !2345
  %14 = xor i32 %13, 1, !dbg !2353
  %15 = shl i32 %14, %10, !dbg !2354
  %16 = xor i32 %15, %11, !dbg !2355
  store i32 %16, i32* %8, align 4, !dbg !2355, !tbaa !594
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2356
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2357
  ret i8* %17, !dbg !2358
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #13 !dbg !2359 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %1, metadata !2364, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8* %0, metadata !2336, metadata !DIExpression()) #32, !dbg !2366
  call void @llvm.dbg.value(metadata i64 -1, metadata !2337, metadata !DIExpression()) #32, !dbg !2366
  call void @llvm.dbg.value(metadata i8 %1, metadata !2338, metadata !DIExpression()) #32, !dbg !2366
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2368
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2368
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2339, metadata !DIExpression()) #32, !dbg !2369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2370, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1354, metadata !DIExpression()) #32, !dbg !2371
  call void @llvm.dbg.value(metadata i8 %1, metadata !1355, metadata !DIExpression()) #32, !dbg !2371
  call void @llvm.dbg.value(metadata i32 1, metadata !1356, metadata !DIExpression()) #32, !dbg !2371
  call void @llvm.dbg.value(metadata i8 %1, metadata !1357, metadata !DIExpression()) #32, !dbg !2371
  %5 = lshr i8 %1, 5, !dbg !2373
  %6 = zext i8 %5 to i64, !dbg !2373
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2374
  call void @llvm.dbg.value(metadata i32* %7, metadata !1358, metadata !DIExpression()) #32, !dbg !2371
  %8 = and i8 %1, 31, !dbg !2375
  %9 = zext i8 %8 to i32, !dbg !2375
  call void @llvm.dbg.value(metadata i32 %9, metadata !1360, metadata !DIExpression()) #32, !dbg !2371
  %10 = load i32, i32* %7, align 4, !dbg !2376, !tbaa !594
  %11 = lshr i32 %10, %9, !dbg !2377
  %12 = and i32 %11, 1, !dbg !2378
  call void @llvm.dbg.value(metadata i32 %12, metadata !1361, metadata !DIExpression()) #32, !dbg !2371
  %13 = xor i32 %12, 1, !dbg !2379
  %14 = shl i32 %13, %9, !dbg !2380
  %15 = xor i32 %14, %10, !dbg !2381
  store i32 %15, i32* %7, align 4, !dbg !2381, !tbaa !594
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2382
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2383
  ret i8* %16, !dbg !2384
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #13 !dbg !2385 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2387, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %0, metadata !2363, metadata !DIExpression()) #32, !dbg !2389
  call void @llvm.dbg.value(metadata i8 58, metadata !2364, metadata !DIExpression()) #32, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %0, metadata !2336, metadata !DIExpression()) #32, !dbg !2391
  call void @llvm.dbg.value(metadata i64 -1, metadata !2337, metadata !DIExpression()) #32, !dbg !2391
  call void @llvm.dbg.value(metadata i8 58, metadata !2338, metadata !DIExpression()) #32, !dbg !2391
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2393
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2393
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2339, metadata !DIExpression()) #32, !dbg !2394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2395, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1354, metadata !DIExpression()) #32, !dbg !2396
  call void @llvm.dbg.value(metadata i8 58, metadata !1355, metadata !DIExpression()) #32, !dbg !2396
  call void @llvm.dbg.value(metadata i32 1, metadata !1356, metadata !DIExpression()) #32, !dbg !2396
  call void @llvm.dbg.value(metadata i8 58, metadata !1357, metadata !DIExpression()) #32, !dbg !2396
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2398
  call void @llvm.dbg.value(metadata i32* %4, metadata !1358, metadata !DIExpression()) #32, !dbg !2396
  call void @llvm.dbg.value(metadata i32 26, metadata !1360, metadata !DIExpression()) #32, !dbg !2396
  %5 = load i32, i32* %4, align 4, !dbg !2399, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %5, metadata !1361, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2396
  %6 = or i32 %5, 67108864, !dbg !2400
  store i32 %6, i32* %4, align 4, !dbg !2400, !tbaa !594
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2401
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2402
  ret i8* %7, !dbg !2403
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 !dbg !2404 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2406, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %1, metadata !2407, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* %0, metadata !2336, metadata !DIExpression()) #32, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %1, metadata !2337, metadata !DIExpression()) #32, !dbg !2409
  call void @llvm.dbg.value(metadata i8 58, metadata !2338, metadata !DIExpression()) #32, !dbg !2409
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2411
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2339, metadata !DIExpression()) #32, !dbg !2412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2413, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1354, metadata !DIExpression()) #32, !dbg !2414
  call void @llvm.dbg.value(metadata i8 58, metadata !1355, metadata !DIExpression()) #32, !dbg !2414
  call void @llvm.dbg.value(metadata i32 1, metadata !1356, metadata !DIExpression()) #32, !dbg !2414
  call void @llvm.dbg.value(metadata i8 58, metadata !1357, metadata !DIExpression()) #32, !dbg !2414
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2416
  call void @llvm.dbg.value(metadata i32* %5, metadata !1358, metadata !DIExpression()) #32, !dbg !2414
  call void @llvm.dbg.value(metadata i32 26, metadata !1360, metadata !DIExpression()) #32, !dbg !2414
  %6 = load i32, i32* %5, align 4, !dbg !2417, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %6, metadata !1361, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2414
  %7 = or i32 %6, 67108864, !dbg !2418
  store i32 %7, i32* %5, align 4, !dbg !2418, !tbaa !594
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2420
  ret i8* %8, !dbg !2421
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !2422 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2424, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %2, metadata !2426, metadata !DIExpression()), !dbg !2428
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2429
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2429
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2427, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %1, metadata !2234, metadata !DIExpression()) #32, !dbg !2431
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2431
  %6 = icmp eq i32 %1, 10, !dbg !2433
  br i1 %6, label %7, label %8, !dbg !2434

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2435, !noalias !2436
  unreachable, !dbg !2435

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2431
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2439
  store i32 %1, i32* %9, align 8, !dbg !2439, !tbaa.struct !2344
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2439
  %11 = bitcast i32* %10 to i8*, !dbg !2439
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1354, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 58, metadata !1355, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 1, metadata !1356, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 58, metadata !1357, metadata !DIExpression()), !dbg !2440
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2442
  call void @llvm.dbg.value(metadata i32* %12, metadata !1358, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 26, metadata !1360, metadata !DIExpression()), !dbg !2440
  %13 = load i32, i32* %12, align 4, !dbg !2443, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %13, metadata !1361, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2440
  %14 = or i32 %13, 67108864, !dbg !2444
  store i32 %14, i32* %12, align 4, !dbg !2444, !tbaa !594
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2445
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2446
  ret i8* %15, !dbg !2447
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #13 !dbg !2448 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2452, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !2453, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %2, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %3, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %0, metadata !2457, metadata !DIExpression()) #32, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %1, metadata !2462, metadata !DIExpression()) #32, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %2, metadata !2463, metadata !DIExpression()) #32, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %3, metadata !2464, metadata !DIExpression()) #32, !dbg !2467
  call void @llvm.dbg.value(metadata i64 -1, metadata !2465, metadata !DIExpression()) #32, !dbg !2467
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2469
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2469
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2466, metadata !DIExpression()) #32, !dbg !2470
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2471, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1394, metadata !DIExpression()) #32, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %1, metadata !1395, metadata !DIExpression()) #32, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %2, metadata !1396, metadata !DIExpression()) #32, !dbg !2472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1394, metadata !DIExpression()) #32, !dbg !2472
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2474
  store i32 10, i32* %7, align 8, !dbg !2475, !tbaa !1336
  %8 = icmp ne i8* %1, null, !dbg !2476
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2477
  br i1 %10, label %12, label %11, !dbg !2477

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2478
  unreachable, !dbg !2478

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2479
  store i8* %1, i8** %13, align 8, !dbg !2480, !tbaa !1409
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2481
  store i8* %2, i8** %14, align 8, !dbg !2482, !tbaa !1412
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2484
  ret i8* %15, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #13 !dbg !2458 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %1, metadata !2462, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %2, metadata !2463, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %3, metadata !2464, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %4, metadata !2465, metadata !DIExpression()), !dbg !2486
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2466, metadata !DIExpression()), !dbg !2488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2489, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1394, metadata !DIExpression()) #32, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %1, metadata !1395, metadata !DIExpression()) #32, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %2, metadata !1396, metadata !DIExpression()) #32, !dbg !2490
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1394, metadata !DIExpression()) #32, !dbg !2490
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2492
  store i32 10, i32* %8, align 8, !dbg !2493, !tbaa !1336
  %9 = icmp ne i8* %1, null, !dbg !2494
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2495
  br i1 %11, label %13, label %12, !dbg !2495

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2496
  unreachable, !dbg !2496

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2497
  store i8* %1, i8** %14, align 8, !dbg !2498, !tbaa !1409
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2499
  store i8* %2, i8** %15, align 8, !dbg !2500, !tbaa !1412
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2501
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2502
  ret i8* %16, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #13 !dbg !2504 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %2, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !2452, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i8* %0, metadata !2453, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i8* %1, metadata !2454, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i8* %2, metadata !2455, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()) #32, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %0, metadata !2462, metadata !DIExpression()) #32, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %1, metadata !2463, metadata !DIExpression()) #32, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %2, metadata !2464, metadata !DIExpression()) #32, !dbg !2514
  call void @llvm.dbg.value(metadata i64 -1, metadata !2465, metadata !DIExpression()) #32, !dbg !2514
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2466, metadata !DIExpression()) #32, !dbg !2517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2518, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1394, metadata !DIExpression()) #32, !dbg !2519
  call void @llvm.dbg.value(metadata i8* %0, metadata !1395, metadata !DIExpression()) #32, !dbg !2519
  call void @llvm.dbg.value(metadata i8* %1, metadata !1396, metadata !DIExpression()) #32, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1394, metadata !DIExpression()) #32, !dbg !2519
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2521
  store i32 10, i32* %6, align 8, !dbg !2522, !tbaa !1336
  %7 = icmp ne i8* %0, null, !dbg !2523
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2524
  br i1 %9, label %11, label %10, !dbg !2524

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2525
  unreachable, !dbg !2525

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2526
  store i8* %0, i8** %12, align 8, !dbg !2527, !tbaa !1409
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2528
  store i8* %1, i8** %13, align 8, !dbg !2529, !tbaa !1412
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2530
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2531
  ret i8* %14, !dbg !2532
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #13 !dbg !2533 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %1, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %2, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %3, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %0, metadata !2462, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %1, metadata !2463, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %2, metadata !2464, metadata !DIExpression()) #32, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %3, metadata !2465, metadata !DIExpression()) #32, !dbg !2542
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2544
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2466, metadata !DIExpression()) #32, !dbg !2545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2546, !tbaa.struct !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1394, metadata !DIExpression()) #32, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %0, metadata !1395, metadata !DIExpression()) #32, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !1396, metadata !DIExpression()) #32, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1394, metadata !DIExpression()) #32, !dbg !2547
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2549
  store i32 10, i32* %7, align 8, !dbg !2550, !tbaa !1336
  %8 = icmp ne i8* %0, null, !dbg !2551
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2552
  br i1 %10, label %12, label %11, !dbg !2552

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2553
  unreachable, !dbg !2553

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2554
  store i8* %0, i8** %13, align 8, !dbg !2555, !tbaa !1409
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2556
  store i8* %1, i8** %14, align 8, !dbg !2557, !tbaa !1412
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2558
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2559
  ret i8* %15, !dbg !2560
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !2561 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2565, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %1, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %2, metadata !2567, metadata !DIExpression()), !dbg !2568
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2569
  ret i8* %4, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 !dbg !2571 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2565, metadata !DIExpression()) #32, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #32, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()) #32, !dbg !2578
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2580
  ret i8* %3, !dbg !2581
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 !dbg !2582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %0, metadata !2565, metadata !DIExpression()) #32, !dbg !2589
  call void @llvm.dbg.value(metadata i8* %1, metadata !2566, metadata !DIExpression()) #32, !dbg !2589
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #32, !dbg !2589
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2591
  ret i8* %3, !dbg !2592
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #13 !dbg !2593 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 0, metadata !2586, metadata !DIExpression()) #32, !dbg !2599
  call void @llvm.dbg.value(metadata i8* %0, metadata !2587, metadata !DIExpression()) #32, !dbg !2599
  call void @llvm.dbg.value(metadata i32 0, metadata !2565, metadata !DIExpression()) #32, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #32, !dbg !2601
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #32, !dbg !2601
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2603
  ret i8* %2, !dbg !2604
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #13 !dbg !2605 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2644, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2645, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %2, metadata !2646, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %3, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8** %4, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %5, metadata !2649, metadata !DIExpression()), !dbg !2650
  %7 = icmp eq i8* %1, null, !dbg !2651
  br i1 %7, label %10, label %8, !dbg !2653

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2654
  br label %12, !dbg !2654

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.120, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2655
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.122, i64 0, i64 0), i32 noundef 5) #32, !dbg !2656
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2656
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.123, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2657
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.124, i64 0, i64 0), i32 noundef 5) #32, !dbg !2658
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.125, i64 0, i64 0)) #32, !dbg !2658
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.123, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2659
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
  ], !dbg !2660

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.126, i64 0, i64 0), i32 noundef 5) #32, !dbg !2661
  %21 = load i8*, i8** %4, align 8, !dbg !2661, !tbaa !488
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2661
  br label %147, !dbg !2663

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.127, i64 0, i64 0), i32 noundef 5) #32, !dbg !2664
  %25 = load i8*, i8** %4, align 8, !dbg !2664, !tbaa !488
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2664
  %27 = load i8*, i8** %26, align 8, !dbg !2664, !tbaa !488
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2664
  br label %147, !dbg !2665

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.128, i64 0, i64 0), i32 noundef 5) #32, !dbg !2666
  %31 = load i8*, i8** %4, align 8, !dbg !2666, !tbaa !488
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2666
  %33 = load i8*, i8** %32, align 8, !dbg !2666, !tbaa !488
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2666
  %35 = load i8*, i8** %34, align 8, !dbg !2666, !tbaa !488
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2666
  br label %147, !dbg !2667

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.129, i64 0, i64 0), i32 noundef 5) #32, !dbg !2668
  %39 = load i8*, i8** %4, align 8, !dbg !2668, !tbaa !488
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2668
  %41 = load i8*, i8** %40, align 8, !dbg !2668, !tbaa !488
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2668
  %43 = load i8*, i8** %42, align 8, !dbg !2668, !tbaa !488
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2668
  %45 = load i8*, i8** %44, align 8, !dbg !2668, !tbaa !488
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2668
  br label %147, !dbg !2669

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.130, i64 0, i64 0), i32 noundef 5) #32, !dbg !2670
  %49 = load i8*, i8** %4, align 8, !dbg !2670, !tbaa !488
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2670
  %51 = load i8*, i8** %50, align 8, !dbg !2670, !tbaa !488
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2670
  %53 = load i8*, i8** %52, align 8, !dbg !2670, !tbaa !488
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2670
  %55 = load i8*, i8** %54, align 8, !dbg !2670, !tbaa !488
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2670
  %57 = load i8*, i8** %56, align 8, !dbg !2670, !tbaa !488
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2670
  br label %147, !dbg !2671

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.131, i64 0, i64 0), i32 noundef 5) #32, !dbg !2672
  %61 = load i8*, i8** %4, align 8, !dbg !2672, !tbaa !488
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2672
  %63 = load i8*, i8** %62, align 8, !dbg !2672, !tbaa !488
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2672
  %65 = load i8*, i8** %64, align 8, !dbg !2672, !tbaa !488
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2672
  %67 = load i8*, i8** %66, align 8, !dbg !2672, !tbaa !488
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2672
  %69 = load i8*, i8** %68, align 8, !dbg !2672, !tbaa !488
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2672
  %71 = load i8*, i8** %70, align 8, !dbg !2672, !tbaa !488
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2672
  br label %147, !dbg !2673

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.132, i64 0, i64 0), i32 noundef 5) #32, !dbg !2674
  %75 = load i8*, i8** %4, align 8, !dbg !2674, !tbaa !488
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2674
  %77 = load i8*, i8** %76, align 8, !dbg !2674, !tbaa !488
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2674
  %79 = load i8*, i8** %78, align 8, !dbg !2674, !tbaa !488
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2674
  %81 = load i8*, i8** %80, align 8, !dbg !2674, !tbaa !488
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2674
  %83 = load i8*, i8** %82, align 8, !dbg !2674, !tbaa !488
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2674
  %85 = load i8*, i8** %84, align 8, !dbg !2674, !tbaa !488
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2674
  %87 = load i8*, i8** %86, align 8, !dbg !2674, !tbaa !488
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2674
  br label %147, !dbg !2675

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.133, i64 0, i64 0), i32 noundef 5) #32, !dbg !2676
  %91 = load i8*, i8** %4, align 8, !dbg !2676, !tbaa !488
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2676
  %93 = load i8*, i8** %92, align 8, !dbg !2676, !tbaa !488
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2676
  %95 = load i8*, i8** %94, align 8, !dbg !2676, !tbaa !488
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2676
  %97 = load i8*, i8** %96, align 8, !dbg !2676, !tbaa !488
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2676
  %99 = load i8*, i8** %98, align 8, !dbg !2676, !tbaa !488
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2676
  %101 = load i8*, i8** %100, align 8, !dbg !2676, !tbaa !488
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2676
  %103 = load i8*, i8** %102, align 8, !dbg !2676, !tbaa !488
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2676
  %105 = load i8*, i8** %104, align 8, !dbg !2676, !tbaa !488
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2676
  br label %147, !dbg !2677

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.134, i64 0, i64 0), i32 noundef 5) #32, !dbg !2678
  %109 = load i8*, i8** %4, align 8, !dbg !2678, !tbaa !488
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2678
  %111 = load i8*, i8** %110, align 8, !dbg !2678, !tbaa !488
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2678
  %113 = load i8*, i8** %112, align 8, !dbg !2678, !tbaa !488
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2678
  %115 = load i8*, i8** %114, align 8, !dbg !2678, !tbaa !488
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2678
  %117 = load i8*, i8** %116, align 8, !dbg !2678, !tbaa !488
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2678
  %119 = load i8*, i8** %118, align 8, !dbg !2678, !tbaa !488
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2678
  %121 = load i8*, i8** %120, align 8, !dbg !2678, !tbaa !488
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2678
  %123 = load i8*, i8** %122, align 8, !dbg !2678, !tbaa !488
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2678
  %125 = load i8*, i8** %124, align 8, !dbg !2678, !tbaa !488
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2678
  br label %147, !dbg !2679

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.135, i64 0, i64 0), i32 noundef 5) #32, !dbg !2680
  %129 = load i8*, i8** %4, align 8, !dbg !2680, !tbaa !488
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2680
  %131 = load i8*, i8** %130, align 8, !dbg !2680, !tbaa !488
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2680
  %133 = load i8*, i8** %132, align 8, !dbg !2680, !tbaa !488
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2680
  %135 = load i8*, i8** %134, align 8, !dbg !2680, !tbaa !488
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2680
  %137 = load i8*, i8** %136, align 8, !dbg !2680, !tbaa !488
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2680
  %139 = load i8*, i8** %138, align 8, !dbg !2680, !tbaa !488
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2680
  %141 = load i8*, i8** %140, align 8, !dbg !2680, !tbaa !488
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2680
  %143 = load i8*, i8** %142, align 8, !dbg !2680, !tbaa !488
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2680
  %145 = load i8*, i8** %144, align 8, !dbg !2680, !tbaa !488
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2680
  br label %147, !dbg !2681

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2682
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #13 !dbg !2683 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2687, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %1, metadata !2688, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %2, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8** %4, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 0, metadata !2692, metadata !DIExpression()), !dbg !2693
  br label %6, !dbg !2694

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2696
  call void @llvm.dbg.value(metadata i64 %7, metadata !2692, metadata !DIExpression()), !dbg !2693
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2697
  %9 = load i8*, i8** %8, align 8, !dbg !2697, !tbaa !488
  %10 = icmp eq i8* %9, null, !dbg !2699
  %11 = add i64 %7, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %11, metadata !2692, metadata !DIExpression()), !dbg !2693
  br i1 %10, label %12, label %6, !dbg !2699, !llvm.loop !2701

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2703
  ret void, !dbg !2704
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #13 !dbg !2705 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2720, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %1, metadata !2721, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %2, metadata !2722, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %3, metadata !2723, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2724, metadata !DIExpression()), !dbg !2729
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2730
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2726, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 0, metadata !2725, metadata !DIExpression()), !dbg !2728
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2725, metadata !DIExpression()), !dbg !2728
  %11 = load i32, i32* %8, align 8, !dbg !2732
  %12 = icmp sgt i32 %11, -1, !dbg !2732
  br i1 %12, label %20, label %13, !dbg !2732

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2732
  store i32 %14, i32* %8, align 8, !dbg !2732
  %15 = icmp ult i32 %11, -7, !dbg !2732
  br i1 %15, label %16, label %20, !dbg !2732

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2732
  %18 = sext i32 %11 to i64, !dbg !2732
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2732
  br label %24, !dbg !2732

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2732
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2732
  store i8* %23, i8** %10, align 8, !dbg !2732
  br label %24, !dbg !2732

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2732
  %28 = load i8*, i8** %27, align 8, !dbg !2732
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2735
  store i8* %28, i8** %29, align 8, !dbg !2736, !tbaa !488
  %30 = icmp eq i8* %28, null, !dbg !2737
  br i1 %30, label %210, label %31, !dbg !2738

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 1, metadata !2725, metadata !DIExpression()), !dbg !2728
  %32 = icmp sgt i32 %25, -1, !dbg !2732
  br i1 %32, label %40, label %33, !dbg !2732

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2732
  store i32 %34, i32* %8, align 8, !dbg !2732
  %35 = icmp ult i32 %25, -7, !dbg !2732
  br i1 %35, label %36, label %40, !dbg !2732

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2732
  %38 = sext i32 %25 to i64, !dbg !2732
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2732
  br label %44, !dbg !2732

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2732
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2732
  store i8* %43, i8** %10, align 8, !dbg !2732
  br label %44, !dbg !2732

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2732
  %48 = load i8*, i8** %47, align 8, !dbg !2732
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2735
  store i8* %48, i8** %49, align 8, !dbg !2736, !tbaa !488
  %50 = icmp eq i8* %48, null, !dbg !2737
  br i1 %50, label %210, label %51, !dbg !2738

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 2, metadata !2725, metadata !DIExpression()), !dbg !2728
  %52 = icmp sgt i32 %45, -1, !dbg !2732
  br i1 %52, label %60, label %53, !dbg !2732

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2732
  store i32 %54, i32* %8, align 8, !dbg !2732
  %55 = icmp ult i32 %45, -7, !dbg !2732
  br i1 %55, label %56, label %60, !dbg !2732

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2732
  %58 = sext i32 %45 to i64, !dbg !2732
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2732
  br label %64, !dbg !2732

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2732
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2732
  store i8* %63, i8** %10, align 8, !dbg !2732
  br label %64, !dbg !2732

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2732
  %68 = load i8*, i8** %67, align 8, !dbg !2732
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2735
  store i8* %68, i8** %69, align 8, !dbg !2736, !tbaa !488
  %70 = icmp eq i8* %68, null, !dbg !2737
  br i1 %70, label %210, label %71, !dbg !2738

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 3, metadata !2725, metadata !DIExpression()), !dbg !2728
  %72 = icmp sgt i32 %65, -1, !dbg !2732
  br i1 %72, label %80, label %73, !dbg !2732

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2732
  store i32 %74, i32* %8, align 8, !dbg !2732
  %75 = icmp ult i32 %65, -7, !dbg !2732
  br i1 %75, label %76, label %80, !dbg !2732

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2732
  %78 = sext i32 %65 to i64, !dbg !2732
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2732
  br label %84, !dbg !2732

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2732
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2732
  store i8* %83, i8** %10, align 8, !dbg !2732
  br label %84, !dbg !2732

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2732
  %88 = load i8*, i8** %87, align 8, !dbg !2732
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2735
  store i8* %88, i8** %89, align 8, !dbg !2736, !tbaa !488
  %90 = icmp eq i8* %88, null, !dbg !2737
  br i1 %90, label %210, label %91, !dbg !2738

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 4, metadata !2725, metadata !DIExpression()), !dbg !2728
  %92 = icmp sgt i32 %85, -1, !dbg !2732
  br i1 %92, label %100, label %93, !dbg !2732

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2732
  store i32 %94, i32* %8, align 8, !dbg !2732
  %95 = icmp ult i32 %85, -7, !dbg !2732
  br i1 %95, label %96, label %100, !dbg !2732

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2732
  %98 = sext i32 %85 to i64, !dbg !2732
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2732
  br label %104, !dbg !2732

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2732
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2732
  store i8* %103, i8** %10, align 8, !dbg !2732
  br label %104, !dbg !2732

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2732
  %108 = load i8*, i8** %107, align 8, !dbg !2732
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2735
  store i8* %108, i8** %109, align 8, !dbg !2736, !tbaa !488
  %110 = icmp eq i8* %108, null, !dbg !2737
  br i1 %110, label %210, label %111, !dbg !2738

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 5, metadata !2725, metadata !DIExpression()), !dbg !2728
  %112 = icmp sgt i32 %105, -1, !dbg !2732
  br i1 %112, label %120, label %113, !dbg !2732

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2732
  store i32 %114, i32* %8, align 8, !dbg !2732
  %115 = icmp ult i32 %105, -7, !dbg !2732
  br i1 %115, label %116, label %120, !dbg !2732

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2732
  %118 = sext i32 %105 to i64, !dbg !2732
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2732
  br label %124, !dbg !2732

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2732
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2732
  store i8* %123, i8** %10, align 8, !dbg !2732
  br label %124, !dbg !2732

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2732
  %128 = load i8*, i8** %127, align 8, !dbg !2732
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2735
  store i8* %128, i8** %129, align 8, !dbg !2736, !tbaa !488
  %130 = icmp eq i8* %128, null, !dbg !2737
  br i1 %130, label %210, label %131, !dbg !2738

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 6, metadata !2725, metadata !DIExpression()), !dbg !2728
  %132 = icmp sgt i32 %125, -1, !dbg !2732
  br i1 %132, label %140, label %133, !dbg !2732

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2732
  store i32 %134, i32* %8, align 8, !dbg !2732
  %135 = icmp ult i32 %125, -7, !dbg !2732
  br i1 %135, label %136, label %140, !dbg !2732

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2732
  %138 = sext i32 %125 to i64, !dbg !2732
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2732
  br label %144, !dbg !2732

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2732
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2732
  store i8* %143, i8** %10, align 8, !dbg !2732
  br label %144, !dbg !2732

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2732
  %148 = load i8*, i8** %147, align 8, !dbg !2732
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2735
  store i8* %148, i8** %149, align 8, !dbg !2736, !tbaa !488
  %150 = icmp eq i8* %148, null, !dbg !2737
  br i1 %150, label %210, label %151, !dbg !2738

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 7, metadata !2725, metadata !DIExpression()), !dbg !2728
  %152 = icmp sgt i32 %145, -1, !dbg !2732
  br i1 %152, label %160, label %153, !dbg !2732

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2732
  store i32 %154, i32* %8, align 8, !dbg !2732
  %155 = icmp ult i32 %145, -7, !dbg !2732
  br i1 %155, label %156, label %160, !dbg !2732

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2732
  %158 = sext i32 %145 to i64, !dbg !2732
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2732
  br label %164, !dbg !2732

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2732
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2732
  store i8* %163, i8** %10, align 8, !dbg !2732
  br label %164, !dbg !2732

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2732
  %168 = load i8*, i8** %167, align 8, !dbg !2732
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2735
  store i8* %168, i8** %169, align 8, !dbg !2736, !tbaa !488
  %170 = icmp eq i8* %168, null, !dbg !2737
  br i1 %170, label %210, label %171, !dbg !2738

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 8, metadata !2725, metadata !DIExpression()), !dbg !2728
  %172 = icmp sgt i32 %165, -1, !dbg !2732
  br i1 %172, label %180, label %173, !dbg !2732

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2732
  store i32 %174, i32* %8, align 8, !dbg !2732
  %175 = icmp ult i32 %165, -7, !dbg !2732
  br i1 %175, label %176, label %180, !dbg !2732

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2732
  %178 = sext i32 %165 to i64, !dbg !2732
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2732
  br label %184, !dbg !2732

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2732
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2732
  store i8* %183, i8** %10, align 8, !dbg !2732
  br label %184, !dbg !2732

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2732
  %188 = load i8*, i8** %187, align 8, !dbg !2732
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2735
  store i8* %188, i8** %189, align 8, !dbg !2736, !tbaa !488
  %190 = icmp eq i8* %188, null, !dbg !2737
  br i1 %190, label %210, label %191, !dbg !2738

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 9, metadata !2725, metadata !DIExpression()), !dbg !2728
  %192 = icmp sgt i32 %185, -1, !dbg !2732
  br i1 %192, label %200, label %193, !dbg !2732

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2732
  store i32 %194, i32* %8, align 8, !dbg !2732
  %195 = icmp ult i32 %185, -7, !dbg !2732
  br i1 %195, label %196, label %200, !dbg !2732

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2732
  %198 = sext i32 %185 to i64, !dbg !2732
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2732
  br label %203, !dbg !2732

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2732
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2732
  store i8* %202, i8** %10, align 8, !dbg !2732
  br label %203, !dbg !2732

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2732
  %206 = load i8*, i8** %205, align 8, !dbg !2732
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2735
  store i8* %206, i8** %207, align 8, !dbg !2736, !tbaa !488
  %208 = icmp eq i8* %206, null, !dbg !2737
  %209 = select i1 %208, i64 9, i64 10, !dbg !2738
  br label %210, !dbg !2738

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2739
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2740
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2741
  ret void, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #13 !dbg !2742 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2746, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %1, metadata !2747, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %2, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %3, metadata !2749, metadata !DIExpression()), !dbg !2751
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2752
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2752
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2750, metadata !DIExpression()), !dbg !2753
  call void @llvm.va_start(i8* nonnull %7), !dbg !2754
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2755
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2755, !tbaa.struct !1042
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2755
  call void @llvm.va_end(i8* nonnull %7), !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2757
  ret void, !dbg !2757
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #13 !dbg !2758 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2759, !tbaa !488
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.123, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2759
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.140, i64 0, i64 0), i32 noundef 5) #32, !dbg !2760
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.141, i64 0, i64 0)) #32, !dbg !2760
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.142, i64 0, i64 0), i32 noundef 5) #32, !dbg !2761
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.144, i64 0, i64 0)) #32, !dbg !2761
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !2762
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2762
  ret void, !dbg !2763
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %1, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %2, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()) #32, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %1, metadata !2776, metadata !DIExpression()) #32, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %2, metadata !2777, metadata !DIExpression()) #32, !dbg !2778
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2780
  call void @llvm.dbg.value(metadata i8* %4, metadata !2781, metadata !DIExpression()) #32, !dbg !2786
  %5 = icmp eq i8* %4, null, !dbg !2788
  br i1 %5, label %6, label %7, !dbg !2790

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2791
  unreachable, !dbg !2791

7:                                                ; preds = %3
  ret i8* %4, !dbg !2792
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2774 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %1, metadata !2776, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %2, metadata !2777, metadata !DIExpression()), !dbg !2793
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %4, metadata !2781, metadata !DIExpression()) #32, !dbg !2795
  %5 = icmp eq i8* %4, null, !dbg !2797
  br i1 %5, label %6, label %7, !dbg !2798

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2799
  unreachable, !dbg !2799

7:                                                ; preds = %3
  ret i8* %4, !dbg !2800
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2801 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2805, metadata !DIExpression()), !dbg !2806
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()) #32, !dbg !2808
  %3 = icmp eq i8* %2, null, !dbg !2810
  br i1 %3, label %4, label %5, !dbg !2811

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2812
  unreachable, !dbg !2812

5:                                                ; preds = %1
  ret i8* %2, !dbg !2813
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2814 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 %0, metadata !2820, metadata !DIExpression()) #32, !dbg !2824
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2826
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()) #32, !dbg !2827
  %3 = icmp eq i8* %2, null, !dbg !2829
  br i1 %3, label %4, label %5, !dbg !2830

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2831
  unreachable, !dbg !2831

5:                                                ; preds = %1
  ret i8* %2, !dbg !2832
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2833 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %0, metadata !2805, metadata !DIExpression()) #32, !dbg !2839
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()) #32, !dbg !2842
  %3 = icmp eq i8* %2, null, !dbg !2844
  br i1 %3, label %4, label %5, !dbg !2845

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2846
  unreachable, !dbg !2846

5:                                                ; preds = %1
  ret i8* %2, !dbg !2847
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #32, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %1, metadata !2859, metadata !DIExpression()) #32, !dbg !2860
  %3 = icmp eq i64 %1, 0, !dbg !2862
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2862
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2863
  call void @llvm.dbg.value(metadata i8* %5, metadata !2781, metadata !DIExpression()) #32, !dbg !2864
  %6 = icmp eq i8* %5, null, !dbg !2866
  br i1 %6, label %7, label %8, !dbg !2867

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2868
  unreachable, !dbg !2868

8:                                                ; preds = %2
  ret i8* %5, !dbg !2869
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %0, metadata !2877, metadata !DIExpression()) #32, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %1, metadata !2880, metadata !DIExpression()) #32, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #32, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %1, metadata !2859, metadata !DIExpression()) #32, !dbg !2883
  %3 = icmp eq i64 %1, 0, !dbg !2885
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2885
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %5, metadata !2781, metadata !DIExpression()) #32, !dbg !2887
  %6 = icmp eq i8* %5, null, !dbg !2889
  br i1 %6, label %7, label %8, !dbg !2890

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2891
  unreachable, !dbg !2891

8:                                                ; preds = %2
  ret i8* %5, !dbg !2892
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2893 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %2, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()) #32, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2904, metadata !DIExpression()) #32, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %2, metadata !2905, metadata !DIExpression()) #32, !dbg !2906
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %4, metadata !2781, metadata !DIExpression()) #32, !dbg !2909
  %5 = icmp eq i8* %4, null, !dbg !2911
  br i1 %5, label %6, label %7, !dbg !2912

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2913
  unreachable, !dbg !2913

7:                                                ; preds = %3
  ret i8* %4, !dbg !2914
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2915 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %1, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* null, metadata !2773, metadata !DIExpression()) #32, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %0, metadata !2776, metadata !DIExpression()) #32, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %1, metadata !2777, metadata !DIExpression()) #32, !dbg !2922
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2924
  call void @llvm.dbg.value(metadata i8* %3, metadata !2781, metadata !DIExpression()) #32, !dbg !2925
  %4 = icmp eq i8* %3, null, !dbg !2927
  br i1 %4, label %5, label %6, !dbg !2928

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2929
  unreachable, !dbg !2929

6:                                                ; preds = %2
  ret i8* %3, !dbg !2930
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* null, metadata !2897, metadata !DIExpression()) #32, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %0, metadata !2898, metadata !DIExpression()) #32, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()) #32, !dbg !2938
  call void @llvm.dbg.value(metadata i8* null, metadata !2901, metadata !DIExpression()) #32, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %0, metadata !2904, metadata !DIExpression()) #32, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()) #32, !dbg !2940
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %3, metadata !2781, metadata !DIExpression()) #32, !dbg !2943
  %4 = icmp eq i8* %3, null, !dbg !2945
  br i1 %4, label %5, label %6, !dbg !2946

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2947
  unreachable, !dbg !2947

6:                                                ; preds = %2
  ret i8* %3, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #13 !dbg !2949 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64* %1, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %0, metadata !421, metadata !DIExpression()) #32, !dbg !2956
  call void @llvm.dbg.value(metadata i64* %1, metadata !422, metadata !DIExpression()) #32, !dbg !2956
  call void @llvm.dbg.value(metadata i64 1, metadata !423, metadata !DIExpression()) #32, !dbg !2956
  %3 = load i64, i64* %1, align 8, !dbg !2958, !tbaa !2054
  call void @llvm.dbg.value(metadata i64 %3, metadata !424, metadata !DIExpression()) #32, !dbg !2956
  %4 = icmp eq i8* %0, null, !dbg !2959
  br i1 %4, label %5, label %8, !dbg !2961

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2962
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2965
  br label %15, !dbg !2965

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2966
  %10 = add nuw i64 %9, 1, !dbg !2966
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2966
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2966
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %13, metadata !424, metadata !DIExpression()) #32, !dbg !2956
  br i1 %12, label %14, label %15, !dbg !2969

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2970
  unreachable, !dbg !2970

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2956
  call void @llvm.dbg.value(metadata i64 %16, metadata !424, metadata !DIExpression()) #32, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()) #32, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %16, metadata !2776, metadata !DIExpression()) #32, !dbg !2971
  call void @llvm.dbg.value(metadata i64 1, metadata !2777, metadata !DIExpression()) #32, !dbg !2971
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %17, metadata !2781, metadata !DIExpression()) #32, !dbg !2974
  %18 = icmp eq i8* %17, null, !dbg !2976
  br i1 %18, label %19, label %20, !dbg !2977

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2978
  unreachable, !dbg !2978

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !421, metadata !DIExpression()) #32, !dbg !2956
  store i64 %16, i64* %1, align 8, !dbg !2979, !tbaa !2054
  ret i8* %17, !dbg !2980
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #13 !dbg !416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !421, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64* %1, metadata !422, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %2, metadata !423, metadata !DIExpression()), !dbg !2981
  %4 = load i64, i64* %1, align 8, !dbg !2982, !tbaa !2054
  call void @llvm.dbg.value(metadata i64 %4, metadata !424, metadata !DIExpression()), !dbg !2981
  %5 = icmp eq i8* %0, null, !dbg !2983
  br i1 %5, label %6, label %13, !dbg !2984

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2985
  br i1 %7, label %8, label %20, !dbg !2986

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %9, metadata !424, metadata !DIExpression()), !dbg !2981
  %10 = icmp ugt i64 %2, 128, !dbg !2989
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %12, metadata !424, metadata !DIExpression()), !dbg !2981
  br label %20, !dbg !2991

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2992
  %15 = add nuw i64 %14, 1, !dbg !2992
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2992
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2992
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %18, metadata !424, metadata !DIExpression()), !dbg !2981
  br i1 %17, label %19, label %20, !dbg !2993

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2994
  unreachable, !dbg !2994

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2981
  call void @llvm.dbg.value(metadata i64 %21, metadata !424, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()) #32, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %21, metadata !2776, metadata !DIExpression()) #32, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %2, metadata !2777, metadata !DIExpression()) #32, !dbg !2995
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %22, metadata !2781, metadata !DIExpression()) #32, !dbg !2998
  %23 = icmp eq i8* %22, null, !dbg !3000
  br i1 %23, label %24, label %25, !dbg !3001

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !3002
  unreachable, !dbg !3002

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !421, metadata !DIExpression()), !dbg !2981
  store i64 %21, i64* %1, align 8, !dbg !3003, !tbaa !2054
  ret i8* %22, !dbg !3004
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #13 !dbg !428 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !436, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64* %1, metadata !437, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %2, metadata !438, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %3, metadata !439, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %4, metadata !440, metadata !DIExpression()), !dbg !3005
  %6 = load i64, i64* %1, align 8, !dbg !3006, !tbaa !2054
  call void @llvm.dbg.value(metadata i64 %6, metadata !441, metadata !DIExpression()), !dbg !3005
  %7 = ashr i64 %6, 1, !dbg !3007
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3007
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3007
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %10, metadata !442, metadata !DIExpression()), !dbg !3005
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %11, metadata !442, metadata !DIExpression()), !dbg !3005
  %12 = icmp sgt i64 %3, -1, !dbg !3010
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3012
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %15, metadata !442, metadata !DIExpression()), !dbg !3005
  %16 = icmp slt i64 %4, 0, !dbg !3013
  br i1 %16, label %17, label %30, !dbg !3013

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3013
  br i1 %18, label %19, label %24, !dbg !3013

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3013
  %21 = udiv i64 9223372036854775807, %20, !dbg !3013
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3013
  br i1 %23, label %46, label %43, !dbg !3013

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3013
  br i1 %25, label %43, label %26, !dbg !3013

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3013
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3013
  %29 = icmp ult i64 %28, %15, !dbg !3013
  br i1 %29, label %46, label %43, !dbg !3013

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3013
  br i1 %31, label %43, label %32, !dbg !3013

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3013
  br i1 %33, label %34, label %40, !dbg !3013

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3013
  br i1 %35, label %43, label %36, !dbg !3013

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3013
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3013
  %39 = icmp ult i64 %38, %4, !dbg !3013
  br i1 %39, label %46, label %43, !dbg !3013

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3013
  %42 = icmp ult i64 %41, %15, !dbg !3013
  br i1 %42, label %46, label %43, !dbg !3013

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3005
  %44 = mul i64 %15, %4, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %44, metadata !443, metadata !DIExpression()), !dbg !3005
  %45 = icmp slt i64 %44, 128, !dbg !3013
  br i1 %45, label %46, label %52, !dbg !3013

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !444, metadata !DIExpression()), !dbg !3005
  %48 = sdiv i64 %47, %4, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %48, metadata !442, metadata !DIExpression()), !dbg !3005
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %51, metadata !443, metadata !DIExpression()), !dbg !3005
  br label %52, !dbg !3018

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3005
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3005
  call void @llvm.dbg.value(metadata i64 %54, metadata !443, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %53, metadata !442, metadata !DIExpression()), !dbg !3005
  %55 = icmp eq i8* %0, null, !dbg !3019
  br i1 %55, label %56, label %57, !dbg !3021

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3022, !tbaa !2054
  br label %57, !dbg !3023

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3024
  %59 = icmp slt i64 %58, %2, !dbg !3026
  br i1 %59, label %60, label %97, !dbg !3027

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3028
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3028
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %63, metadata !442, metadata !DIExpression()), !dbg !3005
  br i1 %62, label %96, label %64, !dbg !3029

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3030
  br i1 %66, label %96, label %67, !dbg !3030

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3031

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3031
  br i1 %69, label %70, label %75, !dbg !3031

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3031
  %72 = udiv i64 9223372036854775807, %71, !dbg !3031
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3031
  br i1 %74, label %96, label %94, !dbg !3031

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3031
  br i1 %76, label %94, label %77, !dbg !3031

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3031
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3031
  %80 = icmp ult i64 %79, %63, !dbg !3031
  br i1 %80, label %96, label %94, !dbg !3031

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3031
  br i1 %82, label %94, label %83, !dbg !3031

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3031
  br i1 %84, label %85, label %91, !dbg !3031

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3031
  br i1 %86, label %94, label %87, !dbg !3031

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3031
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3031
  %90 = icmp ult i64 %89, %4, !dbg !3031
  br i1 %90, label %96, label %94, !dbg !3031

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3031
  %93 = icmp ult i64 %92, %63, !dbg !3031
  br i1 %93, label %96, label %94, !dbg !3031

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3005
  %95 = mul i64 %63, %4, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %95, metadata !443, metadata !DIExpression()), !dbg !3005
  br label %97, !dbg !3032

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !3033
  unreachable, !dbg !3033

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3005
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3005
  call void @llvm.dbg.value(metadata i64 %99, metadata !443, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %98, metadata !442, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #32, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %99, metadata !2853, metadata !DIExpression()) #32, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %0, metadata !2855, metadata !DIExpression()) #32, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %99, metadata !2859, metadata !DIExpression()) #32, !dbg !3036
  %100 = icmp eq i64 %99, 0, !dbg !3038
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3038
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %102, metadata !2781, metadata !DIExpression()) #32, !dbg !3040
  %103 = icmp eq i8* %102, null, !dbg !3042
  br i1 %103, label %104, label %105, !dbg !3043

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !3044
  unreachable, !dbg !3044

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !436, metadata !DIExpression()), !dbg !3005
  store i64 %98, i64* %1, align 8, !dbg !3045, !tbaa !2054
  ret i8* %102, !dbg !3046
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3047 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3049, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %0, metadata !3051, metadata !DIExpression()) #32, !dbg !3055
  call void @llvm.dbg.value(metadata i64 1, metadata !3054, metadata !DIExpression()) #32, !dbg !3055
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()) #32, !dbg !3058
  %3 = icmp eq i8* %2, null, !dbg !3060
  br i1 %3, label %4, label %5, !dbg !3061

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3062
  unreachable, !dbg !3062

5:                                                ; preds = %1
  ret i8* %2, !dbg !3063
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3052 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3051, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %1, metadata !3054, metadata !DIExpression()), !dbg !3064
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %3, metadata !2781, metadata !DIExpression()) #32, !dbg !3066
  %4 = icmp eq i8* %3, null, !dbg !3068
  br i1 %4, label %5, label %6, !dbg !3069

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3070
  unreachable, !dbg !3070

6:                                                ; preds = %2
  ret i8* %3, !dbg !3071
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3072 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %0, metadata !3076, metadata !DIExpression()) #32, !dbg !3080
  call void @llvm.dbg.value(metadata i64 1, metadata !3079, metadata !DIExpression()) #32, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()) #32, !dbg !3086
  call void @llvm.dbg.value(metadata i64 1, metadata !3085, metadata !DIExpression()) #32, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()) #32, !dbg !3086
  call void @llvm.dbg.value(metadata i64 1, metadata !3085, metadata !DIExpression()) #32, !dbg !3086
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()) #32, !dbg !3089
  %3 = icmp eq i8* %2, null, !dbg !3091
  br i1 %3, label %4, label %5, !dbg !3092

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3093
  unreachable, !dbg !3093

5:                                                ; preds = %1
  ret i8* %2, !dbg !3094
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3077 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3076, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()) #32, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3085, metadata !DIExpression()) #32, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()) #32, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3085, metadata !DIExpression()) #32, !dbg !3096
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %3, metadata !2781, metadata !DIExpression()) #32, !dbg !3099
  %4 = icmp eq i8* %3, null, !dbg !3101
  br i1 %4, label %5, label %6, !dbg !3102

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3103
  unreachable, !dbg !3103

6:                                                ; preds = %2
  ret i8* %3, !dbg !3104
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !2805, metadata !DIExpression()) #32, !dbg !3112
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3114
  call void @llvm.dbg.value(metadata i8* %3, metadata !2781, metadata !DIExpression()) #32, !dbg !3115
  %4 = icmp eq i8* %3, null, !dbg !3117
  br i1 %4, label %5, label %6, !dbg !3118

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3119
  unreachable, !dbg !3119

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3120, metadata !DIExpression()) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i8* %0, metadata !3126, metadata !DIExpression()) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()) #32, !dbg !3128
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3130
  ret i8* %3, !dbg !3131
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3132 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !2818, metadata !DIExpression()) #32, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %1, metadata !2820, metadata !DIExpression()) #32, !dbg !3141
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %3, metadata !2781, metadata !DIExpression()) #32, !dbg !3144
  %4 = icmp eq i8* %3, null, !dbg !3146
  br i1 %4, label %5, label %6, !dbg !3147

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3148
  unreachable, !dbg !3148

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3120, metadata !DIExpression()) #32, !dbg !3149
  call void @llvm.dbg.value(metadata i8* %0, metadata !3126, metadata !DIExpression()) #32, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()) #32, !dbg !3149
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3151
  ret i8* %3, !dbg !3152
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 !dbg !3153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()), !dbg !3160
  %3 = add nsw i64 %1, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %3, metadata !2818, metadata !DIExpression()) #32, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %3, metadata !2820, metadata !DIExpression()) #32, !dbg !3164
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %4, metadata !2781, metadata !DIExpression()) #32, !dbg !3167
  %5 = icmp eq i8* %4, null, !dbg !3169
  br i1 %5, label %6, label %7, !dbg !3170

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3171
  unreachable, !dbg !3171

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3159, metadata !DIExpression()), !dbg !3160
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3172
  store i8 0, i8* %8, align 1, !dbg !3173, !tbaa !496
  call void @llvm.dbg.value(metadata i8* %4, metadata !3120, metadata !DIExpression()) #32, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %0, metadata !3126, metadata !DIExpression()) #32, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()) #32, !dbg !3174
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3176
  ret i8* %4, !dbg !3177
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #13 !dbg !3178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3180, metadata !DIExpression()), !dbg !3181
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3182
  %3 = add i64 %2, 1, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()) #32, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %3, metadata !3110, metadata !DIExpression()) #32, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %3, metadata !2805, metadata !DIExpression()) #32, !dbg !3186
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %4, metadata !2781, metadata !DIExpression()) #32, !dbg !3189
  %5 = icmp eq i8* %4, null, !dbg !3191
  br i1 %5, label %6, label %7, !dbg !3192

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3193
  unreachable, !dbg !3193

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3120, metadata !DIExpression()) #32, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %0, metadata !3126, metadata !DIExpression()) #32, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %3, metadata !3127, metadata !DIExpression()) #32, !dbg !3194
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3196
  ret i8* %4, !dbg !3197
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3198 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3203, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %1, metadata !3200, metadata !DIExpression()), !dbg !3204
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.156, i64 0, i64 0), i32 noundef 5) #32, !dbg !3203
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i64 0, i64 0), i8* noundef %2) #32, !dbg !3203
  %3 = icmp eq i32 %1, 0, !dbg !3203
  tail call void @llvm.assume(i1 %3), !dbg !3203
  tail call void @abort() #34, !dbg !3205
  unreachable, !dbg !3205
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #13 !dbg !3206 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3244, metadata !DIExpression()), !dbg !3249
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3250
  call void @llvm.dbg.value(metadata i1 undef, metadata !3245, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3249
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3251, metadata !DIExpression()), !dbg !3254
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3256
  %4 = load i32, i32* %3, align 8, !dbg !3256, !tbaa !3257
  %5 = and i32 %4, 32, !dbg !3258
  %6 = icmp eq i32 %5, 0, !dbg !3258
  call void @llvm.dbg.value(metadata i1 %6, metadata !3247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3249
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3259
  %8 = icmp eq i32 %7, 0, !dbg !3260
  call void @llvm.dbg.value(metadata i1 %8, metadata !3248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3249
  br i1 %6, label %9, label %19, !dbg !3261

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3263
  call void @llvm.dbg.value(metadata i1 %10, metadata !3245, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3249
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3264
  %12 = xor i1 %8, true, !dbg !3264
  %13 = sext i1 %12 to i32, !dbg !3264
  br i1 %11, label %22, label %14, !dbg !3264

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3265
  %16 = load i32, i32* %15, align 4, !dbg !3265, !tbaa !594
  %17 = icmp ne i32 %16, 9, !dbg !3266
  %18 = sext i1 %17 to i32, !dbg !3267
  br label %22, !dbg !3267

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3268

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3270
  store i32 0, i32* %21, align 4, !dbg !3272, !tbaa !594
  br label %22, !dbg !3270

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3249
  ret i32 %23, !dbg !3273
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #13 !dbg !3274 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3312, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 0, metadata !3313, metadata !DIExpression()), !dbg !3316
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %2, metadata !3314, metadata !DIExpression()), !dbg !3316
  %3 = icmp slt i32 %2, 0, !dbg !3318
  br i1 %3, label %4, label %6, !dbg !3320

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3321
  br label %24, !dbg !3322

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3323
  %8 = icmp eq i32 %7, 0, !dbg !3323
  br i1 %8, label %13, label %9, !dbg !3325

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3326
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3327
  %12 = icmp eq i64 %11, -1, !dbg !3328
  br i1 %12, label %16, label %13, !dbg !3329

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3330
  %15 = icmp eq i32 %14, 0, !dbg !3330
  br i1 %15, label %16, label %18, !dbg !3331

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3313, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 0, metadata !3315, metadata !DIExpression()), !dbg !3316
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3332
  call void @llvm.dbg.value(metadata i32 %21, metadata !3315, metadata !DIExpression()), !dbg !3316
  br label %24, !dbg !3333

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3334
  %20 = load i32, i32* %19, align 4, !dbg !3334, !tbaa !594
  call void @llvm.dbg.value(metadata i32 %20, metadata !3313, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 0, metadata !3315, metadata !DIExpression()), !dbg !3316
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3332
  call void @llvm.dbg.value(metadata i32 %21, metadata !3315, metadata !DIExpression()), !dbg !3316
  %22 = icmp eq i32 %20, 0, !dbg !3335
  br i1 %22, label %24, label %23, !dbg !3333

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3337, !tbaa !594
  call void @llvm.dbg.value(metadata i32 -1, metadata !3315, metadata !DIExpression()), !dbg !3316
  br label %24, !dbg !3339

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3316
  ret i32 %25, !dbg !3340
}

; Function Attrs: nofree nounwind
declare !dbg !3341 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3342 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3343 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #13 !dbg !3347 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3385, metadata !DIExpression()), !dbg !3386
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3387
  br i1 %2, label %6, label %3, !dbg !3389

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3390
  %5 = icmp eq i32 %4, 0, !dbg !3390
  br i1 %5, label %6, label %8, !dbg !3391

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3392
  br label %17, !dbg !3393

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3394, metadata !DIExpression()) #32, !dbg !3399
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3401
  %10 = load i32, i32* %9, align 8, !dbg !3401, !tbaa !3257
  %11 = and i32 %10, 256, !dbg !3403
  %12 = icmp eq i32 %11, 0, !dbg !3403
  br i1 %12, label %15, label %13, !dbg !3404

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3405
  br label %15, !dbg !3405

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3406
  br label %17, !dbg !3407

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3386
  ret i32 %18, !dbg !3408
}

; Function Attrs: nofree nounwind
declare !dbg !3409 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #13 !dbg !3410 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3449, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i32 %2, metadata !3451, metadata !DIExpression()), !dbg !3455
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3456
  %5 = load i8*, i8** %4, align 8, !dbg !3456, !tbaa !3457
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3458
  %7 = load i8*, i8** %6, align 8, !dbg !3458, !tbaa !3459
  %8 = icmp eq i8* %5, %7, !dbg !3460
  br i1 %8, label %9, label %28, !dbg !3461

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3462
  %11 = load i8*, i8** %10, align 8, !dbg !3462, !tbaa !839
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3463
  %13 = load i8*, i8** %12, align 8, !dbg !3463, !tbaa !3464
  %14 = icmp eq i8* %11, %13, !dbg !3465
  br i1 %14, label %15, label %28, !dbg !3466

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3467
  %17 = load i8*, i8** %16, align 8, !dbg !3467, !tbaa !3468
  %18 = icmp eq i8* %17, null, !dbg !3469
  br i1 %18, label %19, label %28, !dbg !3470

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3471
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %21, metadata !3452, metadata !DIExpression()), !dbg !3473
  %22 = icmp eq i64 %21, -1, !dbg !3474
  br i1 %22, label %30, label %23, !dbg !3476

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3477
  %25 = load i32, i32* %24, align 8, !dbg !3478, !tbaa !3257
  %26 = and i32 %25, -17, !dbg !3478
  store i32 %26, i32* %24, align 8, !dbg !3478, !tbaa !3257
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3479
  store i64 %21, i64* %27, align 8, !dbg !3480, !tbaa !3481
  br label %30, !dbg !3482

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3483
  br label %30, !dbg !3484

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3455
  ret i32 %31, !dbg !3485
}

; Function Attrs: nofree nounwind
declare !dbg !3486 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #13 !dbg !3489 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3494, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8* %1, metadata !3495, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %2, metadata !3496, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3497, metadata !DIExpression()), !dbg !3499
  %5 = icmp eq i8* %1, null, !dbg !3500
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3502
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.168, i64 0, i64 0), i8* %1, !dbg !3502
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %8, metadata !3496, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8* %7, metadata !3495, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32* %6, metadata !3494, metadata !DIExpression()), !dbg !3499
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3503
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3505
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3497, metadata !DIExpression()), !dbg !3499
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %11, metadata !3498, metadata !DIExpression()), !dbg !3499
  %12 = icmp ult i64 %11, -3, !dbg !3507
  br i1 %12, label %13, label %18, !dbg !3509

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3510
  %15 = icmp eq i32 %14, 0, !dbg !3510
  br i1 %15, label %16, label %30, !dbg !3511

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3512, metadata !DIExpression()) #32, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3519, metadata !DIExpression()) #32, !dbg !3524
  call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()) #32, !dbg !3524
  call void @llvm.dbg.value(metadata i64 8, metadata !3523, metadata !DIExpression()) #32, !dbg !3524
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3526
  store i64 0, i64* %17, align 1, !dbg !3526
  br label %30, !dbg !3527

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3528
  br i1 %19, label %20, label %21, !dbg !3530

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3531
  unreachable, !dbg !3531

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3532

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3534
  br i1 %24, label %30, label %25, !dbg !3535

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3536
  br i1 %26, label %30, label %27, !dbg !3539

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3540, !tbaa !496
  %29 = zext i8 %28 to i32, !dbg !3541
  store i32 %29, i32* %6, align 4, !dbg !3542, !tbaa !594
  br label %30, !dbg !3543

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3499
  ret i64 %31, !dbg !3544
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3545 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3553, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %2, metadata !3555, metadata !DIExpression()), !dbg !3557
  %4 = icmp eq i64 %2, 0, !dbg !3558
  br i1 %4, label %8, label %5, !dbg !3558

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3558
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3558
  br i1 %7, label %13, label %8, !dbg !3558

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3556, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3557
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3556, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3557
  %9 = mul i64 %2, %1, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %9, metadata !3556, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8* %0, metadata !3560, metadata !DIExpression()) #32, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %9, metadata !3563, metadata !DIExpression()) #32, !dbg !3564
  %10 = icmp eq i64 %9, 0, !dbg !3566
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3566
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3567
  br label %15, !dbg !3568

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3556, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3557
  %14 = tail call i32* @__errno_location() #35, !dbg !3569
  store i32 12, i32* %14, align 4, !dbg !3571, !tbaa !594
  br label %15, !dbg !3572

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3557
  ret i8* %16, !dbg !3573
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #13 !dbg !3574 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3583
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3584
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3584
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3579, metadata !DIExpression()), !dbg !3585
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3586
  %5 = icmp eq i32 %4, 0, !dbg !3586
  br i1 %5, label %6, label %13, !dbg !3588

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3589, metadata !DIExpression()) #32, !dbg !3593
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0), metadata !3592, metadata !DIExpression()) #32, !dbg !3593
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0), i64 2), !dbg !3596
  %8 = icmp eq i32 %7, 0, !dbg !3597
  br i1 %8, label %12, label %9, !dbg !3598

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3589, metadata !DIExpression()) #32, !dbg !3599
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.174, i64 0, i64 0), metadata !3592, metadata !DIExpression()) #32, !dbg !3599
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.174, i64 0, i64 0), i64 6), !dbg !3601
  %11 = icmp eq i32 %10, 0, !dbg !3602
  br i1 %11, label %12, label %13, !dbg !3603

12:                                               ; preds = %9, %6
  br label %13, !dbg !3604

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3583
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3605
  ret i1 %14, !dbg !3605
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #13 !dbg !3606 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3610, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i8* %1, metadata !3611, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %2, metadata !3612, metadata !DIExpression()), !dbg !3613
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3614
  ret i32 %4, !dbg !3615
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #13 !dbg !3616 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3620, metadata !DIExpression()), !dbg !3621
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3622
  ret i8* %2, !dbg !3623
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #13 !dbg !3624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3626, metadata !DIExpression()), !dbg !3628
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !3627, metadata !DIExpression()), !dbg !3628
  ret i8* %2, !dbg !3630
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #13 !dbg !3631 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3633, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %1, metadata !3634, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %2, metadata !3635, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 %0, metadata !3626, metadata !DIExpression()) #32, !dbg !3641
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %4, metadata !3627, metadata !DIExpression()) #32, !dbg !3641
  call void @llvm.dbg.value(metadata i8* %4, metadata !3636, metadata !DIExpression()), !dbg !3640
  %5 = icmp eq i8* %4, null, !dbg !3644
  br i1 %5, label %6, label %9, !dbg !3645

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3646
  br i1 %7, label %19, label %8, !dbg !3649

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3650, !tbaa !496
  br label %19, !dbg !3651

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %10, metadata !3637, metadata !DIExpression()), !dbg !3653
  %11 = icmp ult i64 %10, %2, !dbg !3654
  br i1 %11, label %12, label %14, !dbg !3656

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3657
  call void @llvm.dbg.value(metadata i8* %1, metadata !3659, metadata !DIExpression()) #32, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %4, metadata !3662, metadata !DIExpression()) #32, !dbg !3664
  call void @llvm.dbg.value(metadata i64 %13, metadata !3663, metadata !DIExpression()) #32, !dbg !3664
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3666
  br label %19, !dbg !3667

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3668
  br i1 %15, label %19, label %16, !dbg !3671

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %1, metadata !3659, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %4, metadata !3662, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %17, metadata !3663, metadata !DIExpression()) #32, !dbg !3674
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3676
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3677
  store i8 0, i8* %18, align 1, !dbg !3678, !tbaa !496
  br label %19, !dbg !3679

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3680
  ret i32 %20, !dbg !3681
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
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #36 = { cold }
attributes #37 = { nounwind allocsize(1) }
attributes #38 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!10, !187, !193, !198, !205, !383, !403, !246, !256, !288, !405, !375, !412, !446, !448, !450, !452, !454, !389, !456, !459, !461, !463}
!llvm.ident = !{!465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465}
!llvm.module.flags = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "unknown", scope: !2, file: !3, line: 291, type: !181, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 289, type: !4, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !156)
!3 = !DIFile(filename: "src/uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5faf8ba4adefe8131536a9e79ed0bb1")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !33, globals: !42, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !18}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uname_modes", file: !13, line: 1, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "src/uname.h", directory: "/src", checksumkind: CSK_MD5, checksum: "44f2d6a16060460070884486e185db64")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "UNAME_UNAME", value: 0)
!17 = !DIEnumerator(name: "UNAME_ARCH", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !14, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "_ISupper", value: 256)
!22 = !DIEnumerator(name: "_ISlower", value: 512)
!23 = !DIEnumerator(name: "_ISalpha", value: 1024)
!24 = !DIEnumerator(name: "_ISdigit", value: 2048)
!25 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!26 = !DIEnumerator(name: "_ISspace", value: 8192)
!27 = !DIEnumerator(name: "_ISprint", value: 16384)
!28 = !DIEnumerator(name: "_ISgraph", value: 32768)
!29 = !DIEnumerator(name: "_ISblank", value: 1)
!30 = !DIEnumerator(name: "_IScntrl", value: 2)
!31 = !DIEnumerator(name: "_ISpunct", value: 4)
!32 = !DIEnumerator(name: "_ISalnum", value: 8)
!33 = !{!6, !34, !35, !38, !40, !8, !41}
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !{!0, !43, !130, !144, !149}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !45, file: !46, line: 575, type: !6, isLocal: true, isDefinition: true)
!45 = distinct !DISubprogram(name: "oputs_", scope: !46, file: !46, line: 573, type: !47, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !49)
!46 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!47 = !DISubroutineType(types: !48)
!48 = !{null, !38, !38}
!49 = !{!50, !51, !52, !55, !57, !58, !59, !63, !64, !65, !66, !68, !124, !125, !126, !128, !129}
!50 = !DILocalVariable(name: "program", arg: 1, scope: !45, file: !46, line: 573, type: !38)
!51 = !DILocalVariable(name: "option", arg: 2, scope: !45, file: !46, line: 573, type: !38)
!52 = !DILocalVariable(name: "term", scope: !53, file: !46, line: 585, type: !38)
!53 = distinct !DILexicalBlock(scope: !54, file: !46, line: 582, column: 5)
!54 = distinct !DILexicalBlock(scope: !45, file: !46, line: 581, column: 7)
!55 = !DILocalVariable(name: "double_space", scope: !45, file: !46, line: 594, type: !56)
!56 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DILocalVariable(name: "first_word", scope: !45, file: !46, line: 595, type: !38)
!58 = !DILocalVariable(name: "option_text", scope: !45, file: !46, line: 596, type: !38)
!59 = !DILocalVariable(name: "s", scope: !60, file: !46, line: 608, type: !38)
!60 = distinct !DILexicalBlock(scope: !61, file: !46, line: 605, column: 5)
!61 = distinct !DILexicalBlock(scope: !62, file: !46, line: 604, column: 12)
!62 = distinct !DILexicalBlock(scope: !45, file: !46, line: 597, column: 7)
!63 = !DILocalVariable(name: "spaces", scope: !60, file: !46, line: 609, type: !35)
!64 = !DILocalVariable(name: "anchor_len", scope: !45, file: !46, line: 620, type: !35)
!65 = !DILocalVariable(name: "desc_text", scope: !45, file: !46, line: 625, type: !38)
!66 = !DILocalVariable(name: "__ptr", scope: !67, file: !46, line: 644, type: !38)
!67 = distinct !DILexicalBlock(scope: !45, file: !46, line: 644, column: 3)
!68 = !DILocalVariable(name: "__stream", scope: !67, file: !46, line: 644, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !72)
!71 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !74)
!73 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !90, !92, !93, !94, !98, !99, !101, !105, !108, !110, !113, !116, !117, !118, !119, !120}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !72, file: !73, line: 51, baseType: !6, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !72, file: !73, line: 54, baseType: !8, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !72, file: !73, line: 55, baseType: !8, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !72, file: !73, line: 56, baseType: !8, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !72, file: !73, line: 57, baseType: !8, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !72, file: !73, line: 58, baseType: !8, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !72, file: !73, line: 59, baseType: !8, size: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !72, file: !73, line: 60, baseType: !8, size: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !72, file: !73, line: 61, baseType: !8, size: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !72, file: !73, line: 64, baseType: !8, size: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !72, file: !73, line: 65, baseType: !8, size: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !72, file: !73, line: 66, baseType: !8, size: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !72, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !73, line: 36, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !72, file: !73, line: 70, baseType: !91, size: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !72, file: !73, line: 72, baseType: !6, size: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !72, file: !73, line: 73, baseType: !6, size: 32, offset: 928)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !72, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !96, line: 152, baseType: !97)
!96 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!97 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !72, file: !73, line: 77, baseType: !34, size: 16, offset: 1024)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !72, file: !73, line: 78, baseType: !100, size: 8, offset: 1040)
!100 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !72, file: !73, line: 79, baseType: !102, size: 8, offset: 1048)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !72, file: !73, line: 81, baseType: !106, size: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !73, line: 43, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !72, file: !73, line: 89, baseType: !109, size: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !96, line: 153, baseType: !97)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !72, file: !73, line: 91, baseType: !111, size: 64, offset: 1216)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !73, line: 37, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !72, file: !73, line: 92, baseType: !114, size: 64, offset: 1280)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !73, line: 38, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !72, file: !73, line: 93, baseType: !91, size: 64, offset: 1344)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !72, file: !73, line: 94, baseType: !41, size: 64, offset: 1408)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !72, file: !73, line: 95, baseType: !35, size: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !72, file: !73, line: 96, baseType: !6, size: 32, offset: 1536)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !72, file: !73, line: 98, baseType: !121, size: 160, offset: 1568)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 20)
!124 = !DILocalVariable(name: "__cnt", scope: !67, file: !46, line: 644, type: !35)
!125 = !DILocalVariable(name: "url_program", scope: !45, file: !46, line: 648, type: !38)
!126 = !DILocalVariable(name: "__ptr", scope: !127, file: !46, line: 686, type: !38)
!127 = distinct !DILexicalBlock(scope: !45, file: !46, line: 686, column: 3)
!128 = !DILocalVariable(name: "__stream", scope: !127, file: !46, line: 686, type: !69)
!129 = !DILocalVariable(name: "__cnt", scope: !127, file: !46, line: 686, type: !35)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !10, file: !3, line: 100, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 768, elements: !142)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !135, line: 50, size: 256, elements: !136)
!135 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!136 = !{!137, !138, !139, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !135, line: 52, baseType: !38, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !134, file: !135, line: 55, baseType: !6, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !134, file: !135, line: 56, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !134, file: !135, line: 57, baseType: !6, size: 32, offset: 192)
!142 = !{!143}
!143 = !DISubrange(count: 3)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !10, file: !3, line: 82, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 3584, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 14)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "printed", scope: !151, file: !3, line: 172, type: !56, isLocal: true, isDefinition: true)
!151 = distinct !DISubprogram(name: "print_element", scope: !3, file: !3, line: 170, type: !152, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !38}
!154 = !{!155}
!155 = !DILocalVariable(name: "element", arg: 1, scope: !151, file: !3, line: 170, type: !38)
!156 = !{!157, !158, !159, !160, !175, !178}
!157 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 289, type: !6)
!158 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 289, type: !7)
!159 = !DILocalVariable(name: "toprint", scope: !2, file: !3, line: 294, type: !14)
!160 = !DILocalVariable(name: "name", scope: !161, file: !3, line: 313, type: !163)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 312, column: 5)
!162 = distinct !DILexicalBlock(scope: !2, file: !3, line: 309, column: 7)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !164, line: 48, size: 3120, elements: !165)
!164 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/utsname.h", directory: "", checksumkind: CSK_MD5, checksum: "025e6c1b1c47580289242d1d03561cee")
!165 = !{!166, !170, !171, !172, !173, !174}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !163, file: !164, line: 51, baseType: !167, size: 520)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 520, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 65)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !163, file: !164, line: 54, baseType: !167, size: 520, offset: 520)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !163, file: !164, line: 57, baseType: !167, size: 520, offset: 1040)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !163, file: !164, line: 59, baseType: !167, size: 520, offset: 1560)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !163, file: !164, line: 62, baseType: !167, size: 520, offset: 2080)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !163, file: !164, line: 67, baseType: !167, size: 520, offset: 2600)
!175 = !DILocalVariable(name: "element", scope: !176, file: !3, line: 332, type: !38)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 331, column: 5)
!177 = distinct !DILexicalBlock(scope: !2, file: !3, line: 330, column: 7)
!178 = !DILocalVariable(name: "element", scope: !179, file: !3, line: 366, type: !38)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 365, column: 5)
!180 = distinct !DILexicalBlock(scope: !2, file: !3, line: 364, column: 7)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "uname_mode", scope: !187, file: !188, line: 2, type: !12, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !190, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "src/uname-uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355b38a68e18f877bfa709b962231397")
!189 = !{!12}
!190 = !{!185}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "Version", scope: !193, file: !194, line: 3, type: !38, isLocal: false, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!195 = !{!191}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "file_name", scope: !198, file: !199, line: 45, type: !38, isLocal: true, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !200, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!200 = !{!196, !201}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !198, file: !199, line: 55, type: !56, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !205, file: !206, line: 66, type: !241, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !207, globals: !208, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!207 = !{!41, !40}
!208 = !{!209, !235, !203, !237, !239}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "old_file_name", scope: !211, file: !206, line: 304, type: !38, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "verror_at_line", scope: !206, file: !206, line: 298, type: !212, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !228)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !6, !6, !38, !14, !38, !214}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !215, line: 52, baseType: !216)
!215 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !217, line: 32, baseType: !218)
!217 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !219, baseType: !220)
!219 = !DIFile(filename: "lib/error.c", directory: "/src")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !221, size: 256, elements: !222)
!221 = !DINamespace(name: "std", scope: null)
!222 = !{!223, !224, !225, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !220, file: !219, baseType: !41, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !220, file: !219, baseType: !41, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !220, file: !219, baseType: !41, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !220, file: !219, baseType: !6, size: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !220, file: !219, baseType: !6, size: 32, offset: 224)
!228 = !{!229, !230, !231, !232, !233, !234}
!229 = !DILocalVariable(name: "status", arg: 1, scope: !211, file: !206, line: 298, type: !6)
!230 = !DILocalVariable(name: "errnum", arg: 2, scope: !211, file: !206, line: 298, type: !6)
!231 = !DILocalVariable(name: "file_name", arg: 3, scope: !211, file: !206, line: 298, type: !38)
!232 = !DILocalVariable(name: "line_number", arg: 4, scope: !211, file: !206, line: 298, type: !14)
!233 = !DILocalVariable(name: "message", arg: 5, scope: !211, file: !206, line: 298, type: !38)
!234 = !DILocalVariable(name: "args", arg: 6, scope: !211, file: !206, line: 298, type: !214)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "old_line_number", scope: !211, file: !206, line: 305, type: !14, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "error_message_count", scope: !205, file: !206, line: 69, type: !14, isLocal: false, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !205, file: !206, line: 295, type: !6, isLocal: false, isDefinition: true)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "program_name", scope: !246, file: !247, line: 31, type: !38, isLocal: false, isDefinition: true)
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !248, globals: !249, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!248 = !{!8}
!249 = !{!244}
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "utf07FF", scope: !252, file: !253, line: 46, type: !283, isLocal: true, isDefinition: true)
!252 = distinct !DISubprogram(name: "proper_name_lite", scope: !253, file: !253, line: 38, type: !254, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !258)
!253 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!254 = !DISubroutineType(types: !255)
!255 = !{!38, !38, !38}
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !257, splitDebugInlining: false, nameTableKind: None)
!257 = !{!250}
!258 = !{!259, !260, !261, !262, !267}
!259 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !252, file: !253, line: 38, type: !38)
!260 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !252, file: !253, line: 38, type: !38)
!261 = !DILocalVariable(name: "translation", scope: !252, file: !253, line: 40, type: !38)
!262 = !DILocalVariable(name: "w", scope: !252, file: !253, line: 47, type: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !264, line: 37, baseType: !265)
!264 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !96, line: 57, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 42, baseType: !14)
!267 = !DILocalVariable(name: "mbs", scope: !252, file: !253, line: 48, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !269, line: 6, baseType: !270)
!269 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !271, line: 21, baseType: !272)
!271 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 13, size: 64, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !272, file: !271, line: 15, baseType: !6, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !272, file: !271, line: 20, baseType: !276, size: 32, offset: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !272, file: !271, line: 16, size: 32, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !276, file: !271, line: 18, baseType: !14, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !276, file: !271, line: 19, baseType: !280, size: 32)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 4)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 2)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !288, file: !289, line: 76, type: !369, isLocal: false, isDefinition: true)
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !290, retainedTypes: !310, globals: !311, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!290 = !{!291, !305, !18}
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !292, line: 42, baseType: !14, size: 32, elements: !293)
!292 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!294 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!295 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!296 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!297 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!298 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!299 = !DIEnumerator(name: "c_quoting_style", value: 5)
!300 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!301 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!302 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!303 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!304 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !292, line: 254, baseType: !14, size: 32, elements: !306)
!306 = !{!307, !308, !309}
!307 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!308 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!309 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!310 = !{!6, !34, !35}
!311 = !{!286, !312, !318, !328, !330, !335, !358, !365, !367}
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !288, file: !289, line: 92, type: !314, isLocal: false, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 320, elements: !316)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!316 = !{!317}
!317 = !DISubrange(count: 10)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !288, file: !289, line: 1040, type: !320, isLocal: false, isDefinition: true)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !289, line: 56, size: 448, elements: !321)
!321 = !{!322, !323, !324, !326, !327}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !320, file: !289, line: 59, baseType: !291, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !289, line: 62, baseType: !6, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !320, file: !289, line: 66, baseType: !325, size: 256, offset: 64)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !182)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !320, file: !289, line: 69, baseType: !38, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !320, file: !289, line: 72, baseType: !38, size: 64, offset: 384)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !288, file: !289, line: 107, type: !320, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "slot0", scope: !288, file: !289, line: 831, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 256)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "quote", scope: !337, file: !289, line: 228, type: !356, isLocal: true, isDefinition: true)
!337 = distinct !DISubprogram(name: "gettext_quote", scope: !289, file: !289, line: 197, type: !338, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!38, !38, !291}
!340 = !{!341, !342, !343, !344, !345}
!341 = !DILocalVariable(name: "msgid", arg: 1, scope: !337, file: !289, line: 197, type: !38)
!342 = !DILocalVariable(name: "s", arg: 2, scope: !337, file: !289, line: 197, type: !291)
!343 = !DILocalVariable(name: "translation", scope: !337, file: !289, line: 199, type: !38)
!344 = !DILocalVariable(name: "w", scope: !337, file: !289, line: 229, type: !263)
!345 = !DILocalVariable(name: "mbs", scope: !337, file: !289, line: 230, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !269, line: 6, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !271, line: 21, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 13, size: 64, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !348, file: !271, line: 15, baseType: !6, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !348, file: !271, line: 20, baseType: !352, size: 32, offset: 32)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !271, line: 16, size: 32, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !352, file: !271, line: 18, baseType: !14, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !352, file: !271, line: 19, baseType: !280, size: 32)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !357)
!357 = !{!285, !282}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "slotvec", scope: !288, file: !289, line: 834, type: !360, isLocal: true, isDefinition: true)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !289, line: 823, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !289, line: 825, baseType: !35, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !289, line: 826, baseType: !8, size: 64, offset: 64)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "nslots", scope: !288, file: !289, line: 832, type: !6, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "slotvec0", scope: !288, file: !289, line: 833, type: !361, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 704, elements: !371)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!371 = !{!372}
!372 = !DISubrange(count: 11)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !375, file: !376, line: 26, type: !378, isLocal: false, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !377, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!377 = !{!373}
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 47)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "exit_failure", scope: !383, file: !384, line: 24, type: !386, isLocal: false, isDefinition: true)
!383 = distinct !DICompileUnit(language: DW_LANG_C99, file: !384, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !385, splitDebugInlining: false, nameTableKind: None)
!384 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!385 = !{!381}
!386 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "internal_state", scope: !389, file: !390, line: 97, type: !393, isLocal: true, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !391, globals: !392, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!391 = !{!41, !35, !40}
!392 = !{!387}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !269, line: 6, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !271, line: 21, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 13, size: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !395, file: !271, line: 15, baseType: !6, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !395, file: !271, line: 20, baseType: !399, size: 32, offset: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !271, line: 16, size: 32, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !399, file: !271, line: 18, baseType: !14, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !399, file: !271, line: 19, baseType: !280, size: 32)
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !407, retainedTypes: !411, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!407 = !{!408}
!408 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !406, line: 40, baseType: !14, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!411 = !{!41}
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !414, retainedTypes: !445, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!414 = !{!415, !427}
!415 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !416, file: !413, line: 188, baseType: !14, size: 32, elements: !425)
!416 = distinct !DISubprogram(name: "x2nrealloc", scope: !413, file: !413, line: 176, type: !417, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !420)
!417 = !DISubroutineType(types: !418)
!418 = !{!41, !41, !419, !35}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!420 = !{!421, !422, !423, !424}
!421 = !DILocalVariable(name: "p", arg: 1, scope: !416, file: !413, line: 176, type: !41)
!422 = !DILocalVariable(name: "pn", arg: 2, scope: !416, file: !413, line: 176, type: !419)
!423 = !DILocalVariable(name: "s", arg: 3, scope: !416, file: !413, line: 176, type: !35)
!424 = !DILocalVariable(name: "n", scope: !416, file: !413, line: 178, type: !35)
!425 = !{!426}
!426 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!427 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !428, file: !413, line: 228, baseType: !14, size: 32, elements: !425)
!428 = distinct !DISubprogram(name: "xpalloc", scope: !413, file: !413, line: 223, type: !429, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !435)
!429 = !DISubroutineType(types: !430)
!430 = !{!41, !41, !431, !432, !434, !432}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !433, line: 130, baseType: !434)
!433 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !36, line: 35, baseType: !97)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444}
!436 = !DILocalVariable(name: "pa", arg: 1, scope: !428, file: !413, line: 223, type: !41)
!437 = !DILocalVariable(name: "pn", arg: 2, scope: !428, file: !413, line: 223, type: !431)
!438 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !428, file: !413, line: 223, type: !432)
!439 = !DILocalVariable(name: "n_max", arg: 4, scope: !428, file: !413, line: 223, type: !434)
!440 = !DILocalVariable(name: "s", arg: 5, scope: !428, file: !413, line: 223, type: !432)
!441 = !DILocalVariable(name: "n0", scope: !428, file: !413, line: 230, type: !432)
!442 = !DILocalVariable(name: "n", scope: !428, file: !413, line: 237, type: !432)
!443 = !DILocalVariable(name: "nbytes", scope: !428, file: !413, line: 248, type: !432)
!444 = !DILocalVariable(name: "adjusted_nbytes", scope: !428, file: !413, line: 252, type: !432)
!445 = !{!8, !41, !56, !97, !37}
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !451, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!451 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!452 = distinct !DICompileUnit(language: DW_LANG_C99, file: !453, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !411, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !411, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !458, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!458 = !{!56, !37, !41}
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !411, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!465 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!466 = !{i32 7, !"Dwarf Version", i32 5}
!467 = !{i32 2, !"Debug Info Version", i32 3}
!468 = !{i32 1, !"wchar_size", i32 4}
!469 = !{i32 1, !"branch-target-enforcement", i32 0}
!470 = !{i32 1, !"sign-return-address", i32 0}
!471 = !{i32 1, !"sign-return-address-all", i32 0}
!472 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!473 = !{i32 7, !"PIC Level", i32 2}
!474 = !{i32 7, !"PIE Level", i32 2}
!475 = !{i32 7, !"uwtable", i32 1}
!476 = !{i32 7, !"frame-pointer", i32 1}
!477 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 108, type: !478, scopeLine: 109, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !6}
!480 = !{!481}
!481 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !3, line: 108, type: !6)
!482 = !DILocation(line: 0, scope: !477)
!483 = !DILocation(line: 110, column: 14, scope: !484)
!484 = distinct !DILexicalBlock(scope: !477, file: !3, line: 110, column: 7)
!485 = !DILocation(line: 110, column: 7, scope: !477)
!486 = !DILocation(line: 111, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 111, column: 5)
!488 = !{!489, !489, i64 0}
!489 = !{!"any pointer", !490, i64 0}
!490 = !{!"omnipotent char", !491, i64 0}
!491 = !{!"Simple C/C++ TBAA"}
!492 = !DILocation(line: 114, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !484, file: !3, line: 113, column: 5)
!494 = !DILocation(line: 116, column: 11, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 116, column: 11)
!496 = !{!490, !490, i64 0}
!497 = !DILocation(line: 116, column: 22, scope: !495)
!498 = !DILocation(line: 116, column: 11, scope: !493)
!499 = !DILocation(line: 118, column: 11, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !3, line: 117, column: 9)
!501 = !DILocation(line: 122, column: 11, scope: !500)
!502 = !DILocation(line: 126, column: 11, scope: !500)
!503 = !DILocation(line: 129, column: 11, scope: !500)
!504 = !DILocation(line: 132, column: 11, scope: !500)
!505 = !DILocation(line: 135, column: 11, scope: !500)
!506 = !DILocation(line: 138, column: 11, scope: !500)
!507 = !DILocation(line: 141, column: 11, scope: !500)
!508 = !DILocation(line: 144, column: 11, scope: !500)
!509 = !DILocation(line: 147, column: 11, scope: !500)
!510 = !DILocation(line: 150, column: 9, scope: !500)
!511 = !DILocation(line: 153, column: 11, scope: !512)
!512 = distinct !DILexicalBlock(scope: !495, file: !3, line: 152, column: 9)
!513 = !DILocation(line: 159, column: 7, scope: !493)
!514 = !DILocation(line: 160, column: 7, scope: !493)
!515 = !DILocation(line: 161, column: 28, scope: !493)
!516 = !DILocalVariable(name: "program", arg: 1, scope: !517, file: !46, line: 836, type: !38)
!517 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !46, file: !46, line: 836, type: !152, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !518)
!518 = !{!516, !519, !528, !529, !531, !532}
!519 = !DILocalVariable(name: "infomap", scope: !517, file: !46, line: 838, type: !520)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 896, elements: !526)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !517, file: !46, line: 838, size: 128, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !522, file: !46, line: 838, baseType: !38, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !46, line: 838, baseType: !38, size: 64, offset: 64)
!526 = !{!527}
!527 = !DISubrange(count: 7)
!528 = !DILocalVariable(name: "node", scope: !517, file: !46, line: 848, type: !38)
!529 = !DILocalVariable(name: "map_prog", scope: !517, file: !46, line: 849, type: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!531 = !DILocalVariable(name: "lc_messages", scope: !517, file: !46, line: 861, type: !38)
!532 = !DILocalVariable(name: "url_program", scope: !517, file: !46, line: 874, type: !38)
!533 = !DILocation(line: 0, scope: !517, inlinedAt: !534)
!534 = distinct !DILocation(line: 161, column: 7, scope: !493)
!535 = !DILocation(line: 838, column: 3, scope: !517, inlinedAt: !534)
!536 = !DILocation(line: 838, column: 67, scope: !517, inlinedAt: !534)
!537 = !DILocation(line: 849, column: 36, scope: !517, inlinedAt: !534)
!538 = !DILocation(line: 851, column: 3, scope: !517, inlinedAt: !534)
!539 = !DILocalVariable(name: "__s1", arg: 1, scope: !540, file: !541, line: 1359, type: !38)
!540 = distinct !DISubprogram(name: "streq", scope: !541, file: !541, line: 1359, type: !542, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !544)
!541 = !DIFile(filename: "./lib/string.h", directory: "/src")
!542 = !DISubroutineType(types: !543)
!543 = !{!56, !38, !38}
!544 = !{!539, !545}
!545 = !DILocalVariable(name: "__s2", arg: 2, scope: !540, file: !541, line: 1359, type: !38)
!546 = !DILocation(line: 0, scope: !540, inlinedAt: !547)
!547 = distinct !DILocation(line: 851, column: 33, scope: !517, inlinedAt: !534)
!548 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !547)
!549 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !547)
!550 = !DILocation(line: 852, column: 13, scope: !517, inlinedAt: !534)
!551 = !DILocation(line: 851, column: 20, scope: !517, inlinedAt: !534)
!552 = !{!553, !489, i64 0}
!553 = !{!"infomap", !489, i64 0, !489, i64 8}
!554 = !DILocation(line: 851, column: 10, scope: !517, inlinedAt: !534)
!555 = !DILocation(line: 851, column: 28, scope: !517, inlinedAt: !534)
!556 = distinct !{!556, !538, !550, !557}
!557 = !{!"llvm.loop.mustprogress"}
!558 = !DILocation(line: 854, column: 17, scope: !559, inlinedAt: !534)
!559 = distinct !DILexicalBlock(scope: !517, file: !46, line: 854, column: 7)
!560 = !{!553, !489, i64 8}
!561 = !DILocation(line: 854, column: 7, scope: !559, inlinedAt: !534)
!562 = !DILocation(line: 854, column: 7, scope: !517, inlinedAt: !534)
!563 = !DILocation(line: 857, column: 3, scope: !517, inlinedAt: !534)
!564 = !DILocation(line: 861, column: 29, scope: !517, inlinedAt: !534)
!565 = !DILocation(line: 862, column: 7, scope: !566, inlinedAt: !534)
!566 = distinct !DILexicalBlock(scope: !517, file: !46, line: 862, column: 7)
!567 = !DILocation(line: 862, column: 19, scope: !566, inlinedAt: !534)
!568 = !DILocation(line: 862, column: 22, scope: !566, inlinedAt: !534)
!569 = !DILocation(line: 862, column: 7, scope: !517, inlinedAt: !534)
!570 = !DILocation(line: 868, column: 7, scope: !571, inlinedAt: !534)
!571 = distinct !DILexicalBlock(scope: !566, file: !46, line: 863, column: 5)
!572 = !DILocation(line: 870, column: 5, scope: !571, inlinedAt: !534)
!573 = !DILocation(line: 0, scope: !540, inlinedAt: !574)
!574 = distinct !DILocation(line: 874, column: 29, scope: !517, inlinedAt: !534)
!575 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !574)
!576 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !574)
!577 = !DILocation(line: 874, column: 29, scope: !517, inlinedAt: !534)
!578 = !DILocation(line: 875, column: 3, scope: !517, inlinedAt: !534)
!579 = !DILocation(line: 877, column: 3, scope: !517, inlinedAt: !534)
!580 = !DILocation(line: 879, column: 1, scope: !517, inlinedAt: !534)
!581 = !DILocation(line: 163, column: 3, scope: !477)
!582 = !DISubprogram(name: "dcgettext", scope: !583, file: !583, line: 51, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!583 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!584 = !DISubroutineType(types: !585)
!585 = !{!8, !38, !38, !6}
!586 = !{}
!587 = !DISubprogram(name: "fputs_unlocked", scope: !215, file: !215, line: 691, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!588 = !DISubroutineType(types: !589)
!589 = !{!6, !590, !591}
!590 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!591 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!592 = !DILocation(line: 0, scope: !45)
!593 = !DILocation(line: 581, column: 7, scope: !54)
!594 = !{!595, !595, i64 0}
!595 = !{!"int", !490, i64 0}
!596 = !DILocation(line: 581, column: 19, scope: !54)
!597 = !DILocation(line: 581, column: 7, scope: !45)
!598 = !DILocation(line: 585, column: 26, scope: !53)
!599 = !DILocation(line: 0, scope: !53)
!600 = !DILocation(line: 586, column: 23, scope: !53)
!601 = !DILocation(line: 586, column: 28, scope: !53)
!602 = !DILocation(line: 586, column: 32, scope: !53)
!603 = !DILocation(line: 586, column: 38, scope: !53)
!604 = !DILocation(line: 0, scope: !540, inlinedAt: !605)
!605 = distinct !DILocation(line: 586, column: 41, scope: !53)
!606 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !605)
!607 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !605)
!608 = !DILocation(line: 586, column: 19, scope: !53)
!609 = !DILocation(line: 587, column: 5, scope: !53)
!610 = !DILocation(line: 588, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !45, file: !46, line: 588, column: 7)
!612 = !DILocation(line: 588, column: 7, scope: !45)
!613 = !DILocation(line: 590, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !46, line: 589, column: 5)
!615 = !DILocation(line: 591, column: 7, scope: !614)
!616 = !DILocation(line: 595, column: 37, scope: !45)
!617 = !DILocation(line: 595, column: 35, scope: !45)
!618 = !DILocation(line: 596, column: 29, scope: !45)
!619 = !DILocation(line: 597, column: 8, scope: !62)
!620 = !DILocation(line: 597, column: 7, scope: !45)
!621 = !DILocation(line: 604, column: 24, scope: !61)
!622 = !DILocation(line: 604, column: 12, scope: !62)
!623 = !DILocation(line: 0, scope: !60)
!624 = !DILocation(line: 610, column: 16, scope: !60)
!625 = !DILocation(line: 610, column: 7, scope: !60)
!626 = !DILocation(line: 611, column: 21, scope: !60)
!627 = !{!628, !628, i64 0}
!628 = !{!"short", !490, i64 0}
!629 = !DILocation(line: 611, column: 19, scope: !60)
!630 = !DILocation(line: 611, column: 16, scope: !60)
!631 = !DILocation(line: 610, column: 30, scope: !60)
!632 = distinct !{!632, !625, !626, !557}
!633 = !DILocation(line: 612, column: 18, scope: !634)
!634 = distinct !DILexicalBlock(scope: !60, file: !46, line: 612, column: 11)
!635 = !DILocation(line: 612, column: 11, scope: !60)
!636 = !DILocation(line: 618, column: 5, scope: !60)
!637 = !DILocation(line: 620, column: 23, scope: !45)
!638 = !DILocation(line: 625, column: 39, scope: !45)
!639 = !DILocation(line: 626, column: 3, scope: !45)
!640 = !DILocation(line: 626, column: 10, scope: !45)
!641 = !DILocation(line: 626, column: 21, scope: !45)
!642 = !DILocation(line: 628, column: 44, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !46, line: 628, column: 11)
!644 = distinct !DILexicalBlock(scope: !45, file: !46, line: 627, column: 5)
!645 = !DILocation(line: 628, column: 32, scope: !643)
!646 = !DILocation(line: 628, column: 49, scope: !643)
!647 = !DILocation(line: 628, column: 11, scope: !644)
!648 = !DILocation(line: 630, column: 11, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !46, line: 630, column: 11)
!650 = !DILocation(line: 630, column: 11, scope: !644)
!651 = !DILocation(line: 632, column: 26, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !46, line: 632, column: 15)
!653 = distinct !DILexicalBlock(scope: !649, file: !46, line: 631, column: 9)
!654 = !DILocation(line: 632, column: 34, scope: !652)
!655 = !DILocation(line: 632, column: 37, scope: !652)
!656 = !DILocation(line: 632, column: 15, scope: !653)
!657 = !DILocation(line: 636, column: 29, scope: !658)
!658 = distinct !DILexicalBlock(scope: !653, file: !46, line: 636, column: 15)
!659 = !DILocation(line: 640, column: 16, scope: !644)
!660 = distinct !{!660, !639, !661, !557}
!661 = !DILocation(line: 641, column: 5, scope: !45)
!662 = !DILocation(line: 644, column: 3, scope: !45)
!663 = !DILocation(line: 0, scope: !540, inlinedAt: !664)
!664 = distinct !DILocation(line: 648, column: 31, scope: !45)
!665 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !664)
!666 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !664)
!667 = !DILocation(line: 648, column: 31, scope: !45)
!668 = !DILocation(line: 0, scope: !540, inlinedAt: !669)
!669 = distinct !DILocation(line: 649, column: 31, scope: !45)
!670 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !669)
!671 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !669)
!672 = !DILocation(line: 649, column: 31, scope: !45)
!673 = !DILocation(line: 0, scope: !540, inlinedAt: !674)
!674 = distinct !DILocation(line: 650, column: 31, scope: !45)
!675 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !674)
!676 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !674)
!677 = !DILocation(line: 650, column: 31, scope: !45)
!678 = !DILocation(line: 0, scope: !540, inlinedAt: !679)
!679 = distinct !DILocation(line: 651, column: 31, scope: !45)
!680 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !679)
!681 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !679)
!682 = !DILocation(line: 651, column: 31, scope: !45)
!683 = !DILocation(line: 0, scope: !540, inlinedAt: !684)
!684 = distinct !DILocation(line: 652, column: 31, scope: !45)
!685 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !684)
!686 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !684)
!687 = !DILocation(line: 652, column: 31, scope: !45)
!688 = !DILocation(line: 0, scope: !540, inlinedAt: !689)
!689 = distinct !DILocation(line: 653, column: 31, scope: !45)
!690 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !689)
!691 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !689)
!692 = !DILocation(line: 653, column: 31, scope: !45)
!693 = !DILocation(line: 0, scope: !540, inlinedAt: !694)
!694 = distinct !DILocation(line: 654, column: 31, scope: !45)
!695 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !694)
!696 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !694)
!697 = !DILocation(line: 654, column: 31, scope: !45)
!698 = !DILocation(line: 0, scope: !540, inlinedAt: !699)
!699 = distinct !DILocation(line: 655, column: 31, scope: !45)
!700 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !699)
!701 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !699)
!702 = !DILocation(line: 655, column: 31, scope: !45)
!703 = !DILocation(line: 0, scope: !540, inlinedAt: !704)
!704 = distinct !DILocation(line: 656, column: 31, scope: !45)
!705 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !704)
!706 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !704)
!707 = !DILocation(line: 656, column: 31, scope: !45)
!708 = !DILocation(line: 0, scope: !540, inlinedAt: !709)
!709 = distinct !DILocation(line: 657, column: 31, scope: !45)
!710 = !DILocation(line: 1361, column: 11, scope: !540, inlinedAt: !709)
!711 = !DILocation(line: 1361, column: 10, scope: !540, inlinedAt: !709)
!712 = !DILocation(line: 657, column: 31, scope: !45)
!713 = !DILocation(line: 663, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !45, file: !46, line: 663, column: 7)
!715 = !DILocation(line: 664, column: 7, scope: !714)
!716 = !DILocation(line: 664, column: 10, scope: !714)
!717 = !DILocation(line: 663, column: 7, scope: !45)
!718 = !DILocation(line: 669, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !46, line: 665, column: 5)
!720 = !DILocation(line: 671, column: 5, scope: !719)
!721 = !DILocation(line: 676, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !714, file: !46, line: 673, column: 5)
!723 = !DILocation(line: 679, column: 3, scope: !45)
!724 = !DILocation(line: 683, column: 3, scope: !45)
!725 = !DILocation(line: 686, column: 3, scope: !45)
!726 = !DILocation(line: 688, column: 3, scope: !45)
!727 = !DILocation(line: 691, column: 3, scope: !45)
!728 = !DILocation(line: 695, column: 3, scope: !45)
!729 = !DILocation(line: 696, column: 1, scope: !45)
!730 = !DISubprogram(name: "setlocale", scope: !731, file: !731, line: 122, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!731 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!732 = !DISubroutineType(types: !733)
!733 = !{!8, !6, !38}
!734 = !DISubprogram(name: "getenv", scope: !735, file: !735, line: 641, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!735 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!736 = !DISubroutineType(types: !737)
!737 = !{!8, !38}
!738 = !DISubprogram(name: "fwrite_unlocked", scope: !215, file: !215, line: 704, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!739 = !DISubroutineType(types: !740)
!740 = !{!35, !741, !35, !35, !591}
!741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!744 = !DILocation(line: 0, scope: !2)
!745 = !DILocation(line: 297, column: 21, scope: !2)
!746 = !DILocation(line: 297, column: 3, scope: !2)
!747 = !DILocation(line: 298, column: 3, scope: !2)
!748 = !DILocation(line: 299, column: 3, scope: !2)
!749 = !DILocation(line: 300, column: 3, scope: !2)
!750 = !DILocation(line: 302, column: 3, scope: !2)
!751 = !DILocalVariable(name: "argc", arg: 1, scope: !752, file: !3, line: 202, type: !6)
!752 = distinct !DISubprogram(name: "decode_switches", scope: !3, file: !3, line: 202, type: !4, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !753)
!753 = !{!751, !754, !755, !756}
!754 = !DILocalVariable(name: "argv", arg: 2, scope: !752, file: !3, line: 202, type: !7)
!755 = !DILocalVariable(name: "c", scope: !752, file: !3, line: 204, type: !6)
!756 = !DILocalVariable(name: "toprint", scope: !752, file: !3, line: 205, type: !14)
!757 = !DILocation(line: 0, scope: !752, inlinedAt: !758)
!758 = distinct !DILocation(line: 304, column: 13, scope: !2)
!759 = !DILocation(line: 207, column: 7, scope: !760, inlinedAt: !758)
!760 = distinct !DILexicalBlock(scope: !752, file: !3, line: 207, column: 7)
!761 = !DILocation(line: 207, column: 18, scope: !760, inlinedAt: !758)
!762 = !DILocation(line: 207, column: 7, scope: !752, inlinedAt: !758)
!763 = !DILocation(line: 209, column: 19, scope: !764, inlinedAt: !758)
!764 = distinct !DILexicalBlock(scope: !760, file: !3, line: 208, column: 5)
!765 = !DILocation(line: 209, column: 7, scope: !764, inlinedAt: !758)
!766 = !DILocation(line: 215, column: 13, scope: !767, inlinedAt: !758)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 214, column: 13)
!768 = distinct !DILexicalBlock(scope: !764, file: !3, line: 212, column: 9)
!769 = !DILocation(line: 217, column: 13, scope: !767, inlinedAt: !758)
!770 = !DILocation(line: 220, column: 15, scope: !767, inlinedAt: !758)
!771 = !DILocation(line: 227, column: 19, scope: !772, inlinedAt: !758)
!772 = distinct !DILexicalBlock(scope: !760, file: !3, line: 226, column: 5)
!773 = !DILocation(line: 227, column: 7, scope: !772, inlinedAt: !758)
!774 = !DILocation(line: 238, column: 23, scope: !775, inlinedAt: !758)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 232, column: 13)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 230, column: 9)
!777 = !DILocation(line: 239, column: 15, scope: !775, inlinedAt: !758)
!778 = !DILocation(line: 242, column: 23, scope: !775, inlinedAt: !758)
!779 = !DILocation(line: 243, column: 15, scope: !775, inlinedAt: !758)
!780 = !DILocation(line: 246, column: 23, scope: !775, inlinedAt: !758)
!781 = !DILocation(line: 247, column: 15, scope: !775, inlinedAt: !758)
!782 = !DILocation(line: 250, column: 23, scope: !775, inlinedAt: !758)
!783 = !DILocation(line: 251, column: 15, scope: !775, inlinedAt: !758)
!784 = !DILocation(line: 254, column: 23, scope: !775, inlinedAt: !758)
!785 = !DILocation(line: 255, column: 15, scope: !775, inlinedAt: !758)
!786 = !DILocation(line: 258, column: 23, scope: !775, inlinedAt: !758)
!787 = !DILocation(line: 259, column: 15, scope: !775, inlinedAt: !758)
!788 = !DILocation(line: 262, column: 23, scope: !775, inlinedAt: !758)
!789 = !DILocation(line: 263, column: 15, scope: !775, inlinedAt: !758)
!790 = !DILocation(line: 266, column: 23, scope: !775, inlinedAt: !758)
!791 = !DILocation(line: 267, column: 15, scope: !775, inlinedAt: !758)
!792 = distinct !{!792, !773, !793, !557}
!793 = !DILocation(line: 276, column: 9, scope: !772, inlinedAt: !758)
!794 = !DILocation(line: 269, column: 13, scope: !775, inlinedAt: !758)
!795 = !DILocation(line: 271, column: 13, scope: !775, inlinedAt: !758)
!796 = !DILocation(line: 274, column: 15, scope: !775, inlinedAt: !758)
!797 = !DILocation(line: 279, column: 15, scope: !798, inlinedAt: !758)
!798 = distinct !DILexicalBlock(scope: !752, file: !3, line: 279, column: 7)
!799 = !DILocation(line: 279, column: 12, scope: !798, inlinedAt: !758)
!800 = !DILocation(line: 279, column: 7, scope: !752, inlinedAt: !758)
!801 = !DILocation(line: 281, column: 7, scope: !802, inlinedAt: !758)
!802 = distinct !DILexicalBlock(scope: !798, file: !3, line: 280, column: 5)
!803 = !DILocation(line: 282, column: 7, scope: !802, inlinedAt: !758)
!804 = !DILocation(line: 306, column: 15, scope: !805)
!805 = distinct !DILexicalBlock(scope: !2, file: !3, line: 306, column: 7)
!806 = !DILocation(line: 306, column: 7, scope: !2)
!807 = !DILocation(line: 310, column: 8, scope: !162)
!808 = !DILocation(line: 309, column: 7, scope: !2)
!809 = !DILocation(line: 313, column: 7, scope: !161)
!810 = !DILocation(line: 313, column: 22, scope: !161)
!811 = !DILocation(line: 315, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !161, file: !3, line: 315, column: 11)
!813 = !DILocation(line: 315, column: 25, scope: !812)
!814 = !DILocation(line: 315, column: 11, scope: !161)
!815 = !DILocation(line: 316, column: 9, scope: !812)
!816 = !DILocation(line: 318, column: 19, scope: !817)
!817 = distinct !DILexicalBlock(scope: !161, file: !3, line: 318, column: 11)
!818 = !DILocation(line: 318, column: 11, scope: !161)
!819 = !DILocalVariable(name: "element", arg: 1, scope: !820, file: !3, line: 184, type: !38)
!820 = distinct !DISubprogram(name: "print_element_env", scope: !3, file: !3, line: 184, type: !47, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !821)
!821 = !{!819, !822}
!822 = !DILocalVariable(name: "envvar", arg: 2, scope: !820, file: !3, line: 184, type: !38)
!823 = !DILocation(line: 0, scope: !820, inlinedAt: !824)
!824 = distinct !DILocation(line: 319, column: 9, scope: !817)
!825 = !DILocation(line: 0, scope: !151, inlinedAt: !826)
!826 = distinct !DILocation(line: 194, column: 3, scope: !820, inlinedAt: !824)
!827 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !826)
!828 = distinct !DILexicalBlock(scope: !151, file: !3, line: 173, column: 7)
!829 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !826)
!830 = !DILocalVariable(name: "__c", arg: 1, scope: !831, file: !832, line: 108, type: !6)
!831 = distinct !DISubprogram(name: "putchar_unlocked", scope: !832, file: !832, line: 108, type: !833, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !835)
!832 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!833 = !DISubroutineType(types: !834)
!834 = !{!6, !6}
!835 = !{!830}
!836 = !DILocation(line: 0, scope: !831, inlinedAt: !837)
!837 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !826)
!838 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !837)
!839 = !{!840, !489, i64 40}
!840 = !{!"_IO_FILE", !595, i64 0, !489, i64 8, !489, i64 16, !489, i64 24, !489, i64 32, !489, i64 40, !489, i64 48, !489, i64 56, !489, i64 64, !489, i64 72, !489, i64 80, !489, i64 88, !489, i64 96, !489, i64 104, !595, i64 112, !595, i64 116, !841, i64 120, !628, i64 128, !490, i64 130, !490, i64 131, !489, i64 136, !841, i64 144, !489, i64 152, !489, i64 160, !489, i64 168, !489, i64 176, !841, i64 184, !595, i64 192, !490, i64 196}
!841 = !{!"long", !490, i64 0}
!842 = !{!840, !489, i64 48}
!843 = !{!"branch_weights", i32 2000, i32 1}
!844 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !826)
!845 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !826)
!846 = !DILocation(line: 319, column: 9, scope: !817)
!847 = !DILocation(line: 320, column: 19, scope: !848)
!848 = distinct !DILexicalBlock(scope: !161, file: !3, line: 320, column: 11)
!849 = !DILocation(line: 320, column: 11, scope: !161)
!850 = !DILocation(line: 321, column: 28, scope: !848)
!851 = !DILocation(line: 0, scope: !820, inlinedAt: !852)
!852 = distinct !DILocation(line: 321, column: 9, scope: !848)
!853 = !DILocation(line: 0, scope: !151, inlinedAt: !854)
!854 = distinct !DILocation(line: 194, column: 3, scope: !820, inlinedAt: !852)
!855 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !854)
!856 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !854)
!857 = !DILocation(line: 0, scope: !831, inlinedAt: !858)
!858 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !854)
!859 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !858)
!860 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !854)
!861 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !854)
!862 = !DILocation(line: 321, column: 9, scope: !848)
!863 = !DILocation(line: 322, column: 19, scope: !864)
!864 = distinct !DILexicalBlock(scope: !161, file: !3, line: 322, column: 11)
!865 = !DILocation(line: 322, column: 11, scope: !161)
!866 = !DILocation(line: 323, column: 28, scope: !864)
!867 = !DILocation(line: 0, scope: !820, inlinedAt: !868)
!868 = distinct !DILocation(line: 323, column: 9, scope: !864)
!869 = !DILocation(line: 0, scope: !151, inlinedAt: !870)
!870 = distinct !DILocation(line: 194, column: 3, scope: !820, inlinedAt: !868)
!871 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !870)
!872 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !870)
!873 = !DILocation(line: 0, scope: !831, inlinedAt: !874)
!874 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !870)
!875 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !874)
!876 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !870)
!877 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !870)
!878 = !DILocation(line: 323, column: 9, scope: !864)
!879 = !DILocation(line: 324, column: 19, scope: !880)
!880 = distinct !DILexicalBlock(scope: !161, file: !3, line: 324, column: 11)
!881 = !DILocation(line: 324, column: 11, scope: !161)
!882 = !DILocation(line: 325, column: 28, scope: !880)
!883 = !DILocation(line: 0, scope: !820, inlinedAt: !884)
!884 = distinct !DILocation(line: 325, column: 9, scope: !880)
!885 = !DILocation(line: 0, scope: !151, inlinedAt: !886)
!886 = distinct !DILocation(line: 194, column: 3, scope: !820, inlinedAt: !884)
!887 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !886)
!888 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !886)
!889 = !DILocation(line: 0, scope: !831, inlinedAt: !890)
!890 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !886)
!891 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !890)
!892 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !886)
!893 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !886)
!894 = !DILocation(line: 325, column: 9, scope: !880)
!895 = !DILocation(line: 326, column: 19, scope: !896)
!896 = distinct !DILexicalBlock(scope: !161, file: !3, line: 326, column: 11)
!897 = !DILocation(line: 326, column: 11, scope: !161)
!898 = !DILocation(line: 327, column: 28, scope: !896)
!899 = !DILocation(line: 0, scope: !820, inlinedAt: !900)
!900 = distinct !DILocation(line: 327, column: 9, scope: !896)
!901 = !DILocation(line: 0, scope: !151, inlinedAt: !902)
!902 = distinct !DILocation(line: 194, column: 3, scope: !820, inlinedAt: !900)
!903 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !902)
!904 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !902)
!905 = !DILocation(line: 0, scope: !831, inlinedAt: !906)
!906 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !902)
!907 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !906)
!908 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !902)
!909 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !902)
!910 = !DILocation(line: 327, column: 9, scope: !896)
!911 = !DILocation(line: 328, column: 5, scope: !162)
!912 = !DILocation(line: 328, column: 5, scope: !161)
!913 = !DILocation(line: 330, column: 15, scope: !177)
!914 = !DILocation(line: 330, column: 7, scope: !2)
!915 = !DILocation(line: 0, scope: !176)
!916 = !DILocation(line: 0, scope: !151, inlinedAt: !917)
!917 = distinct !DILocation(line: 361, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !176, file: !3, line: 360, column: 11)
!919 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !917)
!920 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !917)
!921 = !DILocation(line: 0, scope: !831, inlinedAt: !922)
!922 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !917)
!923 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !922)
!924 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !917)
!925 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !917)
!926 = !DILocation(line: 361, column: 9, scope: !918)
!927 = !DILocation(line: 364, column: 15, scope: !180)
!928 = !DILocation(line: 364, column: 7, scope: !2)
!929 = !DILocation(line: 0, scope: !179)
!930 = !DILocation(line: 0, scope: !151, inlinedAt: !931)
!931 = distinct !DILocation(line: 386, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !179, file: !3, line: 385, column: 11)
!933 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !931)
!934 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !931)
!935 = !DILocation(line: 0, scope: !831, inlinedAt: !936)
!936 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !931)
!937 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !936)
!938 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !931)
!939 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !931)
!940 = !DILocation(line: 386, column: 9, scope: !932)
!941 = !DILocation(line: 389, column: 15, scope: !942)
!942 = distinct !DILexicalBlock(scope: !2, file: !3, line: 389, column: 7)
!943 = !DILocation(line: 389, column: 7, scope: !2)
!944 = !DILocation(line: 0, scope: !151, inlinedAt: !945)
!945 = distinct !DILocation(line: 390, column: 5, scope: !942)
!946 = !DILocation(line: 173, column: 7, scope: !828, inlinedAt: !945)
!947 = !DILocation(line: 173, column: 7, scope: !151, inlinedAt: !945)
!948 = !DILocation(line: 0, scope: !831, inlinedAt: !949)
!949 = distinct !DILocation(line: 174, column: 5, scope: !828, inlinedAt: !945)
!950 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !949)
!951 = !DILocation(line: 175, column: 11, scope: !151, inlinedAt: !945)
!952 = !DILocation(line: 176, column: 3, scope: !151, inlinedAt: !945)
!953 = !DILocation(line: 390, column: 5, scope: !942)
!954 = !DILocation(line: 0, scope: !831, inlinedAt: !955)
!955 = distinct !DILocation(line: 392, column: 3, scope: !2)
!956 = !DILocation(line: 110, column: 10, scope: !831, inlinedAt: !955)
!957 = !DILocation(line: 394, column: 3, scope: !2)
!958 = !DISubprogram(name: "bindtextdomain", scope: !583, file: !583, line: 86, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!959 = !DISubroutineType(types: !960)
!960 = !{!8, !38, !38}
!961 = !DISubprogram(name: "textdomain", scope: !583, file: !583, line: 82, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!962 = !DISubprogram(name: "atexit", scope: !735, file: !735, line: 602, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!963 = !DISubroutineType(types: !964)
!964 = !{!6, !241}
!965 = !DISubprogram(name: "getopt_long", scope: !135, file: !135, line: 66, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!966 = !DISubroutineType(types: !967)
!967 = !{!6, !6, !968, !38, !970, !140}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!971 = !DISubprogram(name: "uname", scope: !164, file: !164, line: 81, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!972 = !DISubroutineType(types: !973)
!973 = !{!6, !974}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!975 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !199, file: !199, line: 50, type: !152, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !976)
!976 = !{!977}
!977 = !DILocalVariable(name: "file", arg: 1, scope: !975, file: !199, line: 50, type: !38)
!978 = !DILocation(line: 0, scope: !975)
!979 = !DILocation(line: 52, column: 13, scope: !975)
!980 = !DILocation(line: 53, column: 1, scope: !975)
!981 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !199, file: !199, line: 87, type: !982, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !56}
!984 = !{!985}
!985 = !DILocalVariable(name: "ignore", arg: 1, scope: !981, file: !199, line: 87, type: !56)
!986 = !DILocation(line: 0, scope: !981)
!987 = !DILocation(line: 89, column: 16, scope: !981)
!988 = !{!989, !989, i64 0}
!989 = !{!"_Bool", !490, i64 0}
!990 = !DILocation(line: 90, column: 1, scope: !981)
!991 = distinct !DISubprogram(name: "close_stdout", scope: !199, file: !199, line: 116, type: !242, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !992)
!992 = !{!993}
!993 = !DILocalVariable(name: "write_error", scope: !994, file: !199, line: 121, type: !38)
!994 = distinct !DILexicalBlock(scope: !995, file: !199, line: 120, column: 5)
!995 = distinct !DILexicalBlock(scope: !991, file: !199, line: 118, column: 7)
!996 = !DILocation(line: 118, column: 21, scope: !995)
!997 = !DILocation(line: 118, column: 7, scope: !995)
!998 = !DILocation(line: 118, column: 29, scope: !995)
!999 = !DILocation(line: 119, column: 7, scope: !995)
!1000 = !DILocation(line: 119, column: 12, scope: !995)
!1001 = !{i8 0, i8 2}
!1002 = !DILocation(line: 119, column: 25, scope: !995)
!1003 = !DILocation(line: 119, column: 28, scope: !995)
!1004 = !DILocation(line: 119, column: 34, scope: !995)
!1005 = !DILocation(line: 118, column: 7, scope: !991)
!1006 = !DILocation(line: 121, column: 33, scope: !994)
!1007 = !DILocation(line: 0, scope: !994)
!1008 = !DILocation(line: 122, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !994, file: !199, line: 122, column: 11)
!1010 = !DILocation(line: 0, scope: !1009)
!1011 = !DILocation(line: 122, column: 11, scope: !994)
!1012 = !DILocation(line: 123, column: 9, scope: !1009)
!1013 = !DILocation(line: 126, column: 9, scope: !1009)
!1014 = !DILocation(line: 128, column: 14, scope: !994)
!1015 = !DILocation(line: 128, column: 7, scope: !994)
!1016 = !DILocation(line: 133, column: 42, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !991, file: !199, line: 133, column: 7)
!1018 = !DILocation(line: 133, column: 28, scope: !1017)
!1019 = !DILocation(line: 133, column: 50, scope: !1017)
!1020 = !DILocation(line: 133, column: 7, scope: !991)
!1021 = !DILocation(line: 134, column: 12, scope: !1017)
!1022 = !DILocation(line: 134, column: 5, scope: !1017)
!1023 = !DILocation(line: 135, column: 1, scope: !991)
!1024 = distinct !DISubprogram(name: "verror", scope: !206, file: !206, line: 251, type: !1025, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !6, !6, !38, !214}
!1027 = !{!1028, !1029, !1030, !1031}
!1028 = !DILocalVariable(name: "status", arg: 1, scope: !1024, file: !206, line: 251, type: !6)
!1029 = !DILocalVariable(name: "errnum", arg: 2, scope: !1024, file: !206, line: 251, type: !6)
!1030 = !DILocalVariable(name: "message", arg: 3, scope: !1024, file: !206, line: 251, type: !38)
!1031 = !DILocalVariable(name: "args", arg: 4, scope: !1024, file: !206, line: 251, type: !214)
!1032 = !DILocation(line: 0, scope: !1024)
!1033 = !DILocation(line: 251, column: 1, scope: !1024)
!1034 = !DILocation(line: 261, column: 3, scope: !1024)
!1035 = !DILocation(line: 265, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1024, file: !206, line: 265, column: 7)
!1037 = !DILocation(line: 265, column: 7, scope: !1024)
!1038 = !DILocation(line: 266, column: 5, scope: !1036)
!1039 = !DILocation(line: 272, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !206, line: 268, column: 5)
!1041 = !DILocation(line: 276, column: 3, scope: !1024)
!1042 = !{i64 0, i64 8, !488, i64 8, i64 8, !488, i64 16, i64 8, !488, i64 24, i64 4, !594, i64 28, i64 4, !594}
!1043 = !DILocation(line: 282, column: 1, scope: !1024)
!1044 = distinct !DISubprogram(name: "flush_stdout", scope: !206, file: !206, line: 163, type: !242, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1045)
!1045 = !{!1046}
!1046 = !DILocalVariable(name: "stdout_fd", scope: !1044, file: !206, line: 166, type: !6)
!1047 = !DILocation(line: 0, scope: !1044)
!1048 = !DILocalVariable(name: "fd", arg: 1, scope: !1049, file: !206, line: 145, type: !6)
!1049 = distinct !DISubprogram(name: "is_open", scope: !206, file: !206, line: 145, type: !833, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1050)
!1050 = !{!1048}
!1051 = !DILocation(line: 0, scope: !1049, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 182, column: 25, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !206, line: 182, column: 7)
!1054 = !DILocation(line: 157, column: 15, scope: !1049, inlinedAt: !1052)
!1055 = !DILocation(line: 182, column: 25, scope: !1053)
!1056 = !DILocation(line: 182, column: 7, scope: !1044)
!1057 = !DILocation(line: 184, column: 5, scope: !1053)
!1058 = !DILocation(line: 185, column: 1, scope: !1044)
!1059 = distinct !DISubprogram(name: "error_tail", scope: !206, file: !206, line: 219, type: !1025, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1060)
!1060 = !{!1061, !1062, !1063, !1064}
!1061 = !DILocalVariable(name: "status", arg: 1, scope: !1059, file: !206, line: 219, type: !6)
!1062 = !DILocalVariable(name: "errnum", arg: 2, scope: !1059, file: !206, line: 219, type: !6)
!1063 = !DILocalVariable(name: "message", arg: 3, scope: !1059, file: !206, line: 219, type: !38)
!1064 = !DILocalVariable(name: "args", arg: 4, scope: !1059, file: !206, line: 219, type: !214)
!1065 = !DILocation(line: 0, scope: !1059)
!1066 = !DILocation(line: 219, column: 1, scope: !1059)
!1067 = !DILocation(line: 229, column: 13, scope: !1059)
!1068 = !DILocation(line: 229, column: 3, scope: !1059)
!1069 = !DILocalVariable(name: "__stream", arg: 1, scope: !1070, file: !1071, line: 132, type: !1074)
!1070 = distinct !DISubprogram(name: "vfprintf", scope: !1071, file: !1071, line: 132, type: !1072, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1109)
!1071 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!6, !1074, !590, !216}
!1074 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1077, file: !73, line: 51, baseType: !6, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1077, file: !73, line: 54, baseType: !8, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1077, file: !73, line: 55, baseType: !8, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1077, file: !73, line: 56, baseType: !8, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1077, file: !73, line: 57, baseType: !8, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1077, file: !73, line: 58, baseType: !8, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1077, file: !73, line: 59, baseType: !8, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1077, file: !73, line: 60, baseType: !8, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1077, file: !73, line: 61, baseType: !8, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1077, file: !73, line: 64, baseType: !8, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1077, file: !73, line: 65, baseType: !8, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1077, file: !73, line: 66, baseType: !8, size: 64, offset: 704)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1077, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1077, file: !73, line: 70, baseType: !1093, size: 64, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1077, file: !73, line: 72, baseType: !6, size: 32, offset: 896)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1077, file: !73, line: 73, baseType: !6, size: 32, offset: 928)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1077, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1077, file: !73, line: 77, baseType: !34, size: 16, offset: 1024)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1077, file: !73, line: 78, baseType: !100, size: 8, offset: 1040)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1077, file: !73, line: 79, baseType: !102, size: 8, offset: 1048)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1077, file: !73, line: 81, baseType: !106, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1077, file: !73, line: 89, baseType: !109, size: 64, offset: 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1077, file: !73, line: 91, baseType: !111, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1077, file: !73, line: 92, baseType: !114, size: 64, offset: 1280)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1077, file: !73, line: 93, baseType: !1093, size: 64, offset: 1344)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1077, file: !73, line: 94, baseType: !41, size: 64, offset: 1408)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1077, file: !73, line: 95, baseType: !35, size: 64, offset: 1472)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1077, file: !73, line: 96, baseType: !6, size: 32, offset: 1536)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1077, file: !73, line: 98, baseType: !121, size: 160, offset: 1568)
!1109 = !{!1069, !1110, !1111}
!1110 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1070, file: !1071, line: 133, type: !590)
!1111 = !DILocalVariable(name: "__ap", arg: 3, scope: !1070, file: !1071, line: 133, type: !216)
!1112 = !DILocation(line: 0, scope: !1070, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 229, column: 3, scope: !1059)
!1114 = !DILocation(line: 135, column: 10, scope: !1070, inlinedAt: !1113)
!1115 = !{!1116, !1118}
!1116 = distinct !{!1116, !1117, !"vfprintf.inline: argument 0"}
!1117 = distinct !{!1117, !"vfprintf.inline"}
!1118 = distinct !{!1118, !1117, !"vfprintf.inline: argument 1"}
!1119 = !DILocation(line: 232, column: 3, scope: !1059)
!1120 = !DILocation(line: 233, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1059, file: !206, line: 233, column: 7)
!1122 = !DILocation(line: 233, column: 7, scope: !1059)
!1123 = !DILocalVariable(name: "errnum", arg: 1, scope: !1124, file: !206, line: 188, type: !6)
!1124 = distinct !DISubprogram(name: "print_errno_message", scope: !206, file: !206, line: 188, type: !478, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1125)
!1125 = !{!1123, !1126, !1127}
!1126 = !DILocalVariable(name: "s", scope: !1124, file: !206, line: 190, type: !38)
!1127 = !DILocalVariable(name: "errbuf", scope: !1124, file: !206, line: 193, type: !1128)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 1024)
!1131 = !DILocation(line: 0, scope: !1124, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 234, column: 5, scope: !1121)
!1133 = !DILocation(line: 193, column: 3, scope: !1124, inlinedAt: !1132)
!1134 = !DILocation(line: 193, column: 8, scope: !1124, inlinedAt: !1132)
!1135 = !DILocation(line: 195, column: 7, scope: !1124, inlinedAt: !1132)
!1136 = !DILocation(line: 207, column: 9, scope: !1137, inlinedAt: !1132)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !206, line: 207, column: 7)
!1138 = !DILocation(line: 207, column: 7, scope: !1124, inlinedAt: !1132)
!1139 = !DILocation(line: 208, column: 9, scope: !1137, inlinedAt: !1132)
!1140 = !DILocation(line: 208, column: 5, scope: !1137, inlinedAt: !1132)
!1141 = !DILocation(line: 214, column: 3, scope: !1124, inlinedAt: !1132)
!1142 = !DILocation(line: 216, column: 1, scope: !1124, inlinedAt: !1132)
!1143 = !DILocation(line: 234, column: 5, scope: !1121)
!1144 = !DILocation(line: 238, column: 3, scope: !1059)
!1145 = !DILocalVariable(name: "__c", arg: 1, scope: !1146, file: !832, line: 101, type: !6)
!1146 = distinct !DISubprogram(name: "putc_unlocked", scope: !832, file: !832, line: 101, type: !1147, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!6, !6, !1075}
!1149 = !{!1145, !1150}
!1150 = !DILocalVariable(name: "__stream", arg: 2, scope: !1146, file: !832, line: 101, type: !1075)
!1151 = !DILocation(line: 0, scope: !1146, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 238, column: 3, scope: !1059)
!1153 = !DILocation(line: 103, column: 10, scope: !1146, inlinedAt: !1152)
!1154 = !DILocation(line: 240, column: 3, scope: !1059)
!1155 = !DILocation(line: 241, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1059, file: !206, line: 241, column: 7)
!1157 = !DILocation(line: 241, column: 7, scope: !1059)
!1158 = !DILocation(line: 242, column: 5, scope: !1156)
!1159 = !DILocation(line: 243, column: 1, scope: !1059)
!1160 = !DISubprogram(name: "strerror_r", scope: !1161, file: !1161, line: 444, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1161 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!8, !6, !8, !35}
!1164 = !DISubprogram(name: "fflush_unlocked", scope: !215, file: !215, line: 239, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!6, !1075}
!1167 = !DISubprogram(name: "fcntl", scope: !1168, file: !1168, line: 149, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1168 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!6, !6, !6, null}
!1171 = distinct !DISubprogram(name: "error", scope: !206, file: !206, line: 285, type: !1172, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !6, !6, !38, null}
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DILocalVariable(name: "status", arg: 1, scope: !1171, file: !206, line: 285, type: !6)
!1176 = !DILocalVariable(name: "errnum", arg: 2, scope: !1171, file: !206, line: 285, type: !6)
!1177 = !DILocalVariable(name: "message", arg: 3, scope: !1171, file: !206, line: 285, type: !38)
!1178 = !DILocalVariable(name: "ap", scope: !1171, file: !206, line: 287, type: !214)
!1179 = !DILocation(line: 0, scope: !1171)
!1180 = !DILocation(line: 287, column: 3, scope: !1171)
!1181 = !DILocation(line: 287, column: 11, scope: !1171)
!1182 = !DILocation(line: 288, column: 3, scope: !1171)
!1183 = !DILocation(line: 289, column: 3, scope: !1171)
!1184 = !DILocation(line: 290, column: 3, scope: !1171)
!1185 = !DILocation(line: 291, column: 1, scope: !1171)
!1186 = !DILocation(line: 0, scope: !211)
!1187 = !DILocation(line: 298, column: 1, scope: !211)
!1188 = !DILocation(line: 302, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !211, file: !206, line: 302, column: 7)
!1190 = !DILocation(line: 302, column: 7, scope: !211)
!1191 = !DILocation(line: 307, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !206, line: 307, column: 11)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !206, line: 303, column: 5)
!1194 = !DILocation(line: 307, column: 27, scope: !1192)
!1195 = !DILocation(line: 308, column: 11, scope: !1192)
!1196 = !DILocation(line: 308, column: 28, scope: !1192)
!1197 = !DILocation(line: 308, column: 25, scope: !1192)
!1198 = !DILocation(line: 309, column: 15, scope: !1192)
!1199 = !DILocation(line: 309, column: 33, scope: !1192)
!1200 = !DILocation(line: 310, column: 19, scope: !1192)
!1201 = !DILocation(line: 311, column: 22, scope: !1192)
!1202 = !DILocation(line: 311, column: 56, scope: !1192)
!1203 = !DILocation(line: 307, column: 11, scope: !1193)
!1204 = !DILocation(line: 316, column: 21, scope: !1193)
!1205 = !DILocation(line: 317, column: 23, scope: !1193)
!1206 = !DILocation(line: 318, column: 5, scope: !1193)
!1207 = !DILocation(line: 327, column: 3, scope: !211)
!1208 = !DILocation(line: 331, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !211, file: !206, line: 331, column: 7)
!1210 = !DILocation(line: 331, column: 7, scope: !211)
!1211 = !DILocation(line: 332, column: 5, scope: !1209)
!1212 = !DILocation(line: 338, column: 7, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !206, line: 334, column: 5)
!1214 = !DILocation(line: 346, column: 3, scope: !211)
!1215 = !DILocation(line: 350, column: 3, scope: !211)
!1216 = !DILocation(line: 356, column: 1, scope: !211)
!1217 = distinct !DISubprogram(name: "error_at_line", scope: !206, file: !206, line: 359, type: !1218, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !6, !6, !38, !14, !38, null}
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226}
!1221 = !DILocalVariable(name: "status", arg: 1, scope: !1217, file: !206, line: 359, type: !6)
!1222 = !DILocalVariable(name: "errnum", arg: 2, scope: !1217, file: !206, line: 359, type: !6)
!1223 = !DILocalVariable(name: "file_name", arg: 3, scope: !1217, file: !206, line: 359, type: !38)
!1224 = !DILocalVariable(name: "line_number", arg: 4, scope: !1217, file: !206, line: 360, type: !14)
!1225 = !DILocalVariable(name: "message", arg: 5, scope: !1217, file: !206, line: 360, type: !38)
!1226 = !DILocalVariable(name: "ap", scope: !1217, file: !206, line: 362, type: !214)
!1227 = !DILocation(line: 0, scope: !1217)
!1228 = !DILocation(line: 362, column: 3, scope: !1217)
!1229 = !DILocation(line: 362, column: 11, scope: !1217)
!1230 = !DILocation(line: 363, column: 3, scope: !1217)
!1231 = !DILocation(line: 364, column: 3, scope: !1217)
!1232 = !DILocation(line: 366, column: 3, scope: !1217)
!1233 = !DILocation(line: 367, column: 1, scope: !1217)
!1234 = distinct !DISubprogram(name: "getprogname", scope: !404, file: !404, line: 54, type: !1235, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !586)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!38}
!1237 = !DILocation(line: 58, column: 10, scope: !1234)
!1238 = !DILocation(line: 58, column: 3, scope: !1234)
!1239 = distinct !DISubprogram(name: "set_program_name", scope: !247, file: !247, line: 37, type: !152, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !1240)
!1240 = !{!1241, !1242, !1243}
!1241 = !DILocalVariable(name: "argv0", arg: 1, scope: !1239, file: !247, line: 37, type: !38)
!1242 = !DILocalVariable(name: "slash", scope: !1239, file: !247, line: 44, type: !38)
!1243 = !DILocalVariable(name: "base", scope: !1239, file: !247, line: 45, type: !38)
!1244 = !DILocation(line: 0, scope: !1239)
!1245 = !DILocation(line: 44, column: 23, scope: !1239)
!1246 = !DILocation(line: 45, column: 22, scope: !1239)
!1247 = !DILocation(line: 46, column: 17, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !247, line: 46, column: 7)
!1249 = !DILocation(line: 46, column: 9, scope: !1248)
!1250 = !DILocation(line: 46, column: 25, scope: !1248)
!1251 = !DILocation(line: 46, column: 40, scope: !1248)
!1252 = !DILocalVariable(name: "__s1", arg: 1, scope: !1253, file: !541, line: 974, type: !742)
!1253 = distinct !DISubprogram(name: "memeq", scope: !541, file: !541, line: 974, type: !1254, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!56, !742, !742, !35}
!1256 = !{!1252, !1257, !1258}
!1257 = !DILocalVariable(name: "__s2", arg: 2, scope: !1253, file: !541, line: 974, type: !742)
!1258 = !DILocalVariable(name: "__n", arg: 3, scope: !1253, file: !541, line: 974, type: !35)
!1259 = !DILocation(line: 0, scope: !1253, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 46, column: 28, scope: !1248)
!1261 = !DILocation(line: 976, column: 11, scope: !1253, inlinedAt: !1260)
!1262 = !DILocation(line: 976, column: 10, scope: !1253, inlinedAt: !1260)
!1263 = !DILocation(line: 46, column: 7, scope: !1239)
!1264 = !DILocation(line: 49, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !247, line: 49, column: 11)
!1266 = distinct !DILexicalBlock(scope: !1248, file: !247, line: 47, column: 5)
!1267 = !DILocation(line: 49, column: 36, scope: !1265)
!1268 = !DILocation(line: 49, column: 11, scope: !1266)
!1269 = !DILocation(line: 65, column: 16, scope: !1239)
!1270 = !DILocation(line: 71, column: 27, scope: !1239)
!1271 = !DILocation(line: 74, column: 33, scope: !1239)
!1272 = !DILocation(line: 76, column: 1, scope: !1239)
!1273 = !DILocation(line: 0, scope: !252)
!1274 = !DILocation(line: 40, column: 29, scope: !252)
!1275 = !DILocation(line: 41, column: 19, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !252, file: !253, line: 41, column: 7)
!1277 = !DILocation(line: 41, column: 7, scope: !252)
!1278 = !DILocation(line: 47, column: 3, scope: !252)
!1279 = !DILocation(line: 48, column: 3, scope: !252)
!1280 = !DILocation(line: 48, column: 13, scope: !252)
!1281 = !DILocalVariable(name: "ps", arg: 1, scope: !1282, file: !1283, line: 1135, type: !1286)
!1282 = distinct !DISubprogram(name: "mbszero", scope: !1283, file: !1283, line: 1135, type: !1284, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !1287)
!1283 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1287 = !{!1281}
!1288 = !DILocation(line: 0, scope: !1282, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 48, column: 18, scope: !252)
!1290 = !DILocalVariable(name: "__dest", arg: 1, scope: !1291, file: !1292, line: 57, type: !41)
!1291 = distinct !DISubprogram(name: "memset", scope: !1292, file: !1292, line: 57, type: !1293, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !1295)
!1292 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!41, !41, !6, !35}
!1295 = !{!1290, !1296, !1297}
!1296 = !DILocalVariable(name: "__ch", arg: 2, scope: !1291, file: !1292, line: 57, type: !6)
!1297 = !DILocalVariable(name: "__len", arg: 3, scope: !1291, file: !1292, line: 57, type: !35)
!1298 = !DILocation(line: 0, scope: !1291, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 1137, column: 3, scope: !1282, inlinedAt: !1289)
!1300 = !DILocation(line: 59, column: 10, scope: !1291, inlinedAt: !1299)
!1301 = !DILocation(line: 49, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !252, file: !253, line: 49, column: 7)
!1303 = !DILocation(line: 49, column: 39, scope: !1302)
!1304 = !DILocation(line: 49, column: 44, scope: !1302)
!1305 = !DILocation(line: 54, column: 1, scope: !252)
!1306 = !DISubprogram(name: "mbrtoc32", scope: !264, file: !264, line: 57, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!35, !1309, !590, !35, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1286)
!1312 = distinct !DISubprogram(name: "clone_quoting_options", scope: !289, file: !289, line: 113, type: !1313, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1316)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1315, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1316 = !{!1317, !1318, !1319}
!1317 = !DILocalVariable(name: "o", arg: 1, scope: !1312, file: !289, line: 113, type: !1315)
!1318 = !DILocalVariable(name: "saved_errno", scope: !1312, file: !289, line: 115, type: !6)
!1319 = !DILocalVariable(name: "p", scope: !1312, file: !289, line: 116, type: !1315)
!1320 = !DILocation(line: 0, scope: !1312)
!1321 = !DILocation(line: 115, column: 21, scope: !1312)
!1322 = !DILocation(line: 116, column: 40, scope: !1312)
!1323 = !DILocation(line: 116, column: 31, scope: !1312)
!1324 = !DILocation(line: 118, column: 9, scope: !1312)
!1325 = !DILocation(line: 119, column: 3, scope: !1312)
!1326 = distinct !DISubprogram(name: "get_quoting_style", scope: !289, file: !289, line: 124, type: !1327, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1331)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!291, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "o", arg: 1, scope: !1326, file: !289, line: 124, type: !1329)
!1333 = !DILocation(line: 0, scope: !1326)
!1334 = !DILocation(line: 126, column: 11, scope: !1326)
!1335 = !DILocation(line: 126, column: 46, scope: !1326)
!1336 = !{!1337, !490, i64 0}
!1337 = !{!"quoting_options", !490, i64 0, !595, i64 4, !490, i64 8, !489, i64 40, !489, i64 48}
!1338 = !DILocation(line: 126, column: 3, scope: !1326)
!1339 = distinct !DISubprogram(name: "set_quoting_style", scope: !289, file: !289, line: 132, type: !1340, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !1315, !291}
!1342 = !{!1343, !1344}
!1343 = !DILocalVariable(name: "o", arg: 1, scope: !1339, file: !289, line: 132, type: !1315)
!1344 = !DILocalVariable(name: "s", arg: 2, scope: !1339, file: !289, line: 132, type: !291)
!1345 = !DILocation(line: 0, scope: !1339)
!1346 = !DILocation(line: 134, column: 4, scope: !1339)
!1347 = !DILocation(line: 134, column: 39, scope: !1339)
!1348 = !DILocation(line: 134, column: 45, scope: !1339)
!1349 = !DILocation(line: 135, column: 1, scope: !1339)
!1350 = distinct !DISubprogram(name: "set_char_quoting", scope: !289, file: !289, line: 143, type: !1351, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!6, !1315, !9, !6}
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1360, !1361}
!1354 = !DILocalVariable(name: "o", arg: 1, scope: !1350, file: !289, line: 143, type: !1315)
!1355 = !DILocalVariable(name: "c", arg: 2, scope: !1350, file: !289, line: 143, type: !9)
!1356 = !DILocalVariable(name: "i", arg: 3, scope: !1350, file: !289, line: 143, type: !6)
!1357 = !DILocalVariable(name: "uc", scope: !1350, file: !289, line: 145, type: !40)
!1358 = !DILocalVariable(name: "p", scope: !1350, file: !289, line: 146, type: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1360 = !DILocalVariable(name: "shift", scope: !1350, file: !289, line: 148, type: !6)
!1361 = !DILocalVariable(name: "r", scope: !1350, file: !289, line: 149, type: !14)
!1362 = !DILocation(line: 0, scope: !1350)
!1363 = !DILocation(line: 147, column: 6, scope: !1350)
!1364 = !DILocation(line: 147, column: 62, scope: !1350)
!1365 = !DILocation(line: 147, column: 57, scope: !1350)
!1366 = !DILocation(line: 148, column: 15, scope: !1350)
!1367 = !DILocation(line: 149, column: 21, scope: !1350)
!1368 = !DILocation(line: 149, column: 24, scope: !1350)
!1369 = !DILocation(line: 149, column: 34, scope: !1350)
!1370 = !DILocation(line: 150, column: 13, scope: !1350)
!1371 = !DILocation(line: 150, column: 19, scope: !1350)
!1372 = !DILocation(line: 150, column: 24, scope: !1350)
!1373 = !DILocation(line: 150, column: 6, scope: !1350)
!1374 = !DILocation(line: 151, column: 3, scope: !1350)
!1375 = distinct !DISubprogram(name: "set_quoting_flags", scope: !289, file: !289, line: 159, type: !1376, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!6, !1315, !6}
!1378 = !{!1379, !1380, !1381}
!1379 = !DILocalVariable(name: "o", arg: 1, scope: !1375, file: !289, line: 159, type: !1315)
!1380 = !DILocalVariable(name: "i", arg: 2, scope: !1375, file: !289, line: 159, type: !6)
!1381 = !DILocalVariable(name: "r", scope: !1375, file: !289, line: 163, type: !6)
!1382 = !DILocation(line: 0, scope: !1375)
!1383 = !DILocation(line: 161, column: 8, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1375, file: !289, line: 161, column: 7)
!1385 = !DILocation(line: 161, column: 7, scope: !1375)
!1386 = !DILocation(line: 163, column: 14, scope: !1375)
!1387 = !{!1337, !595, i64 4}
!1388 = !DILocation(line: 164, column: 12, scope: !1375)
!1389 = !DILocation(line: 165, column: 3, scope: !1375)
!1390 = distinct !DISubprogram(name: "set_custom_quoting", scope: !289, file: !289, line: 169, type: !1391, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1315, !38, !38}
!1393 = !{!1394, !1395, !1396}
!1394 = !DILocalVariable(name: "o", arg: 1, scope: !1390, file: !289, line: 169, type: !1315)
!1395 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1390, file: !289, line: 170, type: !38)
!1396 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1390, file: !289, line: 170, type: !38)
!1397 = !DILocation(line: 0, scope: !1390)
!1398 = !DILocation(line: 172, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1390, file: !289, line: 172, column: 7)
!1400 = !DILocation(line: 172, column: 7, scope: !1390)
!1401 = !DILocation(line: 174, column: 6, scope: !1390)
!1402 = !DILocation(line: 174, column: 12, scope: !1390)
!1403 = !DILocation(line: 175, column: 8, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1390, file: !289, line: 175, column: 7)
!1405 = !DILocation(line: 175, column: 19, scope: !1404)
!1406 = !DILocation(line: 176, column: 5, scope: !1404)
!1407 = !DILocation(line: 177, column: 6, scope: !1390)
!1408 = !DILocation(line: 177, column: 17, scope: !1390)
!1409 = !{!1337, !489, i64 40}
!1410 = !DILocation(line: 178, column: 6, scope: !1390)
!1411 = !DILocation(line: 178, column: 18, scope: !1390)
!1412 = !{!1337, !489, i64 48}
!1413 = !DILocation(line: 179, column: 1, scope: !1390)
!1414 = distinct !DISubprogram(name: "quotearg_buffer", scope: !289, file: !289, line: 774, type: !1415, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!35, !8, !35, !38, !35, !1329}
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1418 = !DILocalVariable(name: "buffer", arg: 1, scope: !1414, file: !289, line: 774, type: !8)
!1419 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1414, file: !289, line: 774, type: !35)
!1420 = !DILocalVariable(name: "arg", arg: 3, scope: !1414, file: !289, line: 775, type: !38)
!1421 = !DILocalVariable(name: "argsize", arg: 4, scope: !1414, file: !289, line: 775, type: !35)
!1422 = !DILocalVariable(name: "o", arg: 5, scope: !1414, file: !289, line: 776, type: !1329)
!1423 = !DILocalVariable(name: "p", scope: !1414, file: !289, line: 778, type: !1329)
!1424 = !DILocalVariable(name: "saved_errno", scope: !1414, file: !289, line: 779, type: !6)
!1425 = !DILocalVariable(name: "r", scope: !1414, file: !289, line: 780, type: !35)
!1426 = !DILocation(line: 0, scope: !1414)
!1427 = !DILocation(line: 778, column: 37, scope: !1414)
!1428 = !DILocation(line: 779, column: 21, scope: !1414)
!1429 = !DILocation(line: 781, column: 43, scope: !1414)
!1430 = !DILocation(line: 781, column: 53, scope: !1414)
!1431 = !DILocation(line: 781, column: 60, scope: !1414)
!1432 = !DILocation(line: 782, column: 43, scope: !1414)
!1433 = !DILocation(line: 782, column: 58, scope: !1414)
!1434 = !DILocation(line: 780, column: 14, scope: !1414)
!1435 = !DILocation(line: 783, column: 9, scope: !1414)
!1436 = !DILocation(line: 784, column: 3, scope: !1414)
!1437 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !289, file: !289, line: 251, type: !1438, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1442)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!35, !8, !35, !38, !35, !291, !6, !1440, !38, !38}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1467, !1469, !1472, !1473, !1474, !1475, !1478, !1479, !1482, !1486, !1487, !1495, !1498, !1499, !1501, !1502, !1503, !1504}
!1443 = !DILocalVariable(name: "buffer", arg: 1, scope: !1437, file: !289, line: 251, type: !8)
!1444 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1437, file: !289, line: 251, type: !35)
!1445 = !DILocalVariable(name: "arg", arg: 3, scope: !1437, file: !289, line: 252, type: !38)
!1446 = !DILocalVariable(name: "argsize", arg: 4, scope: !1437, file: !289, line: 252, type: !35)
!1447 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1437, file: !289, line: 253, type: !291)
!1448 = !DILocalVariable(name: "flags", arg: 6, scope: !1437, file: !289, line: 253, type: !6)
!1449 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1437, file: !289, line: 254, type: !1440)
!1450 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1437, file: !289, line: 255, type: !38)
!1451 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1437, file: !289, line: 256, type: !38)
!1452 = !DILocalVariable(name: "unibyte_locale", scope: !1437, file: !289, line: 258, type: !56)
!1453 = !DILocalVariable(name: "len", scope: !1437, file: !289, line: 260, type: !35)
!1454 = !DILocalVariable(name: "orig_buffersize", scope: !1437, file: !289, line: 261, type: !35)
!1455 = !DILocalVariable(name: "quote_string", scope: !1437, file: !289, line: 262, type: !38)
!1456 = !DILocalVariable(name: "quote_string_len", scope: !1437, file: !289, line: 263, type: !35)
!1457 = !DILocalVariable(name: "backslash_escapes", scope: !1437, file: !289, line: 264, type: !56)
!1458 = !DILocalVariable(name: "elide_outer_quotes", scope: !1437, file: !289, line: 265, type: !56)
!1459 = !DILocalVariable(name: "encountered_single_quote", scope: !1437, file: !289, line: 266, type: !56)
!1460 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1437, file: !289, line: 267, type: !56)
!1461 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1437, file: !289, line: 309, type: !56)
!1462 = !DILocalVariable(name: "lq", scope: !1463, file: !289, line: 361, type: !38)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !289, line: 361, column: 11)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !289, line: 360, column: 13)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !289, line: 333, column: 7)
!1466 = distinct !DILexicalBlock(scope: !1437, file: !289, line: 312, column: 5)
!1467 = !DILocalVariable(name: "i", scope: !1468, file: !289, line: 395, type: !35)
!1468 = distinct !DILexicalBlock(scope: !1437, file: !289, line: 395, column: 3)
!1469 = !DILocalVariable(name: "is_right_quote", scope: !1470, file: !289, line: 397, type: !56)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !289, line: 396, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !289, line: 395, column: 3)
!1472 = !DILocalVariable(name: "escaping", scope: !1470, file: !289, line: 398, type: !56)
!1473 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1470, file: !289, line: 399, type: !56)
!1474 = !DILocalVariable(name: "c", scope: !1470, file: !289, line: 417, type: !40)
!1475 = !DILocalVariable(name: "m", scope: !1476, file: !289, line: 598, type: !35)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 596, column: 11)
!1477 = distinct !DILexicalBlock(scope: !1470, file: !289, line: 419, column: 9)
!1478 = !DILocalVariable(name: "printable", scope: !1476, file: !289, line: 600, type: !56)
!1479 = !DILocalVariable(name: "mbs", scope: !1480, file: !289, line: 609, type: !346)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !289, line: 608, column: 15)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !289, line: 602, column: 17)
!1482 = !DILocalVariable(name: "w", scope: !1483, file: !289, line: 618, type: !263)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !289, line: 617, column: 19)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !289, line: 616, column: 17)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !289, line: 616, column: 17)
!1486 = !DILocalVariable(name: "bytes", scope: !1483, file: !289, line: 619, type: !35)
!1487 = !DILocalVariable(name: "j", scope: !1488, file: !289, line: 648, type: !35)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !289, line: 648, column: 29)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !289, line: 647, column: 27)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !289, line: 645, column: 29)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !289, line: 636, column: 23)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !289, line: 628, column: 30)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !289, line: 623, column: 30)
!1494 = distinct !DILexicalBlock(scope: !1483, file: !289, line: 621, column: 25)
!1495 = !DILocalVariable(name: "ilim", scope: !1496, file: !289, line: 674, type: !35)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !289, line: 671, column: 15)
!1497 = distinct !DILexicalBlock(scope: !1476, file: !289, line: 670, column: 17)
!1498 = !DILabel(scope: !1437, name: "process_input", file: !289, line: 308)
!1499 = !DILabel(scope: !1500, name: "c_and_shell_escape", file: !289, line: 502)
!1500 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 478, column: 9)
!1501 = !DILabel(scope: !1500, name: "c_escape", file: !289, line: 507)
!1502 = !DILabel(scope: !1470, name: "store_escape", file: !289, line: 709)
!1503 = !DILabel(scope: !1470, name: "store_c", file: !289, line: 712)
!1504 = !DILabel(scope: !1437, name: "force_outer_quoting_style", file: !289, line: 753)
!1505 = !DILocation(line: 0, scope: !1437)
!1506 = !DILocation(line: 258, column: 25, scope: !1437)
!1507 = !DILocation(line: 258, column: 36, scope: !1437)
!1508 = !DILocation(line: 267, column: 3, scope: !1437)
!1509 = !DILocation(line: 261, column: 10, scope: !1437)
!1510 = !DILocation(line: 262, column: 15, scope: !1437)
!1511 = !DILocation(line: 263, column: 10, scope: !1437)
!1512 = !DILocation(line: 308, column: 2, scope: !1437)
!1513 = !DILocation(line: 311, column: 3, scope: !1437)
!1514 = !DILocation(line: 318, column: 11, scope: !1466)
!1515 = !DILocation(line: 319, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !289, line: 319, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !289, line: 319, column: 9)
!1518 = distinct !DILexicalBlock(scope: !1466, file: !289, line: 318, column: 11)
!1519 = !DILocation(line: 319, column: 9, scope: !1517)
!1520 = !DILocation(line: 0, scope: !337, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 357, column: 26, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !289, line: 335, column: 11)
!1523 = distinct !DILexicalBlock(scope: !1465, file: !289, line: 334, column: 13)
!1524 = !DILocation(line: 199, column: 29, scope: !337, inlinedAt: !1521)
!1525 = !DILocation(line: 201, column: 19, scope: !1526, inlinedAt: !1521)
!1526 = distinct !DILexicalBlock(scope: !337, file: !289, line: 201, column: 7)
!1527 = !DILocation(line: 201, column: 7, scope: !337, inlinedAt: !1521)
!1528 = !DILocation(line: 229, column: 3, scope: !337, inlinedAt: !1521)
!1529 = !DILocation(line: 230, column: 3, scope: !337, inlinedAt: !1521)
!1530 = !DILocation(line: 230, column: 13, scope: !337, inlinedAt: !1521)
!1531 = !DILocalVariable(name: "ps", arg: 1, scope: !1532, file: !1283, line: 1135, type: !1535)
!1532 = distinct !DISubprogram(name: "mbszero", scope: !1283, file: !1283, line: 1135, type: !1533, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1536)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1536 = !{!1531}
!1537 = !DILocation(line: 0, scope: !1532, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 230, column: 18, scope: !337, inlinedAt: !1521)
!1539 = !DILocalVariable(name: "__dest", arg: 1, scope: !1540, file: !1292, line: 57, type: !41)
!1540 = distinct !DISubprogram(name: "memset", scope: !1292, file: !1292, line: 57, type: !1293, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1541)
!1541 = !{!1539, !1542, !1543}
!1542 = !DILocalVariable(name: "__ch", arg: 2, scope: !1540, file: !1292, line: 57, type: !6)
!1543 = !DILocalVariable(name: "__len", arg: 3, scope: !1540, file: !1292, line: 57, type: !35)
!1544 = !DILocation(line: 0, scope: !1540, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 1137, column: 3, scope: !1532, inlinedAt: !1538)
!1546 = !DILocation(line: 59, column: 10, scope: !1540, inlinedAt: !1545)
!1547 = !DILocation(line: 231, column: 7, scope: !1548, inlinedAt: !1521)
!1548 = distinct !DILexicalBlock(scope: !337, file: !289, line: 231, column: 7)
!1549 = !DILocation(line: 231, column: 40, scope: !1548, inlinedAt: !1521)
!1550 = !DILocation(line: 231, column: 45, scope: !1548, inlinedAt: !1521)
!1551 = !DILocation(line: 235, column: 1, scope: !337, inlinedAt: !1521)
!1552 = !DILocation(line: 0, scope: !337, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 358, column: 27, scope: !1522)
!1554 = !DILocation(line: 199, column: 29, scope: !337, inlinedAt: !1553)
!1555 = !DILocation(line: 201, column: 19, scope: !1526, inlinedAt: !1553)
!1556 = !DILocation(line: 201, column: 7, scope: !337, inlinedAt: !1553)
!1557 = !DILocation(line: 229, column: 3, scope: !337, inlinedAt: !1553)
!1558 = !DILocation(line: 230, column: 3, scope: !337, inlinedAt: !1553)
!1559 = !DILocation(line: 230, column: 13, scope: !337, inlinedAt: !1553)
!1560 = !DILocation(line: 0, scope: !1532, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 230, column: 18, scope: !337, inlinedAt: !1553)
!1562 = !DILocation(line: 0, scope: !1540, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 1137, column: 3, scope: !1532, inlinedAt: !1561)
!1564 = !DILocation(line: 59, column: 10, scope: !1540, inlinedAt: !1563)
!1565 = !DILocation(line: 231, column: 7, scope: !1548, inlinedAt: !1553)
!1566 = !DILocation(line: 231, column: 40, scope: !1548, inlinedAt: !1553)
!1567 = !DILocation(line: 231, column: 45, scope: !1548, inlinedAt: !1553)
!1568 = !DILocation(line: 235, column: 1, scope: !337, inlinedAt: !1553)
!1569 = !DILocation(line: 360, column: 13, scope: !1465)
!1570 = !DILocation(line: 0, scope: !1463)
!1571 = !DILocation(line: 361, column: 45, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1463, file: !289, line: 361, column: 11)
!1573 = !DILocation(line: 361, column: 11, scope: !1463)
!1574 = !DILocation(line: 362, column: 13, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !289, line: 362, column: 13)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !289, line: 362, column: 13)
!1577 = !DILocation(line: 362, column: 13, scope: !1576)
!1578 = !DILocation(line: 361, column: 52, scope: !1572)
!1579 = distinct !{!1579, !1573, !1580, !557}
!1580 = !DILocation(line: 362, column: 13, scope: !1463)
!1581 = !DILocation(line: 260, column: 10, scope: !1437)
!1582 = !DILocation(line: 365, column: 28, scope: !1465)
!1583 = !DILocation(line: 367, column: 7, scope: !1466)
!1584 = !DILocation(line: 370, column: 7, scope: !1466)
!1585 = !DILocation(line: 376, column: 11, scope: !1466)
!1586 = !DILocation(line: 381, column: 11, scope: !1466)
!1587 = !DILocation(line: 382, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !289, line: 382, column: 9)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !289, line: 382, column: 9)
!1590 = distinct !DILexicalBlock(scope: !1466, file: !289, line: 381, column: 11)
!1591 = !DILocation(line: 382, column: 9, scope: !1589)
!1592 = !DILocation(line: 389, column: 7, scope: !1466)
!1593 = !DILocation(line: 392, column: 7, scope: !1466)
!1594 = !DILocation(line: 0, scope: !1468)
!1595 = !DILocation(line: 395, column: 8, scope: !1468)
!1596 = !DILocation(line: 395, column: 34, scope: !1471)
!1597 = !DILocation(line: 395, column: 26, scope: !1471)
!1598 = !DILocation(line: 395, column: 48, scope: !1471)
!1599 = !DILocation(line: 395, column: 55, scope: !1471)
!1600 = !DILocation(line: 395, column: 3, scope: !1468)
!1601 = !DILocation(line: 395, column: 67, scope: !1471)
!1602 = !DILocation(line: 0, scope: !1470)
!1603 = !DILocation(line: 402, column: 11, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1470, file: !289, line: 401, column: 11)
!1605 = !DILocation(line: 404, column: 17, scope: !1604)
!1606 = !DILocation(line: 405, column: 39, scope: !1604)
!1607 = !DILocation(line: 409, column: 32, scope: !1604)
!1608 = !DILocation(line: 405, column: 19, scope: !1604)
!1609 = !DILocation(line: 405, column: 15, scope: !1604)
!1610 = !DILocation(line: 410, column: 11, scope: !1604)
!1611 = !DILocation(line: 410, column: 25, scope: !1604)
!1612 = !DILocalVariable(name: "__s1", arg: 1, scope: !1613, file: !541, line: 974, type: !742)
!1613 = distinct !DISubprogram(name: "memeq", scope: !541, file: !541, line: 974, type: !1254, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1614)
!1614 = !{!1612, !1615, !1616}
!1615 = !DILocalVariable(name: "__s2", arg: 2, scope: !1613, file: !541, line: 974, type: !742)
!1616 = !DILocalVariable(name: "__n", arg: 3, scope: !1613, file: !541, line: 974, type: !35)
!1617 = !DILocation(line: 0, scope: !1613, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 410, column: 14, scope: !1604)
!1619 = !DILocation(line: 976, column: 11, scope: !1613, inlinedAt: !1618)
!1620 = !DILocation(line: 976, column: 10, scope: !1613, inlinedAt: !1618)
!1621 = !DILocation(line: 401, column: 11, scope: !1470)
!1622 = !DILocation(line: 417, column: 25, scope: !1470)
!1623 = !DILocation(line: 418, column: 7, scope: !1470)
!1624 = !DILocation(line: 421, column: 15, scope: !1477)
!1625 = !DILocation(line: 423, column: 15, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !289, line: 423, column: 15)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !289, line: 422, column: 13)
!1628 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 421, column: 15)
!1629 = !DILocation(line: 423, column: 15, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !289, line: 423, column: 15)
!1631 = !DILocation(line: 423, column: 15, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !289, line: 423, column: 15)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !289, line: 423, column: 15)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !289, line: 423, column: 15)
!1635 = !DILocation(line: 423, column: 15, scope: !1633)
!1636 = !DILocation(line: 423, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !289, line: 423, column: 15)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !289, line: 423, column: 15)
!1639 = !DILocation(line: 423, column: 15, scope: !1638)
!1640 = !DILocation(line: 423, column: 15, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !289, line: 423, column: 15)
!1642 = distinct !DILexicalBlock(scope: !1634, file: !289, line: 423, column: 15)
!1643 = !DILocation(line: 423, column: 15, scope: !1642)
!1644 = !DILocation(line: 423, column: 15, scope: !1634)
!1645 = !DILocation(line: 423, column: 15, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !289, line: 423, column: 15)
!1647 = distinct !DILexicalBlock(scope: !1626, file: !289, line: 423, column: 15)
!1648 = !DILocation(line: 423, column: 15, scope: !1647)
!1649 = !DILocation(line: 431, column: 19, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1627, file: !289, line: 430, column: 19)
!1651 = !DILocation(line: 431, column: 24, scope: !1650)
!1652 = !DILocation(line: 431, column: 28, scope: !1650)
!1653 = !DILocation(line: 431, column: 38, scope: !1650)
!1654 = !DILocation(line: 431, column: 48, scope: !1650)
!1655 = !DILocation(line: 431, column: 59, scope: !1650)
!1656 = !DILocation(line: 433, column: 19, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !289, line: 433, column: 19)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !289, line: 433, column: 19)
!1659 = distinct !DILexicalBlock(scope: !1650, file: !289, line: 432, column: 17)
!1660 = !DILocation(line: 433, column: 19, scope: !1658)
!1661 = !DILocation(line: 434, column: 19, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !289, line: 434, column: 19)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !289, line: 434, column: 19)
!1664 = !DILocation(line: 434, column: 19, scope: !1663)
!1665 = !DILocation(line: 435, column: 17, scope: !1659)
!1666 = !DILocation(line: 442, column: 20, scope: !1628)
!1667 = !DILocation(line: 447, column: 11, scope: !1477)
!1668 = !DILocation(line: 450, column: 19, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 448, column: 13)
!1670 = !DILocation(line: 456, column: 19, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1669, file: !289, line: 455, column: 19)
!1672 = !DILocation(line: 456, column: 24, scope: !1671)
!1673 = !DILocation(line: 456, column: 28, scope: !1671)
!1674 = !DILocation(line: 456, column: 38, scope: !1671)
!1675 = !DILocation(line: 456, column: 47, scope: !1671)
!1676 = !DILocation(line: 456, column: 41, scope: !1671)
!1677 = !DILocation(line: 456, column: 52, scope: !1671)
!1678 = !DILocation(line: 455, column: 19, scope: !1669)
!1679 = !DILocation(line: 457, column: 25, scope: !1671)
!1680 = !DILocation(line: 457, column: 17, scope: !1671)
!1681 = !DILocation(line: 464, column: 25, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1671, file: !289, line: 458, column: 19)
!1683 = !DILocation(line: 468, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !289, line: 468, column: 21)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !289, line: 468, column: 21)
!1686 = !DILocation(line: 468, column: 21, scope: !1685)
!1687 = !DILocation(line: 469, column: 21, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !289, line: 469, column: 21)
!1689 = distinct !DILexicalBlock(scope: !1682, file: !289, line: 469, column: 21)
!1690 = !DILocation(line: 469, column: 21, scope: !1689)
!1691 = !DILocation(line: 470, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !289, line: 470, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1682, file: !289, line: 470, column: 21)
!1694 = !DILocation(line: 470, column: 21, scope: !1693)
!1695 = !DILocation(line: 471, column: 21, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !289, line: 471, column: 21)
!1697 = distinct !DILexicalBlock(scope: !1682, file: !289, line: 471, column: 21)
!1698 = !DILocation(line: 471, column: 21, scope: !1697)
!1699 = !DILocation(line: 472, column: 21, scope: !1682)
!1700 = !DILocation(line: 482, column: 33, scope: !1500)
!1701 = !DILocation(line: 483, column: 33, scope: !1500)
!1702 = !DILocation(line: 485, column: 33, scope: !1500)
!1703 = !DILocation(line: 486, column: 33, scope: !1500)
!1704 = !DILocation(line: 487, column: 33, scope: !1500)
!1705 = !DILocation(line: 490, column: 17, scope: !1500)
!1706 = !DILocation(line: 492, column: 21, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !289, line: 491, column: 15)
!1708 = distinct !DILexicalBlock(scope: !1500, file: !289, line: 490, column: 17)
!1709 = !DILocation(line: 499, column: 35, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1500, file: !289, line: 499, column: 17)
!1711 = !DILocation(line: 499, column: 57, scope: !1710)
!1712 = !DILocation(line: 0, scope: !1500)
!1713 = !DILocation(line: 502, column: 11, scope: !1500)
!1714 = !DILocation(line: 504, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1500, file: !289, line: 503, column: 17)
!1716 = !DILocation(line: 507, column: 11, scope: !1500)
!1717 = !DILocation(line: 508, column: 17, scope: !1500)
!1718 = !DILocation(line: 517, column: 15, scope: !1477)
!1719 = !DILocation(line: 517, column: 40, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 517, column: 15)
!1721 = !DILocation(line: 517, column: 47, scope: !1720)
!1722 = !DILocation(line: 517, column: 18, scope: !1720)
!1723 = !DILocation(line: 521, column: 17, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 521, column: 15)
!1725 = !DILocation(line: 521, column: 15, scope: !1477)
!1726 = !DILocation(line: 525, column: 11, scope: !1477)
!1727 = !DILocation(line: 537, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 536, column: 15)
!1729 = !DILocation(line: 536, column: 15, scope: !1477)
!1730 = !DILocation(line: 544, column: 15, scope: !1477)
!1731 = !DILocation(line: 546, column: 19, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !289, line: 545, column: 13)
!1733 = distinct !DILexicalBlock(scope: !1477, file: !289, line: 544, column: 15)
!1734 = !DILocation(line: 549, column: 19, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !289, line: 549, column: 19)
!1736 = !DILocation(line: 549, column: 30, scope: !1735)
!1737 = !DILocation(line: 558, column: 15, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !289, line: 558, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1732, file: !289, line: 558, column: 15)
!1740 = !DILocation(line: 558, column: 15, scope: !1739)
!1741 = !DILocation(line: 559, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !289, line: 559, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1732, file: !289, line: 559, column: 15)
!1744 = !DILocation(line: 559, column: 15, scope: !1743)
!1745 = !DILocation(line: 560, column: 15, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !289, line: 560, column: 15)
!1747 = distinct !DILexicalBlock(scope: !1732, file: !289, line: 560, column: 15)
!1748 = !DILocation(line: 560, column: 15, scope: !1747)
!1749 = !DILocation(line: 562, column: 13, scope: !1732)
!1750 = !DILocation(line: 602, column: 17, scope: !1476)
!1751 = !DILocation(line: 0, scope: !1476)
!1752 = !DILocation(line: 605, column: 29, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1481, file: !289, line: 603, column: 15)
!1754 = !DILocation(line: 605, column: 41, scope: !1753)
!1755 = !DILocation(line: 670, column: 23, scope: !1497)
!1756 = !DILocation(line: 609, column: 17, scope: !1480)
!1757 = !DILocation(line: 609, column: 27, scope: !1480)
!1758 = !DILocation(line: 0, scope: !1532, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 609, column: 32, scope: !1480)
!1760 = !DILocation(line: 0, scope: !1540, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 1137, column: 3, scope: !1532, inlinedAt: !1759)
!1762 = !DILocation(line: 59, column: 10, scope: !1540, inlinedAt: !1761)
!1763 = !DILocation(line: 613, column: 29, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1480, file: !289, line: 613, column: 21)
!1765 = !DILocation(line: 613, column: 21, scope: !1480)
!1766 = !DILocation(line: 614, column: 29, scope: !1764)
!1767 = !DILocation(line: 614, column: 19, scope: !1764)
!1768 = !DILocation(line: 618, column: 21, scope: !1483)
!1769 = !DILocation(line: 620, column: 54, scope: !1483)
!1770 = !DILocation(line: 0, scope: !1483)
!1771 = !DILocation(line: 619, column: 36, scope: !1483)
!1772 = !DILocation(line: 621, column: 25, scope: !1483)
!1773 = !DILocation(line: 631, column: 38, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1492, file: !289, line: 629, column: 23)
!1775 = !DILocation(line: 631, column: 48, scope: !1774)
!1776 = !DILocation(line: 665, column: 19, scope: !1484)
!1777 = !DILocation(line: 666, column: 15, scope: !1481)
!1778 = !DILocation(line: 626, column: 25, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1493, file: !289, line: 624, column: 23)
!1780 = !DILocation(line: 631, column: 51, scope: !1774)
!1781 = !DILocation(line: 631, column: 25, scope: !1774)
!1782 = !DILocation(line: 632, column: 28, scope: !1774)
!1783 = !DILocation(line: 631, column: 34, scope: !1774)
!1784 = distinct !{!1784, !1781, !1782, !557}
!1785 = !DILocation(line: 646, column: 29, scope: !1490)
!1786 = !DILocation(line: 0, scope: !1488)
!1787 = !DILocation(line: 649, column: 49, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1488, file: !289, line: 648, column: 29)
!1789 = !DILocation(line: 649, column: 39, scope: !1788)
!1790 = !DILocation(line: 649, column: 31, scope: !1788)
!1791 = !DILocation(line: 648, column: 60, scope: !1788)
!1792 = !DILocation(line: 648, column: 50, scope: !1788)
!1793 = !DILocation(line: 648, column: 29, scope: !1488)
!1794 = distinct !{!1794, !1793, !1795, !557}
!1795 = !DILocation(line: 654, column: 33, scope: !1488)
!1796 = !DILocation(line: 657, column: 43, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1491, file: !289, line: 657, column: 29)
!1798 = !DILocalVariable(name: "wc", arg: 1, scope: !1799, file: !1800, line: 865, type: !1803)
!1799 = distinct !DISubprogram(name: "c32isprint", scope: !1800, file: !1800, line: 865, type: !1801, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1805)
!1800 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!6, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1804, line: 20, baseType: !14)
!1804 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1805 = !{!1798}
!1806 = !DILocation(line: 0, scope: !1799, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 657, column: 31, scope: !1797)
!1808 = !DILocation(line: 871, column: 10, scope: !1799, inlinedAt: !1807)
!1809 = !DILocation(line: 657, column: 31, scope: !1797)
!1810 = !DILocation(line: 664, column: 23, scope: !1483)
!1811 = !DILocation(line: 753, column: 2, scope: !1437)
!1812 = !DILocation(line: 756, column: 51, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1437, file: !289, line: 756, column: 7)
!1814 = !DILocation(line: 670, column: 19, scope: !1497)
!1815 = !DILocation(line: 670, column: 45, scope: !1497)
!1816 = !DILocation(line: 674, column: 33, scope: !1496)
!1817 = !DILocation(line: 0, scope: !1496)
!1818 = !DILocation(line: 676, column: 17, scope: !1496)
!1819 = !DILocation(line: 398, column: 12, scope: !1470)
!1820 = !DILocation(line: 678, column: 43, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !289, line: 678, column: 25)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !289, line: 677, column: 19)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !289, line: 676, column: 17)
!1824 = distinct !DILexicalBlock(scope: !1496, file: !289, line: 676, column: 17)
!1825 = !DILocation(line: 680, column: 25, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !289, line: 680, column: 25)
!1827 = distinct !DILexicalBlock(scope: !1821, file: !289, line: 679, column: 23)
!1828 = !DILocation(line: 680, column: 25, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !289, line: 680, column: 25)
!1830 = !DILocation(line: 680, column: 25, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !289, line: 680, column: 25)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !289, line: 680, column: 25)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !289, line: 680, column: 25)
!1834 = !DILocation(line: 680, column: 25, scope: !1832)
!1835 = !DILocation(line: 680, column: 25, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !289, line: 680, column: 25)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !289, line: 680, column: 25)
!1838 = !DILocation(line: 680, column: 25, scope: !1837)
!1839 = !DILocation(line: 680, column: 25, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !289, line: 680, column: 25)
!1841 = distinct !DILexicalBlock(scope: !1833, file: !289, line: 680, column: 25)
!1842 = !DILocation(line: 680, column: 25, scope: !1841)
!1843 = !DILocation(line: 680, column: 25, scope: !1833)
!1844 = !DILocation(line: 680, column: 25, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !289, line: 680, column: 25)
!1846 = distinct !DILexicalBlock(scope: !1826, file: !289, line: 680, column: 25)
!1847 = !DILocation(line: 680, column: 25, scope: !1846)
!1848 = !DILocation(line: 681, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !289, line: 681, column: 25)
!1850 = distinct !DILexicalBlock(scope: !1827, file: !289, line: 681, column: 25)
!1851 = !DILocation(line: 681, column: 25, scope: !1850)
!1852 = !DILocation(line: 682, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !289, line: 682, column: 25)
!1854 = distinct !DILexicalBlock(scope: !1827, file: !289, line: 682, column: 25)
!1855 = !DILocation(line: 682, column: 25, scope: !1854)
!1856 = !DILocation(line: 683, column: 38, scope: !1827)
!1857 = !DILocation(line: 683, column: 33, scope: !1827)
!1858 = !DILocation(line: 684, column: 23, scope: !1827)
!1859 = !DILocation(line: 685, column: 30, scope: !1821)
!1860 = !DILocation(line: 687, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !289, line: 687, column: 25)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !289, line: 687, column: 25)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !289, line: 686, column: 23)
!1864 = distinct !DILexicalBlock(scope: !1821, file: !289, line: 685, column: 30)
!1865 = !DILocation(line: 687, column: 25, scope: !1862)
!1866 = !DILocation(line: 689, column: 23, scope: !1863)
!1867 = !DILocation(line: 690, column: 35, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1822, file: !289, line: 690, column: 25)
!1869 = !DILocation(line: 690, column: 30, scope: !1868)
!1870 = !DILocation(line: 690, column: 25, scope: !1822)
!1871 = !DILocation(line: 692, column: 21, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !289, line: 692, column: 21)
!1873 = distinct !DILexicalBlock(scope: !1822, file: !289, line: 692, column: 21)
!1874 = !DILocation(line: 692, column: 21, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !289, line: 692, column: 21)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !289, line: 692, column: 21)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !289, line: 692, column: 21)
!1878 = !DILocation(line: 692, column: 21, scope: !1876)
!1879 = !DILocation(line: 692, column: 21, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !289, line: 692, column: 21)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !289, line: 692, column: 21)
!1882 = !DILocation(line: 692, column: 21, scope: !1881)
!1883 = !DILocation(line: 692, column: 21, scope: !1877)
!1884 = !DILocation(line: 0, scope: !1822)
!1885 = !DILocation(line: 693, column: 21, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !289, line: 693, column: 21)
!1887 = distinct !DILexicalBlock(scope: !1822, file: !289, line: 693, column: 21)
!1888 = !DILocation(line: 693, column: 21, scope: !1887)
!1889 = !DILocation(line: 694, column: 25, scope: !1822)
!1890 = !DILocation(line: 676, column: 17, scope: !1823)
!1891 = distinct !{!1891, !1892, !1893}
!1892 = !DILocation(line: 676, column: 17, scope: !1824)
!1893 = !DILocation(line: 695, column: 19, scope: !1824)
!1894 = !DILocation(line: 409, column: 30, scope: !1604)
!1895 = !DILocation(line: 702, column: 34, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1470, file: !289, line: 702, column: 11)
!1897 = !DILocation(line: 704, column: 14, scope: !1896)
!1898 = !DILocation(line: 705, column: 14, scope: !1896)
!1899 = !DILocation(line: 705, column: 35, scope: !1896)
!1900 = !DILocation(line: 705, column: 17, scope: !1896)
!1901 = !DILocation(line: 705, column: 47, scope: !1896)
!1902 = !DILocation(line: 705, column: 65, scope: !1896)
!1903 = !DILocation(line: 706, column: 11, scope: !1896)
!1904 = !DILocation(line: 702, column: 11, scope: !1470)
!1905 = !DILocation(line: 395, column: 15, scope: !1468)
!1906 = !DILocation(line: 709, column: 5, scope: !1470)
!1907 = !DILocation(line: 710, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1470, file: !289, line: 710, column: 7)
!1909 = !DILocation(line: 710, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1908, file: !289, line: 710, column: 7)
!1911 = !DILocation(line: 710, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !289, line: 710, column: 7)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !289, line: 710, column: 7)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !289, line: 710, column: 7)
!1915 = !DILocation(line: 710, column: 7, scope: !1913)
!1916 = !DILocation(line: 710, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !289, line: 710, column: 7)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !289, line: 710, column: 7)
!1919 = !DILocation(line: 710, column: 7, scope: !1918)
!1920 = !DILocation(line: 710, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !289, line: 710, column: 7)
!1922 = distinct !DILexicalBlock(scope: !1914, file: !289, line: 710, column: 7)
!1923 = !DILocation(line: 710, column: 7, scope: !1922)
!1924 = !DILocation(line: 710, column: 7, scope: !1914)
!1925 = !DILocation(line: 710, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !289, line: 710, column: 7)
!1927 = distinct !DILexicalBlock(scope: !1908, file: !289, line: 710, column: 7)
!1928 = !DILocation(line: 710, column: 7, scope: !1927)
!1929 = !DILocation(line: 712, column: 5, scope: !1470)
!1930 = !DILocation(line: 713, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !289, line: 713, column: 7)
!1932 = distinct !DILexicalBlock(scope: !1470, file: !289, line: 713, column: 7)
!1933 = !DILocation(line: 417, column: 21, scope: !1470)
!1934 = !DILocation(line: 713, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !289, line: 713, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !289, line: 713, column: 7)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !289, line: 713, column: 7)
!1938 = !DILocation(line: 713, column: 7, scope: !1936)
!1939 = !DILocation(line: 713, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !289, line: 713, column: 7)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !289, line: 713, column: 7)
!1942 = !DILocation(line: 713, column: 7, scope: !1941)
!1943 = !DILocation(line: 713, column: 7, scope: !1937)
!1944 = !DILocation(line: 714, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !289, line: 714, column: 7)
!1946 = distinct !DILexicalBlock(scope: !1470, file: !289, line: 714, column: 7)
!1947 = !DILocation(line: 714, column: 7, scope: !1946)
!1948 = !DILocation(line: 716, column: 11, scope: !1470)
!1949 = !DILocation(line: 718, column: 5, scope: !1471)
!1950 = !DILocation(line: 395, column: 82, scope: !1471)
!1951 = !DILocation(line: 395, column: 3, scope: !1471)
!1952 = distinct !{!1952, !1600, !1953, !557}
!1953 = !DILocation(line: 718, column: 5, scope: !1468)
!1954 = !DILocation(line: 720, column: 11, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1437, file: !289, line: 720, column: 7)
!1956 = !DILocation(line: 720, column: 16, scope: !1955)
!1957 = !DILocation(line: 728, column: 51, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1437, file: !289, line: 728, column: 7)
!1959 = !DILocation(line: 731, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1958, file: !289, line: 730, column: 5)
!1961 = !DILocation(line: 732, column: 16, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1960, file: !289, line: 731, column: 11)
!1963 = !DILocation(line: 732, column: 9, scope: !1962)
!1964 = !DILocation(line: 736, column: 18, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !289, line: 736, column: 16)
!1966 = !DILocation(line: 736, column: 29, scope: !1965)
!1967 = !DILocation(line: 745, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1437, file: !289, line: 745, column: 7)
!1969 = !DILocation(line: 745, column: 20, scope: !1968)
!1970 = !DILocation(line: 746, column: 12, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !289, line: 746, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !289, line: 746, column: 5)
!1973 = !DILocation(line: 746, column: 5, scope: !1972)
!1974 = !DILocation(line: 747, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !289, line: 747, column: 7)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !289, line: 747, column: 7)
!1977 = !DILocation(line: 747, column: 7, scope: !1976)
!1978 = !DILocation(line: 746, column: 39, scope: !1971)
!1979 = distinct !{!1979, !1973, !1980, !557}
!1980 = !DILocation(line: 747, column: 7, scope: !1972)
!1981 = !DILocation(line: 749, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1437, file: !289, line: 749, column: 7)
!1983 = !DILocation(line: 749, column: 7, scope: !1437)
!1984 = !DILocation(line: 750, column: 5, scope: !1982)
!1985 = !DILocation(line: 750, column: 17, scope: !1982)
!1986 = !DILocation(line: 756, column: 21, scope: !1813)
!1987 = !DILocation(line: 760, column: 42, scope: !1437)
!1988 = !DILocation(line: 758, column: 10, scope: !1437)
!1989 = !DILocation(line: 758, column: 3, scope: !1437)
!1990 = !DILocation(line: 762, column: 1, scope: !1437)
!1991 = !DISubprogram(name: "iswprint", scope: !1992, file: !1992, line: 120, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!1992 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1993 = distinct !DISubprogram(name: "quotearg_alloc", scope: !289, file: !289, line: 788, type: !1994, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!8, !38, !35, !1329}
!1996 = !{!1997, !1998, !1999}
!1997 = !DILocalVariable(name: "arg", arg: 1, scope: !1993, file: !289, line: 788, type: !38)
!1998 = !DILocalVariable(name: "argsize", arg: 2, scope: !1993, file: !289, line: 788, type: !35)
!1999 = !DILocalVariable(name: "o", arg: 3, scope: !1993, file: !289, line: 789, type: !1329)
!2000 = !DILocation(line: 0, scope: !1993)
!2001 = !DILocalVariable(name: "arg", arg: 1, scope: !2002, file: !289, line: 801, type: !38)
!2002 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !289, file: !289, line: 801, type: !2003, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!8, !38, !35, !419, !1329}
!2005 = !{!2001, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!2006 = !DILocalVariable(name: "argsize", arg: 2, scope: !2002, file: !289, line: 801, type: !35)
!2007 = !DILocalVariable(name: "size", arg: 3, scope: !2002, file: !289, line: 801, type: !419)
!2008 = !DILocalVariable(name: "o", arg: 4, scope: !2002, file: !289, line: 802, type: !1329)
!2009 = !DILocalVariable(name: "p", scope: !2002, file: !289, line: 804, type: !1329)
!2010 = !DILocalVariable(name: "saved_errno", scope: !2002, file: !289, line: 805, type: !6)
!2011 = !DILocalVariable(name: "flags", scope: !2002, file: !289, line: 807, type: !6)
!2012 = !DILocalVariable(name: "bufsize", scope: !2002, file: !289, line: 808, type: !35)
!2013 = !DILocalVariable(name: "buf", scope: !2002, file: !289, line: 812, type: !8)
!2014 = !DILocation(line: 0, scope: !2002, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 791, column: 10, scope: !1993)
!2016 = !DILocation(line: 804, column: 37, scope: !2002, inlinedAt: !2015)
!2017 = !DILocation(line: 805, column: 21, scope: !2002, inlinedAt: !2015)
!2018 = !DILocation(line: 807, column: 18, scope: !2002, inlinedAt: !2015)
!2019 = !DILocation(line: 807, column: 24, scope: !2002, inlinedAt: !2015)
!2020 = !DILocation(line: 808, column: 72, scope: !2002, inlinedAt: !2015)
!2021 = !DILocation(line: 809, column: 53, scope: !2002, inlinedAt: !2015)
!2022 = !DILocation(line: 810, column: 49, scope: !2002, inlinedAt: !2015)
!2023 = !DILocation(line: 811, column: 49, scope: !2002, inlinedAt: !2015)
!2024 = !DILocation(line: 808, column: 20, scope: !2002, inlinedAt: !2015)
!2025 = !DILocation(line: 811, column: 62, scope: !2002, inlinedAt: !2015)
!2026 = !DILocation(line: 812, column: 15, scope: !2002, inlinedAt: !2015)
!2027 = !DILocation(line: 813, column: 60, scope: !2002, inlinedAt: !2015)
!2028 = !DILocation(line: 815, column: 32, scope: !2002, inlinedAt: !2015)
!2029 = !DILocation(line: 815, column: 47, scope: !2002, inlinedAt: !2015)
!2030 = !DILocation(line: 813, column: 3, scope: !2002, inlinedAt: !2015)
!2031 = !DILocation(line: 816, column: 9, scope: !2002, inlinedAt: !2015)
!2032 = !DILocation(line: 791, column: 3, scope: !1993)
!2033 = !DILocation(line: 0, scope: !2002)
!2034 = !DILocation(line: 804, column: 37, scope: !2002)
!2035 = !DILocation(line: 805, column: 21, scope: !2002)
!2036 = !DILocation(line: 807, column: 18, scope: !2002)
!2037 = !DILocation(line: 807, column: 27, scope: !2002)
!2038 = !DILocation(line: 807, column: 24, scope: !2002)
!2039 = !DILocation(line: 808, column: 72, scope: !2002)
!2040 = !DILocation(line: 809, column: 53, scope: !2002)
!2041 = !DILocation(line: 810, column: 49, scope: !2002)
!2042 = !DILocation(line: 811, column: 49, scope: !2002)
!2043 = !DILocation(line: 808, column: 20, scope: !2002)
!2044 = !DILocation(line: 811, column: 62, scope: !2002)
!2045 = !DILocation(line: 812, column: 15, scope: !2002)
!2046 = !DILocation(line: 813, column: 60, scope: !2002)
!2047 = !DILocation(line: 815, column: 32, scope: !2002)
!2048 = !DILocation(line: 815, column: 47, scope: !2002)
!2049 = !DILocation(line: 813, column: 3, scope: !2002)
!2050 = !DILocation(line: 816, column: 9, scope: !2002)
!2051 = !DILocation(line: 817, column: 7, scope: !2002)
!2052 = !DILocation(line: 818, column: 11, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2002, file: !289, line: 817, column: 7)
!2054 = !{!841, !841, i64 0}
!2055 = !DILocation(line: 818, column: 5, scope: !2053)
!2056 = !DILocation(line: 819, column: 3, scope: !2002)
!2057 = distinct !DISubprogram(name: "quotearg_free", scope: !289, file: !289, line: 837, type: !242, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2058)
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "sv", scope: !2057, file: !289, line: 839, type: !360)
!2060 = !DILocalVariable(name: "i", scope: !2061, file: !289, line: 840, type: !6)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !289, line: 840, column: 3)
!2062 = !DILocation(line: 839, column: 24, scope: !2057)
!2063 = !DILocation(line: 0, scope: !2057)
!2064 = !DILocation(line: 0, scope: !2061)
!2065 = !DILocation(line: 840, column: 21, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !289, line: 840, column: 3)
!2067 = !DILocation(line: 840, column: 3, scope: !2061)
!2068 = !DILocation(line: 842, column: 13, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2057, file: !289, line: 842, column: 7)
!2070 = !{!2071, !489, i64 8}
!2071 = !{!"slotvec", !841, i64 0, !489, i64 8}
!2072 = !DILocation(line: 842, column: 17, scope: !2069)
!2073 = !DILocation(line: 842, column: 7, scope: !2057)
!2074 = !DILocation(line: 841, column: 17, scope: !2066)
!2075 = !DILocation(line: 841, column: 5, scope: !2066)
!2076 = !DILocation(line: 840, column: 32, scope: !2066)
!2077 = distinct !{!2077, !2067, !2078, !557}
!2078 = !DILocation(line: 841, column: 20, scope: !2061)
!2079 = !DILocation(line: 844, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2069, file: !289, line: 843, column: 5)
!2081 = !DILocation(line: 845, column: 21, scope: !2080)
!2082 = !{!2071, !841, i64 0}
!2083 = !DILocation(line: 846, column: 20, scope: !2080)
!2084 = !DILocation(line: 847, column: 5, scope: !2080)
!2085 = !DILocation(line: 848, column: 10, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2057, file: !289, line: 848, column: 7)
!2087 = !DILocation(line: 848, column: 7, scope: !2057)
!2088 = !DILocation(line: 850, column: 13, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2086, file: !289, line: 849, column: 5)
!2090 = !DILocation(line: 850, column: 7, scope: !2089)
!2091 = !DILocation(line: 851, column: 15, scope: !2089)
!2092 = !DILocation(line: 852, column: 5, scope: !2089)
!2093 = !DILocation(line: 853, column: 10, scope: !2057)
!2094 = !DILocation(line: 854, column: 1, scope: !2057)
!2095 = distinct !DISubprogram(name: "quotearg_n", scope: !289, file: !289, line: 919, type: !732, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2096)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "n", arg: 1, scope: !2095, file: !289, line: 919, type: !6)
!2098 = !DILocalVariable(name: "arg", arg: 2, scope: !2095, file: !289, line: 919, type: !38)
!2099 = !DILocation(line: 0, scope: !2095)
!2100 = !DILocation(line: 921, column: 10, scope: !2095)
!2101 = !DILocation(line: 921, column: 3, scope: !2095)
!2102 = distinct !DISubprogram(name: "quotearg_n_options", scope: !289, file: !289, line: 866, type: !2103, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!8, !6, !38, !35, !1329}
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2116, !2117, !2119, !2120, !2121}
!2106 = !DILocalVariable(name: "n", arg: 1, scope: !2102, file: !289, line: 866, type: !6)
!2107 = !DILocalVariable(name: "arg", arg: 2, scope: !2102, file: !289, line: 866, type: !38)
!2108 = !DILocalVariable(name: "argsize", arg: 3, scope: !2102, file: !289, line: 866, type: !35)
!2109 = !DILocalVariable(name: "options", arg: 4, scope: !2102, file: !289, line: 867, type: !1329)
!2110 = !DILocalVariable(name: "saved_errno", scope: !2102, file: !289, line: 869, type: !6)
!2111 = !DILocalVariable(name: "sv", scope: !2102, file: !289, line: 871, type: !360)
!2112 = !DILocalVariable(name: "nslots_max", scope: !2102, file: !289, line: 873, type: !6)
!2113 = !DILocalVariable(name: "preallocated", scope: !2114, file: !289, line: 879, type: !56)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !289, line: 878, column: 5)
!2115 = distinct !DILexicalBlock(scope: !2102, file: !289, line: 877, column: 7)
!2116 = !DILocalVariable(name: "new_nslots", scope: !2114, file: !289, line: 880, type: !432)
!2117 = !DILocalVariable(name: "size", scope: !2118, file: !289, line: 891, type: !35)
!2118 = distinct !DILexicalBlock(scope: !2102, file: !289, line: 890, column: 3)
!2119 = !DILocalVariable(name: "val", scope: !2118, file: !289, line: 892, type: !8)
!2120 = !DILocalVariable(name: "flags", scope: !2118, file: !289, line: 894, type: !6)
!2121 = !DILocalVariable(name: "qsize", scope: !2118, file: !289, line: 895, type: !35)
!2122 = !DILocation(line: 0, scope: !2102)
!2123 = !DILocation(line: 869, column: 21, scope: !2102)
!2124 = !DILocation(line: 871, column: 24, scope: !2102)
!2125 = !DILocation(line: 874, column: 17, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2102, file: !289, line: 874, column: 7)
!2127 = !DILocation(line: 875, column: 5, scope: !2126)
!2128 = !DILocation(line: 877, column: 7, scope: !2115)
!2129 = !DILocation(line: 877, column: 14, scope: !2115)
!2130 = !DILocation(line: 877, column: 7, scope: !2102)
!2131 = !DILocation(line: 879, column: 31, scope: !2114)
!2132 = !DILocation(line: 0, scope: !2114)
!2133 = !DILocation(line: 880, column: 7, scope: !2114)
!2134 = !DILocation(line: 880, column: 26, scope: !2114)
!2135 = !DILocation(line: 880, column: 13, scope: !2114)
!2136 = !DILocation(line: 882, column: 31, scope: !2114)
!2137 = !DILocation(line: 883, column: 33, scope: !2114)
!2138 = !DILocation(line: 883, column: 42, scope: !2114)
!2139 = !DILocation(line: 883, column: 31, scope: !2114)
!2140 = !DILocation(line: 882, column: 22, scope: !2114)
!2141 = !DILocation(line: 882, column: 15, scope: !2114)
!2142 = !DILocation(line: 884, column: 11, scope: !2114)
!2143 = !DILocation(line: 885, column: 15, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2114, file: !289, line: 884, column: 11)
!2145 = !{i64 0, i64 8, !2054, i64 8, i64 8, !488}
!2146 = !DILocation(line: 885, column: 9, scope: !2144)
!2147 = !DILocation(line: 886, column: 20, scope: !2114)
!2148 = !DILocation(line: 886, column: 18, scope: !2114)
!2149 = !DILocation(line: 886, column: 15, scope: !2114)
!2150 = !DILocation(line: 886, column: 32, scope: !2114)
!2151 = !DILocation(line: 886, column: 43, scope: !2114)
!2152 = !DILocation(line: 886, column: 53, scope: !2114)
!2153 = !DILocation(line: 0, scope: !1540, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 886, column: 7, scope: !2114)
!2155 = !DILocation(line: 59, column: 10, scope: !1540, inlinedAt: !2154)
!2156 = !DILocation(line: 887, column: 16, scope: !2114)
!2157 = !DILocation(line: 887, column: 14, scope: !2114)
!2158 = !DILocation(line: 888, column: 5, scope: !2115)
!2159 = !DILocation(line: 888, column: 5, scope: !2114)
!2160 = !DILocation(line: 891, column: 19, scope: !2118)
!2161 = !DILocation(line: 891, column: 25, scope: !2118)
!2162 = !DILocation(line: 0, scope: !2118)
!2163 = !DILocation(line: 892, column: 23, scope: !2118)
!2164 = !DILocation(line: 894, column: 26, scope: !2118)
!2165 = !DILocation(line: 894, column: 32, scope: !2118)
!2166 = !DILocation(line: 896, column: 55, scope: !2118)
!2167 = !DILocation(line: 897, column: 46, scope: !2118)
!2168 = !DILocation(line: 898, column: 55, scope: !2118)
!2169 = !DILocation(line: 899, column: 55, scope: !2118)
!2170 = !DILocation(line: 895, column: 20, scope: !2118)
!2171 = !DILocation(line: 901, column: 14, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2118, file: !289, line: 901, column: 9)
!2173 = !DILocation(line: 901, column: 9, scope: !2118)
!2174 = !DILocation(line: 903, column: 35, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !289, line: 902, column: 7)
!2176 = !DILocation(line: 903, column: 20, scope: !2175)
!2177 = !DILocation(line: 904, column: 17, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !289, line: 904, column: 13)
!2179 = !DILocation(line: 904, column: 13, scope: !2175)
!2180 = !DILocation(line: 905, column: 11, scope: !2178)
!2181 = !DILocation(line: 906, column: 27, scope: !2175)
!2182 = !DILocation(line: 906, column: 19, scope: !2175)
!2183 = !DILocation(line: 907, column: 69, scope: !2175)
!2184 = !DILocation(line: 909, column: 44, scope: !2175)
!2185 = !DILocation(line: 910, column: 44, scope: !2175)
!2186 = !DILocation(line: 907, column: 9, scope: !2175)
!2187 = !DILocation(line: 911, column: 7, scope: !2175)
!2188 = !DILocation(line: 913, column: 11, scope: !2118)
!2189 = !DILocation(line: 914, column: 5, scope: !2118)
!2190 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !289, file: !289, line: 925, type: !2191, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!8, !6, !38, !35}
!2193 = !{!2194, !2195, !2196}
!2194 = !DILocalVariable(name: "n", arg: 1, scope: !2190, file: !289, line: 925, type: !6)
!2195 = !DILocalVariable(name: "arg", arg: 2, scope: !2190, file: !289, line: 925, type: !38)
!2196 = !DILocalVariable(name: "argsize", arg: 3, scope: !2190, file: !289, line: 925, type: !35)
!2197 = !DILocation(line: 0, scope: !2190)
!2198 = !DILocation(line: 927, column: 10, scope: !2190)
!2199 = !DILocation(line: 927, column: 3, scope: !2190)
!2200 = distinct !DISubprogram(name: "quotearg", scope: !289, file: !289, line: 931, type: !736, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2201)
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "arg", arg: 1, scope: !2200, file: !289, line: 931, type: !38)
!2203 = !DILocation(line: 0, scope: !2200)
!2204 = !DILocation(line: 0, scope: !2095, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 933, column: 10, scope: !2200)
!2206 = !DILocation(line: 921, column: 10, scope: !2095, inlinedAt: !2205)
!2207 = !DILocation(line: 933, column: 3, scope: !2200)
!2208 = distinct !DISubprogram(name: "quotearg_mem", scope: !289, file: !289, line: 937, type: !2209, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!8, !38, !35}
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "arg", arg: 1, scope: !2208, file: !289, line: 937, type: !38)
!2213 = !DILocalVariable(name: "argsize", arg: 2, scope: !2208, file: !289, line: 937, type: !35)
!2214 = !DILocation(line: 0, scope: !2208)
!2215 = !DILocation(line: 0, scope: !2190, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 939, column: 10, scope: !2208)
!2217 = !DILocation(line: 927, column: 10, scope: !2190, inlinedAt: !2216)
!2218 = !DILocation(line: 939, column: 3, scope: !2208)
!2219 = distinct !DISubprogram(name: "quotearg_n_style", scope: !289, file: !289, line: 943, type: !2220, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!8, !6, !291, !38}
!2222 = !{!2223, !2224, !2225, !2226}
!2223 = !DILocalVariable(name: "n", arg: 1, scope: !2219, file: !289, line: 943, type: !6)
!2224 = !DILocalVariable(name: "s", arg: 2, scope: !2219, file: !289, line: 943, type: !291)
!2225 = !DILocalVariable(name: "arg", arg: 3, scope: !2219, file: !289, line: 943, type: !38)
!2226 = !DILocalVariable(name: "o", scope: !2219, file: !289, line: 945, type: !1330)
!2227 = !DILocation(line: 0, scope: !2219)
!2228 = !DILocation(line: 945, column: 3, scope: !2219)
!2229 = !DILocation(line: 945, column: 32, scope: !2219)
!2230 = !{!2231}
!2231 = distinct !{!2231, !2232, !"quoting_options_from_style: argument 0"}
!2232 = distinct !{!2232, !"quoting_options_from_style"}
!2233 = !DILocation(line: 945, column: 36, scope: !2219)
!2234 = !DILocalVariable(name: "style", arg: 1, scope: !2235, file: !289, line: 183, type: !291)
!2235 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !289, file: !289, line: 183, type: !2236, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!320, !291}
!2238 = !{!2234, !2239}
!2239 = !DILocalVariable(name: "o", scope: !2235, file: !289, line: 185, type: !320)
!2240 = !DILocation(line: 0, scope: !2235, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 945, column: 36, scope: !2219)
!2242 = !DILocation(line: 185, column: 26, scope: !2235, inlinedAt: !2241)
!2243 = !DILocation(line: 186, column: 13, scope: !2244, inlinedAt: !2241)
!2244 = distinct !DILexicalBlock(scope: !2235, file: !289, line: 186, column: 7)
!2245 = !DILocation(line: 186, column: 7, scope: !2235, inlinedAt: !2241)
!2246 = !DILocation(line: 187, column: 5, scope: !2244, inlinedAt: !2241)
!2247 = !DILocation(line: 188, column: 5, scope: !2235, inlinedAt: !2241)
!2248 = !DILocation(line: 188, column: 11, scope: !2235, inlinedAt: !2241)
!2249 = !DILocation(line: 946, column: 10, scope: !2219)
!2250 = !DILocation(line: 947, column: 1, scope: !2219)
!2251 = !DILocation(line: 946, column: 3, scope: !2219)
!2252 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !289, file: !289, line: 950, type: !2253, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!8, !6, !291, !38, !35}
!2255 = !{!2256, !2257, !2258, !2259, !2260}
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2252, file: !289, line: 950, type: !6)
!2257 = !DILocalVariable(name: "s", arg: 2, scope: !2252, file: !289, line: 950, type: !291)
!2258 = !DILocalVariable(name: "arg", arg: 3, scope: !2252, file: !289, line: 951, type: !38)
!2259 = !DILocalVariable(name: "argsize", arg: 4, scope: !2252, file: !289, line: 951, type: !35)
!2260 = !DILocalVariable(name: "o", scope: !2252, file: !289, line: 953, type: !1330)
!2261 = !DILocation(line: 0, scope: !2252)
!2262 = !DILocation(line: 953, column: 3, scope: !2252)
!2263 = !DILocation(line: 953, column: 32, scope: !2252)
!2264 = !{!2265}
!2265 = distinct !{!2265, !2266, !"quoting_options_from_style: argument 0"}
!2266 = distinct !{!2266, !"quoting_options_from_style"}
!2267 = !DILocation(line: 953, column: 36, scope: !2252)
!2268 = !DILocation(line: 0, scope: !2235, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 953, column: 36, scope: !2252)
!2270 = !DILocation(line: 185, column: 26, scope: !2235, inlinedAt: !2269)
!2271 = !DILocation(line: 186, column: 13, scope: !2244, inlinedAt: !2269)
!2272 = !DILocation(line: 186, column: 7, scope: !2235, inlinedAt: !2269)
!2273 = !DILocation(line: 187, column: 5, scope: !2244, inlinedAt: !2269)
!2274 = !DILocation(line: 188, column: 5, scope: !2235, inlinedAt: !2269)
!2275 = !DILocation(line: 188, column: 11, scope: !2235, inlinedAt: !2269)
!2276 = !DILocation(line: 954, column: 10, scope: !2252)
!2277 = !DILocation(line: 955, column: 1, scope: !2252)
!2278 = !DILocation(line: 954, column: 3, scope: !2252)
!2279 = distinct !DISubprogram(name: "quotearg_style", scope: !289, file: !289, line: 958, type: !2280, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!8, !291, !38}
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "s", arg: 1, scope: !2279, file: !289, line: 958, type: !291)
!2284 = !DILocalVariable(name: "arg", arg: 2, scope: !2279, file: !289, line: 958, type: !38)
!2285 = !DILocation(line: 0, scope: !2279)
!2286 = !DILocation(line: 0, scope: !2219, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 960, column: 10, scope: !2279)
!2288 = !DILocation(line: 945, column: 3, scope: !2219, inlinedAt: !2287)
!2289 = !DILocation(line: 945, column: 32, scope: !2219, inlinedAt: !2287)
!2290 = !{!2291}
!2291 = distinct !{!2291, !2292, !"quoting_options_from_style: argument 0"}
!2292 = distinct !{!2292, !"quoting_options_from_style"}
!2293 = !DILocation(line: 945, column: 36, scope: !2219, inlinedAt: !2287)
!2294 = !DILocation(line: 0, scope: !2235, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 945, column: 36, scope: !2219, inlinedAt: !2287)
!2296 = !DILocation(line: 185, column: 26, scope: !2235, inlinedAt: !2295)
!2297 = !DILocation(line: 186, column: 13, scope: !2244, inlinedAt: !2295)
!2298 = !DILocation(line: 186, column: 7, scope: !2235, inlinedAt: !2295)
!2299 = !DILocation(line: 187, column: 5, scope: !2244, inlinedAt: !2295)
!2300 = !DILocation(line: 188, column: 5, scope: !2235, inlinedAt: !2295)
!2301 = !DILocation(line: 188, column: 11, scope: !2235, inlinedAt: !2295)
!2302 = !DILocation(line: 946, column: 10, scope: !2219, inlinedAt: !2287)
!2303 = !DILocation(line: 947, column: 1, scope: !2219, inlinedAt: !2287)
!2304 = !DILocation(line: 960, column: 3, scope: !2279)
!2305 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !289, file: !289, line: 964, type: !2306, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!8, !291, !38, !35}
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "s", arg: 1, scope: !2305, file: !289, line: 964, type: !291)
!2310 = !DILocalVariable(name: "arg", arg: 2, scope: !2305, file: !289, line: 964, type: !38)
!2311 = !DILocalVariable(name: "argsize", arg: 3, scope: !2305, file: !289, line: 964, type: !35)
!2312 = !DILocation(line: 0, scope: !2305)
!2313 = !DILocation(line: 0, scope: !2252, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 966, column: 10, scope: !2305)
!2315 = !DILocation(line: 953, column: 3, scope: !2252, inlinedAt: !2314)
!2316 = !DILocation(line: 953, column: 32, scope: !2252, inlinedAt: !2314)
!2317 = !{!2318}
!2318 = distinct !{!2318, !2319, !"quoting_options_from_style: argument 0"}
!2319 = distinct !{!2319, !"quoting_options_from_style"}
!2320 = !DILocation(line: 953, column: 36, scope: !2252, inlinedAt: !2314)
!2321 = !DILocation(line: 0, scope: !2235, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 953, column: 36, scope: !2252, inlinedAt: !2314)
!2323 = !DILocation(line: 185, column: 26, scope: !2235, inlinedAt: !2322)
!2324 = !DILocation(line: 186, column: 13, scope: !2244, inlinedAt: !2322)
!2325 = !DILocation(line: 186, column: 7, scope: !2235, inlinedAt: !2322)
!2326 = !DILocation(line: 187, column: 5, scope: !2244, inlinedAt: !2322)
!2327 = !DILocation(line: 188, column: 5, scope: !2235, inlinedAt: !2322)
!2328 = !DILocation(line: 188, column: 11, scope: !2235, inlinedAt: !2322)
!2329 = !DILocation(line: 954, column: 10, scope: !2252, inlinedAt: !2314)
!2330 = !DILocation(line: 955, column: 1, scope: !2252, inlinedAt: !2314)
!2331 = !DILocation(line: 966, column: 3, scope: !2305)
!2332 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !289, file: !289, line: 970, type: !2333, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!8, !38, !35, !9}
!2335 = !{!2336, !2337, !2338, !2339}
!2336 = !DILocalVariable(name: "arg", arg: 1, scope: !2332, file: !289, line: 970, type: !38)
!2337 = !DILocalVariable(name: "argsize", arg: 2, scope: !2332, file: !289, line: 970, type: !35)
!2338 = !DILocalVariable(name: "ch", arg: 3, scope: !2332, file: !289, line: 970, type: !9)
!2339 = !DILocalVariable(name: "options", scope: !2332, file: !289, line: 972, type: !320)
!2340 = !DILocation(line: 0, scope: !2332)
!2341 = !DILocation(line: 972, column: 3, scope: !2332)
!2342 = !DILocation(line: 972, column: 26, scope: !2332)
!2343 = !DILocation(line: 973, column: 13, scope: !2332)
!2344 = !{i64 0, i64 4, !496, i64 4, i64 4, !594, i64 8, i64 32, !496, i64 40, i64 8, !488, i64 48, i64 8, !488}
!2345 = !DILocation(line: 0, scope: !1350, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 974, column: 3, scope: !2332)
!2347 = !DILocation(line: 147, column: 62, scope: !1350, inlinedAt: !2346)
!2348 = !DILocation(line: 147, column: 57, scope: !1350, inlinedAt: !2346)
!2349 = !DILocation(line: 148, column: 15, scope: !1350, inlinedAt: !2346)
!2350 = !DILocation(line: 149, column: 21, scope: !1350, inlinedAt: !2346)
!2351 = !DILocation(line: 149, column: 24, scope: !1350, inlinedAt: !2346)
!2352 = !DILocation(line: 149, column: 34, scope: !1350, inlinedAt: !2346)
!2353 = !DILocation(line: 150, column: 19, scope: !1350, inlinedAt: !2346)
!2354 = !DILocation(line: 150, column: 24, scope: !1350, inlinedAt: !2346)
!2355 = !DILocation(line: 150, column: 6, scope: !1350, inlinedAt: !2346)
!2356 = !DILocation(line: 975, column: 10, scope: !2332)
!2357 = !DILocation(line: 976, column: 1, scope: !2332)
!2358 = !DILocation(line: 975, column: 3, scope: !2332)
!2359 = distinct !DISubprogram(name: "quotearg_char", scope: !289, file: !289, line: 979, type: !2360, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!8, !38, !9}
!2362 = !{!2363, !2364}
!2363 = !DILocalVariable(name: "arg", arg: 1, scope: !2359, file: !289, line: 979, type: !38)
!2364 = !DILocalVariable(name: "ch", arg: 2, scope: !2359, file: !289, line: 979, type: !9)
!2365 = !DILocation(line: 0, scope: !2359)
!2366 = !DILocation(line: 0, scope: !2332, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 981, column: 10, scope: !2359)
!2368 = !DILocation(line: 972, column: 3, scope: !2332, inlinedAt: !2367)
!2369 = !DILocation(line: 972, column: 26, scope: !2332, inlinedAt: !2367)
!2370 = !DILocation(line: 973, column: 13, scope: !2332, inlinedAt: !2367)
!2371 = !DILocation(line: 0, scope: !1350, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 974, column: 3, scope: !2332, inlinedAt: !2367)
!2373 = !DILocation(line: 147, column: 62, scope: !1350, inlinedAt: !2372)
!2374 = !DILocation(line: 147, column: 57, scope: !1350, inlinedAt: !2372)
!2375 = !DILocation(line: 148, column: 15, scope: !1350, inlinedAt: !2372)
!2376 = !DILocation(line: 149, column: 21, scope: !1350, inlinedAt: !2372)
!2377 = !DILocation(line: 149, column: 24, scope: !1350, inlinedAt: !2372)
!2378 = !DILocation(line: 149, column: 34, scope: !1350, inlinedAt: !2372)
!2379 = !DILocation(line: 150, column: 19, scope: !1350, inlinedAt: !2372)
!2380 = !DILocation(line: 150, column: 24, scope: !1350, inlinedAt: !2372)
!2381 = !DILocation(line: 150, column: 6, scope: !1350, inlinedAt: !2372)
!2382 = !DILocation(line: 975, column: 10, scope: !2332, inlinedAt: !2367)
!2383 = !DILocation(line: 976, column: 1, scope: !2332, inlinedAt: !2367)
!2384 = !DILocation(line: 981, column: 3, scope: !2359)
!2385 = distinct !DISubprogram(name: "quotearg_colon", scope: !289, file: !289, line: 985, type: !736, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2386)
!2386 = !{!2387}
!2387 = !DILocalVariable(name: "arg", arg: 1, scope: !2385, file: !289, line: 985, type: !38)
!2388 = !DILocation(line: 0, scope: !2385)
!2389 = !DILocation(line: 0, scope: !2359, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 987, column: 10, scope: !2385)
!2391 = !DILocation(line: 0, scope: !2332, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 981, column: 10, scope: !2359, inlinedAt: !2390)
!2393 = !DILocation(line: 972, column: 3, scope: !2332, inlinedAt: !2392)
!2394 = !DILocation(line: 972, column: 26, scope: !2332, inlinedAt: !2392)
!2395 = !DILocation(line: 973, column: 13, scope: !2332, inlinedAt: !2392)
!2396 = !DILocation(line: 0, scope: !1350, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 974, column: 3, scope: !2332, inlinedAt: !2392)
!2398 = !DILocation(line: 147, column: 57, scope: !1350, inlinedAt: !2397)
!2399 = !DILocation(line: 149, column: 21, scope: !1350, inlinedAt: !2397)
!2400 = !DILocation(line: 150, column: 6, scope: !1350, inlinedAt: !2397)
!2401 = !DILocation(line: 975, column: 10, scope: !2332, inlinedAt: !2392)
!2402 = !DILocation(line: 976, column: 1, scope: !2332, inlinedAt: !2392)
!2403 = !DILocation(line: 987, column: 3, scope: !2385)
!2404 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !289, file: !289, line: 991, type: !2209, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2405)
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "arg", arg: 1, scope: !2404, file: !289, line: 991, type: !38)
!2407 = !DILocalVariable(name: "argsize", arg: 2, scope: !2404, file: !289, line: 991, type: !35)
!2408 = !DILocation(line: 0, scope: !2404)
!2409 = !DILocation(line: 0, scope: !2332, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 993, column: 10, scope: !2404)
!2411 = !DILocation(line: 972, column: 3, scope: !2332, inlinedAt: !2410)
!2412 = !DILocation(line: 972, column: 26, scope: !2332, inlinedAt: !2410)
!2413 = !DILocation(line: 973, column: 13, scope: !2332, inlinedAt: !2410)
!2414 = !DILocation(line: 0, scope: !1350, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 974, column: 3, scope: !2332, inlinedAt: !2410)
!2416 = !DILocation(line: 147, column: 57, scope: !1350, inlinedAt: !2415)
!2417 = !DILocation(line: 149, column: 21, scope: !1350, inlinedAt: !2415)
!2418 = !DILocation(line: 150, column: 6, scope: !1350, inlinedAt: !2415)
!2419 = !DILocation(line: 975, column: 10, scope: !2332, inlinedAt: !2410)
!2420 = !DILocation(line: 976, column: 1, scope: !2332, inlinedAt: !2410)
!2421 = !DILocation(line: 993, column: 3, scope: !2404)
!2422 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !289, file: !289, line: 997, type: !2220, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2423)
!2423 = !{!2424, !2425, !2426, !2427}
!2424 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !289, line: 997, type: !6)
!2425 = !DILocalVariable(name: "s", arg: 2, scope: !2422, file: !289, line: 997, type: !291)
!2426 = !DILocalVariable(name: "arg", arg: 3, scope: !2422, file: !289, line: 997, type: !38)
!2427 = !DILocalVariable(name: "options", scope: !2422, file: !289, line: 999, type: !320)
!2428 = !DILocation(line: 0, scope: !2422)
!2429 = !DILocation(line: 999, column: 3, scope: !2422)
!2430 = !DILocation(line: 999, column: 26, scope: !2422)
!2431 = !DILocation(line: 0, scope: !2235, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1000, column: 13, scope: !2422)
!2433 = !DILocation(line: 186, column: 13, scope: !2244, inlinedAt: !2432)
!2434 = !DILocation(line: 186, column: 7, scope: !2235, inlinedAt: !2432)
!2435 = !DILocation(line: 187, column: 5, scope: !2244, inlinedAt: !2432)
!2436 = !{!2437}
!2437 = distinct !{!2437, !2438, !"quoting_options_from_style: argument 0"}
!2438 = distinct !{!2438, !"quoting_options_from_style"}
!2439 = !DILocation(line: 1000, column: 13, scope: !2422)
!2440 = !DILocation(line: 0, scope: !1350, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 1001, column: 3, scope: !2422)
!2442 = !DILocation(line: 147, column: 57, scope: !1350, inlinedAt: !2441)
!2443 = !DILocation(line: 149, column: 21, scope: !1350, inlinedAt: !2441)
!2444 = !DILocation(line: 150, column: 6, scope: !1350, inlinedAt: !2441)
!2445 = !DILocation(line: 1002, column: 10, scope: !2422)
!2446 = !DILocation(line: 1003, column: 1, scope: !2422)
!2447 = !DILocation(line: 1002, column: 3, scope: !2422)
!2448 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !289, file: !289, line: 1006, type: !2449, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!8, !6, !38, !38, !38}
!2451 = !{!2452, !2453, !2454, !2455}
!2452 = !DILocalVariable(name: "n", arg: 1, scope: !2448, file: !289, line: 1006, type: !6)
!2453 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2448, file: !289, line: 1006, type: !38)
!2454 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2448, file: !289, line: 1007, type: !38)
!2455 = !DILocalVariable(name: "arg", arg: 4, scope: !2448, file: !289, line: 1007, type: !38)
!2456 = !DILocation(line: 0, scope: !2448)
!2457 = !DILocalVariable(name: "n", arg: 1, scope: !2458, file: !289, line: 1014, type: !6)
!2458 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !289, file: !289, line: 1014, type: !2459, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!8, !6, !38, !38, !38, !35}
!2461 = !{!2457, !2462, !2463, !2464, !2465, !2466}
!2462 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2458, file: !289, line: 1014, type: !38)
!2463 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2458, file: !289, line: 1015, type: !38)
!2464 = !DILocalVariable(name: "arg", arg: 4, scope: !2458, file: !289, line: 1016, type: !38)
!2465 = !DILocalVariable(name: "argsize", arg: 5, scope: !2458, file: !289, line: 1016, type: !35)
!2466 = !DILocalVariable(name: "o", scope: !2458, file: !289, line: 1018, type: !320)
!2467 = !DILocation(line: 0, scope: !2458, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1009, column: 10, scope: !2448)
!2469 = !DILocation(line: 1018, column: 3, scope: !2458, inlinedAt: !2468)
!2470 = !DILocation(line: 1018, column: 26, scope: !2458, inlinedAt: !2468)
!2471 = !DILocation(line: 1018, column: 30, scope: !2458, inlinedAt: !2468)
!2472 = !DILocation(line: 0, scope: !1390, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 1019, column: 3, scope: !2458, inlinedAt: !2468)
!2474 = !DILocation(line: 174, column: 6, scope: !1390, inlinedAt: !2473)
!2475 = !DILocation(line: 174, column: 12, scope: !1390, inlinedAt: !2473)
!2476 = !DILocation(line: 175, column: 8, scope: !1404, inlinedAt: !2473)
!2477 = !DILocation(line: 175, column: 19, scope: !1404, inlinedAt: !2473)
!2478 = !DILocation(line: 176, column: 5, scope: !1404, inlinedAt: !2473)
!2479 = !DILocation(line: 177, column: 6, scope: !1390, inlinedAt: !2473)
!2480 = !DILocation(line: 177, column: 17, scope: !1390, inlinedAt: !2473)
!2481 = !DILocation(line: 178, column: 6, scope: !1390, inlinedAt: !2473)
!2482 = !DILocation(line: 178, column: 18, scope: !1390, inlinedAt: !2473)
!2483 = !DILocation(line: 1020, column: 10, scope: !2458, inlinedAt: !2468)
!2484 = !DILocation(line: 1021, column: 1, scope: !2458, inlinedAt: !2468)
!2485 = !DILocation(line: 1009, column: 3, scope: !2448)
!2486 = !DILocation(line: 0, scope: !2458)
!2487 = !DILocation(line: 1018, column: 3, scope: !2458)
!2488 = !DILocation(line: 1018, column: 26, scope: !2458)
!2489 = !DILocation(line: 1018, column: 30, scope: !2458)
!2490 = !DILocation(line: 0, scope: !1390, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 1019, column: 3, scope: !2458)
!2492 = !DILocation(line: 174, column: 6, scope: !1390, inlinedAt: !2491)
!2493 = !DILocation(line: 174, column: 12, scope: !1390, inlinedAt: !2491)
!2494 = !DILocation(line: 175, column: 8, scope: !1404, inlinedAt: !2491)
!2495 = !DILocation(line: 175, column: 19, scope: !1404, inlinedAt: !2491)
!2496 = !DILocation(line: 176, column: 5, scope: !1404, inlinedAt: !2491)
!2497 = !DILocation(line: 177, column: 6, scope: !1390, inlinedAt: !2491)
!2498 = !DILocation(line: 177, column: 17, scope: !1390, inlinedAt: !2491)
!2499 = !DILocation(line: 178, column: 6, scope: !1390, inlinedAt: !2491)
!2500 = !DILocation(line: 178, column: 18, scope: !1390, inlinedAt: !2491)
!2501 = !DILocation(line: 1020, column: 10, scope: !2458)
!2502 = !DILocation(line: 1021, column: 1, scope: !2458)
!2503 = !DILocation(line: 1020, column: 3, scope: !2458)
!2504 = distinct !DISubprogram(name: "quotearg_custom", scope: !289, file: !289, line: 1024, type: !2505, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!8, !38, !38, !38}
!2507 = !{!2508, !2509, !2510}
!2508 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2504, file: !289, line: 1024, type: !38)
!2509 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2504, file: !289, line: 1024, type: !38)
!2510 = !DILocalVariable(name: "arg", arg: 3, scope: !2504, file: !289, line: 1025, type: !38)
!2511 = !DILocation(line: 0, scope: !2504)
!2512 = !DILocation(line: 0, scope: !2448, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 1027, column: 10, scope: !2504)
!2514 = !DILocation(line: 0, scope: !2458, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 1009, column: 10, scope: !2448, inlinedAt: !2513)
!2516 = !DILocation(line: 1018, column: 3, scope: !2458, inlinedAt: !2515)
!2517 = !DILocation(line: 1018, column: 26, scope: !2458, inlinedAt: !2515)
!2518 = !DILocation(line: 1018, column: 30, scope: !2458, inlinedAt: !2515)
!2519 = !DILocation(line: 0, scope: !1390, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 1019, column: 3, scope: !2458, inlinedAt: !2515)
!2521 = !DILocation(line: 174, column: 6, scope: !1390, inlinedAt: !2520)
!2522 = !DILocation(line: 174, column: 12, scope: !1390, inlinedAt: !2520)
!2523 = !DILocation(line: 175, column: 8, scope: !1404, inlinedAt: !2520)
!2524 = !DILocation(line: 175, column: 19, scope: !1404, inlinedAt: !2520)
!2525 = !DILocation(line: 176, column: 5, scope: !1404, inlinedAt: !2520)
!2526 = !DILocation(line: 177, column: 6, scope: !1390, inlinedAt: !2520)
!2527 = !DILocation(line: 177, column: 17, scope: !1390, inlinedAt: !2520)
!2528 = !DILocation(line: 178, column: 6, scope: !1390, inlinedAt: !2520)
!2529 = !DILocation(line: 178, column: 18, scope: !1390, inlinedAt: !2520)
!2530 = !DILocation(line: 1020, column: 10, scope: !2458, inlinedAt: !2515)
!2531 = !DILocation(line: 1021, column: 1, scope: !2458, inlinedAt: !2515)
!2532 = !DILocation(line: 1027, column: 3, scope: !2504)
!2533 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !289, file: !289, line: 1031, type: !2534, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!8, !38, !38, !38, !35}
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2533, file: !289, line: 1031, type: !38)
!2538 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2533, file: !289, line: 1031, type: !38)
!2539 = !DILocalVariable(name: "arg", arg: 3, scope: !2533, file: !289, line: 1032, type: !38)
!2540 = !DILocalVariable(name: "argsize", arg: 4, scope: !2533, file: !289, line: 1032, type: !35)
!2541 = !DILocation(line: 0, scope: !2533)
!2542 = !DILocation(line: 0, scope: !2458, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 1034, column: 10, scope: !2533)
!2544 = !DILocation(line: 1018, column: 3, scope: !2458, inlinedAt: !2543)
!2545 = !DILocation(line: 1018, column: 26, scope: !2458, inlinedAt: !2543)
!2546 = !DILocation(line: 1018, column: 30, scope: !2458, inlinedAt: !2543)
!2547 = !DILocation(line: 0, scope: !1390, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 1019, column: 3, scope: !2458, inlinedAt: !2543)
!2549 = !DILocation(line: 174, column: 6, scope: !1390, inlinedAt: !2548)
!2550 = !DILocation(line: 174, column: 12, scope: !1390, inlinedAt: !2548)
!2551 = !DILocation(line: 175, column: 8, scope: !1404, inlinedAt: !2548)
!2552 = !DILocation(line: 175, column: 19, scope: !1404, inlinedAt: !2548)
!2553 = !DILocation(line: 176, column: 5, scope: !1404, inlinedAt: !2548)
!2554 = !DILocation(line: 177, column: 6, scope: !1390, inlinedAt: !2548)
!2555 = !DILocation(line: 177, column: 17, scope: !1390, inlinedAt: !2548)
!2556 = !DILocation(line: 178, column: 6, scope: !1390, inlinedAt: !2548)
!2557 = !DILocation(line: 178, column: 18, scope: !1390, inlinedAt: !2548)
!2558 = !DILocation(line: 1020, column: 10, scope: !2458, inlinedAt: !2543)
!2559 = !DILocation(line: 1021, column: 1, scope: !2458, inlinedAt: !2543)
!2560 = !DILocation(line: 1034, column: 3, scope: !2533)
!2561 = distinct !DISubprogram(name: "quote_n_mem", scope: !289, file: !289, line: 1049, type: !2562, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!38, !6, !38, !35}
!2564 = !{!2565, !2566, !2567}
!2565 = !DILocalVariable(name: "n", arg: 1, scope: !2561, file: !289, line: 1049, type: !6)
!2566 = !DILocalVariable(name: "arg", arg: 2, scope: !2561, file: !289, line: 1049, type: !38)
!2567 = !DILocalVariable(name: "argsize", arg: 3, scope: !2561, file: !289, line: 1049, type: !35)
!2568 = !DILocation(line: 0, scope: !2561)
!2569 = !DILocation(line: 1051, column: 10, scope: !2561)
!2570 = !DILocation(line: 1051, column: 3, scope: !2561)
!2571 = distinct !DISubprogram(name: "quote_mem", scope: !289, file: !289, line: 1055, type: !2572, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!38, !38, !35}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !289, line: 1055, type: !38)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !289, line: 1055, type: !35)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 0, scope: !2561, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1057, column: 10, scope: !2571)
!2580 = !DILocation(line: 1051, column: 10, scope: !2561, inlinedAt: !2579)
!2581 = !DILocation(line: 1057, column: 3, scope: !2571)
!2582 = distinct !DISubprogram(name: "quote_n", scope: !289, file: !289, line: 1061, type: !2583, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!38, !6, !38}
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !289, line: 1061, type: !6)
!2587 = !DILocalVariable(name: "arg", arg: 2, scope: !2582, file: !289, line: 1061, type: !38)
!2588 = !DILocation(line: 0, scope: !2582)
!2589 = !DILocation(line: 0, scope: !2561, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 1063, column: 10, scope: !2582)
!2591 = !DILocation(line: 1051, column: 10, scope: !2561, inlinedAt: !2590)
!2592 = !DILocation(line: 1063, column: 3, scope: !2582)
!2593 = distinct !DISubprogram(name: "quote", scope: !289, file: !289, line: 1067, type: !2594, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !288, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!38, !38}
!2596 = !{!2597}
!2597 = !DILocalVariable(name: "arg", arg: 1, scope: !2593, file: !289, line: 1067, type: !38)
!2598 = !DILocation(line: 0, scope: !2593)
!2599 = !DILocation(line: 0, scope: !2582, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 1069, column: 10, scope: !2593)
!2601 = !DILocation(line: 0, scope: !2561, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1063, column: 10, scope: !2582, inlinedAt: !2600)
!2603 = !DILocation(line: 1051, column: 10, scope: !2561, inlinedAt: !2602)
!2604 = !DILocation(line: 1069, column: 3, scope: !2593)
!2605 = distinct !DISubprogram(name: "version_etc_arn", scope: !406, file: !406, line: 61, type: !2606, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !2643)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2608, !38, !38, !38, !2642, !35}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !2610)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2610, file: !73, line: 51, baseType: !6, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2610, file: !73, line: 54, baseType: !8, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2610, file: !73, line: 55, baseType: !8, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2610, file: !73, line: 56, baseType: !8, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2610, file: !73, line: 57, baseType: !8, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2610, file: !73, line: 58, baseType: !8, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2610, file: !73, line: 59, baseType: !8, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2610, file: !73, line: 60, baseType: !8, size: 64, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2610, file: !73, line: 61, baseType: !8, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2610, file: !73, line: 64, baseType: !8, size: 64, offset: 576)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2610, file: !73, line: 65, baseType: !8, size: 64, offset: 640)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2610, file: !73, line: 66, baseType: !8, size: 64, offset: 704)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2610, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2610, file: !73, line: 70, baseType: !2626, size: 64, offset: 832)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2610, file: !73, line: 72, baseType: !6, size: 32, offset: 896)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2610, file: !73, line: 73, baseType: !6, size: 32, offset: 928)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2610, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2610, file: !73, line: 77, baseType: !34, size: 16, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2610, file: !73, line: 78, baseType: !100, size: 8, offset: 1040)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2610, file: !73, line: 79, baseType: !102, size: 8, offset: 1048)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2610, file: !73, line: 81, baseType: !106, size: 64, offset: 1088)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2610, file: !73, line: 89, baseType: !109, size: 64, offset: 1152)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2610, file: !73, line: 91, baseType: !111, size: 64, offset: 1216)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2610, file: !73, line: 92, baseType: !114, size: 64, offset: 1280)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2610, file: !73, line: 93, baseType: !2626, size: 64, offset: 1344)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2610, file: !73, line: 94, baseType: !41, size: 64, offset: 1408)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2610, file: !73, line: 95, baseType: !35, size: 64, offset: 1472)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2610, file: !73, line: 96, baseType: !6, size: 32, offset: 1536)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2610, file: !73, line: 98, baseType: !121, size: 160, offset: 1568)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649}
!2644 = !DILocalVariable(name: "stream", arg: 1, scope: !2605, file: !406, line: 61, type: !2608)
!2645 = !DILocalVariable(name: "command_name", arg: 2, scope: !2605, file: !406, line: 62, type: !38)
!2646 = !DILocalVariable(name: "package", arg: 3, scope: !2605, file: !406, line: 62, type: !38)
!2647 = !DILocalVariable(name: "version", arg: 4, scope: !2605, file: !406, line: 63, type: !38)
!2648 = !DILocalVariable(name: "authors", arg: 5, scope: !2605, file: !406, line: 64, type: !2642)
!2649 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2605, file: !406, line: 64, type: !35)
!2650 = !DILocation(line: 0, scope: !2605)
!2651 = !DILocation(line: 66, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2605, file: !406, line: 66, column: 7)
!2653 = !DILocation(line: 66, column: 7, scope: !2605)
!2654 = !DILocation(line: 67, column: 5, scope: !2652)
!2655 = !DILocation(line: 69, column: 5, scope: !2652)
!2656 = !DILocation(line: 83, column: 3, scope: !2605)
!2657 = !DILocation(line: 85, column: 3, scope: !2605)
!2658 = !DILocation(line: 88, column: 3, scope: !2605)
!2659 = !DILocation(line: 95, column: 3, scope: !2605)
!2660 = !DILocation(line: 97, column: 3, scope: !2605)
!2661 = !DILocation(line: 105, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2605, file: !406, line: 98, column: 5)
!2663 = !DILocation(line: 106, column: 7, scope: !2662)
!2664 = !DILocation(line: 109, column: 7, scope: !2662)
!2665 = !DILocation(line: 110, column: 7, scope: !2662)
!2666 = !DILocation(line: 113, column: 7, scope: !2662)
!2667 = !DILocation(line: 115, column: 7, scope: !2662)
!2668 = !DILocation(line: 120, column: 7, scope: !2662)
!2669 = !DILocation(line: 122, column: 7, scope: !2662)
!2670 = !DILocation(line: 127, column: 7, scope: !2662)
!2671 = !DILocation(line: 129, column: 7, scope: !2662)
!2672 = !DILocation(line: 134, column: 7, scope: !2662)
!2673 = !DILocation(line: 137, column: 7, scope: !2662)
!2674 = !DILocation(line: 142, column: 7, scope: !2662)
!2675 = !DILocation(line: 145, column: 7, scope: !2662)
!2676 = !DILocation(line: 150, column: 7, scope: !2662)
!2677 = !DILocation(line: 154, column: 7, scope: !2662)
!2678 = !DILocation(line: 159, column: 7, scope: !2662)
!2679 = !DILocation(line: 163, column: 7, scope: !2662)
!2680 = !DILocation(line: 170, column: 7, scope: !2662)
!2681 = !DILocation(line: 174, column: 7, scope: !2662)
!2682 = !DILocation(line: 176, column: 1, scope: !2605)
!2683 = distinct !DISubprogram(name: "version_etc_ar", scope: !406, file: !406, line: 183, type: !2684, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{null, !2608, !38, !38, !38, !2642}
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692}
!2687 = !DILocalVariable(name: "stream", arg: 1, scope: !2683, file: !406, line: 183, type: !2608)
!2688 = !DILocalVariable(name: "command_name", arg: 2, scope: !2683, file: !406, line: 184, type: !38)
!2689 = !DILocalVariable(name: "package", arg: 3, scope: !2683, file: !406, line: 184, type: !38)
!2690 = !DILocalVariable(name: "version", arg: 4, scope: !2683, file: !406, line: 185, type: !38)
!2691 = !DILocalVariable(name: "authors", arg: 5, scope: !2683, file: !406, line: 185, type: !2642)
!2692 = !DILocalVariable(name: "n_authors", scope: !2683, file: !406, line: 187, type: !35)
!2693 = !DILocation(line: 0, scope: !2683)
!2694 = !DILocation(line: 189, column: 8, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2683, file: !406, line: 189, column: 3)
!2696 = !DILocation(line: 0, scope: !2695)
!2697 = !DILocation(line: 189, column: 23, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !406, line: 189, column: 3)
!2699 = !DILocation(line: 189, column: 3, scope: !2695)
!2700 = !DILocation(line: 189, column: 52, scope: !2698)
!2701 = distinct !{!2701, !2699, !2702, !557}
!2702 = !DILocation(line: 190, column: 5, scope: !2695)
!2703 = !DILocation(line: 191, column: 3, scope: !2683)
!2704 = !DILocation(line: 192, column: 1, scope: !2683)
!2705 = distinct !DISubprogram(name: "version_etc_va", scope: !406, file: !406, line: 199, type: !2706, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !2719)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !2608, !38, !38, !38, !2708}
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !215, line: 52, baseType: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !217, line: 32, baseType: !2710)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2711, baseType: !2712)
!2711 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !221, size: 256, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2712, file: !2711, line: 192, baseType: !41, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2712, file: !2711, line: 192, baseType: !41, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2712, file: !2711, line: 192, baseType: !41, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2712, file: !2711, line: 192, baseType: !6, size: 32, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2712, file: !2711, line: 192, baseType: !6, size: 32, offset: 224)
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2725, !2726}
!2720 = !DILocalVariable(name: "stream", arg: 1, scope: !2705, file: !406, line: 199, type: !2608)
!2721 = !DILocalVariable(name: "command_name", arg: 2, scope: !2705, file: !406, line: 200, type: !38)
!2722 = !DILocalVariable(name: "package", arg: 3, scope: !2705, file: !406, line: 200, type: !38)
!2723 = !DILocalVariable(name: "version", arg: 4, scope: !2705, file: !406, line: 201, type: !38)
!2724 = !DILocalVariable(name: "authors", arg: 5, scope: !2705, file: !406, line: 201, type: !2708)
!2725 = !DILocalVariable(name: "n_authors", scope: !2705, file: !406, line: 203, type: !35)
!2726 = !DILocalVariable(name: "authtab", scope: !2705, file: !406, line: 204, type: !2727)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !316)
!2728 = !DILocation(line: 0, scope: !2705)
!2729 = !DILocation(line: 201, column: 46, scope: !2705)
!2730 = !DILocation(line: 204, column: 3, scope: !2705)
!2731 = !DILocation(line: 204, column: 15, scope: !2705)
!2732 = !DILocation(line: 208, column: 35, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !406, line: 206, column: 3)
!2734 = distinct !DILexicalBlock(scope: !2705, file: !406, line: 206, column: 3)
!2735 = !DILocation(line: 208, column: 14, scope: !2733)
!2736 = !DILocation(line: 208, column: 33, scope: !2733)
!2737 = !DILocation(line: 208, column: 67, scope: !2733)
!2738 = !DILocation(line: 206, column: 3, scope: !2734)
!2739 = !DILocation(line: 0, scope: !2734)
!2740 = !DILocation(line: 211, column: 3, scope: !2705)
!2741 = !DILocation(line: 213, column: 1, scope: !2705)
!2742 = distinct !DISubprogram(name: "version_etc", scope: !406, file: !406, line: 230, type: !2743, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2608, !38, !38, !38, null}
!2745 = !{!2746, !2747, !2748, !2749, !2750}
!2746 = !DILocalVariable(name: "stream", arg: 1, scope: !2742, file: !406, line: 230, type: !2608)
!2747 = !DILocalVariable(name: "command_name", arg: 2, scope: !2742, file: !406, line: 231, type: !38)
!2748 = !DILocalVariable(name: "package", arg: 3, scope: !2742, file: !406, line: 231, type: !38)
!2749 = !DILocalVariable(name: "version", arg: 4, scope: !2742, file: !406, line: 232, type: !38)
!2750 = !DILocalVariable(name: "authors", scope: !2742, file: !406, line: 234, type: !2708)
!2751 = !DILocation(line: 0, scope: !2742)
!2752 = !DILocation(line: 234, column: 3, scope: !2742)
!2753 = !DILocation(line: 234, column: 11, scope: !2742)
!2754 = !DILocation(line: 235, column: 3, scope: !2742)
!2755 = !DILocation(line: 236, column: 3, scope: !2742)
!2756 = !DILocation(line: 237, column: 3, scope: !2742)
!2757 = !DILocation(line: 238, column: 1, scope: !2742)
!2758 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !406, file: !406, line: 241, type: !242, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !586)
!2759 = !DILocation(line: 243, column: 3, scope: !2758)
!2760 = !DILocation(line: 248, column: 3, scope: !2758)
!2761 = !DILocation(line: 254, column: 3, scope: !2758)
!2762 = !DILocation(line: 259, column: 3, scope: !2758)
!2763 = !DILocation(line: 261, column: 1, scope: !2758)
!2764 = distinct !DISubprogram(name: "xnrealloc", scope: !2765, file: !2765, line: 147, type: !2766, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2768)
!2765 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!41, !41, !35, !35}
!2768 = !{!2769, !2770, !2771}
!2769 = !DILocalVariable(name: "p", arg: 1, scope: !2764, file: !2765, line: 147, type: !41)
!2770 = !DILocalVariable(name: "n", arg: 2, scope: !2764, file: !2765, line: 147, type: !35)
!2771 = !DILocalVariable(name: "s", arg: 3, scope: !2764, file: !2765, line: 147, type: !35)
!2772 = !DILocation(line: 0, scope: !2764)
!2773 = !DILocalVariable(name: "p", arg: 1, scope: !2774, file: !413, line: 83, type: !41)
!2774 = distinct !DISubprogram(name: "xreallocarray", scope: !413, file: !413, line: 83, type: !2766, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2775)
!2775 = !{!2773, !2776, !2777}
!2776 = !DILocalVariable(name: "n", arg: 2, scope: !2774, file: !413, line: 83, type: !35)
!2777 = !DILocalVariable(name: "s", arg: 3, scope: !2774, file: !413, line: 83, type: !35)
!2778 = !DILocation(line: 0, scope: !2774, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 149, column: 10, scope: !2764)
!2780 = !DILocation(line: 85, column: 25, scope: !2774, inlinedAt: !2779)
!2781 = !DILocalVariable(name: "p", arg: 1, scope: !2782, file: !413, line: 37, type: !41)
!2782 = distinct !DISubprogram(name: "check_nonnull", scope: !413, file: !413, line: 37, type: !2783, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!41, !41}
!2785 = !{!2781}
!2786 = !DILocation(line: 0, scope: !2782, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 85, column: 10, scope: !2774, inlinedAt: !2779)
!2788 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2787)
!2789 = distinct !DILexicalBlock(scope: !2782, file: !413, line: 39, column: 7)
!2790 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2787)
!2791 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2787)
!2792 = !DILocation(line: 149, column: 3, scope: !2764)
!2793 = !DILocation(line: 0, scope: !2774)
!2794 = !DILocation(line: 85, column: 25, scope: !2774)
!2795 = !DILocation(line: 0, scope: !2782, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 85, column: 10, scope: !2774)
!2797 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2796)
!2798 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2796)
!2799 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2796)
!2800 = !DILocation(line: 85, column: 3, scope: !2774)
!2801 = distinct !DISubprogram(name: "xmalloc", scope: !413, file: !413, line: 47, type: !2802, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!41, !35}
!2804 = !{!2805}
!2805 = !DILocalVariable(name: "s", arg: 1, scope: !2801, file: !413, line: 47, type: !35)
!2806 = !DILocation(line: 0, scope: !2801)
!2807 = !DILocation(line: 49, column: 25, scope: !2801)
!2808 = !DILocation(line: 0, scope: !2782, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 49, column: 10, scope: !2801)
!2810 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2809)
!2811 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2809)
!2812 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2809)
!2813 = !DILocation(line: 49, column: 3, scope: !2801)
!2814 = distinct !DISubprogram(name: "ximalloc", scope: !413, file: !413, line: 53, type: !2815, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!41, !432}
!2817 = !{!2818}
!2818 = !DILocalVariable(name: "s", arg: 1, scope: !2814, file: !413, line: 53, type: !432)
!2819 = !DILocation(line: 0, scope: !2814)
!2820 = !DILocalVariable(name: "s", arg: 1, scope: !2821, file: !2822, line: 55, type: !432)
!2821 = distinct !DISubprogram(name: "imalloc", scope: !2822, file: !2822, line: 55, type: !2815, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2823)
!2822 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2823 = !{!2820}
!2824 = !DILocation(line: 0, scope: !2821, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 55, column: 25, scope: !2814)
!2826 = !DILocation(line: 57, column: 26, scope: !2821, inlinedAt: !2825)
!2827 = !DILocation(line: 0, scope: !2782, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 55, column: 10, scope: !2814)
!2829 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2828)
!2830 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2828)
!2831 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2828)
!2832 = !DILocation(line: 55, column: 3, scope: !2814)
!2833 = distinct !DISubprogram(name: "xcharalloc", scope: !413, file: !413, line: 59, type: !2834, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!8, !35}
!2836 = !{!2837}
!2837 = !DILocalVariable(name: "n", arg: 1, scope: !2833, file: !413, line: 59, type: !35)
!2838 = !DILocation(line: 0, scope: !2833)
!2839 = !DILocation(line: 0, scope: !2801, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 61, column: 10, scope: !2833)
!2841 = !DILocation(line: 49, column: 25, scope: !2801, inlinedAt: !2840)
!2842 = !DILocation(line: 0, scope: !2782, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 49, column: 10, scope: !2801, inlinedAt: !2840)
!2844 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2843)
!2845 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2843)
!2846 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2843)
!2847 = !DILocation(line: 61, column: 3, scope: !2833)
!2848 = distinct !DISubprogram(name: "xrealloc", scope: !413, file: !413, line: 68, type: !2849, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!41, !41, !35}
!2851 = !{!2852, !2853}
!2852 = !DILocalVariable(name: "p", arg: 1, scope: !2848, file: !413, line: 68, type: !41)
!2853 = !DILocalVariable(name: "s", arg: 2, scope: !2848, file: !413, line: 68, type: !35)
!2854 = !DILocation(line: 0, scope: !2848)
!2855 = !DILocalVariable(name: "ptr", arg: 1, scope: !2856, file: !2857, line: 2057, type: !41)
!2856 = distinct !DISubprogram(name: "rpl_realloc", scope: !2857, file: !2857, line: 2057, type: !2849, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2858)
!2857 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2858 = !{!2855, !2859}
!2859 = !DILocalVariable(name: "size", arg: 2, scope: !2856, file: !2857, line: 2057, type: !35)
!2860 = !DILocation(line: 0, scope: !2856, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 70, column: 25, scope: !2848)
!2862 = !DILocation(line: 2059, column: 24, scope: !2856, inlinedAt: !2861)
!2863 = !DILocation(line: 2059, column: 10, scope: !2856, inlinedAt: !2861)
!2864 = !DILocation(line: 0, scope: !2782, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 70, column: 10, scope: !2848)
!2866 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2865)
!2867 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2865)
!2868 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2865)
!2869 = !DILocation(line: 70, column: 3, scope: !2848)
!2870 = distinct !DISubprogram(name: "xirealloc", scope: !413, file: !413, line: 74, type: !2871, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!41, !41, !432}
!2873 = !{!2874, !2875}
!2874 = !DILocalVariable(name: "p", arg: 1, scope: !2870, file: !413, line: 74, type: !41)
!2875 = !DILocalVariable(name: "s", arg: 2, scope: !2870, file: !413, line: 74, type: !432)
!2876 = !DILocation(line: 0, scope: !2870)
!2877 = !DILocalVariable(name: "p", arg: 1, scope: !2878, file: !2822, line: 66, type: !41)
!2878 = distinct !DISubprogram(name: "irealloc", scope: !2822, file: !2822, line: 66, type: !2871, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2879)
!2879 = !{!2877, !2880}
!2880 = !DILocalVariable(name: "s", arg: 2, scope: !2878, file: !2822, line: 66, type: !432)
!2881 = !DILocation(line: 0, scope: !2878, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 76, column: 25, scope: !2870)
!2883 = !DILocation(line: 0, scope: !2856, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 68, column: 26, scope: !2878, inlinedAt: !2882)
!2885 = !DILocation(line: 2059, column: 24, scope: !2856, inlinedAt: !2884)
!2886 = !DILocation(line: 2059, column: 10, scope: !2856, inlinedAt: !2884)
!2887 = !DILocation(line: 0, scope: !2782, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 76, column: 10, scope: !2870)
!2889 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2888)
!2890 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2888)
!2891 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2888)
!2892 = !DILocation(line: 76, column: 3, scope: !2870)
!2893 = distinct !DISubprogram(name: "xireallocarray", scope: !413, file: !413, line: 89, type: !2894, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!41, !41, !432, !432}
!2896 = !{!2897, !2898, !2899}
!2897 = !DILocalVariable(name: "p", arg: 1, scope: !2893, file: !413, line: 89, type: !41)
!2898 = !DILocalVariable(name: "n", arg: 2, scope: !2893, file: !413, line: 89, type: !432)
!2899 = !DILocalVariable(name: "s", arg: 3, scope: !2893, file: !413, line: 89, type: !432)
!2900 = !DILocation(line: 0, scope: !2893)
!2901 = !DILocalVariable(name: "p", arg: 1, scope: !2902, file: !2822, line: 98, type: !41)
!2902 = distinct !DISubprogram(name: "ireallocarray", scope: !2822, file: !2822, line: 98, type: !2894, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2903)
!2903 = !{!2901, !2904, !2905}
!2904 = !DILocalVariable(name: "n", arg: 2, scope: !2902, file: !2822, line: 98, type: !432)
!2905 = !DILocalVariable(name: "s", arg: 3, scope: !2902, file: !2822, line: 98, type: !432)
!2906 = !DILocation(line: 0, scope: !2902, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 91, column: 25, scope: !2893)
!2908 = !DILocation(line: 101, column: 13, scope: !2902, inlinedAt: !2907)
!2909 = !DILocation(line: 0, scope: !2782, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 91, column: 10, scope: !2893)
!2911 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2910)
!2912 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2910)
!2913 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2910)
!2914 = !DILocation(line: 91, column: 3, scope: !2893)
!2915 = distinct !DISubprogram(name: "xnmalloc", scope: !413, file: !413, line: 98, type: !2916, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!41, !35, !35}
!2918 = !{!2919, !2920}
!2919 = !DILocalVariable(name: "n", arg: 1, scope: !2915, file: !413, line: 98, type: !35)
!2920 = !DILocalVariable(name: "s", arg: 2, scope: !2915, file: !413, line: 98, type: !35)
!2921 = !DILocation(line: 0, scope: !2915)
!2922 = !DILocation(line: 0, scope: !2774, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 100, column: 10, scope: !2915)
!2924 = !DILocation(line: 85, column: 25, scope: !2774, inlinedAt: !2923)
!2925 = !DILocation(line: 0, scope: !2782, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 85, column: 10, scope: !2774, inlinedAt: !2923)
!2927 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2926)
!2928 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2926)
!2929 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2926)
!2930 = !DILocation(line: 100, column: 3, scope: !2915)
!2931 = distinct !DISubprogram(name: "xinmalloc", scope: !413, file: !413, line: 104, type: !2932, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!41, !432, !432}
!2934 = !{!2935, !2936}
!2935 = !DILocalVariable(name: "n", arg: 1, scope: !2931, file: !413, line: 104, type: !432)
!2936 = !DILocalVariable(name: "s", arg: 2, scope: !2931, file: !413, line: 104, type: !432)
!2937 = !DILocation(line: 0, scope: !2931)
!2938 = !DILocation(line: 0, scope: !2893, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 106, column: 10, scope: !2931)
!2940 = !DILocation(line: 0, scope: !2902, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 91, column: 25, scope: !2893, inlinedAt: !2939)
!2942 = !DILocation(line: 101, column: 13, scope: !2902, inlinedAt: !2941)
!2943 = !DILocation(line: 0, scope: !2782, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 91, column: 10, scope: !2893, inlinedAt: !2939)
!2945 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2944)
!2946 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2944)
!2947 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2944)
!2948 = !DILocation(line: 106, column: 3, scope: !2931)
!2949 = distinct !DISubprogram(name: "x2realloc", scope: !413, file: !413, line: 116, type: !2950, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!41, !41, !419}
!2952 = !{!2953, !2954}
!2953 = !DILocalVariable(name: "p", arg: 1, scope: !2949, file: !413, line: 116, type: !41)
!2954 = !DILocalVariable(name: "ps", arg: 2, scope: !2949, file: !413, line: 116, type: !419)
!2955 = !DILocation(line: 0, scope: !2949)
!2956 = !DILocation(line: 0, scope: !416, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 118, column: 10, scope: !2949)
!2958 = !DILocation(line: 178, column: 14, scope: !416, inlinedAt: !2957)
!2959 = !DILocation(line: 180, column: 9, scope: !2960, inlinedAt: !2957)
!2960 = distinct !DILexicalBlock(scope: !416, file: !413, line: 180, column: 7)
!2961 = !DILocation(line: 180, column: 7, scope: !416, inlinedAt: !2957)
!2962 = !DILocation(line: 182, column: 13, scope: !2963, inlinedAt: !2957)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !413, line: 182, column: 11)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !413, line: 181, column: 5)
!2965 = !DILocation(line: 182, column: 11, scope: !2964, inlinedAt: !2957)
!2966 = !DILocation(line: 197, column: 11, scope: !2967, inlinedAt: !2957)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !413, line: 197, column: 11)
!2968 = distinct !DILexicalBlock(scope: !2960, file: !413, line: 195, column: 5)
!2969 = !DILocation(line: 197, column: 11, scope: !2968, inlinedAt: !2957)
!2970 = !DILocation(line: 198, column: 9, scope: !2967, inlinedAt: !2957)
!2971 = !DILocation(line: 0, scope: !2774, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 201, column: 7, scope: !416, inlinedAt: !2957)
!2973 = !DILocation(line: 85, column: 25, scope: !2774, inlinedAt: !2972)
!2974 = !DILocation(line: 0, scope: !2782, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 85, column: 10, scope: !2774, inlinedAt: !2972)
!2976 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2975)
!2977 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2975)
!2978 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2975)
!2979 = !DILocation(line: 202, column: 7, scope: !416, inlinedAt: !2957)
!2980 = !DILocation(line: 118, column: 3, scope: !2949)
!2981 = !DILocation(line: 0, scope: !416)
!2982 = !DILocation(line: 178, column: 14, scope: !416)
!2983 = !DILocation(line: 180, column: 9, scope: !2960)
!2984 = !DILocation(line: 180, column: 7, scope: !416)
!2985 = !DILocation(line: 182, column: 13, scope: !2963)
!2986 = !DILocation(line: 182, column: 11, scope: !2964)
!2987 = !DILocation(line: 190, column: 30, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2963, file: !413, line: 183, column: 9)
!2989 = !DILocation(line: 191, column: 16, scope: !2988)
!2990 = !DILocation(line: 191, column: 13, scope: !2988)
!2991 = !DILocation(line: 192, column: 9, scope: !2988)
!2992 = !DILocation(line: 197, column: 11, scope: !2967)
!2993 = !DILocation(line: 197, column: 11, scope: !2968)
!2994 = !DILocation(line: 198, column: 9, scope: !2967)
!2995 = !DILocation(line: 0, scope: !2774, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 201, column: 7, scope: !416)
!2997 = !DILocation(line: 85, column: 25, scope: !2774, inlinedAt: !2996)
!2998 = !DILocation(line: 0, scope: !2782, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 85, column: 10, scope: !2774, inlinedAt: !2996)
!3000 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !2999)
!3001 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !2999)
!3002 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !2999)
!3003 = !DILocation(line: 202, column: 7, scope: !416)
!3004 = !DILocation(line: 203, column: 3, scope: !416)
!3005 = !DILocation(line: 0, scope: !428)
!3006 = !DILocation(line: 230, column: 14, scope: !428)
!3007 = !DILocation(line: 238, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !428, file: !413, line: 238, column: 7)
!3009 = !DILocation(line: 238, column: 7, scope: !428)
!3010 = !DILocation(line: 240, column: 9, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !428, file: !413, line: 240, column: 7)
!3012 = !DILocation(line: 240, column: 18, scope: !3011)
!3013 = !DILocation(line: 253, column: 8, scope: !428)
!3014 = !DILocation(line: 258, column: 27, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !413, line: 257, column: 5)
!3016 = distinct !DILexicalBlock(scope: !428, file: !413, line: 256, column: 7)
!3017 = !DILocation(line: 259, column: 32, scope: !3015)
!3018 = !DILocation(line: 260, column: 5, scope: !3015)
!3019 = !DILocation(line: 262, column: 9, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !428, file: !413, line: 262, column: 7)
!3021 = !DILocation(line: 262, column: 7, scope: !428)
!3022 = !DILocation(line: 263, column: 9, scope: !3020)
!3023 = !DILocation(line: 263, column: 5, scope: !3020)
!3024 = !DILocation(line: 264, column: 9, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !428, file: !413, line: 264, column: 7)
!3026 = !DILocation(line: 264, column: 14, scope: !3025)
!3027 = !DILocation(line: 265, column: 7, scope: !3025)
!3028 = !DILocation(line: 265, column: 11, scope: !3025)
!3029 = !DILocation(line: 266, column: 11, scope: !3025)
!3030 = !DILocation(line: 266, column: 26, scope: !3025)
!3031 = !DILocation(line: 267, column: 14, scope: !3025)
!3032 = !DILocation(line: 264, column: 7, scope: !428)
!3033 = !DILocation(line: 268, column: 5, scope: !3025)
!3034 = !DILocation(line: 0, scope: !2848, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 269, column: 8, scope: !428)
!3036 = !DILocation(line: 0, scope: !2856, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 70, column: 25, scope: !2848, inlinedAt: !3035)
!3038 = !DILocation(line: 2059, column: 24, scope: !2856, inlinedAt: !3037)
!3039 = !DILocation(line: 2059, column: 10, scope: !2856, inlinedAt: !3037)
!3040 = !DILocation(line: 0, scope: !2782, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 70, column: 10, scope: !2848, inlinedAt: !3035)
!3042 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3041)
!3043 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3041)
!3044 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3041)
!3045 = !DILocation(line: 270, column: 7, scope: !428)
!3046 = !DILocation(line: 271, column: 3, scope: !428)
!3047 = distinct !DISubprogram(name: "xzalloc", scope: !413, file: !413, line: 279, type: !2802, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3048)
!3048 = !{!3049}
!3049 = !DILocalVariable(name: "s", arg: 1, scope: !3047, file: !413, line: 279, type: !35)
!3050 = !DILocation(line: 0, scope: !3047)
!3051 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !413, line: 294, type: !35)
!3052 = distinct !DISubprogram(name: "xcalloc", scope: !413, file: !413, line: 294, type: !2916, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3053)
!3053 = !{!3051, !3054}
!3054 = !DILocalVariable(name: "s", arg: 2, scope: !3052, file: !413, line: 294, type: !35)
!3055 = !DILocation(line: 0, scope: !3052, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 281, column: 10, scope: !3047)
!3057 = !DILocation(line: 296, column: 25, scope: !3052, inlinedAt: !3056)
!3058 = !DILocation(line: 0, scope: !2782, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 296, column: 10, scope: !3052, inlinedAt: !3056)
!3060 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3059)
!3061 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3059)
!3062 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3059)
!3063 = !DILocation(line: 281, column: 3, scope: !3047)
!3064 = !DILocation(line: 0, scope: !3052)
!3065 = !DILocation(line: 296, column: 25, scope: !3052)
!3066 = !DILocation(line: 0, scope: !2782, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 296, column: 10, scope: !3052)
!3068 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3067)
!3069 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3067)
!3070 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3067)
!3071 = !DILocation(line: 296, column: 3, scope: !3052)
!3072 = distinct !DISubprogram(name: "xizalloc", scope: !413, file: !413, line: 285, type: !2815, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3073)
!3073 = !{!3074}
!3074 = !DILocalVariable(name: "s", arg: 1, scope: !3072, file: !413, line: 285, type: !432)
!3075 = !DILocation(line: 0, scope: !3072)
!3076 = !DILocalVariable(name: "n", arg: 1, scope: !3077, file: !413, line: 300, type: !432)
!3077 = distinct !DISubprogram(name: "xicalloc", scope: !413, file: !413, line: 300, type: !2932, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3078)
!3078 = !{!3076, !3079}
!3079 = !DILocalVariable(name: "s", arg: 2, scope: !3077, file: !413, line: 300, type: !432)
!3080 = !DILocation(line: 0, scope: !3077, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 287, column: 10, scope: !3072)
!3082 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !2822, line: 77, type: !432)
!3083 = distinct !DISubprogram(name: "icalloc", scope: !2822, file: !2822, line: 77, type: !2932, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3084)
!3084 = !{!3082, !3085}
!3085 = !DILocalVariable(name: "s", arg: 2, scope: !3083, file: !2822, line: 77, type: !432)
!3086 = !DILocation(line: 0, scope: !3083, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 302, column: 25, scope: !3077, inlinedAt: !3081)
!3088 = !DILocation(line: 91, column: 10, scope: !3083, inlinedAt: !3087)
!3089 = !DILocation(line: 0, scope: !2782, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 302, column: 10, scope: !3077, inlinedAt: !3081)
!3091 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3090)
!3092 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3090)
!3093 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3090)
!3094 = !DILocation(line: 287, column: 3, scope: !3072)
!3095 = !DILocation(line: 0, scope: !3077)
!3096 = !DILocation(line: 0, scope: !3083, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 302, column: 25, scope: !3077)
!3098 = !DILocation(line: 91, column: 10, scope: !3083, inlinedAt: !3097)
!3099 = !DILocation(line: 0, scope: !2782, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 302, column: 10, scope: !3077)
!3101 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3100)
!3102 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3100)
!3103 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3100)
!3104 = !DILocation(line: 302, column: 3, scope: !3077)
!3105 = distinct !DISubprogram(name: "xmemdup", scope: !413, file: !413, line: 310, type: !3106, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!41, !742, !35}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "p", arg: 1, scope: !3105, file: !413, line: 310, type: !742)
!3110 = !DILocalVariable(name: "s", arg: 2, scope: !3105, file: !413, line: 310, type: !35)
!3111 = !DILocation(line: 0, scope: !3105)
!3112 = !DILocation(line: 0, scope: !2801, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 312, column: 18, scope: !3105)
!3114 = !DILocation(line: 49, column: 25, scope: !2801, inlinedAt: !3113)
!3115 = !DILocation(line: 0, scope: !2782, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 49, column: 10, scope: !2801, inlinedAt: !3113)
!3117 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3116)
!3118 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3116)
!3119 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3116)
!3120 = !DILocalVariable(name: "__dest", arg: 1, scope: !3121, file: !1292, line: 26, type: !3124)
!3121 = distinct !DISubprogram(name: "memcpy", scope: !1292, file: !1292, line: 26, type: !3122, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3125)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!41, !3124, !741, !35}
!3124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!3125 = !{!3120, !3126, !3127}
!3126 = !DILocalVariable(name: "__src", arg: 2, scope: !3121, file: !1292, line: 26, type: !741)
!3127 = !DILocalVariable(name: "__len", arg: 3, scope: !3121, file: !1292, line: 26, type: !35)
!3128 = !DILocation(line: 0, scope: !3121, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 312, column: 10, scope: !3105)
!3130 = !DILocation(line: 29, column: 10, scope: !3121, inlinedAt: !3129)
!3131 = !DILocation(line: 312, column: 3, scope: !3105)
!3132 = distinct !DISubprogram(name: "ximemdup", scope: !413, file: !413, line: 316, type: !3133, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!41, !742, !432}
!3135 = !{!3136, !3137}
!3136 = !DILocalVariable(name: "p", arg: 1, scope: !3132, file: !413, line: 316, type: !742)
!3137 = !DILocalVariable(name: "s", arg: 2, scope: !3132, file: !413, line: 316, type: !432)
!3138 = !DILocation(line: 0, scope: !3132)
!3139 = !DILocation(line: 0, scope: !2814, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 318, column: 18, scope: !3132)
!3141 = !DILocation(line: 0, scope: !2821, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 55, column: 25, scope: !2814, inlinedAt: !3140)
!3143 = !DILocation(line: 57, column: 26, scope: !2821, inlinedAt: !3142)
!3144 = !DILocation(line: 0, scope: !2782, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 55, column: 10, scope: !2814, inlinedAt: !3140)
!3146 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3145)
!3147 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3145)
!3148 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3145)
!3149 = !DILocation(line: 0, scope: !3121, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 318, column: 10, scope: !3132)
!3151 = !DILocation(line: 29, column: 10, scope: !3121, inlinedAt: !3150)
!3152 = !DILocation(line: 318, column: 3, scope: !3132)
!3153 = distinct !DISubprogram(name: "ximemdup0", scope: !413, file: !413, line: 325, type: !3154, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!8, !742, !432}
!3156 = !{!3157, !3158, !3159}
!3157 = !DILocalVariable(name: "p", arg: 1, scope: !3153, file: !413, line: 325, type: !742)
!3158 = !DILocalVariable(name: "s", arg: 2, scope: !3153, file: !413, line: 325, type: !432)
!3159 = !DILocalVariable(name: "result", scope: !3153, file: !413, line: 327, type: !8)
!3160 = !DILocation(line: 0, scope: !3153)
!3161 = !DILocation(line: 327, column: 30, scope: !3153)
!3162 = !DILocation(line: 0, scope: !2814, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 327, column: 18, scope: !3153)
!3164 = !DILocation(line: 0, scope: !2821, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 55, column: 25, scope: !2814, inlinedAt: !3163)
!3166 = !DILocation(line: 57, column: 26, scope: !2821, inlinedAt: !3165)
!3167 = !DILocation(line: 0, scope: !2782, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 55, column: 10, scope: !2814, inlinedAt: !3163)
!3169 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3168)
!3170 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3168)
!3171 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3168)
!3172 = !DILocation(line: 328, column: 3, scope: !3153)
!3173 = !DILocation(line: 328, column: 13, scope: !3153)
!3174 = !DILocation(line: 0, scope: !3121, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 329, column: 10, scope: !3153)
!3176 = !DILocation(line: 29, column: 10, scope: !3121, inlinedAt: !3175)
!3177 = !DILocation(line: 329, column: 3, scope: !3153)
!3178 = distinct !DISubprogram(name: "xstrdup", scope: !413, file: !413, line: 335, type: !736, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3179)
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "string", arg: 1, scope: !3178, file: !413, line: 335, type: !38)
!3181 = !DILocation(line: 0, scope: !3178)
!3182 = !DILocation(line: 337, column: 27, scope: !3178)
!3183 = !DILocation(line: 337, column: 43, scope: !3178)
!3184 = !DILocation(line: 0, scope: !3105, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 337, column: 10, scope: !3178)
!3186 = !DILocation(line: 0, scope: !2801, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 312, column: 18, scope: !3105, inlinedAt: !3185)
!3188 = !DILocation(line: 49, column: 25, scope: !2801, inlinedAt: !3187)
!3189 = !DILocation(line: 0, scope: !2782, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 49, column: 10, scope: !2801, inlinedAt: !3187)
!3191 = !DILocation(line: 39, column: 8, scope: !2789, inlinedAt: !3190)
!3192 = !DILocation(line: 39, column: 7, scope: !2782, inlinedAt: !3190)
!3193 = !DILocation(line: 40, column: 5, scope: !2789, inlinedAt: !3190)
!3194 = !DILocation(line: 0, scope: !3121, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 312, column: 10, scope: !3105, inlinedAt: !3185)
!3196 = !DILocation(line: 29, column: 10, scope: !3121, inlinedAt: !3195)
!3197 = !DILocation(line: 337, column: 3, scope: !3178)
!3198 = distinct !DISubprogram(name: "xalloc_die", scope: !447, file: !447, line: 32, type: !242, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3199)
!3199 = !{!3200}
!3200 = !DILocalVariable(name: "__errstatus", scope: !3201, file: !447, line: 34, type: !3202)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !447, line: 34, column: 3)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!3203 = !DILocation(line: 34, column: 3, scope: !3201)
!3204 = !DILocation(line: 0, scope: !3201)
!3205 = !DILocation(line: 40, column: 3, scope: !3198)
!3206 = distinct !DISubprogram(name: "close_stream", scope: !449, file: !449, line: 55, type: !3207, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3243)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!6, !3209}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !3211)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3211, file: !73, line: 51, baseType: !6, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3211, file: !73, line: 54, baseType: !8, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3211, file: !73, line: 55, baseType: !8, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3211, file: !73, line: 56, baseType: !8, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3211, file: !73, line: 57, baseType: !8, size: 64, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3211, file: !73, line: 58, baseType: !8, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3211, file: !73, line: 59, baseType: !8, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3211, file: !73, line: 60, baseType: !8, size: 64, offset: 448)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3211, file: !73, line: 61, baseType: !8, size: 64, offset: 512)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3211, file: !73, line: 64, baseType: !8, size: 64, offset: 576)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3211, file: !73, line: 65, baseType: !8, size: 64, offset: 640)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3211, file: !73, line: 66, baseType: !8, size: 64, offset: 704)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3211, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3211, file: !73, line: 70, baseType: !3227, size: 64, offset: 832)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3211, file: !73, line: 72, baseType: !6, size: 32, offset: 896)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3211, file: !73, line: 73, baseType: !6, size: 32, offset: 928)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3211, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3211, file: !73, line: 77, baseType: !34, size: 16, offset: 1024)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3211, file: !73, line: 78, baseType: !100, size: 8, offset: 1040)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3211, file: !73, line: 79, baseType: !102, size: 8, offset: 1048)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3211, file: !73, line: 81, baseType: !106, size: 64, offset: 1088)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3211, file: !73, line: 89, baseType: !109, size: 64, offset: 1152)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3211, file: !73, line: 91, baseType: !111, size: 64, offset: 1216)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3211, file: !73, line: 92, baseType: !114, size: 64, offset: 1280)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3211, file: !73, line: 93, baseType: !3227, size: 64, offset: 1344)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3211, file: !73, line: 94, baseType: !41, size: 64, offset: 1408)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3211, file: !73, line: 95, baseType: !35, size: 64, offset: 1472)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3211, file: !73, line: 96, baseType: !6, size: 32, offset: 1536)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3211, file: !73, line: 98, baseType: !121, size: 160, offset: 1568)
!3243 = !{!3244, !3245, !3247, !3248}
!3244 = !DILocalVariable(name: "stream", arg: 1, scope: !3206, file: !449, line: 55, type: !3209)
!3245 = !DILocalVariable(name: "some_pending", scope: !3206, file: !449, line: 57, type: !3246)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!3247 = !DILocalVariable(name: "prev_fail", scope: !3206, file: !449, line: 58, type: !3246)
!3248 = !DILocalVariable(name: "fclose_fail", scope: !3206, file: !449, line: 59, type: !3246)
!3249 = !DILocation(line: 0, scope: !3206)
!3250 = !DILocation(line: 57, column: 30, scope: !3206)
!3251 = !DILocalVariable(name: "__stream", arg: 1, scope: !3252, file: !832, line: 135, type: !3209)
!3252 = distinct !DISubprogram(name: "ferror_unlocked", scope: !832, file: !832, line: 135, type: !3207, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3253)
!3253 = !{!3251}
!3254 = !DILocation(line: 0, scope: !3252, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 58, column: 27, scope: !3206)
!3256 = !DILocation(line: 137, column: 10, scope: !3252, inlinedAt: !3255)
!3257 = !{!840, !595, i64 0}
!3258 = !DILocation(line: 58, column: 43, scope: !3206)
!3259 = !DILocation(line: 59, column: 29, scope: !3206)
!3260 = !DILocation(line: 59, column: 45, scope: !3206)
!3261 = !DILocation(line: 69, column: 17, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3206, file: !449, line: 69, column: 7)
!3263 = !DILocation(line: 57, column: 50, scope: !3206)
!3264 = !DILocation(line: 69, column: 33, scope: !3262)
!3265 = !DILocation(line: 69, column: 53, scope: !3262)
!3266 = !DILocation(line: 69, column: 59, scope: !3262)
!3267 = !DILocation(line: 69, column: 7, scope: !3206)
!3268 = !DILocation(line: 71, column: 11, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3262, file: !449, line: 70, column: 5)
!3270 = !DILocation(line: 72, column: 9, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3269, file: !449, line: 71, column: 11)
!3272 = !DILocation(line: 72, column: 15, scope: !3271)
!3273 = !DILocation(line: 77, column: 1, scope: !3206)
!3274 = distinct !DISubprogram(name: "rpl_fclose", scope: !451, file: !451, line: 58, type: !3275, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !3311)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!6, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3279, file: !73, line: 51, baseType: !6, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3279, file: !73, line: 54, baseType: !8, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3279, file: !73, line: 55, baseType: !8, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3279, file: !73, line: 56, baseType: !8, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3279, file: !73, line: 57, baseType: !8, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3279, file: !73, line: 58, baseType: !8, size: 64, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3279, file: !73, line: 59, baseType: !8, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3279, file: !73, line: 60, baseType: !8, size: 64, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3279, file: !73, line: 61, baseType: !8, size: 64, offset: 512)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3279, file: !73, line: 64, baseType: !8, size: 64, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3279, file: !73, line: 65, baseType: !8, size: 64, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3279, file: !73, line: 66, baseType: !8, size: 64, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3279, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3279, file: !73, line: 70, baseType: !3295, size: 64, offset: 832)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3279, file: !73, line: 72, baseType: !6, size: 32, offset: 896)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3279, file: !73, line: 73, baseType: !6, size: 32, offset: 928)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3279, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3279, file: !73, line: 77, baseType: !34, size: 16, offset: 1024)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3279, file: !73, line: 78, baseType: !100, size: 8, offset: 1040)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3279, file: !73, line: 79, baseType: !102, size: 8, offset: 1048)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3279, file: !73, line: 81, baseType: !106, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3279, file: !73, line: 89, baseType: !109, size: 64, offset: 1152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3279, file: !73, line: 91, baseType: !111, size: 64, offset: 1216)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3279, file: !73, line: 92, baseType: !114, size: 64, offset: 1280)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3279, file: !73, line: 93, baseType: !3295, size: 64, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3279, file: !73, line: 94, baseType: !41, size: 64, offset: 1408)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3279, file: !73, line: 95, baseType: !35, size: 64, offset: 1472)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3279, file: !73, line: 96, baseType: !6, size: 32, offset: 1536)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3279, file: !73, line: 98, baseType: !121, size: 160, offset: 1568)
!3311 = !{!3312, !3313, !3314, !3315}
!3312 = !DILocalVariable(name: "fp", arg: 1, scope: !3274, file: !451, line: 58, type: !3277)
!3313 = !DILocalVariable(name: "saved_errno", scope: !3274, file: !451, line: 60, type: !6)
!3314 = !DILocalVariable(name: "fd", scope: !3274, file: !451, line: 63, type: !6)
!3315 = !DILocalVariable(name: "result", scope: !3274, file: !451, line: 74, type: !6)
!3316 = !DILocation(line: 0, scope: !3274)
!3317 = !DILocation(line: 63, column: 12, scope: !3274)
!3318 = !DILocation(line: 64, column: 10, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3274, file: !451, line: 64, column: 7)
!3320 = !DILocation(line: 64, column: 7, scope: !3274)
!3321 = !DILocation(line: 65, column: 12, scope: !3319)
!3322 = !DILocation(line: 65, column: 5, scope: !3319)
!3323 = !DILocation(line: 70, column: 9, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3274, file: !451, line: 70, column: 7)
!3325 = !DILocation(line: 70, column: 23, scope: !3324)
!3326 = !DILocation(line: 70, column: 33, scope: !3324)
!3327 = !DILocation(line: 70, column: 26, scope: !3324)
!3328 = !DILocation(line: 70, column: 59, scope: !3324)
!3329 = !DILocation(line: 71, column: 7, scope: !3324)
!3330 = !DILocation(line: 71, column: 10, scope: !3324)
!3331 = !DILocation(line: 70, column: 7, scope: !3274)
!3332 = !DILocation(line: 100, column: 12, scope: !3274)
!3333 = !DILocation(line: 105, column: 7, scope: !3274)
!3334 = !DILocation(line: 72, column: 19, scope: !3324)
!3335 = !DILocation(line: 105, column: 19, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3274, file: !451, line: 105, column: 7)
!3337 = !DILocation(line: 107, column: 13, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3336, file: !451, line: 106, column: 5)
!3339 = !DILocation(line: 109, column: 5, scope: !3338)
!3340 = !DILocation(line: 112, column: 1, scope: !3274)
!3341 = !DISubprogram(name: "fileno", scope: !215, file: !215, line: 809, type: !3275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!3342 = !DISubprogram(name: "fclose", scope: !215, file: !215, line: 178, type: !3275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!3343 = !DISubprogram(name: "lseek", scope: !3344, file: !3344, line: 339, type: !3345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!3344 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!95, !6, !95, !6}
!3347 = distinct !DISubprogram(name: "rpl_fflush", scope: !453, file: !453, line: 130, type: !3348, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !3384)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!6, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !3352)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3352, file: !73, line: 51, baseType: !6, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3352, file: !73, line: 54, baseType: !8, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3352, file: !73, line: 55, baseType: !8, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3352, file: !73, line: 56, baseType: !8, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3352, file: !73, line: 57, baseType: !8, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3352, file: !73, line: 58, baseType: !8, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3352, file: !73, line: 59, baseType: !8, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3352, file: !73, line: 60, baseType: !8, size: 64, offset: 448)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3352, file: !73, line: 61, baseType: !8, size: 64, offset: 512)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3352, file: !73, line: 64, baseType: !8, size: 64, offset: 576)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3352, file: !73, line: 65, baseType: !8, size: 64, offset: 640)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3352, file: !73, line: 66, baseType: !8, size: 64, offset: 704)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3352, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3352, file: !73, line: 70, baseType: !3368, size: 64, offset: 832)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3352, file: !73, line: 72, baseType: !6, size: 32, offset: 896)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3352, file: !73, line: 73, baseType: !6, size: 32, offset: 928)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3352, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3352, file: !73, line: 77, baseType: !34, size: 16, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3352, file: !73, line: 78, baseType: !100, size: 8, offset: 1040)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3352, file: !73, line: 79, baseType: !102, size: 8, offset: 1048)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3352, file: !73, line: 81, baseType: !106, size: 64, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3352, file: !73, line: 89, baseType: !109, size: 64, offset: 1152)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3352, file: !73, line: 91, baseType: !111, size: 64, offset: 1216)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3352, file: !73, line: 92, baseType: !114, size: 64, offset: 1280)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3352, file: !73, line: 93, baseType: !3368, size: 64, offset: 1344)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3352, file: !73, line: 94, baseType: !41, size: 64, offset: 1408)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3352, file: !73, line: 95, baseType: !35, size: 64, offset: 1472)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3352, file: !73, line: 96, baseType: !6, size: 32, offset: 1536)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3352, file: !73, line: 98, baseType: !121, size: 160, offset: 1568)
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "stream", arg: 1, scope: !3347, file: !453, line: 130, type: !3350)
!3386 = !DILocation(line: 0, scope: !3347)
!3387 = !DILocation(line: 151, column: 14, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3347, file: !453, line: 151, column: 7)
!3389 = !DILocation(line: 151, column: 22, scope: !3388)
!3390 = !DILocation(line: 151, column: 27, scope: !3388)
!3391 = !DILocation(line: 151, column: 7, scope: !3347)
!3392 = !DILocation(line: 152, column: 12, scope: !3388)
!3393 = !DILocation(line: 152, column: 5, scope: !3388)
!3394 = !DILocalVariable(name: "fp", arg: 1, scope: !3395, file: !453, line: 42, type: !3350)
!3395 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !453, file: !453, line: 42, type: !3396, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3350}
!3398 = !{!3394}
!3399 = !DILocation(line: 0, scope: !3395, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 157, column: 3, scope: !3347)
!3401 = !DILocation(line: 44, column: 12, scope: !3402, inlinedAt: !3400)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !453, line: 44, column: 7)
!3403 = !DILocation(line: 44, column: 19, scope: !3402, inlinedAt: !3400)
!3404 = !DILocation(line: 44, column: 7, scope: !3395, inlinedAt: !3400)
!3405 = !DILocation(line: 46, column: 5, scope: !3402, inlinedAt: !3400)
!3406 = !DILocation(line: 159, column: 10, scope: !3347)
!3407 = !DILocation(line: 159, column: 3, scope: !3347)
!3408 = !DILocation(line: 236, column: 1, scope: !3347)
!3409 = !DISubprogram(name: "fflush", scope: !215, file: !215, line: 230, type: !3348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!3410 = distinct !DISubprogram(name: "rpl_fseeko", scope: !455, file: !455, line: 28, type: !3411, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3448)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!6, !3413, !3447, !6}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3415, file: !73, line: 51, baseType: !6, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3415, file: !73, line: 54, baseType: !8, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3415, file: !73, line: 55, baseType: !8, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3415, file: !73, line: 56, baseType: !8, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3415, file: !73, line: 57, baseType: !8, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3415, file: !73, line: 58, baseType: !8, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3415, file: !73, line: 59, baseType: !8, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3415, file: !73, line: 60, baseType: !8, size: 64, offset: 448)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3415, file: !73, line: 61, baseType: !8, size: 64, offset: 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3415, file: !73, line: 64, baseType: !8, size: 64, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3415, file: !73, line: 65, baseType: !8, size: 64, offset: 640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3415, file: !73, line: 66, baseType: !8, size: 64, offset: 704)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3415, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3415, file: !73, line: 70, baseType: !3431, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3415, file: !73, line: 72, baseType: !6, size: 32, offset: 896)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3415, file: !73, line: 73, baseType: !6, size: 32, offset: 928)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3415, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3415, file: !73, line: 77, baseType: !34, size: 16, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3415, file: !73, line: 78, baseType: !100, size: 8, offset: 1040)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3415, file: !73, line: 79, baseType: !102, size: 8, offset: 1048)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3415, file: !73, line: 81, baseType: !106, size: 64, offset: 1088)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3415, file: !73, line: 89, baseType: !109, size: 64, offset: 1152)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3415, file: !73, line: 91, baseType: !111, size: 64, offset: 1216)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3415, file: !73, line: 92, baseType: !114, size: 64, offset: 1280)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3415, file: !73, line: 93, baseType: !3431, size: 64, offset: 1344)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3415, file: !73, line: 94, baseType: !41, size: 64, offset: 1408)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3415, file: !73, line: 95, baseType: !35, size: 64, offset: 1472)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3415, file: !73, line: 96, baseType: !6, size: 32, offset: 1536)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3415, file: !73, line: 98, baseType: !121, size: 160, offset: 1568)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !215, line: 63, baseType: !95)
!3448 = !{!3449, !3450, !3451, !3452}
!3449 = !DILocalVariable(name: "fp", arg: 1, scope: !3410, file: !455, line: 28, type: !3413)
!3450 = !DILocalVariable(name: "offset", arg: 2, scope: !3410, file: !455, line: 28, type: !3447)
!3451 = !DILocalVariable(name: "whence", arg: 3, scope: !3410, file: !455, line: 28, type: !6)
!3452 = !DILocalVariable(name: "pos", scope: !3453, file: !455, line: 123, type: !3447)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !455, line: 119, column: 5)
!3454 = distinct !DILexicalBlock(scope: !3410, file: !455, line: 55, column: 7)
!3455 = !DILocation(line: 0, scope: !3410)
!3456 = !DILocation(line: 55, column: 12, scope: !3454)
!3457 = !{!840, !489, i64 16}
!3458 = !DILocation(line: 55, column: 33, scope: !3454)
!3459 = !{!840, !489, i64 8}
!3460 = !DILocation(line: 55, column: 25, scope: !3454)
!3461 = !DILocation(line: 56, column: 7, scope: !3454)
!3462 = !DILocation(line: 56, column: 15, scope: !3454)
!3463 = !DILocation(line: 56, column: 37, scope: !3454)
!3464 = !{!840, !489, i64 32}
!3465 = !DILocation(line: 56, column: 29, scope: !3454)
!3466 = !DILocation(line: 57, column: 7, scope: !3454)
!3467 = !DILocation(line: 57, column: 15, scope: !3454)
!3468 = !{!840, !489, i64 72}
!3469 = !DILocation(line: 57, column: 29, scope: !3454)
!3470 = !DILocation(line: 55, column: 7, scope: !3410)
!3471 = !DILocation(line: 123, column: 26, scope: !3453)
!3472 = !DILocation(line: 123, column: 19, scope: !3453)
!3473 = !DILocation(line: 0, scope: !3453)
!3474 = !DILocation(line: 124, column: 15, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3453, file: !455, line: 124, column: 11)
!3476 = !DILocation(line: 124, column: 11, scope: !3453)
!3477 = !DILocation(line: 135, column: 12, scope: !3453)
!3478 = !DILocation(line: 135, column: 19, scope: !3453)
!3479 = !DILocation(line: 136, column: 12, scope: !3453)
!3480 = !DILocation(line: 136, column: 20, scope: !3453)
!3481 = !{!840, !841, i64 144}
!3482 = !DILocation(line: 167, column: 7, scope: !3453)
!3483 = !DILocation(line: 169, column: 10, scope: !3410)
!3484 = !DILocation(line: 169, column: 3, scope: !3410)
!3485 = !DILocation(line: 170, column: 1, scope: !3410)
!3486 = !DISubprogram(name: "fseeko", scope: !215, file: !215, line: 736, type: !3487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!6, !3413, !95, !6}
!3489 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !390, file: !390, line: 100, type: !3490, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3493)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!35, !1310, !38, !35, !3492}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3493 = !{!3494, !3495, !3496, !3497, !3498}
!3494 = !DILocalVariable(name: "pwc", arg: 1, scope: !3489, file: !390, line: 100, type: !1310)
!3495 = !DILocalVariable(name: "s", arg: 2, scope: !3489, file: !390, line: 100, type: !38)
!3496 = !DILocalVariable(name: "n", arg: 3, scope: !3489, file: !390, line: 100, type: !35)
!3497 = !DILocalVariable(name: "ps", arg: 4, scope: !3489, file: !390, line: 100, type: !3492)
!3498 = !DILocalVariable(name: "ret", scope: !3489, file: !390, line: 130, type: !35)
!3499 = !DILocation(line: 0, scope: !3489)
!3500 = !DILocation(line: 105, column: 9, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3489, file: !390, line: 105, column: 7)
!3502 = !DILocation(line: 105, column: 7, scope: !3489)
!3503 = !DILocation(line: 117, column: 10, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3489, file: !390, line: 117, column: 7)
!3505 = !DILocation(line: 117, column: 7, scope: !3489)
!3506 = !DILocation(line: 130, column: 16, scope: !3489)
!3507 = !DILocation(line: 135, column: 11, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3489, file: !390, line: 135, column: 7)
!3509 = !DILocation(line: 135, column: 25, scope: !3508)
!3510 = !DILocation(line: 135, column: 30, scope: !3508)
!3511 = !DILocation(line: 135, column: 7, scope: !3489)
!3512 = !DILocalVariable(name: "ps", arg: 1, scope: !3513, file: !1283, line: 1135, type: !3492)
!3513 = distinct !DISubprogram(name: "mbszero", scope: !1283, file: !1283, line: 1135, type: !3514, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3492}
!3516 = !{!3512}
!3517 = !DILocation(line: 0, scope: !3513, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 137, column: 5, scope: !3508)
!3519 = !DILocalVariable(name: "__dest", arg: 1, scope: !3520, file: !1292, line: 57, type: !41)
!3520 = distinct !DISubprogram(name: "memset", scope: !1292, file: !1292, line: 57, type: !1293, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3521)
!3521 = !{!3519, !3522, !3523}
!3522 = !DILocalVariable(name: "__ch", arg: 2, scope: !3520, file: !1292, line: 57, type: !6)
!3523 = !DILocalVariable(name: "__len", arg: 3, scope: !3520, file: !1292, line: 57, type: !35)
!3524 = !DILocation(line: 0, scope: !3520, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1137, column: 3, scope: !3513, inlinedAt: !3518)
!3526 = !DILocation(line: 59, column: 10, scope: !3520, inlinedAt: !3525)
!3527 = !DILocation(line: 137, column: 5, scope: !3508)
!3528 = !DILocation(line: 138, column: 11, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3489, file: !390, line: 138, column: 7)
!3530 = !DILocation(line: 138, column: 7, scope: !3489)
!3531 = !DILocation(line: 139, column: 5, scope: !3529)
!3532 = !DILocation(line: 143, column: 26, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3489, file: !390, line: 143, column: 7)
!3534 = !DILocation(line: 143, column: 41, scope: !3533)
!3535 = !DILocation(line: 143, column: 7, scope: !3489)
!3536 = !DILocation(line: 145, column: 15, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !390, line: 145, column: 11)
!3538 = distinct !DILexicalBlock(scope: !3533, file: !390, line: 144, column: 5)
!3539 = !DILocation(line: 145, column: 11, scope: !3538)
!3540 = !DILocation(line: 146, column: 32, scope: !3537)
!3541 = !DILocation(line: 146, column: 16, scope: !3537)
!3542 = !DILocation(line: 146, column: 14, scope: !3537)
!3543 = !DILocation(line: 146, column: 9, scope: !3537)
!3544 = !DILocation(line: 286, column: 1, scope: !3489)
!3545 = !DISubprogram(name: "mbsinit", scope: !3546, file: !3546, line: 293, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !586)
!3546 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!6, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!3551 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !457, file: !457, line: 27, type: !2766, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3552)
!3552 = !{!3553, !3554, !3555, !3556}
!3553 = !DILocalVariable(name: "ptr", arg: 1, scope: !3551, file: !457, line: 27, type: !41)
!3554 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3551, file: !457, line: 27, type: !35)
!3555 = !DILocalVariable(name: "size", arg: 3, scope: !3551, file: !457, line: 27, type: !35)
!3556 = !DILocalVariable(name: "nbytes", scope: !3551, file: !457, line: 29, type: !35)
!3557 = !DILocation(line: 0, scope: !3551)
!3558 = !DILocation(line: 30, column: 7, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3551, file: !457, line: 30, column: 7)
!3560 = !DILocalVariable(name: "ptr", arg: 1, scope: !3561, file: !2857, line: 2057, type: !41)
!3561 = distinct !DISubprogram(name: "rpl_realloc", scope: !2857, file: !2857, line: 2057, type: !2849, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3562)
!3562 = !{!3560, !3563}
!3563 = !DILocalVariable(name: "size", arg: 2, scope: !3561, file: !2857, line: 2057, type: !35)
!3564 = !DILocation(line: 0, scope: !3561, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 37, column: 10, scope: !3551)
!3566 = !DILocation(line: 2059, column: 24, scope: !3561, inlinedAt: !3565)
!3567 = !DILocation(line: 2059, column: 10, scope: !3561, inlinedAt: !3565)
!3568 = !DILocation(line: 37, column: 3, scope: !3551)
!3569 = !DILocation(line: 32, column: 7, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3559, file: !457, line: 31, column: 5)
!3571 = !DILocation(line: 32, column: 13, scope: !3570)
!3572 = !DILocation(line: 33, column: 7, scope: !3570)
!3573 = !DILocation(line: 38, column: 1, scope: !3551)
!3574 = distinct !DISubprogram(name: "hard_locale", scope: !460, file: !460, line: 28, type: !3575, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!56, !6}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "category", arg: 1, scope: !3574, file: !460, line: 28, type: !6)
!3579 = !DILocalVariable(name: "locale", scope: !3574, file: !460, line: 30, type: !3580)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !3581)
!3581 = !{!3582}
!3582 = !DISubrange(count: 257)
!3583 = !DILocation(line: 0, scope: !3574)
!3584 = !DILocation(line: 30, column: 3, scope: !3574)
!3585 = !DILocation(line: 30, column: 8, scope: !3574)
!3586 = !DILocation(line: 32, column: 7, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3574, file: !460, line: 32, column: 7)
!3588 = !DILocation(line: 32, column: 7, scope: !3574)
!3589 = !DILocalVariable(name: "__s1", arg: 1, scope: !3590, file: !541, line: 1359, type: !38)
!3590 = distinct !DISubprogram(name: "streq", scope: !541, file: !541, line: 1359, type: !542, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3591)
!3591 = !{!3589, !3592}
!3592 = !DILocalVariable(name: "__s2", arg: 2, scope: !3590, file: !541, line: 1359, type: !38)
!3593 = !DILocation(line: 0, scope: !3590, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 35, column: 9, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3574, file: !460, line: 35, column: 7)
!3596 = !DILocation(line: 1361, column: 11, scope: !3590, inlinedAt: !3594)
!3597 = !DILocation(line: 1361, column: 10, scope: !3590, inlinedAt: !3594)
!3598 = !DILocation(line: 35, column: 29, scope: !3595)
!3599 = !DILocation(line: 0, scope: !3590, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 35, column: 32, scope: !3595)
!3601 = !DILocation(line: 1361, column: 11, scope: !3590, inlinedAt: !3600)
!3602 = !DILocation(line: 1361, column: 10, scope: !3590, inlinedAt: !3600)
!3603 = !DILocation(line: 35, column: 7, scope: !3574)
!3604 = !DILocation(line: 46, column: 3, scope: !3574)
!3605 = !DILocation(line: 47, column: 1, scope: !3574)
!3606 = distinct !DISubprogram(name: "setlocale_null_r", scope: !462, file: !462, line: 154, type: !3607, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!6, !6, !8, !35}
!3609 = !{!3610, !3611, !3612}
!3610 = !DILocalVariable(name: "category", arg: 1, scope: !3606, file: !462, line: 154, type: !6)
!3611 = !DILocalVariable(name: "buf", arg: 2, scope: !3606, file: !462, line: 154, type: !8)
!3612 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3606, file: !462, line: 154, type: !35)
!3613 = !DILocation(line: 0, scope: !3606)
!3614 = !DILocation(line: 159, column: 10, scope: !3606)
!3615 = !DILocation(line: 159, column: 3, scope: !3606)
!3616 = distinct !DISubprogram(name: "setlocale_null", scope: !462, file: !462, line: 186, type: !3617, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!38, !6}
!3619 = !{!3620}
!3620 = !DILocalVariable(name: "category", arg: 1, scope: !3616, file: !462, line: 186, type: !6)
!3621 = !DILocation(line: 0, scope: !3616)
!3622 = !DILocation(line: 189, column: 10, scope: !3616)
!3623 = !DILocation(line: 189, column: 3, scope: !3616)
!3624 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !464, file: !464, line: 35, type: !3617, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3625)
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "category", arg: 1, scope: !3624, file: !464, line: 35, type: !6)
!3627 = !DILocalVariable(name: "result", scope: !3624, file: !464, line: 37, type: !38)
!3628 = !DILocation(line: 0, scope: !3624)
!3629 = !DILocation(line: 37, column: 24, scope: !3624)
!3630 = !DILocation(line: 62, column: 3, scope: !3624)
!3631 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !464, file: !464, line: 66, type: !3607, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3632)
!3632 = !{!3633, !3634, !3635, !3636, !3637}
!3633 = !DILocalVariable(name: "category", arg: 1, scope: !3631, file: !464, line: 66, type: !6)
!3634 = !DILocalVariable(name: "buf", arg: 2, scope: !3631, file: !464, line: 66, type: !8)
!3635 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3631, file: !464, line: 66, type: !35)
!3636 = !DILocalVariable(name: "result", scope: !3631, file: !464, line: 111, type: !38)
!3637 = !DILocalVariable(name: "length", scope: !3638, file: !464, line: 125, type: !35)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !464, line: 124, column: 5)
!3639 = distinct !DILexicalBlock(scope: !3631, file: !464, line: 113, column: 7)
!3640 = !DILocation(line: 0, scope: !3631)
!3641 = !DILocation(line: 0, scope: !3624, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 111, column: 24, scope: !3631)
!3643 = !DILocation(line: 37, column: 24, scope: !3624, inlinedAt: !3642)
!3644 = !DILocation(line: 113, column: 14, scope: !3639)
!3645 = !DILocation(line: 113, column: 7, scope: !3631)
!3646 = !DILocation(line: 116, column: 19, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !464, line: 116, column: 11)
!3648 = distinct !DILexicalBlock(scope: !3639, file: !464, line: 114, column: 5)
!3649 = !DILocation(line: 116, column: 11, scope: !3648)
!3650 = !DILocation(line: 120, column: 16, scope: !3647)
!3651 = !DILocation(line: 120, column: 9, scope: !3647)
!3652 = !DILocation(line: 125, column: 23, scope: !3638)
!3653 = !DILocation(line: 0, scope: !3638)
!3654 = !DILocation(line: 126, column: 18, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3638, file: !464, line: 126, column: 11)
!3656 = !DILocation(line: 126, column: 11, scope: !3638)
!3657 = !DILocation(line: 128, column: 39, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !464, line: 127, column: 9)
!3659 = !DILocalVariable(name: "__dest", arg: 1, scope: !3660, file: !1292, line: 26, type: !3124)
!3660 = distinct !DISubprogram(name: "memcpy", scope: !1292, file: !1292, line: 26, type: !3122, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3661)
!3661 = !{!3659, !3662, !3663}
!3662 = !DILocalVariable(name: "__src", arg: 2, scope: !3660, file: !1292, line: 26, type: !741)
!3663 = !DILocalVariable(name: "__len", arg: 3, scope: !3660, file: !1292, line: 26, type: !35)
!3664 = !DILocation(line: 0, scope: !3660, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 128, column: 11, scope: !3658)
!3666 = !DILocation(line: 29, column: 10, scope: !3660, inlinedAt: !3665)
!3667 = !DILocation(line: 129, column: 11, scope: !3658)
!3668 = !DILocation(line: 133, column: 23, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !464, line: 133, column: 15)
!3670 = distinct !DILexicalBlock(scope: !3655, file: !464, line: 132, column: 9)
!3671 = !DILocation(line: 133, column: 15, scope: !3670)
!3672 = !DILocation(line: 138, column: 44, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3669, file: !464, line: 134, column: 13)
!3674 = !DILocation(line: 0, scope: !3660, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 138, column: 15, scope: !3673)
!3676 = !DILocation(line: 29, column: 10, scope: !3660, inlinedAt: !3675)
!3677 = !DILocation(line: 139, column: 15, scope: !3673)
!3678 = !DILocation(line: 139, column: 32, scope: !3673)
!3679 = !DILocation(line: 140, column: 13, scope: !3673)
!3680 = !DILocation(line: 0, scope: !3639)
!3681 = !DILocation(line: 145, column: 1, scope: !3631)
