; ModuleID = 'src/id.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.group = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [108 x i8] c"Print user and group information for each specified USER,\0Aor (when USER omitted) for the current process.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [61 x i8] c"  -a\0A         ignore, for compatibility with other versions\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [73 x i8] c"  -Z, --context\0A         print only the security context of the process\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [58 x i8] c"  -g, --group\0A         print only the effective group ID\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [45 x i8] c"  -G, --groups\0A         print all group IDs\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [70 x i8] c"  -n, --name\0A         print a name instead of a number, for -u,-g,-G\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [84 x i8] c"  -r, --real\0A         print the real ID instead of the effective ID, with -u,-g,-G\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [56 x i8] c"  -u, --user\0A         print only the effective user ID\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [117 x i8] c"  -z, --zero\0A         delimit entries with NUL characters, not whitespace;\0A         not permitted in default format\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [71 x i8] c"\0AWithout any OPTION, print some useful set of identified information.\0A\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !77
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !87
@.str.18 = private unnamed_addr constant [9 x i8] c"agnruzGZ\00", align 1, !dbg !92
@longopts = internal constant [10 x %struct.option] [%struct.option { ptr @.str.69, i32 0, ptr null, i32 90 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 103 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 71 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 117 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.77, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !97
@.str.19 = private unnamed_addr constant [55 x i8] c"--context (-Z) works only on an SELinux-enabled kernel\00", align 1, !dbg !138
@just_group = internal unnamed_addr global i1 false, align 1, !dbg !467
@use_name = internal unnamed_addr global i1 false, align 1, !dbg !468
@use_real = internal unnamed_addr global i1 false, align 1, !dbg !469
@just_user = internal unnamed_addr global i1 false, align 1, !dbg !470
@opt_zero = internal unnamed_addr global i1 false, align 1, !dbg !471
@just_group_list = internal unnamed_addr global i1 false, align 1, !dbg !472
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !143
@.str.21 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1, !dbg !148
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !153
@optind = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1, !dbg !160
@.str.25 = private unnamed_addr constant [55 x i8] c"printing only names or real IDs requires -u, -g, or -G\00", align 1, !dbg !165
@.str.26 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1, !dbg !167
@.str.27 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !172
@multiple_users = internal unnamed_addr global i8 0, align 1, !dbg !427
@euid = internal global i32 0, align 4, !dbg !203
@.str.29 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1, !dbg !179
@ok = internal unnamed_addr global i8 1, align 1, !dbg !429
@ruid = internal unnamed_addr global i32 0, align 4, !dbg !198
@egid = internal unnamed_addr global i32 0, align 4, !dbg !209
@rgid = internal unnamed_addr global i32 0, align 4, !dbg !205
@.str.30 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1, !dbg !184
@.str.31 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1, !dbg !189
@.str.32 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1, !dbg !194
@.str.33 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1, !dbg !196
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !211
@.str.34 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !290
@.str.35 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !295
@.str.36 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !297
@.str.37 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !302
@.str.51 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !342
@.str.52 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !344
@.str.53 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !346
@.str.54 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !348
@.str.55 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !353
@.str.56 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !355
@.str.57 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !357
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !359
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !361
@.str.60 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !363
@.str.64 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !374
@.str.65 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !376
@.str.66 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !378
@.str.67 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !383
@.str.68 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !388
@.str.69 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !393
@.str.70 = private unnamed_addr constant [6 x i8] c"group\00", align 1, !dbg !395
@.str.71 = private unnamed_addr constant [7 x i8] c"groups\00", align 1, !dbg !397
@.str.72 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !399
@.str.73 = private unnamed_addr constant [5 x i8] c"real\00", align 1, !dbg !401
@.str.74 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !403
@.str.75 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !dbg !405
@.str.76 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !407
@.str.77 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !409
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !431
@.str.79 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %ju\00", align 1, !dbg !433
@.str.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !435
@.str.81 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1, !dbg !437
@.str.82 = private unnamed_addr constant [8 x i8] c"uid=%ju\00", align 1, !dbg !439
@.str.83 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1, !dbg !441
@.str.84 = private unnamed_addr constant [9 x i8] c" gid=%ju\00", align 1, !dbg !443
@.str.85 = private unnamed_addr constant [10 x i8] c" euid=%ju\00", align 1, !dbg !445
@.str.86 = private unnamed_addr constant [10 x i8] c" egid=%ju\00", align 1, !dbg !447
@.str.87 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1, !dbg !449
@.str.88 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1, !dbg !451
@.str.89 = private unnamed_addr constant [9 x i8] c" groups=\00", align 1, !dbg !453
@.str.23 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1, !dbg !473
@.str.1.24 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1, !dbg !476
@.str.2.5 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1, !dbg !478
@.str.3.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !483
@.str.4.3 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1, !dbg !485
@.str.38 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !487
@Version = dso_local local_unnamed_addr global ptr @.str.38, align 8, !dbg !490
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !494
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !507
@.str.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !499
@.str.1.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !501
@.str.2.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !503
@.str.3.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !505
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !509
@stderr = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !515
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !546
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !517
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !536
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !538
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !540
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !542
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !544
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !548
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !550
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !555
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !560
@.str.90 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !566
@.str.1.91 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !568
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !570
@.str.94 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !601
@.str.1.95 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !604
@.str.2.96 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !606
@.str.3.97 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !611
@.str.4.98 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !613
@.str.5.99 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !615
@.str.6.100 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !617
@.str.7.101 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !619
@.str.8.102 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !621
@.str.9.103 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !623
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.94, ptr @.str.1.95, ptr @.str.2.96, ptr @.str.3.97, ptr @.str.4.98, ptr @.str.5.99, ptr @.str.6.100, ptr @.str.7.101, ptr @.str.8.102, ptr @.str.9.103, ptr null], align 16, !dbg !625
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !650
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !664
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !702
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !709
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !666
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !711
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !654
@.str.10.106 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !671
@.str.11.104 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !673
@.str.12.107 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !675
@.str.13.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !677
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !679
@.str.112 = private unnamed_addr constant [27 x i8] c"warning: '.' should be ':'\00", align 1, !dbg !717
@.str.1.115 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1, !dbg !720
@.str.2.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !722
@.str.3.114 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1, !dbg !724
@.str.4.116 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1, !dbg !726
@.str.5.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !728
@.str.120 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !730
@.str.1.121 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !733
@.str.2.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !735
@.str.3.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !737
@.str.4.124 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !739
@.str.5.125 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !741
@.str.6.126 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !746
@.str.7.127 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !748
@.str.8.128 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !750
@.str.9.129 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !755
@.str.10.130 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !760
@.str.11.131 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !765
@.str.12.132 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !770
@.str.13.133 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !772
@.str.14.134 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !774
@.str.15.135 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !779
@.str.16.136 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !784
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.141 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !789
@.str.18.142 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !791
@.str.19.143 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !793
@.str.20.144 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !795
@.str.21.145 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !797
@.str.22.146 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !799
@.str.23.147 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !801
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !806
@exit_failure = dso_local global i32 1, align 4, !dbg !814
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !820
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !823
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !825
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !827
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !830
@.str.1.188 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !845

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !984 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !988, metadata !DIExpression()), !dbg !989
  %2 = icmp eq i32 %0, 0, !dbg !990
  br i1 %2, label %8, label %3, !dbg !992

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !993, !tbaa !995
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !993
  %6 = load ptr, ptr @program_name, align 8, !dbg !993, !tbaa !995
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !993
  br label %42, !dbg !993

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !999
  %10 = load ptr, ptr @program_name, align 8, !dbg !999, !tbaa !995
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !999
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1001
  %13 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !995
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1001
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1002
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1003
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1003
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1004
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1004
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1005
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1005
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1006
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1006
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1007
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1007
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1008
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1009
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1009
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1010
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1010
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1011
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1012
  %26 = load ptr, ptr @stdout, align 8, !dbg !1012, !tbaa !995
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1013, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata !1032, metadata !1026, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr poison, metadata !1025, metadata !DIExpression()), !dbg !1030
  tail call void @emit_bug_reporting_address() #40, !dbg !1033
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1034
  call void @llvm.dbg.value(metadata ptr %28, metadata !1028, metadata !DIExpression()), !dbg !1030
  %29 = icmp eq ptr %28, null, !dbg !1035
  br i1 %29, label %37, label %30, !dbg !1037

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.64, i64 noundef 3) #41, !dbg !1038
  %32 = icmp eq i32 %31, 0, !dbg !1038
  br i1 %32, label %37, label %33, !dbg !1039

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #40, !dbg !1040
  %35 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !995
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1040
  br label %37, !dbg !1042

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1025, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1029, metadata !DIExpression()), !dbg !1030
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #40, !dbg !1043
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #40, !dbg !1043
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #40, !dbg !1044
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #40, !dbg !1044
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1045
  unreachable, !dbg !1045
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1046 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1050 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1056 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1059 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !213 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !217, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !1063
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1064, !tbaa !1065
  %3 = icmp eq i32 %2, -1, !dbg !1067
  br i1 %3, label %4, label %16, !dbg !1068

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #40, !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !1070
  %6 = icmp eq ptr %5, null, !dbg !1071
  br i1 %6, label %14, label %7, !dbg !1072

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1073, !tbaa !1074
  %9 = icmp eq i8 %8, 0, !dbg !1073
  br i1 %9, label %14, label %10, !dbg !1075

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1076, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1082, metadata !DIExpression()), !dbg !1083
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #41, !dbg !1085
  %12 = icmp eq i32 %11, 0, !dbg !1086
  %13 = zext i1 %12 to i32, !dbg !1075
  br label %14, !dbg !1075

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1087, !tbaa !1065
  br label %16, !dbg !1088

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1089
  %18 = icmp eq i32 %17, 0, !dbg !1089
  br i1 %18, label %22, label %19, !dbg !1091

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !995
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1092
  br label %124, !dbg !1094

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !1063
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #41, !dbg !1095
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1096
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !1063
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1097
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !1063
  %26 = icmp eq ptr %25, null, !dbg !1098
  br i1 %26, label %54, label %27, !dbg !1099

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1100
  br i1 %28, label %54, label %29, !dbg !1101

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !1102
  %30 = icmp ult ptr %24, %25, !dbg !1103
  br i1 %30, label %31, label %54, !dbg !1104

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1063
  %33 = load ptr, ptr %32, align 8, !tbaa !995
  br label %34, !dbg !1104

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !1102
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1105
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !1102
  %38 = load i8, ptr %35, align 1, !dbg !1105, !tbaa !1074
  %39 = sext i8 %38 to i64, !dbg !1105
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1105
  %41 = load i16, ptr %40, align 2, !dbg !1105, !tbaa !1106
  %42 = freeze i16 %41, !dbg !1108
  %43 = lshr i16 %42, 13, !dbg !1108
  %44 = and i16 %43, 1, !dbg !1108
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !1102
  %47 = icmp ult ptr %37, %25, !dbg !1103
  %48 = icmp ult i64 %46, 2, !dbg !1110
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1110
  br i1 %49, label %34, label %50, !dbg !1104, !llvm.loop !1111

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1113
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1115
  %53 = zext i1 %51 to i8, !dbg !1115
  br label %54, !dbg !1115

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1063
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !222, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !225, metadata !DIExpression()), !dbg !1063
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.37) #41, !dbg !1116
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !231, metadata !DIExpression()), !dbg !1063
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1117
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !232, metadata !DIExpression()), !dbg !1063
  br label %59, !dbg !1118

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1063
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !222, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !232, metadata !DIExpression()), !dbg !1063
  %62 = load i8, ptr %60, align 1, !dbg !1119, !tbaa !1074
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1120

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1121
  %65 = load i8, ptr %64, align 1, !dbg !1124, !tbaa !1074
  %66 = icmp eq i8 %65, 45, !dbg !1125
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1126
  br label %68, !dbg !1126

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !222, metadata !DIExpression()), !dbg !1063
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1127
  %71 = load ptr, ptr %70, align 8, !dbg !1127, !tbaa !995
  %72 = sext i8 %62 to i64, !dbg !1127
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1127
  %74 = load i16, ptr %73, align 2, !dbg !1127, !tbaa !1106
  %75 = and i16 %74, 8192, !dbg !1127
  %76 = icmp eq i16 %75, 0, !dbg !1127
  br i1 %76, label %92, label %77, !dbg !1129

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1130
  br i1 %78, label %94, label %79, !dbg !1133

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1134
  %81 = load i8, ptr %80, align 1, !dbg !1134, !tbaa !1074
  %82 = sext i8 %81 to i64, !dbg !1134
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1134
  %84 = load i16, ptr %83, align 2, !dbg !1134, !tbaa !1106
  %85 = and i16 %84, 8192, !dbg !1134
  %86 = icmp eq i16 %85, 0, !dbg !1134
  br i1 %86, label %87, label %94, !dbg !1135

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1136
  %89 = icmp ne i8 %88, 0, !dbg !1136
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1138
  br i1 %91, label %92, label %94, !dbg !1138

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1139
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !232, metadata !DIExpression()), !dbg !1063
  br label %59, !dbg !1118, !llvm.loop !1140

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1142
  %96 = load ptr, ptr @stdout, align 8, !dbg !1142, !tbaa !995
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1142
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata !1032, metadata !1082, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !1063
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #41, !dbg !1163
  %99 = icmp eq i32 %98, 0, !dbg !1163
  br i1 %99, label %103, label %100, !dbg !1165

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #41, !dbg !1166
  %102 = icmp eq i32 %101, 0, !dbg !1166
  br i1 %102, label %103, label %106, !dbg !1167

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1168
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !1168
  br label %109, !dbg !1170

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1171
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !1171
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1173, !tbaa !995
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %110), !dbg !1173
  %112 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !995
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %112), !dbg !1174
  %114 = ptrtoint ptr %60 to i64, !dbg !1175
  %115 = sub i64 %114, %95, !dbg !1175
  %116 = load ptr, ptr @stdout, align 8, !dbg !1175, !tbaa !995
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1175
  %118 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !995
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %118), !dbg !1176
  %120 = load ptr, ptr @stdout, align 8, !dbg !1177, !tbaa !995
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %120), !dbg !1177
  %122 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !995
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1178
  br label %124, !dbg !1179

124:                                              ; preds = %109, %19
  ret void, !dbg !1179
}

; Function Attrs: nounwind
declare !dbg !1180 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1184 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1188 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1190 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1193 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1196 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1199 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1202 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1208 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1209 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1215 {
  %3 = alloca ptr, align 8, !DIAssignID !1249
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1227, metadata !DIExpression(), metadata !1249, metadata ptr %3, metadata !DIExpression()), !dbg !1250
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1220, metadata !DIExpression()), !dbg !1251
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1221, metadata !DIExpression()), !dbg !1251
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1223, metadata !DIExpression()), !dbg !1251
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1224, metadata !DIExpression()), !dbg !1251
  %4 = load ptr, ptr %1, align 8, !dbg !1252, !tbaa !995
  tail call void @set_program_name(ptr noundef %4) #40, !dbg !1253
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.15) #40, !dbg !1254
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #40, !dbg !1255
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.16) #40, !dbg !1256
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1257
  br label %9, !dbg !1258

9:                                                ; preds = %27, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1222, metadata !DIExpression()), !dbg !1251
  switch i32 %10, label %24 [
    i32 -1, label %28
    i32 97, label %27
    i32 90, label %11
    i32 103, label %25
    i32 110, label %13
    i32 114, label %14
    i32 117, label %15
    i32 122, label %16
    i32 71, label %17
    i32 -130, label %18
    i32 -131, label %19
  ], !dbg !1258

11:                                               ; preds = %9
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1260
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %12) #40, !dbg !1260
  unreachable, !dbg !1260

13:                                               ; preds = %9
  br label %25, !dbg !1264

14:                                               ; preds = %9
  br label %25, !dbg !1265

15:                                               ; preds = %9
  br label %25, !dbg !1266

16:                                               ; preds = %9
  br label %25, !dbg !1267

17:                                               ; preds = %9
  br label %25, !dbg !1268

18:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #44, !dbg !1269
  unreachable, !dbg !1269

19:                                               ; preds = %9
  %20 = load ptr, ptr @stdout, align 8, !dbg !1270, !tbaa !995
  %21 = load ptr, ptr @Version, align 8, !dbg !1270, !tbaa !995
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #40, !dbg !1270
  %23 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #40, !dbg !1270
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef null) #40, !dbg !1270
  tail call void @exit(i32 noundef 0) #42, !dbg !1270
  unreachable, !dbg !1270

24:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #44, !dbg !1271
  unreachable, !dbg !1271

25:                                               ; preds = %9, %13, %14, %15, %16, %17
  %26 = phi ptr [ @just_group_list, %17 ], [ @opt_zero, %16 ], [ @just_user, %15 ], [ @use_real, %14 ], [ @use_name, %13 ], [ @just_group, %9 ]
  store i1 true, ptr %26, align 1, !dbg !1272
  br label %27, !dbg !1258

27:                                               ; preds = %25, %9
  br label %9, !dbg !1259, !llvm.loop !1273

28:                                               ; preds = %9
  %29 = load i32, ptr @optind, align 4, !dbg !1275, !tbaa !1065
  %30 = sub nsw i32 %0, %29, !dbg !1276
  %31 = sext i32 %30 to i64, !dbg !1277
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1225, metadata !DIExpression()), !dbg !1251
  %32 = load i1, ptr @just_user, align 1, !dbg !1278
  %33 = zext i1 %32 to i32, !dbg !1278
  %34 = load i1, ptr @just_group, align 1, !dbg !1280
  %35 = zext i1 %34 to i32, !dbg !1280
  %36 = add nuw nsw i32 %35, %33, !dbg !1281
  %37 = load i1, ptr @just_group_list, align 1, !dbg !1282
  %38 = zext i1 %37 to i32, !dbg !1282
  %39 = add nuw nsw i32 %36, %38, !dbg !1283
  %40 = icmp ugt i32 %39, 1, !dbg !1284
  br i1 %40, label %41, label %43, !dbg !1285

41:                                               ; preds = %28
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1286
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %42) #40, !dbg !1286
  unreachable, !dbg !1286

43:                                               ; preds = %28
  %44 = or i1 %32, %34, !dbg !1287
  %45 = or i1 %44, %37, !dbg !1287
  tail call void @llvm.dbg.value(metadata i1 %45, metadata !1226, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1251
  br i1 %45, label %46, label %48, !dbg !1288

46:                                               ; preds = %43
  %47 = icmp eq i32 %29, %0, !dbg !1290
  br i1 %47, label %123, label %62, !dbg !1292

48:                                               ; preds = %43
  %49 = load i1, ptr @use_real, align 1, !dbg !1293
  br i1 %49, label %52, label %50, !dbg !1294

50:                                               ; preds = %48
  %51 = load i1, ptr @use_name, align 1, !dbg !1295
  br i1 %51, label %52, label %54, !dbg !1296

52:                                               ; preds = %50, %48
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1297
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %53) #40, !dbg !1297
  unreachable, !dbg !1297

54:                                               ; preds = %50
  %55 = load i1, ptr @opt_zero, align 1, !dbg !1298
  br i1 %55, label %56, label %58, !dbg !1300

56:                                               ; preds = %54
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1301
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %57) #40, !dbg !1301
  unreachable, !dbg !1301

58:                                               ; preds = %54
  %59 = icmp eq i32 %29, %0, !dbg !1290
  br i1 %59, label %60, label %62, !dbg !1302

60:                                               ; preds = %58
  %61 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #40, !dbg !1303
  br label %123, !dbg !1292

62:                                               ; preds = %58, %46
  %63 = icmp ugt i32 %30, 1, !dbg !1304
  %64 = zext i1 %63 to i8, !dbg !1305
  store i8 %64, ptr @multiple_users, align 1, !dbg !1305, !tbaa !1306
  %65 = sext i32 %29 to i64, !dbg !1308
  %66 = add nsw i64 %31, %65, !dbg !1309
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !1225, metadata !DIExpression()), !dbg !1251
  %67 = icmp ugt i64 %66, %65, !dbg !1310
  br i1 %67, label %68, label %174, !dbg !1311

68:                                               ; preds = %62, %117
  %69 = phi i64 [ %121, %117 ], [ %65, %62 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1312
  store ptr null, ptr %3, align 8, !dbg !1313, !tbaa !995, !DIAssignID !1314
  call void @llvm.dbg.assign(metadata ptr null, metadata !1227, metadata !DIExpression(), metadata !1314, metadata ptr %3, metadata !DIExpression()), !dbg !1250
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1233, metadata !DIExpression()), !dbg !1250
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69, !dbg !1315
  %71 = load ptr, ptr %70, align 8, !dbg !1315, !tbaa !995
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1245, metadata !DIExpression()), !dbg !1250
  %72 = load i8, ptr %71, align 1, !dbg !1316, !tbaa !1074
  %73 = icmp eq i8 %72, 0, !dbg !1316
  br i1 %73, label %88, label %74, !dbg !1318

74:                                               ; preds = %68
  %75 = call ptr @parse_user_spec(ptr noundef nonnull %71, ptr noundef nonnull @euid, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #40, !dbg !1319
  %76 = icmp eq ptr %75, null, !dbg !1319
  br i1 %76, label %77, label %88, !dbg !1322

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 8, !dbg !1323, !tbaa !995
  %79 = icmp eq ptr %78, null, !dbg !1323
  br i1 %79, label %82, label %80, !dbg !1323

80:                                               ; preds = %77
  %81 = call ptr @getpwnam(ptr noundef nonnull %78), !dbg !1324
  br label %85, !dbg !1323

82:                                               ; preds = %77
  %83 = load i32, ptr @euid, align 4, !dbg !1325, !tbaa !1065
  %84 = call ptr @getpwuid(i32 noundef %83) #40, !dbg !1326
  br label %85, !dbg !1323

85:                                               ; preds = %80, %82
  %86 = phi ptr [ %81, %80 ], [ %84, %82 ], !dbg !1250
  tail call void @llvm.dbg.value(metadata ptr %86, metadata !1233, metadata !DIExpression()), !dbg !1250
  %87 = icmp eq ptr %86, null, !dbg !1327
  br i1 %87, label %88, label %93, !dbg !1329

88:                                               ; preds = %68, %74, %85
  %89 = tail call ptr @__errno_location() #43, !dbg !1330
  %90 = load i32, ptr %89, align 4, !dbg !1330, !tbaa !1065
  %91 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1330
  %92 = call ptr @quote(ptr noundef nonnull %71) #40, !dbg !1330
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %90, ptr noundef %91, ptr noundef %92) #40, !dbg !1330
  store i8 0, ptr @ok, align 1, !dbg !1332, !tbaa !1306
  br label %117, !dbg !1333

93:                                               ; preds = %85
  %94 = load ptr, ptr %3, align 8, !dbg !1334, !tbaa !995
  %95 = icmp eq ptr %94, null, !dbg !1334
  br i1 %95, label %96, label %99, !dbg !1337

96:                                               ; preds = %93
  %97 = load ptr, ptr %86, align 8, !dbg !1338, !tbaa !1339
  %98 = call noalias nonnull ptr @xstrdup(ptr noundef %97) #40, !dbg !1341
  store ptr %98, ptr %3, align 8, !dbg !1342, !tbaa !995, !DIAssignID !1343
  call void @llvm.dbg.assign(metadata ptr %98, metadata !1227, metadata !DIExpression(), metadata !1343, metadata ptr %3, metadata !DIExpression()), !dbg !1250
  br label %99, !dbg !1344

99:                                               ; preds = %96, %93
  %100 = phi ptr [ %98, %96 ], [ %94, %93 ], !dbg !1345
  %101 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 2, !dbg !1346
  %102 = load i32, ptr %101, align 8, !dbg !1346, !tbaa !1347
  store i32 %102, ptr @euid, align 4, !dbg !1348, !tbaa !1065
  store i32 %102, ptr @ruid, align 4, !dbg !1349, !tbaa !1065
  %103 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 3, !dbg !1350
  %104 = load i32, ptr %103, align 4, !dbg !1350, !tbaa !1351
  store i32 %104, ptr @egid, align 4, !dbg !1352, !tbaa !1065
  store i32 %104, ptr @rgid, align 4, !dbg !1353, !tbaa !1065
  call fastcc void @print_stuff(ptr noundef nonnull %100), !dbg !1354
  %105 = load ptr, ptr @stdout, align 8, !dbg !1355, !tbaa !995
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !1357, metadata !DIExpression()), !dbg !1363
  %106 = load i32, ptr %105, align 8, !dbg !1365, !tbaa !1366
  %107 = and i32 %106, 32, !dbg !1355
  %108 = icmp eq i32 %107, 0, !dbg !1355
  br i1 %108, label %117, label %109, !dbg !1369

109:                                              ; preds = %99
  %110 = tail call ptr @__errno_location() #43, !dbg !1370
  %111 = load i32, ptr %110, align 4, !dbg !1370, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %111, metadata !1373, metadata !DIExpression()), !dbg !1375
  %112 = call i32 @fflush_unlocked(ptr noundef nonnull %105) #40, !dbg !1376
  %113 = load ptr, ptr @stdout, align 8, !dbg !1377, !tbaa !995
  %114 = call i32 @fpurge(ptr noundef %113) #40, !dbg !1378
  %115 = load ptr, ptr @stdout, align 8, !dbg !1379, !tbaa !995
  call void @clearerr_unlocked(ptr noundef %115) #40, !dbg !1379
  %116 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #40, !dbg !1380
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %111, ptr noundef %116) #40, !dbg !1380
  unreachable, !dbg !1380

117:                                              ; preds = %99, %88
  %118 = load ptr, ptr %3, align 8, !dbg !1381, !tbaa !995
  call void @free(ptr noundef %118) #40, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1383
  %119 = load i32, ptr @optind, align 4, !dbg !1384, !tbaa !1065
  %120 = add nsw i32 %119, 1, !dbg !1384
  store i32 %120, ptr @optind, align 4, !dbg !1384, !tbaa !1065
  %121 = sext i32 %120 to i64, !dbg !1385
  %122 = icmp ugt i64 %66, %121, !dbg !1310
  br i1 %122, label %68, label %174, !dbg !1311, !llvm.loop !1386

123:                                              ; preds = %60, %46
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1246, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1248, metadata !DIExpression()), !dbg !1388
  br i1 %32, label %124, label %126, !dbg !1389

124:                                              ; preds = %123
  %125 = load i1, ptr @use_real, align 1, !dbg !1390
  br i1 %125, label %137, label %128, !dbg !1392

126:                                              ; preds = %123
  %127 = or i1 %34, %37, !dbg !1393
  br i1 %127, label %137, label %128, !dbg !1393

128:                                              ; preds = %126, %124
  %129 = tail call ptr @__errno_location() #43, !dbg !1394
  store i32 0, ptr %129, align 4, !dbg !1396, !tbaa !1065
  %130 = tail call i32 @geteuid() #40, !dbg !1397
  store i32 %130, ptr @euid, align 4, !dbg !1398, !tbaa !1065
  %131 = icmp eq i32 %130, -1, !dbg !1399
  br i1 %131, label %132, label %137, !dbg !1401

132:                                              ; preds = %128
  %133 = load i32, ptr %129, align 4, !dbg !1402, !tbaa !1065
  %134 = icmp eq i32 %133, 0, !dbg !1402
  br i1 %134, label %137, label %135, !dbg !1403

135:                                              ; preds = %132
  %136 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1404
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %133, ptr noundef %136) #40, !dbg !1404
  unreachable, !dbg !1404

137:                                              ; preds = %126, %128, %132, %124
  %138 = load i1, ptr @just_user, align 1, !dbg !1405
  br i1 %138, label %139, label %141, !dbg !1407

139:                                              ; preds = %137
  %140 = load i1, ptr @use_real, align 1, !dbg !1408
  br i1 %140, label %145, label %173, !dbg !1405

141:                                              ; preds = %137
  %142 = load i1, ptr @just_group, align 1, !dbg !1409
  br i1 %142, label %143, label %145, !dbg !1410

143:                                              ; preds = %141
  %144 = tail call ptr @__errno_location() #43, !dbg !1411
  br label %156, !dbg !1410

145:                                              ; preds = %141, %139
  %146 = tail call ptr @__errno_location() #43, !dbg !1414
  store i32 0, ptr %146, align 4, !dbg !1416, !tbaa !1065
  %147 = tail call i32 @getuid() #40, !dbg !1417
  store i32 %147, ptr @ruid, align 4, !dbg !1418, !tbaa !1065
  %148 = icmp eq i32 %147, -1, !dbg !1419
  br i1 %148, label %149, label %154, !dbg !1421

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 4, !dbg !1422, !tbaa !1065
  %151 = icmp eq i32 %150, 0, !dbg !1422
  br i1 %151, label %154, label %152, !dbg !1423

152:                                              ; preds = %149
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1424
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %150, ptr noundef %153) #40, !dbg !1424
  unreachable, !dbg !1424

154:                                              ; preds = %145, %149
  %155 = load i1, ptr @just_user, align 1, !dbg !1425
  br i1 %155, label %173, label %156, !dbg !1426

156:                                              ; preds = %143, %154
  %157 = phi ptr [ %144, %143 ], [ %146, %154 ], !dbg !1411
  store i32 0, ptr %157, align 4, !dbg !1427, !tbaa !1065
  %158 = tail call i32 @getegid() #40, !dbg !1428
  store i32 %158, ptr @egid, align 4, !dbg !1429, !tbaa !1065
  %159 = icmp eq i32 %158, -1, !dbg !1430
  br i1 %159, label %160, label %165, !dbg !1432

160:                                              ; preds = %156
  %161 = load i32, ptr %157, align 4, !dbg !1433, !tbaa !1065
  %162 = icmp eq i32 %161, 0, !dbg !1433
  br i1 %162, label %165, label %163, !dbg !1434

163:                                              ; preds = %160
  %164 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !1435
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %161, ptr noundef %164) #40, !dbg !1435
  unreachable, !dbg !1435

165:                                              ; preds = %160, %156
  store i32 0, ptr %157, align 4, !dbg !1436, !tbaa !1065
  %166 = tail call i32 @getgid() #40, !dbg !1437
  store i32 %166, ptr @rgid, align 4, !dbg !1438, !tbaa !1065
  %167 = icmp eq i32 %166, -1, !dbg !1439
  br i1 %167, label %168, label %173, !dbg !1441

168:                                              ; preds = %165
  %169 = load i32, ptr %157, align 4, !dbg !1442, !tbaa !1065
  %170 = icmp eq i32 %169, 0, !dbg !1442
  br i1 %170, label %173, label %171, !dbg !1443

171:                                              ; preds = %168
  %172 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !1444
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %169, ptr noundef %172) #40, !dbg !1444
  unreachable, !dbg !1444

173:                                              ; preds = %139, %165, %168, %154
  tail call fastcc void @print_stuff(ptr noundef null), !dbg !1445
  br label %174

174:                                              ; preds = %117, %62, %173
  %175 = load i8, ptr @ok, align 1, !dbg !1446, !tbaa !1306, !range !1447, !noundef !1032
  %176 = xor i8 %175, 1, !dbg !1446
  %177 = zext nneg i8 %176 to i32, !dbg !1446
  ret i32 %177, !dbg !1448
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1449 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1452 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1453 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1456 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1462 noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1465 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1468 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @print_stuff(ptr noundef %0) unnamed_addr #10 !dbg !1472 {
  %2 = alloca ptr, align 8, !DIAssignID !1475
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1474, metadata !DIExpression()), !dbg !1476
  %3 = load i1, ptr @just_user, align 1, !dbg !1477
  br i1 %3, label %4, label %24, !dbg !1479

4:                                                ; preds = %1
  %5 = load i1, ptr @use_real, align 1, !dbg !1480
  %6 = load i32, ptr @ruid, align 4, !dbg !1480
  %7 = load i32, ptr @euid, align 4, !dbg !1480
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %8, metadata !1481, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata ptr null, metadata !1486, metadata !DIExpression()), !dbg !1487
  %9 = load i1, ptr @use_name, align 1, !dbg !1489
  br i1 %9, label %12, label %10, !dbg !1491

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64, !dbg !1492
  br label %21, !dbg !1491

12:                                               ; preds = %4
  %13 = tail call ptr @getpwuid(i32 noundef %8) #40, !dbg !1494
  call void @llvm.dbg.value(metadata ptr %13, metadata !1486, metadata !DIExpression()), !dbg !1487
  %14 = icmp eq ptr %13, null, !dbg !1496
  br i1 %14, label %15, label %18, !dbg !1498

15:                                               ; preds = %12
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #40, !dbg !1499
  %17 = zext i32 %8 to i64, !dbg !1499
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16, i64 noundef %17) #40, !dbg !1499
  store i8 0, ptr @ok, align 1, !dbg !1501, !tbaa !1306
  br label %21, !dbg !1502

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %13, metadata !1486, metadata !DIExpression()), !dbg !1487
  %19 = load ptr, ptr %13, align 8, !dbg !1503, !tbaa !1339
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %19) #40, !dbg !1503
  br label %182, !dbg !1503

21:                                               ; preds = %15, %10
  %22 = phi i64 [ %11, %10 ], [ %17, %15 ], !dbg !1492
  call void @llvm.dbg.value(metadata ptr null, metadata !1486, metadata !DIExpression()), !dbg !1487
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %22) #40, !dbg !1492
  br label %182

24:                                               ; preds = %1
  %25 = load i1, ptr @just_group, align 1, !dbg !1504
  br i1 %25, label %26, label %37, !dbg !1506

26:                                               ; preds = %24
  %27 = load i1, ptr @use_real, align 1, !dbg !1507
  %28 = load i32, ptr @rgid, align 4, !dbg !1507
  %29 = load i32, ptr @egid, align 4, !dbg !1507
  %30 = select i1 %27, i32 %28, i32 %29, !dbg !1507
  %31 = load i1, ptr @use_name, align 1, !dbg !1508
  %32 = tail call zeroext i1 @print_group(i32 noundef %30, i1 noundef zeroext %31) #40, !dbg !1509
  %33 = load i8, ptr @ok, align 1, !dbg !1510, !tbaa !1306, !range !1447, !noundef !1032
  %34 = icmp ne i8 %33, 0, !dbg !1510
  %35 = and i1 %32, %34, !dbg !1510
  %36 = zext i1 %35 to i8, !dbg !1510
  store i8 %36, ptr @ok, align 1, !dbg !1510, !tbaa !1306
  br label %182, !dbg !1511

37:                                               ; preds = %24
  %38 = load i1, ptr @just_group_list, align 1, !dbg !1512
  br i1 %38, label %39, label %51, !dbg !1514

39:                                               ; preds = %37
  %40 = load i32, ptr @ruid, align 4, !dbg !1515, !tbaa !1065
  %41 = load i32, ptr @rgid, align 4, !dbg !1516, !tbaa !1065
  %42 = load i32, ptr @egid, align 4, !dbg !1517, !tbaa !1065
  %43 = load i1, ptr @use_name, align 1, !dbg !1518
  %44 = load i1, ptr @opt_zero, align 1, !dbg !1519
  %45 = select i1 %44, i8 0, i8 32, !dbg !1519
  %46 = tail call zeroext i1 @print_group_list(ptr noundef %0, i32 noundef %40, i32 noundef %41, i32 noundef %42, i1 noundef zeroext %43, i8 noundef signext %45) #40, !dbg !1520
  %47 = load i8, ptr @ok, align 1, !dbg !1521, !tbaa !1306, !range !1447, !noundef !1032
  %48 = icmp ne i8 %47, 0, !dbg !1521
  %49 = and i1 %46, %48, !dbg !1521
  %50 = zext i1 %49 to i8, !dbg !1521
  store i8 %50, ptr @ok, align 1, !dbg !1521, !tbaa !1306
  br label %182, !dbg !1522

51:                                               ; preds = %37
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1523, metadata !DIExpression(), metadata !1475, metadata ptr %2, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %0, metadata !1527, metadata !DIExpression()), !dbg !1545
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #40, !dbg !1546
  %53 = load i32, ptr @ruid, align 4, !dbg !1546, !tbaa !1065
  %54 = zext i32 %53 to i64, !dbg !1546
  %55 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %52, i64 noundef %54) #40, !dbg !1546
  %56 = load i32, ptr @ruid, align 4, !dbg !1547, !tbaa !1065
  %57 = tail call ptr @getpwuid(i32 noundef %56) #40, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %57, metadata !1528, metadata !DIExpression()), !dbg !1545
  %58 = icmp eq ptr %57, null, !dbg !1549
  br i1 %58, label %62, label %59, !dbg !1551

59:                                               ; preds = %51
  %60 = load ptr, ptr %57, align 8, !dbg !1552, !tbaa !1339
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %60) #40, !dbg !1552
  br label %62, !dbg !1552

62:                                               ; preds = %59, %51
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #40, !dbg !1553
  %64 = load i32, ptr @rgid, align 4, !dbg !1553, !tbaa !1065
  %65 = zext i32 %64 to i64, !dbg !1553
  %66 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %63, i64 noundef %65) #40, !dbg !1553
  %67 = load i32, ptr @rgid, align 4, !dbg !1554, !tbaa !1065
  %68 = tail call ptr @getgrgid(i32 noundef %67) #40, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %68, metadata !1529, metadata !DIExpression()), !dbg !1545
  %69 = icmp eq ptr %68, null, !dbg !1556
  br i1 %69, label %73, label %70, !dbg !1558

70:                                               ; preds = %62
  %71 = load ptr, ptr %68, align 8, !dbg !1559, !tbaa !1560
  %72 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %71) #40, !dbg !1559
  br label %73, !dbg !1559

73:                                               ; preds = %70, %62
  %74 = load i32, ptr @euid, align 4, !dbg !1562, !tbaa !1065
  %75 = load i32, ptr @ruid, align 4, !dbg !1564, !tbaa !1065
  %76 = icmp eq i32 %74, %75, !dbg !1565
  br i1 %76, label %88, label %77, !dbg !1566

77:                                               ; preds = %73
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #40, !dbg !1567
  %79 = load i32, ptr @euid, align 4, !dbg !1567, !tbaa !1065
  %80 = zext i32 %79 to i64, !dbg !1567
  %81 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %78, i64 noundef %80) #40, !dbg !1567
  %82 = load i32, ptr @euid, align 4, !dbg !1569, !tbaa !1065
  %83 = tail call ptr @getpwuid(i32 noundef %82) #40, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %83, metadata !1528, metadata !DIExpression()), !dbg !1545
  %84 = icmp eq ptr %83, null, !dbg !1571
  br i1 %84, label %88, label %85, !dbg !1573

85:                                               ; preds = %77
  %86 = load ptr, ptr %83, align 8, !dbg !1574, !tbaa !1339
  %87 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %86) #40, !dbg !1574
  br label %88, !dbg !1574

88:                                               ; preds = %85, %77, %73
  %89 = phi ptr [ %83, %85 ], [ null, %77 ], [ %57, %73 ], !dbg !1545
  call void @llvm.dbg.value(metadata ptr %89, metadata !1528, metadata !DIExpression()), !dbg !1545
  %90 = load i32, ptr @egid, align 4, !dbg !1575, !tbaa !1065
  %91 = load i32, ptr @rgid, align 4, !dbg !1577, !tbaa !1065
  %92 = icmp eq i32 %90, %91, !dbg !1578
  br i1 %92, label %104, label %93, !dbg !1579

93:                                               ; preds = %88
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #40, !dbg !1580
  %95 = load i32, ptr @egid, align 4, !dbg !1580, !tbaa !1065
  %96 = zext i32 %95 to i64, !dbg !1580
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, i64 noundef %96) #40, !dbg !1580
  %98 = load i32, ptr @egid, align 4, !dbg !1582, !tbaa !1065
  %99 = tail call ptr @getgrgid(i32 noundef %98) #40, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %99, metadata !1529, metadata !DIExpression()), !dbg !1545
  %100 = icmp eq ptr %99, null, !dbg !1584
  br i1 %100, label %104, label %101, !dbg !1586

101:                                              ; preds = %93
  %102 = load ptr, ptr %99, align 8, !dbg !1587, !tbaa !1560
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %102) #40, !dbg !1587
  br label %104, !dbg !1587

104:                                              ; preds = %101, %93, %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40, !dbg !1588
  %105 = icmp eq ptr %0, null, !dbg !1589
  br i1 %105, label %115, label %106, !dbg !1591

106:                                              ; preds = %104
  %107 = icmp eq ptr %89, null, !dbg !1592
  br i1 %107, label %111, label %108, !dbg !1592

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.passwd, ptr %89, i64 0, i32 3, !dbg !1593
  %110 = load i32, ptr %109, align 4, !dbg !1593, !tbaa !1351
  br label %111, !dbg !1592

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %110, %108 ], [ -1, %106 ], !dbg !1594
  call void @llvm.dbg.value(metadata i32 %112, metadata !1538, metadata !DIExpression()), !dbg !1542
  %113 = call i32 @xgetgroups(ptr noundef nonnull %0, i32 noundef %112, ptr noundef nonnull %2) #40, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %113, metadata !1539, metadata !DIExpression()), !dbg !1542
  %114 = icmp sgt i32 %113, -1, !dbg !1596
  br i1 %114, label %129, label %119, !dbg !1598

115:                                              ; preds = %104
  %116 = load i32, ptr @egid, align 4, !dbg !1599, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %116, metadata !1538, metadata !DIExpression()), !dbg !1542
  %117 = call i32 @xgetgroups(ptr noundef null, i32 noundef %116, ptr noundef nonnull %2) #40, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %117, metadata !1539, metadata !DIExpression()), !dbg !1542
  %118 = icmp sgt i32 %117, -1, !dbg !1596
  br i1 %118, label %129, label %124, !dbg !1598

119:                                              ; preds = %111
  %120 = tail call ptr @__errno_location() #43, !dbg !1600
  %121 = load i32, ptr %120, align 4, !dbg !1600, !tbaa !1065
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #40, !dbg !1600
  %123 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !1600
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %121, ptr noundef %122, ptr noundef %123) #40, !dbg !1600
  br label %128, !dbg !1600

124:                                              ; preds = %115
  %125 = tail call ptr @__errno_location() #43, !dbg !1603
  %126 = load i32, ptr %125, align 4, !dbg !1603, !tbaa !1065
  %127 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #40, !dbg !1603
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %126, ptr noundef %127) #40, !dbg !1603
  br label %128

128:                                              ; preds = %124, %119
  store i8 0, ptr @ok, align 1, !dbg !1604, !tbaa !1306
  br label %181, !dbg !1605

129:                                              ; preds = %115, %111
  %130 = phi i32 [ %117, %115 ], [ %113, %111 ]
  %131 = icmp eq i32 %130, 0, !dbg !1606
  br i1 %131, label %150, label %132, !dbg !1608

132:                                              ; preds = %129
  %133 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.89, i32 noundef 5) #40, !dbg !1609
  %134 = load ptr, ptr @stdout, align 8, !dbg !1609, !tbaa !995
  %135 = call i32 @fputs_unlocked(ptr noundef %133, ptr noundef %134), !dbg !1609
  call void @llvm.dbg.value(metadata i32 0, metadata !1540, metadata !DIExpression()), !dbg !1610
  %136 = zext nneg i32 %130 to i64, !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !1540, metadata !DIExpression()), !dbg !1610
  %137 = load ptr, ptr %2, align 8, !dbg !1613, !tbaa !995
  %138 = load i32, ptr %137, align 4, !dbg !1613, !tbaa !1065
  %139 = zext i32 %138 to i64, !dbg !1613
  %140 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %139) #40, !dbg !1613
  %141 = load ptr, ptr %2, align 8, !dbg !1615, !tbaa !995
  %142 = load i32, ptr %141, align 4, !dbg !1615, !tbaa !1065
  %143 = call ptr @getgrgid(i32 noundef %142) #40, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %143, metadata !1529, metadata !DIExpression()), !dbg !1545
  %144 = icmp eq ptr %143, null, !dbg !1617
  br i1 %144, label %148, label %145, !dbg !1619

145:                                              ; preds = %132
  %146 = load ptr, ptr %143, align 8, !dbg !1620, !tbaa !1560
  %147 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %146) #40, !dbg !1620
  br label %148, !dbg !1620

148:                                              ; preds = %145, %132
  call void @llvm.dbg.value(metadata i64 1, metadata !1540, metadata !DIExpression()), !dbg !1610
  %149 = icmp eq i32 %130, 1, !dbg !1611
  br i1 %149, label %150, label %152, !dbg !1621

150:                                              ; preds = %178, %148, %129
  %151 = load ptr, ptr %2, align 8, !dbg !1622, !tbaa !995
  call void @free(ptr noundef %151) #40, !dbg !1623
  br label %181, !dbg !1624

152:                                              ; preds = %148, %178
  %153 = phi i64 [ %179, %178 ], [ 1, %148 ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !1540, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i32 44, metadata !1625, metadata !DIExpression()), !dbg !1630
  %154 = load ptr, ptr @stdout, align 8, !dbg !1633, !tbaa !995
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 5, !dbg !1633
  %156 = load ptr, ptr %155, align 8, !dbg !1633, !tbaa !1634
  %157 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 6, !dbg !1633
  %158 = load ptr, ptr %157, align 8, !dbg !1633, !tbaa !1635
  %159 = icmp ult ptr %156, %158, !dbg !1633
  br i1 %159, label %162, label %160, !dbg !1633, !prof !1636

160:                                              ; preds = %152
  %161 = call i32 @__overflow(ptr noundef nonnull %154, i32 noundef 44) #40, !dbg !1633
  br label %164, !dbg !1633

162:                                              ; preds = %152
  %163 = getelementptr inbounds i8, ptr %156, i64 1, !dbg !1633
  store ptr %163, ptr %155, align 8, !dbg !1633, !tbaa !1634
  store i8 44, ptr %156, align 1, !dbg !1633, !tbaa !1074
  br label %164, !dbg !1633

164:                                              ; preds = %162, %160
  %165 = load ptr, ptr %2, align 8, !dbg !1613, !tbaa !995
  %166 = getelementptr inbounds i32, ptr %165, i64 %153, !dbg !1613
  %167 = load i32, ptr %166, align 4, !dbg !1613, !tbaa !1065
  %168 = zext i32 %167 to i64, !dbg !1613
  %169 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %168) #40, !dbg !1613
  %170 = load ptr, ptr %2, align 8, !dbg !1615, !tbaa !995
  %171 = getelementptr inbounds i32, ptr %170, i64 %153, !dbg !1615
  %172 = load i32, ptr %171, align 4, !dbg !1615, !tbaa !1065
  %173 = call ptr @getgrgid(i32 noundef %172) #40, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %173, metadata !1529, metadata !DIExpression()), !dbg !1545
  %174 = icmp eq ptr %173, null, !dbg !1617
  br i1 %174, label %178, label %175, !dbg !1619

175:                                              ; preds = %164
  %176 = load ptr, ptr %173, align 8, !dbg !1620, !tbaa !1560
  %177 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %176) #40, !dbg !1620
  br label %178, !dbg !1620

178:                                              ; preds = %175, %164
  %179 = add nuw nsw i64 %153, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %179, metadata !1540, metadata !DIExpression()), !dbg !1610
  %180 = icmp eq i64 %179, %136, !dbg !1611
  br i1 %180, label %150, label %152, !dbg !1621, !llvm.loop !1638

181:                                              ; preds = %128, %150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40, !dbg !1624
  br label %182

182:                                              ; preds = %21, %18, %26, %181, %39
  %183 = load i1, ptr @opt_zero, align 1, !dbg !1641
  br i1 %183, label %184, label %211, !dbg !1643

184:                                              ; preds = %182
  %185 = load i1, ptr @just_group_list, align 1, !dbg !1644
  %186 = load i8, ptr @multiple_users, align 1, !range !1447
  %187 = icmp ne i8 %186, 0
  %188 = select i1 %185, i1 %187, i1 false, !dbg !1645
  br i1 %188, label %189, label %211, !dbg !1645

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 0, metadata !1625, metadata !DIExpression()), !dbg !1646
  %190 = load ptr, ptr @stdout, align 8, !dbg !1649, !tbaa !995
  %191 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 5, !dbg !1649
  %192 = load ptr, ptr %191, align 8, !dbg !1649, !tbaa !1634
  %193 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 6, !dbg !1649
  %194 = load ptr, ptr %193, align 8, !dbg !1649, !tbaa !1635
  %195 = icmp ult ptr %192, %194, !dbg !1649
  br i1 %195, label %198, label %196, !dbg !1649, !prof !1636

196:                                              ; preds = %189
  %197 = call i32 @__overflow(ptr noundef nonnull %190, i32 noundef 0) #40, !dbg !1649
  br label %200, !dbg !1649

198:                                              ; preds = %189
  %199 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !1649
  store ptr %199, ptr %191, align 8, !dbg !1649, !tbaa !1634
  store i8 0, ptr %192, align 1, !dbg !1649, !tbaa !1074
  br label %200, !dbg !1649

200:                                              ; preds = %196, %198
  call void @llvm.dbg.value(metadata i32 0, metadata !1625, metadata !DIExpression()), !dbg !1650
  %201 = load ptr, ptr @stdout, align 8, !dbg !1652, !tbaa !995
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1652
  %203 = load ptr, ptr %202, align 8, !dbg !1652, !tbaa !1634
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1652
  %205 = load ptr, ptr %204, align 8, !dbg !1652, !tbaa !1635
  %206 = icmp ult ptr %203, %205, !dbg !1652
  br i1 %206, label %209, label %207, !dbg !1652, !prof !1636

207:                                              ; preds = %200
  %208 = call i32 @__overflow(ptr noundef nonnull %201, i32 noundef 0) #40, !dbg !1652
  br label %224, !dbg !1652

209:                                              ; preds = %200
  %210 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1652
  store ptr %210, ptr %202, align 8, !dbg !1652, !tbaa !1634
  store i8 0, ptr %203, align 1, !dbg !1652, !tbaa !1074
  br label %224, !dbg !1652

211:                                              ; preds = %184, %182
  %212 = phi i32 [ 0, %184 ], [ 10, %182 ], !dbg !1653
  call void @llvm.dbg.value(metadata i32 %212, metadata !1625, metadata !DIExpression()), !dbg !1655
  %213 = load ptr, ptr @stdout, align 8, !dbg !1657, !tbaa !995
  %214 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 5, !dbg !1657
  %215 = load ptr, ptr %214, align 8, !dbg !1657, !tbaa !1634
  %216 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 6, !dbg !1657
  %217 = load ptr, ptr %216, align 8, !dbg !1657, !tbaa !1635
  %218 = icmp ult ptr %215, %217, !dbg !1657
  br i1 %218, label %221, label %219, !dbg !1657, !prof !1636

219:                                              ; preds = %211
  %220 = call i32 @__overflow(ptr noundef nonnull %213, i32 noundef %212) #40, !dbg !1657
  br label %224, !dbg !1657

221:                                              ; preds = %211
  %222 = trunc i32 %212 to i8, !dbg !1657
  %223 = getelementptr inbounds i8, ptr %215, i64 1, !dbg !1657
  store ptr %223, ptr %214, align 8, !dbg !1657, !tbaa !1634
  store i8 %222, ptr %215, align 1, !dbg !1657, !tbaa !1074
  br label %224, !dbg !1657

224:                                              ; preds = %221, %219, %209, %207
  ret void, !dbg !1658
}

declare !dbg !1659 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1660 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1663 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1666 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1670 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1671 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1674 i32 @getgid() local_unnamed_addr #2

declare !dbg !1675 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

declare !dbg !1678 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @print_group_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef signext %5) local_unnamed_addr #10 !dbg !1681 {
  %7 = alloca ptr, align 8, !DIAssignID !1708
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1703, metadata !DIExpression(), metadata !1708, metadata ptr %7, metadata !DIExpression()), !dbg !1709
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1685, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1686, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1687, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1688, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !1689, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !1690, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1691, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1692, metadata !DIExpression()), !dbg !1710
  %8 = icmp eq ptr %0, null, !dbg !1711
  br i1 %8, label %13, label %9, !dbg !1713

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #40, !dbg !1714
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1692, metadata !DIExpression()), !dbg !1710
  %11 = icmp ne ptr %10, null, !dbg !1716
  %12 = zext i1 %11 to i8, !dbg !1718
  br label %13, !dbg !1718

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1710
  %15 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1692, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1691, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 %2, metadata !1719, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i1 %4, metadata !1724, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1741
  br i1 %4, label %19, label %16, !dbg !1744

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1745
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1741
  %18 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %17) #40, !dbg !1745
  br label %29, !dbg !1747

19:                                               ; preds = %13
  %20 = tail call ptr @getgrgid(i32 noundef %2) #40, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %20, metadata !1725, metadata !DIExpression()), !dbg !1741
  %21 = icmp eq ptr %20, null, !dbg !1749
  br i1 %21, label %25, label %22, !dbg !1750

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !1725, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1741
  %23 = load ptr, ptr %20, align 8, !dbg !1751, !tbaa !1560
  %24 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %23) #40, !dbg !1751
  br label %29, !dbg !1747

25:                                               ; preds = %19
  %26 = zext i32 %2 to i64, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %26, metadata !1734, metadata !DIExpression()), !dbg !1753
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #40, !dbg !1754
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %27, i64 noundef %26) #40, !dbg !1754
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1741
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %26) #40, !dbg !1745
  br label %29

29:                                               ; preds = %22, %16, %25
  %30 = phi i8 [ 0, %25 ], [ %14, %16 ], [ %14, %22 ]
  tail call void @llvm.dbg.value(metadata i8 %30, metadata !1691, metadata !DIExpression()), !dbg !1710
  %31 = icmp eq i32 %3, %2, !dbg !1755
  br i1 %31, label %58, label %32, !dbg !1757

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 %5, metadata !1758, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1761
  %33 = load ptr, ptr @stdout, align 8, !dbg !1764, !tbaa !995
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 5, !dbg !1764
  %35 = load ptr, ptr %34, align 8, !dbg !1764, !tbaa !1634
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 6, !dbg !1764
  %37 = load ptr, ptr %36, align 8, !dbg !1764, !tbaa !1635
  %38 = icmp ult ptr %35, %37, !dbg !1764
  br i1 %38, label %42, label %39, !dbg !1764, !prof !1636

39:                                               ; preds = %32
  %40 = zext i8 %5 to i32, !dbg !1765
  call void @llvm.dbg.value(metadata i8 %5, metadata !1758, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1761
  %41 = tail call i32 @__overflow(ptr noundef nonnull %33, i32 noundef %40) #40, !dbg !1764
  br label %44, !dbg !1764

42:                                               ; preds = %32
  %43 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1764
  store ptr %43, ptr %34, align 8, !dbg !1764, !tbaa !1634
  store i8 %5, ptr %35, align 1, !dbg !1764, !tbaa !1074
  br label %44, !dbg !1764

44:                                               ; preds = %39, %42
  call void @llvm.dbg.value(metadata i32 %3, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i1 %4, metadata !1724, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1766
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1766
  br i1 %4, label %48, label %45, !dbg !1769

45:                                               ; preds = %44
  %46 = zext i32 %3 to i64, !dbg !1770
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1766
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %46) #40, !dbg !1770
  br label %58, !dbg !1771

48:                                               ; preds = %44
  %49 = tail call ptr @getgrgid(i32 noundef %3) #40, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %49, metadata !1725, metadata !DIExpression()), !dbg !1766
  %50 = icmp eq ptr %49, null, !dbg !1773
  br i1 %50, label %54, label %51, !dbg !1774

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata ptr %49, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1766
  %52 = load ptr, ptr %49, align 8, !dbg !1775, !tbaa !1560
  %53 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %52) #40, !dbg !1775
  br label %58, !dbg !1771

54:                                               ; preds = %48
  %55 = zext i32 %3 to i64, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %55, metadata !1734, metadata !DIExpression()), !dbg !1777
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #40, !dbg !1778
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, i64 noundef %55) #40, !dbg !1778
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1766
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %55) #40, !dbg !1770
  br label %58

58:                                               ; preds = %54, %45, %51, %29
  %59 = phi i8 [ %30, %29 ], [ 0, %54 ], [ %30, %45 ], [ %30, %51 ], !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %59, metadata !1691, metadata !DIExpression()), !dbg !1710
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !1779
  %60 = icmp eq ptr %15, null, !dbg !1780
  br i1 %60, label %64, label %61, !dbg !1780

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.passwd, ptr %15, i64 0, i32 3, !dbg !1781
  %63 = load i32, ptr %62, align 4, !dbg !1781, !tbaa !1351
  br label %64, !dbg !1780

64:                                               ; preds = %58, %61
  %65 = phi i32 [ %63, %61 ], [ %3, %58 ], !dbg !1780
  %66 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %65, ptr noundef nonnull %7) #40, !dbg !1782
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1705, metadata !DIExpression()), !dbg !1709
  %67 = icmp sgt i32 %66, -1, !dbg !1783
  br i1 %67, label %68, label %73, !dbg !1785

68:                                               ; preds = %64
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1706, metadata !DIExpression()), !dbg !1786
  tail call void @llvm.dbg.value(metadata i8 %59, metadata !1691, metadata !DIExpression()), !dbg !1710
  %69 = icmp eq i32 %66, 0, !dbg !1787
  br i1 %69, label %81, label %70, !dbg !1789

70:                                               ; preds = %68
  %71 = zext i8 %5 to i32
  %72 = zext nneg i32 %66 to i64, !dbg !1787
  br label %84, !dbg !1789

73:                                               ; preds = %64
  %74 = tail call ptr @__errno_location() #43, !dbg !1790
  %75 = load i32, ptr %74, align 4, !dbg !1790, !tbaa !1065
  br i1 %8, label %79, label %76, !dbg !1793

76:                                               ; preds = %73
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1794
  %78 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !1794
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %77, ptr noundef %78) #40, !dbg !1794
  br label %125, !dbg !1796

79:                                               ; preds = %73
  %80 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.24, i32 noundef 5) #40, !dbg !1797
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %80) #40, !dbg !1797
  br label %125

81:                                               ; preds = %121, %68
  %82 = phi i8 [ %59, %68 ], [ %122, %121 ], !dbg !1799
  %83 = load ptr, ptr %7, align 8, !dbg !1800, !tbaa !995
  call void @free(ptr noundef %83) #40, !dbg !1801
  br label %125, !dbg !1802

84:                                               ; preds = %70, %121
  %85 = phi i64 [ 0, %70 ], [ %123, %121 ]
  %86 = phi i8 [ %59, %70 ], [ %122, %121 ]
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1706, metadata !DIExpression()), !dbg !1786
  tail call void @llvm.dbg.value(metadata i8 %86, metadata !1691, metadata !DIExpression()), !dbg !1710
  %87 = load ptr, ptr %7, align 8, !dbg !1803, !tbaa !995
  %88 = getelementptr inbounds i32, ptr %87, i64 %85, !dbg !1803
  %89 = load i32, ptr %88, align 4, !dbg !1803, !tbaa !1065
  %90 = icmp eq i32 %89, %2, !dbg !1805
  %91 = icmp eq i32 %89, %3
  %92 = or i1 %90, %91, !dbg !1806
  br i1 %92, label %121, label %93, !dbg !1806

93:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8 %5, metadata !1758, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1807
  %94 = load ptr, ptr @stdout, align 8, !dbg !1810, !tbaa !995
  %95 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 5, !dbg !1810
  %96 = load ptr, ptr %95, align 8, !dbg !1810, !tbaa !1634
  %97 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 6, !dbg !1810
  %98 = load ptr, ptr %97, align 8, !dbg !1810, !tbaa !1635
  %99 = icmp ult ptr %96, %98, !dbg !1810
  br i1 %99, label %102, label %100, !dbg !1810, !prof !1636

100:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i8 %5, metadata !1758, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1807
  %101 = call i32 @__overflow(ptr noundef nonnull %94, i32 noundef %71) #40, !dbg !1810
  br label %104, !dbg !1810

102:                                              ; preds = %93
  %103 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1810
  store ptr %103, ptr %95, align 8, !dbg !1810, !tbaa !1634
  store i8 %5, ptr %96, align 1, !dbg !1810, !tbaa !1074
  br label %104, !dbg !1810

104:                                              ; preds = %100, %102
  %105 = load ptr, ptr %7, align 8, !dbg !1811, !tbaa !995
  %106 = getelementptr inbounds i32, ptr %105, i64 %85, !dbg !1811
  %107 = load i32, ptr %106, align 4, !dbg !1811, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %107, metadata !1719, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i1 %4, metadata !1724, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1813
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1813
  br i1 %4, label %111, label %108, !dbg !1815

108:                                              ; preds = %104
  %109 = zext i32 %107 to i64, !dbg !1816
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1813
  %110 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %109) #40, !dbg !1816
  br label %121, !dbg !1817

111:                                              ; preds = %104
  %112 = call ptr @getgrgid(i32 noundef %107) #40, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %112, metadata !1725, metadata !DIExpression()), !dbg !1813
  %113 = icmp eq ptr %112, null, !dbg !1819
  br i1 %113, label %117, label %114, !dbg !1820

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %112, metadata !1725, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1813
  %115 = load ptr, ptr %112, align 8, !dbg !1821, !tbaa !1560
  %116 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %115) #40, !dbg !1821
  br label %121, !dbg !1817

117:                                              ; preds = %111
  %118 = zext i32 %107 to i64, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %118, metadata !1734, metadata !DIExpression()), !dbg !1823
  %119 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #40, !dbg !1824
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %119, i64 noundef %118) #40, !dbg !1824
  call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1813
  %120 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %118) #40, !dbg !1816
  br label %121

121:                                              ; preds = %117, %108, %114, %84
  %122 = phi i8 [ %86, %84 ], [ 0, %117 ], [ %86, %108 ], [ %86, %114 ], !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1691, metadata !DIExpression()), !dbg !1710
  %123 = add nuw nsw i64 %85, 1, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1706, metadata !DIExpression()), !dbg !1786
  %124 = icmp eq i64 %123, %72, !dbg !1787
  br i1 %124, label %81, label %84, !dbg !1789, !llvm.loop !1826

125:                                              ; preds = %76, %79, %81
  %126 = phi i8 [ %82, %81 ], [ %59, %79 ], [ %59, %76 ], !dbg !1799
  tail call void @llvm.dbg.value(metadata i8 %126, metadata !1691, metadata !DIExpression()), !dbg !1710
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !1802
  %127 = and i8 %126, 1
  %128 = icmp ne i8 %127, 0
  %129 = select i1 %67, i1 %128, i1 false
  ret i1 %129, !dbg !1828
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @print_group(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #10 !dbg !1720 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1719, metadata !DIExpression()), !dbg !1829
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1724, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1829
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1733, metadata !DIExpression()), !dbg !1829
  br i1 %1, label %5, label %3, !dbg !1830

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1831
  br label %14, !dbg !1830

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #40, !dbg !1832
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1725, metadata !DIExpression()), !dbg !1829
  %7 = icmp eq ptr %6, null, !dbg !1833
  br i1 %7, label %8, label %11, !dbg !1834

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1734, metadata !DIExpression()), !dbg !1836
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #40, !dbg !1837
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #40, !dbg !1837
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1829
  br label %14, !dbg !1838

11:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1725, metadata !DIExpression()), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1829
  %12 = load ptr, ptr %6, align 8, !dbg !1839, !tbaa !1560
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #40, !dbg !1839
  br label %18, !dbg !1839

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1831
  %16 = xor i1 %1, true, !dbg !1831
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1725, metadata !DIExpression()), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1829
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %15) #40, !dbg !1831
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1840
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1841 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1843, metadata !DIExpression()), !dbg !1844
  store ptr %0, ptr @file_name, align 8, !dbg !1845, !tbaa !995
  ret void, !dbg !1846
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1847 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1851, metadata !DIExpression()), !dbg !1852
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1853, !tbaa !1306
  ret void, !dbg !1854
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1855 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1860, !tbaa !995
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1861
  %3 = icmp eq i32 %2, 0, !dbg !1862
  br i1 %3, label %22, label %4, !dbg !1863

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1864, !tbaa !1306, !range !1447, !noundef !1032
  %6 = icmp eq i8 %5, 0, !dbg !1864
  br i1 %6, label %11, label %7, !dbg !1865

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1866
  %9 = load i32, ptr %8, align 4, !dbg !1866, !tbaa !1065
  %10 = icmp eq i32 %9, 32, !dbg !1867
  br i1 %10, label %22, label %11, !dbg !1868

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #40, !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1857, metadata !DIExpression()), !dbg !1870
  %13 = load ptr, ptr @file_name, align 8, !dbg !1871, !tbaa !995
  %14 = icmp eq ptr %13, null, !dbg !1871
  %15 = tail call ptr @__errno_location() #43, !dbg !1873
  %16 = load i32, ptr %15, align 4, !dbg !1873, !tbaa !1065
  br i1 %14, label %19, label %17, !dbg !1874

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1875
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #40, !dbg !1875
  br label %20, !dbg !1875

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #40, !dbg !1876
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1877, !tbaa !1065
  tail call void @_exit(i32 noundef %21) #42, !dbg !1878
  unreachable, !dbg !1878

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1879, !tbaa !995
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1881
  %25 = icmp eq i32 %24, 0, !dbg !1882
  br i1 %25, label %28, label %26, !dbg !1883

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1884, !tbaa !1065
  tail call void @_exit(i32 noundef %27) #42, !dbg !1885
  unreachable, !dbg !1885

28:                                               ; preds = %22
  ret void, !dbg !1886
}

; Function Attrs: noreturn
declare !dbg !1887 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1888 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1892, metadata !DIExpression()), !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1893, metadata !DIExpression()), !dbg !1896
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1894, metadata !DIExpression()), !dbg !1896
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1895, metadata !DIExpression()), !dbg !1896
  tail call fastcc void @flush_stdout(), !dbg !1897
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1898, !tbaa !995
  %6 = icmp eq ptr %5, null, !dbg !1898
  br i1 %6, label %8, label %7, !dbg !1900

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1901
  br label %12, !dbg !1901

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1902, !tbaa !995
  %10 = tail call ptr @getprogname() #41, !dbg !1902
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %10) #40, !dbg !1902
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1904
  ret void, !dbg !1905
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1906 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1908, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !1913
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1916
  %2 = icmp slt i32 %1, 0, !dbg !1917
  br i1 %2, label %6, label %3, !dbg !1918

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1919, !tbaa !995
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1919
  br label %6, !dbg !1919

6:                                                ; preds = %3, %0
  ret void, !dbg !1920
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1921 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1927
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1923, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1924, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1925, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1926, metadata !DIExpression()), !dbg !1928
  %6 = load ptr, ptr @stderr, align 8, !dbg !1929, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %6, metadata !1930, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata ptr %2, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata ptr %3, metadata !1971, metadata !DIExpression()), !dbg !1972
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1974
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1975, !tbaa !1065
  %9 = add i32 %8, 1, !dbg !1975
  store i32 %9, ptr @error_message_count, align 4, !dbg !1975, !tbaa !1065
  %10 = icmp eq i32 %1, 0, !dbg !1976
  br i1 %10, label %20, label %11, !dbg !1978

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1979, metadata !DIExpression(), metadata !1927, metadata ptr %5, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 %1, metadata !1982, metadata !DIExpression()), !dbg !1987
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1989
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %12, metadata !1983, metadata !DIExpression()), !dbg !1987
  %13 = icmp eq ptr %12, null, !dbg !1991
  br i1 %13, label %14, label %16, !dbg !1993

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #40, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %15, metadata !1983, metadata !DIExpression()), !dbg !1987
  br label %16, !dbg !1995

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1987
  call void @llvm.dbg.value(metadata ptr %17, metadata !1983, metadata !DIExpression()), !dbg !1987
  %18 = load ptr, ptr @stderr, align 8, !dbg !1996, !tbaa !995
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %17) #40, !dbg !1996
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1997
  br label %20, !dbg !1998

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1999, !tbaa !995
  call void @llvm.dbg.value(metadata i32 10, metadata !2000, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata ptr %21, metadata !2005, metadata !DIExpression()), !dbg !2006
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2008
  %23 = load ptr, ptr %22, align 8, !dbg !2008, !tbaa !1634
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2008
  %25 = load ptr, ptr %24, align 8, !dbg !2008, !tbaa !1635
  %26 = icmp ult ptr %23, %25, !dbg !2008
  br i1 %26, label %29, label %27, !dbg !2008, !prof !1636

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2008
  br label %31, !dbg !2008

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2008
  store ptr %30, ptr %22, align 8, !dbg !2008, !tbaa !1634
  store i8 10, ptr %23, align 1, !dbg !2008, !tbaa !1074
  br label %31, !dbg !2008

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2009, !tbaa !995
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2009
  %34 = icmp eq i32 %0, 0, !dbg !2010
  br i1 %34, label %36, label %35, !dbg !2012

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2013
  unreachable, !dbg !2013

36:                                               ; preds = %31
  ret void, !dbg !2014
}

declare !dbg !2015 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2018 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2021 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2025 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2032, metadata !DIExpression(), metadata !2038, metadata ptr %4, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2029, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2030, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2031, metadata !DIExpression()), !dbg !2039
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2040
  call void @llvm.va_start(ptr nonnull %4), !dbg !2041
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !2042
  call void @llvm.va_end(ptr nonnull %4), !dbg !2043
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2044
  ret void, !dbg !2044
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !519 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !530, metadata !DIExpression()), !dbg !2045
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !531, metadata !DIExpression()), !dbg !2045
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !532, metadata !DIExpression()), !dbg !2045
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !533, metadata !DIExpression()), !dbg !2045
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !534, metadata !DIExpression()), !dbg !2045
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !535, metadata !DIExpression()), !dbg !2045
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2046, !tbaa !1065
  %8 = icmp eq i32 %7, 0, !dbg !2046
  br i1 %8, label %23, label %9, !dbg !2048

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2049, !tbaa !1065
  %11 = icmp eq i32 %10, %3, !dbg !2052
  br i1 %11, label %12, label %22, !dbg !2053

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2054, !tbaa !995
  %14 = icmp eq ptr %13, %2, !dbg !2055
  br i1 %14, label %36, label %15, !dbg !2056

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2057
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2058
  br i1 %18, label %19, label %22, !dbg !2058

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2059
  %21 = icmp eq i32 %20, 0, !dbg !2060
  br i1 %21, label %36, label %22, !dbg !2061

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2062, !tbaa !995
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2063, !tbaa !1065
  br label %23, !dbg !2064

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2065
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2066, !tbaa !995
  %25 = icmp eq ptr %24, null, !dbg !2066
  br i1 %25, label %27, label %26, !dbg !2068

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2069
  br label %31, !dbg !2069

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2070, !tbaa !995
  %29 = tail call ptr @getprogname() #41, !dbg !2070
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %29) #40, !dbg !2070
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2072, !tbaa !995
  %33 = icmp eq ptr %2, null, !dbg !2072
  %34 = select i1 %33, ptr @.str.3.52, ptr @.str.2.53, !dbg !2072
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2072
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2073
  br label %36, !dbg !2074

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2074
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2075 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2085
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2084, metadata !DIExpression(), metadata !2085, metadata ptr %6, metadata !DIExpression()), !dbg !2086
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2079, metadata !DIExpression()), !dbg !2086
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2080, metadata !DIExpression()), !dbg !2086
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2081, metadata !DIExpression()), !dbg !2086
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2082, metadata !DIExpression()), !dbg !2086
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2083, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2087
  call void @llvm.va_start(ptr nonnull %6), !dbg !2088
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !2089
  call void @llvm.va_end(ptr nonnull %6), !dbg !2090
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2091
  ret void, !dbg !2091
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2130, metadata !DIExpression()), !dbg !2131
  tail call void @__fpurge(ptr noundef nonnull %0) #40, !dbg !2132
  ret i32 0, !dbg !2133
}

; Function Attrs: nounwind
declare !dbg !2134 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !2138 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2141, !tbaa !995
  ret ptr %1, !dbg !2142
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !2143 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2145, metadata !DIExpression()), !dbg !2148
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2149
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2146, metadata !DIExpression()), !dbg !2148
  %3 = icmp eq ptr %2, null, !dbg !2150
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2150
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2150
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2147, metadata !DIExpression()), !dbg !2148
  %6 = ptrtoint ptr %5 to i64, !dbg !2151
  %7 = ptrtoint ptr %0 to i64, !dbg !2151
  %8 = sub i64 %6, %7, !dbg !2151
  %9 = icmp sgt i64 %8, 6, !dbg !2153
  br i1 %9, label %10, label %19, !dbg !2154

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2155
  call void @llvm.dbg.value(metadata ptr %11, metadata !2156, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i64 7, metadata !2162, metadata !DIExpression()), !dbg !2163
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.90, i64 7), !dbg !2165
  %13 = icmp eq i32 %12, 0, !dbg !2166
  br i1 %13, label %14, label %19, !dbg !2167

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2145, metadata !DIExpression()), !dbg !2148
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.91, i64 noundef 3) #41, !dbg !2168
  %16 = icmp eq i32 %15, 0, !dbg !2171
  %17 = select i1 %16, i64 3, i64 0, !dbg !2172
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2172
  br label %19, !dbg !2172

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2148
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2147, metadata !DIExpression()), !dbg !2148
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2145, metadata !DIExpression()), !dbg !2148
  store ptr %20, ptr @program_name, align 8, !dbg !2173, !tbaa !995
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2174, !tbaa !995
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2175, !tbaa !995
  ret void, !dbg !2176
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2177 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !572 {
  %3 = alloca i32, align 4, !DIAssignID !2178
  call void @llvm.dbg.assign(metadata i1 undef, metadata !582, metadata !DIExpression(), metadata !2178, metadata ptr %3, metadata !DIExpression()), !dbg !2179
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !587, metadata !DIExpression(), metadata !2180, metadata ptr %4, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !579, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !580, metadata !DIExpression()), !dbg !2179
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2181
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !581, metadata !DIExpression()), !dbg !2179
  %6 = icmp eq ptr %5, %0, !dbg !2182
  br i1 %6, label %7, label %14, !dbg !2184

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2185
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2186
  call void @llvm.dbg.value(metadata ptr %4, metadata !2187, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr %4, metadata !2196, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 0, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i64 8, metadata !2203, metadata !DIExpression()), !dbg !2204
  store i64 0, ptr %4, align 8, !dbg !2206
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2207
  %9 = icmp eq i64 %8, 2, !dbg !2209
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2210
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2211
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2211
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2179
  ret ptr %15, !dbg !2211
}

; Function Attrs: nounwind
declare !dbg !2212 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2218 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2223, metadata !DIExpression()), !dbg !2226
  %2 = tail call ptr @__errno_location() #43, !dbg !2227
  %3 = load i32, ptr %2, align 4, !dbg !2227, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2224, metadata !DIExpression()), !dbg !2226
  %4 = icmp eq ptr %0, null, !dbg !2228
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2228
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2229
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2225, metadata !DIExpression()), !dbg !2226
  store i32 %3, ptr %2, align 4, !dbg !2230, !tbaa !1065
  ret ptr %6, !dbg !2231
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !2232 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2238, metadata !DIExpression()), !dbg !2239
  %2 = icmp eq ptr %0, null, !dbg !2240
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2240
  %4 = load i32, ptr %3, align 8, !dbg !2241, !tbaa !2242
  ret i32 %4, !dbg !2244
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2245 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2249, metadata !DIExpression()), !dbg !2251
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2250, metadata !DIExpression()), !dbg !2251
  %3 = icmp eq ptr %0, null, !dbg !2252
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2252
  store i32 %1, ptr %4, align 8, !dbg !2253, !tbaa !2242
  ret void, !dbg !2254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2255 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2259, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2260, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2261, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2262, metadata !DIExpression()), !dbg !2267
  %4 = icmp eq ptr %0, null, !dbg !2268
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2268
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2269
  %7 = lshr i8 %1, 5, !dbg !2270
  %8 = zext nneg i8 %7 to i64, !dbg !2270
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2271
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2263, metadata !DIExpression()), !dbg !2267
  %10 = and i8 %1, 31, !dbg !2272
  %11 = zext nneg i8 %10 to i32, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2265, metadata !DIExpression()), !dbg !2267
  %12 = load i32, ptr %9, align 4, !dbg !2273, !tbaa !1065
  %13 = lshr i32 %12, %11, !dbg !2274
  %14 = and i32 %13, 1, !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2266, metadata !DIExpression()), !dbg !2267
  %15 = xor i32 %13, %2, !dbg !2276
  %16 = and i32 %15, 1, !dbg !2276
  %17 = shl nuw i32 %16, %11, !dbg !2277
  %18 = xor i32 %17, %12, !dbg !2278
  store i32 %18, ptr %9, align 4, !dbg !2278, !tbaa !1065
  ret i32 %14, !dbg !2279
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2280 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2284, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2285, metadata !DIExpression()), !dbg !2287
  %3 = icmp eq ptr %0, null, !dbg !2288
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2290
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2284, metadata !DIExpression()), !dbg !2287
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2291
  %6 = load i32, ptr %5, align 4, !dbg !2291, !tbaa !2292
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2286, metadata !DIExpression()), !dbg !2287
  store i32 %1, ptr %5, align 4, !dbg !2293, !tbaa !2292
  ret i32 %6, !dbg !2294
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2295 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2299, metadata !DIExpression()), !dbg !2302
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2300, metadata !DIExpression()), !dbg !2302
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2301, metadata !DIExpression()), !dbg !2302
  %4 = icmp eq ptr %0, null, !dbg !2303
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2305
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2299, metadata !DIExpression()), !dbg !2302
  store i32 10, ptr %5, align 8, !dbg !2306, !tbaa !2242
  %6 = icmp ne ptr %1, null, !dbg !2307
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2309
  br i1 %8, label %10, label %9, !dbg !2309

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2310
  unreachable, !dbg !2310

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2311
  store ptr %1, ptr %11, align 8, !dbg !2312, !tbaa !2313
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2314
  store ptr %2, ptr %12, align 8, !dbg !2315, !tbaa !2316
  ret void, !dbg !2317
}

; Function Attrs: noreturn nounwind
declare !dbg !2318 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2319 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2323, metadata !DIExpression()), !dbg !2331
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2324, metadata !DIExpression()), !dbg !2331
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2325, metadata !DIExpression()), !dbg !2331
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2326, metadata !DIExpression()), !dbg !2331
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2327, metadata !DIExpression()), !dbg !2331
  %6 = icmp eq ptr %4, null, !dbg !2332
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2332
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2328, metadata !DIExpression()), !dbg !2331
  %8 = tail call ptr @__errno_location() #43, !dbg !2333
  %9 = load i32, ptr %8, align 4, !dbg !2333, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2329, metadata !DIExpression()), !dbg !2331
  %10 = load i32, ptr %7, align 8, !dbg !2334, !tbaa !2242
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2335
  %12 = load i32, ptr %11, align 4, !dbg !2335, !tbaa !2292
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2336
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2337
  %15 = load ptr, ptr %14, align 8, !dbg !2337, !tbaa !2313
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2338
  %17 = load ptr, ptr %16, align 8, !dbg !2338, !tbaa !2316
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2330, metadata !DIExpression()), !dbg !2331
  store i32 %9, ptr %8, align 4, !dbg !2340, !tbaa !1065
  ret i64 %18, !dbg !2341
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2342 {
  %10 = alloca i32, align 4, !DIAssignID !2410
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2411
  %12 = alloca i32, align 4, !DIAssignID !2412
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2413
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2388, metadata !DIExpression(), metadata !2414, metadata ptr %14, metadata !DIExpression()), !dbg !2415
  %15 = alloca i32, align 4, !DIAssignID !2416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2391, metadata !DIExpression(), metadata !2416, metadata ptr %15, metadata !DIExpression()), !dbg !2417
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2348, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2350, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2351, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2352, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2353, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2354, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2355, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2356, metadata !DIExpression()), !dbg !2418
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2419
  %17 = icmp eq i64 %16, 1, !dbg !2420
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2357, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2360, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2361, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2418
  %18 = trunc i32 %5 to i8, !dbg !2421
  %19 = lshr i8 %18, 1, !dbg !2421
  %20 = and i8 %19, 1, !dbg !2421
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2363, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2365, metadata !DIExpression()), !dbg !2418
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2422

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2423
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2424
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2425
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2426
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2418
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2427
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2428
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2365, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2363, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2362, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2361, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2360, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2351, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2356, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2355, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2352, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.label(metadata !2366), !dbg !2429
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2418
  switch i32 %29, label %113 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %114
    i32 0, label %112
    i32 2, label %104
    i32 4, label %98
    i32 3, label %96
    i32 1, label %97
    i32 10, label %73
    i32 8, label %48
    i32 9, label %48
  ], !dbg !2430

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2363, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2352, metadata !DIExpression()), !dbg !2418
  br label %114, !dbg !2431

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2363, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2352, metadata !DIExpression()), !dbg !2418
  %43 = and i8 %37, 1, !dbg !2432
  %44 = icmp eq i8 %43, 0, !dbg !2432
  br i1 %44, label %45, label %114, !dbg !2431

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2434
  br i1 %46, label %114, label %47, !dbg !2437

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2434, !tbaa !1074
  br label %114, !dbg !2434

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !688, metadata !DIExpression(), metadata !2412, metadata ptr %12, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.assign(metadata i1 undef, metadata !689, metadata !DIExpression(), metadata !2413, metadata ptr %13, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata ptr @.str.11.104, metadata !685, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 %29, metadata !686, metadata !DIExpression()), !dbg !2438
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.11.104, i32 noundef 5) #40, !dbg !2442
  call void @llvm.dbg.value(metadata ptr %49, metadata !687, metadata !DIExpression()), !dbg !2438
  %50 = icmp eq ptr %49, @.str.11.104, !dbg !2443
  br i1 %50, label %51, label %60, !dbg !2445

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %13, metadata !2448, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata ptr %13, metadata !2456, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 8, metadata !2460, metadata !DIExpression()), !dbg !2461
  store i64 0, ptr %13, align 8, !dbg !2463
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2464
  %53 = icmp eq i64 %52, 3, !dbg !2466
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2467
  %57 = icmp eq i32 %29, 9, !dbg !2467
  %58 = select i1 %57, ptr @.str.10.106, ptr @.str.12.107, !dbg !2467
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2468
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2468
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2355, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !688, metadata !DIExpression(), metadata !2410, metadata ptr %10, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !689, metadata !DIExpression(), metadata !2411, metadata ptr %11, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata ptr @.str.12.107, metadata !685, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %29, metadata !686, metadata !DIExpression()), !dbg !2469
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.12.107, i32 noundef 5) #40, !dbg !2471
  call void @llvm.dbg.value(metadata ptr %62, metadata !687, metadata !DIExpression()), !dbg !2469
  %63 = icmp eq ptr %62, @.str.12.107, !dbg !2472
  br i1 %63, label %64, label %73, !dbg !2473

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2474
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2475
  call void @llvm.dbg.value(metadata ptr %11, metadata !2448, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %11, metadata !2456, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 8, metadata !2460, metadata !DIExpression()), !dbg !2478
  store i64 0, ptr %11, align 8, !dbg !2480
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2481
  %66 = icmp eq i64 %65, 3, !dbg !2482
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2483
  %70 = icmp eq i32 %29, 9, !dbg !2483
  %71 = select i1 %70, ptr @.str.10.106, ptr @.str.12.107, !dbg !2483
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2484
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2484
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2356, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2355, metadata !DIExpression()), !dbg !2418
  %76 = and i8 %37, 1, !dbg !2485
  %77 = icmp eq i8 %76, 0, !dbg !2485
  br i1 %77, label %78, label %93, !dbg !2486

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2368, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2358, metadata !DIExpression()), !dbg !2418
  %79 = load i8, ptr %74, align 1, !dbg !2488, !tbaa !1074
  %80 = icmp eq i8 %79, 0, !dbg !2490
  br i1 %80, label %93, label %81, !dbg !2490

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2368, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2358, metadata !DIExpression()), !dbg !2418
  %85 = icmp ult i64 %84, %40, !dbg !2491
  br i1 %85, label %86, label %88, !dbg !2494

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2491
  store i8 %82, ptr %87, align 1, !dbg !2491, !tbaa !1074
  br label %88, !dbg !2491

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2358, metadata !DIExpression()), !dbg !2418
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2368, metadata !DIExpression()), !dbg !2487
  %91 = load i8, ptr %90, align 1, !dbg !2488, !tbaa !1074
  %92 = icmp eq i8 %91, 0, !dbg !2490
  br i1 %92, label %93, label %81, !dbg !2490, !llvm.loop !2496

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2362, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2360, metadata !DIExpression()), !dbg !2418
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2361, metadata !DIExpression()), !dbg !2418
  br label %114, !dbg !2500

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2362, metadata !DIExpression()), !dbg !2418
  br label %98, !dbg !2501

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2362, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2363, metadata !DIExpression()), !dbg !2418
  br label %98, !dbg !2502

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2426
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2363, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2362, metadata !DIExpression()), !dbg !2418
  %101 = and i8 %100, 1, !dbg !2503
  %102 = icmp eq i8 %101, 0, !dbg !2503
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2505
  br label %104, !dbg !2505

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2418
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2421
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2363, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2362, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2352, metadata !DIExpression()), !dbg !2418
  %107 = and i8 %106, 1, !dbg !2506
  %108 = icmp eq i8 %107, 0, !dbg !2506
  br i1 %108, label %109, label %114, !dbg !2508

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2509
  br i1 %110, label %114, label %111, !dbg !2512

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2509, !tbaa !1074
  br label %114, !dbg !2509

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2418
  br label %114, !dbg !2513

113:                                              ; preds = %28
  call void @abort() #42, !dbg !2514
  unreachable, !dbg !2514

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2498
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.106, %45 ], [ @.str.10.106, %47 ], [ @.str.10.106, %42 ], [ %34, %28 ], [ @.str.12.107, %109 ], [ @.str.12.107, %111 ], [ @.str.12.107, %104 ], [ @.str.10.106, %41 ], !dbg !2418
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2418
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2418
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2363, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2362, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2361, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2360, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2356, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2355, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2352, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()), !dbg !2515
  %123 = and i8 %121, 1
  %124 = icmp ne i8 %123, 0
  %125 = icmp ne i32 %115, 2
  %126 = and i1 %125, %124
  %127 = icmp ne i64 %120, 0
  %128 = select i1 %126, i1 %127, i1 false
  %129 = icmp ugt i64 %120, 1
  %130 = and i8 %122, 1
  %131 = icmp eq i8 %130, 0
  %132 = icmp eq i32 %115, 2
  %133 = select i1 %125, i1 true, i1 %131
  %134 = icmp ne i8 %130, 0
  %135 = select i1 %134, i1 %127, i1 false
  %136 = xor i1 %124, true
  %137 = and i1 %26, %134
  br label %138, !dbg !2516

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2498
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2423
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2427
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2428
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2517
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2518
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2365, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2351, metadata !DIExpression()), !dbg !2418
  %147 = icmp eq i64 %139, -1, !dbg !2519
  br i1 %147, label %148, label %152, !dbg !2520

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2521
  %150 = load i8, ptr %149, align 1, !dbg !2521, !tbaa !1074
  %151 = icmp eq i8 %150, 0, !dbg !2522
  br i1 %151, label %612, label %154, !dbg !2523

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2524
  br i1 %153, label %612, label %154, !dbg !2523

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2375, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2525
  br i1 %128, label %155, label %170, !dbg !2526

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2528
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2529
  br i1 %157, label %158, label %160, !dbg !2529

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2351, metadata !DIExpression()), !dbg !2418
  br label %160, !dbg !2531

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2351, metadata !DIExpression()), !dbg !2418
  %162 = icmp ugt i64 %156, %161, !dbg !2532
  br i1 %162, label %170, label %163, !dbg !2533

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2534
  call void @llvm.dbg.value(metadata ptr %164, metadata !2535, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata ptr %119, metadata !2538, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 %120, metadata !2539, metadata !DIExpression()), !dbg !2540
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2542
  %166 = icmp ne i32 %165, 0, !dbg !2543
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2544
  %168 = xor i1 %166, true, !dbg !2544
  %169 = zext i1 %168 to i8, !dbg !2544
  br i1 %167, label %170, label %666, !dbg !2544

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2525
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2375, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2351, metadata !DIExpression()), !dbg !2418
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2545
  %175 = load i8, ptr %174, align 1, !dbg !2545, !tbaa !1074
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2380, metadata !DIExpression()), !dbg !2525
  switch i8 %175, label %306 [
    i8 0, label %176
    i8 63, label %226
    i8 7, label %272
    i8 8, label %261
    i8 12, label %262
    i8 10, label %270
    i8 13, label %263
    i8 9, label %264
    i8 11, label %265
    i8 92, label %266
    i8 123, label %274
    i8 125, label %274
    i8 35, label %278
    i8 126, label %278
    i8 32, label %280
    i8 33, label %281
    i8 34, label %281
    i8 36, label %281
    i8 38, label %281
    i8 40, label %281
    i8 41, label %281
    i8 42, label %281
    i8 59, label %281
    i8 60, label %281
    i8 61, label %281
    i8 62, label %281
    i8 91, label %281
    i8 94, label %281
    i8 96, label %281
    i8 124, label %281
    i8 39, label %283
    i8 37, label %465
    i8 43, label %465
    i8 44, label %465
    i8 45, label %465
    i8 46, label %465
    i8 47, label %465
    i8 48, label %465
    i8 49, label %465
    i8 50, label %465
    i8 51, label %465
    i8 52, label %465
    i8 53, label %465
    i8 54, label %465
    i8 55, label %465
    i8 56, label %465
    i8 57, label %465
    i8 58, label %465
    i8 65, label %465
    i8 66, label %465
    i8 67, label %465
    i8 68, label %465
    i8 69, label %465
    i8 70, label %465
    i8 71, label %465
    i8 72, label %465
    i8 73, label %465
    i8 74, label %465
    i8 75, label %465
    i8 76, label %465
    i8 77, label %465
    i8 78, label %465
    i8 79, label %465
    i8 80, label %465
    i8 81, label %465
    i8 82, label %465
    i8 83, label %465
    i8 84, label %465
    i8 85, label %465
    i8 86, label %465
    i8 87, label %465
    i8 88, label %465
    i8 89, label %465
    i8 90, label %465
    i8 93, label %465
    i8 95, label %465
    i8 97, label %465
    i8 98, label %465
    i8 99, label %465
    i8 100, label %465
    i8 101, label %465
    i8 102, label %465
    i8 103, label %465
    i8 104, label %465
    i8 105, label %465
    i8 106, label %465
    i8 107, label %465
    i8 108, label %465
    i8 109, label %465
    i8 110, label %465
    i8 111, label %465
    i8 112, label %465
    i8 113, label %465
    i8 114, label %465
    i8 115, label %465
    i8 116, label %465
    i8 117, label %465
    i8 118, label %465
    i8 119, label %465
    i8 120, label %465
    i8 121, label %465
    i8 122, label %465
  ], !dbg !2546

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2547

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2548

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2378, metadata !DIExpression()), !dbg !2525
  %179 = and i8 %144, 1, !dbg !2552
  %180 = icmp eq i8 %179, 0, !dbg !2552
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2552
  br i1 %181, label %182, label %198, !dbg !2552

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2554
  br i1 %183, label %184, label %186, !dbg !2558

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2554
  store i8 39, ptr %185, align 1, !dbg !2554, !tbaa !1074
  br label %186, !dbg !2554

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2558
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2358, metadata !DIExpression()), !dbg !2418
  %188 = icmp ult i64 %187, %146, !dbg !2559
  br i1 %188, label %189, label %191, !dbg !2562

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2559
  store i8 36, ptr %190, align 1, !dbg !2559, !tbaa !1074
  br label %191, !dbg !2559

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2562
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2358, metadata !DIExpression()), !dbg !2418
  %193 = icmp ult i64 %192, %146, !dbg !2563
  br i1 %193, label %194, label %196, !dbg !2566

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2563
  store i8 39, ptr %195, align 1, !dbg !2563, !tbaa !1074
  br label %196, !dbg !2563

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2566
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2367, metadata !DIExpression()), !dbg !2418
  br label %198, !dbg !2567

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2418
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2358, metadata !DIExpression()), !dbg !2418
  %201 = icmp ult i64 %199, %146, !dbg !2568
  br i1 %201, label %202, label %204, !dbg !2571

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2568
  store i8 92, ptr %203, align 1, !dbg !2568, !tbaa !1074
  br label %204, !dbg !2568

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2358, metadata !DIExpression()), !dbg !2418
  br i1 %125, label %206, label %476, !dbg !2572

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2574
  %208 = icmp ult i64 %207, %171, !dbg !2575
  br i1 %208, label %209, label %465, !dbg !2576

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2577
  %211 = load i8, ptr %210, align 1, !dbg !2577, !tbaa !1074
  %212 = add i8 %211, -48, !dbg !2578
  %213 = icmp ult i8 %212, 10, !dbg !2578
  br i1 %213, label %214, label %465, !dbg !2578

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2579
  br i1 %215, label %216, label %218, !dbg !2583

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2579
  store i8 48, ptr %217, align 1, !dbg !2579, !tbaa !1074
  br label %218, !dbg !2579

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2358, metadata !DIExpression()), !dbg !2418
  %220 = icmp ult i64 %219, %146, !dbg !2584
  br i1 %220, label %221, label %223, !dbg !2587

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2584
  store i8 48, ptr %222, align 1, !dbg !2584, !tbaa !1074
  br label %223, !dbg !2584

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2587
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2358, metadata !DIExpression()), !dbg !2418
  br label %465, !dbg !2588

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2589

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2590

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2591

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2593

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2595
  %231 = icmp ult i64 %230, %171, !dbg !2596
  br i1 %231, label %232, label %465, !dbg !2597

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2598
  %234 = load i8, ptr %233, align 1, !dbg !2598, !tbaa !1074
  %235 = icmp eq i8 %234, 63, !dbg !2599
  br i1 %235, label %236, label %465, !dbg !2600

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2601
  %238 = load i8, ptr %237, align 1, !dbg !2601, !tbaa !1074
  switch i8 %238, label %465 [
    i8 33, label %239
    i8 39, label %239
    i8 40, label %239
    i8 41, label %239
    i8 45, label %239
    i8 47, label %239
    i8 60, label %239
    i8 61, label %239
    i8 62, label %239
  ], !dbg !2602

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2603

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2373, metadata !DIExpression()), !dbg !2515
  %241 = icmp ult i64 %140, %146, !dbg !2605
  br i1 %241, label %242, label %244, !dbg !2608

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2605
  store i8 63, ptr %243, align 1, !dbg !2605, !tbaa !1074
  br label %244, !dbg !2605

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2358, metadata !DIExpression()), !dbg !2418
  %246 = icmp ult i64 %245, %146, !dbg !2609
  br i1 %246, label %247, label %249, !dbg !2612

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2609
  store i8 34, ptr %248, align 1, !dbg !2609, !tbaa !1074
  br label %249, !dbg !2609

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2358, metadata !DIExpression()), !dbg !2418
  %251 = icmp ult i64 %250, %146, !dbg !2613
  br i1 %251, label %252, label %254, !dbg !2616

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2613
  store i8 34, ptr %253, align 1, !dbg !2613, !tbaa !1074
  br label %254, !dbg !2613

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2616
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2358, metadata !DIExpression()), !dbg !2418
  %256 = icmp ult i64 %255, %146, !dbg !2617
  br i1 %256, label %257, label %259, !dbg !2620

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2617
  store i8 63, ptr %258, align 1, !dbg !2617, !tbaa !1074
  br label %259, !dbg !2617

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2358, metadata !DIExpression()), !dbg !2418
  br label %465, !dbg !2621

261:                                              ; preds = %170
  br label %272, !dbg !2622

262:                                              ; preds = %170
  br label %272, !dbg !2623

263:                                              ; preds = %170
  br label %270, !dbg !2624

264:                                              ; preds = %170
  br label %270, !dbg !2625

265:                                              ; preds = %170
  br label %272, !dbg !2626

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2627

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2628

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2631

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2633

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2634
  call void @llvm.dbg.label(metadata !2381), !dbg !2635
  br i1 %133, label %272, label %655, !dbg !2636

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2634
  call void @llvm.dbg.label(metadata !2384), !dbg !2638
  br i1 %124, label %520, label %476, !dbg !2639

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2640

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2641, !tbaa !1074
  %277 = icmp eq i8 %276, 0, !dbg !2643
  br i1 %277, label %278, label %465, !dbg !2644

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2645
  br i1 %279, label %280, label %465, !dbg !2647

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2379, metadata !DIExpression()), !dbg !2525
  br label %281, !dbg !2648

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2379, metadata !DIExpression()), !dbg !2525
  br i1 %133, label %465, label %655, !dbg !2649

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2379, metadata !DIExpression()), !dbg !2525
  br i1 %132, label %284, label %465, !dbg !2651

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2652

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2655
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2657
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2657
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2657
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2359, metadata !DIExpression()), !dbg !2418
  %291 = icmp ult i64 %140, %290, !dbg !2658
  br i1 %291, label %292, label %294, !dbg !2661

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2658
  store i8 39, ptr %293, align 1, !dbg !2658, !tbaa !1074
  br label %294, !dbg !2658

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2661
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2358, metadata !DIExpression()), !dbg !2418
  %296 = icmp ult i64 %295, %290, !dbg !2662
  br i1 %296, label %297, label %299, !dbg !2665

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2662
  store i8 92, ptr %298, align 1, !dbg !2662, !tbaa !1074
  br label %299, !dbg !2662

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2665
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2358, metadata !DIExpression()), !dbg !2418
  %301 = icmp ult i64 %300, %290, !dbg !2666
  br i1 %301, label %302, label %304, !dbg !2669

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2666
  store i8 39, ptr %303, align 1, !dbg !2666, !tbaa !1074
  br label %304, !dbg !2666

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2418
  br label %465, !dbg !2670

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2671

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2385, metadata !DIExpression()), !dbg !2672
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !2673
  %309 = load ptr, ptr %308, align 8, !dbg !2673, !tbaa !995
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2673
  %312 = load i16, ptr %311, align 2, !dbg !2673, !tbaa !1106
  %313 = and i16 %312, 16384, !dbg !2675
  %314 = icmp ne i16 %313, 0, !dbg !2675
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2387, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2672
  br label %355, !dbg !2676

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %14, metadata !2448, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata ptr %14, metadata !2456, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 8, metadata !2460, metadata !DIExpression()), !dbg !2680
  store i64 0, ptr %14, align 8, !dbg !2682
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2385, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2387, metadata !DIExpression()), !dbg !2672
  %316 = icmp eq i64 %171, -1, !dbg !2683
  br i1 %316, label %317, label %319, !dbg !2685

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2686
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2351, metadata !DIExpression()), !dbg !2418
  br label %319, !dbg !2687

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2351, metadata !DIExpression()), !dbg !2418
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2688
  %321 = sub i64 %320, %145, !dbg !2689
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2395, metadata !DIExpression()), !dbg !2417
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2691

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2385, metadata !DIExpression()), !dbg !2672
  %324 = icmp ult i64 %145, %320, !dbg !2692
  br i1 %324, label %326, label %351, !dbg !2694

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2387, metadata !DIExpression()), !dbg !2672
  br label %351, !dbg !2695

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2385, metadata !DIExpression()), !dbg !2672
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2697
  %330 = load i8, ptr %329, align 1, !dbg !2697, !tbaa !1074
  %331 = icmp eq i8 %330, 0, !dbg !2694
  br i1 %331, label %351, label %332, !dbg !2698

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2385, metadata !DIExpression()), !dbg !2672
  %334 = add i64 %333, %145, !dbg !2700
  %335 = icmp eq i64 %333, %321, !dbg !2692
  br i1 %335, label %351, label %326, !dbg !2694, !llvm.loop !2701

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2396, metadata !DIExpression()), !dbg !2702
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2703
  %339 = and i1 %338, %132, !dbg !2703
  br i1 %339, label %340, label %347, !dbg !2703

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2396, metadata !DIExpression()), !dbg !2702
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2704
  %343 = load i8, ptr %342, align 1, !dbg !2704, !tbaa !1074
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2706

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2396, metadata !DIExpression()), !dbg !2702
  %346 = icmp eq i64 %345, %322, !dbg !2708
  br i1 %346, label %347, label %340, !dbg !2709, !llvm.loop !2710

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2712, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %348, metadata !2714, metadata !DIExpression()), !dbg !2722
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !2724
  %350 = icmp ne i32 %349, 0, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2387, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2385, metadata !DIExpression()), !dbg !2672
  br label %351, !dbg !2726

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2387, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2385, metadata !DIExpression()), !dbg !2672
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2727
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2728
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2387, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2385, metadata !DIExpression()), !dbg !2672
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2727
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2728
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2525
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2729
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2387, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2385, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2351, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2379, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2525
  %359 = icmp ult i64 %357, 2, !dbg !2730
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2731
  br i1 %361, label %461, label %362, !dbg !2731

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2404, metadata !DIExpression()), !dbg !2733
  br label %364, !dbg !2734

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2418
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2517
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2515
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2525
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2735
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2375, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2358, metadata !DIExpression()), !dbg !2418
  br i1 %360, label %417, label %371, !dbg !2736

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2741

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2378, metadata !DIExpression()), !dbg !2525
  %373 = and i8 %366, 1, !dbg !2744
  %374 = icmp eq i8 %373, 0, !dbg !2744
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2744
  br i1 %375, label %376, label %392, !dbg !2744

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2746
  br i1 %377, label %378, label %380, !dbg !2750

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2746
  store i8 39, ptr %379, align 1, !dbg !2746, !tbaa !1074
  br label %380, !dbg !2746

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2750
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2358, metadata !DIExpression()), !dbg !2418
  %382 = icmp ult i64 %381, %146, !dbg !2751
  br i1 %382, label %383, label %385, !dbg !2754

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2751
  store i8 36, ptr %384, align 1, !dbg !2751, !tbaa !1074
  br label %385, !dbg !2751

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2358, metadata !DIExpression()), !dbg !2418
  %387 = icmp ult i64 %386, %146, !dbg !2755
  br i1 %387, label %388, label %390, !dbg !2758

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2755
  store i8 39, ptr %389, align 1, !dbg !2755, !tbaa !1074
  br label %390, !dbg !2755

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2367, metadata !DIExpression()), !dbg !2418
  br label %392, !dbg !2759

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2418
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2358, metadata !DIExpression()), !dbg !2418
  %395 = icmp ult i64 %393, %146, !dbg !2760
  br i1 %395, label %396, label %398, !dbg !2763

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2760
  store i8 92, ptr %397, align 1, !dbg !2760, !tbaa !1074
  br label %398, !dbg !2760

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2358, metadata !DIExpression()), !dbg !2418
  %400 = icmp ult i64 %399, %146, !dbg !2764
  br i1 %400, label %401, label %405, !dbg !2767

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2764
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2764
  store i8 %403, ptr %404, align 1, !dbg !2764, !tbaa !1074
  br label %405, !dbg !2764

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2358, metadata !DIExpression()), !dbg !2418
  %407 = icmp ult i64 %406, %146, !dbg !2768
  br i1 %407, label %408, label %413, !dbg !2771

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2768
  %411 = or disjoint i8 %410, 48, !dbg !2768
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2768
  store i8 %411, ptr %412, align 1, !dbg !2768, !tbaa !1074
  br label %413, !dbg !2768

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2358, metadata !DIExpression()), !dbg !2418
  %415 = and i8 %370, 7, !dbg !2772
  %416 = or disjoint i8 %415, 48, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2380, metadata !DIExpression()), !dbg !2525
  br label %426, !dbg !2774

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2775
  %419 = icmp eq i8 %418, 0, !dbg !2775
  br i1 %419, label %426, label %420, !dbg !2777

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2778
  br i1 %421, label %422, label %424, !dbg !2782

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2778
  store i8 92, ptr %423, align 1, !dbg !2778, !tbaa !1074
  br label %424, !dbg !2778

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2782
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2375, metadata !DIExpression()), !dbg !2525
  br label %426, !dbg !2783

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2418
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2517
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2525
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2525
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2375, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2358, metadata !DIExpression()), !dbg !2418
  %432 = add i64 %367, 1, !dbg !2784
  %433 = icmp ugt i64 %363, %432, !dbg !2786
  br i1 %433, label %434, label %463, !dbg !2787

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2788
  %436 = icmp ne i8 %435, 0, !dbg !2788
  %437 = and i8 %430, 1, !dbg !2788
  %438 = icmp eq i8 %437, 0, !dbg !2788
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2788
  br i1 %439, label %440, label %451, !dbg !2788

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2791
  br i1 %441, label %442, label %444, !dbg !2795

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2791
  store i8 39, ptr %443, align 1, !dbg !2791, !tbaa !1074
  br label %444, !dbg !2791

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2358, metadata !DIExpression()), !dbg !2418
  %446 = icmp ult i64 %445, %146, !dbg !2796
  br i1 %446, label %447, label %449, !dbg !2799

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2796
  store i8 39, ptr %448, align 1, !dbg !2796, !tbaa !1074
  br label %449, !dbg !2796

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2418
  br label %451, !dbg !2800

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2801
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2358, metadata !DIExpression()), !dbg !2418
  %454 = icmp ult i64 %452, %146, !dbg !2802
  br i1 %454, label %455, label %457, !dbg !2805

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2802
  store i8 %431, ptr %456, align 1, !dbg !2802, !tbaa !1074
  br label %457, !dbg !2802

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2805
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2373, metadata !DIExpression()), !dbg !2515
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2806
  %460 = load i8, ptr %459, align 1, !dbg !2806, !tbaa !1074
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2380, metadata !DIExpression()), !dbg !2525
  br label %364, !dbg !2807, !llvm.loop !2808

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2379, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2375, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2351, metadata !DIExpression()), !dbg !2418
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2379, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2375, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2351, metadata !DIExpression()), !dbg !2418
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2811
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2418
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2423
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2418
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2418
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2515
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2525
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2525
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2525
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2379, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2375, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2351, metadata !DIExpression()), !dbg !2418
  br i1 %126, label %487, label %476, !dbg !2812

476:                                              ; preds = %268, %225, %272, %204, %465
  %477 = phi i64 [ %475, %465 ], [ %146, %204 ], [ %146, %272 ], [ %146, %225 ], [ %146, %268 ]
  %478 = phi i8 [ %474, %465 ], [ 48, %204 ], [ %175, %272 ], [ 0, %225 ], [ 92, %268 ]
  %479 = phi i8 [ %473, %465 ], [ 0, %204 ], [ 0, %272 ], [ 0, %225 ], [ 0, %268 ]
  %480 = phi i8 [ %472, %465 ], [ 1, %204 ], [ 0, %272 ], [ 0, %225 ], [ 0, %268 ]
  %481 = phi i64 [ %471, %465 ], [ %145, %204 ], [ %145, %272 ], [ %145, %225 ], [ %145, %268 ]
  %482 = phi i8 [ %470, %465 ], [ %200, %204 ], [ %144, %272 ], [ %144, %225 ], [ %144, %268 ]
  %483 = phi i8 [ %469, %465 ], [ %142, %204 ], [ %142, %272 ], [ %142, %225 ], [ %142, %268 ]
  %484 = phi i64 [ %468, %465 ], [ %141, %204 ], [ %141, %272 ], [ %141, %225 ], [ %141, %268 ]
  %485 = phi i64 [ %467, %465 ], [ %205, %204 ], [ %140, %272 ], [ %140, %225 ], [ %140, %268 ]
  %486 = phi i64 [ %466, %465 ], [ %171, %204 ], [ %171, %272 ], [ %171, %225 ], [ %171, %268 ]
  br i1 %137, label %488, label %509, !dbg !2814

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2815

488:                                              ; preds = %476, %487
  %489 = phi i64 [ %477, %476 ], [ %475, %487 ]
  %490 = phi i8 [ %478, %476 ], [ %474, %487 ]
  %491 = phi i8 [ %479, %476 ], [ %473, %487 ]
  %492 = phi i8 [ %480, %476 ], [ %472, %487 ]
  %493 = phi i64 [ %481, %476 ], [ %471, %487 ]
  %494 = phi i8 [ %482, %476 ], [ %470, %487 ]
  %495 = phi i8 [ %483, %476 ], [ %469, %487 ]
  %496 = phi i64 [ %484, %476 ], [ %468, %487 ]
  %497 = phi i64 [ %485, %476 ], [ %467, %487 ]
  %498 = phi i64 [ %486, %476 ], [ %466, %487 ]
  %499 = lshr i8 %490, 5, !dbg !2816
  %500 = zext nneg i8 %499 to i64, !dbg !2816
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2817
  %502 = load i32, ptr %501, align 4, !dbg !2817, !tbaa !1065
  %503 = and i8 %490, 31, !dbg !2818
  %504 = zext nneg i8 %503 to i32, !dbg !2818
  %505 = shl nuw i32 1, %504, !dbg !2819
  %506 = and i32 %502, %505, !dbg !2819
  %507 = icmp eq i32 %506, 0, !dbg !2819
  %508 = and i1 %172, %507, !dbg !2820
  br i1 %508, label %558, label %520, !dbg !2820

509:                                              ; preds = %487, %476
  %510 = phi i64 [ %475, %487 ], [ %477, %476 ]
  %511 = phi i8 [ %474, %487 ], [ %478, %476 ]
  %512 = phi i8 [ %473, %487 ], [ %479, %476 ]
  %513 = phi i8 [ %472, %487 ], [ %480, %476 ]
  %514 = phi i64 [ %471, %487 ], [ %481, %476 ]
  %515 = phi i8 [ %470, %487 ], [ %482, %476 ]
  %516 = phi i8 [ %469, %487 ], [ %483, %476 ]
  %517 = phi i64 [ %468, %487 ], [ %484, %476 ]
  %518 = phi i64 [ %467, %487 ], [ %485, %476 ]
  %519 = phi i64 [ %466, %487 ], [ %486, %476 ]
  br i1 %172, label %558, label %520, !dbg !2821

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2811
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2418
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2423
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2427
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2517
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2822
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2525
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2525
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2379, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2351, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.label(metadata !2407), !dbg !2823
  br i1 %131, label %530, label %659, !dbg !2824

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2378, metadata !DIExpression()), !dbg !2525
  %531 = and i8 %525, 1, !dbg !2826
  %532 = icmp eq i8 %531, 0, !dbg !2826
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2826
  br i1 %533, label %534, label %550, !dbg !2826

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2828
  br i1 %535, label %536, label %538, !dbg !2832

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2828
  store i8 39, ptr %537, align 1, !dbg !2828, !tbaa !1074
  br label %538, !dbg !2828

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2358, metadata !DIExpression()), !dbg !2418
  %540 = icmp ult i64 %539, %529, !dbg !2833
  br i1 %540, label %541, label %543, !dbg !2836

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2833
  store i8 36, ptr %542, align 1, !dbg !2833, !tbaa !1074
  br label %543, !dbg !2833

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2836
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2358, metadata !DIExpression()), !dbg !2418
  %545 = icmp ult i64 %544, %529, !dbg !2837
  br i1 %545, label %546, label %548, !dbg !2840

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2837
  store i8 39, ptr %547, align 1, !dbg !2837, !tbaa !1074
  br label %548, !dbg !2837

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2367, metadata !DIExpression()), !dbg !2418
  br label %550, !dbg !2841

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2525
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2358, metadata !DIExpression()), !dbg !2418
  %553 = icmp ult i64 %551, %529, !dbg !2842
  br i1 %553, label %554, label %556, !dbg !2845

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2842
  store i8 92, ptr %555, align 1, !dbg !2842, !tbaa !1074
  br label %556, !dbg !2842

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2845
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2379, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2351, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.label(metadata !2408), !dbg !2846
  br label %585, !dbg !2847

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2811
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2418
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2423
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2427
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2517
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2822
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2525
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2525
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2850
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2380, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2379, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2378, metadata !DIExpression()), !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2351, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.label(metadata !2408), !dbg !2846
  %569 = and i8 %563, 1, !dbg !2847
  %570 = icmp ne i8 %569, 0, !dbg !2847
  %571 = and i8 %565, 1, !dbg !2847
  %572 = icmp eq i8 %571, 0, !dbg !2847
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2847
  br i1 %573, label %574, label %585, !dbg !2847

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2851
  br i1 %575, label %576, label %578, !dbg !2855

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2851
  store i8 39, ptr %577, align 1, !dbg !2851, !tbaa !1074
  br label %578, !dbg !2851

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2358, metadata !DIExpression()), !dbg !2418
  %580 = icmp ult i64 %579, %568, !dbg !2856
  br i1 %580, label %581, label %583, !dbg !2859

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2856
  store i8 39, ptr %582, align 1, !dbg !2856, !tbaa !1074
  br label %583, !dbg !2856

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2418
  br label %585, !dbg !2860

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2525
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2358, metadata !DIExpression()), !dbg !2418
  %595 = icmp ult i64 %593, %586, !dbg !2861
  br i1 %595, label %596, label %598, !dbg !2864

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2861
  store i8 %587, ptr %597, align 1, !dbg !2861, !tbaa !1074
  br label %598, !dbg !2861

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2358, metadata !DIExpression()), !dbg !2418
  %600 = icmp eq i8 %588, 0, !dbg !2865
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2867
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2365, metadata !DIExpression()), !dbg !2418
  br label %602, !dbg !2868

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2811
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2418
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2423
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2427
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2428
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2517
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2822
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2373, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2367, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2365, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2351, metadata !DIExpression()), !dbg !2418
  %611 = add i64 %609, 1, !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2373, metadata !DIExpression()), !dbg !2515
  br label %138, !dbg !2870, !llvm.loop !2871

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2349, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2365, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2364, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2359, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2358, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2351, metadata !DIExpression()), !dbg !2418
  %613 = icmp eq i64 %140, 0, !dbg !2873
  %614 = and i1 %132, %613, !dbg !2875
  %615 = xor i1 %614, true, !dbg !2875
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2875
  br i1 %616, label %617, label %655, !dbg !2875

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2876
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2876
  br i1 %621, label %622, label %631, !dbg !2876

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2878
  %624 = icmp eq i8 %623, 0, !dbg !2878
  br i1 %624, label %627, label %625, !dbg !2881

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2882
  br label %672, !dbg !2883

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2884
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2886
  br i1 %630, label %28, label %631, !dbg !2886

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2887
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2889
  br i1 %634, label %635, label %650, !dbg !2889

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2360, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2358, metadata !DIExpression()), !dbg !2418
  %636 = load i8, ptr %119, align 1, !dbg !2890, !tbaa !1074
  %637 = icmp eq i8 %636, 0, !dbg !2893
  br i1 %637, label %650, label %638, !dbg !2893

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2360, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2358, metadata !DIExpression()), !dbg !2418
  %642 = icmp ult i64 %641, %146, !dbg !2894
  br i1 %642, label %643, label %645, !dbg !2897

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2894
  store i8 %639, ptr %644, align 1, !dbg !2894, !tbaa !1074
  br label %645, !dbg !2894

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2358, metadata !DIExpression()), !dbg !2418
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2898
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2360, metadata !DIExpression()), !dbg !2418
  %648 = load i8, ptr %647, align 1, !dbg !2890, !tbaa !1074
  %649 = icmp eq i8 %648, 0, !dbg !2893
  br i1 %649, label %650, label %638, !dbg !2893, !llvm.loop !2899

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2358, metadata !DIExpression()), !dbg !2418
  %652 = icmp ult i64 %651, %146, !dbg !2901
  br i1 %652, label %653, label %672, !dbg !2903

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2904
  store i8 0, ptr %654, align 1, !dbg !2905, !tbaa !1074
  br label %672, !dbg !2904

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2409), !dbg !2906
  %657 = icmp eq i8 %123, 0, !dbg !2907
  %658 = select i1 %657, i32 2, i32 4, !dbg !2907
  br label %666, !dbg !2907

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2409), !dbg !2906
  %662 = icmp eq i32 %115, 2, !dbg !2909
  %663 = icmp eq i8 %123, 0, !dbg !2907
  %664 = select i1 %663, i32 2, i32 4, !dbg !2907
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2907
  br label %666, !dbg !2907

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2352, metadata !DIExpression()), !dbg !2418
  %670 = and i32 %5, -3, !dbg !2910
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2911
  br label %672, !dbg !2912

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2913
}

; Function Attrs: nounwind
declare !dbg !2914 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2917 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2920 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2922 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2926, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2928, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr null, metadata !2936, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !2943
  %4 = icmp eq ptr %2, null, !dbg !2945
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2945
  call void @llvm.dbg.value(metadata ptr %5, metadata !2938, metadata !DIExpression()), !dbg !2943
  %6 = tail call ptr @__errno_location() #43, !dbg !2946
  %7 = load i32, ptr %6, align 4, !dbg !2946, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %7, metadata !2939, metadata !DIExpression()), !dbg !2943
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2947
  %9 = load i32, ptr %8, align 4, !dbg !2947, !tbaa !2292
  %10 = or i32 %9, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %10, metadata !2940, metadata !DIExpression()), !dbg !2943
  %11 = load i32, ptr %5, align 8, !dbg !2949, !tbaa !2242
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2950
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2951
  %14 = load ptr, ptr %13, align 8, !dbg !2951, !tbaa !2313
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2952
  %16 = load ptr, ptr %15, align 8, !dbg !2952, !tbaa !2316
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2953
  %18 = add i64 %17, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %18, metadata !2941, metadata !DIExpression()), !dbg !2943
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %19, metadata !2942, metadata !DIExpression()), !dbg !2943
  %20 = load i32, ptr %5, align 8, !dbg !2956, !tbaa !2242
  %21 = load ptr, ptr %13, align 8, !dbg !2957, !tbaa !2313
  %22 = load ptr, ptr %15, align 8, !dbg !2958, !tbaa !2316
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2959
  store i32 %7, ptr %6, align 4, !dbg !2960, !tbaa !1065
  ret ptr %19, !dbg !2961
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2931 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()), !dbg !2962
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2936, metadata !DIExpression()), !dbg !2962
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !2962
  %5 = icmp eq ptr %3, null, !dbg !2963
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2963
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2938, metadata !DIExpression()), !dbg !2962
  %7 = tail call ptr @__errno_location() #43, !dbg !2964
  %8 = load i32, ptr %7, align 4, !dbg !2964, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2939, metadata !DIExpression()), !dbg !2962
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2965
  %10 = load i32, ptr %9, align 4, !dbg !2965, !tbaa !2292
  %11 = icmp eq ptr %2, null, !dbg !2966
  %12 = zext i1 %11 to i32, !dbg !2966
  %13 = or i32 %10, %12, !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2940, metadata !DIExpression()), !dbg !2962
  %14 = load i32, ptr %6, align 8, !dbg !2968, !tbaa !2242
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2969
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2970
  %17 = load ptr, ptr %16, align 8, !dbg !2970, !tbaa !2313
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2971
  %19 = load ptr, ptr %18, align 8, !dbg !2971, !tbaa !2316
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2972
  %21 = add i64 %20, 1, !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2941, metadata !DIExpression()), !dbg !2962
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !2974
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2942, metadata !DIExpression()), !dbg !2962
  %23 = load i32, ptr %6, align 8, !dbg !2975, !tbaa !2242
  %24 = load ptr, ptr %16, align 8, !dbg !2976, !tbaa !2313
  %25 = load ptr, ptr %18, align 8, !dbg !2977, !tbaa !2316
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2978
  store i32 %8, ptr %7, align 4, !dbg !2979, !tbaa !1065
  br i1 %11, label %28, label %27, !dbg !2980

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2981, !tbaa !2983
  br label %28, !dbg !2984

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2985
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2986 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2991, !tbaa !995
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2989, metadata !DIExpression()), !dbg !2993
  %2 = load i32, ptr @nslots, align 4, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2989, metadata !DIExpression()), !dbg !2993
  %3 = icmp sgt i32 %2, 1, !dbg !2994
  br i1 %3, label %4, label %6, !dbg !2996

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2994
  br label %10, !dbg !2996

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2997
  %8 = load ptr, ptr %7, align 8, !dbg !2997, !tbaa !2999
  %9 = icmp eq ptr %8, @slot0, !dbg !3001
  br i1 %9, label %17, label %16, !dbg !3002

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2989, metadata !DIExpression()), !dbg !2993
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3003
  %13 = load ptr, ptr %12, align 8, !dbg !3003, !tbaa !2999
  tail call void @free(ptr noundef %13) #40, !dbg !3004
  %14 = add nuw nsw i64 %11, 1, !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2989, metadata !DIExpression()), !dbg !2993
  %15 = icmp eq i64 %14, %5, !dbg !2994
  br i1 %15, label %6, label %10, !dbg !2996, !llvm.loop !3006

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3008
  store i64 256, ptr @slotvec0, align 8, !dbg !3010, !tbaa !3011
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3012, !tbaa !2999
  br label %17, !dbg !3013

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3014
  br i1 %18, label %20, label %19, !dbg !3016

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3017
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3019, !tbaa !995
  br label %20, !dbg !3020

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3021, !tbaa !1065
  ret void, !dbg !3022
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3023 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3025, metadata !DIExpression()), !dbg !3027
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3026, metadata !DIExpression()), !dbg !3027
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3028
  ret ptr %3, !dbg !3029
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3030 {
  %5 = alloca i64, align 8, !DIAssignID !3050
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3044, metadata !DIExpression(), metadata !3050, metadata ptr %5, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3034, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3035, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3036, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3037, metadata !DIExpression()), !dbg !3052
  %6 = tail call ptr @__errno_location() #43, !dbg !3053
  %7 = load i32, ptr %6, align 4, !dbg !3053, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3038, metadata !DIExpression()), !dbg !3052
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3054, !tbaa !995
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3039, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3040, metadata !DIExpression()), !dbg !3052
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3055
  br i1 %9, label %10, label %11, !dbg !3055

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3057
  unreachable, !dbg !3057

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3058, !tbaa !1065
  %13 = icmp sgt i32 %12, %0, !dbg !3059
  br i1 %13, label %32, label %14, !dbg !3060

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3061
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3051
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3062
  %16 = sext i32 %12 to i64, !dbg !3063
  store i64 %16, ptr %5, align 8, !dbg !3064, !tbaa !2983, !DIAssignID !3065
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3044, metadata !DIExpression(), metadata !3065, metadata ptr %5, metadata !DIExpression()), !dbg !3051
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3066
  %18 = add nuw nsw i32 %0, 1, !dbg !3067
  %19 = sub i32 %18, %12, !dbg !3068
  %20 = sext i32 %19 to i64, !dbg !3069
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3070
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3039, metadata !DIExpression()), !dbg !3052
  store ptr %21, ptr @slotvec, align 8, !dbg !3071, !tbaa !995
  br i1 %15, label %22, label %23, !dbg !3072

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3073, !tbaa.struct !3075
  br label %23, !dbg !3076

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3077, !tbaa !1065
  %25 = sext i32 %24 to i64, !dbg !3078
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3078
  %27 = load i64, ptr %5, align 8, !dbg !3079, !tbaa !2983
  %28 = sub nsw i64 %27, %25, !dbg !3080
  %29 = shl i64 %28, 4, !dbg !3081
  call void @llvm.dbg.value(metadata ptr %26, metadata !2456, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %29, metadata !2460, metadata !DIExpression()), !dbg !3082
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3084
  %30 = load i64, ptr %5, align 8, !dbg !3085, !tbaa !2983
  %31 = trunc i64 %30 to i32, !dbg !3085
  store i32 %31, ptr @nslots, align 4, !dbg !3086, !tbaa !1065
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3087
  br label %32, !dbg !3088

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3039, metadata !DIExpression()), !dbg !3052
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3089
  %36 = load i64, ptr %35, align 8, !dbg !3090, !tbaa !3011
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3045, metadata !DIExpression()), !dbg !3091
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3092
  %38 = load ptr, ptr %37, align 8, !dbg !3092, !tbaa !2999
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3047, metadata !DIExpression()), !dbg !3091
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3093
  %40 = load i32, ptr %39, align 4, !dbg !3093, !tbaa !2292
  %41 = or i32 %40, 1, !dbg !3094
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3048, metadata !DIExpression()), !dbg !3091
  %42 = load i32, ptr %3, align 8, !dbg !3095, !tbaa !2242
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3096
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3097
  %45 = load ptr, ptr %44, align 8, !dbg !3097, !tbaa !2313
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3098
  %47 = load ptr, ptr %46, align 8, !dbg !3098, !tbaa !2316
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3049, metadata !DIExpression()), !dbg !3091
  %49 = icmp ugt i64 %36, %48, !dbg !3100
  br i1 %49, label %60, label %50, !dbg !3102

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3045, metadata !DIExpression()), !dbg !3091
  store i64 %51, ptr %35, align 8, !dbg !3105, !tbaa !3011
  %52 = icmp eq ptr %38, @slot0, !dbg !3106
  br i1 %52, label %54, label %53, !dbg !3108

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3109
  br label %54, !dbg !3109

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3110
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3047, metadata !DIExpression()), !dbg !3091
  store ptr %55, ptr %37, align 8, !dbg !3111, !tbaa !2999
  %56 = load i32, ptr %3, align 8, !dbg !3112, !tbaa !2242
  %57 = load ptr, ptr %44, align 8, !dbg !3113, !tbaa !2313
  %58 = load ptr, ptr %46, align 8, !dbg !3114, !tbaa !2316
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3115
  br label %60, !dbg !3116

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3091
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3047, metadata !DIExpression()), !dbg !3091
  store i32 %7, ptr %6, align 4, !dbg !3117, !tbaa !1065
  ret ptr %61, !dbg !3118
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3119 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3124, metadata !DIExpression()), !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3125, metadata !DIExpression()), !dbg !3126
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3127
  ret ptr %4, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3129 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3131, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32 0, metadata !3025, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !3026, metadata !DIExpression()), !dbg !3133
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3135
  ret ptr %2, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3141, metadata !DIExpression()), !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !3123, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %0, metadata !3124, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %1, metadata !3125, metadata !DIExpression()), !dbg !3144
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3146
  ret ptr %3, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3148 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3156
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3155, metadata !DIExpression(), metadata !3156, metadata ptr %4, metadata !DIExpression()), !dbg !3157
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()), !dbg !3157
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3153, metadata !DIExpression()), !dbg !3157
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3159), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %1, metadata !3163, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3171, !alias.scope !3159, !DIAssignID !3172
  call void @llvm.dbg.assign(metadata i8 0, metadata !3155, metadata !DIExpression(), metadata !3172, metadata ptr %4, metadata !DIExpression()), !dbg !3157
  %5 = icmp eq i32 %1, 10, !dbg !3173
  br i1 %5, label %6, label %7, !dbg !3175

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3176, !noalias !3159
  unreachable, !dbg !3176

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3177, !tbaa !2242, !alias.scope !3159, !DIAssignID !3178
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3178, metadata ptr %4, metadata !DIExpression()), !dbg !3157
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3179
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3180
  ret ptr %8, !dbg !3181
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3182 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3191
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3190, metadata !DIExpression(), metadata !3191, metadata ptr %5, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3186, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3187, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3188, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3189, metadata !DIExpression()), !dbg !3192
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194), !dbg !3197
  call void @llvm.dbg.value(metadata i32 %1, metadata !3163, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3168, metadata !DIExpression()), !dbg !3200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3200, !alias.scope !3194, !DIAssignID !3201
  call void @llvm.dbg.assign(metadata i8 0, metadata !3190, metadata !DIExpression(), metadata !3201, metadata ptr %5, metadata !DIExpression()), !dbg !3192
  %6 = icmp eq i32 %1, 10, !dbg !3202
  br i1 %6, label %7, label %8, !dbg !3203

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3204, !noalias !3194
  unreachable, !dbg !3204

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3205, !tbaa !2242, !alias.scope !3194, !DIAssignID !3206
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3190, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3206, metadata ptr %5, metadata !DIExpression()), !dbg !3192
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3207
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3208
  ret ptr %9, !dbg !3209
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3210 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3216
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3214, metadata !DIExpression()), !dbg !3217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3155, metadata !DIExpression(), metadata !3216, metadata ptr %3, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %0, metadata !3153, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %1, metadata !3154, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3168, metadata !DIExpression()), !dbg !3227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3227, !alias.scope !3221, !DIAssignID !3228
  call void @llvm.dbg.assign(metadata i8 0, metadata !3155, metadata !DIExpression(), metadata !3228, metadata ptr %3, metadata !DIExpression()), !dbg !3218
  %4 = icmp eq i32 %0, 10, !dbg !3229
  br i1 %4, label %5, label %6, !dbg !3230

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3231, !noalias !3221
  unreachable, !dbg !3231

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3232, !tbaa !2242, !alias.scope !3221, !DIAssignID !3233
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3155, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3233, metadata ptr %3, metadata !DIExpression()), !dbg !3218
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3234
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3235
  ret ptr %7, !dbg !3236
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3237 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3244
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3241, metadata !DIExpression()), !dbg !3245
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3242, metadata !DIExpression()), !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3190, metadata !DIExpression(), metadata !3244, metadata ptr %4, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 0, metadata !3186, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 %0, metadata !3187, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %1, metadata !3188, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %2, metadata !3189, metadata !DIExpression()), !dbg !3246
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3249), !dbg !3252
  call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3168, metadata !DIExpression()), !dbg !3255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3255, !alias.scope !3249, !DIAssignID !3256
  call void @llvm.dbg.assign(metadata i8 0, metadata !3190, metadata !DIExpression(), metadata !3256, metadata ptr %4, metadata !DIExpression()), !dbg !3246
  %5 = icmp eq i32 %0, 10, !dbg !3257
  br i1 %5, label %6, label %7, !dbg !3258

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3259, !noalias !3249
  unreachable, !dbg !3259

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3260, !tbaa !2242, !alias.scope !3249, !DIAssignID !3261
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3190, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3261, metadata ptr %4, metadata !DIExpression()), !dbg !3246
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3262
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3263
  ret ptr %8, !dbg !3264
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3265 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3273
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3273, metadata ptr %4, metadata !DIExpression()), !dbg !3274
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3274
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3276, !tbaa.struct !3277, !DIAssignID !3278
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3278, metadata ptr %4, metadata !DIExpression()), !dbg !3274
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2259, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2260, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2262, metadata !DIExpression()), !dbg !3279
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3281
  %6 = lshr i8 %2, 5, !dbg !3282
  %7 = zext nneg i8 %6 to i64, !dbg !3282
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3283
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2263, metadata !DIExpression()), !dbg !3279
  %9 = and i8 %2, 31, !dbg !3284
  %10 = zext nneg i8 %9 to i32, !dbg !3284
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2265, metadata !DIExpression()), !dbg !3279
  %11 = load i32, ptr %8, align 4, !dbg !3285, !tbaa !1065
  %12 = lshr i32 %11, %10, !dbg !3286
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2266, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3279
  %13 = and i32 %12, 1, !dbg !3287
  %14 = xor i32 %13, 1, !dbg !3287
  %15 = shl nuw i32 %14, %10, !dbg !3288
  %16 = xor i32 %15, %11, !dbg !3289
  store i32 %16, ptr %8, align 4, !dbg !3289, !tbaa !1065
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3290
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3291
  ret ptr %17, !dbg !3292
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3293 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3299
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3300
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3299, metadata ptr %3, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 -1, metadata !3270, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 %1, metadata !3271, metadata !DIExpression()), !dbg !3301
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3304, !tbaa.struct !3277, !DIAssignID !3305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3305, metadata ptr %3, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %3, metadata !2259, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i8 %1, metadata !2260, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i8 %1, metadata !2262, metadata !DIExpression()), !dbg !3306
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3308
  %5 = lshr i8 %1, 5, !dbg !3309
  %6 = zext nneg i8 %5 to i64, !dbg !3309
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3310
  call void @llvm.dbg.value(metadata ptr %7, metadata !2263, metadata !DIExpression()), !dbg !3306
  %8 = and i8 %1, 31, !dbg !3311
  %9 = zext nneg i8 %8 to i32, !dbg !3311
  call void @llvm.dbg.value(metadata i32 %9, metadata !2265, metadata !DIExpression()), !dbg !3306
  %10 = load i32, ptr %7, align 4, !dbg !3312, !tbaa !1065
  %11 = lshr i32 %10, %9, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %11, metadata !2266, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3306
  %12 = and i32 %11, 1, !dbg !3314
  %13 = xor i32 %12, 1, !dbg !3314
  %14 = shl nuw i32 %13, %9, !dbg !3315
  %15 = xor i32 %14, %10, !dbg !3316
  store i32 %15, ptr %7, align 4, !dbg !3316, !tbaa !1065
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3317
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3318
  ret ptr %16, !dbg !3319
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3320 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3323
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8 58, metadata !3298, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3323, metadata ptr %2, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 -1, metadata !3270, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8 58, metadata !3271, metadata !DIExpression()), !dbg !3327
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3330, !tbaa.struct !3277, !DIAssignID !3331
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3331, metadata ptr %2, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata ptr %2, metadata !2259, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8 58, metadata !2260, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8 58, metadata !2262, metadata !DIExpression()), !dbg !3332
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %3, metadata !2263, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 26, metadata !2265, metadata !DIExpression()), !dbg !3332
  %4 = load i32, ptr %3, align 4, !dbg !3335, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %4, metadata !2266, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3332
  %5 = or i32 %4, 67108864, !dbg !3336
  store i32 %5, ptr %3, align 4, !dbg !3336, !tbaa !1065
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3337
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3338
  ret ptr %6, !dbg !3339
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3340 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3344
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3344, metadata ptr %3, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8 58, metadata !3271, metadata !DIExpression()), !dbg !3346
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3349, !tbaa.struct !3277, !DIAssignID !3350
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3272, metadata !DIExpression(), metadata !3350, metadata ptr %3, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata ptr %3, metadata !2259, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i8 58, metadata !2260, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i8 58, metadata !2262, metadata !DIExpression()), !dbg !3351
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3353
  call void @llvm.dbg.value(metadata ptr %4, metadata !2263, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 26, metadata !2265, metadata !DIExpression()), !dbg !3351
  %5 = load i32, ptr %4, align 4, !dbg !3354, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %5, metadata !2266, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3351
  %6 = or i32 %5, 67108864, !dbg !3355
  store i32 %6, ptr %4, align 4, !dbg !3355, !tbaa !1065
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3356
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3357
  ret ptr %7, !dbg !3358
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3359 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3365
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3364, metadata !DIExpression(), metadata !3365, metadata ptr %4, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3168, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3367
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3361, metadata !DIExpression()), !dbg !3366
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3366
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3369
  call void @llvm.dbg.value(metadata i32 %1, metadata !3163, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3370
  %5 = icmp eq i32 %1, 10, !dbg !3371
  br i1 %5, label %6, label %7, !dbg !3372

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3373, !noalias !3374
  unreachable, !dbg !3373

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3168, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3370
  store i32 %1, ptr %4, align 8, !dbg !3377, !tbaa.struct !3277, !DIAssignID !3378
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3377
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3377
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3378, metadata ptr %4, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3364, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3379, metadata ptr %8, metadata !DIExpression()), !dbg !3366
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2259, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2260, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2261, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2262, metadata !DIExpression()), !dbg !3380
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3382
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2263, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2265, metadata !DIExpression()), !dbg !3380
  %10 = load i32, ptr %9, align 4, !dbg !3383, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2266, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3380
  %11 = or i32 %10, 67108864, !dbg !3384
  store i32 %11, ptr %9, align 4, !dbg !3384, !tbaa !1065, !DIAssignID !3385
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3364, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3385, metadata ptr %9, metadata !DIExpression()), !dbg !3366
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3386
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3387
  ret ptr %12, !dbg !3388
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3389 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3397
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()), !dbg !3398
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3394, metadata !DIExpression()), !dbg !3398
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3398
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3397, metadata ptr %5, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %0, metadata !3404, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %1, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %2, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %3, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 -1, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3412, !tbaa.struct !3277, !DIAssignID !3413
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3413, metadata ptr %5, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3414, metadata ptr undef, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %5, metadata !2299, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %1, metadata !2300, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %2, metadata !2301, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %5, metadata !2299, metadata !DIExpression()), !dbg !3415
  store i32 10, ptr %5, align 8, !dbg !3417, !tbaa !2242, !DIAssignID !3418
  call void @llvm.dbg.assign(metadata i32 10, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3418, metadata ptr %5, metadata !DIExpression()), !dbg !3409
  %6 = icmp ne ptr %1, null, !dbg !3419
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3420
  br i1 %8, label %10, label %9, !dbg !3420

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3421
  unreachable, !dbg !3421

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3422
  store ptr %1, ptr %11, align 8, !dbg !3423, !tbaa !2313, !DIAssignID !3424
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3424, metadata ptr %11, metadata !DIExpression()), !dbg !3409
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3425
  store ptr %2, ptr %12, align 8, !dbg !3426, !tbaa !2316, !DIAssignID !3427
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3427, metadata ptr %12, metadata !DIExpression()), !dbg !3409
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3428
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3429
  ret ptr %13, !dbg !3430
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3400 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3431
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3431, metadata ptr %6, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3404, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3405, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3406, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3407, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3408, metadata !DIExpression()), !dbg !3432
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3434, !tbaa.struct !3277, !DIAssignID !3435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3435, metadata ptr %6, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3436, metadata ptr undef, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata ptr %6, metadata !2299, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %1, metadata !2300, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %2, metadata !2301, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %6, metadata !2299, metadata !DIExpression()), !dbg !3437
  store i32 10, ptr %6, align 8, !dbg !3439, !tbaa !2242, !DIAssignID !3440
  call void @llvm.dbg.assign(metadata i32 10, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3440, metadata ptr %6, metadata !DIExpression()), !dbg !3432
  %7 = icmp ne ptr %1, null, !dbg !3441
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3442
  br i1 %9, label %11, label %10, !dbg !3442

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3443
  unreachable, !dbg !3443

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3444
  store ptr %1, ptr %12, align 8, !dbg !3445, !tbaa !2313, !DIAssignID !3446
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3446, metadata ptr %12, metadata !DIExpression()), !dbg !3432
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3447
  store ptr %2, ptr %13, align 8, !dbg !3448, !tbaa !2316, !DIAssignID !3449
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3449, metadata ptr %13, metadata !DIExpression()), !dbg !3432
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3450
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3451
  ret ptr %14, !dbg !3452
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3453 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3460
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3457, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3458, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3459, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %1, metadata !3395, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %2, metadata !3396, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3460, metadata ptr %4, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 0, metadata !3404, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr %1, metadata !3406, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr %2, metadata !3407, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 -1, metadata !3408, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3467, !tbaa.struct !3277, !DIAssignID !3468
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3468, metadata ptr %4, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3469, metadata ptr undef, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr %4, metadata !2299, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %0, metadata !2300, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %1, metadata !2301, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %4, metadata !2299, metadata !DIExpression()), !dbg !3470
  store i32 10, ptr %4, align 8, !dbg !3472, !tbaa !2242, !DIAssignID !3473
  call void @llvm.dbg.assign(metadata i32 10, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3473, metadata ptr %4, metadata !DIExpression()), !dbg !3464
  %5 = icmp ne ptr %0, null, !dbg !3474
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3475
  br i1 %7, label %9, label %8, !dbg !3475

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3476
  unreachable, !dbg !3476

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3477
  store ptr %0, ptr %10, align 8, !dbg !3478, !tbaa !2313, !DIAssignID !3479
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3479, metadata ptr %10, metadata !DIExpression()), !dbg !3464
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3480
  store ptr %1, ptr %11, align 8, !dbg !3481, !tbaa !2316, !DIAssignID !3482
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3482, metadata ptr %11, metadata !DIExpression()), !dbg !3464
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3483
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3484
  ret ptr %12, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3486 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3494
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3490, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3491, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3492, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3493, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3494, metadata ptr %5, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 0, metadata !3404, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %1, metadata !3406, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %2, metadata !3407, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %3, metadata !3408, metadata !DIExpression()), !dbg !3496
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3499, !tbaa.struct !3277, !DIAssignID !3500
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3500, metadata ptr %5, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3501, metadata ptr undef, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %5, metadata !2299, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %0, metadata !2300, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %1, metadata !2301, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %5, metadata !2299, metadata !DIExpression()), !dbg !3502
  store i32 10, ptr %5, align 8, !dbg !3504, !tbaa !2242, !DIAssignID !3505
  call void @llvm.dbg.assign(metadata i32 10, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3505, metadata ptr %5, metadata !DIExpression()), !dbg !3496
  %6 = icmp ne ptr %0, null, !dbg !3506
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3507
  br i1 %8, label %10, label %9, !dbg !3507

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3508
  unreachable, !dbg !3508

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3509
  store ptr %0, ptr %11, align 8, !dbg !3510, !tbaa !2313, !DIAssignID !3511
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3511, metadata ptr %11, metadata !DIExpression()), !dbg !3496
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3512
  store ptr %1, ptr %12, align 8, !dbg !3513, !tbaa !2316, !DIAssignID !3514
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3399, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3514, metadata ptr %12, metadata !DIExpression()), !dbg !3496
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3516
  ret ptr %13, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3518 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3522, metadata !DIExpression()), !dbg !3525
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3523, metadata !DIExpression()), !dbg !3525
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3524, metadata !DIExpression()), !dbg !3525
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3526
  ret ptr %4, !dbg !3527
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3535
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3537
  ret ptr %3, !dbg !3538
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3539 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3543, metadata !DIExpression()), !dbg !3545
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3544, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %0, metadata !3522, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata ptr %1, metadata !3523, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 -1, metadata !3524, metadata !DIExpression()), !dbg !3546
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3548
  ret ptr %3, !dbg !3549
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3550 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3554, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr %0, metadata !3544, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 -1, metadata !3524, metadata !DIExpression()), !dbg !3558
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3560
  ret ptr %2, !dbg !3561
}

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec_warn(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #10 !dbg !3562 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3569, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3570, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3571, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3572, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3573, metadata !DIExpression()), !dbg !3580
  %7 = icmp eq ptr %2, null, !dbg !3581
  br i1 %7, label %10, label %8, !dbg !3581

8:                                                ; preds = %6
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #41, !dbg !3582
  br label %10, !dbg !3581

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %9, %8 ], [ null, %6 ], !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3574, metadata !DIExpression()), !dbg !3580
  %12 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3583
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !3575, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3576, metadata !DIExpression()), !dbg !3580
  %13 = icmp ne ptr %2, null, !dbg !3584
  %14 = icmp eq ptr %11, null
  %15 = and i1 %13, %14, !dbg !3585
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false, !dbg !3585
  br i1 %17, label %18, label %27, !dbg !3585

18:                                               ; preds = %10
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #41, !dbg !3586
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !3577, metadata !DIExpression()), !dbg !3587
  %20 = icmp eq ptr %19, null, !dbg !3588
  br i1 %20, label %27, label %21, !dbg !3590

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3591
  %23 = icmp eq ptr %22, null, !dbg !3591
  br i1 %23, label %24, label %27, !dbg !3592

24:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3576, metadata !DIExpression()), !dbg !3580
  %25 = icmp eq ptr %5, null, !dbg !3593
  %26 = select i1 %25, ptr null, ptr @.str.112, !dbg !3593
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !3575, metadata !DIExpression()), !dbg !3580
  br label %27, !dbg !3595

27:                                               ; preds = %18, %21, %24, %10
  %28 = phi i8 [ 0, %10 ], [ 0, %21 ], [ 1, %24 ], [ 0, %18 ], !dbg !3596
  %29 = phi ptr [ %12, %10 ], [ %12, %21 ], [ %26, %24 ], [ %12, %18 ], !dbg !3597
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3575, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3576, metadata !DIExpression()), !dbg !3580
  %30 = icmp eq ptr %5, null, !dbg !3598
  br i1 %30, label %32, label %31, !dbg !3600

31:                                               ; preds = %27
  store i8 %28, ptr %5, align 1, !dbg !3601, !tbaa !1306
  br label %32, !dbg !3602

32:                                               ; preds = %31, %27
  ret ptr %29, !dbg !3603
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #10 !dbg !3604 {
  %7 = alloca i64, align 8, !DIAssignID !3660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3660, metadata ptr %7, metadata !DIExpression()), !dbg !3661
  %8 = alloca [21 x i8], align 16, !DIAssignID !3662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3642, metadata !DIExpression(), metadata !3662, metadata ptr %8, metadata !DIExpression()), !dbg !3663
  %9 = alloca i64, align 8, !DIAssignID !3664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3657, metadata !DIExpression(), metadata !3664, metadata ptr %9, metadata !DIExpression()), !dbg !3665
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3608, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3609, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3610, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3611, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3612, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3613, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3614, metadata !DIExpression()), !dbg !3666
  %10 = icmp eq ptr %4, null, !dbg !3667
  br i1 %10, label %12, label %11, !dbg !3669

11:                                               ; preds = %6
  store ptr null, ptr %4, align 8, !dbg !3670, !tbaa !995
  br label %12, !dbg !3671

12:                                               ; preds = %11, %6
  %13 = icmp eq ptr %5, null, !dbg !3672
  br i1 %13, label %15, label %14, !dbg !3674

14:                                               ; preds = %12
  store ptr null, ptr %5, align 8, !dbg !3675, !tbaa !995
  br label %15, !dbg !3676

15:                                               ; preds = %14, %12
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3615, metadata !DIExpression()), !dbg !3666
  %16 = icmp eq ptr %1, null, !dbg !3677
  br i1 %16, label %17, label %22, !dbg !3678

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !dbg !3679, !tbaa !1074
  %19 = icmp eq i8 %18, 0, !dbg !3679
  br i1 %19, label %37, label %20, !dbg !3682

20:                                               ; preds = %17
  %21 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !3683
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3615, metadata !DIExpression()), !dbg !3666
  br label %37, !dbg !3684

22:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !3616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3685
  %23 = icmp eq ptr %1, %0, !dbg !3686
  br i1 %23, label %31, label %24, !dbg !3688

24:                                               ; preds = %22
  %25 = ptrtoint ptr %0 to i64, !dbg !3689
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %25), metadata !3616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3685
  %26 = ptrtoint ptr %1 to i64, !dbg !3689
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %26, i64 %25), metadata !3616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3685
  %27 = sub i64 %26, %25, !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3616, metadata !DIExpression()), !dbg !3685
  %28 = add nsw i64 %27, 1, !dbg !3690
  %29 = tail call noalias nonnull ptr @ximemdup(ptr noundef %0, i64 noundef %28) #46, !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3615, metadata !DIExpression()), !dbg !3666
  %30 = getelementptr inbounds i8, ptr %29, i64 %27, !dbg !3693
  store i8 0, ptr %30, align 1, !dbg !3694, !tbaa !1074
  br label %31, !dbg !3695

31:                                               ; preds = %24, %22
  %32 = phi ptr [ %29, %24 ], [ null, %22 ], !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !3615, metadata !DIExpression()), !dbg !3666
  %33 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !3696
  %34 = load i8, ptr %33, align 1, !dbg !3697, !tbaa !1074
  %35 = icmp eq i8 %34, 0, !dbg !3698
  %36 = select i1 %35, ptr null, ptr %33, !dbg !3699
  br label %37, !dbg !3699

37:                                               ; preds = %20, %17, %31
  %38 = phi ptr [ %32, %31 ], [ null, %17 ], [ %21, %20 ]
  %39 = phi ptr [ %36, %31 ], [ null, %17 ], [ null, %20 ], !dbg !3699
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !3619, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3620, metadata !DIExpression()), !dbg !3666
  %40 = load i32, ptr %2, align 4, !dbg !3700, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !3621, metadata !DIExpression()), !dbg !3666
  %41 = icmp eq ptr %3, null, !dbg !3701
  br i1 %41, label %44, label %42, !dbg !3701

42:                                               ; preds = %37
  %43 = load i32, ptr %3, align 4, !dbg !3702, !tbaa !1065
  br label %44, !dbg !3701

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %37 ], !dbg !3701
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !3622, metadata !DIExpression()), !dbg !3666
  %46 = icmp eq ptr %38, null, !dbg !3703
  br i1 %46, label %93, label %47, !dbg !3704

47:                                               ; preds = %44
  %48 = load i8, ptr %38, align 1, !dbg !3705, !tbaa !1074
  %49 = icmp eq i8 %48, 43, !dbg !3706
  br i1 %49, label %53, label %50, !dbg !3705

50:                                               ; preds = %47
  %51 = tail call ptr @getpwnam(ptr noundef nonnull %38), !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !3623, metadata !DIExpression()), !dbg !3708
  %52 = icmp eq ptr %51, null, !dbg !3709
  br i1 %52, label %53, label %68, !dbg !3710

53:                                               ; preds = %47, %50
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3612, metadata !DIExpression()), !dbg !3666
  %54 = icmp ne ptr %1, null, !dbg !3711
  %55 = icmp eq ptr %39, null, !dbg !3712
  %56 = and i1 %54, %55, !dbg !3712
  tail call void @llvm.dbg.value(metadata i1 %56, metadata !3636, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3713
  br i1 %56, label %87, label %57, !dbg !3714

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !3715
  %58 = call i32 @xstrtoul(ptr noundef nonnull %38, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef nonnull @.str.2.113) #40, !dbg !3716
  %59 = icmp eq i32 %58, 0, !dbg !3718
  %60 = load i64, ptr %7, align 8
  %61 = icmp ult i64 %60, 4294967296
  %62 = select i1 %59, i1 %61, i1 false, !dbg !3719
  %63 = trunc i64 %60 to i32
  %64 = icmp ne i32 %63, -1
  %65 = select i1 %62, i1 %64, i1 false, !dbg !3719
  %66 = select i1 %65, i32 %63, i32 %40
  %67 = select i1 %65, ptr null, ptr @.str.3.114
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !3614, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !3621, metadata !DIExpression()), !dbg !3666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !3720
  br label %87

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 2, !dbg !3721
  %70 = load i32, ptr %69, align 8, !dbg !3721, !tbaa !1347
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !3621, metadata !DIExpression()), !dbg !3666
  %71 = icmp eq ptr %39, null, !dbg !3722
  %72 = icmp ne ptr %1, null
  %73 = and i1 %72, %71, !dbg !3723
  br i1 %73, label %74, label %87, !dbg !3723

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #40, !dbg !3724
  %75 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 3, !dbg !3725
  %76 = load i32, ptr %75, align 4, !dbg !3725, !tbaa !1351
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !3622, metadata !DIExpression()), !dbg !3666
  %77 = tail call ptr @getgrgid(i32 noundef %76) #40, !dbg !3726
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !3646, metadata !DIExpression()), !dbg !3663
  %78 = icmp eq ptr %77, null, !dbg !3727
  br i1 %78, label %81, label %79, !dbg !3727

79:                                               ; preds = %74
  %80 = load ptr, ptr %77, align 8, !dbg !3728, !tbaa !1560
  br label %84, !dbg !3727

81:                                               ; preds = %74
  %82 = zext i32 %76 to i64, !dbg !3729
  %83 = call ptr @umaxtostr(i64 noundef %82, ptr noundef nonnull %8) #40, !dbg !3730
  br label %84, !dbg !3727

84:                                               ; preds = %81, %79
  %85 = phi ptr [ %80, %79 ], [ %83, %81 ], !dbg !3727
  %86 = call noalias nonnull ptr @xstrdup(ptr noundef %85) #40, !dbg !3731
  tail call void @llvm.dbg.value(metadata ptr %86, metadata !3620, metadata !DIExpression()), !dbg !3666
  call void @endgrent() #40, !dbg !3732
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #40, !dbg !3733
  br label %87, !dbg !3734

87:                                               ; preds = %57, %53, %68, %84
  %88 = phi ptr [ %86, %84 ], [ null, %68 ], [ null, %53 ], [ null, %57 ], !dbg !3666
  %89 = phi i32 [ %70, %84 ], [ %70, %68 ], [ %40, %53 ], [ %66, %57 ], !dbg !3666
  %90 = phi i32 [ %76, %84 ], [ %45, %68 ], [ %45, %53 ], [ %45, %57 ], !dbg !3666
  %91 = phi ptr [ null, %84 ], [ null, %68 ], [ @.str.1.115, %53 ], [ %67, %57 ], !dbg !3666
  %92 = phi ptr [ %4, %84 ], [ %4, %68 ], [ null, %53 ], [ null, %57 ]
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !3612, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !3614, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !3622, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !3621, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %88, metadata !3620, metadata !DIExpression()), !dbg !3666
  call void @endpwent() #40, !dbg !3735
  br label %93, !dbg !3736

93:                                               ; preds = %87, %44
  %94 = phi ptr [ %88, %87 ], [ null, %44 ], !dbg !3737
  %95 = phi i32 [ %89, %87 ], [ %40, %44 ], !dbg !3738
  %96 = phi i32 [ %90, %87 ], [ %45, %44 ], !dbg !3739
  %97 = phi ptr [ %91, %87 ], [ null, %44 ], !dbg !3666
  %98 = phi ptr [ %92, %87 ], [ %4, %44 ]
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !3612, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !3614, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !3622, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !3621, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %94, metadata !3620, metadata !DIExpression()), !dbg !3666
  %99 = icmp ne ptr %39, null, !dbg !3740
  %100 = icmp eq ptr %97, null
  %101 = and i1 %99, %100, !dbg !3741
  br i1 %101, label %102, label %127, !dbg !3741

102:                                              ; preds = %93
  %103 = load i8, ptr %39, align 1, !dbg !3742, !tbaa !1074
  %104 = icmp eq i8 %103, 43, !dbg !3743
  br i1 %104, label %108, label %105, !dbg !3742

105:                                              ; preds = %102
  %106 = call ptr @getgrnam(ptr noundef nonnull %39) #40, !dbg !3744
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !3654, metadata !DIExpression()), !dbg !3745
  %107 = icmp eq ptr %106, null, !dbg !3746
  br i1 %107, label %108, label %119, !dbg !3747

108:                                              ; preds = %102, %105
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3613, metadata !DIExpression()), !dbg !3666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !3748
  %109 = call i32 @xstrtoul(ptr noundef nonnull %39, ptr noundef null, i32 noundef 10, ptr noundef nonnull %9, ptr noundef nonnull @.str.2.113) #40, !dbg !3749
  %110 = icmp eq i32 %109, 0, !dbg !3751
  %111 = load i64, ptr %9, align 8
  %112 = icmp ult i64 %111, 4294967296
  %113 = select i1 %110, i1 %112, i1 false, !dbg !3752
  %114 = trunc i64 %111 to i32
  %115 = icmp ne i32 %114, -1
  %116 = select i1 %113, i1 %115, i1 false, !dbg !3752
  %117 = select i1 %116, i32 %114, i32 %96
  %118 = select i1 %116, ptr null, ptr @.str.4.116
  tail call void @llvm.dbg.value(metadata ptr %118, metadata !3614, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !3622, metadata !DIExpression()), !dbg !3666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !3753
  br label %122, !dbg !3754

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.group, ptr %106, i64 0, i32 2, !dbg !3755
  %121 = load i32, ptr %120, align 8, !dbg !3755, !tbaa !3756
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !3622, metadata !DIExpression()), !dbg !3666
  br label %122

122:                                              ; preds = %119, %108
  %123 = phi i32 [ %117, %108 ], [ %121, %119 ], !dbg !3757
  %124 = phi ptr [ %118, %108 ], [ null, %119 ], !dbg !3758
  %125 = phi ptr [ null, %108 ], [ %5, %119 ]
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !3613, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !3614, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !3622, metadata !DIExpression()), !dbg !3666
  call void @endgrent() #40, !dbg !3760
  %126 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %39) #40, !dbg !3761
  tail call void @llvm.dbg.value(metadata ptr %126, metadata !3620, metadata !DIExpression()), !dbg !3666
  br label %127, !dbg !3762

127:                                              ; preds = %122, %93
  %128 = phi ptr [ %126, %122 ], [ %94, %93 ], !dbg !3666
  %129 = phi i32 [ %123, %122 ], [ %96, %93 ], !dbg !3666
  %130 = phi ptr [ %124, %122 ], [ %97, %93 ], !dbg !3758
  %131 = phi ptr [ %125, %122 ], [ %5, %93 ]
  tail call void @llvm.dbg.value(metadata ptr %131, metadata !3613, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %130, metadata !3614, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !3622, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %128, metadata !3620, metadata !DIExpression()), !dbg !3666
  %132 = icmp eq ptr %130, null, !dbg !3763
  br i1 %132, label %133, label %144, !dbg !3765

133:                                              ; preds = %127
  store i32 %95, ptr %2, align 4, !dbg !3766, !tbaa !1065
  br i1 %41, label %135, label %134, !dbg !3768

134:                                              ; preds = %133
  store i32 %129, ptr %3, align 4, !dbg !3769, !tbaa !1065
  br label %135, !dbg !3771

135:                                              ; preds = %134, %133
  %136 = icmp eq ptr %98, null, !dbg !3772
  br i1 %136, label %138, label %137, !dbg !3774

137:                                              ; preds = %135
  store ptr %38, ptr %98, align 8, !dbg !3775, !tbaa !995
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3615, metadata !DIExpression()), !dbg !3666
  br label %138, !dbg !3777

138:                                              ; preds = %137, %135
  %139 = phi ptr [ null, %137 ], [ %38, %135 ], !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %139, metadata !3615, metadata !DIExpression()), !dbg !3666
  %140 = icmp eq ptr %131, null, !dbg !3778
  br i1 %140, label %142, label %141, !dbg !3780

141:                                              ; preds = %138
  store ptr %128, ptr %131, align 8, !dbg !3781, !tbaa !995
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3620, metadata !DIExpression()), !dbg !3666
  br label %142, !dbg !3783

142:                                              ; preds = %138, %141
  %143 = phi ptr [ null, %141 ], [ %128, %138 ], !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %139, metadata !3615, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !3620, metadata !DIExpression()), !dbg !3666
  call void @free(ptr noundef %139) #40, !dbg !3784
  call void @free(ptr noundef %143) #40, !dbg !3785
  br label %146, !dbg !3786

144:                                              ; preds = %127
  tail call void @llvm.dbg.value(metadata ptr %139, metadata !3615, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !3620, metadata !DIExpression()), !dbg !3666
  call void @free(ptr noundef %38) #40, !dbg !3784
  call void @free(ptr noundef %128) #40, !dbg !3785
  %145 = call ptr @dcgettext(ptr noundef nonnull @.str.5.117, ptr noundef nonnull %130, i32 noundef 5) #40, !dbg !3787
  br label %146, !dbg !3786

146:                                              ; preds = %142, %144
  %147 = phi ptr [ %145, %144 ], [ null, %142 ], !dbg !3786
  ret ptr %147, !dbg !3788
}

declare !dbg !3789 void @endgrent() local_unnamed_addr #3

declare !dbg !3790 void @endpwent() local_unnamed_addr #3

declare !dbg !3791 ptr @getgrnam(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3798, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3799, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3800, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3801, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %1, metadata !3569, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %2, metadata !3570, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %3, metadata !3571, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %4, metadata !3572, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr null, metadata !3573, metadata !DIExpression()), !dbg !3804
  %6 = icmp eq ptr %2, null, !dbg !3806
  br i1 %6, label %9, label %7, !dbg !3806

7:                                                ; preds = %5
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #41, !dbg !3807
  br label %9, !dbg !3806

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ null, %5 ], !dbg !3806
  call void @llvm.dbg.value(metadata ptr %10, metadata !3574, metadata !DIExpression()), !dbg !3804
  %11 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %11, metadata !3575, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8 0, metadata !3576, metadata !DIExpression()), !dbg !3804
  %12 = icmp ne ptr %2, null, !dbg !3809
  %13 = icmp eq ptr %10, null
  %14 = and i1 %12, %13, !dbg !3810
  %15 = icmp ne ptr %11, null
  %16 = select i1 %14, i1 %15, i1 false, !dbg !3810
  br i1 %16, label %17, label %24, !dbg !3810

17:                                               ; preds = %9
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #41, !dbg !3811
  call void @llvm.dbg.value(metadata ptr %18, metadata !3577, metadata !DIExpression()), !dbg !3812
  %19 = icmp eq ptr %18, null, !dbg !3813
  br i1 %19, label %24, label %20, !dbg !3814

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3815
  %22 = icmp eq ptr %21, null, !dbg !3815
  %23 = select i1 %22, ptr null, ptr %11, !dbg !3816
  br label %24, !dbg !3816

24:                                               ; preds = %20, %9, %17
  %25 = phi ptr [ %11, %9 ], [ %11, %17 ], [ %23, %20 ], !dbg !3817
  call void @llvm.dbg.value(metadata ptr %25, metadata !3575, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8 poison, metadata !3576, metadata !DIExpression()), !dbg !3804
  ret ptr %25, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3819 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3858, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3859, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3860, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3861, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3862, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3863, metadata !DIExpression()), !dbg !3864
  %7 = icmp eq ptr %1, null, !dbg !3865
  br i1 %7, label %10, label %8, !dbg !3867

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3868
  br label %12, !dbg !3868

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.121, ptr noundef %2, ptr noundef %3) #40, !dbg !3869
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.3.123, i32 noundef 5) #40, !dbg !3870
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3870
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3871
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.5.125, i32 noundef 5) #40, !dbg !3872
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.126) #40, !dbg !3872
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3873
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
  ], !dbg !3874

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.7.127, i32 noundef 5) #40, !dbg !3875
  %21 = load ptr, ptr %4, align 8, !dbg !3875, !tbaa !995
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3875
  br label %147, !dbg !3877

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.8.128, i32 noundef 5) #40, !dbg !3878
  %25 = load ptr, ptr %4, align 8, !dbg !3878, !tbaa !995
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3878
  %27 = load ptr, ptr %26, align 8, !dbg !3878, !tbaa !995
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3878
  br label %147, !dbg !3879

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.9.129, i32 noundef 5) #40, !dbg !3880
  %31 = load ptr, ptr %4, align 8, !dbg !3880, !tbaa !995
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3880
  %33 = load ptr, ptr %32, align 8, !dbg !3880, !tbaa !995
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3880
  %35 = load ptr, ptr %34, align 8, !dbg !3880, !tbaa !995
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3880
  br label %147, !dbg !3881

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.10.130, i32 noundef 5) #40, !dbg !3882
  %39 = load ptr, ptr %4, align 8, !dbg !3882, !tbaa !995
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3882
  %41 = load ptr, ptr %40, align 8, !dbg !3882, !tbaa !995
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3882
  %43 = load ptr, ptr %42, align 8, !dbg !3882, !tbaa !995
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3882
  %45 = load ptr, ptr %44, align 8, !dbg !3882, !tbaa !995
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3882
  br label %147, !dbg !3883

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.11.131, i32 noundef 5) #40, !dbg !3884
  %49 = load ptr, ptr %4, align 8, !dbg !3884, !tbaa !995
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3884
  %51 = load ptr, ptr %50, align 8, !dbg !3884, !tbaa !995
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3884
  %53 = load ptr, ptr %52, align 8, !dbg !3884, !tbaa !995
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3884
  %55 = load ptr, ptr %54, align 8, !dbg !3884, !tbaa !995
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3884
  %57 = load ptr, ptr %56, align 8, !dbg !3884, !tbaa !995
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3884
  br label %147, !dbg !3885

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.12.132, i32 noundef 5) #40, !dbg !3886
  %61 = load ptr, ptr %4, align 8, !dbg !3886, !tbaa !995
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3886
  %63 = load ptr, ptr %62, align 8, !dbg !3886, !tbaa !995
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3886
  %65 = load ptr, ptr %64, align 8, !dbg !3886, !tbaa !995
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3886
  %67 = load ptr, ptr %66, align 8, !dbg !3886, !tbaa !995
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3886
  %69 = load ptr, ptr %68, align 8, !dbg !3886, !tbaa !995
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3886
  %71 = load ptr, ptr %70, align 8, !dbg !3886, !tbaa !995
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3886
  br label %147, !dbg !3887

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.13.133, i32 noundef 5) #40, !dbg !3888
  %75 = load ptr, ptr %4, align 8, !dbg !3888, !tbaa !995
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3888
  %77 = load ptr, ptr %76, align 8, !dbg !3888, !tbaa !995
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3888
  %79 = load ptr, ptr %78, align 8, !dbg !3888, !tbaa !995
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3888
  %81 = load ptr, ptr %80, align 8, !dbg !3888, !tbaa !995
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3888
  %83 = load ptr, ptr %82, align 8, !dbg !3888, !tbaa !995
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3888
  %85 = load ptr, ptr %84, align 8, !dbg !3888, !tbaa !995
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3888
  %87 = load ptr, ptr %86, align 8, !dbg !3888, !tbaa !995
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3888
  br label %147, !dbg !3889

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.14.134, i32 noundef 5) #40, !dbg !3890
  %91 = load ptr, ptr %4, align 8, !dbg !3890, !tbaa !995
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3890
  %93 = load ptr, ptr %92, align 8, !dbg !3890, !tbaa !995
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3890
  %95 = load ptr, ptr %94, align 8, !dbg !3890, !tbaa !995
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3890
  %97 = load ptr, ptr %96, align 8, !dbg !3890, !tbaa !995
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3890
  %99 = load ptr, ptr %98, align 8, !dbg !3890, !tbaa !995
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3890
  %101 = load ptr, ptr %100, align 8, !dbg !3890, !tbaa !995
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3890
  %103 = load ptr, ptr %102, align 8, !dbg !3890, !tbaa !995
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3890
  %105 = load ptr, ptr %104, align 8, !dbg !3890, !tbaa !995
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3890
  br label %147, !dbg !3891

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.15.135, i32 noundef 5) #40, !dbg !3892
  %109 = load ptr, ptr %4, align 8, !dbg !3892, !tbaa !995
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3892
  %111 = load ptr, ptr %110, align 8, !dbg !3892, !tbaa !995
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3892
  %113 = load ptr, ptr %112, align 8, !dbg !3892, !tbaa !995
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3892
  %115 = load ptr, ptr %114, align 8, !dbg !3892, !tbaa !995
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3892
  %117 = load ptr, ptr %116, align 8, !dbg !3892, !tbaa !995
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3892
  %119 = load ptr, ptr %118, align 8, !dbg !3892, !tbaa !995
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3892
  %121 = load ptr, ptr %120, align 8, !dbg !3892, !tbaa !995
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3892
  %123 = load ptr, ptr %122, align 8, !dbg !3892, !tbaa !995
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3892
  %125 = load ptr, ptr %124, align 8, !dbg !3892, !tbaa !995
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3892
  br label %147, !dbg !3893

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.16.136, i32 noundef 5) #40, !dbg !3894
  %129 = load ptr, ptr %4, align 8, !dbg !3894, !tbaa !995
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3894
  %131 = load ptr, ptr %130, align 8, !dbg !3894, !tbaa !995
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3894
  %133 = load ptr, ptr %132, align 8, !dbg !3894, !tbaa !995
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3894
  %135 = load ptr, ptr %134, align 8, !dbg !3894, !tbaa !995
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3894
  %137 = load ptr, ptr %136, align 8, !dbg !3894, !tbaa !995
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3894
  %139 = load ptr, ptr %138, align 8, !dbg !3894, !tbaa !995
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3894
  %141 = load ptr, ptr %140, align 8, !dbg !3894, !tbaa !995
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3894
  %143 = load ptr, ptr %142, align 8, !dbg !3894, !tbaa !995
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3894
  %145 = load ptr, ptr %144, align 8, !dbg !3894, !tbaa !995
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3894
  br label %147, !dbg !3895

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3896
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3897 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3901, metadata !DIExpression()), !dbg !3907
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3902, metadata !DIExpression()), !dbg !3907
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3903, metadata !DIExpression()), !dbg !3907
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3904, metadata !DIExpression()), !dbg !3907
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3905, metadata !DIExpression()), !dbg !3907
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3906, metadata !DIExpression()), !dbg !3907
  br label %6, !dbg !3908

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3910
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3906, metadata !DIExpression()), !dbg !3907
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3911
  %9 = load ptr, ptr %8, align 8, !dbg !3911, !tbaa !995
  %10 = icmp eq ptr %9, null, !dbg !3913
  %11 = add i64 %7, 1, !dbg !3914
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3906, metadata !DIExpression()), !dbg !3907
  br i1 %10, label %12, label %6, !dbg !3913, !llvm.loop !3915

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3917
  ret void, !dbg !3918
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3919 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3938
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3936, metadata !DIExpression(), metadata !3938, metadata ptr %6, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3930, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3931, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3932, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3933, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3934, metadata !DIExpression()), !dbg !3939
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3935, metadata !DIExpression()), !dbg !3939
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3935, metadata !DIExpression()), !dbg !3939
  %10 = icmp ult i32 %9, 41, !dbg !3941
  br i1 %10, label %11, label %16, !dbg !3941

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3941
  %13 = zext nneg i32 %9 to i64, !dbg !3941
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3941
  %15 = add nuw nsw i32 %9, 8, !dbg !3941
  store i32 %15, ptr %4, align 8, !dbg !3941
  br label %19, !dbg !3941

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3941
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3941
  store ptr %18, ptr %7, align 8, !dbg !3941
  br label %19, !dbg !3941

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3941
  %22 = load ptr, ptr %21, align 8, !dbg !3941
  store ptr %22, ptr %6, align 16, !dbg !3944, !tbaa !995
  %23 = icmp eq ptr %22, null, !dbg !3945
  br i1 %23, label %128, label %24, !dbg !3946

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3935, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3935, metadata !DIExpression()), !dbg !3939
  %25 = icmp ult i32 %20, 41, !dbg !3941
  br i1 %25, label %29, label %26, !dbg !3941

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3941
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3941
  store ptr %28, ptr %7, align 8, !dbg !3941
  br label %34, !dbg !3941

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3941
  %31 = zext nneg i32 %20 to i64, !dbg !3941
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3941
  %33 = add nuw nsw i32 %20, 8, !dbg !3941
  store i32 %33, ptr %4, align 8, !dbg !3941
  br label %34, !dbg !3941

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3941
  %37 = load ptr, ptr %36, align 8, !dbg !3941
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3947
  store ptr %37, ptr %38, align 8, !dbg !3944, !tbaa !995
  %39 = icmp eq ptr %37, null, !dbg !3945
  br i1 %39, label %128, label %40, !dbg !3946

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3935, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3935, metadata !DIExpression()), !dbg !3939
  %41 = icmp ult i32 %35, 41, !dbg !3941
  br i1 %41, label %45, label %42, !dbg !3941

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3941
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3941
  store ptr %44, ptr %7, align 8, !dbg !3941
  br label %50, !dbg !3941

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3941
  %47 = zext nneg i32 %35 to i64, !dbg !3941
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3941
  %49 = add nuw nsw i32 %35, 8, !dbg !3941
  store i32 %49, ptr %4, align 8, !dbg !3941
  br label %50, !dbg !3941

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3941
  %53 = load ptr, ptr %52, align 8, !dbg !3941
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3947
  store ptr %53, ptr %54, align 16, !dbg !3944, !tbaa !995
  %55 = icmp eq ptr %53, null, !dbg !3945
  br i1 %55, label %128, label %56, !dbg !3946

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3935, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3935, metadata !DIExpression()), !dbg !3939
  %57 = icmp ult i32 %51, 41, !dbg !3941
  br i1 %57, label %61, label %58, !dbg !3941

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3941
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3941
  store ptr %60, ptr %7, align 8, !dbg !3941
  br label %66, !dbg !3941

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3941
  %63 = zext nneg i32 %51 to i64, !dbg !3941
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3941
  %65 = add nuw nsw i32 %51, 8, !dbg !3941
  store i32 %65, ptr %4, align 8, !dbg !3941
  br label %66, !dbg !3941

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3941
  %69 = load ptr, ptr %68, align 8, !dbg !3941
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3947
  store ptr %69, ptr %70, align 8, !dbg !3944, !tbaa !995
  %71 = icmp eq ptr %69, null, !dbg !3945
  br i1 %71, label %128, label %72, !dbg !3946

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3935, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3935, metadata !DIExpression()), !dbg !3939
  %73 = icmp ult i32 %67, 41, !dbg !3941
  br i1 %73, label %77, label %74, !dbg !3941

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3941
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3941
  store ptr %76, ptr %7, align 8, !dbg !3941
  br label %82, !dbg !3941

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3941
  %79 = zext nneg i32 %67 to i64, !dbg !3941
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3941
  %81 = add nuw nsw i32 %67, 8, !dbg !3941
  store i32 %81, ptr %4, align 8, !dbg !3941
  br label %82, !dbg !3941

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3941
  %85 = load ptr, ptr %84, align 8, !dbg !3941
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3947
  store ptr %85, ptr %86, align 16, !dbg !3944, !tbaa !995
  %87 = icmp eq ptr %85, null, !dbg !3945
  br i1 %87, label %128, label %88, !dbg !3946

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3935, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3935, metadata !DIExpression()), !dbg !3939
  %89 = icmp ult i32 %83, 41, !dbg !3941
  br i1 %89, label %93, label %90, !dbg !3941

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3941
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3941
  store ptr %92, ptr %7, align 8, !dbg !3941
  br label %98, !dbg !3941

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3941
  %95 = zext nneg i32 %83 to i64, !dbg !3941
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3941
  %97 = add nuw nsw i32 %83, 8, !dbg !3941
  store i32 %97, ptr %4, align 8, !dbg !3941
  br label %98, !dbg !3941

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3941
  %100 = load ptr, ptr %99, align 8, !dbg !3941
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3947
  store ptr %100, ptr %101, align 8, !dbg !3944, !tbaa !995
  %102 = icmp eq ptr %100, null, !dbg !3945
  br i1 %102, label %128, label %103, !dbg !3946

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3935, metadata !DIExpression()), !dbg !3939
  %104 = load ptr, ptr %7, align 8, !dbg !3941
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3941
  store ptr %105, ptr %7, align 8, !dbg !3941
  %106 = load ptr, ptr %104, align 8, !dbg !3941
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3947
  store ptr %106, ptr %107, align 16, !dbg !3944, !tbaa !995
  %108 = icmp eq ptr %106, null, !dbg !3945
  br i1 %108, label %128, label %109, !dbg !3946

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3935, metadata !DIExpression()), !dbg !3939
  %110 = load ptr, ptr %7, align 8, !dbg !3941
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3941
  store ptr %111, ptr %7, align 8, !dbg !3941
  %112 = load ptr, ptr %110, align 8, !dbg !3941
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3947
  store ptr %112, ptr %113, align 8, !dbg !3944, !tbaa !995
  %114 = icmp eq ptr %112, null, !dbg !3945
  br i1 %114, label %128, label %115, !dbg !3946

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3935, metadata !DIExpression()), !dbg !3939
  %116 = load ptr, ptr %7, align 8, !dbg !3941
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3941
  store ptr %117, ptr %7, align 8, !dbg !3941
  %118 = load ptr, ptr %116, align 8, !dbg !3941
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3947
  store ptr %118, ptr %119, align 16, !dbg !3944, !tbaa !995
  %120 = icmp eq ptr %118, null, !dbg !3945
  br i1 %120, label %128, label %121, !dbg !3946

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3935, metadata !DIExpression()), !dbg !3939
  %122 = load ptr, ptr %7, align 8, !dbg !3941
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3941
  store ptr %123, ptr %7, align 8, !dbg !3941
  %124 = load ptr, ptr %122, align 8, !dbg !3941
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3947
  store ptr %124, ptr %125, align 8, !dbg !3944, !tbaa !995
  %126 = icmp eq ptr %124, null, !dbg !3945
  %127 = select i1 %126, i64 9, i64 10, !dbg !3946
  br label %128, !dbg !3946

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3948
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3949
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3950
  ret void, !dbg !3950
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3951 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3964
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3959, metadata !DIExpression(), metadata !3964, metadata ptr %5, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3956, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3957, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3958, metadata !DIExpression()), !dbg !3965
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !3966
  call void @llvm.va_start(ptr nonnull %5), !dbg !3967
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3968
  call void @llvm.va_end(ptr nonnull %5), !dbg !3969
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !3970
  ret void, !dbg !3970
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3971 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3972, !tbaa !995
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %1), !dbg !3972
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.17.141, i32 noundef 5) #40, !dbg !3973
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.142) #40, !dbg !3973
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.19.143, i32 noundef 5) #40, !dbg !3974
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.144, ptr noundef nonnull @.str.21.145) #40, !dbg !3974
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.22.146, i32 noundef 5) #40, !dbg !3975
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.147) #40, !dbg !3975
  ret void, !dbg !3976
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3977 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3982, metadata !DIExpression()), !dbg !3985
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()), !dbg !3985
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3984, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %2, metadata !3990, metadata !DIExpression()), !dbg !3991
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3993
  call void @llvm.dbg.value(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !3999
  %5 = icmp eq ptr %4, null, !dbg !4001
  br i1 %5, label %6, label %7, !dbg !4003

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4004
  unreachable, !dbg !4004

7:                                                ; preds = %3
  ret ptr %4, !dbg !4005
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3987 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3990, metadata !DIExpression()), !dbg !4006
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4007
  call void @llvm.dbg.value(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !4008
  %5 = icmp eq ptr %4, null, !dbg !4010
  br i1 %5, label %6, label %7, !dbg !4011

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4012
  unreachable, !dbg !4012

7:                                                ; preds = %3
  ret ptr %4, !dbg !4013
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4014 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4018, metadata !DIExpression()), !dbg !4019
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4020
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4021
  %3 = icmp eq ptr %2, null, !dbg !4023
  br i1 %3, label %4, label %5, !dbg !4024

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4025
  unreachable, !dbg !4025

5:                                                ; preds = %1
  ret ptr %2, !dbg !4026
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4027 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4028 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4032, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i64 %0, metadata !4034, metadata !DIExpression()), !dbg !4038
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4040
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4041
  %3 = icmp eq ptr %2, null, !dbg !4043
  br i1 %3, label %4, label %5, !dbg !4044

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4045
  unreachable, !dbg !4045

5:                                                ; preds = %1
  ret ptr %2, !dbg !4046
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4047 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4051, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %0, metadata !4018, metadata !DIExpression()), !dbg !4053
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4055
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4056
  %3 = icmp eq ptr %2, null, !dbg !4058
  br i1 %3, label %4, label %5, !dbg !4059

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4060
  unreachable, !dbg !4060

5:                                                ; preds = %1
  ret ptr %2, !dbg !4061
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4062 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %1, metadata !4073, metadata !DIExpression()), !dbg !4074
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4076
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4077
  call void @llvm.dbg.value(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !4078
  %5 = icmp eq ptr %4, null, !dbg !4080
  br i1 %5, label %6, label %7, !dbg !4081

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4082
  unreachable, !dbg !4082

7:                                                ; preds = %2
  ret ptr %4, !dbg !4083
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4084 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4085 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4089, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata ptr %0, metadata !4092, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %1, metadata !4095, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %1, metadata !4073, metadata !DIExpression()), !dbg !4098
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4100
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4101
  call void @llvm.dbg.value(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !4102
  %5 = icmp eq ptr %4, null, !dbg !4104
  br i1 %5, label %6, label %7, !dbg !4105

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4106
  unreachable, !dbg !4106

7:                                                ; preds = %2
  ret ptr %4, !dbg !4107
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4108 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4112, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4113, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr %0, metadata !4116, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %1, metadata !4119, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %2, metadata !4120, metadata !DIExpression()), !dbg !4121
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4123
  call void @llvm.dbg.value(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !4124
  %5 = icmp eq ptr %4, null, !dbg !4126
  br i1 %5, label %6, label %7, !dbg !4127

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4128
  unreachable, !dbg !4128

7:                                                ; preds = %3
  ret ptr %4, !dbg !4129
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4130 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4134, metadata !DIExpression()), !dbg !4136
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4135, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata ptr null, metadata !3986, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %0, metadata !3989, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3990, metadata !DIExpression()), !dbg !4137
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4139
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4140
  %4 = icmp eq ptr %3, null, !dbg !4142
  br i1 %4, label %5, label %6, !dbg !4143

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4144
  unreachable, !dbg !4144

6:                                                ; preds = %2
  ret ptr %3, !dbg !4145
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4146 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4150, metadata !DIExpression()), !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4151, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr null, metadata !4112, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i64 %0, metadata !4113, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata ptr null, metadata !4116, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %0, metadata !4119, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %1, metadata !4120, metadata !DIExpression()), !dbg !4155
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4157
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4158
  %4 = icmp eq ptr %3, null, !dbg !4160
  br i1 %4, label %5, label %6, !dbg !4161

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4162
  unreachable, !dbg !4162

6:                                                ; preds = %2
  ret ptr %3, !dbg !4163
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4164 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4169, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %0, metadata !883, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata ptr %1, metadata !884, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i64 1, metadata !885, metadata !DIExpression()), !dbg !4171
  %3 = load i64, ptr %1, align 8, !dbg !4173, !tbaa !2983
  call void @llvm.dbg.value(metadata i64 %3, metadata !886, metadata !DIExpression()), !dbg !4171
  %4 = icmp eq ptr %0, null, !dbg !4174
  br i1 %4, label %5, label %8, !dbg !4176

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4177
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4180
  br label %15, !dbg !4180

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4181
  %10 = add nuw i64 %9, 1, !dbg !4181
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4181
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4181
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4181
  call void @llvm.dbg.value(metadata i64 %13, metadata !886, metadata !DIExpression()), !dbg !4171
  br i1 %12, label %14, label %15, !dbg !4184

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4185
  unreachable, !dbg !4185

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4171
  call void @llvm.dbg.value(metadata i64 %16, metadata !886, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %16, metadata !3989, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 1, metadata !3990, metadata !DIExpression()), !dbg !4186
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4188
  call void @llvm.dbg.value(metadata ptr %17, metadata !3994, metadata !DIExpression()), !dbg !4189
  %18 = icmp eq ptr %17, null, !dbg !4191
  br i1 %18, label %19, label %20, !dbg !4192

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4193
  unreachable, !dbg !4193

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !883, metadata !DIExpression()), !dbg !4171
  store i64 %16, ptr %1, align 8, !dbg !4194, !tbaa !2983
  ret ptr %17, !dbg !4195
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !878 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !883, metadata !DIExpression()), !dbg !4196
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !884, metadata !DIExpression()), !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !885, metadata !DIExpression()), !dbg !4196
  %4 = load i64, ptr %1, align 8, !dbg !4197, !tbaa !2983
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !886, metadata !DIExpression()), !dbg !4196
  %5 = icmp eq ptr %0, null, !dbg !4198
  br i1 %5, label %6, label %13, !dbg !4199

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4200
  br i1 %7, label %8, label %20, !dbg !4201

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4202
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !886, metadata !DIExpression()), !dbg !4196
  %10 = icmp ugt i64 %2, 128, !dbg !4204
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4205
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !886, metadata !DIExpression()), !dbg !4196
  br label %20, !dbg !4206

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4207
  %15 = add nuw i64 %14, 1, !dbg !4207
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4207
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4207
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !886, metadata !DIExpression()), !dbg !4196
  br i1 %17, label %19, label %20, !dbg !4208

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4209
  unreachable, !dbg !4209

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !886, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %21, metadata !3989, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %2, metadata !3990, metadata !DIExpression()), !dbg !4210
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4212
  call void @llvm.dbg.value(metadata ptr %22, metadata !3994, metadata !DIExpression()), !dbg !4213
  %23 = icmp eq ptr %22, null, !dbg !4215
  br i1 %23, label %24, label %25, !dbg !4216

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4217
  unreachable, !dbg !4217

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !883, metadata !DIExpression()), !dbg !4196
  store i64 %21, ptr %1, align 8, !dbg !4218, !tbaa !2983
  ret ptr %22, !dbg !4219
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !890 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !899, metadata !DIExpression()), !dbg !4220
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !900, metadata !DIExpression()), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !901, metadata !DIExpression()), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !902, metadata !DIExpression()), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !903, metadata !DIExpression()), !dbg !4220
  %6 = load i64, ptr %1, align 8, !dbg !4221, !tbaa !2983
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !904, metadata !DIExpression()), !dbg !4220
  %7 = ashr i64 %6, 1, !dbg !4222
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4222
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4222
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !905, metadata !DIExpression()), !dbg !4220
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4224
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !905, metadata !DIExpression()), !dbg !4220
  %12 = icmp sgt i64 %3, -1, !dbg !4225
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4227
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !905, metadata !DIExpression()), !dbg !4220
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4228
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4228
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4228
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !906, metadata !DIExpression()), !dbg !4220
  %18 = icmp slt i64 %17, 128, !dbg !4228
  %19 = select i1 %18, i64 128, i64 0, !dbg !4228
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4228
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !907, metadata !DIExpression()), !dbg !4220
  %21 = icmp eq i64 %20, 0, !dbg !4229
  br i1 %21, label %26, label %22, !dbg !4231

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4232
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !905, metadata !DIExpression()), !dbg !4220
  %24 = srem i64 %20, %4, !dbg !4234
  %25 = sub nsw i64 %20, %24, !dbg !4235
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !906, metadata !DIExpression()), !dbg !4220
  br label %26, !dbg !4236

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4220
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !906, metadata !DIExpression()), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !905, metadata !DIExpression()), !dbg !4220
  %29 = icmp eq ptr %0, null, !dbg !4237
  br i1 %29, label %30, label %31, !dbg !4239

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4240, !tbaa !2983
  br label %31, !dbg !4241

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4242
  %33 = icmp slt i64 %32, %2, !dbg !4244
  br i1 %33, label %34, label %46, !dbg !4245

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4246
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4246
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !905, metadata !DIExpression()), !dbg !4220
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4247
  br i1 %40, label %45, label %41, !dbg !4247

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4248
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4248
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4248
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !906, metadata !DIExpression()), !dbg !4220
  br i1 %43, label %45, label %46, !dbg !4249

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !4250
  unreachable, !dbg !4250

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4220
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !906, metadata !DIExpression()), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !905, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %48, metadata !4067, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 %48, metadata !4073, metadata !DIExpression()), !dbg !4253
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4255
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #46, !dbg !4256
  call void @llvm.dbg.value(metadata ptr %50, metadata !3994, metadata !DIExpression()), !dbg !4257
  %51 = icmp eq ptr %50, null, !dbg !4259
  br i1 %51, label %52, label %53, !dbg !4260

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !4261
  unreachable, !dbg !4261

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !899, metadata !DIExpression()), !dbg !4220
  store i64 %47, ptr %1, align 8, !dbg !4262, !tbaa !2983
  ret ptr %50, !dbg !4263
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4264 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4266, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %0, metadata !4268, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 1, metadata !4271, metadata !DIExpression()), !dbg !4272
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4274
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4275
  %3 = icmp eq ptr %2, null, !dbg !4277
  br i1 %3, label %4, label %5, !dbg !4278

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4279
  unreachable, !dbg !4279

5:                                                ; preds = %1
  ret ptr %2, !dbg !4280
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4281 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4269 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4268, metadata !DIExpression()), !dbg !4282
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4271, metadata !DIExpression()), !dbg !4282
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4283
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4284
  %4 = icmp eq ptr %3, null, !dbg !4286
  br i1 %4, label %5, label %6, !dbg !4287

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4288
  unreachable, !dbg !4288

6:                                                ; preds = %2
  ret ptr %3, !dbg !4289
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4290 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4292, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %0, metadata !4294, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 1, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %0, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 1, metadata !4303, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %0, metadata !4300, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 1, metadata !4303, metadata !DIExpression()), !dbg !4304
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4306
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4307
  %3 = icmp eq ptr %2, null, !dbg !4309
  br i1 %3, label %4, label %5, !dbg !4310

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4311
  unreachable, !dbg !4311

5:                                                ; preds = %1
  ret ptr %2, !dbg !4312
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4295 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4294, metadata !DIExpression()), !dbg !4313
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4297, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %0, metadata !4300, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %1, metadata !4303, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %0, metadata !4300, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %1, metadata !4303, metadata !DIExpression()), !dbg !4314
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4316
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4317
  %4 = icmp eq ptr %3, null, !dbg !4319
  br i1 %4, label %5, label %6, !dbg !4320

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4321
  unreachable, !dbg !4321

6:                                                ; preds = %2
  ret ptr %3, !dbg !4322
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4323 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4327, metadata !DIExpression()), !dbg !4329
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4328, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 %1, metadata !4018, metadata !DIExpression()), !dbg !4330
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4332
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4333
  %4 = icmp eq ptr %3, null, !dbg !4335
  br i1 %4, label %5, label %6, !dbg !4336

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4337
  unreachable, !dbg !4337

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4338, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %1, metadata !4345, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4348
  ret ptr %3, !dbg !4349
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4350 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4354, metadata !DIExpression()), !dbg !4356
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4355, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %1, metadata !4032, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()), !dbg !4359
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4361
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4362
  %4 = icmp eq ptr %3, null, !dbg !4364
  br i1 %4, label %5, label %6, !dbg !4365

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4366
  unreachable, !dbg !4366

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4338, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %1, metadata !4345, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4369
  ret ptr %3, !dbg !4370
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4371 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4375, metadata !DIExpression()), !dbg !4378
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4376, metadata !DIExpression()), !dbg !4378
  %3 = add nsw i64 %1, 1, !dbg !4379
  call void @llvm.dbg.value(metadata i64 %3, metadata !4032, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %3, metadata !4034, metadata !DIExpression()), !dbg !4382
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4384
  call void @llvm.dbg.value(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !4385
  %5 = icmp eq ptr %4, null, !dbg !4387
  br i1 %5, label %6, label %7, !dbg !4388

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4389
  unreachable, !dbg !4389

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4377, metadata !DIExpression()), !dbg !4378
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4390
  store i8 0, ptr %8, align 1, !dbg !4391, !tbaa !1074
  call void @llvm.dbg.value(metadata ptr %4, metadata !4338, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %1, metadata !4345, metadata !DIExpression()), !dbg !4392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4394
  ret ptr %4, !dbg !4395
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4396 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4398, metadata !DIExpression()), !dbg !4399
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4400
  %3 = add i64 %2, 1, !dbg !4401
  call void @llvm.dbg.value(metadata ptr %0, metadata !4327, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %3, metadata !4328, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %3, metadata !4018, metadata !DIExpression()), !dbg !4404
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4406
  call void @llvm.dbg.value(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !4407
  %5 = icmp eq ptr %4, null, !dbg !4409
  br i1 %5, label %6, label %7, !dbg !4410

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4411
  unreachable, !dbg !4411

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4338, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %3, metadata !4345, metadata !DIExpression()), !dbg !4412
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4414
  ret ptr %4, !dbg !4415
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4416 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4421, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4418, metadata !DIExpression()), !dbg !4422
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #40, !dbg !4421
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #40, !dbg !4421
  %3 = icmp eq i32 %1, 0, !dbg !4421
  tail call void @llvm.assume(i1 %3), !dbg !4421
  tail call void @abort() #42, !dbg !4423
  unreachable, !dbg !4423
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4424 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4426, metadata !DIExpression()), !dbg !4430
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4427, metadata !DIExpression()), !dbg !4430
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4428, metadata !DIExpression()), !dbg !4430
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #40, !dbg !4431
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !4429, metadata !DIExpression()), !dbg !4430
  %5 = icmp eq i32 %4, -1, !dbg !4432
  br i1 %5, label %6, label %11, !dbg !4434

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4435
  %8 = load i32, ptr %7, align 4, !dbg !4435, !tbaa !1065
  %9 = icmp eq i32 %8, 12, !dbg !4436
  br i1 %9, label %10, label %11, !dbg !4437

10:                                               ; preds = %6
  tail call void @xalloc_die() #42, !dbg !4438
  unreachable, !dbg !4438

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !4439
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtoul(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #35 !dbg !4440 {
  %6 = alloca ptr, align 8, !DIAssignID !4465
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4452, metadata !DIExpression(), metadata !4465, metadata ptr %6, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4447, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4448, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4449, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4450, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4466
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !4467
  %7 = icmp eq ptr %1, null, !dbg !4468
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4453, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4454, metadata !DIExpression()), !dbg !4469
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4457, metadata !DIExpression()), !dbg !4469
  %8 = tail call ptr @__ctype_b_loc() #43, !dbg !4466
  %9 = load ptr, ptr %8, align 8, !tbaa !995
  br label %10, !dbg !4470

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4469
  %12 = load i8, ptr %11, align 1, !dbg !4469, !tbaa !1074
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !4457, metadata !DIExpression()), !dbg !4469
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !4454, metadata !DIExpression()), !dbg !4469
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4471
  %15 = load i16, ptr %14, align 2, !dbg !4471, !tbaa !1106
  %16 = and i16 %15, 8192, !dbg !4471
  %17 = icmp eq i16 %16, 0, !dbg !4470
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4472
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !4454, metadata !DIExpression()), !dbg !4469
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4457, metadata !DIExpression()), !dbg !4469
  br i1 %17, label %19, label %10, !dbg !4470, !llvm.loop !4473

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4468
  %21 = icmp eq i8 %12, 45, !dbg !4475
  br i1 %21, label %22, label %23, !dbg !4477

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4478, !tbaa !995
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #43, !dbg !4480
  store i32 0, ptr %24, align 4, !dbg !4481, !tbaa !1065
  %25 = call i64 @strtoul(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #40, !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4459, metadata !DIExpression()), !dbg !4466
  %26 = load ptr, ptr %20, align 8, !dbg !4483, !tbaa !995
  %27 = icmp eq ptr %26, %0, !dbg !4485
  br i1 %27, label %28, label %37, !dbg !4486

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4487
  br i1 %29, label %386, label %30, !dbg !4490

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4491, !tbaa !1074
  %32 = icmp eq i8 %31, 0, !dbg !4491
  br i1 %32, label %386, label %33, !dbg !4492

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !4491
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #41, !dbg !4493
  %36 = icmp eq ptr %35, null, !dbg !4493
  br i1 %36, label %386, label %44, !dbg !4494

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4495, !tbaa !1065
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4497

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4459, metadata !DIExpression()), !dbg !4466
  br label %40, !dbg !4498

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4466
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !4459, metadata !DIExpression()), !dbg !4466
  %42 = icmp eq ptr %4, null, !dbg !4500
  br i1 %42, label %43, label %44, !dbg !4502

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4503, !tbaa !2983
  br label %386, !dbg !4505

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4506, !tbaa !1074
  %48 = icmp eq i8 %47, 0, !dbg !4507
  br i1 %48, label %383, label %49, !dbg !4508

49:                                               ; preds = %44
  %50 = sext i8 %47 to i32, !dbg !4506
  %51 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #41, !dbg !4509
  %52 = icmp eq ptr %51, null, !dbg !4509
  br i1 %52, label %53, label %55, !dbg !4511

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4512, !tbaa !2983
  %54 = or disjoint i32 %45, 2, !dbg !4514
  br label %386, !dbg !4515

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4460, metadata !DIExpression()), !dbg !4516
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4463, metadata !DIExpression()), !dbg !4516
  switch i8 %47, label %68 [
    i8 69, label %56
    i8 71, label %56
    i8 103, label %56
    i8 107, label %56
    i8 75, label %56
    i8 77, label %56
    i8 109, label %56
    i8 80, label %56
    i8 81, label %56
    i8 82, label %56
    i8 84, label %56
    i8 116, label %56
    i8 89, label %56
    i8 90, label %56
  ], !dbg !4517

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #41, !dbg !4518
  %58 = icmp eq ptr %57, null, !dbg !4518
  br i1 %58, label %68, label %59, !dbg !4521

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4522
  %61 = load i8, ptr %60, align 1, !dbg !4522, !tbaa !1074
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4523

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4524
  %64 = load i8, ptr %63, align 1, !dbg !4524, !tbaa !1074
  %65 = icmp eq i8 %64, 66, !dbg !4527
  %66 = select i1 %65, i64 3, i64 1, !dbg !4528
  br label %68, !dbg !4528

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4460, metadata !DIExpression()), !dbg !4516
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4463, metadata !DIExpression()), !dbg !4516
  br label %68, !dbg !4529

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4516
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4516
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !4463, metadata !DIExpression()), !dbg !4516
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !4460, metadata !DIExpression()), !dbg !4516
  switch i8 %47, label %381 [
    i8 98, label %302
    i8 66, label %307
    i8 99, label %372
    i8 69, label %271
    i8 71, label %312
    i8 103, label %312
    i8 107, label %328
    i8 75, label %328
    i8 77, label %334
    i8 109, label %334
    i8 80, label %245
    i8 81, label %194
    i8 82, label %148
    i8 84, label %345
    i8 116, label %345
    i8 119, label %366
    i8 89, label %107
    i8 90, label %71
  ], !dbg !4530

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4549
  %72 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4551
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4549
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4553
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4553
  call void @llvm.dbg.value(metadata i1 %73, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i1 %73, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4549
  %76 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4551
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4549
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4553
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4553
  %80 = or i1 %73, %77, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %80, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i1 %80, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4549
  %81 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4551
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4549
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4553
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4553
  %85 = or i1 %80, %82, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %85, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i1 %85, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4549
  %86 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4551
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4549
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4553
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4553
  %90 = or i1 %85, %87, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %90, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i1 %90, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4549
  %91 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4551
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4549
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4553
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4553
  %95 = or i1 %90, %92, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %95, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i1 %95, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4549
  %96 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4551
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4549
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4553
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4553
  %100 = or i1 %95, %97, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %100, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i1 %100, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4549
  %101 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4551
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4549
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4553
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4553
  %105 = or i1 %100, %102, !dbg !4554
  %106 = zext i1 %105 to i32, !dbg !4554
  call void @llvm.dbg.value(metadata i32 %106, metadata !4531, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4539
  br label %372, !dbg !4555

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 8, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %108 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4560
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4561
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %109, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %109, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %112 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4560
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4561
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4561
  %116 = or i1 %109, %113, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %116, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %116, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %117 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4560
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4561
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4561
  %121 = or i1 %116, %118, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %121, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %121, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %122 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4560
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4561
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4561
  %126 = or i1 %121, %123, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %126, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %126, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %127 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4560
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4561
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4561
  %131 = or i1 %126, %128, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %131, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %131, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %132 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4560
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4561
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4561
  %136 = or i1 %131, %133, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %136, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %136, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %137 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4560
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4561
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4561
  %141 = or i1 %136, %138, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %141, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %141, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4558
  %142 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4560
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4558
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4561
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4561
  %146 = or i1 %141, %143, !dbg !4562
  %147 = zext i1 %146 to i32, !dbg !4562
  call void @llvm.dbg.value(metadata i32 %147, metadata !4531, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  br label %372, !dbg !4555

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 9, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 8, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %149 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4567
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4568
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %150, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 8, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %150, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 8, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %153 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4567
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4568
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4568
  %157 = or i1 %150, %154, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %157, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %157, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %158 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4567
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4568
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4568
  %162 = or i1 %157, %159, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %162, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %162, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %163 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4567
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4568
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4568
  %167 = or i1 %162, %164, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %167, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %167, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %168 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4567
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4568
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4568
  %172 = or i1 %167, %169, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %172, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %172, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %173 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4567
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4568
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4568
  %177 = or i1 %172, %174, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %177, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %177, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %178 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4567
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4568
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4568
  %182 = or i1 %177, %179, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %182, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %182, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %183 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4567
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4568
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4568
  %187 = or i1 %182, %184, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %187, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %187, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4565
  %188 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4567
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4565
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4568
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4568
  %192 = or i1 %187, %189, !dbg !4569
  %193 = zext i1 %192 to i32, !dbg !4569
  call void @llvm.dbg.value(metadata i32 %193, metadata !4531, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  br label %372, !dbg !4555

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 10, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 9, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %195 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4574
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4575
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4575
  call void @llvm.dbg.value(metadata i1 %196, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 9, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %196, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 9, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 8, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %199 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4574
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4575
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4575
  %203 = or i1 %196, %200, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %203, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 8, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %203, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 8, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %204 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4574
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4575
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4575
  %208 = or i1 %203, %205, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %208, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %208, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 7, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %209 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4574
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4575
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4575
  %213 = or i1 %208, %210, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %213, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %213, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %214 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4574
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4575
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4575
  %218 = or i1 %213, %215, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %218, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %218, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %219 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4574
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4575
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4575
  %223 = or i1 %218, %220, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %223, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %223, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %224 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4574
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4575
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4575
  %228 = or i1 %223, %225, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %228, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %228, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %229 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4574
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4575
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4575
  %233 = or i1 %228, %230, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %233, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %233, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %234 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4574
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4575
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4575
  %238 = or i1 %233, %235, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %238, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %238, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4572
  %239 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4574
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4572
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4575
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4575
  %243 = or i1 %238, %240, !dbg !4576
  %244 = zext i1 %243 to i32, !dbg !4576
  call void @llvm.dbg.value(metadata i32 %244, metadata !4531, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  br label %372, !dbg !4555

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4579
  %246 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4581
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4581
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4579
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4582
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4582
  call void @llvm.dbg.value(metadata i1 %247, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i1 %247, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4579
  %250 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4581
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4581
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4579
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4582
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4582
  %254 = or i1 %247, %251, !dbg !4583
  call void @llvm.dbg.value(metadata i1 %254, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i1 %254, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4579
  %255 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4581
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4581
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4579
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4582
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4582
  %259 = or i1 %254, %256, !dbg !4583
  call void @llvm.dbg.value(metadata i1 %259, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i1 %259, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4579
  %260 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4581
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4581
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4579
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4582
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4582
  %264 = or i1 %259, %261, !dbg !4583
  call void @llvm.dbg.value(metadata i1 %264, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i1 %264, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4577
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4579
  %265 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4581
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4581
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4579
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4582
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4582
  %269 = or i1 %264, %266, !dbg !4583
  %270 = zext i1 %269 to i32, !dbg !4583
  call void @llvm.dbg.value(metadata i32 %270, metadata !4531, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4577
  br label %372, !dbg !4555

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 6, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4586
  %272 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4588
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4586
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4589
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %273, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i1 %273, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 5, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4586
  %276 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4588
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4586
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4589
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4589
  %280 = or i1 %273, %277, !dbg !4590
  call void @llvm.dbg.value(metadata i1 %280, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i1 %280, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4586
  %281 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4588
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4586
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4589
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4589
  %285 = or i1 %280, %282, !dbg !4590
  call void @llvm.dbg.value(metadata i1 %285, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i1 %285, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4586
  %286 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4588
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4586
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4589
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4589
  %290 = or i1 %285, %287, !dbg !4590
  call void @llvm.dbg.value(metadata i1 %290, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i1 %290, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4586
  %291 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4588
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4586
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4589
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4589
  %295 = or i1 %290, %292, !dbg !4590
  call void @llvm.dbg.value(metadata i1 %295, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i1 %295, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4586
  %296 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4588
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4586
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4589
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4589
  %300 = or i1 %295, %297, !dbg !4590
  %301 = zext i1 %300 to i32, !dbg !4590
  call void @llvm.dbg.value(metadata i32 %301, metadata !4531, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4584
  br label %372, !dbg !4555

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i32 512, metadata !4547, metadata !DIExpression()), !dbg !4591
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4593
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4591
  %304 = shl i64 %46, 9, !dbg !4594
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4594
  %306 = zext i1 %303 to i32, !dbg !4594
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !4464, metadata !DIExpression()), !dbg !4516
  br label %372, !dbg !4595

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i32 1024, metadata !4547, metadata !DIExpression()), !dbg !4596
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4598
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4596
  %309 = shl i64 %46, 10, !dbg !4599
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4599
  %311 = zext i1 %308 to i32, !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !4464, metadata !DIExpression()), !dbg !4516
  br label %372, !dbg !4600

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4536, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %69, metadata !4537, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4601
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4603
  %313 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4605
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4605
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4603
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4606
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4606
  call void @llvm.dbg.value(metadata i1 %314, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4601
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4601
  call void @llvm.dbg.value(metadata i1 %314, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4601
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4603
  %317 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4605
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4605
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4603
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4606
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4606
  %321 = or i1 %314, %318, !dbg !4607
  call void @llvm.dbg.value(metadata i1 %321, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4601
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4601
  call void @llvm.dbg.value(metadata i1 %321, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4601
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4603
  %322 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4605
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4605
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4603
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4606
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4606
  %326 = or i1 %321, %323, !dbg !4607
  %327 = zext i1 %326 to i32, !dbg !4607
  call void @llvm.dbg.value(metadata i32 %327, metadata !4531, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4601
  br label %372, !dbg !4555

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4536, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %69, metadata !4537, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4608
  %329 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4610
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4610
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4612
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4612
  %333 = zext i1 %330 to i32, !dbg !4612
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4613
  br label %372, !dbg !4555

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4536, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %69, metadata !4537, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4614
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4616
  %335 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4618
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4618
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4616
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4619
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4619
  call void @llvm.dbg.value(metadata i1 %336, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4614
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4614
  call void @llvm.dbg.value(metadata i1 %336, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4614
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4616
  %339 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4618
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4618
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4616
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4619
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4619
  %343 = or i1 %336, %340, !dbg !4620
  %344 = zext i1 %343 to i32, !dbg !4620
  call void @llvm.dbg.value(metadata i32 %344, metadata !4531, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4614
  br label %372, !dbg !4555

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4536, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %69, metadata !4537, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4531, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 4, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4623
  %346 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4625
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4625
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4623
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4626
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4626
  call void @llvm.dbg.value(metadata i1 %347, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i1 %347, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i32 3, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4623
  %350 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4625
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4625
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4623
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4626
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4626
  %354 = or i1 %347, %351, !dbg !4627
  call void @llvm.dbg.value(metadata i1 %354, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i1 %354, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i32 2, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4623
  %355 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4625
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4625
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4623
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4626
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4626
  %359 = or i1 %354, %356, !dbg !4627
  call void @llvm.dbg.value(metadata i1 %359, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i1 %359, metadata !4531, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4621
  call void @llvm.dbg.value(metadata i32 1, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 %69, metadata !4547, metadata !DIExpression()), !dbg !4623
  %360 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4625
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4625
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4623
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4626
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4626
  %364 = or i1 %359, %361, !dbg !4627
  %365 = zext i1 %364 to i32, !dbg !4627
  call void @llvm.dbg.value(metadata i32 %365, metadata !4531, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4621
  br label %372, !dbg !4555

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4542, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i32 2, metadata !4547, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 poison, metadata !4548, metadata !DIExpression()), !dbg !4628
  %367 = shl i64 %46, 1, !dbg !4630
  %368 = icmp sgt i64 %46, -1, !dbg !4630
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4630
  %370 = lshr i64 %46, 63, !dbg !4630
  %371 = trunc i64 %370 to i32, !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !4464, metadata !DIExpression()), !dbg !4516
  br label %372, !dbg !4631

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4466
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4632
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !4464, metadata !DIExpression()), !dbg !4516
  %375 = or i32 %374, %45, !dbg !4555
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !4459, metadata !DIExpression()), !dbg !4466
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4633
  store ptr %376, ptr %20, align 8, !dbg !4633, !tbaa !995
  %377 = load i8, ptr %376, align 1, !dbg !4634, !tbaa !1074
  %378 = icmp eq i8 %377, 0, !dbg !4634
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4636
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !4459, metadata !DIExpression()), !dbg !4466
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4637, !tbaa !2983
  %382 = or disjoint i32 %45, 2, !dbg !4638
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !4459, metadata !DIExpression()), !dbg !4466
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4639
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4640
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !4458, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !4459, metadata !DIExpression()), !dbg !4466
  store i64 %384, ptr %3, align 8, !dbg !4641, !tbaa !2983
  br label %386, !dbg !4642

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4466
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !4643
  ret i32 %387, !dbg !4643
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4644 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4648 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4686, metadata !DIExpression()), !dbg !4691
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4692
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4687, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4691
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4693, metadata !DIExpression()), !dbg !4696
  %3 = load i32, ptr %0, align 8, !dbg !4698, !tbaa !1366
  %4 = and i32 %3, 32, !dbg !4699
  %5 = icmp eq i32 %4, 0, !dbg !4699
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4689, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4691
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4700
  %7 = icmp eq i32 %6, 0, !dbg !4701
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4690, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4691
  br i1 %5, label %8, label %18, !dbg !4702

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4704
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4691
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4705
  %11 = xor i1 %7, true, !dbg !4705
  %12 = sext i1 %11 to i32, !dbg !4705
  br i1 %10, label %21, label %13, !dbg !4705

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4706
  %15 = load i32, ptr %14, align 4, !dbg !4706, !tbaa !1065
  %16 = icmp ne i32 %15, 9, !dbg !4707
  %17 = sext i1 %16 to i32, !dbg !4708
  br label %21, !dbg !4708

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4709

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4711
  store i32 0, ptr %20, align 4, !dbg !4713, !tbaa !1065
  br label %21, !dbg !4711

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4691
  ret i32 %22, !dbg !4714
}

; Function Attrs: nounwind
declare !dbg !4715 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4718 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4756, metadata !DIExpression()), !dbg !4760
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4757, metadata !DIExpression()), !dbg !4760
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4761
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4758, metadata !DIExpression()), !dbg !4760
  %3 = icmp slt i32 %2, 0, !dbg !4762
  br i1 %3, label %4, label %6, !dbg !4764

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4765
  br label %24, !dbg !4766

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4767
  %8 = icmp eq i32 %7, 0, !dbg !4767
  br i1 %8, label %13, label %9, !dbg !4769

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4770
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4771
  %12 = icmp eq i64 %11, -1, !dbg !4772
  br i1 %12, label %16, label %13, !dbg !4773

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4774
  %15 = icmp eq i32 %14, 0, !dbg !4774
  br i1 %15, label %16, label %18, !dbg !4775

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4757, metadata !DIExpression()), !dbg !4760
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4759, metadata !DIExpression()), !dbg !4760
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4776
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4759, metadata !DIExpression()), !dbg !4760
  br label %24, !dbg !4777

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4778
  %20 = load i32, ptr %19, align 4, !dbg !4778, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4757, metadata !DIExpression()), !dbg !4760
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4759, metadata !DIExpression()), !dbg !4760
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4776
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4759, metadata !DIExpression()), !dbg !4760
  %22 = icmp eq i32 %20, 0, !dbg !4779
  br i1 %22, label %24, label %23, !dbg !4777

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4781, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4759, metadata !DIExpression()), !dbg !4760
  br label %24, !dbg !4783

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4760
  ret i32 %25, !dbg !4784
}

; Function Attrs: nofree nounwind
declare !dbg !4785 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4786 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4787 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4788 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4829, metadata !DIExpression()), !dbg !4830
  %2 = icmp eq ptr %0, null, !dbg !4831
  br i1 %2, label %6, label %3, !dbg !4833

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4834
  %5 = icmp eq i32 %4, 0, !dbg !4834
  br i1 %5, label %6, label %8, !dbg !4835

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4836
  br label %16, !dbg !4837

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4838, metadata !DIExpression()), !dbg !4843
  %9 = load i32, ptr %0, align 8, !dbg !4845, !tbaa !1366
  %10 = and i32 %9, 256, !dbg !4847
  %11 = icmp eq i32 %10, 0, !dbg !4847
  br i1 %11, label %14, label %12, !dbg !4848

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4849
  br label %14, !dbg !4849

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4850
  br label %16, !dbg !4851

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4830
  ret i32 %17, !dbg !4852
}

; Function Attrs: nofree nounwind
declare !dbg !4853 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4854 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4893, metadata !DIExpression()), !dbg !4899
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4894, metadata !DIExpression()), !dbg !4899
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4895, metadata !DIExpression()), !dbg !4899
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4900
  %5 = load ptr, ptr %4, align 8, !dbg !4900, !tbaa !4901
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4902
  %7 = load ptr, ptr %6, align 8, !dbg !4902, !tbaa !4903
  %8 = icmp eq ptr %5, %7, !dbg !4904
  br i1 %8, label %9, label %27, !dbg !4905

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4906
  %11 = load ptr, ptr %10, align 8, !dbg !4906, !tbaa !1634
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4907
  %13 = load ptr, ptr %12, align 8, !dbg !4907, !tbaa !4908
  %14 = icmp eq ptr %11, %13, !dbg !4909
  br i1 %14, label %15, label %27, !dbg !4910

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4911
  %17 = load ptr, ptr %16, align 8, !dbg !4911, !tbaa !4912
  %18 = icmp eq ptr %17, null, !dbg !4913
  br i1 %18, label %19, label %27, !dbg !4914

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4915
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4916
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4896, metadata !DIExpression()), !dbg !4917
  %22 = icmp eq i64 %21, -1, !dbg !4918
  br i1 %22, label %29, label %23, !dbg !4920

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4921, !tbaa !1366
  %25 = and i32 %24, -17, !dbg !4921
  store i32 %25, ptr %0, align 8, !dbg !4921, !tbaa !1366
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4922
  store i64 %21, ptr %26, align 8, !dbg !4923, !tbaa !4924
  br label %29, !dbg !4925

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4926
  br label %29, !dbg !4927

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4899
  ret i32 %30, !dbg !4928
}

; Function Attrs: nofree nounwind
declare !dbg !4929 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #37 !dbg !4932 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4937, metadata !DIExpression()), !dbg !4940
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4938, metadata !DIExpression()), !dbg !4940
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !4941
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i8 0, ptr %3, align 1, !dbg !4942, !tbaa !1074
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %10, %4 ], !dbg !4940
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4939, metadata !DIExpression()), !dbg !4940
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4937, metadata !DIExpression()), !dbg !4940
  %7 = urem i64 %5, 10, !dbg !4943
  %8 = trunc i64 %7 to i8, !dbg !4946
  %9 = or disjoint i8 %8, 48, !dbg !4946
  %10 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !4947
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i8 %9, ptr %10, align 1, !dbg !4948, !tbaa !1074
  %11 = udiv i64 %5, 10, !dbg !4949
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4937, metadata !DIExpression()), !dbg !4940
  %12 = icmp ult i64 %5, 10, !dbg !4950
  br i1 %12, label %13, label %4, !dbg !4951, !llvm.loop !4952

13:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4939, metadata !DIExpression()), !dbg !4940
  ret ptr %10, !dbg !4955
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4956 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4961, metadata !DIExpression()), !dbg !4966
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4962, metadata !DIExpression()), !dbg !4966
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4963, metadata !DIExpression()), !dbg !4966
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4964, metadata !DIExpression()), !dbg !4966
  %5 = icmp eq ptr %1, null, !dbg !4967
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4969
  %7 = select i1 %5, ptr @.str.181, ptr %1, !dbg !4969
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4969
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4963, metadata !DIExpression()), !dbg !4966
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4962, metadata !DIExpression()), !dbg !4966
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4961, metadata !DIExpression()), !dbg !4966
  %9 = icmp eq ptr %3, null, !dbg !4970
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4972
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4964, metadata !DIExpression()), !dbg !4966
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4973
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4965, metadata !DIExpression()), !dbg !4966
  %12 = icmp ult i64 %11, -3, !dbg !4974
  br i1 %12, label %13, label %17, !dbg !4976

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4977
  %15 = icmp eq i32 %14, 0, !dbg !4977
  br i1 %15, label %16, label %29, !dbg !4978

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4979, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata ptr %10, metadata !4986, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.value(metadata i32 0, metadata !4989, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.value(metadata i64 8, metadata !4990, metadata !DIExpression()), !dbg !4991
  store i64 0, ptr %10, align 1, !dbg !4993
  br label %29, !dbg !4994

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4995
  br i1 %18, label %19, label %20, !dbg !4997

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4998
  unreachable, !dbg !4998

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4999

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !5001
  br i1 %23, label %29, label %24, !dbg !5002

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5003
  br i1 %25, label %29, label %26, !dbg !5006

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5007, !tbaa !1074
  %28 = zext i8 %27 to i32, !dbg !5008
  store i32 %28, ptr %6, align 4, !dbg !5009, !tbaa !1065
  br label %29, !dbg !5010

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4966
  ret i64 %30, !dbg !5011
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5012 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !932 {
  %4 = alloca i32, align 4, !DIAssignID !5018
  call void @llvm.dbg.assign(metadata i1 undef, metadata !941, metadata !DIExpression(), metadata !5018, metadata ptr %4, metadata !DIExpression()), !dbg !5019
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !938, metadata !DIExpression()), !dbg !5020
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !939, metadata !DIExpression()), !dbg !5020
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !940, metadata !DIExpression()), !dbg !5020
  %5 = icmp eq ptr %0, null, !dbg !5021
  br i1 %5, label %36, label %6, !dbg !5022

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40, !dbg !5023
  store i32 10, ptr %4, align 4, !dbg !5024, !tbaa !1065, !DIAssignID !5025
  call void @llvm.dbg.assign(metadata i32 10, metadata !941, metadata !DIExpression(), metadata !5025, metadata ptr %4, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata ptr null, metadata !5026, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i64 10, metadata !5031, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata ptr null, metadata !5034, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata i64 40, metadata !5037, metadata !DIExpression()), !dbg !5038
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !5040
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !944, metadata !DIExpression()), !dbg !5019
  %8 = icmp eq ptr %7, null, !dbg !5041
  br i1 %8, label %34, label %9, !dbg !5043

9:                                                ; preds = %6, %31
  %10 = phi i32 [ %20, %31 ], [ 10, %6 ], !dbg !5044
  %11 = phi ptr [ %28, %31 ], [ %7, %6 ], !dbg !5045
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !944, metadata !DIExpression()), !dbg !5019
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !945, metadata !DIExpression()), !dbg !5046
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #40, !dbg !5047
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !947, metadata !DIExpression()), !dbg !5046
  %13 = icmp slt i32 %12, 0, !dbg !5048
  %14 = load i32, ptr %4, align 4, !dbg !5050, !tbaa !1065
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !5051
  br i1 %16, label %17, label %19, !dbg !5051

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !5052
  store i32 %18, ptr %4, align 4, !dbg !5052, !tbaa !1065, !DIAssignID !5053
  call void @llvm.dbg.assign(metadata i32 %18, metadata !941, metadata !DIExpression(), metadata !5053, metadata ptr %4, metadata !DIExpression()), !dbg !5019
  br label %19, !dbg !5054

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !5050
  call void @llvm.dbg.value(metadata ptr %11, metadata !5026, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i32 %20, metadata !5031, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !5055
  %21 = icmp slt i32 %20, 0, !dbg !5057
  br i1 %21, label %22, label %24, !dbg !5059

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #43, !dbg !5060
  store i32 12, ptr %23, align 4, !dbg !5062, !tbaa !1065
  tail call void @llvm.dbg.value(metadata ptr null, metadata !948, metadata !DIExpression()), !dbg !5046
  br label %30, !dbg !5063

24:                                               ; preds = %19
  %25 = zext nneg i32 %20 to i64, !dbg !5050
  call void @llvm.dbg.value(metadata i32 %20, metadata !5031, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !5055
  %26 = shl nuw nsw i64 %25, 2, !dbg !5064
  call void @llvm.dbg.value(metadata ptr %11, metadata !5034, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %26, metadata !5037, metadata !DIExpression()), !dbg !5065
  %27 = call i64 @llvm.umax.i64(i64 %26, i64 1), !dbg !5067
  %28 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %27) #46, !dbg !5068
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !948, metadata !DIExpression()), !dbg !5046
  %29 = icmp eq ptr %28, null, !dbg !5069
  br i1 %29, label %30, label %31, !dbg !5063

30:                                               ; preds = %24, %22
  call void @free(ptr noundef nonnull %11) #40, !dbg !5071
  br label %34, !dbg !5073

31:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !944, metadata !DIExpression()), !dbg !5019
  %32 = icmp sgt i32 %12, -1, !dbg !5074
  br i1 %32, label %33, label %9, !dbg !5076, !llvm.loop !5077

33:                                               ; preds = %31
  store ptr %28, ptr %2, align 8, !dbg !5080, !tbaa !995
  br label %34, !dbg !5082

34:                                               ; preds = %33, %30, %6
  %35 = phi i32 [ -1, %6 ], [ %20, %33 ], [ -1, %30 ], !dbg !5019
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40, !dbg !5083
  br label %98

36:                                               ; preds = %3
  %37 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #40, !dbg !5084
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !949, metadata !DIExpression()), !dbg !5020
  %38 = icmp slt i32 %37, 0, !dbg !5085
  br i1 %38, label %39, label %49, !dbg !5086

39:                                               ; preds = %36
  %40 = tail call ptr @__errno_location() #43, !dbg !5087
  %41 = load i32, ptr %40, align 4, !dbg !5087, !tbaa !1065
  %42 = icmp eq i32 %41, 38, !dbg !5088
  br i1 %42, label %43, label %98, !dbg !5089

43:                                               ; preds = %39
  call void @llvm.dbg.value(metadata ptr null, metadata !5026, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i64 1, metadata !5031, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata ptr null, metadata !5034, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata i64 4, metadata !5037, metadata !DIExpression()), !dbg !5092
  %44 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !5094
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !950, metadata !DIExpression()), !dbg !5095
  %45 = icmp eq ptr %44, null, !dbg !5096
  br i1 %45, label %98, label %46, !dbg !5098

46:                                               ; preds = %43
  store ptr %44, ptr %2, align 8, !dbg !5099, !tbaa !995
  store i32 %1, ptr %44, align 4, !dbg !5101, !tbaa !1065
  %47 = icmp ne i32 %1, -1, !dbg !5102
  %48 = zext i1 %47 to i32, !dbg !5102
  br label %98

49:                                               ; preds = %36
  %50 = icmp eq i32 %37, 0, !dbg !5103
  %51 = icmp ne i32 %1, -1
  %52 = or i1 %51, %50, !dbg !5105
  %53 = zext i1 %52 to i32, !dbg !5105
  %54 = add nuw nsw i32 %37, %53, !dbg !5105
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !949, metadata !DIExpression()), !dbg !5020
  %55 = zext nneg i32 %54 to i64, !dbg !5106
  call void @llvm.dbg.value(metadata ptr null, metadata !5026, metadata !DIExpression()), !dbg !5107
  call void @llvm.dbg.value(metadata i64 %55, metadata !5031, metadata !DIExpression()), !dbg !5107
  %56 = shl nuw nsw i64 %55, 2, !dbg !5109
  call void @llvm.dbg.value(metadata ptr null, metadata !5034, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.value(metadata i64 %56, metadata !5037, metadata !DIExpression()), !dbg !5110
  %57 = tail call i64 @llvm.umax.i64(i64 %56, i64 1), !dbg !5112
  %58 = tail call ptr @malloc(i64 %57), !dbg !5113
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !955, metadata !DIExpression()), !dbg !5020
  %59 = icmp eq ptr %58, null, !dbg !5114
  br i1 %59, label %98, label %60, !dbg !5116

60:                                               ; preds = %49
  %61 = sext i1 %51 to i32, !dbg !5117
  %62 = add nsw i32 %54, %61, !dbg !5118
  %63 = zext i1 %51 to i64
  %64 = getelementptr inbounds i32, ptr %58, i64 %63, !dbg !5119
  %65 = tail call i32 @getgroups(i32 noundef %62, ptr noundef nonnull %64) #40, !dbg !5120
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !956, metadata !DIExpression()), !dbg !5020
  %66 = icmp slt i32 %65, 0, !dbg !5121
  br i1 %66, label %67, label %68, !dbg !5123

67:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %58) #40, !dbg !5124
  br label %98, !dbg !5126

68:                                               ; preds = %60
  br i1 %51, label %69, label %71, !dbg !5127

69:                                               ; preds = %68
  store i32 %1, ptr %58, align 4, !dbg !5129, !tbaa !1065
  %70 = add nuw nsw i32 %65, 1, !dbg !5131
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !956, metadata !DIExpression()), !dbg !5020
  br label %71, !dbg !5132

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %70, %69 ], [ %65, %68 ], !dbg !5020
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !956, metadata !DIExpression()), !dbg !5020
  store ptr %58, ptr %2, align 8, !dbg !5133, !tbaa !995
  %73 = icmp ugt i32 %72, 1, !dbg !5134
  br i1 %73, label %74, label %98, !dbg !5135

74:                                               ; preds = %71
  %75 = load i32, ptr %58, align 4, !dbg !5136, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !957, metadata !DIExpression()), !dbg !5137
  %76 = zext nneg i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %58, i64 %76, !dbg !5138
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !960, metadata !DIExpression()), !dbg !5137
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !961, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5139
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !956, metadata !DIExpression()), !dbg !5020
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !955, metadata !DIExpression()), !dbg !5020
  %78 = getelementptr inbounds i32, ptr %58, i64 1, !dbg !5140
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !961, metadata !DIExpression()), !dbg !5139
  br label %79, !dbg !5141

79:                                               ; preds = %74, %92
  %80 = phi i32 [ %93, %92 ], [ %75, %74 ]
  %81 = phi ptr [ %96, %92 ], [ %78, %74 ]
  %82 = phi i32 [ %95, %92 ], [ %72, %74 ]
  %83 = phi ptr [ %94, %92 ], [ %58, %74 ]
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !956, metadata !DIExpression()), !dbg !5020
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !955, metadata !DIExpression()), !dbg !5020
  %84 = load i32, ptr %81, align 4, !dbg !5142, !tbaa !1065
  %85 = icmp eq i32 %84, %75, !dbg !5146
  %86 = icmp eq i32 %84, %80
  %87 = select i1 %85, i1 true, i1 %86, !dbg !5147
  br i1 %87, label %88, label %90, !dbg !5147

88:                                               ; preds = %79
  %89 = add nsw i32 %82, -1, !dbg !5148
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !956, metadata !DIExpression()), !dbg !5020
  br label %92, !dbg !5149

90:                                               ; preds = %79
  %91 = getelementptr inbounds i32, ptr %83, i64 1, !dbg !5150
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !955, metadata !DIExpression()), !dbg !5020
  store i32 %84, ptr %91, align 4, !dbg !5151, !tbaa !1065
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i32 [ %80, %88 ], [ %84, %90 ]
  %94 = phi ptr [ %83, %88 ], [ %91, %90 ], !dbg !5020
  %95 = phi i32 [ %89, %88 ], [ %82, %90 ], !dbg !5020
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !956, metadata !DIExpression()), !dbg !5020
  tail call void @llvm.dbg.value(metadata ptr %94, metadata !955, metadata !DIExpression()), !dbg !5020
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !961, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5139
  %96 = getelementptr inbounds i32, ptr %81, i64 1, !dbg !5140
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !961, metadata !DIExpression()), !dbg !5139
  %97 = icmp ult ptr %96, %77, !dbg !5152
  br i1 %97, label %79, label %98, !dbg !5141, !llvm.loop !5153

98:                                               ; preds = %92, %43, %39, %46, %67, %71, %49, %34
  %99 = phi i32 [ %35, %34 ], [ %48, %46 ], [ -1, %49 ], [ -1, %67 ], [ %72, %71 ], [ -1, %39 ], [ -1, %43 ], [ %95, %92 ], !dbg !5020
  ret i32 %99, !dbg !5155
}

declare !dbg !5156 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5160 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5162, metadata !DIExpression()), !dbg !5166
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5163, metadata !DIExpression()), !dbg !5166
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5164, metadata !DIExpression()), !dbg !5166
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5167
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5167
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5165, metadata !DIExpression()), !dbg !5166
  br i1 %5, label %6, label %8, !dbg !5169

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5170
  store i32 12, ptr %7, align 4, !dbg !5172, !tbaa !1065
  br label %12, !dbg !5173

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5167
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5165, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %0, metadata !5174, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.value(metadata i64 %9, metadata !5177, metadata !DIExpression()), !dbg !5178
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5180
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !5181
  br label %12, !dbg !5182

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5166
  ret ptr %13, !dbg !5183
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5184 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5193
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5189, metadata !DIExpression(), metadata !5193, metadata ptr %2, metadata !DIExpression()), !dbg !5194
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5188, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5195
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5196
  %4 = icmp eq i32 %3, 0, !dbg !5196
  br i1 %4, label %5, label %12, !dbg !5198

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5199, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata !1032, metadata !5202, metadata !DIExpression()), !dbg !5203
  %6 = load i16, ptr %2, align 16, !dbg !5206
  %7 = icmp eq i16 %6, 67, !dbg !5206
  br i1 %7, label %11, label %8, !dbg !5207

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5199, metadata !DIExpression()), !dbg !5208
  call void @llvm.dbg.value(metadata ptr @.str.1.188, metadata !5202, metadata !DIExpression()), !dbg !5208
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.188, i64 6), !dbg !5210
  %10 = icmp eq i32 %9, 0, !dbg !5211
  br i1 %10, label %11, label %12, !dbg !5212

11:                                               ; preds = %8, %5
  br label %12, !dbg !5213

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5194
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5214
  ret i1 %13, !dbg !5214
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5215 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5219, metadata !DIExpression()), !dbg !5222
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5220, metadata !DIExpression()), !dbg !5222
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5221, metadata !DIExpression()), !dbg !5222
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5223
  ret i32 %4, !dbg !5224
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5225 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5229, metadata !DIExpression()), !dbg !5230
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5231
  ret ptr %2, !dbg !5232
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5233 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5235, metadata !DIExpression()), !dbg !5237
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5236, metadata !DIExpression()), !dbg !5237
  ret ptr %2, !dbg !5239
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5240 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5242, metadata !DIExpression()), !dbg !5249
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5243, metadata !DIExpression()), !dbg !5249
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5244, metadata !DIExpression()), !dbg !5249
  call void @llvm.dbg.value(metadata i32 %0, metadata !5235, metadata !DIExpression()), !dbg !5250
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5252
  call void @llvm.dbg.value(metadata ptr %4, metadata !5236, metadata !DIExpression()), !dbg !5250
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5245, metadata !DIExpression()), !dbg !5249
  %5 = icmp eq ptr %4, null, !dbg !5253
  br i1 %5, label %6, label %9, !dbg !5254

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5255
  br i1 %7, label %19, label %8, !dbg !5258

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5259, !tbaa !1074
  br label %19, !dbg !5260

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5261
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5246, metadata !DIExpression()), !dbg !5262
  %11 = icmp ult i64 %10, %2, !dbg !5263
  br i1 %11, label %12, label %14, !dbg !5265

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5266
  call void @llvm.dbg.value(metadata ptr %1, metadata !5268, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.value(metadata ptr %4, metadata !5271, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.value(metadata i64 %13, metadata !5272, metadata !DIExpression()), !dbg !5273
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5275
  br label %19, !dbg !5276

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5277
  br i1 %15, label %19, label %16, !dbg !5280

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5281
  call void @llvm.dbg.value(metadata ptr %1, metadata !5268, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.value(metadata ptr %4, metadata !5271, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.value(metadata i64 %17, metadata !5272, metadata !DIExpression()), !dbg !5283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5285
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5286
  store i8 0, ptr %18, align 1, !dbg !5287, !tbaa !1074
  br label %19, !dbg !5288

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5289
  ret i32 %20, !dbg !5290
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!99, !848, !492, !496, !511, !816, !851, !853, !562, !576, !627, !855, !867, !808, !874, !909, !911, !913, !917, !919, !921, !923, !925, !832, !928, !966, !968, !972, !974}
!llvm.ident = !{!976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976}
!llvm.module.flags = !{!977, !978, !979, !980, !981, !982, !983}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/id.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4d6d8f8486b7af02f11b43ac1fb9adde")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 108)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 3)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 61)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 73)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 58)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 45)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 70)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 672, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 84)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 56)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 936, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 117)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 50)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 62)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 71)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 10)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 24)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 9)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "longopts", scope: !99, file: !2, line: 73, type: !457, isLocal: true, isDefinition: true)
!99 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/id.o -MD -MP -MF src/.deps/id.Tpo -c src/id.c -o src/.id.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !100, retainedTypes: !123, globals: !137, splitDebugInlining: false, nameTableKind: None)
!100 = !{!101, !107}
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 337, baseType: !103, size: 32, elements: !104)
!102 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!106 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 46, baseType: !109, size: 32, elements: !110)
!108 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!111 = !DIEnumerator(name: "_ISupper", value: 256)
!112 = !DIEnumerator(name: "_ISlower", value: 512)
!113 = !DIEnumerator(name: "_ISalpha", value: 1024)
!114 = !DIEnumerator(name: "_ISdigit", value: 2048)
!115 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!116 = !DIEnumerator(name: "_ISspace", value: 8192)
!117 = !DIEnumerator(name: "_ISprint", value: 16384)
!118 = !DIEnumerator(name: "_ISgraph", value: 32768)
!119 = !DIEnumerator(name: "_ISblank", value: 1)
!120 = !DIEnumerator(name: "_IScntrl", value: 2)
!121 = !DIEnumerator(name: "_ISpunct", value: 4)
!122 = !DIEnumerator(name: "_ISalnum", value: 8)
!123 = !{!124, !125, !103, !126, !127, !130, !132, !133}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 18, baseType: !129)
!128 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!129 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!132 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !134, line: 102, baseType: !135)
!134 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !136, line: 73, baseType: !129)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!137 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !87, !92, !138, !143, !148, !153, !158, !160, !165, !167, !172, !174, !179, !184, !189, !194, !196, !198, !203, !205, !209, !211, !290, !295, !297, !302, !307, !312, !314, !316, !318, !320, !322, !324, !329, !334, !336, !338, !340, !342, !344, !346, !348, !353, !355, !357, !359, !361, !363, !365, !367, !372, !374, !376, !378, !383, !388, !393, !395, !397, !399, !401, !403, !405, !407, !409, !97, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 55)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 14)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 15)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 16)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !64, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 44)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !140, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 46)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !155, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 26)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 17)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 300, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 25)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 20)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 317, type: !186, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !191, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "ruid", scope: !99, file: !2, line: 62, type: !200, isLocal: true, isDefinition: true)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !201, line: 79, baseType: !202)
!201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !136, line: 146, baseType: !109)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "euid", scope: !99, file: !2, line: 62, type: !200, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "rgid", scope: !99, file: !2, line: 63, type: !207, isLocal: true, isDefinition: true)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !201, line: 64, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !136, line: 147, baseType: !109)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "egid", scope: !99, file: !2, line: 63, type: !207, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !213, file: !102, line: 575, type: !103, isLocal: true, isDefinition: true)
!213 = distinct !DISubprogram(name: "oputs_", scope: !102, file: !102, line: 573, type: !214, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !216)
!214 = !DISubroutineType(cc: DW_CC_nocall, types: !215)
!215 = !{null, !130, !130}
!216 = !{!217, !218, !219, !222, !224, !225, !226, !230, !231, !232, !233, !235, !284, !285, !286, !288, !289}
!217 = !DILocalVariable(name: "program", arg: 1, scope: !213, file: !102, line: 573, type: !130)
!218 = !DILocalVariable(name: "option", arg: 2, scope: !213, file: !102, line: 573, type: !130)
!219 = !DILocalVariable(name: "term", scope: !220, file: !102, line: 585, type: !130)
!220 = distinct !DILexicalBlock(scope: !221, file: !102, line: 582, column: 5)
!221 = distinct !DILexicalBlock(scope: !213, file: !102, line: 581, column: 7)
!222 = !DILocalVariable(name: "double_space", scope: !213, file: !102, line: 594, type: !223)
!223 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!224 = !DILocalVariable(name: "first_word", scope: !213, file: !102, line: 595, type: !130)
!225 = !DILocalVariable(name: "option_text", scope: !213, file: !102, line: 596, type: !130)
!226 = !DILocalVariable(name: "s", scope: !227, file: !102, line: 608, type: !130)
!227 = distinct !DILexicalBlock(scope: !228, file: !102, line: 605, column: 5)
!228 = distinct !DILexicalBlock(scope: !229, file: !102, line: 604, column: 12)
!229 = distinct !DILexicalBlock(scope: !213, file: !102, line: 597, column: 7)
!230 = !DILocalVariable(name: "spaces", scope: !227, file: !102, line: 609, type: !127)
!231 = !DILocalVariable(name: "anchor_len", scope: !213, file: !102, line: 620, type: !127)
!232 = !DILocalVariable(name: "desc_text", scope: !213, file: !102, line: 625, type: !130)
!233 = !DILocalVariable(name: "__ptr", scope: !234, file: !102, line: 644, type: !130)
!234 = distinct !DILexicalBlock(scope: !213, file: !102, line: 644, column: 3)
!235 = !DILocalVariable(name: "__stream", scope: !234, file: !102, line: 644, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !239)
!238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !257, !259, !260, !261, !264, !265, !267, !268, !271, !273, !276, !279, !280, !281, !282, !283}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !239, file: !240, line: 51, baseType: !103, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !239, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !239, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !239, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !239, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !239, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !239, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !239, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !239, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !239, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !239, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !239, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !239, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !240, line: 36, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !239, file: !240, line: 70, baseType: !258, size: 64, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !239, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !239, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !239, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !136, line: 152, baseType: !263)
!263 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !239, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !239, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!266 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !239, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !239, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !240, line: 43, baseType: null)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !239, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !136, line: 153, baseType: !263)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !239, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !240, line: 37, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !239, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !240, line: 38, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !239, file: !240, line: 93, baseType: !258, size: 64, offset: 1344)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !239, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !239, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !239, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !239, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!284 = !DILocalVariable(name: "__cnt", scope: !234, file: !102, line: 644, type: !127)
!285 = !DILocalVariable(name: "url_program", scope: !213, file: !102, line: 648, type: !130)
!286 = !DILocalVariable(name: "__ptr", scope: !287, file: !102, line: 686, type: !130)
!287 = distinct !DILexicalBlock(scope: !213, file: !102, line: 686, column: 3)
!288 = !DILocalVariable(name: "__stream", scope: !287, file: !102, line: 686, type: !236)
!289 = !DILocalVariable(name: "__cnt", scope: !287, file: !102, line: 686, type: !127)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !102, line: 585, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 5)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !102, line: 586, type: !292, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !102, line: 595, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 4)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !102, line: 620, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 6)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !102, line: 648, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 2)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !102, line: 648, type: !292, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !102, line: 649, type: !299, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !102, line: 649, type: !19, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !102, line: 650, type: !292, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !102, line: 651, type: !304, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !102, line: 651, type: !304, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !102, line: 652, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 7)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !102, line: 653, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 8)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !102, line: 654, type: !84, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !102, line: 655, type: !84, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !102, line: 656, type: !84, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !102, line: 657, type: !84, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !102, line: 663, type: !326, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !102, line: 664, type: !84, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !102, line: 669, type: !181, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !102, line: 669, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 40)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !102, line: 676, type: !150, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !102, line: 676, type: !24, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !102, line: 679, type: !19, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !102, line: 683, type: !292, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !102, line: 688, type: !292, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !102, line: 691, type: !331, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !102, line: 839, type: !155, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !102, line: 840, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 22)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !102, line: 841, type: !150, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !102, line: 862, type: !299, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !102, line: 868, type: !74, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !102, line: 875, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 27)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !102, line: 877, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 51)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !102, line: 877, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 12)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !331, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !304, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !326, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !292, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !292, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !292, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !292, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !292, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !331, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!412 = distinct !DIGlobalVariable(name: "just_context", scope: !99, file: !2, line: 43, type: !223, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "just_group", scope: !99, file: !2, line: 49, type: !223, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "use_name", scope: !99, file: !2, line: 59, type: !223, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "use_real", scope: !99, file: !2, line: 51, type: !223, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "just_user", scope: !99, file: !2, line: 53, type: !223, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "opt_zero", scope: !99, file: !2, line: 45, type: !223, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "just_group_list", scope: !99, file: !2, line: 47, type: !223, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "context", scope: !99, file: !2, line: 67, type: !124, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "multiple_users", scope: !99, file: !2, line: 57, type: !223, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "ok", scope: !99, file: !2, line: 55, type: !223, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !102, line: 952, type: !390, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 342, type: !9, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !19, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 350, type: !299, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !2, line: 361, type: !331, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !292, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !94, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 373, type: !84, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !84, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !2, line: 400, type: !9, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !39, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !94, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 425, type: !390, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 2560, elements: !85)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !460, line: 50, size: 256, elements: !461)
!460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!461 = !{!462, !463, !464, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !460, line: 52, baseType: !130, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !459, file: !460, line: 55, baseType: !103, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !459, file: !460, line: 56, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !459, file: !460, line: 57, baseType: !103, size: 32, offset: 192)
!467 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!468 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!469 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!470 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!471 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!472 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !475, line: 67, type: !9, isLocal: true, isDefinition: true)
!475 = !DIFile(filename: "src/group-list.c", directory: "/src", checksumkind: CSK_MD5, checksum: "86bc740edd29a2e1277335d35d8d331e")
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !475, line: 72, type: !39, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !475, line: 109, type: !480, isLocal: true, isDefinition: true)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 34)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !475, line: 116, type: !19, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !475, line: 118, type: !299, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !489, line: 3, type: !150, isLocal: true, isDefinition: true)
!489 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "Version", scope: !492, file: !489, line: 3, type: !130, isLocal: false, isDefinition: true)
!492 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !493, splitDebugInlining: false, nameTableKind: None)
!493 = !{!487, !490}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "file_name", scope: !496, file: !497, line: 45, type: !130, isLocal: true, isDefinition: true)
!496 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !498, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!498 = !{!499, !501, !503, !505, !494, !507}
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !497, line: 121, type: !326, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !497, line: 121, type: !390, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !497, line: 123, type: !326, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !497, line: 126, type: !19, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !496, file: !497, line: 55, type: !223, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !511, file: !512, line: 66, type: !557, isLocal: false, isDefinition: true)
!511 = distinct !DICompileUnit(language: DW_LANG_C11, file: !512, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !513, globals: !514, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!513 = !{!125, !132}
!514 = !{!515, !517, !536, !538, !540, !542, !509, !544, !546, !548, !550, !555}
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !512, line: 272, type: !292, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "old_file_name", scope: !519, file: !512, line: 304, type: !130, isLocal: true, isDefinition: true)
!519 = distinct !DISubprogram(name: "verror_at_line", scope: !512, file: !512, line: 298, type: !520, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !529)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !103, !103, !130, !109, !130, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !524)
!524 = !{!525, !526, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !523, file: !512, baseType: !109, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !523, file: !512, baseType: !109, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !523, file: !512, baseType: !125, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !523, file: !512, baseType: !125, size: 64, offset: 128)
!529 = !{!530, !531, !532, !533, !534, !535}
!530 = !DILocalVariable(name: "status", arg: 1, scope: !519, file: !512, line: 298, type: !103)
!531 = !DILocalVariable(name: "errnum", arg: 2, scope: !519, file: !512, line: 298, type: !103)
!532 = !DILocalVariable(name: "file_name", arg: 3, scope: !519, file: !512, line: 298, type: !130)
!533 = !DILocalVariable(name: "line_number", arg: 4, scope: !519, file: !512, line: 298, type: !109)
!534 = !DILocalVariable(name: "message", arg: 5, scope: !519, file: !512, line: 298, type: !130)
!535 = !DILocalVariable(name: "args", arg: 6, scope: !519, file: !512, line: 298, type: !522)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "old_line_number", scope: !519, file: !512, line: 305, type: !109, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !512, line: 338, type: !299, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !331, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !309, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "error_message_count", scope: !511, file: !512, line: 69, type: !109, isLocal: false, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !511, file: !512, line: 295, type: !103, isLocal: false, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !326, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 21)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !512, line: 214, type: !292, isLocal: true, isDefinition: true)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null}
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "program_name", scope: !562, file: !563, line: 31, type: !130, isLocal: false, isDefinition: true)
!562 = distinct !DICompileUnit(language: DW_LANG_C11, file: !563, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !564, globals: !565, splitDebugInlining: false, nameTableKind: None)
!563 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!564 = !{!125, !124}
!565 = !{!560, !566, !568}
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !563, line: 46, type: !331, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !563, line: 49, type: !299, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "utf07FF", scope: !572, file: !573, line: 46, type: !600, isLocal: true, isDefinition: true)
!572 = distinct !DISubprogram(name: "proper_name_lite", scope: !573, file: !573, line: 38, type: !574, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !578)
!573 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!574 = !DISubroutineType(types: !575)
!575 = !{!130, !130, !130}
!576 = distinct !DICompileUnit(language: DW_LANG_C11, file: !573, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !577, splitDebugInlining: false, nameTableKind: None)
!577 = !{!570}
!578 = !{!579, !580, !581, !582, !587}
!579 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !572, file: !573, line: 38, type: !130)
!580 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !572, file: !573, line: 38, type: !130)
!581 = !DILocalVariable(name: "translation", scope: !572, file: !573, line: 40, type: !130)
!582 = !DILocalVariable(name: "w", scope: !572, file: !573, line: 47, type: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !584, line: 37, baseType: !585)
!584 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !136, line: 57, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !136, line: 42, baseType: !109)
!587 = !DILocalVariable(name: "mbs", scope: !572, file: !573, line: 48, type: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !589, line: 6, baseType: !590)
!589 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !591, line: 21, baseType: !592)
!591 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 13, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !592, file: !591, line: 15, baseType: !103, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !592, file: !591, line: 20, baseType: !596, size: 32, offset: 32)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !591, line: 16, size: 32, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !596, file: !591, line: 18, baseType: !109, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !596, file: !591, line: 19, baseType: !299, size: 32)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 16, elements: !310)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !603, line: 78, type: !331, isLocal: true, isDefinition: true)
!603 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !603, line: 79, type: !304, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !603, line: 80, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 13)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !603, line: 81, type: !608, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !603, line: 82, type: !191, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !603, line: 83, type: !309, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !603, line: 84, type: !331, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !603, line: 85, type: !326, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !603, line: 86, type: !326, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !603, line: 87, type: !331, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !627, file: !603, line: 76, type: !713, isLocal: false, isDefinition: true)
!627 = distinct !DICompileUnit(language: DW_LANG_C11, file: !603, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !628, retainedTypes: !648, globals: !649, splitDebugInlining: false, nameTableKind: None)
!628 = !{!629, !643, !107}
!629 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !630, line: 42, baseType: !109, size: 32, elements: !631)
!630 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!632 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!633 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!634 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!635 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!636 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!637 = !DIEnumerator(name: "c_quoting_style", value: 5)
!638 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!639 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!640 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!641 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!642 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!643 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !630, line: 254, baseType: !109, size: 32, elements: !644)
!644 = !{!645, !646, !647}
!645 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!646 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!647 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!648 = !{!125, !103, !126, !127}
!649 = !{!601, !604, !606, !611, !613, !615, !617, !619, !621, !623, !625, !650, !654, !664, !666, !671, !673, !675, !677, !679, !702, !709, !711}
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !627, file: !603, line: 92, type: !652, isLocal: false, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 320, elements: !85)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !627, file: !603, line: 1040, type: !656, isLocal: false, isDefinition: true)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !603, line: 56, size: 448, elements: !657)
!657 = !{!658, !659, !660, !662, !663}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !656, file: !603, line: 59, baseType: !629, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !603, line: 62, baseType: !103, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !656, file: !603, line: 66, baseType: !661, size: 256, offset: 64)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !332)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !656, file: !603, line: 69, baseType: !130, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !656, file: !603, line: 72, baseType: !130, size: 64, offset: 384)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !627, file: !603, line: 107, type: !656, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "slot0", scope: !627, file: !603, line: 831, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 256)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !603, line: 321, type: !309, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !603, line: 357, type: !309, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !603, line: 358, type: !309, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !603, line: 199, type: !326, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "quote", scope: !681, file: !603, line: 228, type: !700, isLocal: true, isDefinition: true)
!681 = distinct !DISubprogram(name: "gettext_quote", scope: !603, file: !603, line: 197, type: !682, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{!130, !130, !629}
!684 = !{!685, !686, !687, !688, !689}
!685 = !DILocalVariable(name: "msgid", arg: 1, scope: !681, file: !603, line: 197, type: !130)
!686 = !DILocalVariable(name: "s", arg: 2, scope: !681, file: !603, line: 197, type: !629)
!687 = !DILocalVariable(name: "translation", scope: !681, file: !603, line: 199, type: !130)
!688 = !DILocalVariable(name: "w", scope: !681, file: !603, line: 229, type: !583)
!689 = !DILocalVariable(name: "mbs", scope: !681, file: !603, line: 230, type: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !589, line: 6, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !591, line: 21, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 13, size: 64, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !692, file: !591, line: 15, baseType: !103, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !692, file: !591, line: 20, baseType: !696, size: 32, offset: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !591, line: 16, size: 32, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !696, file: !591, line: 18, baseType: !109, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !696, file: !591, line: 19, baseType: !299, size: 32)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !701)
!701 = !{!311, !301}
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "slotvec", scope: !627, file: !603, line: 834, type: !704, isLocal: true, isDefinition: true)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !603, line: 823, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !705, file: !603, line: 825, baseType: !127, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !705, file: !603, line: 826, baseType: !124, size: 64, offset: 64)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "nslots", scope: !627, file: !603, line: 832, type: !103, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "slotvec0", scope: !627, file: !603, line: 833, type: !705, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 704, elements: !715)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!715 = !{!716}
!716 = !DISubrange(count: 11)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !719, line: 274, type: !380, isLocal: true, isDefinition: true)
!719 = !DIFile(filename: "lib/userspec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9b1d112c5d74602907b912457199dc83")
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !719, line: 160, type: !608, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !719, line: 165, type: !79, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !719, line: 169, type: !608, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !719, line: 202, type: !145, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !719, line: 229, type: !326, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !732, line: 67, type: !390, isLocal: true, isDefinition: true)
!732 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !732, line: 69, type: !326, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !732, line: 83, type: !326, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !732, line: 83, type: !299, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !732, line: 85, type: !309, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !732, line: 88, type: !743, isLocal: true, isDefinition: true)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 171)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !732, line: 88, type: !480, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !732, line: 105, type: !155, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !732, line: 109, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 23)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !732, line: 113, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 28)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !732, line: 120, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 32)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !732, line: 127, type: !767, isLocal: true, isDefinition: true)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 36)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !732, line: 134, type: !350, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !732, line: 142, type: !162, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !732, line: 150, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 48)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !732, line: 159, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 52)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !732, line: 170, type: !786, isLocal: true, isDefinition: true)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 60)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !732, line: 248, type: !191, isLocal: true, isDefinition: true)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !732, line: 248, type: !369, isLocal: true, isDefinition: true)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !732, line: 254, type: !191, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !732, line: 254, type: !145, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !732, line: 254, type: !350, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !732, line: 259, type: !3, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !732, line: 259, type: !803, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 29)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !808, file: !809, line: 26, type: !811, isLocal: false, isDefinition: true)
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !810, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!810 = !{!806}
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 376, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 47)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "exit_failure", scope: !816, file: !817, line: 24, type: !819, isLocal: false, isDefinition: true)
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !818, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!818 = !{!814}
!819 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !822, line: 34, type: !19, isLocal: true, isDefinition: true)
!822 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !822, line: 34, type: !326, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !822, line: 34, type: !181, isLocal: true, isDefinition: true)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(scope: null, file: !829, line: 108, type: !79, isLocal: true, isDefinition: true)
!829 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "internal_state", scope: !832, file: !829, line: 97, type: !835, isLocal: true, isDefinition: true)
!832 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !833, globals: !834, splitDebugInlining: false, nameTableKind: None)
!833 = !{!125, !127, !132}
!834 = !{!827, !830}
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !589, line: 6, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !591, line: 21, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 13, size: 64, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !837, file: !591, line: 15, baseType: !103, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !837, file: !591, line: 20, baseType: !841, size: 32, offset: 32)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !591, line: 16, size: 32, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !841, file: !591, line: 18, baseType: !109, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !841, file: !591, line: 19, baseType: !299, size: 32)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !847, line: 35, type: !304, isLocal: true, isDefinition: true)
!847 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!848 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/group-list.o -MD -MP -MF src/.deps/group-list.Tpo -c src/group-list.c -o src/.group-list.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !849, globals: !850, splitDebugInlining: false, nameTableKind: None)
!849 = !{!125, !133, !132}
!850 = !{!473, !476, !478, !483, !485}
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!855 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-userspec.o -MD -MP -MF lib/.deps/libcoreutils_a-userspec.Tpo -c lib/userspec.c -o lib/.libcoreutils_a-userspec.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !856, retainedTypes: !865, globals: !866, splitDebugInlining: false, nameTableKind: None)
!856 = !{!857}
!857 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !858, line: 30, baseType: !109, size: 32, elements: !859)
!858 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!859 = !{!860, !861, !862, !863, !864}
!860 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!861 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!862 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!863 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!864 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!865 = !{!125, !200, !207}
!866 = !{!717, !720, !722, !724, !726, !728}
!867 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !868, retainedTypes: !872, globals: !873, splitDebugInlining: false, nameTableKind: None)
!868 = !{!869}
!869 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !732, line: 40, baseType: !109, size: 32, elements: !870)
!870 = !{!871}
!871 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!872 = !{!125}
!873 = !{!730, !733, !735, !737, !739, !741, !746, !748, !750, !755, !760, !765, !770, !772, !774, !779, !784, !789, !791, !793, !795, !797, !799, !801}
!874 = distinct !DICompileUnit(language: DW_LANG_C11, file: !875, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !876, retainedTypes: !908, splitDebugInlining: false, nameTableKind: None)
!875 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!876 = !{!877, !889}
!877 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !878, file: !875, line: 188, baseType: !109, size: 32, elements: !887)
!878 = distinct !DISubprogram(name: "x2nrealloc", scope: !875, file: !875, line: 176, type: !879, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !882)
!879 = !DISubroutineType(types: !880)
!880 = !{!125, !125, !881, !127}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!882 = !{!883, !884, !885, !886}
!883 = !DILocalVariable(name: "p", arg: 1, scope: !878, file: !875, line: 176, type: !125)
!884 = !DILocalVariable(name: "pn", arg: 2, scope: !878, file: !875, line: 176, type: !881)
!885 = !DILocalVariable(name: "s", arg: 3, scope: !878, file: !875, line: 176, type: !127)
!886 = !DILocalVariable(name: "n", scope: !878, file: !875, line: 178, type: !127)
!887 = !{!888}
!888 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!889 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !890, file: !875, line: 228, baseType: !109, size: 32, elements: !887)
!890 = distinct !DISubprogram(name: "xpalloc", scope: !875, file: !875, line: 223, type: !891, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !898)
!891 = !DISubroutineType(types: !892)
!892 = !{!125, !125, !893, !894, !896, !894}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !895, line: 130, baseType: !896)
!895 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !897, line: 18, baseType: !263)
!897 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!898 = !{!899, !900, !901, !902, !903, !904, !905, !906, !907}
!899 = !DILocalVariable(name: "pa", arg: 1, scope: !890, file: !875, line: 223, type: !125)
!900 = !DILocalVariable(name: "pn", arg: 2, scope: !890, file: !875, line: 223, type: !893)
!901 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !890, file: !875, line: 223, type: !894)
!902 = !DILocalVariable(name: "n_max", arg: 4, scope: !890, file: !875, line: 223, type: !896)
!903 = !DILocalVariable(name: "s", arg: 5, scope: !890, file: !875, line: 223, type: !894)
!904 = !DILocalVariable(name: "n0", scope: !890, file: !875, line: 230, type: !894)
!905 = !DILocalVariable(name: "n", scope: !890, file: !875, line: 237, type: !894)
!906 = !DILocalVariable(name: "nbytes", scope: !890, file: !875, line: 248, type: !894)
!907 = !DILocalVariable(name: "adjusted_nbytes", scope: !890, file: !875, line: 252, type: !894)
!908 = !{!124, !125}
!909 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !910, splitDebugInlining: false, nameTableKind: None)
!910 = !{!820, !823, !825}
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-xgetgroups.Tpo -c lib/xgetgroups.c -o lib/.libcoreutils_a-xgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !914, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoul.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoul.Tpo -c lib/xstrtoul.c -o lib/.libcoreutils_a-xstrtoul.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !915, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "lib/xstrtoul.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b318e5928e8382cfa3ae094c8d00222")
!915 = !{!857, !107}
!916 = !{!103, !126, !124, !129}
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-umaxtostr.o -MD -MP -MF lib/.deps/libcoreutils_a-umaxtostr.Tpo -c lib/umaxtostr.c -o lib/.libcoreutils_a-umaxtostr.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !927, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!927 = !{!133}
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-mgetgroups.Tpo -c lib/mgetgroups.c -o lib/.libcoreutils_a-mgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !930, retainedTypes: !965, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!930 = !{!931}
!931 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !932, file: !929, line: 79, baseType: !109, size: 32, elements: !963)
!932 = distinct !DISubprogram(name: "mgetgroups", scope: !929, file: !929, line: 66, type: !933, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !937)
!933 = !DISubroutineType(types: !934)
!934 = !{!103, !130, !207, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!937 = !{!938, !939, !940, !941, !944, !945, !947, !948, !949, !950, !955, !956, !957, !960, !961}
!938 = !DILocalVariable(name: "username", arg: 1, scope: !932, file: !929, line: 66, type: !130)
!939 = !DILocalVariable(name: "gid", arg: 2, scope: !932, file: !929, line: 66, type: !207)
!940 = !DILocalVariable(name: "groups", arg: 3, scope: !932, file: !929, line: 66, type: !935)
!941 = !DILocalVariable(name: "max_n_groups", scope: !942, file: !929, line: 80, type: !103)
!942 = distinct !DILexicalBlock(scope: !943, file: !929, line: 78, column: 5)
!943 = distinct !DILexicalBlock(scope: !932, file: !929, line: 77, column: 7)
!944 = !DILocalVariable(name: "g", scope: !942, file: !929, line: 82, type: !936)
!945 = !DILocalVariable(name: "last_n_groups", scope: !946, file: !929, line: 88, type: !103)
!946 = distinct !DILexicalBlock(scope: !942, file: !929, line: 87, column: 9)
!947 = !DILocalVariable(name: "ng", scope: !946, file: !929, line: 91, type: !103)
!948 = !DILocalVariable(name: "h", scope: !946, file: !929, line: 98, type: !936)
!949 = !DILocalVariable(name: "max_n_groups", scope: !932, file: !929, line: 118, type: !103)
!950 = !DILocalVariable(name: "g", scope: !951, file: !929, line: 129, type: !936)
!951 = distinct !DILexicalBlock(scope: !952, file: !929, line: 128, column: 9)
!952 = distinct !DILexicalBlock(scope: !953, file: !929, line: 127, column: 11)
!953 = distinct !DILexicalBlock(scope: !954, file: !929, line: 126, column: 5)
!954 = distinct !DILexicalBlock(scope: !932, file: !929, line: 125, column: 7)
!955 = !DILocalVariable(name: "g", scope: !932, file: !929, line: 142, type: !936)
!956 = !DILocalVariable(name: "ng", scope: !932, file: !929, line: 146, type: !103)
!957 = !DILocalVariable(name: "first", scope: !958, file: !929, line: 183, type: !207)
!958 = distinct !DILexicalBlock(scope: !959, file: !929, line: 182, column: 5)
!959 = distinct !DILexicalBlock(scope: !932, file: !929, line: 181, column: 7)
!960 = !DILocalVariable(name: "groups_end", scope: !958, file: !929, line: 184, type: !936)
!961 = !DILocalVariable(name: "next", scope: !962, file: !929, line: 186, type: !936)
!962 = distinct !DILexicalBlock(scope: !958, file: !929, line: 186, column: 7)
!963 = !{!964}
!964 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!965 = !{!125, !207}
!966 = distinct !DICompileUnit(language: DW_LANG_C11, file: !967, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !969, splitDebugInlining: false, nameTableKind: None)
!969 = !{!970, !845}
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !847, line: 35, type: !309, isLocal: true, isDefinition: true)
!972 = distinct !DICompileUnit(language: DW_LANG_C11, file: !973, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!973 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!974 = distinct !DICompileUnit(language: DW_LANG_C11, file: !975, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!975 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!976 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!977 = !{i32 7, !"Dwarf Version", i32 5}
!978 = !{i32 2, !"Debug Info Version", i32 3}
!979 = !{i32 1, !"wchar_size", i32 4}
!980 = !{i32 8, !"PIC Level", i32 2}
!981 = !{i32 7, !"PIE Level", i32 2}
!982 = !{i32 7, !"uwtable", i32 2}
!983 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!984 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 88, type: !985, scopeLine: 89, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !103}
!987 = !{!988}
!988 = !DILocalVariable(name: "status", arg: 1, scope: !984, file: !2, line: 88, type: !103)
!989 = !DILocation(line: 0, scope: !984)
!990 = !DILocation(line: 90, column: 14, scope: !991)
!991 = distinct !DILexicalBlock(scope: !984, file: !2, line: 90, column: 7)
!992 = !DILocation(line: 90, column: 7, scope: !984)
!993 = !DILocation(line: 91, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !2, line: 91, column: 5)
!995 = !{!996, !996, i64 0}
!996 = !{!"any pointer", !997, i64 0}
!997 = !{!"omnipotent char", !998, i64 0}
!998 = !{!"Simple C/C++ TBAA"}
!999 = !DILocation(line: 94, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !2, line: 93, column: 5)
!1001 = !DILocation(line: 95, column: 7, scope: !1000)
!1002 = !DILocation(line: 100, column: 7, scope: !1000)
!1003 = !DILocation(line: 104, column: 7, scope: !1000)
!1004 = !DILocation(line: 108, column: 7, scope: !1000)
!1005 = !DILocation(line: 112, column: 7, scope: !1000)
!1006 = !DILocation(line: 116, column: 7, scope: !1000)
!1007 = !DILocation(line: 120, column: 7, scope: !1000)
!1008 = !DILocation(line: 124, column: 7, scope: !1000)
!1009 = !DILocation(line: 128, column: 7, scope: !1000)
!1010 = !DILocation(line: 133, column: 7, scope: !1000)
!1011 = !DILocation(line: 134, column: 7, scope: !1000)
!1012 = !DILocation(line: 135, column: 7, scope: !1000)
!1013 = !DILocalVariable(name: "program", arg: 1, scope: !1014, file: !102, line: 836, type: !130)
!1014 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !102, file: !102, line: 836, type: !1015, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !130}
!1017 = !{!1013, !1018, !1025, !1026, !1028, !1029}
!1018 = !DILocalVariable(name: "infomap", scope: !1014, file: !102, line: 838, type: !1019)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 896, elements: !327)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1014, file: !102, line: 838, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1021, file: !102, line: 838, baseType: !130, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1021, file: !102, line: 838, baseType: !130, size: 64, offset: 64)
!1025 = !DILocalVariable(name: "node", scope: !1014, file: !102, line: 848, type: !130)
!1026 = !DILocalVariable(name: "map_prog", scope: !1014, file: !102, line: 849, type: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1028 = !DILocalVariable(name: "lc_messages", scope: !1014, file: !102, line: 861, type: !130)
!1029 = !DILocalVariable(name: "url_program", scope: !1014, file: !102, line: 874, type: !130)
!1030 = !DILocation(line: 0, scope: !1014, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 139, column: 7, scope: !1000)
!1032 = !{}
!1033 = !DILocation(line: 857, column: 3, scope: !1014, inlinedAt: !1031)
!1034 = !DILocation(line: 861, column: 29, scope: !1014, inlinedAt: !1031)
!1035 = !DILocation(line: 862, column: 7, scope: !1036, inlinedAt: !1031)
!1036 = distinct !DILexicalBlock(scope: !1014, file: !102, line: 862, column: 7)
!1037 = !DILocation(line: 862, column: 19, scope: !1036, inlinedAt: !1031)
!1038 = !DILocation(line: 862, column: 22, scope: !1036, inlinedAt: !1031)
!1039 = !DILocation(line: 862, column: 7, scope: !1014, inlinedAt: !1031)
!1040 = !DILocation(line: 868, column: 7, scope: !1041, inlinedAt: !1031)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !102, line: 863, column: 5)
!1042 = !DILocation(line: 870, column: 5, scope: !1041, inlinedAt: !1031)
!1043 = !DILocation(line: 875, column: 3, scope: !1014, inlinedAt: !1031)
!1044 = !DILocation(line: 877, column: 3, scope: !1014, inlinedAt: !1031)
!1045 = !DILocation(line: 141, column: 3, scope: !984)
!1046 = !DISubprogram(name: "dcgettext", scope: !1047, file: !1047, line: 51, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!124, !130, !130, !103}
!1050 = !DISubprogram(name: "__fprintf_chk", scope: !1051, file: !1051, line: 93, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!103, !1054, !103, !1055, null}
!1054 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!1055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1056 = !DISubprogram(name: "__printf_chk", scope: !1051, file: !1051, line: 95, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!103, !103, !1055, null}
!1059 = !DISubprogram(name: "fputs_unlocked", scope: !1060, file: !1060, line: 691, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!103, !1055, !1054}
!1063 = !DILocation(line: 0, scope: !213)
!1064 = !DILocation(line: 581, column: 7, scope: !221)
!1065 = !{!1066, !1066, i64 0}
!1066 = !{!"int", !997, i64 0}
!1067 = !DILocation(line: 581, column: 19, scope: !221)
!1068 = !DILocation(line: 581, column: 7, scope: !213)
!1069 = !DILocation(line: 585, column: 26, scope: !220)
!1070 = !DILocation(line: 0, scope: !220)
!1071 = !DILocation(line: 586, column: 23, scope: !220)
!1072 = !DILocation(line: 586, column: 28, scope: !220)
!1073 = !DILocation(line: 586, column: 32, scope: !220)
!1074 = !{!997, !997, i64 0}
!1075 = !DILocation(line: 586, column: 38, scope: !220)
!1076 = !DILocalVariable(name: "__s1", arg: 1, scope: !1077, file: !1078, line: 1359, type: !130)
!1077 = distinct !DISubprogram(name: "streq", scope: !1078, file: !1078, line: 1359, type: !1079, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1081)
!1078 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!223, !130, !130}
!1081 = !{!1076, !1082}
!1082 = !DILocalVariable(name: "__s2", arg: 2, scope: !1077, file: !1078, line: 1359, type: !130)
!1083 = !DILocation(line: 0, scope: !1077, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 586, column: 41, scope: !220)
!1085 = !DILocation(line: 1361, column: 11, scope: !1077, inlinedAt: !1084)
!1086 = !DILocation(line: 1361, column: 10, scope: !1077, inlinedAt: !1084)
!1087 = !DILocation(line: 586, column: 19, scope: !220)
!1088 = !DILocation(line: 587, column: 5, scope: !220)
!1089 = !DILocation(line: 588, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !213, file: !102, line: 588, column: 7)
!1091 = !DILocation(line: 588, column: 7, scope: !213)
!1092 = !DILocation(line: 590, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 589, column: 5)
!1094 = !DILocation(line: 591, column: 7, scope: !1093)
!1095 = !DILocation(line: 595, column: 37, scope: !213)
!1096 = !DILocation(line: 595, column: 35, scope: !213)
!1097 = !DILocation(line: 596, column: 29, scope: !213)
!1098 = !DILocation(line: 597, column: 8, scope: !229)
!1099 = !DILocation(line: 597, column: 7, scope: !213)
!1100 = !DILocation(line: 604, column: 24, scope: !228)
!1101 = !DILocation(line: 604, column: 12, scope: !229)
!1102 = !DILocation(line: 0, scope: !227)
!1103 = !DILocation(line: 610, column: 16, scope: !227)
!1104 = !DILocation(line: 610, column: 7, scope: !227)
!1105 = !DILocation(line: 611, column: 21, scope: !227)
!1106 = !{!1107, !1107, i64 0}
!1107 = !{!"short", !997, i64 0}
!1108 = !DILocation(line: 611, column: 19, scope: !227)
!1109 = !DILocation(line: 611, column: 16, scope: !227)
!1110 = !DILocation(line: 610, column: 30, scope: !227)
!1111 = distinct !{!1111, !1104, !1105, !1112}
!1112 = !{!"llvm.loop.mustprogress"}
!1113 = !DILocation(line: 612, column: 18, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !227, file: !102, line: 612, column: 11)
!1115 = !DILocation(line: 612, column: 11, scope: !227)
!1116 = !DILocation(line: 620, column: 23, scope: !213)
!1117 = !DILocation(line: 625, column: 39, scope: !213)
!1118 = !DILocation(line: 626, column: 3, scope: !213)
!1119 = !DILocation(line: 626, column: 10, scope: !213)
!1120 = !DILocation(line: 626, column: 21, scope: !213)
!1121 = !DILocation(line: 628, column: 44, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !102, line: 628, column: 11)
!1123 = distinct !DILexicalBlock(scope: !213, file: !102, line: 627, column: 5)
!1124 = !DILocation(line: 628, column: 32, scope: !1122)
!1125 = !DILocation(line: 628, column: 49, scope: !1122)
!1126 = !DILocation(line: 628, column: 11, scope: !1123)
!1127 = !DILocation(line: 630, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !102, line: 630, column: 11)
!1129 = !DILocation(line: 630, column: 11, scope: !1123)
!1130 = !DILocation(line: 632, column: 26, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !102, line: 632, column: 15)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !102, line: 631, column: 9)
!1133 = !DILocation(line: 632, column: 34, scope: !1131)
!1134 = !DILocation(line: 632, column: 37, scope: !1131)
!1135 = !DILocation(line: 632, column: 15, scope: !1132)
!1136 = !DILocation(line: 636, column: 16, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !102, line: 636, column: 15)
!1138 = !DILocation(line: 636, column: 29, scope: !1137)
!1139 = !DILocation(line: 640, column: 16, scope: !1123)
!1140 = distinct !{!1140, !1118, !1141, !1112}
!1141 = !DILocation(line: 641, column: 5, scope: !213)
!1142 = !DILocation(line: 644, column: 3, scope: !213)
!1143 = !DILocation(line: 0, scope: !1077, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 648, column: 31, scope: !213)
!1145 = !DILocation(line: 0, scope: !1077, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 649, column: 31, scope: !213)
!1147 = !DILocation(line: 0, scope: !1077, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 650, column: 31, scope: !213)
!1149 = !DILocation(line: 0, scope: !1077, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 651, column: 31, scope: !213)
!1151 = !DILocation(line: 0, scope: !1077, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 652, column: 31, scope: !213)
!1153 = !DILocation(line: 0, scope: !1077, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 653, column: 31, scope: !213)
!1155 = !DILocation(line: 0, scope: !1077, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 654, column: 31, scope: !213)
!1157 = !DILocation(line: 0, scope: !1077, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 655, column: 31, scope: !213)
!1159 = !DILocation(line: 0, scope: !1077, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 656, column: 31, scope: !213)
!1161 = !DILocation(line: 0, scope: !1077, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 657, column: 31, scope: !213)
!1163 = !DILocation(line: 663, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !213, file: !102, line: 663, column: 7)
!1165 = !DILocation(line: 664, column: 7, scope: !1164)
!1166 = !DILocation(line: 664, column: 10, scope: !1164)
!1167 = !DILocation(line: 663, column: 7, scope: !213)
!1168 = !DILocation(line: 669, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !102, line: 665, column: 5)
!1170 = !DILocation(line: 671, column: 5, scope: !1169)
!1171 = !DILocation(line: 676, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !102, line: 673, column: 5)
!1173 = !DILocation(line: 679, column: 3, scope: !213)
!1174 = !DILocation(line: 683, column: 3, scope: !213)
!1175 = !DILocation(line: 686, column: 3, scope: !213)
!1176 = !DILocation(line: 688, column: 3, scope: !213)
!1177 = !DILocation(line: 691, column: 3, scope: !213)
!1178 = !DILocation(line: 695, column: 3, scope: !213)
!1179 = !DILocation(line: 696, column: 1, scope: !213)
!1180 = !DISubprogram(name: "setlocale", scope: !1181, file: !1181, line: 122, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1181 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!124, !103, !130}
!1184 = !DISubprogram(name: "strncmp", scope: !1185, file: !1185, line: 159, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1185 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!103, !130, !130, !127}
!1188 = !DISubprogram(name: "exit", scope: !1189, file: !1189, line: 624, type: !985, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1189 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1190 = !DISubprogram(name: "getenv", scope: !1189, file: !1189, line: 641, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!124, !130}
!1193 = !DISubprogram(name: "strcmp", scope: !1185, file: !1185, line: 156, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!103, !130, !130}
!1196 = !DISubprogram(name: "strspn", scope: !1185, file: !1185, line: 297, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!129, !130, !130}
!1199 = !DISubprogram(name: "strchr", scope: !1185, file: !1185, line: 246, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!124, !130, !103}
!1202 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1208 = !DISubprogram(name: "strcspn", scope: !1185, file: !1185, line: 293, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubprogram(name: "fwrite_unlocked", scope: !1060, file: !1060, line: 704, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!127, !1212, !127, !127, !1054}
!1212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1215 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 145, type: !1216, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1219)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!103, !103, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1233, !1245, !1246, !1248}
!1220 = !DILocalVariable(name: "argc", arg: 1, scope: !1215, file: !2, line: 145, type: !103)
!1221 = !DILocalVariable(name: "argv", arg: 2, scope: !1215, file: !2, line: 145, type: !1218)
!1222 = !DILocalVariable(name: "optc", scope: !1215, file: !2, line: 147, type: !103)
!1223 = !DILocalVariable(name: "selinux_enabled", scope: !1215, file: !2, line: 148, type: !103)
!1224 = !DILocalVariable(name: "smack_enabled", scope: !1215, file: !2, line: 149, type: !223)
!1225 = !DILocalVariable(name: "n_ids", scope: !1215, file: !2, line: 207, type: !127)
!1226 = !DILocalVariable(name: "default_format", scope: !1215, file: !2, line: 216, type: !223)
!1227 = !DILocalVariable(name: "pw_name", scope: !1228, file: !2, line: 257, type: !124)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 256, column: 9)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 255, column: 7)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 255, column: 7)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 247, column: 5)
!1232 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 246, column: 7)
!1233 = !DILocalVariable(name: "pwd", scope: !1228, file: !2, line: 258, type: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1236, line: 49, size: 384, elements: !1237)
!1236 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1235, file: !1236, line: 51, baseType: !124, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1235, file: !1236, line: 52, baseType: !124, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1235, file: !1236, line: 54, baseType: !202, size: 32, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1235, file: !1236, line: 55, baseType: !208, size: 32, offset: 160)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1235, file: !1236, line: 56, baseType: !124, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1235, file: !1236, line: 57, baseType: !124, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1235, file: !1236, line: 58, baseType: !124, size: 64, offset: 320)
!1245 = !DILocalVariable(name: "spec", scope: !1228, file: !2, line: 259, type: !130)
!1246 = !DILocalVariable(name: "NO_UID", scope: !1247, file: !2, line: 291, type: !200)
!1247 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 287, column: 5)
!1248 = !DILocalVariable(name: "NO_GID", scope: !1247, file: !2, line: 292, type: !207)
!1249 = distinct !DIAssignID()
!1250 = !DILocation(line: 0, scope: !1228)
!1251 = !DILocation(line: 0, scope: !1215)
!1252 = !DILocation(line: 152, column: 21, scope: !1215)
!1253 = !DILocation(line: 152, column: 3, scope: !1215)
!1254 = !DILocation(line: 153, column: 3, scope: !1215)
!1255 = !DILocation(line: 154, column: 3, scope: !1215)
!1256 = !DILocation(line: 155, column: 3, scope: !1215)
!1257 = !DILocation(line: 157, column: 3, scope: !1215)
!1258 = !DILocation(line: 159, column: 3, scope: !1215)
!1259 = !DILocation(line: 159, column: 18, scope: !1215)
!1260 = !DILocation(line: 176, column: 13, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 175, column: 15)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 162, column: 9)
!1263 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 160, column: 5)
!1264 = !DILocation(line: 187, column: 11, scope: !1262)
!1265 = !DILocation(line: 190, column: 11, scope: !1262)
!1266 = !DILocation(line: 193, column: 11, scope: !1262)
!1267 = !DILocation(line: 196, column: 11, scope: !1262)
!1268 = !DILocation(line: 199, column: 11, scope: !1262)
!1269 = !DILocation(line: 200, column: 9, scope: !1262)
!1270 = !DILocation(line: 201, column: 9, scope: !1262)
!1271 = !DILocation(line: 203, column: 11, scope: !1262)
!1272 = !DILocation(line: 0, scope: !1262)
!1273 = distinct !{!1273, !1258, !1274, !1112}
!1274 = !DILocation(line: 205, column: 5, scope: !1215)
!1275 = !DILocation(line: 207, column: 25, scope: !1215)
!1276 = !DILocation(line: 207, column: 23, scope: !1215)
!1277 = !DILocation(line: 207, column: 18, scope: !1215)
!1278 = !DILocation(line: 213, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 213, column: 7)
!1280 = !DILocation(line: 213, column: 19, scope: !1279)
!1281 = !DILocation(line: 213, column: 17, scope: !1279)
!1282 = !DILocation(line: 213, column: 32, scope: !1279)
!1283 = !DILocation(line: 213, column: 30, scope: !1279)
!1284 = !DILocation(line: 213, column: 63, scope: !1279)
!1285 = !DILocation(line: 213, column: 7, scope: !1215)
!1286 = !DILocation(line: 214, column: 5, scope: !1279)
!1287 = !DILocation(line: 217, column: 28, scope: !1215)
!1288 = !DILocation(line: 221, column: 22, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 221, column: 7)
!1290 = !DILocation(line: 234, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 234, column: 7)
!1292 = !DILocation(line: 246, column: 7, scope: !1215)
!1293 = !DILocation(line: 221, column: 26, scope: !1289)
!1294 = !DILocation(line: 221, column: 35, scope: !1289)
!1295 = !DILocation(line: 221, column: 38, scope: !1289)
!1296 = !DILocation(line: 221, column: 7, scope: !1215)
!1297 = !DILocation(line: 222, column: 5, scope: !1289)
!1298 = !DILocation(line: 225, column: 25, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 225, column: 7)
!1300 = !DILocation(line: 225, column: 7, scope: !1215)
!1301 = !DILocation(line: 226, column: 5, scope: !1299)
!1302 = !DILocation(line: 235, column: 7, scope: !1291)
!1303 = !DILocation(line: 236, column: 35, scope: !1291)
!1304 = !DILocation(line: 248, column: 30, scope: !1231)
!1305 = !DILocation(line: 248, column: 22, scope: !1231)
!1306 = !{!1307, !1307, i64 0}
!1307 = !{!"_Bool", !997, i64 0}
!1308 = !DILocation(line: 253, column: 16, scope: !1231)
!1309 = !DILocation(line: 253, column: 13, scope: !1231)
!1310 = !DILocation(line: 255, column: 21, scope: !1229)
!1311 = !DILocation(line: 255, column: 7, scope: !1230)
!1312 = !DILocation(line: 257, column: 11, scope: !1228)
!1313 = !DILocation(line: 257, column: 17, scope: !1228)
!1314 = distinct !DIAssignID()
!1315 = !DILocation(line: 259, column: 30, scope: !1228)
!1316 = !DILocation(line: 263, column: 15, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 263, column: 15)
!1318 = !DILocation(line: 263, column: 15, scope: !1228)
!1319 = !DILocation(line: 265, column: 21, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 265, column: 19)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 264, column: 13)
!1322 = !DILocation(line: 265, column: 19, scope: !1321)
!1323 = !DILocation(line: 266, column: 23, scope: !1320)
!1324 = !DILocation(line: 266, column: 33, scope: !1320)
!1325 = !DILocation(line: 266, column: 64, scope: !1320)
!1326 = !DILocation(line: 266, column: 54, scope: !1320)
!1327 = !DILocation(line: 268, column: 19, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 268, column: 15)
!1329 = !DILocation(line: 268, column: 15, scope: !1228)
!1330 = !DILocation(line: 270, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 269, column: 13)
!1332 = !DILocation(line: 271, column: 18, scope: !1331)
!1333 = !DILocation(line: 272, column: 13, scope: !1331)
!1334 = !DILocation(line: 275, column: 20, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 275, column: 19)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 274, column: 13)
!1337 = !DILocation(line: 275, column: 19, scope: !1336)
!1338 = !DILocation(line: 276, column: 41, scope: !1335)
!1339 = !{!1340, !996, i64 0}
!1340 = !{!"passwd", !996, i64 0, !996, i64 8, !1066, i64 16, !1066, i64 20, !996, i64 24, !996, i64 32, !996, i64 40}
!1341 = !DILocation(line: 276, column: 27, scope: !1335)
!1342 = !DILocation(line: 276, column: 25, scope: !1335)
!1343 = distinct !DIAssignID()
!1344 = !DILocation(line: 276, column: 17, scope: !1335)
!1345 = !DILocation(line: 279, column: 28, scope: !1336)
!1346 = !DILocation(line: 277, column: 34, scope: !1336)
!1347 = !{!1340, !1066, i64 16}
!1348 = !DILocation(line: 277, column: 27, scope: !1336)
!1349 = !DILocation(line: 277, column: 20, scope: !1336)
!1350 = !DILocation(line: 278, column: 34, scope: !1336)
!1351 = !{!1340, !1066, i64 20}
!1352 = !DILocation(line: 278, column: 27, scope: !1336)
!1353 = !DILocation(line: 278, column: 20, scope: !1336)
!1354 = !DILocation(line: 279, column: 15, scope: !1336)
!1355 = !DILocation(line: 280, column: 19, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 280, column: 19)
!1357 = !DILocalVariable(name: "__stream", arg: 1, scope: !1358, file: !1359, line: 135, type: !236)
!1358 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1359, file: !1359, line: 135, type: !1360, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1362)
!1359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!103, !236}
!1362 = !{!1357}
!1363 = !DILocation(line: 0, scope: !1358, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 280, column: 19, scope: !1356)
!1365 = !DILocation(line: 137, column: 10, scope: !1358, inlinedAt: !1364)
!1366 = !{!1367, !1066, i64 0}
!1367 = !{!"_IO_FILE", !1066, i64 0, !996, i64 8, !996, i64 16, !996, i64 24, !996, i64 32, !996, i64 40, !996, i64 48, !996, i64 56, !996, i64 64, !996, i64 72, !996, i64 80, !996, i64 88, !996, i64 96, !996, i64 104, !1066, i64 112, !1066, i64 116, !1368, i64 120, !1107, i64 128, !997, i64 130, !997, i64 131, !996, i64 136, !1368, i64 144, !996, i64 152, !996, i64 160, !996, i64 168, !996, i64 176, !1368, i64 184, !1066, i64 192, !997, i64 196}
!1368 = !{!"long", !997, i64 0}
!1369 = !DILocation(line: 280, column: 19, scope: !1336)
!1370 = !DILocation(line: 948, column: 21, scope: !1371, inlinedAt: !1374)
!1371 = distinct !DISubprogram(name: "write_error", scope: !102, file: !102, line: 946, type: !558, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1372)
!1372 = !{!1373}
!1373 = !DILocalVariable(name: "saved_errno", scope: !1371, file: !102, line: 948, type: !103)
!1374 = distinct !DILocation(line: 281, column: 17, scope: !1356)
!1375 = !DILocation(line: 0, scope: !1371, inlinedAt: !1374)
!1376 = !DILocation(line: 949, column: 3, scope: !1371, inlinedAt: !1374)
!1377 = !DILocation(line: 950, column: 11, scope: !1371, inlinedAt: !1374)
!1378 = !DILocation(line: 950, column: 3, scope: !1371, inlinedAt: !1374)
!1379 = !DILocation(line: 951, column: 3, scope: !1371, inlinedAt: !1374)
!1380 = !DILocation(line: 952, column: 3, scope: !1371, inlinedAt: !1374)
!1381 = !DILocation(line: 283, column: 17, scope: !1228)
!1382 = !DILocation(line: 283, column: 11, scope: !1228)
!1383 = !DILocation(line: 284, column: 9, scope: !1229)
!1384 = !DILocation(line: 255, column: 36, scope: !1229)
!1385 = !DILocation(line: 255, column: 14, scope: !1229)
!1386 = distinct !{!1386, !1311, !1387, !1112}
!1387 = !DILocation(line: 284, column: 9, scope: !1230)
!1388 = !DILocation(line: 0, scope: !1247)
!1389 = !DILocation(line: 294, column: 11, scope: !1247)
!1390 = !DILocation(line: 294, column: 24, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 294, column: 11)
!1392 = !DILocation(line: 294, column: 11, scope: !1391)
!1393 = !DILocation(line: 295, column: 25, scope: !1391)
!1394 = !DILocation(line: 297, column: 11, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 296, column: 9)
!1396 = !DILocation(line: 297, column: 17, scope: !1395)
!1397 = !DILocation(line: 298, column: 18, scope: !1395)
!1398 = !DILocation(line: 298, column: 16, scope: !1395)
!1399 = !DILocation(line: 299, column: 20, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 299, column: 15)
!1401 = !DILocation(line: 299, column: 30, scope: !1400)
!1402 = !DILocation(line: 299, column: 33, scope: !1400)
!1403 = !DILocation(line: 299, column: 15, scope: !1395)
!1404 = !DILocation(line: 300, column: 13, scope: !1400)
!1405 = !DILocation(line: 303, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 303, column: 11)
!1407 = !DILocation(line: 303, column: 11, scope: !1247)
!1408 = !DILocation(line: 303, column: 23, scope: !1406)
!1409 = !DILocation(line: 304, column: 14, scope: !1406)
!1410 = !DILocation(line: 304, column: 25, scope: !1406)
!1411 = !DILocation(line: 314, column: 11, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 313, column: 9)
!1413 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 312, column: 11)
!1414 = !DILocation(line: 306, column: 11, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 305, column: 9)
!1416 = !DILocation(line: 306, column: 17, scope: !1415)
!1417 = !DILocation(line: 307, column: 18, scope: !1415)
!1418 = !DILocation(line: 307, column: 16, scope: !1415)
!1419 = !DILocation(line: 308, column: 20, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 308, column: 15)
!1421 = !DILocation(line: 308, column: 30, scope: !1420)
!1422 = !DILocation(line: 308, column: 33, scope: !1420)
!1423 = !DILocation(line: 308, column: 15, scope: !1415)
!1424 = !DILocation(line: 309, column: 13, scope: !1420)
!1425 = !DILocation(line: 312, column: 12, scope: !1413)
!1426 = !DILocation(line: 312, column: 22, scope: !1413)
!1427 = !DILocation(line: 314, column: 17, scope: !1412)
!1428 = !DILocation(line: 315, column: 18, scope: !1412)
!1429 = !DILocation(line: 315, column: 16, scope: !1412)
!1430 = !DILocation(line: 316, column: 20, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 316, column: 15)
!1432 = !DILocation(line: 316, column: 30, scope: !1431)
!1433 = !DILocation(line: 316, column: 33, scope: !1431)
!1434 = !DILocation(line: 316, column: 15, scope: !1412)
!1435 = !DILocation(line: 317, column: 13, scope: !1431)
!1436 = !DILocation(line: 319, column: 17, scope: !1412)
!1437 = !DILocation(line: 320, column: 18, scope: !1412)
!1438 = !DILocation(line: 320, column: 16, scope: !1412)
!1439 = !DILocation(line: 321, column: 20, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 321, column: 15)
!1441 = !DILocation(line: 321, column: 30, scope: !1440)
!1442 = !DILocation(line: 321, column: 33, scope: !1440)
!1443 = !DILocation(line: 321, column: 15, scope: !1412)
!1444 = !DILocation(line: 322, column: 13, scope: !1440)
!1445 = !DILocation(line: 324, column: 9, scope: !1247)
!1446 = !DILocation(line: 327, column: 10, scope: !1215)
!1447 = !{i8 0, i8 2}
!1448 = !DILocation(line: 327, column: 3, scope: !1215)
!1449 = !DISubprogram(name: "bindtextdomain", scope: !1047, file: !1047, line: 86, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!124, !130, !130}
!1452 = !DISubprogram(name: "textdomain", scope: !1047, file: !1047, line: 82, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DISubprogram(name: "atexit", scope: !1189, file: !1189, line: 602, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!103, !557}
!1456 = !DISubprogram(name: "getopt_long", scope: !460, file: !460, line: 66, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!103, !103, !1459, !130, !1461, !465}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1462 = !DISubprogram(name: "getpwnam", scope: !1236, file: !1236, line: 116, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1234, !130}
!1465 = !DISubprogram(name: "getpwuid", scope: !1236, file: !1236, line: 110, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1234, !202}
!1468 = !DISubprogram(name: "__errno_location", scope: !1469, file: !1469, line: 37, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1469 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!465}
!1472 = distinct !DISubprogram(name: "print_stuff", scope: !2, file: !2, line: 431, type: !1015, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1473)
!1473 = !{!1474}
!1474 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1472, file: !2, line: 431, type: !130)
!1475 = distinct !DIAssignID()
!1476 = !DILocation(line: 0, scope: !1472)
!1477 = !DILocation(line: 433, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 433, column: 7)
!1479 = !DILocation(line: 433, column: 7, scope: !1472)
!1480 = !DILocation(line: 434, column: 19, scope: !1478)
!1481 = !DILocalVariable(name: "uid", arg: 1, scope: !1482, file: !2, line: 333, type: !200)
!1482 = distinct !DISubprogram(name: "print_user", scope: !2, file: !2, line: 333, type: !1483, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !200}
!1485 = !{!1481, !1486}
!1486 = !DILocalVariable(name: "pwd", scope: !1482, file: !2, line: 335, type: !1234)
!1487 = !DILocation(line: 0, scope: !1482, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 434, column: 7, scope: !1478)
!1489 = !DILocation(line: 337, column: 7, scope: !1490, inlinedAt: !1488)
!1490 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 337, column: 7)
!1491 = !DILocation(line: 337, column: 7, scope: !1482, inlinedAt: !1488)
!1492 = !DILocation(line: 350, column: 5, scope: !1493, inlinedAt: !1488)
!1493 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 347, column: 7)
!1494 = !DILocation(line: 339, column: 13, scope: !1495, inlinedAt: !1488)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 338, column: 5)
!1496 = !DILocation(line: 340, column: 15, scope: !1497, inlinedAt: !1488)
!1497 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 340, column: 11)
!1498 = !DILocation(line: 340, column: 11, scope: !1495, inlinedAt: !1488)
!1499 = !DILocation(line: 342, column: 11, scope: !1500, inlinedAt: !1488)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 341, column: 9)
!1501 = !DILocation(line: 343, column: 14, scope: !1500, inlinedAt: !1488)
!1502 = !DILocation(line: 344, column: 9, scope: !1500, inlinedAt: !1488)
!1503 = !DILocation(line: 348, column: 5, scope: !1493, inlinedAt: !1488)
!1504 = !DILocation(line: 441, column: 12, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 441, column: 12)
!1506 = !DILocation(line: 441, column: 12, scope: !1478)
!1507 = !DILocation(line: 442, column: 24, scope: !1505)
!1508 = !DILocation(line: 442, column: 48, scope: !1505)
!1509 = !DILocation(line: 442, column: 11, scope: !1505)
!1510 = !DILocation(line: 442, column: 8, scope: !1505)
!1511 = !DILocation(line: 442, column: 5, scope: !1505)
!1512 = !DILocation(line: 443, column: 12, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 443, column: 12)
!1514 = !DILocation(line: 443, column: 12, scope: !1505)
!1515 = !DILocation(line: 444, column: 38, scope: !1513)
!1516 = !DILocation(line: 444, column: 44, scope: !1513)
!1517 = !DILocation(line: 444, column: 50, scope: !1513)
!1518 = !DILocation(line: 445, column: 29, scope: !1513)
!1519 = !DILocation(line: 445, column: 39, scope: !1513)
!1520 = !DILocation(line: 444, column: 11, scope: !1513)
!1521 = !DILocation(line: 444, column: 8, scope: !1513)
!1522 = !DILocation(line: 444, column: 5, scope: !1513)
!1523 = !DILocalVariable(name: "groups", scope: !1524, file: !2, line: 388, type: !936)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 387, column: 3)
!1525 = distinct !DISubprogram(name: "print_full_info", scope: !2, file: !2, line: 356, type: !1015, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1526)
!1526 = !{!1527, !1528, !1529, !1523, !1538, !1539, !1540}
!1527 = !DILocalVariable(name: "username", arg: 1, scope: !1525, file: !2, line: 356, type: !130)
!1528 = !DILocalVariable(name: "pwd", scope: !1525, file: !2, line: 358, type: !1234)
!1529 = !DILocalVariable(name: "grp", scope: !1525, file: !2, line: 359, type: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1532, line: 42, size: 256, elements: !1533)
!1532 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1533 = !{!1534, !1535, !1536, !1537}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1531, file: !1532, line: 44, baseType: !124, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1531, file: !1532, line: 45, baseType: !124, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1531, file: !1532, line: 46, baseType: !208, size: 32, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1531, file: !1532, line: 47, baseType: !1218, size: 64, offset: 192)
!1538 = !DILocalVariable(name: "primary_group", scope: !1524, file: !2, line: 390, type: !207)
!1539 = !DILocalVariable(name: "n_groups", scope: !1524, file: !2, line: 396, type: !103)
!1540 = !DILocalVariable(name: "i", scope: !1541, file: !2, line: 410, type: !103)
!1541 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 410, column: 5)
!1542 = !DILocation(line: 0, scope: !1524, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 449, column: 5, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 446, column: 12)
!1545 = !DILocation(line: 0, scope: !1525, inlinedAt: !1543)
!1546 = !DILocation(line: 361, column: 3, scope: !1525, inlinedAt: !1543)
!1547 = !DILocation(line: 362, column: 19, scope: !1525, inlinedAt: !1543)
!1548 = !DILocation(line: 362, column: 9, scope: !1525, inlinedAt: !1543)
!1549 = !DILocation(line: 363, column: 7, scope: !1550, inlinedAt: !1543)
!1550 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 363, column: 7)
!1551 = !DILocation(line: 363, column: 7, scope: !1525, inlinedAt: !1543)
!1552 = !DILocation(line: 364, column: 5, scope: !1550, inlinedAt: !1543)
!1553 = !DILocation(line: 366, column: 3, scope: !1525, inlinedAt: !1543)
!1554 = !DILocation(line: 367, column: 19, scope: !1525, inlinedAt: !1543)
!1555 = !DILocation(line: 367, column: 9, scope: !1525, inlinedAt: !1543)
!1556 = !DILocation(line: 368, column: 7, scope: !1557, inlinedAt: !1543)
!1557 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 368, column: 7)
!1558 = !DILocation(line: 368, column: 7, scope: !1525, inlinedAt: !1543)
!1559 = !DILocation(line: 369, column: 5, scope: !1557, inlinedAt: !1543)
!1560 = !{!1561, !996, i64 0}
!1561 = !{!"group", !996, i64 0, !996, i64 8, !1066, i64 16, !996, i64 24}
!1562 = !DILocation(line: 371, column: 7, scope: !1563, inlinedAt: !1543)
!1563 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 371, column: 7)
!1564 = !DILocation(line: 371, column: 15, scope: !1563, inlinedAt: !1543)
!1565 = !DILocation(line: 371, column: 12, scope: !1563, inlinedAt: !1543)
!1566 = !DILocation(line: 371, column: 7, scope: !1525, inlinedAt: !1543)
!1567 = !DILocation(line: 373, column: 7, scope: !1568, inlinedAt: !1543)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 372, column: 5)
!1569 = !DILocation(line: 374, column: 23, scope: !1568, inlinedAt: !1543)
!1570 = !DILocation(line: 374, column: 13, scope: !1568, inlinedAt: !1543)
!1571 = !DILocation(line: 375, column: 11, scope: !1572, inlinedAt: !1543)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 375, column: 11)
!1573 = !DILocation(line: 375, column: 11, scope: !1568, inlinedAt: !1543)
!1574 = !DILocation(line: 376, column: 9, scope: !1572, inlinedAt: !1543)
!1575 = !DILocation(line: 379, column: 7, scope: !1576, inlinedAt: !1543)
!1576 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 379, column: 7)
!1577 = !DILocation(line: 379, column: 15, scope: !1576, inlinedAt: !1543)
!1578 = !DILocation(line: 379, column: 12, scope: !1576, inlinedAt: !1543)
!1579 = !DILocation(line: 379, column: 7, scope: !1525, inlinedAt: !1543)
!1580 = !DILocation(line: 381, column: 7, scope: !1581, inlinedAt: !1543)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 380, column: 5)
!1582 = !DILocation(line: 382, column: 23, scope: !1581, inlinedAt: !1543)
!1583 = !DILocation(line: 382, column: 13, scope: !1581, inlinedAt: !1543)
!1584 = !DILocation(line: 383, column: 11, scope: !1585, inlinedAt: !1543)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 383, column: 11)
!1586 = !DILocation(line: 383, column: 11, scope: !1581, inlinedAt: !1543)
!1587 = !DILocation(line: 384, column: 9, scope: !1585, inlinedAt: !1543)
!1588 = !DILocation(line: 388, column: 5, scope: !1524, inlinedAt: !1543)
!1589 = !DILocation(line: 391, column: 9, scope: !1590, inlinedAt: !1543)
!1590 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 391, column: 9)
!1591 = !DILocation(line: 391, column: 9, scope: !1524, inlinedAt: !1543)
!1592 = !DILocation(line: 392, column: 23, scope: !1590, inlinedAt: !1543)
!1593 = !DILocation(line: 392, column: 34, scope: !1590, inlinedAt: !1543)
!1594 = !DILocation(line: 0, scope: !1590, inlinedAt: !1543)
!1595 = !DILocation(line: 396, column: 20, scope: !1524, inlinedAt: !1543)
!1596 = !DILocation(line: 397, column: 18, scope: !1597, inlinedAt: !1543)
!1597 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 397, column: 9)
!1598 = !DILocation(line: 397, column: 9, scope: !1524, inlinedAt: !1543)
!1599 = !DILocation(line: 394, column: 23, scope: !1590, inlinedAt: !1543)
!1600 = !DILocation(line: 400, column: 11, scope: !1601, inlinedAt: !1543)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 399, column: 13)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 398, column: 7)
!1603 = !DILocation(line: 403, column: 11, scope: !1601, inlinedAt: !1543)
!1604 = !DILocation(line: 404, column: 12, scope: !1602, inlinedAt: !1543)
!1605 = !DILocation(line: 405, column: 9, scope: !1602, inlinedAt: !1543)
!1606 = !DILocation(line: 408, column: 18, scope: !1607, inlinedAt: !1543)
!1607 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 408, column: 9)
!1608 = !DILocation(line: 408, column: 9, scope: !1524, inlinedAt: !1543)
!1609 = !DILocation(line: 409, column: 7, scope: !1607, inlinedAt: !1543)
!1610 = !DILocation(line: 0, scope: !1541, inlinedAt: !1543)
!1611 = !DILocation(line: 410, column: 23, scope: !1612, inlinedAt: !1543)
!1612 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 410, column: 5)
!1613 = !DILocation(line: 414, column: 9, scope: !1614, inlinedAt: !1543)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 411, column: 7)
!1615 = !DILocation(line: 415, column: 25, scope: !1614, inlinedAt: !1543)
!1616 = !DILocation(line: 415, column: 15, scope: !1614, inlinedAt: !1543)
!1617 = !DILocation(line: 416, column: 13, scope: !1618, inlinedAt: !1543)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 416, column: 13)
!1619 = !DILocation(line: 416, column: 13, scope: !1614, inlinedAt: !1543)
!1620 = !DILocation(line: 417, column: 11, scope: !1618, inlinedAt: !1543)
!1621 = !DILocation(line: 410, column: 5, scope: !1541, inlinedAt: !1543)
!1622 = !DILocation(line: 419, column: 11, scope: !1524, inlinedAt: !1543)
!1623 = !DILocation(line: 419, column: 5, scope: !1524, inlinedAt: !1543)
!1624 = !DILocation(line: 420, column: 3, scope: !1525, inlinedAt: !1543)
!1625 = !DILocalVariable(name: "__c", arg: 1, scope: !1626, file: !1359, line: 108, type: !103)
!1626 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1359, file: !1359, line: 108, type: !1627, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!103, !103}
!1629 = !{!1625}
!1630 = !DILocation(line: 0, scope: !1626, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 413, column: 11, scope: !1632, inlinedAt: !1543)
!1632 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 412, column: 13)
!1633 = !DILocation(line: 110, column: 10, scope: !1626, inlinedAt: !1631)
!1634 = !{!1367, !996, i64 40}
!1635 = !{!1367, !996, i64 48}
!1636 = !{!"branch_weights", i32 2000, i32 1}
!1637 = !DILocation(line: 410, column: 36, scope: !1612, inlinedAt: !1543)
!1638 = distinct !{!1638, !1621, !1639, !1112, !1640}
!1639 = !DILocation(line: 418, column: 7, scope: !1541, inlinedAt: !1543)
!1640 = !{!"llvm.loop.peeled.count", i32 1}
!1641 = !DILocation(line: 454, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 454, column: 7)
!1643 = !DILocation(line: 454, column: 16, scope: !1642)
!1644 = !DILocation(line: 454, column: 19, scope: !1642)
!1645 = !DILocation(line: 454, column: 35, scope: !1642)
!1646 = !DILocation(line: 0, scope: !1626, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 456, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 455, column: 5)
!1649 = !DILocation(line: 110, column: 10, scope: !1626, inlinedAt: !1647)
!1650 = !DILocation(line: 0, scope: !1626, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 457, column: 7, scope: !1648)
!1652 = !DILocation(line: 110, column: 10, scope: !1626, inlinedAt: !1651)
!1653 = !DILocation(line: 461, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 460, column: 5)
!1655 = !DILocation(line: 0, scope: !1626, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 461, column: 7, scope: !1654)
!1657 = !DILocation(line: 110, column: 10, scope: !1626, inlinedAt: !1656)
!1658 = !DILocation(line: 463, column: 1, scope: !1472)
!1659 = !DISubprogram(name: "fflush_unlocked", scope: !1060, file: !1060, line: 239, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1660 = !DISubprogram(name: "clearerr_unlocked", scope: !1060, file: !1060, line: 794, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !236}
!1663 = !DISubprogram(name: "free", scope: !1189, file: !1189, line: 555, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !125}
!1666 = !DISubprogram(name: "geteuid", scope: !1667, file: !1667, line: 700, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1667 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!202}
!1670 = !DISubprogram(name: "getuid", scope: !1667, file: !1667, line: 697, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1671 = !DISubprogram(name: "getegid", scope: !1667, file: !1667, line: 706, type: !1672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!208}
!1674 = !DISubprogram(name: "getgid", scope: !1667, file: !1667, line: 703, type: !1672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !DISubprogram(name: "getgrgid", scope: !1532, file: !1532, line: 101, type: !1676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!1530, !208}
!1678 = !DISubprogram(name: "__overflow", scope: !1060, file: !1060, line: 886, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!103, !236, !103}
!1681 = distinct !DISubprogram(name: "print_group_list", scope: !475, file: !475, line: 35, type: !1682, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !1684)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!223, !130, !200, !207, !207, !223, !4}
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1703, !1705, !1706}
!1685 = !DILocalVariable(name: "username", arg: 1, scope: !1681, file: !475, line: 35, type: !130)
!1686 = !DILocalVariable(name: "ruid", arg: 2, scope: !1681, file: !475, line: 36, type: !200)
!1687 = !DILocalVariable(name: "rgid", arg: 3, scope: !1681, file: !475, line: 36, type: !207)
!1688 = !DILocalVariable(name: "egid", arg: 4, scope: !1681, file: !475, line: 36, type: !207)
!1689 = !DILocalVariable(name: "use_names", arg: 5, scope: !1681, file: !475, line: 37, type: !223)
!1690 = !DILocalVariable(name: "delim", arg: 6, scope: !1681, file: !475, line: 37, type: !4)
!1691 = !DILocalVariable(name: "ok", scope: !1681, file: !475, line: 39, type: !223)
!1692 = !DILocalVariable(name: "pwd", scope: !1681, file: !475, line: 40, type: !1693)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1236, line: 49, size: 384, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1694, file: !1236, line: 51, baseType: !124, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1694, file: !1236, line: 52, baseType: !124, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1694, file: !1236, line: 54, baseType: !202, size: 32, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1694, file: !1236, line: 55, baseType: !208, size: 32, offset: 160)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1694, file: !1236, line: 56, baseType: !124, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1694, file: !1236, line: 57, baseType: !124, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1694, file: !1236, line: 58, baseType: !124, size: 64, offset: 320)
!1703 = !DILocalVariable(name: "groups", scope: !1704, file: !475, line: 60, type: !936)
!1704 = distinct !DILexicalBlock(scope: !1681, file: !475, line: 59, column: 3)
!1705 = !DILocalVariable(name: "n_groups", scope: !1704, file: !475, line: 62, type: !103)
!1706 = !DILocalVariable(name: "i", scope: !1707, file: !475, line: 77, type: !103)
!1707 = distinct !DILexicalBlock(scope: !1704, file: !475, line: 77, column: 5)
!1708 = distinct !DIAssignID()
!1709 = !DILocation(line: 0, scope: !1704)
!1710 = !DILocation(line: 0, scope: !1681)
!1711 = !DILocation(line: 42, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1681, file: !475, line: 42, column: 7)
!1713 = !DILocation(line: 42, column: 7, scope: !1681)
!1714 = !DILocation(line: 44, column: 13, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !475, line: 43, column: 5)
!1716 = !DILocation(line: 45, column: 15, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1715, file: !475, line: 45, column: 11)
!1718 = !DILocation(line: 45, column: 11, scope: !1715)
!1719 = !DILocalVariable(name: "gid", arg: 1, scope: !1720, file: !475, line: 91, type: !207)
!1720 = distinct !DISubprogram(name: "print_group", scope: !475, file: !475, line: 91, type: !1721, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!223, !207, !223}
!1723 = !{!1719, !1724, !1725, !1733, !1734}
!1724 = !DILocalVariable(name: "use_name", arg: 2, scope: !1720, file: !475, line: 91, type: !223)
!1725 = !DILocalVariable(name: "grp", scope: !1720, file: !475, line: 93, type: !1726)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1532, line: 42, size: 256, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1727, file: !1532, line: 44, baseType: !124, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1727, file: !1532, line: 45, baseType: !124, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1727, file: !1532, line: 46, baseType: !208, size: 32, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1727, file: !1532, line: 47, baseType: !1218, size: 64, offset: 192)
!1733 = !DILocalVariable(name: "ok", scope: !1720, file: !475, line: 94, type: !223)
!1734 = !DILocalVariable(name: "g", scope: !1735, file: !475, line: 108, type: !133)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !475, line: 107, column: 13)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !475, line: 101, column: 15)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !475, line: 100, column: 9)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !475, line: 99, column: 11)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !475, line: 97, column: 5)
!1740 = distinct !DILexicalBlock(scope: !1720, file: !475, line: 96, column: 7)
!1741 = !DILocation(line: 0, scope: !1720, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 49, column: 8, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1681, file: !475, line: 49, column: 7)
!1744 = !DILocation(line: 96, column: 7, scope: !1720, inlinedAt: !1742)
!1745 = !DILocation(line: 118, column: 5, scope: !1746, inlinedAt: !1742)
!1746 = distinct !DILexicalBlock(scope: !1720, file: !475, line: 115, column: 7)
!1747 = !DILocation(line: 49, column: 7, scope: !1681)
!1748 = !DILocation(line: 98, column: 13, scope: !1739, inlinedAt: !1742)
!1749 = !DILocation(line: 99, column: 15, scope: !1738, inlinedAt: !1742)
!1750 = !DILocation(line: 99, column: 11, scope: !1739, inlinedAt: !1742)
!1751 = !DILocation(line: 116, column: 5, scope: !1746, inlinedAt: !1742)
!1752 = !DILocation(line: 108, column: 29, scope: !1735, inlinedAt: !1742)
!1753 = !DILocation(line: 0, scope: !1735, inlinedAt: !1742)
!1754 = !DILocation(line: 109, column: 15, scope: !1735, inlinedAt: !1742)
!1755 = !DILocation(line: 52, column: 12, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1681, file: !475, line: 52, column: 7)
!1757 = !DILocation(line: 52, column: 7, scope: !1681)
!1758 = !DILocalVariable(name: "__c", arg: 1, scope: !1759, file: !1359, line: 108, type: !103)
!1759 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1359, file: !1359, line: 108, type: !1627, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !1760)
!1760 = !{!1758}
!1761 = !DILocation(line: 0, scope: !1759, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 54, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1756, file: !475, line: 53, column: 5)
!1764 = !DILocation(line: 110, column: 10, scope: !1759, inlinedAt: !1762)
!1765 = !DILocation(line: 54, column: 7, scope: !1763)
!1766 = !DILocation(line: 0, scope: !1720, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 55, column: 12, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !475, line: 55, column: 11)
!1769 = !DILocation(line: 96, column: 7, scope: !1720, inlinedAt: !1767)
!1770 = !DILocation(line: 118, column: 5, scope: !1746, inlinedAt: !1767)
!1771 = !DILocation(line: 55, column: 11, scope: !1763)
!1772 = !DILocation(line: 98, column: 13, scope: !1739, inlinedAt: !1767)
!1773 = !DILocation(line: 99, column: 15, scope: !1738, inlinedAt: !1767)
!1774 = !DILocation(line: 99, column: 11, scope: !1739, inlinedAt: !1767)
!1775 = !DILocation(line: 116, column: 5, scope: !1746, inlinedAt: !1767)
!1776 = !DILocation(line: 108, column: 29, scope: !1735, inlinedAt: !1767)
!1777 = !DILocation(line: 0, scope: !1735, inlinedAt: !1767)
!1778 = !DILocation(line: 109, column: 15, scope: !1735, inlinedAt: !1767)
!1779 = !DILocation(line: 60, column: 5, scope: !1704)
!1780 = !DILocation(line: 62, column: 43, scope: !1704)
!1781 = !DILocation(line: 62, column: 54, scope: !1704)
!1782 = !DILocation(line: 62, column: 20, scope: !1704)
!1783 = !DILocation(line: 63, column: 18, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1704, file: !475, line: 63, column: 9)
!1785 = !DILocation(line: 63, column: 9, scope: !1704)
!1786 = !DILocation(line: 0, scope: !1707)
!1787 = !DILocation(line: 77, column: 23, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1707, file: !475, line: 77, column: 5)
!1789 = !DILocation(line: 77, column: 5, scope: !1707)
!1790 = !DILocation(line: 0, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !475, line: 65, column: 13)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !475, line: 64, column: 7)
!1793 = !DILocation(line: 65, column: 13, scope: !1792)
!1794 = !DILocation(line: 67, column: 13, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !475, line: 66, column: 11)
!1796 = !DILocation(line: 69, column: 11, scope: !1795)
!1797 = !DILocation(line: 72, column: 13, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1791, file: !475, line: 71, column: 11)
!1799 = !DILocation(line: 46, column: 12, scope: !1717)
!1800 = !DILocation(line: 84, column: 11, scope: !1704)
!1801 = !DILocation(line: 84, column: 5, scope: !1704)
!1802 = !DILocation(line: 85, column: 3, scope: !1681)
!1803 = !DILocation(line: 78, column: 11, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1788, file: !475, line: 78, column: 11)
!1805 = !DILocation(line: 78, column: 21, scope: !1804)
!1806 = !DILocation(line: 78, column: 29, scope: !1804)
!1807 = !DILocation(line: 0, scope: !1759, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 80, column: 11, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1804, file: !475, line: 79, column: 9)
!1810 = !DILocation(line: 110, column: 10, scope: !1759, inlinedAt: !1808)
!1811 = !DILocation(line: 81, column: 29, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1809, file: !475, line: 81, column: 15)
!1813 = !DILocation(line: 0, scope: !1720, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 81, column: 16, scope: !1812)
!1815 = !DILocation(line: 96, column: 7, scope: !1720, inlinedAt: !1814)
!1816 = !DILocation(line: 118, column: 5, scope: !1746, inlinedAt: !1814)
!1817 = !DILocation(line: 81, column: 15, scope: !1809)
!1818 = !DILocation(line: 98, column: 13, scope: !1739, inlinedAt: !1814)
!1819 = !DILocation(line: 99, column: 15, scope: !1738, inlinedAt: !1814)
!1820 = !DILocation(line: 99, column: 11, scope: !1739, inlinedAt: !1814)
!1821 = !DILocation(line: 116, column: 5, scope: !1746, inlinedAt: !1814)
!1822 = !DILocation(line: 108, column: 29, scope: !1735, inlinedAt: !1814)
!1823 = !DILocation(line: 0, scope: !1735, inlinedAt: !1814)
!1824 = !DILocation(line: 109, column: 15, scope: !1735, inlinedAt: !1814)
!1825 = !DILocation(line: 77, column: 36, scope: !1788)
!1826 = distinct !{!1826, !1789, !1827, !1112}
!1827 = !DILocation(line: 83, column: 9, scope: !1707)
!1828 = !DILocation(line: 87, column: 1, scope: !1681)
!1829 = !DILocation(line: 0, scope: !1720)
!1830 = !DILocation(line: 96, column: 7, scope: !1720)
!1831 = !DILocation(line: 118, column: 5, scope: !1746)
!1832 = !DILocation(line: 98, column: 13, scope: !1739)
!1833 = !DILocation(line: 99, column: 15, scope: !1738)
!1834 = !DILocation(line: 99, column: 11, scope: !1739)
!1835 = !DILocation(line: 108, column: 29, scope: !1735)
!1836 = !DILocation(line: 0, scope: !1735)
!1837 = !DILocation(line: 109, column: 15, scope: !1735)
!1838 = !DILocation(line: 112, column: 9, scope: !1737)
!1839 = !DILocation(line: 116, column: 5, scope: !1746)
!1840 = !DILocation(line: 119, column: 3, scope: !1720)
!1841 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !497, file: !497, line: 50, type: !1015, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1842)
!1842 = !{!1843}
!1843 = !DILocalVariable(name: "file", arg: 1, scope: !1841, file: !497, line: 50, type: !130)
!1844 = !DILocation(line: 0, scope: !1841)
!1845 = !DILocation(line: 52, column: 13, scope: !1841)
!1846 = !DILocation(line: 53, column: 1, scope: !1841)
!1847 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !497, file: !497, line: 87, type: !1848, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !223}
!1850 = !{!1851}
!1851 = !DILocalVariable(name: "ignore", arg: 1, scope: !1847, file: !497, line: 87, type: !223)
!1852 = !DILocation(line: 0, scope: !1847)
!1853 = !DILocation(line: 89, column: 16, scope: !1847)
!1854 = !DILocation(line: 90, column: 1, scope: !1847)
!1855 = distinct !DISubprogram(name: "close_stdout", scope: !497, file: !497, line: 116, type: !558, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1856)
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "write_error", scope: !1858, file: !497, line: 121, type: !130)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !497, line: 120, column: 5)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !497, line: 118, column: 7)
!1860 = !DILocation(line: 118, column: 21, scope: !1859)
!1861 = !DILocation(line: 118, column: 7, scope: !1859)
!1862 = !DILocation(line: 118, column: 29, scope: !1859)
!1863 = !DILocation(line: 119, column: 7, scope: !1859)
!1864 = !DILocation(line: 119, column: 12, scope: !1859)
!1865 = !DILocation(line: 119, column: 25, scope: !1859)
!1866 = !DILocation(line: 119, column: 28, scope: !1859)
!1867 = !DILocation(line: 119, column: 34, scope: !1859)
!1868 = !DILocation(line: 118, column: 7, scope: !1855)
!1869 = !DILocation(line: 121, column: 33, scope: !1858)
!1870 = !DILocation(line: 0, scope: !1858)
!1871 = !DILocation(line: 122, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1858, file: !497, line: 122, column: 11)
!1873 = !DILocation(line: 0, scope: !1872)
!1874 = !DILocation(line: 122, column: 11, scope: !1858)
!1875 = !DILocation(line: 123, column: 9, scope: !1872)
!1876 = !DILocation(line: 126, column: 9, scope: !1872)
!1877 = !DILocation(line: 128, column: 14, scope: !1858)
!1878 = !DILocation(line: 128, column: 7, scope: !1858)
!1879 = !DILocation(line: 133, column: 42, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1855, file: !497, line: 133, column: 7)
!1881 = !DILocation(line: 133, column: 28, scope: !1880)
!1882 = !DILocation(line: 133, column: 50, scope: !1880)
!1883 = !DILocation(line: 133, column: 7, scope: !1855)
!1884 = !DILocation(line: 134, column: 12, scope: !1880)
!1885 = !DILocation(line: 134, column: 5, scope: !1880)
!1886 = !DILocation(line: 135, column: 1, scope: !1855)
!1887 = !DISubprogram(name: "_exit", scope: !1667, file: !1667, line: 624, type: !985, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1888 = distinct !DISubprogram(name: "verror", scope: !512, file: !512, line: 251, type: !1889, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !103, !103, !130, !522}
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DILocalVariable(name: "status", arg: 1, scope: !1888, file: !512, line: 251, type: !103)
!1893 = !DILocalVariable(name: "errnum", arg: 2, scope: !1888, file: !512, line: 251, type: !103)
!1894 = !DILocalVariable(name: "message", arg: 3, scope: !1888, file: !512, line: 251, type: !130)
!1895 = !DILocalVariable(name: "args", arg: 4, scope: !1888, file: !512, line: 251, type: !522)
!1896 = !DILocation(line: 0, scope: !1888)
!1897 = !DILocation(line: 261, column: 3, scope: !1888)
!1898 = !DILocation(line: 265, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1888, file: !512, line: 265, column: 7)
!1900 = !DILocation(line: 265, column: 7, scope: !1888)
!1901 = !DILocation(line: 266, column: 5, scope: !1899)
!1902 = !DILocation(line: 272, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !512, line: 268, column: 5)
!1904 = !DILocation(line: 276, column: 3, scope: !1888)
!1905 = !DILocation(line: 282, column: 1, scope: !1888)
!1906 = distinct !DISubprogram(name: "flush_stdout", scope: !512, file: !512, line: 163, type: !558, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1907)
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "stdout_fd", scope: !1906, file: !512, line: 166, type: !103)
!1909 = !DILocation(line: 0, scope: !1906)
!1910 = !DILocalVariable(name: "fd", arg: 1, scope: !1911, file: !512, line: 145, type: !103)
!1911 = distinct !DISubprogram(name: "is_open", scope: !512, file: !512, line: 145, type: !1627, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1912)
!1912 = !{!1910}
!1913 = !DILocation(line: 0, scope: !1911, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 182, column: 25, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1906, file: !512, line: 182, column: 7)
!1916 = !DILocation(line: 157, column: 15, scope: !1911, inlinedAt: !1914)
!1917 = !DILocation(line: 157, column: 12, scope: !1911, inlinedAt: !1914)
!1918 = !DILocation(line: 182, column: 7, scope: !1906)
!1919 = !DILocation(line: 184, column: 5, scope: !1915)
!1920 = !DILocation(line: 185, column: 1, scope: !1906)
!1921 = distinct !DISubprogram(name: "error_tail", scope: !512, file: !512, line: 219, type: !1889, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1922)
!1922 = !{!1923, !1924, !1925, !1926}
!1923 = !DILocalVariable(name: "status", arg: 1, scope: !1921, file: !512, line: 219, type: !103)
!1924 = !DILocalVariable(name: "errnum", arg: 2, scope: !1921, file: !512, line: 219, type: !103)
!1925 = !DILocalVariable(name: "message", arg: 3, scope: !1921, file: !512, line: 219, type: !130)
!1926 = !DILocalVariable(name: "args", arg: 4, scope: !1921, file: !512, line: 219, type: !522)
!1927 = distinct !DIAssignID()
!1928 = !DILocation(line: 0, scope: !1921)
!1929 = !DILocation(line: 229, column: 13, scope: !1921)
!1930 = !DILocalVariable(name: "__stream", arg: 1, scope: !1931, file: !1051, line: 132, type: !1934)
!1931 = distinct !DISubprogram(name: "vfprintf", scope: !1051, file: !1051, line: 132, type: !1932, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1969)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!103, !1934, !1055, !522}
!1934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1937, file: !240, line: 51, baseType: !103, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1937, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1937, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1937, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1937, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1937, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1937, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1937, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1937, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1937, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1937, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1937, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1937, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1937, file: !240, line: 70, baseType: !1953, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1937, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1937, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1937, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1937, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1937, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1937, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1937, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1937, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1937, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1937, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1937, file: !240, line: 93, baseType: !1953, size: 64, offset: 1344)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1937, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1937, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1937, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1937, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!1969 = !{!1930, !1970, !1971}
!1970 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1931, file: !1051, line: 133, type: !1055)
!1971 = !DILocalVariable(name: "__ap", arg: 3, scope: !1931, file: !1051, line: 133, type: !522)
!1972 = !DILocation(line: 0, scope: !1931, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 229, column: 3, scope: !1921)
!1974 = !DILocation(line: 135, column: 10, scope: !1931, inlinedAt: !1973)
!1975 = !DILocation(line: 232, column: 3, scope: !1921)
!1976 = !DILocation(line: 233, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1921, file: !512, line: 233, column: 7)
!1978 = !DILocation(line: 233, column: 7, scope: !1921)
!1979 = !DILocalVariable(name: "errbuf", scope: !1980, file: !512, line: 193, type: !1984)
!1980 = distinct !DISubprogram(name: "print_errno_message", scope: !512, file: !512, line: 188, type: !985, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1981)
!1981 = !{!1982, !1983, !1979}
!1982 = !DILocalVariable(name: "errnum", arg: 1, scope: !1980, file: !512, line: 188, type: !103)
!1983 = !DILocalVariable(name: "s", scope: !1980, file: !512, line: 190, type: !130)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1985)
!1985 = !{!1986}
!1986 = !DISubrange(count: 1024)
!1987 = !DILocation(line: 0, scope: !1980, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 234, column: 5, scope: !1977)
!1989 = !DILocation(line: 193, column: 3, scope: !1980, inlinedAt: !1988)
!1990 = !DILocation(line: 195, column: 7, scope: !1980, inlinedAt: !1988)
!1991 = !DILocation(line: 207, column: 9, scope: !1992, inlinedAt: !1988)
!1992 = distinct !DILexicalBlock(scope: !1980, file: !512, line: 207, column: 7)
!1993 = !DILocation(line: 207, column: 7, scope: !1980, inlinedAt: !1988)
!1994 = !DILocation(line: 208, column: 9, scope: !1992, inlinedAt: !1988)
!1995 = !DILocation(line: 208, column: 5, scope: !1992, inlinedAt: !1988)
!1996 = !DILocation(line: 214, column: 3, scope: !1980, inlinedAt: !1988)
!1997 = !DILocation(line: 216, column: 1, scope: !1980, inlinedAt: !1988)
!1998 = !DILocation(line: 234, column: 5, scope: !1977)
!1999 = !DILocation(line: 238, column: 3, scope: !1921)
!2000 = !DILocalVariable(name: "__c", arg: 1, scope: !2001, file: !1359, line: 101, type: !103)
!2001 = distinct !DISubprogram(name: "putc_unlocked", scope: !1359, file: !1359, line: 101, type: !2002, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!103, !103, !1935}
!2004 = !{!2000, !2005}
!2005 = !DILocalVariable(name: "__stream", arg: 2, scope: !2001, file: !1359, line: 101, type: !1935)
!2006 = !DILocation(line: 0, scope: !2001, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 238, column: 3, scope: !1921)
!2008 = !DILocation(line: 103, column: 10, scope: !2001, inlinedAt: !2007)
!2009 = !DILocation(line: 240, column: 3, scope: !1921)
!2010 = !DILocation(line: 241, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1921, file: !512, line: 241, column: 7)
!2012 = !DILocation(line: 241, column: 7, scope: !1921)
!2013 = !DILocation(line: 242, column: 5, scope: !2011)
!2014 = !DILocation(line: 243, column: 1, scope: !1921)
!2015 = !DISubprogram(name: "__vfprintf_chk", scope: !1051, file: !1051, line: 96, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!103, !1934, !103, !1055, !522}
!2018 = !DISubprogram(name: "strerror_r", scope: !1185, file: !1185, line: 444, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!124, !103, !124, !127}
!2021 = !DISubprogram(name: "fcntl", scope: !2022, file: !2022, line: 149, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!103, !103, !103, null}
!2025 = distinct !DISubprogram(name: "error", scope: !512, file: !512, line: 285, type: !2026, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !103, !103, !130, null}
!2028 = !{!2029, !2030, !2031, !2032}
!2029 = !DILocalVariable(name: "status", arg: 1, scope: !2025, file: !512, line: 285, type: !103)
!2030 = !DILocalVariable(name: "errnum", arg: 2, scope: !2025, file: !512, line: 285, type: !103)
!2031 = !DILocalVariable(name: "message", arg: 3, scope: !2025, file: !512, line: 285, type: !130)
!2032 = !DILocalVariable(name: "ap", scope: !2025, file: !512, line: 287, type: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1060, line: 52, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2035, line: 12, baseType: !2036)
!2035 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !512, baseType: !2037)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 192, elements: !80)
!2038 = distinct !DIAssignID()
!2039 = !DILocation(line: 0, scope: !2025)
!2040 = !DILocation(line: 287, column: 3, scope: !2025)
!2041 = !DILocation(line: 288, column: 3, scope: !2025)
!2042 = !DILocation(line: 289, column: 3, scope: !2025)
!2043 = !DILocation(line: 290, column: 3, scope: !2025)
!2044 = !DILocation(line: 291, column: 1, scope: !2025)
!2045 = !DILocation(line: 0, scope: !519)
!2046 = !DILocation(line: 302, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !519, file: !512, line: 302, column: 7)
!2048 = !DILocation(line: 302, column: 7, scope: !519)
!2049 = !DILocation(line: 307, column: 11, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !512, line: 307, column: 11)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !512, line: 303, column: 5)
!2052 = !DILocation(line: 307, column: 27, scope: !2050)
!2053 = !DILocation(line: 308, column: 11, scope: !2050)
!2054 = !DILocation(line: 308, column: 28, scope: !2050)
!2055 = !DILocation(line: 308, column: 25, scope: !2050)
!2056 = !DILocation(line: 309, column: 15, scope: !2050)
!2057 = !DILocation(line: 309, column: 33, scope: !2050)
!2058 = !DILocation(line: 310, column: 19, scope: !2050)
!2059 = !DILocation(line: 311, column: 22, scope: !2050)
!2060 = !DILocation(line: 311, column: 56, scope: !2050)
!2061 = !DILocation(line: 307, column: 11, scope: !2051)
!2062 = !DILocation(line: 316, column: 21, scope: !2051)
!2063 = !DILocation(line: 317, column: 23, scope: !2051)
!2064 = !DILocation(line: 318, column: 5, scope: !2051)
!2065 = !DILocation(line: 327, column: 3, scope: !519)
!2066 = !DILocation(line: 331, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !519, file: !512, line: 331, column: 7)
!2068 = !DILocation(line: 331, column: 7, scope: !519)
!2069 = !DILocation(line: 332, column: 5, scope: !2067)
!2070 = !DILocation(line: 338, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !512, line: 334, column: 5)
!2072 = !DILocation(line: 346, column: 3, scope: !519)
!2073 = !DILocation(line: 350, column: 3, scope: !519)
!2074 = !DILocation(line: 356, column: 1, scope: !519)
!2075 = distinct !DISubprogram(name: "error_at_line", scope: !512, file: !512, line: 359, type: !2076, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !103, !103, !130, !109, !130, null}
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084}
!2079 = !DILocalVariable(name: "status", arg: 1, scope: !2075, file: !512, line: 359, type: !103)
!2080 = !DILocalVariable(name: "errnum", arg: 2, scope: !2075, file: !512, line: 359, type: !103)
!2081 = !DILocalVariable(name: "file_name", arg: 3, scope: !2075, file: !512, line: 359, type: !130)
!2082 = !DILocalVariable(name: "line_number", arg: 4, scope: !2075, file: !512, line: 360, type: !109)
!2083 = !DILocalVariable(name: "message", arg: 5, scope: !2075, file: !512, line: 360, type: !130)
!2084 = !DILocalVariable(name: "ap", scope: !2075, file: !512, line: 362, type: !2033)
!2085 = distinct !DIAssignID()
!2086 = !DILocation(line: 0, scope: !2075)
!2087 = !DILocation(line: 362, column: 3, scope: !2075)
!2088 = !DILocation(line: 363, column: 3, scope: !2075)
!2089 = !DILocation(line: 364, column: 3, scope: !2075)
!2090 = !DILocation(line: 366, column: 3, scope: !2075)
!2091 = !DILocation(line: 367, column: 1, scope: !2075)
!2092 = distinct !DISubprogram(name: "fpurge", scope: !852, file: !852, line: 32, type: !2093, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !2129)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!103, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2097, file: !240, line: 51, baseType: !103, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2097, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2097, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2097, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2097, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2097, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2097, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2097, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2097, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2097, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2097, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2097, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2097, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2097, file: !240, line: 70, baseType: !2113, size: 64, offset: 832)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2097, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2097, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2097, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2097, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2097, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2097, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2097, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2097, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2097, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2097, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2097, file: !240, line: 93, baseType: !2113, size: 64, offset: 1344)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2097, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2097, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2097, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2097, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!2129 = !{!2130}
!2130 = !DILocalVariable(name: "fp", arg: 1, scope: !2092, file: !852, line: 32, type: !2095)
!2131 = !DILocation(line: 0, scope: !2092)
!2132 = !DILocation(line: 36, column: 3, scope: !2092)
!2133 = !DILocation(line: 38, column: 3, scope: !2092)
!2134 = !DISubprogram(name: "__fpurge", scope: !2135, file: !2135, line: 72, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2135 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2095}
!2138 = distinct !DISubprogram(name: "getprogname", scope: !854, file: !854, line: 54, type: !2139, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!130}
!2141 = !DILocation(line: 58, column: 10, scope: !2138)
!2142 = !DILocation(line: 58, column: 3, scope: !2138)
!2143 = distinct !DISubprogram(name: "set_program_name", scope: !563, file: !563, line: 37, type: !1015, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DILocalVariable(name: "argv0", arg: 1, scope: !2143, file: !563, line: 37, type: !130)
!2146 = !DILocalVariable(name: "slash", scope: !2143, file: !563, line: 44, type: !130)
!2147 = !DILocalVariable(name: "base", scope: !2143, file: !563, line: 45, type: !130)
!2148 = !DILocation(line: 0, scope: !2143)
!2149 = !DILocation(line: 44, column: 23, scope: !2143)
!2150 = !DILocation(line: 45, column: 22, scope: !2143)
!2151 = !DILocation(line: 46, column: 17, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2143, file: !563, line: 46, column: 7)
!2153 = !DILocation(line: 46, column: 9, scope: !2152)
!2154 = !DILocation(line: 46, column: 25, scope: !2152)
!2155 = !DILocation(line: 46, column: 40, scope: !2152)
!2156 = !DILocalVariable(name: "__s1", arg: 1, scope: !2157, file: !1078, line: 974, type: !1213)
!2157 = distinct !DISubprogram(name: "memeq", scope: !1078, file: !1078, line: 974, type: !2158, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!223, !1213, !1213, !127}
!2160 = !{!2156, !2161, !2162}
!2161 = !DILocalVariable(name: "__s2", arg: 2, scope: !2157, file: !1078, line: 974, type: !1213)
!2162 = !DILocalVariable(name: "__n", arg: 3, scope: !2157, file: !1078, line: 974, type: !127)
!2163 = !DILocation(line: 0, scope: !2157, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 46, column: 28, scope: !2152)
!2165 = !DILocation(line: 976, column: 11, scope: !2157, inlinedAt: !2164)
!2166 = !DILocation(line: 976, column: 10, scope: !2157, inlinedAt: !2164)
!2167 = !DILocation(line: 46, column: 7, scope: !2143)
!2168 = !DILocation(line: 49, column: 11, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !563, line: 49, column: 11)
!2170 = distinct !DILexicalBlock(scope: !2152, file: !563, line: 47, column: 5)
!2171 = !DILocation(line: 49, column: 36, scope: !2169)
!2172 = !DILocation(line: 49, column: 11, scope: !2170)
!2173 = !DILocation(line: 65, column: 16, scope: !2143)
!2174 = !DILocation(line: 71, column: 27, scope: !2143)
!2175 = !DILocation(line: 74, column: 33, scope: !2143)
!2176 = !DILocation(line: 76, column: 1, scope: !2143)
!2177 = !DISubprogram(name: "strrchr", scope: !1185, file: !1185, line: 273, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2178 = distinct !DIAssignID()
!2179 = !DILocation(line: 0, scope: !572)
!2180 = distinct !DIAssignID()
!2181 = !DILocation(line: 40, column: 29, scope: !572)
!2182 = !DILocation(line: 41, column: 19, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !572, file: !573, line: 41, column: 7)
!2184 = !DILocation(line: 41, column: 7, scope: !572)
!2185 = !DILocation(line: 47, column: 3, scope: !572)
!2186 = !DILocation(line: 48, column: 3, scope: !572)
!2187 = !DILocalVariable(name: "ps", arg: 1, scope: !2188, file: !2189, line: 1135, type: !2192)
!2188 = distinct !DISubprogram(name: "mbszero", scope: !2189, file: !2189, line: 1135, type: !2190, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !2193)
!2189 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2193 = !{!2187}
!2194 = !DILocation(line: 0, scope: !2188, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 48, column: 18, scope: !572)
!2196 = !DILocalVariable(name: "__dest", arg: 1, scope: !2197, file: !2198, line: 57, type: !125)
!2197 = distinct !DISubprogram(name: "memset", scope: !2198, file: !2198, line: 57, type: !2199, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !2201)
!2198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!125, !125, !103, !127}
!2201 = !{!2196, !2202, !2203}
!2202 = !DILocalVariable(name: "__ch", arg: 2, scope: !2197, file: !2198, line: 57, type: !103)
!2203 = !DILocalVariable(name: "__len", arg: 3, scope: !2197, file: !2198, line: 57, type: !127)
!2204 = !DILocation(line: 0, scope: !2197, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 1137, column: 3, scope: !2188, inlinedAt: !2195)
!2206 = !DILocation(line: 59, column: 10, scope: !2197, inlinedAt: !2205)
!2207 = !DILocation(line: 49, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !572, file: !573, line: 49, column: 7)
!2209 = !DILocation(line: 49, column: 39, scope: !2208)
!2210 = !DILocation(line: 49, column: 44, scope: !2208)
!2211 = !DILocation(line: 54, column: 1, scope: !572)
!2212 = !DISubprogram(name: "mbrtoc32", scope: !584, file: !584, line: 57, type: !2213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!127, !2215, !1055, !127, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2216)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2192)
!2218 = distinct !DISubprogram(name: "clone_quoting_options", scope: !603, file: !603, line: 113, type: !2219, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2222)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!2221, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!2222 = !{!2223, !2224, !2225}
!2223 = !DILocalVariable(name: "o", arg: 1, scope: !2218, file: !603, line: 113, type: !2221)
!2224 = !DILocalVariable(name: "saved_errno", scope: !2218, file: !603, line: 115, type: !103)
!2225 = !DILocalVariable(name: "p", scope: !2218, file: !603, line: 116, type: !2221)
!2226 = !DILocation(line: 0, scope: !2218)
!2227 = !DILocation(line: 115, column: 21, scope: !2218)
!2228 = !DILocation(line: 116, column: 40, scope: !2218)
!2229 = !DILocation(line: 116, column: 31, scope: !2218)
!2230 = !DILocation(line: 118, column: 9, scope: !2218)
!2231 = !DILocation(line: 119, column: 3, scope: !2218)
!2232 = distinct !DISubprogram(name: "get_quoting_style", scope: !603, file: !603, line: 124, type: !2233, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2237)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!629, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "o", arg: 1, scope: !2232, file: !603, line: 124, type: !2235)
!2239 = !DILocation(line: 0, scope: !2232)
!2240 = !DILocation(line: 126, column: 11, scope: !2232)
!2241 = !DILocation(line: 126, column: 46, scope: !2232)
!2242 = !{!2243, !1066, i64 0}
!2243 = !{!"quoting_options", !1066, i64 0, !1066, i64 4, !997, i64 8, !996, i64 40, !996, i64 48}
!2244 = !DILocation(line: 126, column: 3, scope: !2232)
!2245 = distinct !DISubprogram(name: "set_quoting_style", scope: !603, file: !603, line: 132, type: !2246, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2221, !629}
!2248 = !{!2249, !2250}
!2249 = !DILocalVariable(name: "o", arg: 1, scope: !2245, file: !603, line: 132, type: !2221)
!2250 = !DILocalVariable(name: "s", arg: 2, scope: !2245, file: !603, line: 132, type: !629)
!2251 = !DILocation(line: 0, scope: !2245)
!2252 = !DILocation(line: 134, column: 4, scope: !2245)
!2253 = !DILocation(line: 134, column: 45, scope: !2245)
!2254 = !DILocation(line: 135, column: 1, scope: !2245)
!2255 = distinct !DISubprogram(name: "set_char_quoting", scope: !603, file: !603, line: 143, type: !2256, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!103, !2221, !4, !103}
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2265, !2266}
!2259 = !DILocalVariable(name: "o", arg: 1, scope: !2255, file: !603, line: 143, type: !2221)
!2260 = !DILocalVariable(name: "c", arg: 2, scope: !2255, file: !603, line: 143, type: !4)
!2261 = !DILocalVariable(name: "i", arg: 3, scope: !2255, file: !603, line: 143, type: !103)
!2262 = !DILocalVariable(name: "uc", scope: !2255, file: !603, line: 145, type: !132)
!2263 = !DILocalVariable(name: "p", scope: !2255, file: !603, line: 146, type: !2264)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2265 = !DILocalVariable(name: "shift", scope: !2255, file: !603, line: 148, type: !103)
!2266 = !DILocalVariable(name: "r", scope: !2255, file: !603, line: 149, type: !109)
!2267 = !DILocation(line: 0, scope: !2255)
!2268 = !DILocation(line: 147, column: 6, scope: !2255)
!2269 = !DILocation(line: 147, column: 41, scope: !2255)
!2270 = !DILocation(line: 147, column: 62, scope: !2255)
!2271 = !DILocation(line: 147, column: 57, scope: !2255)
!2272 = !DILocation(line: 148, column: 15, scope: !2255)
!2273 = !DILocation(line: 149, column: 21, scope: !2255)
!2274 = !DILocation(line: 149, column: 24, scope: !2255)
!2275 = !DILocation(line: 149, column: 34, scope: !2255)
!2276 = !DILocation(line: 150, column: 19, scope: !2255)
!2277 = !DILocation(line: 150, column: 24, scope: !2255)
!2278 = !DILocation(line: 150, column: 6, scope: !2255)
!2279 = !DILocation(line: 151, column: 3, scope: !2255)
!2280 = distinct !DISubprogram(name: "set_quoting_flags", scope: !603, file: !603, line: 159, type: !2281, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!103, !2221, !103}
!2283 = !{!2284, !2285, !2286}
!2284 = !DILocalVariable(name: "o", arg: 1, scope: !2280, file: !603, line: 159, type: !2221)
!2285 = !DILocalVariable(name: "i", arg: 2, scope: !2280, file: !603, line: 159, type: !103)
!2286 = !DILocalVariable(name: "r", scope: !2280, file: !603, line: 163, type: !103)
!2287 = !DILocation(line: 0, scope: !2280)
!2288 = !DILocation(line: 161, column: 8, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2280, file: !603, line: 161, column: 7)
!2290 = !DILocation(line: 161, column: 7, scope: !2280)
!2291 = !DILocation(line: 163, column: 14, scope: !2280)
!2292 = !{!2243, !1066, i64 4}
!2293 = !DILocation(line: 164, column: 12, scope: !2280)
!2294 = !DILocation(line: 165, column: 3, scope: !2280)
!2295 = distinct !DISubprogram(name: "set_custom_quoting", scope: !603, file: !603, line: 169, type: !2296, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !2221, !130, !130}
!2298 = !{!2299, !2300, !2301}
!2299 = !DILocalVariable(name: "o", arg: 1, scope: !2295, file: !603, line: 169, type: !2221)
!2300 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2295, file: !603, line: 170, type: !130)
!2301 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2295, file: !603, line: 170, type: !130)
!2302 = !DILocation(line: 0, scope: !2295)
!2303 = !DILocation(line: 172, column: 8, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2295, file: !603, line: 172, column: 7)
!2305 = !DILocation(line: 172, column: 7, scope: !2295)
!2306 = !DILocation(line: 174, column: 12, scope: !2295)
!2307 = !DILocation(line: 175, column: 8, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2295, file: !603, line: 175, column: 7)
!2309 = !DILocation(line: 175, column: 19, scope: !2308)
!2310 = !DILocation(line: 176, column: 5, scope: !2308)
!2311 = !DILocation(line: 177, column: 6, scope: !2295)
!2312 = !DILocation(line: 177, column: 17, scope: !2295)
!2313 = !{!2243, !996, i64 40}
!2314 = !DILocation(line: 178, column: 6, scope: !2295)
!2315 = !DILocation(line: 178, column: 18, scope: !2295)
!2316 = !{!2243, !996, i64 48}
!2317 = !DILocation(line: 179, column: 1, scope: !2295)
!2318 = !DISubprogram(name: "abort", scope: !1189, file: !1189, line: 598, type: !558, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2319 = distinct !DISubprogram(name: "quotearg_buffer", scope: !603, file: !603, line: 774, type: !2320, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!127, !124, !127, !130, !127, !2235}
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2323 = !DILocalVariable(name: "buffer", arg: 1, scope: !2319, file: !603, line: 774, type: !124)
!2324 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2319, file: !603, line: 774, type: !127)
!2325 = !DILocalVariable(name: "arg", arg: 3, scope: !2319, file: !603, line: 775, type: !130)
!2326 = !DILocalVariable(name: "argsize", arg: 4, scope: !2319, file: !603, line: 775, type: !127)
!2327 = !DILocalVariable(name: "o", arg: 5, scope: !2319, file: !603, line: 776, type: !2235)
!2328 = !DILocalVariable(name: "p", scope: !2319, file: !603, line: 778, type: !2235)
!2329 = !DILocalVariable(name: "saved_errno", scope: !2319, file: !603, line: 779, type: !103)
!2330 = !DILocalVariable(name: "r", scope: !2319, file: !603, line: 780, type: !127)
!2331 = !DILocation(line: 0, scope: !2319)
!2332 = !DILocation(line: 778, column: 37, scope: !2319)
!2333 = !DILocation(line: 779, column: 21, scope: !2319)
!2334 = !DILocation(line: 781, column: 43, scope: !2319)
!2335 = !DILocation(line: 781, column: 53, scope: !2319)
!2336 = !DILocation(line: 781, column: 63, scope: !2319)
!2337 = !DILocation(line: 782, column: 43, scope: !2319)
!2338 = !DILocation(line: 782, column: 58, scope: !2319)
!2339 = !DILocation(line: 780, column: 14, scope: !2319)
!2340 = !DILocation(line: 783, column: 9, scope: !2319)
!2341 = !DILocation(line: 784, column: 3, scope: !2319)
!2342 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !603, file: !603, line: 251, type: !2343, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2347)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!127, !124, !127, !130, !127, !629, !103, !2345, !130, !130}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2373, !2375, !2378, !2379, !2380, !2381, !2384, !2385, !2387, !2388, !2391, !2395, !2396, !2404, !2407, !2408, !2409}
!2348 = !DILocalVariable(name: "buffer", arg: 1, scope: !2342, file: !603, line: 251, type: !124)
!2349 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2342, file: !603, line: 251, type: !127)
!2350 = !DILocalVariable(name: "arg", arg: 3, scope: !2342, file: !603, line: 252, type: !130)
!2351 = !DILocalVariable(name: "argsize", arg: 4, scope: !2342, file: !603, line: 252, type: !127)
!2352 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2342, file: !603, line: 253, type: !629)
!2353 = !DILocalVariable(name: "flags", arg: 6, scope: !2342, file: !603, line: 253, type: !103)
!2354 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2342, file: !603, line: 254, type: !2345)
!2355 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2342, file: !603, line: 255, type: !130)
!2356 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2342, file: !603, line: 256, type: !130)
!2357 = !DILocalVariable(name: "unibyte_locale", scope: !2342, file: !603, line: 258, type: !223)
!2358 = !DILocalVariable(name: "len", scope: !2342, file: !603, line: 260, type: !127)
!2359 = !DILocalVariable(name: "orig_buffersize", scope: !2342, file: !603, line: 261, type: !127)
!2360 = !DILocalVariable(name: "quote_string", scope: !2342, file: !603, line: 262, type: !130)
!2361 = !DILocalVariable(name: "quote_string_len", scope: !2342, file: !603, line: 263, type: !127)
!2362 = !DILocalVariable(name: "backslash_escapes", scope: !2342, file: !603, line: 264, type: !223)
!2363 = !DILocalVariable(name: "elide_outer_quotes", scope: !2342, file: !603, line: 265, type: !223)
!2364 = !DILocalVariable(name: "encountered_single_quote", scope: !2342, file: !603, line: 266, type: !223)
!2365 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2342, file: !603, line: 267, type: !223)
!2366 = !DILabel(scope: !2342, name: "process_input", file: !603, line: 308)
!2367 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2342, file: !603, line: 309, type: !223)
!2368 = !DILocalVariable(name: "lq", scope: !2369, file: !603, line: 361, type: !130)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !603, line: 361, column: 11)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !603, line: 360, column: 13)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !603, line: 333, column: 7)
!2372 = distinct !DILexicalBlock(scope: !2342, file: !603, line: 312, column: 5)
!2373 = !DILocalVariable(name: "i", scope: !2374, file: !603, line: 395, type: !127)
!2374 = distinct !DILexicalBlock(scope: !2342, file: !603, line: 395, column: 3)
!2375 = !DILocalVariable(name: "is_right_quote", scope: !2376, file: !603, line: 397, type: !223)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !603, line: 396, column: 5)
!2377 = distinct !DILexicalBlock(scope: !2374, file: !603, line: 395, column: 3)
!2378 = !DILocalVariable(name: "escaping", scope: !2376, file: !603, line: 398, type: !223)
!2379 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2376, file: !603, line: 399, type: !223)
!2380 = !DILocalVariable(name: "c", scope: !2376, file: !603, line: 417, type: !132)
!2381 = !DILabel(scope: !2382, name: "c_and_shell_escape", file: !603, line: 502)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 478, column: 9)
!2383 = distinct !DILexicalBlock(scope: !2376, file: !603, line: 419, column: 9)
!2384 = !DILabel(scope: !2382, name: "c_escape", file: !603, line: 507)
!2385 = !DILocalVariable(name: "m", scope: !2386, file: !603, line: 598, type: !127)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 596, column: 11)
!2387 = !DILocalVariable(name: "printable", scope: !2386, file: !603, line: 600, type: !223)
!2388 = !DILocalVariable(name: "mbs", scope: !2389, file: !603, line: 609, type: !690)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !603, line: 608, column: 15)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !603, line: 602, column: 17)
!2391 = !DILocalVariable(name: "w", scope: !2392, file: !603, line: 618, type: !583)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !603, line: 617, column: 19)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !603, line: 616, column: 17)
!2394 = distinct !DILexicalBlock(scope: !2389, file: !603, line: 616, column: 17)
!2395 = !DILocalVariable(name: "bytes", scope: !2392, file: !603, line: 619, type: !127)
!2396 = !DILocalVariable(name: "j", scope: !2397, file: !603, line: 648, type: !127)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !603, line: 648, column: 29)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !603, line: 647, column: 27)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !603, line: 645, column: 29)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !603, line: 636, column: 23)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !603, line: 628, column: 30)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !603, line: 623, column: 30)
!2403 = distinct !DILexicalBlock(scope: !2392, file: !603, line: 621, column: 25)
!2404 = !DILocalVariable(name: "ilim", scope: !2405, file: !603, line: 674, type: !127)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !603, line: 671, column: 15)
!2406 = distinct !DILexicalBlock(scope: !2386, file: !603, line: 670, column: 17)
!2407 = !DILabel(scope: !2376, name: "store_escape", file: !603, line: 709)
!2408 = !DILabel(scope: !2376, name: "store_c", file: !603, line: 712)
!2409 = !DILabel(scope: !2342, name: "force_outer_quoting_style", file: !603, line: 753)
!2410 = distinct !DIAssignID()
!2411 = distinct !DIAssignID()
!2412 = distinct !DIAssignID()
!2413 = distinct !DIAssignID()
!2414 = distinct !DIAssignID()
!2415 = !DILocation(line: 0, scope: !2389)
!2416 = distinct !DIAssignID()
!2417 = !DILocation(line: 0, scope: !2392)
!2418 = !DILocation(line: 0, scope: !2342)
!2419 = !DILocation(line: 258, column: 25, scope: !2342)
!2420 = !DILocation(line: 258, column: 36, scope: !2342)
!2421 = !DILocation(line: 265, column: 8, scope: !2342)
!2422 = !DILocation(line: 267, column: 3, scope: !2342)
!2423 = !DILocation(line: 261, column: 10, scope: !2342)
!2424 = !DILocation(line: 262, column: 15, scope: !2342)
!2425 = !DILocation(line: 263, column: 10, scope: !2342)
!2426 = !DILocation(line: 264, column: 8, scope: !2342)
!2427 = !DILocation(line: 266, column: 8, scope: !2342)
!2428 = !DILocation(line: 267, column: 8, scope: !2342)
!2429 = !DILocation(line: 308, column: 2, scope: !2342)
!2430 = !DILocation(line: 311, column: 3, scope: !2342)
!2431 = !DILocation(line: 318, column: 11, scope: !2372)
!2432 = !DILocation(line: 318, column: 12, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2372, file: !603, line: 318, column: 11)
!2434 = !DILocation(line: 319, column: 9, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !603, line: 319, column: 9)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !603, line: 319, column: 9)
!2437 = !DILocation(line: 319, column: 9, scope: !2436)
!2438 = !DILocation(line: 0, scope: !681, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 357, column: 26, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !603, line: 335, column: 11)
!2441 = distinct !DILexicalBlock(scope: !2371, file: !603, line: 334, column: 13)
!2442 = !DILocation(line: 199, column: 29, scope: !681, inlinedAt: !2439)
!2443 = !DILocation(line: 201, column: 19, scope: !2444, inlinedAt: !2439)
!2444 = distinct !DILexicalBlock(scope: !681, file: !603, line: 201, column: 7)
!2445 = !DILocation(line: 201, column: 7, scope: !681, inlinedAt: !2439)
!2446 = !DILocation(line: 229, column: 3, scope: !681, inlinedAt: !2439)
!2447 = !DILocation(line: 230, column: 3, scope: !681, inlinedAt: !2439)
!2448 = !DILocalVariable(name: "ps", arg: 1, scope: !2449, file: !2189, line: 1135, type: !2452)
!2449 = distinct !DISubprogram(name: "mbszero", scope: !2189, file: !2189, line: 1135, type: !2450, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2453)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!2453 = !{!2448}
!2454 = !DILocation(line: 0, scope: !2449, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 230, column: 18, scope: !681, inlinedAt: !2439)
!2456 = !DILocalVariable(name: "__dest", arg: 1, scope: !2457, file: !2198, line: 57, type: !125)
!2457 = distinct !DISubprogram(name: "memset", scope: !2198, file: !2198, line: 57, type: !2199, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2458)
!2458 = !{!2456, !2459, !2460}
!2459 = !DILocalVariable(name: "__ch", arg: 2, scope: !2457, file: !2198, line: 57, type: !103)
!2460 = !DILocalVariable(name: "__len", arg: 3, scope: !2457, file: !2198, line: 57, type: !127)
!2461 = !DILocation(line: 0, scope: !2457, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 1137, column: 3, scope: !2449, inlinedAt: !2455)
!2463 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !2462)
!2464 = !DILocation(line: 231, column: 7, scope: !2465, inlinedAt: !2439)
!2465 = distinct !DILexicalBlock(scope: !681, file: !603, line: 231, column: 7)
!2466 = !DILocation(line: 231, column: 40, scope: !2465, inlinedAt: !2439)
!2467 = !DILocation(line: 231, column: 45, scope: !2465, inlinedAt: !2439)
!2468 = !DILocation(line: 235, column: 1, scope: !681, inlinedAt: !2439)
!2469 = !DILocation(line: 0, scope: !681, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 358, column: 27, scope: !2440)
!2471 = !DILocation(line: 199, column: 29, scope: !681, inlinedAt: !2470)
!2472 = !DILocation(line: 201, column: 19, scope: !2444, inlinedAt: !2470)
!2473 = !DILocation(line: 201, column: 7, scope: !681, inlinedAt: !2470)
!2474 = !DILocation(line: 229, column: 3, scope: !681, inlinedAt: !2470)
!2475 = !DILocation(line: 230, column: 3, scope: !681, inlinedAt: !2470)
!2476 = !DILocation(line: 0, scope: !2449, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 230, column: 18, scope: !681, inlinedAt: !2470)
!2478 = !DILocation(line: 0, scope: !2457, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1137, column: 3, scope: !2449, inlinedAt: !2477)
!2480 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !2479)
!2481 = !DILocation(line: 231, column: 7, scope: !2465, inlinedAt: !2470)
!2482 = !DILocation(line: 231, column: 40, scope: !2465, inlinedAt: !2470)
!2483 = !DILocation(line: 231, column: 45, scope: !2465, inlinedAt: !2470)
!2484 = !DILocation(line: 235, column: 1, scope: !681, inlinedAt: !2470)
!2485 = !DILocation(line: 360, column: 14, scope: !2370)
!2486 = !DILocation(line: 360, column: 13, scope: !2371)
!2487 = !DILocation(line: 0, scope: !2369)
!2488 = !DILocation(line: 361, column: 45, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2369, file: !603, line: 361, column: 11)
!2490 = !DILocation(line: 361, column: 11, scope: !2369)
!2491 = !DILocation(line: 362, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !603, line: 362, column: 13)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !603, line: 362, column: 13)
!2494 = !DILocation(line: 362, column: 13, scope: !2493)
!2495 = !DILocation(line: 361, column: 52, scope: !2489)
!2496 = distinct !{!2496, !2490, !2497, !1112}
!2497 = !DILocation(line: 362, column: 13, scope: !2369)
!2498 = !DILocation(line: 260, column: 10, scope: !2342)
!2499 = !DILocation(line: 365, column: 28, scope: !2371)
!2500 = !DILocation(line: 367, column: 7, scope: !2372)
!2501 = !DILocation(line: 370, column: 7, scope: !2372)
!2502 = !DILocation(line: 373, column: 7, scope: !2372)
!2503 = !DILocation(line: 376, column: 12, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2372, file: !603, line: 376, column: 11)
!2505 = !DILocation(line: 376, column: 11, scope: !2372)
!2506 = !DILocation(line: 381, column: 12, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2372, file: !603, line: 381, column: 11)
!2508 = !DILocation(line: 381, column: 11, scope: !2372)
!2509 = !DILocation(line: 382, column: 9, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !603, line: 382, column: 9)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !603, line: 382, column: 9)
!2512 = !DILocation(line: 382, column: 9, scope: !2511)
!2513 = !DILocation(line: 389, column: 7, scope: !2372)
!2514 = !DILocation(line: 392, column: 7, scope: !2372)
!2515 = !DILocation(line: 0, scope: !2374)
!2516 = !DILocation(line: 395, column: 8, scope: !2374)
!2517 = !DILocation(line: 309, column: 8, scope: !2342)
!2518 = !DILocation(line: 395, scope: !2374)
!2519 = !DILocation(line: 395, column: 34, scope: !2377)
!2520 = !DILocation(line: 395, column: 26, scope: !2377)
!2521 = !DILocation(line: 395, column: 48, scope: !2377)
!2522 = !DILocation(line: 395, column: 55, scope: !2377)
!2523 = !DILocation(line: 395, column: 3, scope: !2374)
!2524 = !DILocation(line: 395, column: 67, scope: !2377)
!2525 = !DILocation(line: 0, scope: !2376)
!2526 = !DILocation(line: 402, column: 11, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2376, file: !603, line: 401, column: 11)
!2528 = !DILocation(line: 404, column: 17, scope: !2527)
!2529 = !DILocation(line: 405, column: 39, scope: !2527)
!2530 = !DILocation(line: 409, column: 32, scope: !2527)
!2531 = !DILocation(line: 405, column: 19, scope: !2527)
!2532 = !DILocation(line: 405, column: 15, scope: !2527)
!2533 = !DILocation(line: 410, column: 11, scope: !2527)
!2534 = !DILocation(line: 410, column: 25, scope: !2527)
!2535 = !DILocalVariable(name: "__s1", arg: 1, scope: !2536, file: !1078, line: 974, type: !1213)
!2536 = distinct !DISubprogram(name: "memeq", scope: !1078, file: !1078, line: 974, type: !2158, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2537)
!2537 = !{!2535, !2538, !2539}
!2538 = !DILocalVariable(name: "__s2", arg: 2, scope: !2536, file: !1078, line: 974, type: !1213)
!2539 = !DILocalVariable(name: "__n", arg: 3, scope: !2536, file: !1078, line: 974, type: !127)
!2540 = !DILocation(line: 0, scope: !2536, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 410, column: 14, scope: !2527)
!2542 = !DILocation(line: 976, column: 11, scope: !2536, inlinedAt: !2541)
!2543 = !DILocation(line: 976, column: 10, scope: !2536, inlinedAt: !2541)
!2544 = !DILocation(line: 401, column: 11, scope: !2376)
!2545 = !DILocation(line: 417, column: 25, scope: !2376)
!2546 = !DILocation(line: 418, column: 7, scope: !2376)
!2547 = !DILocation(line: 421, column: 15, scope: !2383)
!2548 = !DILocation(line: 423, column: 15, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !603, line: 423, column: 15)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !603, line: 422, column: 13)
!2551 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 421, column: 15)
!2552 = !DILocation(line: 423, column: 15, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !603, line: 423, column: 15)
!2554 = !DILocation(line: 423, column: 15, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !603, line: 423, column: 15)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !603, line: 423, column: 15)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !603, line: 423, column: 15)
!2558 = !DILocation(line: 423, column: 15, scope: !2556)
!2559 = !DILocation(line: 423, column: 15, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !603, line: 423, column: 15)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !603, line: 423, column: 15)
!2562 = !DILocation(line: 423, column: 15, scope: !2561)
!2563 = !DILocation(line: 423, column: 15, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !603, line: 423, column: 15)
!2565 = distinct !DILexicalBlock(scope: !2557, file: !603, line: 423, column: 15)
!2566 = !DILocation(line: 423, column: 15, scope: !2565)
!2567 = !DILocation(line: 423, column: 15, scope: !2557)
!2568 = !DILocation(line: 423, column: 15, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !603, line: 423, column: 15)
!2570 = distinct !DILexicalBlock(scope: !2549, file: !603, line: 423, column: 15)
!2571 = !DILocation(line: 423, column: 15, scope: !2570)
!2572 = !DILocation(line: 431, column: 19, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2550, file: !603, line: 430, column: 19)
!2574 = !DILocation(line: 431, column: 24, scope: !2573)
!2575 = !DILocation(line: 431, column: 28, scope: !2573)
!2576 = !DILocation(line: 431, column: 38, scope: !2573)
!2577 = !DILocation(line: 431, column: 48, scope: !2573)
!2578 = !DILocation(line: 431, column: 59, scope: !2573)
!2579 = !DILocation(line: 433, column: 19, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !603, line: 433, column: 19)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !603, line: 433, column: 19)
!2582 = distinct !DILexicalBlock(scope: !2573, file: !603, line: 432, column: 17)
!2583 = !DILocation(line: 433, column: 19, scope: !2581)
!2584 = !DILocation(line: 434, column: 19, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !603, line: 434, column: 19)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !603, line: 434, column: 19)
!2587 = !DILocation(line: 434, column: 19, scope: !2586)
!2588 = !DILocation(line: 435, column: 17, scope: !2582)
!2589 = !DILocation(line: 442, column: 20, scope: !2551)
!2590 = !DILocation(line: 447, column: 11, scope: !2383)
!2591 = !DILocation(line: 450, column: 19, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 448, column: 13)
!2593 = !DILocation(line: 456, column: 19, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2592, file: !603, line: 455, column: 19)
!2595 = !DILocation(line: 456, column: 24, scope: !2594)
!2596 = !DILocation(line: 456, column: 28, scope: !2594)
!2597 = !DILocation(line: 456, column: 38, scope: !2594)
!2598 = !DILocation(line: 456, column: 41, scope: !2594)
!2599 = !DILocation(line: 456, column: 52, scope: !2594)
!2600 = !DILocation(line: 455, column: 19, scope: !2592)
!2601 = !DILocation(line: 457, column: 25, scope: !2594)
!2602 = !DILocation(line: 457, column: 17, scope: !2594)
!2603 = !DILocation(line: 464, column: 25, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2594, file: !603, line: 458, column: 19)
!2605 = !DILocation(line: 468, column: 21, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !603, line: 468, column: 21)
!2607 = distinct !DILexicalBlock(scope: !2604, file: !603, line: 468, column: 21)
!2608 = !DILocation(line: 468, column: 21, scope: !2607)
!2609 = !DILocation(line: 469, column: 21, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !603, line: 469, column: 21)
!2611 = distinct !DILexicalBlock(scope: !2604, file: !603, line: 469, column: 21)
!2612 = !DILocation(line: 469, column: 21, scope: !2611)
!2613 = !DILocation(line: 470, column: 21, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !603, line: 470, column: 21)
!2615 = distinct !DILexicalBlock(scope: !2604, file: !603, line: 470, column: 21)
!2616 = !DILocation(line: 470, column: 21, scope: !2615)
!2617 = !DILocation(line: 471, column: 21, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !603, line: 471, column: 21)
!2619 = distinct !DILexicalBlock(scope: !2604, file: !603, line: 471, column: 21)
!2620 = !DILocation(line: 471, column: 21, scope: !2619)
!2621 = !DILocation(line: 472, column: 21, scope: !2604)
!2622 = !DILocation(line: 482, column: 33, scope: !2382)
!2623 = !DILocation(line: 483, column: 33, scope: !2382)
!2624 = !DILocation(line: 485, column: 33, scope: !2382)
!2625 = !DILocation(line: 486, column: 33, scope: !2382)
!2626 = !DILocation(line: 487, column: 33, scope: !2382)
!2627 = !DILocation(line: 490, column: 17, scope: !2382)
!2628 = !DILocation(line: 492, column: 21, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !603, line: 491, column: 15)
!2630 = distinct !DILexicalBlock(scope: !2382, file: !603, line: 490, column: 17)
!2631 = !DILocation(line: 499, column: 35, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2382, file: !603, line: 499, column: 17)
!2633 = !DILocation(line: 499, column: 57, scope: !2632)
!2634 = !DILocation(line: 0, scope: !2382)
!2635 = !DILocation(line: 502, column: 11, scope: !2382)
!2636 = !DILocation(line: 504, column: 17, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2382, file: !603, line: 503, column: 17)
!2638 = !DILocation(line: 507, column: 11, scope: !2382)
!2639 = !DILocation(line: 508, column: 17, scope: !2382)
!2640 = !DILocation(line: 517, column: 15, scope: !2383)
!2641 = !DILocation(line: 517, column: 40, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 517, column: 15)
!2643 = !DILocation(line: 517, column: 47, scope: !2642)
!2644 = !DILocation(line: 517, column: 18, scope: !2642)
!2645 = !DILocation(line: 521, column: 17, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 521, column: 15)
!2647 = !DILocation(line: 521, column: 15, scope: !2383)
!2648 = !DILocation(line: 525, column: 11, scope: !2383)
!2649 = !DILocation(line: 537, column: 15, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 536, column: 15)
!2651 = !DILocation(line: 544, column: 15, scope: !2383)
!2652 = !DILocation(line: 546, column: 19, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !603, line: 545, column: 13)
!2654 = distinct !DILexicalBlock(scope: !2383, file: !603, line: 544, column: 15)
!2655 = !DILocation(line: 549, column: 19, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !603, line: 549, column: 19)
!2657 = !DILocation(line: 549, column: 30, scope: !2656)
!2658 = !DILocation(line: 558, column: 15, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !603, line: 558, column: 15)
!2660 = distinct !DILexicalBlock(scope: !2653, file: !603, line: 558, column: 15)
!2661 = !DILocation(line: 558, column: 15, scope: !2660)
!2662 = !DILocation(line: 559, column: 15, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !603, line: 559, column: 15)
!2664 = distinct !DILexicalBlock(scope: !2653, file: !603, line: 559, column: 15)
!2665 = !DILocation(line: 559, column: 15, scope: !2664)
!2666 = !DILocation(line: 560, column: 15, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !603, line: 560, column: 15)
!2668 = distinct !DILexicalBlock(scope: !2653, file: !603, line: 560, column: 15)
!2669 = !DILocation(line: 560, column: 15, scope: !2668)
!2670 = !DILocation(line: 562, column: 13, scope: !2653)
!2671 = !DILocation(line: 602, column: 17, scope: !2386)
!2672 = !DILocation(line: 0, scope: !2386)
!2673 = !DILocation(line: 605, column: 29, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2390, file: !603, line: 603, column: 15)
!2675 = !DILocation(line: 605, column: 27, scope: !2674)
!2676 = !DILocation(line: 606, column: 15, scope: !2674)
!2677 = !DILocation(line: 609, column: 17, scope: !2389)
!2678 = !DILocation(line: 0, scope: !2449, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 609, column: 32, scope: !2389)
!2680 = !DILocation(line: 0, scope: !2457, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1137, column: 3, scope: !2449, inlinedAt: !2679)
!2682 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !2681)
!2683 = !DILocation(line: 613, column: 29, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2389, file: !603, line: 613, column: 21)
!2685 = !DILocation(line: 613, column: 21, scope: !2389)
!2686 = !DILocation(line: 614, column: 29, scope: !2684)
!2687 = !DILocation(line: 614, column: 19, scope: !2684)
!2688 = !DILocation(line: 618, column: 21, scope: !2392)
!2689 = !DILocation(line: 620, column: 54, scope: !2392)
!2690 = !DILocation(line: 619, column: 36, scope: !2392)
!2691 = !DILocation(line: 621, column: 25, scope: !2392)
!2692 = !DILocation(line: 631, column: 38, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2401, file: !603, line: 629, column: 23)
!2694 = !DILocation(line: 631, column: 48, scope: !2693)
!2695 = !DILocation(line: 626, column: 25, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2402, file: !603, line: 624, column: 23)
!2697 = !DILocation(line: 631, column: 51, scope: !2693)
!2698 = !DILocation(line: 631, column: 25, scope: !2693)
!2699 = !DILocation(line: 632, column: 28, scope: !2693)
!2700 = !DILocation(line: 631, column: 34, scope: !2693)
!2701 = distinct !{!2701, !2698, !2699, !1112}
!2702 = !DILocation(line: 0, scope: !2397)
!2703 = !DILocation(line: 646, column: 29, scope: !2399)
!2704 = !DILocation(line: 649, column: 39, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2397, file: !603, line: 648, column: 29)
!2706 = !DILocation(line: 649, column: 31, scope: !2705)
!2707 = !DILocation(line: 648, column: 60, scope: !2705)
!2708 = !DILocation(line: 648, column: 50, scope: !2705)
!2709 = !DILocation(line: 648, column: 29, scope: !2397)
!2710 = distinct !{!2710, !2709, !2711, !1112}
!2711 = !DILocation(line: 654, column: 33, scope: !2397)
!2712 = !DILocation(line: 657, column: 43, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2400, file: !603, line: 657, column: 29)
!2714 = !DILocalVariable(name: "wc", arg: 1, scope: !2715, file: !2716, line: 865, type: !2719)
!2715 = distinct !DISubprogram(name: "c32isprint", scope: !2716, file: !2716, line: 865, type: !2717, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2721)
!2716 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!103, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2720, line: 20, baseType: !109)
!2720 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2721 = !{!2714}
!2722 = !DILocation(line: 0, scope: !2715, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 657, column: 31, scope: !2713)
!2724 = !DILocation(line: 871, column: 10, scope: !2715, inlinedAt: !2723)
!2725 = !DILocation(line: 657, column: 31, scope: !2713)
!2726 = !DILocation(line: 664, column: 23, scope: !2392)
!2727 = !DILocation(line: 665, column: 19, scope: !2393)
!2728 = !DILocation(line: 666, column: 15, scope: !2390)
!2729 = !DILocation(line: 0, scope: !2390)
!2730 = !DILocation(line: 670, column: 19, scope: !2406)
!2731 = !DILocation(line: 670, column: 23, scope: !2406)
!2732 = !DILocation(line: 674, column: 33, scope: !2405)
!2733 = !DILocation(line: 0, scope: !2405)
!2734 = !DILocation(line: 676, column: 17, scope: !2405)
!2735 = !DILocation(line: 398, column: 12, scope: !2376)
!2736 = !DILocation(line: 678, column: 43, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !603, line: 678, column: 25)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !603, line: 677, column: 19)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !603, line: 676, column: 17)
!2740 = distinct !DILexicalBlock(scope: !2405, file: !603, line: 676, column: 17)
!2741 = !DILocation(line: 680, column: 25, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !603, line: 680, column: 25)
!2743 = distinct !DILexicalBlock(scope: !2737, file: !603, line: 679, column: 23)
!2744 = !DILocation(line: 680, column: 25, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !603, line: 680, column: 25)
!2746 = !DILocation(line: 680, column: 25, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !603, line: 680, column: 25)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !603, line: 680, column: 25)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !603, line: 680, column: 25)
!2750 = !DILocation(line: 680, column: 25, scope: !2748)
!2751 = !DILocation(line: 680, column: 25, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !603, line: 680, column: 25)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !603, line: 680, column: 25)
!2754 = !DILocation(line: 680, column: 25, scope: !2753)
!2755 = !DILocation(line: 680, column: 25, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !603, line: 680, column: 25)
!2757 = distinct !DILexicalBlock(scope: !2749, file: !603, line: 680, column: 25)
!2758 = !DILocation(line: 680, column: 25, scope: !2757)
!2759 = !DILocation(line: 680, column: 25, scope: !2749)
!2760 = !DILocation(line: 680, column: 25, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !603, line: 680, column: 25)
!2762 = distinct !DILexicalBlock(scope: !2742, file: !603, line: 680, column: 25)
!2763 = !DILocation(line: 680, column: 25, scope: !2762)
!2764 = !DILocation(line: 681, column: 25, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !603, line: 681, column: 25)
!2766 = distinct !DILexicalBlock(scope: !2743, file: !603, line: 681, column: 25)
!2767 = !DILocation(line: 681, column: 25, scope: !2766)
!2768 = !DILocation(line: 682, column: 25, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !603, line: 682, column: 25)
!2770 = distinct !DILexicalBlock(scope: !2743, file: !603, line: 682, column: 25)
!2771 = !DILocation(line: 682, column: 25, scope: !2770)
!2772 = !DILocation(line: 683, column: 38, scope: !2743)
!2773 = !DILocation(line: 683, column: 33, scope: !2743)
!2774 = !DILocation(line: 684, column: 23, scope: !2743)
!2775 = !DILocation(line: 685, column: 30, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2737, file: !603, line: 685, column: 30)
!2777 = !DILocation(line: 685, column: 30, scope: !2737)
!2778 = !DILocation(line: 687, column: 25, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !603, line: 687, column: 25)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !603, line: 687, column: 25)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !603, line: 686, column: 23)
!2782 = !DILocation(line: 687, column: 25, scope: !2780)
!2783 = !DILocation(line: 689, column: 23, scope: !2781)
!2784 = !DILocation(line: 690, column: 35, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2738, file: !603, line: 690, column: 25)
!2786 = !DILocation(line: 690, column: 30, scope: !2785)
!2787 = !DILocation(line: 690, column: 25, scope: !2738)
!2788 = !DILocation(line: 692, column: 21, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !603, line: 692, column: 21)
!2790 = distinct !DILexicalBlock(scope: !2738, file: !603, line: 692, column: 21)
!2791 = !DILocation(line: 692, column: 21, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !603, line: 692, column: 21)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !603, line: 692, column: 21)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !603, line: 692, column: 21)
!2795 = !DILocation(line: 692, column: 21, scope: !2793)
!2796 = !DILocation(line: 692, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !603, line: 692, column: 21)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !603, line: 692, column: 21)
!2799 = !DILocation(line: 692, column: 21, scope: !2798)
!2800 = !DILocation(line: 692, column: 21, scope: !2794)
!2801 = !DILocation(line: 0, scope: !2738)
!2802 = !DILocation(line: 693, column: 21, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !603, line: 693, column: 21)
!2804 = distinct !DILexicalBlock(scope: !2738, file: !603, line: 693, column: 21)
!2805 = !DILocation(line: 693, column: 21, scope: !2804)
!2806 = !DILocation(line: 694, column: 25, scope: !2738)
!2807 = !DILocation(line: 676, column: 17, scope: !2739)
!2808 = distinct !{!2808, !2809, !2810}
!2809 = !DILocation(line: 676, column: 17, scope: !2740)
!2810 = !DILocation(line: 695, column: 19, scope: !2740)
!2811 = !DILocation(line: 409, column: 30, scope: !2527)
!2812 = !DILocation(line: 702, column: 34, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2376, file: !603, line: 702, column: 11)
!2814 = !DILocation(line: 704, column: 14, scope: !2813)
!2815 = !DILocation(line: 705, column: 14, scope: !2813)
!2816 = !DILocation(line: 705, column: 35, scope: !2813)
!2817 = !DILocation(line: 705, column: 17, scope: !2813)
!2818 = !DILocation(line: 705, column: 47, scope: !2813)
!2819 = !DILocation(line: 705, column: 65, scope: !2813)
!2820 = !DILocation(line: 706, column: 11, scope: !2813)
!2821 = !DILocation(line: 702, column: 11, scope: !2376)
!2822 = !DILocation(line: 395, column: 15, scope: !2374)
!2823 = !DILocation(line: 709, column: 5, scope: !2376)
!2824 = !DILocation(line: 710, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2376, file: !603, line: 710, column: 7)
!2826 = !DILocation(line: 710, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2825, file: !603, line: 710, column: 7)
!2828 = !DILocation(line: 710, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !603, line: 710, column: 7)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !603, line: 710, column: 7)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !603, line: 710, column: 7)
!2832 = !DILocation(line: 710, column: 7, scope: !2830)
!2833 = !DILocation(line: 710, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !603, line: 710, column: 7)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !603, line: 710, column: 7)
!2836 = !DILocation(line: 710, column: 7, scope: !2835)
!2837 = !DILocation(line: 710, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !603, line: 710, column: 7)
!2839 = distinct !DILexicalBlock(scope: !2831, file: !603, line: 710, column: 7)
!2840 = !DILocation(line: 710, column: 7, scope: !2839)
!2841 = !DILocation(line: 710, column: 7, scope: !2831)
!2842 = !DILocation(line: 710, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !603, line: 710, column: 7)
!2844 = distinct !DILexicalBlock(scope: !2825, file: !603, line: 710, column: 7)
!2845 = !DILocation(line: 710, column: 7, scope: !2844)
!2846 = !DILocation(line: 712, column: 5, scope: !2376)
!2847 = !DILocation(line: 713, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !603, line: 713, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2376, file: !603, line: 713, column: 7)
!2850 = !DILocation(line: 417, column: 21, scope: !2376)
!2851 = !DILocation(line: 713, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !603, line: 713, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !603, line: 713, column: 7)
!2854 = distinct !DILexicalBlock(scope: !2848, file: !603, line: 713, column: 7)
!2855 = !DILocation(line: 713, column: 7, scope: !2853)
!2856 = !DILocation(line: 713, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !603, line: 713, column: 7)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !603, line: 713, column: 7)
!2859 = !DILocation(line: 713, column: 7, scope: !2858)
!2860 = !DILocation(line: 713, column: 7, scope: !2854)
!2861 = !DILocation(line: 714, column: 7, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !603, line: 714, column: 7)
!2863 = distinct !DILexicalBlock(scope: !2376, file: !603, line: 714, column: 7)
!2864 = !DILocation(line: 714, column: 7, scope: !2863)
!2865 = !DILocation(line: 716, column: 13, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2376, file: !603, line: 716, column: 11)
!2867 = !DILocation(line: 716, column: 11, scope: !2376)
!2868 = !DILocation(line: 718, column: 5, scope: !2377)
!2869 = !DILocation(line: 395, column: 82, scope: !2377)
!2870 = !DILocation(line: 395, column: 3, scope: !2377)
!2871 = distinct !{!2871, !2523, !2872, !1112}
!2872 = !DILocation(line: 718, column: 5, scope: !2374)
!2873 = !DILocation(line: 720, column: 11, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2342, file: !603, line: 720, column: 7)
!2875 = !DILocation(line: 720, column: 16, scope: !2874)
!2876 = !DILocation(line: 728, column: 51, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2342, file: !603, line: 728, column: 7)
!2878 = !DILocation(line: 731, column: 11, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !603, line: 731, column: 11)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !603, line: 730, column: 5)
!2881 = !DILocation(line: 731, column: 11, scope: !2880)
!2882 = !DILocation(line: 732, column: 16, scope: !2879)
!2883 = !DILocation(line: 732, column: 9, scope: !2879)
!2884 = !DILocation(line: 736, column: 18, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2879, file: !603, line: 736, column: 16)
!2886 = !DILocation(line: 736, column: 29, scope: !2885)
!2887 = !DILocation(line: 745, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2342, file: !603, line: 745, column: 7)
!2889 = !DILocation(line: 745, column: 20, scope: !2888)
!2890 = !DILocation(line: 746, column: 12, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !603, line: 746, column: 5)
!2892 = distinct !DILexicalBlock(scope: !2888, file: !603, line: 746, column: 5)
!2893 = !DILocation(line: 746, column: 5, scope: !2892)
!2894 = !DILocation(line: 747, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !603, line: 747, column: 7)
!2896 = distinct !DILexicalBlock(scope: !2891, file: !603, line: 747, column: 7)
!2897 = !DILocation(line: 747, column: 7, scope: !2896)
!2898 = !DILocation(line: 746, column: 39, scope: !2891)
!2899 = distinct !{!2899, !2893, !2900, !1112}
!2900 = !DILocation(line: 747, column: 7, scope: !2892)
!2901 = !DILocation(line: 749, column: 11, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2342, file: !603, line: 749, column: 7)
!2903 = !DILocation(line: 749, column: 7, scope: !2342)
!2904 = !DILocation(line: 750, column: 5, scope: !2902)
!2905 = !DILocation(line: 750, column: 17, scope: !2902)
!2906 = !DILocation(line: 753, column: 2, scope: !2342)
!2907 = !DILocation(line: 756, column: 51, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2342, file: !603, line: 756, column: 7)
!2909 = !DILocation(line: 756, column: 21, scope: !2908)
!2910 = !DILocation(line: 760, column: 42, scope: !2342)
!2911 = !DILocation(line: 758, column: 10, scope: !2342)
!2912 = !DILocation(line: 758, column: 3, scope: !2342)
!2913 = !DILocation(line: 762, column: 1, scope: !2342)
!2914 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1189, file: !1189, line: 98, type: !2915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!127}
!2917 = !DISubprogram(name: "strlen", scope: !1185, file: !1185, line: 407, type: !2918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!129, !130}
!2920 = !DISubprogram(name: "iswprint", scope: !2921, file: !2921, line: 120, type: !2717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2921 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2922 = distinct !DISubprogram(name: "quotearg_alloc", scope: !603, file: !603, line: 788, type: !2923, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!124, !130, !127, !2235}
!2925 = !{!2926, !2927, !2928}
!2926 = !DILocalVariable(name: "arg", arg: 1, scope: !2922, file: !603, line: 788, type: !130)
!2927 = !DILocalVariable(name: "argsize", arg: 2, scope: !2922, file: !603, line: 788, type: !127)
!2928 = !DILocalVariable(name: "o", arg: 3, scope: !2922, file: !603, line: 789, type: !2235)
!2929 = !DILocation(line: 0, scope: !2922)
!2930 = !DILocalVariable(name: "arg", arg: 1, scope: !2931, file: !603, line: 801, type: !130)
!2931 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !603, file: !603, line: 801, type: !2932, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!124, !130, !127, !881, !2235}
!2934 = !{!2930, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942}
!2935 = !DILocalVariable(name: "argsize", arg: 2, scope: !2931, file: !603, line: 801, type: !127)
!2936 = !DILocalVariable(name: "size", arg: 3, scope: !2931, file: !603, line: 801, type: !881)
!2937 = !DILocalVariable(name: "o", arg: 4, scope: !2931, file: !603, line: 802, type: !2235)
!2938 = !DILocalVariable(name: "p", scope: !2931, file: !603, line: 804, type: !2235)
!2939 = !DILocalVariable(name: "saved_errno", scope: !2931, file: !603, line: 805, type: !103)
!2940 = !DILocalVariable(name: "flags", scope: !2931, file: !603, line: 807, type: !103)
!2941 = !DILocalVariable(name: "bufsize", scope: !2931, file: !603, line: 808, type: !127)
!2942 = !DILocalVariable(name: "buf", scope: !2931, file: !603, line: 812, type: !124)
!2943 = !DILocation(line: 0, scope: !2931, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 791, column: 10, scope: !2922)
!2945 = !DILocation(line: 804, column: 37, scope: !2931, inlinedAt: !2944)
!2946 = !DILocation(line: 805, column: 21, scope: !2931, inlinedAt: !2944)
!2947 = !DILocation(line: 807, column: 18, scope: !2931, inlinedAt: !2944)
!2948 = !DILocation(line: 807, column: 24, scope: !2931, inlinedAt: !2944)
!2949 = !DILocation(line: 808, column: 72, scope: !2931, inlinedAt: !2944)
!2950 = !DILocation(line: 809, column: 56, scope: !2931, inlinedAt: !2944)
!2951 = !DILocation(line: 810, column: 49, scope: !2931, inlinedAt: !2944)
!2952 = !DILocation(line: 811, column: 49, scope: !2931, inlinedAt: !2944)
!2953 = !DILocation(line: 808, column: 20, scope: !2931, inlinedAt: !2944)
!2954 = !DILocation(line: 811, column: 62, scope: !2931, inlinedAt: !2944)
!2955 = !DILocation(line: 812, column: 15, scope: !2931, inlinedAt: !2944)
!2956 = !DILocation(line: 813, column: 60, scope: !2931, inlinedAt: !2944)
!2957 = !DILocation(line: 815, column: 32, scope: !2931, inlinedAt: !2944)
!2958 = !DILocation(line: 815, column: 47, scope: !2931, inlinedAt: !2944)
!2959 = !DILocation(line: 813, column: 3, scope: !2931, inlinedAt: !2944)
!2960 = !DILocation(line: 816, column: 9, scope: !2931, inlinedAt: !2944)
!2961 = !DILocation(line: 791, column: 3, scope: !2922)
!2962 = !DILocation(line: 0, scope: !2931)
!2963 = !DILocation(line: 804, column: 37, scope: !2931)
!2964 = !DILocation(line: 805, column: 21, scope: !2931)
!2965 = !DILocation(line: 807, column: 18, scope: !2931)
!2966 = !DILocation(line: 807, column: 27, scope: !2931)
!2967 = !DILocation(line: 807, column: 24, scope: !2931)
!2968 = !DILocation(line: 808, column: 72, scope: !2931)
!2969 = !DILocation(line: 809, column: 56, scope: !2931)
!2970 = !DILocation(line: 810, column: 49, scope: !2931)
!2971 = !DILocation(line: 811, column: 49, scope: !2931)
!2972 = !DILocation(line: 808, column: 20, scope: !2931)
!2973 = !DILocation(line: 811, column: 62, scope: !2931)
!2974 = !DILocation(line: 812, column: 15, scope: !2931)
!2975 = !DILocation(line: 813, column: 60, scope: !2931)
!2976 = !DILocation(line: 815, column: 32, scope: !2931)
!2977 = !DILocation(line: 815, column: 47, scope: !2931)
!2978 = !DILocation(line: 813, column: 3, scope: !2931)
!2979 = !DILocation(line: 816, column: 9, scope: !2931)
!2980 = !DILocation(line: 817, column: 7, scope: !2931)
!2981 = !DILocation(line: 818, column: 11, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2931, file: !603, line: 817, column: 7)
!2983 = !{!1368, !1368, i64 0}
!2984 = !DILocation(line: 818, column: 5, scope: !2982)
!2985 = !DILocation(line: 819, column: 3, scope: !2931)
!2986 = distinct !DISubprogram(name: "quotearg_free", scope: !603, file: !603, line: 837, type: !558, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !2987)
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "sv", scope: !2986, file: !603, line: 839, type: !704)
!2989 = !DILocalVariable(name: "i", scope: !2990, file: !603, line: 840, type: !103)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !603, line: 840, column: 3)
!2991 = !DILocation(line: 839, column: 24, scope: !2986)
!2992 = !DILocation(line: 0, scope: !2986)
!2993 = !DILocation(line: 0, scope: !2990)
!2994 = !DILocation(line: 840, column: 21, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !603, line: 840, column: 3)
!2996 = !DILocation(line: 840, column: 3, scope: !2990)
!2997 = !DILocation(line: 842, column: 13, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2986, file: !603, line: 842, column: 7)
!2999 = !{!3000, !996, i64 8}
!3000 = !{!"slotvec", !1368, i64 0, !996, i64 8}
!3001 = !DILocation(line: 842, column: 17, scope: !2998)
!3002 = !DILocation(line: 842, column: 7, scope: !2986)
!3003 = !DILocation(line: 841, column: 17, scope: !2995)
!3004 = !DILocation(line: 841, column: 5, scope: !2995)
!3005 = !DILocation(line: 840, column: 32, scope: !2995)
!3006 = distinct !{!3006, !2996, !3007, !1112}
!3007 = !DILocation(line: 841, column: 20, scope: !2990)
!3008 = !DILocation(line: 844, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2998, file: !603, line: 843, column: 5)
!3010 = !DILocation(line: 845, column: 21, scope: !3009)
!3011 = !{!3000, !1368, i64 0}
!3012 = !DILocation(line: 846, column: 20, scope: !3009)
!3013 = !DILocation(line: 847, column: 5, scope: !3009)
!3014 = !DILocation(line: 848, column: 10, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2986, file: !603, line: 848, column: 7)
!3016 = !DILocation(line: 848, column: 7, scope: !2986)
!3017 = !DILocation(line: 850, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !603, line: 849, column: 5)
!3019 = !DILocation(line: 851, column: 15, scope: !3018)
!3020 = !DILocation(line: 852, column: 5, scope: !3018)
!3021 = !DILocation(line: 853, column: 10, scope: !2986)
!3022 = !DILocation(line: 854, column: 1, scope: !2986)
!3023 = distinct !DISubprogram(name: "quotearg_n", scope: !603, file: !603, line: 919, type: !1182, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3024)
!3024 = !{!3025, !3026}
!3025 = !DILocalVariable(name: "n", arg: 1, scope: !3023, file: !603, line: 919, type: !103)
!3026 = !DILocalVariable(name: "arg", arg: 2, scope: !3023, file: !603, line: 919, type: !130)
!3027 = !DILocation(line: 0, scope: !3023)
!3028 = !DILocation(line: 921, column: 10, scope: !3023)
!3029 = !DILocation(line: 921, column: 3, scope: !3023)
!3030 = distinct !DISubprogram(name: "quotearg_n_options", scope: !603, file: !603, line: 866, type: !3031, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!124, !103, !130, !127, !2235}
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3044, !3045, !3047, !3048, !3049}
!3034 = !DILocalVariable(name: "n", arg: 1, scope: !3030, file: !603, line: 866, type: !103)
!3035 = !DILocalVariable(name: "arg", arg: 2, scope: !3030, file: !603, line: 866, type: !130)
!3036 = !DILocalVariable(name: "argsize", arg: 3, scope: !3030, file: !603, line: 866, type: !127)
!3037 = !DILocalVariable(name: "options", arg: 4, scope: !3030, file: !603, line: 867, type: !2235)
!3038 = !DILocalVariable(name: "saved_errno", scope: !3030, file: !603, line: 869, type: !103)
!3039 = !DILocalVariable(name: "sv", scope: !3030, file: !603, line: 871, type: !704)
!3040 = !DILocalVariable(name: "nslots_max", scope: !3030, file: !603, line: 873, type: !103)
!3041 = !DILocalVariable(name: "preallocated", scope: !3042, file: !603, line: 879, type: !223)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !603, line: 878, column: 5)
!3043 = distinct !DILexicalBlock(scope: !3030, file: !603, line: 877, column: 7)
!3044 = !DILocalVariable(name: "new_nslots", scope: !3042, file: !603, line: 880, type: !894)
!3045 = !DILocalVariable(name: "size", scope: !3046, file: !603, line: 891, type: !127)
!3046 = distinct !DILexicalBlock(scope: !3030, file: !603, line: 890, column: 3)
!3047 = !DILocalVariable(name: "val", scope: !3046, file: !603, line: 892, type: !124)
!3048 = !DILocalVariable(name: "flags", scope: !3046, file: !603, line: 894, type: !103)
!3049 = !DILocalVariable(name: "qsize", scope: !3046, file: !603, line: 895, type: !127)
!3050 = distinct !DIAssignID()
!3051 = !DILocation(line: 0, scope: !3042)
!3052 = !DILocation(line: 0, scope: !3030)
!3053 = !DILocation(line: 869, column: 21, scope: !3030)
!3054 = !DILocation(line: 871, column: 24, scope: !3030)
!3055 = !DILocation(line: 874, column: 17, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3030, file: !603, line: 874, column: 7)
!3057 = !DILocation(line: 875, column: 5, scope: !3056)
!3058 = !DILocation(line: 877, column: 7, scope: !3043)
!3059 = !DILocation(line: 877, column: 14, scope: !3043)
!3060 = !DILocation(line: 877, column: 7, scope: !3030)
!3061 = !DILocation(line: 879, column: 31, scope: !3042)
!3062 = !DILocation(line: 880, column: 7, scope: !3042)
!3063 = !DILocation(line: 880, column: 26, scope: !3042)
!3064 = !DILocation(line: 880, column: 13, scope: !3042)
!3065 = distinct !DIAssignID()
!3066 = !DILocation(line: 882, column: 31, scope: !3042)
!3067 = !DILocation(line: 883, column: 33, scope: !3042)
!3068 = !DILocation(line: 883, column: 42, scope: !3042)
!3069 = !DILocation(line: 883, column: 31, scope: !3042)
!3070 = !DILocation(line: 882, column: 22, scope: !3042)
!3071 = !DILocation(line: 882, column: 15, scope: !3042)
!3072 = !DILocation(line: 884, column: 11, scope: !3042)
!3073 = !DILocation(line: 885, column: 15, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3042, file: !603, line: 884, column: 11)
!3075 = !{i64 0, i64 8, !2983, i64 8, i64 8, !995}
!3076 = !DILocation(line: 885, column: 9, scope: !3074)
!3077 = !DILocation(line: 886, column: 20, scope: !3042)
!3078 = !DILocation(line: 886, column: 18, scope: !3042)
!3079 = !DILocation(line: 886, column: 32, scope: !3042)
!3080 = !DILocation(line: 886, column: 43, scope: !3042)
!3081 = !DILocation(line: 886, column: 53, scope: !3042)
!3082 = !DILocation(line: 0, scope: !2457, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 886, column: 7, scope: !3042)
!3084 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !3083)
!3085 = !DILocation(line: 887, column: 16, scope: !3042)
!3086 = !DILocation(line: 887, column: 14, scope: !3042)
!3087 = !DILocation(line: 888, column: 5, scope: !3043)
!3088 = !DILocation(line: 888, column: 5, scope: !3042)
!3089 = !DILocation(line: 891, column: 19, scope: !3046)
!3090 = !DILocation(line: 891, column: 25, scope: !3046)
!3091 = !DILocation(line: 0, scope: !3046)
!3092 = !DILocation(line: 892, column: 23, scope: !3046)
!3093 = !DILocation(line: 894, column: 26, scope: !3046)
!3094 = !DILocation(line: 894, column: 32, scope: !3046)
!3095 = !DILocation(line: 896, column: 55, scope: !3046)
!3096 = !DILocation(line: 897, column: 55, scope: !3046)
!3097 = !DILocation(line: 898, column: 55, scope: !3046)
!3098 = !DILocation(line: 899, column: 55, scope: !3046)
!3099 = !DILocation(line: 895, column: 20, scope: !3046)
!3100 = !DILocation(line: 901, column: 14, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3046, file: !603, line: 901, column: 9)
!3102 = !DILocation(line: 901, column: 9, scope: !3046)
!3103 = !DILocation(line: 903, column: 35, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3101, file: !603, line: 902, column: 7)
!3105 = !DILocation(line: 903, column: 20, scope: !3104)
!3106 = !DILocation(line: 904, column: 17, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3104, file: !603, line: 904, column: 13)
!3108 = !DILocation(line: 904, column: 13, scope: !3104)
!3109 = !DILocation(line: 905, column: 11, scope: !3107)
!3110 = !DILocation(line: 906, column: 27, scope: !3104)
!3111 = !DILocation(line: 906, column: 19, scope: !3104)
!3112 = !DILocation(line: 907, column: 69, scope: !3104)
!3113 = !DILocation(line: 909, column: 44, scope: !3104)
!3114 = !DILocation(line: 910, column: 44, scope: !3104)
!3115 = !DILocation(line: 907, column: 9, scope: !3104)
!3116 = !DILocation(line: 911, column: 7, scope: !3104)
!3117 = !DILocation(line: 913, column: 11, scope: !3046)
!3118 = !DILocation(line: 914, column: 5, scope: !3046)
!3119 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !603, file: !603, line: 925, type: !3120, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!124, !103, !130, !127}
!3122 = !{!3123, !3124, !3125}
!3123 = !DILocalVariable(name: "n", arg: 1, scope: !3119, file: !603, line: 925, type: !103)
!3124 = !DILocalVariable(name: "arg", arg: 2, scope: !3119, file: !603, line: 925, type: !130)
!3125 = !DILocalVariable(name: "argsize", arg: 3, scope: !3119, file: !603, line: 925, type: !127)
!3126 = !DILocation(line: 0, scope: !3119)
!3127 = !DILocation(line: 927, column: 10, scope: !3119)
!3128 = !DILocation(line: 927, column: 3, scope: !3119)
!3129 = distinct !DISubprogram(name: "quotearg", scope: !603, file: !603, line: 931, type: !1191, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3130)
!3130 = !{!3131}
!3131 = !DILocalVariable(name: "arg", arg: 1, scope: !3129, file: !603, line: 931, type: !130)
!3132 = !DILocation(line: 0, scope: !3129)
!3133 = !DILocation(line: 0, scope: !3023, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 933, column: 10, scope: !3129)
!3135 = !DILocation(line: 921, column: 10, scope: !3023, inlinedAt: !3134)
!3136 = !DILocation(line: 933, column: 3, scope: !3129)
!3137 = distinct !DISubprogram(name: "quotearg_mem", scope: !603, file: !603, line: 937, type: !3138, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!124, !130, !127}
!3140 = !{!3141, !3142}
!3141 = !DILocalVariable(name: "arg", arg: 1, scope: !3137, file: !603, line: 937, type: !130)
!3142 = !DILocalVariable(name: "argsize", arg: 2, scope: !3137, file: !603, line: 937, type: !127)
!3143 = !DILocation(line: 0, scope: !3137)
!3144 = !DILocation(line: 0, scope: !3119, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 939, column: 10, scope: !3137)
!3146 = !DILocation(line: 927, column: 10, scope: !3119, inlinedAt: !3145)
!3147 = !DILocation(line: 939, column: 3, scope: !3137)
!3148 = distinct !DISubprogram(name: "quotearg_n_style", scope: !603, file: !603, line: 943, type: !3149, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!124, !103, !629, !130}
!3151 = !{!3152, !3153, !3154, !3155}
!3152 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !603, line: 943, type: !103)
!3153 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !603, line: 943, type: !629)
!3154 = !DILocalVariable(name: "arg", arg: 3, scope: !3148, file: !603, line: 943, type: !130)
!3155 = !DILocalVariable(name: "o", scope: !3148, file: !603, line: 945, type: !2236)
!3156 = distinct !DIAssignID()
!3157 = !DILocation(line: 0, scope: !3148)
!3158 = !DILocation(line: 945, column: 3, scope: !3148)
!3159 = !{!3160}
!3160 = distinct !{!3160, !3161, !"quoting_options_from_style: argument 0"}
!3161 = distinct !{!3161, !"quoting_options_from_style"}
!3162 = !DILocation(line: 945, column: 36, scope: !3148)
!3163 = !DILocalVariable(name: "style", arg: 1, scope: !3164, file: !603, line: 183, type: !629)
!3164 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !603, file: !603, line: 183, type: !3165, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!656, !629}
!3167 = !{!3163, !3168}
!3168 = !DILocalVariable(name: "o", scope: !3164, file: !603, line: 185, type: !656)
!3169 = !DILocation(line: 0, scope: !3164, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 945, column: 36, scope: !3148)
!3171 = !DILocation(line: 185, column: 26, scope: !3164, inlinedAt: !3170)
!3172 = distinct !DIAssignID()
!3173 = !DILocation(line: 186, column: 13, scope: !3174, inlinedAt: !3170)
!3174 = distinct !DILexicalBlock(scope: !3164, file: !603, line: 186, column: 7)
!3175 = !DILocation(line: 186, column: 7, scope: !3164, inlinedAt: !3170)
!3176 = !DILocation(line: 187, column: 5, scope: !3174, inlinedAt: !3170)
!3177 = !DILocation(line: 188, column: 11, scope: !3164, inlinedAt: !3170)
!3178 = distinct !DIAssignID()
!3179 = !DILocation(line: 946, column: 10, scope: !3148)
!3180 = !DILocation(line: 947, column: 1, scope: !3148)
!3181 = !DILocation(line: 946, column: 3, scope: !3148)
!3182 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !603, file: !603, line: 950, type: !3183, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!124, !103, !629, !130, !127}
!3185 = !{!3186, !3187, !3188, !3189, !3190}
!3186 = !DILocalVariable(name: "n", arg: 1, scope: !3182, file: !603, line: 950, type: !103)
!3187 = !DILocalVariable(name: "s", arg: 2, scope: !3182, file: !603, line: 950, type: !629)
!3188 = !DILocalVariable(name: "arg", arg: 3, scope: !3182, file: !603, line: 951, type: !130)
!3189 = !DILocalVariable(name: "argsize", arg: 4, scope: !3182, file: !603, line: 951, type: !127)
!3190 = !DILocalVariable(name: "o", scope: !3182, file: !603, line: 953, type: !2236)
!3191 = distinct !DIAssignID()
!3192 = !DILocation(line: 0, scope: !3182)
!3193 = !DILocation(line: 953, column: 3, scope: !3182)
!3194 = !{!3195}
!3195 = distinct !{!3195, !3196, !"quoting_options_from_style: argument 0"}
!3196 = distinct !{!3196, !"quoting_options_from_style"}
!3197 = !DILocation(line: 953, column: 36, scope: !3182)
!3198 = !DILocation(line: 0, scope: !3164, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 953, column: 36, scope: !3182)
!3200 = !DILocation(line: 185, column: 26, scope: !3164, inlinedAt: !3199)
!3201 = distinct !DIAssignID()
!3202 = !DILocation(line: 186, column: 13, scope: !3174, inlinedAt: !3199)
!3203 = !DILocation(line: 186, column: 7, scope: !3164, inlinedAt: !3199)
!3204 = !DILocation(line: 187, column: 5, scope: !3174, inlinedAt: !3199)
!3205 = !DILocation(line: 188, column: 11, scope: !3164, inlinedAt: !3199)
!3206 = distinct !DIAssignID()
!3207 = !DILocation(line: 954, column: 10, scope: !3182)
!3208 = !DILocation(line: 955, column: 1, scope: !3182)
!3209 = !DILocation(line: 954, column: 3, scope: !3182)
!3210 = distinct !DISubprogram(name: "quotearg_style", scope: !603, file: !603, line: 958, type: !3211, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!124, !629, !130}
!3213 = !{!3214, !3215}
!3214 = !DILocalVariable(name: "s", arg: 1, scope: !3210, file: !603, line: 958, type: !629)
!3215 = !DILocalVariable(name: "arg", arg: 2, scope: !3210, file: !603, line: 958, type: !130)
!3216 = distinct !DIAssignID()
!3217 = !DILocation(line: 0, scope: !3210)
!3218 = !DILocation(line: 0, scope: !3148, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 960, column: 10, scope: !3210)
!3220 = !DILocation(line: 945, column: 3, scope: !3148, inlinedAt: !3219)
!3221 = !{!3222}
!3222 = distinct !{!3222, !3223, !"quoting_options_from_style: argument 0"}
!3223 = distinct !{!3223, !"quoting_options_from_style"}
!3224 = !DILocation(line: 945, column: 36, scope: !3148, inlinedAt: !3219)
!3225 = !DILocation(line: 0, scope: !3164, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 945, column: 36, scope: !3148, inlinedAt: !3219)
!3227 = !DILocation(line: 185, column: 26, scope: !3164, inlinedAt: !3226)
!3228 = distinct !DIAssignID()
!3229 = !DILocation(line: 186, column: 13, scope: !3174, inlinedAt: !3226)
!3230 = !DILocation(line: 186, column: 7, scope: !3164, inlinedAt: !3226)
!3231 = !DILocation(line: 187, column: 5, scope: !3174, inlinedAt: !3226)
!3232 = !DILocation(line: 188, column: 11, scope: !3164, inlinedAt: !3226)
!3233 = distinct !DIAssignID()
!3234 = !DILocation(line: 946, column: 10, scope: !3148, inlinedAt: !3219)
!3235 = !DILocation(line: 947, column: 1, scope: !3148, inlinedAt: !3219)
!3236 = !DILocation(line: 960, column: 3, scope: !3210)
!3237 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !603, file: !603, line: 964, type: !3238, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!124, !629, !130, !127}
!3240 = !{!3241, !3242, !3243}
!3241 = !DILocalVariable(name: "s", arg: 1, scope: !3237, file: !603, line: 964, type: !629)
!3242 = !DILocalVariable(name: "arg", arg: 2, scope: !3237, file: !603, line: 964, type: !130)
!3243 = !DILocalVariable(name: "argsize", arg: 3, scope: !3237, file: !603, line: 964, type: !127)
!3244 = distinct !DIAssignID()
!3245 = !DILocation(line: 0, scope: !3237)
!3246 = !DILocation(line: 0, scope: !3182, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 966, column: 10, scope: !3237)
!3248 = !DILocation(line: 953, column: 3, scope: !3182, inlinedAt: !3247)
!3249 = !{!3250}
!3250 = distinct !{!3250, !3251, !"quoting_options_from_style: argument 0"}
!3251 = distinct !{!3251, !"quoting_options_from_style"}
!3252 = !DILocation(line: 953, column: 36, scope: !3182, inlinedAt: !3247)
!3253 = !DILocation(line: 0, scope: !3164, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 953, column: 36, scope: !3182, inlinedAt: !3247)
!3255 = !DILocation(line: 185, column: 26, scope: !3164, inlinedAt: !3254)
!3256 = distinct !DIAssignID()
!3257 = !DILocation(line: 186, column: 13, scope: !3174, inlinedAt: !3254)
!3258 = !DILocation(line: 186, column: 7, scope: !3164, inlinedAt: !3254)
!3259 = !DILocation(line: 187, column: 5, scope: !3174, inlinedAt: !3254)
!3260 = !DILocation(line: 188, column: 11, scope: !3164, inlinedAt: !3254)
!3261 = distinct !DIAssignID()
!3262 = !DILocation(line: 954, column: 10, scope: !3182, inlinedAt: !3247)
!3263 = !DILocation(line: 955, column: 1, scope: !3182, inlinedAt: !3247)
!3264 = !DILocation(line: 966, column: 3, scope: !3237)
!3265 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !603, file: !603, line: 970, type: !3266, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!124, !130, !127, !4}
!3268 = !{!3269, !3270, !3271, !3272}
!3269 = !DILocalVariable(name: "arg", arg: 1, scope: !3265, file: !603, line: 970, type: !130)
!3270 = !DILocalVariable(name: "argsize", arg: 2, scope: !3265, file: !603, line: 970, type: !127)
!3271 = !DILocalVariable(name: "ch", arg: 3, scope: !3265, file: !603, line: 970, type: !4)
!3272 = !DILocalVariable(name: "options", scope: !3265, file: !603, line: 972, type: !656)
!3273 = distinct !DIAssignID()
!3274 = !DILocation(line: 0, scope: !3265)
!3275 = !DILocation(line: 972, column: 3, scope: !3265)
!3276 = !DILocation(line: 973, column: 13, scope: !3265)
!3277 = !{i64 0, i64 4, !1065, i64 4, i64 4, !1065, i64 8, i64 32, !1074, i64 40, i64 8, !995, i64 48, i64 8, !995}
!3278 = distinct !DIAssignID()
!3279 = !DILocation(line: 0, scope: !2255, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 974, column: 3, scope: !3265)
!3281 = !DILocation(line: 147, column: 41, scope: !2255, inlinedAt: !3280)
!3282 = !DILocation(line: 147, column: 62, scope: !2255, inlinedAt: !3280)
!3283 = !DILocation(line: 147, column: 57, scope: !2255, inlinedAt: !3280)
!3284 = !DILocation(line: 148, column: 15, scope: !2255, inlinedAt: !3280)
!3285 = !DILocation(line: 149, column: 21, scope: !2255, inlinedAt: !3280)
!3286 = !DILocation(line: 149, column: 24, scope: !2255, inlinedAt: !3280)
!3287 = !DILocation(line: 150, column: 19, scope: !2255, inlinedAt: !3280)
!3288 = !DILocation(line: 150, column: 24, scope: !2255, inlinedAt: !3280)
!3289 = !DILocation(line: 150, column: 6, scope: !2255, inlinedAt: !3280)
!3290 = !DILocation(line: 975, column: 10, scope: !3265)
!3291 = !DILocation(line: 976, column: 1, scope: !3265)
!3292 = !DILocation(line: 975, column: 3, scope: !3265)
!3293 = distinct !DISubprogram(name: "quotearg_char", scope: !603, file: !603, line: 979, type: !3294, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!124, !130, !4}
!3296 = !{!3297, !3298}
!3297 = !DILocalVariable(name: "arg", arg: 1, scope: !3293, file: !603, line: 979, type: !130)
!3298 = !DILocalVariable(name: "ch", arg: 2, scope: !3293, file: !603, line: 979, type: !4)
!3299 = distinct !DIAssignID()
!3300 = !DILocation(line: 0, scope: !3293)
!3301 = !DILocation(line: 0, scope: !3265, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 981, column: 10, scope: !3293)
!3303 = !DILocation(line: 972, column: 3, scope: !3265, inlinedAt: !3302)
!3304 = !DILocation(line: 973, column: 13, scope: !3265, inlinedAt: !3302)
!3305 = distinct !DIAssignID()
!3306 = !DILocation(line: 0, scope: !2255, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 974, column: 3, scope: !3265, inlinedAt: !3302)
!3308 = !DILocation(line: 147, column: 41, scope: !2255, inlinedAt: !3307)
!3309 = !DILocation(line: 147, column: 62, scope: !2255, inlinedAt: !3307)
!3310 = !DILocation(line: 147, column: 57, scope: !2255, inlinedAt: !3307)
!3311 = !DILocation(line: 148, column: 15, scope: !2255, inlinedAt: !3307)
!3312 = !DILocation(line: 149, column: 21, scope: !2255, inlinedAt: !3307)
!3313 = !DILocation(line: 149, column: 24, scope: !2255, inlinedAt: !3307)
!3314 = !DILocation(line: 150, column: 19, scope: !2255, inlinedAt: !3307)
!3315 = !DILocation(line: 150, column: 24, scope: !2255, inlinedAt: !3307)
!3316 = !DILocation(line: 150, column: 6, scope: !2255, inlinedAt: !3307)
!3317 = !DILocation(line: 975, column: 10, scope: !3265, inlinedAt: !3302)
!3318 = !DILocation(line: 976, column: 1, scope: !3265, inlinedAt: !3302)
!3319 = !DILocation(line: 981, column: 3, scope: !3293)
!3320 = distinct !DISubprogram(name: "quotearg_colon", scope: !603, file: !603, line: 985, type: !1191, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3321)
!3321 = !{!3322}
!3322 = !DILocalVariable(name: "arg", arg: 1, scope: !3320, file: !603, line: 985, type: !130)
!3323 = distinct !DIAssignID()
!3324 = !DILocation(line: 0, scope: !3320)
!3325 = !DILocation(line: 0, scope: !3293, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 987, column: 10, scope: !3320)
!3327 = !DILocation(line: 0, scope: !3265, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 981, column: 10, scope: !3293, inlinedAt: !3326)
!3329 = !DILocation(line: 972, column: 3, scope: !3265, inlinedAt: !3328)
!3330 = !DILocation(line: 973, column: 13, scope: !3265, inlinedAt: !3328)
!3331 = distinct !DIAssignID()
!3332 = !DILocation(line: 0, scope: !2255, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 974, column: 3, scope: !3265, inlinedAt: !3328)
!3334 = !DILocation(line: 147, column: 57, scope: !2255, inlinedAt: !3333)
!3335 = !DILocation(line: 149, column: 21, scope: !2255, inlinedAt: !3333)
!3336 = !DILocation(line: 150, column: 6, scope: !2255, inlinedAt: !3333)
!3337 = !DILocation(line: 975, column: 10, scope: !3265, inlinedAt: !3328)
!3338 = !DILocation(line: 976, column: 1, scope: !3265, inlinedAt: !3328)
!3339 = !DILocation(line: 987, column: 3, scope: !3320)
!3340 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !603, file: !603, line: 991, type: !3138, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3341)
!3341 = !{!3342, !3343}
!3342 = !DILocalVariable(name: "arg", arg: 1, scope: !3340, file: !603, line: 991, type: !130)
!3343 = !DILocalVariable(name: "argsize", arg: 2, scope: !3340, file: !603, line: 991, type: !127)
!3344 = distinct !DIAssignID()
!3345 = !DILocation(line: 0, scope: !3340)
!3346 = !DILocation(line: 0, scope: !3265, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 993, column: 10, scope: !3340)
!3348 = !DILocation(line: 972, column: 3, scope: !3265, inlinedAt: !3347)
!3349 = !DILocation(line: 973, column: 13, scope: !3265, inlinedAt: !3347)
!3350 = distinct !DIAssignID()
!3351 = !DILocation(line: 0, scope: !2255, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 974, column: 3, scope: !3265, inlinedAt: !3347)
!3353 = !DILocation(line: 147, column: 57, scope: !2255, inlinedAt: !3352)
!3354 = !DILocation(line: 149, column: 21, scope: !2255, inlinedAt: !3352)
!3355 = !DILocation(line: 150, column: 6, scope: !2255, inlinedAt: !3352)
!3356 = !DILocation(line: 975, column: 10, scope: !3265, inlinedAt: !3347)
!3357 = !DILocation(line: 976, column: 1, scope: !3265, inlinedAt: !3347)
!3358 = !DILocation(line: 993, column: 3, scope: !3340)
!3359 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !603, file: !603, line: 997, type: !3149, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3360)
!3360 = !{!3361, !3362, !3363, !3364}
!3361 = !DILocalVariable(name: "n", arg: 1, scope: !3359, file: !603, line: 997, type: !103)
!3362 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !603, line: 997, type: !629)
!3363 = !DILocalVariable(name: "arg", arg: 3, scope: !3359, file: !603, line: 997, type: !130)
!3364 = !DILocalVariable(name: "options", scope: !3359, file: !603, line: 999, type: !656)
!3365 = distinct !DIAssignID()
!3366 = !DILocation(line: 0, scope: !3359)
!3367 = !DILocation(line: 185, column: 26, scope: !3164, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 1000, column: 13, scope: !3359)
!3369 = !DILocation(line: 999, column: 3, scope: !3359)
!3370 = !DILocation(line: 0, scope: !3164, inlinedAt: !3368)
!3371 = !DILocation(line: 186, column: 13, scope: !3174, inlinedAt: !3368)
!3372 = !DILocation(line: 186, column: 7, scope: !3164, inlinedAt: !3368)
!3373 = !DILocation(line: 187, column: 5, scope: !3174, inlinedAt: !3368)
!3374 = !{!3375}
!3375 = distinct !{!3375, !3376, !"quoting_options_from_style: argument 0"}
!3376 = distinct !{!3376, !"quoting_options_from_style"}
!3377 = !DILocation(line: 1000, column: 13, scope: !3359)
!3378 = distinct !DIAssignID()
!3379 = distinct !DIAssignID()
!3380 = !DILocation(line: 0, scope: !2255, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 1001, column: 3, scope: !3359)
!3382 = !DILocation(line: 147, column: 57, scope: !2255, inlinedAt: !3381)
!3383 = !DILocation(line: 149, column: 21, scope: !2255, inlinedAt: !3381)
!3384 = !DILocation(line: 150, column: 6, scope: !2255, inlinedAt: !3381)
!3385 = distinct !DIAssignID()
!3386 = !DILocation(line: 1002, column: 10, scope: !3359)
!3387 = !DILocation(line: 1003, column: 1, scope: !3359)
!3388 = !DILocation(line: 1002, column: 3, scope: !3359)
!3389 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !603, file: !603, line: 1006, type: !3390, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!124, !103, !130, !130, !130}
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !603, line: 1006, type: !103)
!3394 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3389, file: !603, line: 1006, type: !130)
!3395 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3389, file: !603, line: 1007, type: !130)
!3396 = !DILocalVariable(name: "arg", arg: 4, scope: !3389, file: !603, line: 1007, type: !130)
!3397 = distinct !DIAssignID()
!3398 = !DILocation(line: 0, scope: !3389)
!3399 = !DILocalVariable(name: "o", scope: !3400, file: !603, line: 1018, type: !656)
!3400 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !603, file: !603, line: 1014, type: !3401, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!124, !103, !130, !130, !130, !127}
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3399}
!3404 = !DILocalVariable(name: "n", arg: 1, scope: !3400, file: !603, line: 1014, type: !103)
!3405 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3400, file: !603, line: 1014, type: !130)
!3406 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3400, file: !603, line: 1015, type: !130)
!3407 = !DILocalVariable(name: "arg", arg: 4, scope: !3400, file: !603, line: 1016, type: !130)
!3408 = !DILocalVariable(name: "argsize", arg: 5, scope: !3400, file: !603, line: 1016, type: !127)
!3409 = !DILocation(line: 0, scope: !3400, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 1009, column: 10, scope: !3389)
!3411 = !DILocation(line: 1018, column: 3, scope: !3400, inlinedAt: !3410)
!3412 = !DILocation(line: 1018, column: 30, scope: !3400, inlinedAt: !3410)
!3413 = distinct !DIAssignID()
!3414 = distinct !DIAssignID()
!3415 = !DILocation(line: 0, scope: !2295, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1019, column: 3, scope: !3400, inlinedAt: !3410)
!3417 = !DILocation(line: 174, column: 12, scope: !2295, inlinedAt: !3416)
!3418 = distinct !DIAssignID()
!3419 = !DILocation(line: 175, column: 8, scope: !2308, inlinedAt: !3416)
!3420 = !DILocation(line: 175, column: 19, scope: !2308, inlinedAt: !3416)
!3421 = !DILocation(line: 176, column: 5, scope: !2308, inlinedAt: !3416)
!3422 = !DILocation(line: 177, column: 6, scope: !2295, inlinedAt: !3416)
!3423 = !DILocation(line: 177, column: 17, scope: !2295, inlinedAt: !3416)
!3424 = distinct !DIAssignID()
!3425 = !DILocation(line: 178, column: 6, scope: !2295, inlinedAt: !3416)
!3426 = !DILocation(line: 178, column: 18, scope: !2295, inlinedAt: !3416)
!3427 = distinct !DIAssignID()
!3428 = !DILocation(line: 1020, column: 10, scope: !3400, inlinedAt: !3410)
!3429 = !DILocation(line: 1021, column: 1, scope: !3400, inlinedAt: !3410)
!3430 = !DILocation(line: 1009, column: 3, scope: !3389)
!3431 = distinct !DIAssignID()
!3432 = !DILocation(line: 0, scope: !3400)
!3433 = !DILocation(line: 1018, column: 3, scope: !3400)
!3434 = !DILocation(line: 1018, column: 30, scope: !3400)
!3435 = distinct !DIAssignID()
!3436 = distinct !DIAssignID()
!3437 = !DILocation(line: 0, scope: !2295, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 1019, column: 3, scope: !3400)
!3439 = !DILocation(line: 174, column: 12, scope: !2295, inlinedAt: !3438)
!3440 = distinct !DIAssignID()
!3441 = !DILocation(line: 175, column: 8, scope: !2308, inlinedAt: !3438)
!3442 = !DILocation(line: 175, column: 19, scope: !2308, inlinedAt: !3438)
!3443 = !DILocation(line: 176, column: 5, scope: !2308, inlinedAt: !3438)
!3444 = !DILocation(line: 177, column: 6, scope: !2295, inlinedAt: !3438)
!3445 = !DILocation(line: 177, column: 17, scope: !2295, inlinedAt: !3438)
!3446 = distinct !DIAssignID()
!3447 = !DILocation(line: 178, column: 6, scope: !2295, inlinedAt: !3438)
!3448 = !DILocation(line: 178, column: 18, scope: !2295, inlinedAt: !3438)
!3449 = distinct !DIAssignID()
!3450 = !DILocation(line: 1020, column: 10, scope: !3400)
!3451 = !DILocation(line: 1021, column: 1, scope: !3400)
!3452 = !DILocation(line: 1020, column: 3, scope: !3400)
!3453 = distinct !DISubprogram(name: "quotearg_custom", scope: !603, file: !603, line: 1024, type: !3454, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!124, !130, !130, !130}
!3456 = !{!3457, !3458, !3459}
!3457 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3453, file: !603, line: 1024, type: !130)
!3458 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3453, file: !603, line: 1024, type: !130)
!3459 = !DILocalVariable(name: "arg", arg: 3, scope: !3453, file: !603, line: 1025, type: !130)
!3460 = distinct !DIAssignID()
!3461 = !DILocation(line: 0, scope: !3453)
!3462 = !DILocation(line: 0, scope: !3389, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 1027, column: 10, scope: !3453)
!3464 = !DILocation(line: 0, scope: !3400, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1009, column: 10, scope: !3389, inlinedAt: !3463)
!3466 = !DILocation(line: 1018, column: 3, scope: !3400, inlinedAt: !3465)
!3467 = !DILocation(line: 1018, column: 30, scope: !3400, inlinedAt: !3465)
!3468 = distinct !DIAssignID()
!3469 = distinct !DIAssignID()
!3470 = !DILocation(line: 0, scope: !2295, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 1019, column: 3, scope: !3400, inlinedAt: !3465)
!3472 = !DILocation(line: 174, column: 12, scope: !2295, inlinedAt: !3471)
!3473 = distinct !DIAssignID()
!3474 = !DILocation(line: 175, column: 8, scope: !2308, inlinedAt: !3471)
!3475 = !DILocation(line: 175, column: 19, scope: !2308, inlinedAt: !3471)
!3476 = !DILocation(line: 176, column: 5, scope: !2308, inlinedAt: !3471)
!3477 = !DILocation(line: 177, column: 6, scope: !2295, inlinedAt: !3471)
!3478 = !DILocation(line: 177, column: 17, scope: !2295, inlinedAt: !3471)
!3479 = distinct !DIAssignID()
!3480 = !DILocation(line: 178, column: 6, scope: !2295, inlinedAt: !3471)
!3481 = !DILocation(line: 178, column: 18, scope: !2295, inlinedAt: !3471)
!3482 = distinct !DIAssignID()
!3483 = !DILocation(line: 1020, column: 10, scope: !3400, inlinedAt: !3465)
!3484 = !DILocation(line: 1021, column: 1, scope: !3400, inlinedAt: !3465)
!3485 = !DILocation(line: 1027, column: 3, scope: !3453)
!3486 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !603, file: !603, line: 1031, type: !3487, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!124, !130, !130, !130, !127}
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3486, file: !603, line: 1031, type: !130)
!3491 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3486, file: !603, line: 1031, type: !130)
!3492 = !DILocalVariable(name: "arg", arg: 3, scope: !3486, file: !603, line: 1032, type: !130)
!3493 = !DILocalVariable(name: "argsize", arg: 4, scope: !3486, file: !603, line: 1032, type: !127)
!3494 = distinct !DIAssignID()
!3495 = !DILocation(line: 0, scope: !3486)
!3496 = !DILocation(line: 0, scope: !3400, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1034, column: 10, scope: !3486)
!3498 = !DILocation(line: 1018, column: 3, scope: !3400, inlinedAt: !3497)
!3499 = !DILocation(line: 1018, column: 30, scope: !3400, inlinedAt: !3497)
!3500 = distinct !DIAssignID()
!3501 = distinct !DIAssignID()
!3502 = !DILocation(line: 0, scope: !2295, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1019, column: 3, scope: !3400, inlinedAt: !3497)
!3504 = !DILocation(line: 174, column: 12, scope: !2295, inlinedAt: !3503)
!3505 = distinct !DIAssignID()
!3506 = !DILocation(line: 175, column: 8, scope: !2308, inlinedAt: !3503)
!3507 = !DILocation(line: 175, column: 19, scope: !2308, inlinedAt: !3503)
!3508 = !DILocation(line: 176, column: 5, scope: !2308, inlinedAt: !3503)
!3509 = !DILocation(line: 177, column: 6, scope: !2295, inlinedAt: !3503)
!3510 = !DILocation(line: 177, column: 17, scope: !2295, inlinedAt: !3503)
!3511 = distinct !DIAssignID()
!3512 = !DILocation(line: 178, column: 6, scope: !2295, inlinedAt: !3503)
!3513 = !DILocation(line: 178, column: 18, scope: !2295, inlinedAt: !3503)
!3514 = distinct !DIAssignID()
!3515 = !DILocation(line: 1020, column: 10, scope: !3400, inlinedAt: !3497)
!3516 = !DILocation(line: 1021, column: 1, scope: !3400, inlinedAt: !3497)
!3517 = !DILocation(line: 1034, column: 3, scope: !3486)
!3518 = distinct !DISubprogram(name: "quote_n_mem", scope: !603, file: !603, line: 1049, type: !3519, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!130, !103, !130, !127}
!3521 = !{!3522, !3523, !3524}
!3522 = !DILocalVariable(name: "n", arg: 1, scope: !3518, file: !603, line: 1049, type: !103)
!3523 = !DILocalVariable(name: "arg", arg: 2, scope: !3518, file: !603, line: 1049, type: !130)
!3524 = !DILocalVariable(name: "argsize", arg: 3, scope: !3518, file: !603, line: 1049, type: !127)
!3525 = !DILocation(line: 0, scope: !3518)
!3526 = !DILocation(line: 1051, column: 10, scope: !3518)
!3527 = !DILocation(line: 1051, column: 3, scope: !3518)
!3528 = distinct !DISubprogram(name: "quote_mem", scope: !603, file: !603, line: 1055, type: !3529, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!130, !130, !127}
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "arg", arg: 1, scope: !3528, file: !603, line: 1055, type: !130)
!3533 = !DILocalVariable(name: "argsize", arg: 2, scope: !3528, file: !603, line: 1055, type: !127)
!3534 = !DILocation(line: 0, scope: !3528)
!3535 = !DILocation(line: 0, scope: !3518, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 1057, column: 10, scope: !3528)
!3537 = !DILocation(line: 1051, column: 10, scope: !3518, inlinedAt: !3536)
!3538 = !DILocation(line: 1057, column: 3, scope: !3528)
!3539 = distinct !DISubprogram(name: "quote_n", scope: !603, file: !603, line: 1061, type: !3540, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!130, !103, !130}
!3542 = !{!3543, !3544}
!3543 = !DILocalVariable(name: "n", arg: 1, scope: !3539, file: !603, line: 1061, type: !103)
!3544 = !DILocalVariable(name: "arg", arg: 2, scope: !3539, file: !603, line: 1061, type: !130)
!3545 = !DILocation(line: 0, scope: !3539)
!3546 = !DILocation(line: 0, scope: !3518, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 1063, column: 10, scope: !3539)
!3548 = !DILocation(line: 1051, column: 10, scope: !3518, inlinedAt: !3547)
!3549 = !DILocation(line: 1063, column: 3, scope: !3539)
!3550 = distinct !DISubprogram(name: "quote", scope: !603, file: !603, line: 1067, type: !3551, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!130, !130}
!3553 = !{!3554}
!3554 = !DILocalVariable(name: "arg", arg: 1, scope: !3550, file: !603, line: 1067, type: !130)
!3555 = !DILocation(line: 0, scope: !3550)
!3556 = !DILocation(line: 0, scope: !3539, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 1069, column: 10, scope: !3550)
!3558 = !DILocation(line: 0, scope: !3518, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1063, column: 10, scope: !3539, inlinedAt: !3557)
!3560 = !DILocation(line: 1051, column: 10, scope: !3518, inlinedAt: !3559)
!3561 = !DILocation(line: 1069, column: 3, scope: !3550)
!3562 = distinct !DISubprogram(name: "parse_user_spec_warn", scope: !719, file: !719, line: 253, type: !3563, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !3567)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!130, !130, !3565, !936, !1218, !1218, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577}
!3568 = !DILocalVariable(name: "spec", arg: 1, scope: !3562, file: !719, line: 253, type: !130)
!3569 = !DILocalVariable(name: "uid", arg: 2, scope: !3562, file: !719, line: 253, type: !3565)
!3570 = !DILocalVariable(name: "gid", arg: 3, scope: !3562, file: !719, line: 253, type: !936)
!3571 = !DILocalVariable(name: "username", arg: 4, scope: !3562, file: !719, line: 254, type: !1218)
!3572 = !DILocalVariable(name: "groupname", arg: 5, scope: !3562, file: !719, line: 254, type: !1218)
!3573 = !DILocalVariable(name: "pwarn", arg: 6, scope: !3562, file: !719, line: 254, type: !3566)
!3574 = !DILocalVariable(name: "colon", scope: !3562, file: !719, line: 256, type: !130)
!3575 = !DILocalVariable(name: "error_msg", scope: !3562, file: !719, line: 257, type: !130)
!3576 = !DILocalVariable(name: "warn", scope: !3562, file: !719, line: 259, type: !223)
!3577 = !DILocalVariable(name: "dot", scope: !3578, file: !719, line: 269, type: !130)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !719, line: 262, column: 5)
!3579 = distinct !DILexicalBlock(scope: !3562, file: !719, line: 261, column: 7)
!3580 = !DILocation(line: 0, scope: !3562)
!3581 = !DILocation(line: 256, column: 23, scope: !3562)
!3582 = !DILocation(line: 256, column: 29, scope: !3562)
!3583 = !DILocation(line: 258, column: 5, scope: !3562)
!3584 = !DILocation(line: 261, column: 7, scope: !3579)
!3585 = !DILocation(line: 261, column: 11, scope: !3579)
!3586 = !DILocation(line: 269, column: 25, scope: !3578)
!3587 = !DILocation(line: 0, scope: !3578)
!3588 = !DILocation(line: 270, column: 11, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3578, file: !719, line: 270, column: 11)
!3590 = !DILocation(line: 271, column: 11, scope: !3589)
!3591 = !DILocation(line: 271, column: 16, scope: !3589)
!3592 = !DILocation(line: 270, column: 11, scope: !3578)
!3593 = !DILocation(line: 274, column: 23, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3589, file: !719, line: 272, column: 9)
!3595 = !DILocation(line: 275, column: 9, scope: !3594)
!3596 = !DILocation(line: 259, column: 8, scope: !3562)
!3597 = !DILocation(line: 257, column: 15, scope: !3562)
!3598 = !DILocation(line: 278, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3562, file: !719, line: 278, column: 7)
!3600 = !DILocation(line: 278, column: 7, scope: !3562)
!3601 = !DILocation(line: 279, column: 12, scope: !3599)
!3602 = !DILocation(line: 279, column: 5, scope: !3599)
!3603 = !DILocation(line: 280, column: 3, scope: !3562)
!3604 = distinct !DISubprogram(name: "parse_with_separator", scope: !719, file: !719, line: 101, type: !3605, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!130, !130, !130, !3565, !936, !1218, !1218}
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3619, !3620, !3621, !3622, !3623, !3636, !3639, !3642, !3646, !3654, !3657}
!3608 = !DILocalVariable(name: "spec", arg: 1, scope: !3604, file: !719, line: 101, type: !130)
!3609 = !DILocalVariable(name: "separator", arg: 2, scope: !3604, file: !719, line: 101, type: !130)
!3610 = !DILocalVariable(name: "uid", arg: 3, scope: !3604, file: !719, line: 102, type: !3565)
!3611 = !DILocalVariable(name: "gid", arg: 4, scope: !3604, file: !719, line: 102, type: !936)
!3612 = !DILocalVariable(name: "username", arg: 5, scope: !3604, file: !719, line: 103, type: !1218)
!3613 = !DILocalVariable(name: "groupname", arg: 6, scope: !3604, file: !719, line: 103, type: !1218)
!3614 = !DILocalVariable(name: "error_msg", scope: !3604, file: !719, line: 105, type: !130)
!3615 = !DILocalVariable(name: "u", scope: !3604, file: !719, line: 115, type: !124)
!3616 = !DILocalVariable(name: "ulen", scope: !3617, file: !719, line: 123, type: !894)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !719, line: 122, column: 5)
!3618 = distinct !DILexicalBlock(scope: !3604, file: !719, line: 116, column: 7)
!3619 = !DILocalVariable(name: "g", scope: !3604, file: !719, line: 131, type: !130)
!3620 = !DILocalVariable(name: "gname", scope: !3604, file: !719, line: 144, type: !124)
!3621 = !DILocalVariable(name: "unum", scope: !3604, file: !719, line: 145, type: !200)
!3622 = !DILocalVariable(name: "gnum", scope: !3604, file: !719, line: 146, type: !207)
!3623 = !DILocalVariable(name: "pwd", scope: !3624, file: !719, line: 151, type: !3626)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !719, line: 149, column: 5)
!3625 = distinct !DILexicalBlock(scope: !3604, file: !719, line: 148, column: 7)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1236, line: 49, size: 384, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3627, file: !1236, line: 51, baseType: !124, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3627, file: !1236, line: 52, baseType: !124, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3627, file: !1236, line: 54, baseType: !202, size: 32, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3627, file: !1236, line: 55, baseType: !208, size: 32, offset: 160)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3627, file: !1236, line: 56, baseType: !124, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3627, file: !1236, line: 57, baseType: !124, size: 64, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3627, file: !1236, line: 58, baseType: !124, size: 64, offset: 320)
!3636 = !DILocalVariable(name: "use_login_group", scope: !3637, file: !719, line: 155, type: !223)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !719, line: 153, column: 9)
!3638 = distinct !DILexicalBlock(scope: !3624, file: !719, line: 152, column: 11)
!3639 = !DILocalVariable(name: "tmp", scope: !3640, file: !719, line: 164, type: !129)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !719, line: 163, column: 13)
!3641 = distinct !DILexicalBlock(scope: !3637, file: !719, line: 156, column: 15)
!3642 = !DILocalVariable(name: "buf", scope: !3643, file: !719, line: 179, type: !552)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !719, line: 176, column: 13)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !719, line: 175, column: 15)
!3645 = distinct !DILexicalBlock(scope: !3638, file: !719, line: 173, column: 9)
!3646 = !DILocalVariable(name: "grp", scope: !3643, file: !719, line: 181, type: !3647)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1532, line: 42, size: 256, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3648, file: !1532, line: 44, baseType: !124, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3648, file: !1532, line: 45, baseType: !124, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3648, file: !1532, line: 46, baseType: !208, size: 32, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3648, file: !1532, line: 47, baseType: !1218, size: 64, offset: 192)
!3654 = !DILocalVariable(name: "grp", scope: !3655, file: !719, line: 193, type: !3647)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !719, line: 190, column: 5)
!3656 = distinct !DILexicalBlock(scope: !3604, file: !719, line: 189, column: 7)
!3657 = !DILocalVariable(name: "tmp", scope: !3658, file: !719, line: 197, type: !129)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !719, line: 195, column: 9)
!3659 = distinct !DILexicalBlock(scope: !3655, file: !719, line: 194, column: 11)
!3660 = distinct !DIAssignID()
!3661 = !DILocation(line: 0, scope: !3640)
!3662 = distinct !DIAssignID()
!3663 = !DILocation(line: 0, scope: !3643)
!3664 = distinct !DIAssignID()
!3665 = !DILocation(line: 0, scope: !3658)
!3666 = !DILocation(line: 0, scope: !3604)
!3667 = !DILocation(line: 106, column: 7, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3604, file: !719, line: 106, column: 7)
!3669 = !DILocation(line: 106, column: 7, scope: !3604)
!3670 = !DILocation(line: 107, column: 15, scope: !3668)
!3671 = !DILocation(line: 107, column: 5, scope: !3668)
!3672 = !DILocation(line: 108, column: 7, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3604, file: !719, line: 108, column: 7)
!3674 = !DILocation(line: 108, column: 7, scope: !3604)
!3675 = !DILocation(line: 109, column: 16, scope: !3673)
!3676 = !DILocation(line: 109, column: 5, scope: !3673)
!3677 = !DILocation(line: 116, column: 17, scope: !3618)
!3678 = !DILocation(line: 116, column: 7, scope: !3604)
!3679 = !DILocation(line: 118, column: 11, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !719, line: 118, column: 11)
!3681 = distinct !DILexicalBlock(scope: !3618, file: !719, line: 117, column: 5)
!3682 = !DILocation(line: 118, column: 11, scope: !3681)
!3683 = !DILocation(line: 119, column: 13, scope: !3680)
!3684 = !DILocation(line: 119, column: 9, scope: !3680)
!3685 = !DILocation(line: 0, scope: !3617)
!3686 = !DILocation(line: 124, column: 16, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3617, file: !719, line: 124, column: 11)
!3688 = !DILocation(line: 124, column: 11, scope: !3617)
!3689 = !DILocation(line: 123, column: 30, scope: !3617)
!3690 = !DILocation(line: 126, column: 36, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3687, file: !719, line: 125, column: 9)
!3692 = !DILocation(line: 126, column: 15, scope: !3691)
!3693 = !DILocation(line: 127, column: 11, scope: !3691)
!3694 = !DILocation(line: 127, column: 19, scope: !3691)
!3695 = !DILocation(line: 128, column: 9, scope: !3691)
!3696 = !DILocation(line: 131, column: 53, scope: !3604)
!3697 = !DILocation(line: 131, column: 41, scope: !3604)
!3698 = !DILocation(line: 131, column: 58, scope: !3604)
!3699 = !DILocation(line: 131, column: 20, scope: !3604)
!3700 = !DILocation(line: 145, column: 16, scope: !3604)
!3701 = !DILocation(line: 146, column: 16, scope: !3604)
!3702 = !DILocation(line: 146, column: 22, scope: !3604)
!3703 = !DILocation(line: 148, column: 9, scope: !3625)
!3704 = !DILocation(line: 148, column: 7, scope: !3604)
!3705 = !DILocation(line: 151, column: 29, scope: !3624)
!3706 = !DILocation(line: 151, column: 32, scope: !3624)
!3707 = !DILocation(line: 151, column: 48, scope: !3624)
!3708 = !DILocation(line: 0, scope: !3624)
!3709 = !DILocation(line: 152, column: 15, scope: !3638)
!3710 = !DILocation(line: 152, column: 11, scope: !3624)
!3711 = !DILocation(line: 155, column: 45, scope: !3637)
!3712 = !DILocation(line: 155, column: 53, scope: !3637)
!3713 = !DILocation(line: 0, scope: !3637)
!3714 = !DILocation(line: 156, column: 15, scope: !3637)
!3715 = !DILocation(line: 164, column: 15, scope: !3640)
!3716 = !DILocation(line: 165, column: 19, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3640, file: !719, line: 165, column: 19)
!3718 = !DILocation(line: 165, column: 52, scope: !3717)
!3719 = !DILocation(line: 166, column: 19, scope: !3717)
!3720 = !DILocation(line: 170, column: 13, scope: !3641)
!3721 = !DILocation(line: 174, column: 23, scope: !3645)
!3722 = !DILocation(line: 175, column: 17, scope: !3644)
!3723 = !DILocation(line: 175, column: 25, scope: !3644)
!3724 = !DILocation(line: 179, column: 15, scope: !3643)
!3725 = !DILocation(line: 180, column: 27, scope: !3643)
!3726 = !DILocation(line: 181, column: 35, scope: !3643)
!3727 = !DILocation(line: 182, column: 32, scope: !3643)
!3728 = !DILocation(line: 182, column: 43, scope: !3643)
!3729 = !DILocation(line: 182, column: 64, scope: !3643)
!3730 = !DILocation(line: 182, column: 53, scope: !3643)
!3731 = !DILocation(line: 182, column: 23, scope: !3643)
!3732 = !DILocation(line: 183, column: 15, scope: !3643)
!3733 = !DILocation(line: 184, column: 13, scope: !3644)
!3734 = !DILocation(line: 184, column: 13, scope: !3643)
!3735 = !DILocation(line: 186, column: 7, scope: !3624)
!3736 = !DILocation(line: 187, column: 5, scope: !3624)
!3737 = !DILocation(line: 144, column: 9, scope: !3604)
!3738 = !DILocation(line: 145, column: 9, scope: !3604)
!3739 = !DILocation(line: 146, column: 9, scope: !3604)
!3740 = !DILocation(line: 189, column: 9, scope: !3656)
!3741 = !DILocation(line: 189, column: 17, scope: !3656)
!3742 = !DILocation(line: 193, column: 28, scope: !3655)
!3743 = !DILocation(line: 193, column: 31, scope: !3655)
!3744 = !DILocation(line: 193, column: 47, scope: !3655)
!3745 = !DILocation(line: 0, scope: !3655)
!3746 = !DILocation(line: 194, column: 15, scope: !3659)
!3747 = !DILocation(line: 194, column: 11, scope: !3655)
!3748 = !DILocation(line: 197, column: 11, scope: !3658)
!3749 = !DILocation(line: 198, column: 15, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3658, file: !719, line: 198, column: 15)
!3751 = !DILocation(line: 198, column: 48, scope: !3750)
!3752 = !DILocation(line: 199, column: 15, scope: !3750)
!3753 = !DILocation(line: 203, column: 9, scope: !3659)
!3754 = !DILocation(line: 203, column: 9, scope: !3658)
!3755 = !DILocation(line: 205, column: 21, scope: !3659)
!3756 = !{!1561, !1066, i64 16}
!3757 = !DILocation(line: 0, scope: !3659)
!3758 = !DILocation(line: 160, column: 25, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3641, file: !719, line: 157, column: 13)
!3760 = !DILocation(line: 206, column: 7, scope: !3655)
!3761 = !DILocation(line: 207, column: 15, scope: !3655)
!3762 = !DILocation(line: 208, column: 5, scope: !3655)
!3763 = !DILocation(line: 210, column: 17, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3604, file: !719, line: 210, column: 7)
!3765 = !DILocation(line: 210, column: 7, scope: !3604)
!3766 = !DILocation(line: 212, column: 12, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !719, line: 211, column: 5)
!3768 = !DILocation(line: 213, column: 11, scope: !3767)
!3769 = !DILocation(line: 214, column: 14, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !719, line: 213, column: 11)
!3771 = !DILocation(line: 214, column: 9, scope: !3770)
!3772 = !DILocation(line: 215, column: 11, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3767, file: !719, line: 215, column: 11)
!3774 = !DILocation(line: 215, column: 11, scope: !3767)
!3775 = !DILocation(line: 217, column: 21, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !719, line: 216, column: 9)
!3777 = !DILocation(line: 219, column: 9, scope: !3776)
!3778 = !DILocation(line: 220, column: 11, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3767, file: !719, line: 220, column: 11)
!3780 = !DILocation(line: 220, column: 11, scope: !3767)
!3781 = !DILocation(line: 222, column: 22, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3779, file: !719, line: 221, column: 9)
!3783 = !DILocation(line: 224, column: 9, scope: !3782)
!3784 = !DILocation(line: 227, column: 3, scope: !3604)
!3785 = !DILocation(line: 228, column: 3, scope: !3604)
!3786 = !DILocation(line: 229, column: 10, scope: !3604)
!3787 = !DILocation(line: 229, column: 22, scope: !3604)
!3788 = !DILocation(line: 229, column: 3, scope: !3604)
!3789 = !DISubprogram(name: "endgrent", scope: !1532, file: !1532, line: 67, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3790 = !DISubprogram(name: "endpwent", scope: !1236, file: !1236, line: 78, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3791 = !DISubprogram(name: "getgrnam", scope: !1532, file: !1532, line: 107, type: !3792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!3647, !130}
!3794 = distinct !DISubprogram(name: "parse_user_spec", scope: !719, file: !719, line: 286, type: !3795, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!130, !130, !3565, !936, !1218, !1218}
!3797 = !{!3798, !3799, !3800, !3801, !3802}
!3798 = !DILocalVariable(name: "spec", arg: 1, scope: !3794, file: !719, line: 286, type: !130)
!3799 = !DILocalVariable(name: "uid", arg: 2, scope: !3794, file: !719, line: 286, type: !3565)
!3800 = !DILocalVariable(name: "gid", arg: 3, scope: !3794, file: !719, line: 286, type: !936)
!3801 = !DILocalVariable(name: "username", arg: 4, scope: !3794, file: !719, line: 287, type: !1218)
!3802 = !DILocalVariable(name: "groupname", arg: 5, scope: !3794, file: !719, line: 287, type: !1218)
!3803 = !DILocation(line: 0, scope: !3794)
!3804 = !DILocation(line: 0, scope: !3562, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 289, column: 10, scope: !3794)
!3806 = !DILocation(line: 256, column: 23, scope: !3562, inlinedAt: !3805)
!3807 = !DILocation(line: 256, column: 29, scope: !3562, inlinedAt: !3805)
!3808 = !DILocation(line: 258, column: 5, scope: !3562, inlinedAt: !3805)
!3809 = !DILocation(line: 261, column: 7, scope: !3579, inlinedAt: !3805)
!3810 = !DILocation(line: 261, column: 11, scope: !3579, inlinedAt: !3805)
!3811 = !DILocation(line: 269, column: 25, scope: !3578, inlinedAt: !3805)
!3812 = !DILocation(line: 0, scope: !3578, inlinedAt: !3805)
!3813 = !DILocation(line: 270, column: 11, scope: !3589, inlinedAt: !3805)
!3814 = !DILocation(line: 271, column: 11, scope: !3589, inlinedAt: !3805)
!3815 = !DILocation(line: 271, column: 16, scope: !3589, inlinedAt: !3805)
!3816 = !DILocation(line: 270, column: 11, scope: !3578, inlinedAt: !3805)
!3817 = !DILocation(line: 257, column: 15, scope: !3562, inlinedAt: !3805)
!3818 = !DILocation(line: 289, column: 3, scope: !3794)
!3819 = distinct !DISubprogram(name: "version_etc_arn", scope: !732, file: !732, line: 61, type: !3820, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !3857)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3822, !130, !130, !130, !3856, !127}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3825)
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3824, file: !240, line: 51, baseType: !103, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3824, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3824, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3824, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3824, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3824, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3824, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3824, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3824, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3824, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3824, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3824, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3824, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3824, file: !240, line: 70, baseType: !3840, size: 64, offset: 832)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3824, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3824, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3824, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3824, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3824, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3824, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3824, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3824, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3824, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3824, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3824, file: !240, line: 93, baseType: !3840, size: 64, offset: 1344)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3824, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3824, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3824, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3824, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863}
!3858 = !DILocalVariable(name: "stream", arg: 1, scope: !3819, file: !732, line: 61, type: !3822)
!3859 = !DILocalVariable(name: "command_name", arg: 2, scope: !3819, file: !732, line: 62, type: !130)
!3860 = !DILocalVariable(name: "package", arg: 3, scope: !3819, file: !732, line: 62, type: !130)
!3861 = !DILocalVariable(name: "version", arg: 4, scope: !3819, file: !732, line: 63, type: !130)
!3862 = !DILocalVariable(name: "authors", arg: 5, scope: !3819, file: !732, line: 64, type: !3856)
!3863 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3819, file: !732, line: 64, type: !127)
!3864 = !DILocation(line: 0, scope: !3819)
!3865 = !DILocation(line: 66, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3819, file: !732, line: 66, column: 7)
!3867 = !DILocation(line: 66, column: 7, scope: !3819)
!3868 = !DILocation(line: 67, column: 5, scope: !3866)
!3869 = !DILocation(line: 69, column: 5, scope: !3866)
!3870 = !DILocation(line: 83, column: 3, scope: !3819)
!3871 = !DILocation(line: 85, column: 3, scope: !3819)
!3872 = !DILocation(line: 88, column: 3, scope: !3819)
!3873 = !DILocation(line: 95, column: 3, scope: !3819)
!3874 = !DILocation(line: 97, column: 3, scope: !3819)
!3875 = !DILocation(line: 105, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3819, file: !732, line: 98, column: 5)
!3877 = !DILocation(line: 106, column: 7, scope: !3876)
!3878 = !DILocation(line: 109, column: 7, scope: !3876)
!3879 = !DILocation(line: 110, column: 7, scope: !3876)
!3880 = !DILocation(line: 113, column: 7, scope: !3876)
!3881 = !DILocation(line: 115, column: 7, scope: !3876)
!3882 = !DILocation(line: 120, column: 7, scope: !3876)
!3883 = !DILocation(line: 122, column: 7, scope: !3876)
!3884 = !DILocation(line: 127, column: 7, scope: !3876)
!3885 = !DILocation(line: 129, column: 7, scope: !3876)
!3886 = !DILocation(line: 134, column: 7, scope: !3876)
!3887 = !DILocation(line: 137, column: 7, scope: !3876)
!3888 = !DILocation(line: 142, column: 7, scope: !3876)
!3889 = !DILocation(line: 145, column: 7, scope: !3876)
!3890 = !DILocation(line: 150, column: 7, scope: !3876)
!3891 = !DILocation(line: 154, column: 7, scope: !3876)
!3892 = !DILocation(line: 159, column: 7, scope: !3876)
!3893 = !DILocation(line: 163, column: 7, scope: !3876)
!3894 = !DILocation(line: 170, column: 7, scope: !3876)
!3895 = !DILocation(line: 174, column: 7, scope: !3876)
!3896 = !DILocation(line: 176, column: 1, scope: !3819)
!3897 = distinct !DISubprogram(name: "version_etc_ar", scope: !732, file: !732, line: 183, type: !3898, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3822, !130, !130, !130, !3856}
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906}
!3901 = !DILocalVariable(name: "stream", arg: 1, scope: !3897, file: !732, line: 183, type: !3822)
!3902 = !DILocalVariable(name: "command_name", arg: 2, scope: !3897, file: !732, line: 184, type: !130)
!3903 = !DILocalVariable(name: "package", arg: 3, scope: !3897, file: !732, line: 184, type: !130)
!3904 = !DILocalVariable(name: "version", arg: 4, scope: !3897, file: !732, line: 185, type: !130)
!3905 = !DILocalVariable(name: "authors", arg: 5, scope: !3897, file: !732, line: 185, type: !3856)
!3906 = !DILocalVariable(name: "n_authors", scope: !3897, file: !732, line: 187, type: !127)
!3907 = !DILocation(line: 0, scope: !3897)
!3908 = !DILocation(line: 189, column: 8, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3897, file: !732, line: 189, column: 3)
!3910 = !DILocation(line: 189, scope: !3909)
!3911 = !DILocation(line: 189, column: 23, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3909, file: !732, line: 189, column: 3)
!3913 = !DILocation(line: 189, column: 3, scope: !3909)
!3914 = !DILocation(line: 189, column: 52, scope: !3912)
!3915 = distinct !{!3915, !3913, !3916, !1112}
!3916 = !DILocation(line: 190, column: 5, scope: !3909)
!3917 = !DILocation(line: 191, column: 3, scope: !3897)
!3918 = !DILocation(line: 192, column: 1, scope: !3897)
!3919 = distinct !DISubprogram(name: "version_etc_va", scope: !732, file: !732, line: 199, type: !3920, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !3929)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !3822, !130, !130, !130, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3928}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3923, file: !732, line: 192, baseType: !109, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3923, file: !732, line: 192, baseType: !109, size: 32, offset: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3923, file: !732, line: 192, baseType: !125, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3923, file: !732, line: 192, baseType: !125, size: 64, offset: 128)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3930 = !DILocalVariable(name: "stream", arg: 1, scope: !3919, file: !732, line: 199, type: !3822)
!3931 = !DILocalVariable(name: "command_name", arg: 2, scope: !3919, file: !732, line: 200, type: !130)
!3932 = !DILocalVariable(name: "package", arg: 3, scope: !3919, file: !732, line: 200, type: !130)
!3933 = !DILocalVariable(name: "version", arg: 4, scope: !3919, file: !732, line: 201, type: !130)
!3934 = !DILocalVariable(name: "authors", arg: 5, scope: !3919, file: !732, line: 201, type: !3922)
!3935 = !DILocalVariable(name: "n_authors", scope: !3919, file: !732, line: 203, type: !127)
!3936 = !DILocalVariable(name: "authtab", scope: !3919, file: !732, line: 204, type: !3937)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 640, elements: !85)
!3938 = distinct !DIAssignID()
!3939 = !DILocation(line: 0, scope: !3919)
!3940 = !DILocation(line: 204, column: 3, scope: !3919)
!3941 = !DILocation(line: 208, column: 35, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !732, line: 206, column: 3)
!3943 = distinct !DILexicalBlock(scope: !3919, file: !732, line: 206, column: 3)
!3944 = !DILocation(line: 208, column: 33, scope: !3942)
!3945 = !DILocation(line: 208, column: 67, scope: !3942)
!3946 = !DILocation(line: 206, column: 3, scope: !3943)
!3947 = !DILocation(line: 208, column: 14, scope: !3942)
!3948 = !DILocation(line: 0, scope: !3943)
!3949 = !DILocation(line: 211, column: 3, scope: !3919)
!3950 = !DILocation(line: 213, column: 1, scope: !3919)
!3951 = distinct !DISubprogram(name: "version_etc", scope: !732, file: !732, line: 230, type: !3952, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !3822, !130, !130, !130, null}
!3954 = !{!3955, !3956, !3957, !3958, !3959}
!3955 = !DILocalVariable(name: "stream", arg: 1, scope: !3951, file: !732, line: 230, type: !3822)
!3956 = !DILocalVariable(name: "command_name", arg: 2, scope: !3951, file: !732, line: 231, type: !130)
!3957 = !DILocalVariable(name: "package", arg: 3, scope: !3951, file: !732, line: 231, type: !130)
!3958 = !DILocalVariable(name: "version", arg: 4, scope: !3951, file: !732, line: 232, type: !130)
!3959 = !DILocalVariable(name: "authors", scope: !3951, file: !732, line: 234, type: !3960)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1060, line: 52, baseType: !3961)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2035, line: 12, baseType: !3962)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !732, baseType: !3963)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3923, size: 192, elements: !80)
!3964 = distinct !DIAssignID()
!3965 = !DILocation(line: 0, scope: !3951)
!3966 = !DILocation(line: 234, column: 3, scope: !3951)
!3967 = !DILocation(line: 235, column: 3, scope: !3951)
!3968 = !DILocation(line: 236, column: 3, scope: !3951)
!3969 = !DILocation(line: 237, column: 3, scope: !3951)
!3970 = !DILocation(line: 238, column: 1, scope: !3951)
!3971 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !732, file: !732, line: 241, type: !558, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867)
!3972 = !DILocation(line: 243, column: 3, scope: !3971)
!3973 = !DILocation(line: 248, column: 3, scope: !3971)
!3974 = !DILocation(line: 254, column: 3, scope: !3971)
!3975 = !DILocation(line: 259, column: 3, scope: !3971)
!3976 = !DILocation(line: 261, column: 1, scope: !3971)
!3977 = distinct !DISubprogram(name: "xnrealloc", scope: !3978, file: !3978, line: 147, type: !3979, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !3981)
!3978 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!125, !125, !127, !127}
!3981 = !{!3982, !3983, !3984}
!3982 = !DILocalVariable(name: "p", arg: 1, scope: !3977, file: !3978, line: 147, type: !125)
!3983 = !DILocalVariable(name: "n", arg: 2, scope: !3977, file: !3978, line: 147, type: !127)
!3984 = !DILocalVariable(name: "s", arg: 3, scope: !3977, file: !3978, line: 147, type: !127)
!3985 = !DILocation(line: 0, scope: !3977)
!3986 = !DILocalVariable(name: "p", arg: 1, scope: !3987, file: !875, line: 83, type: !125)
!3987 = distinct !DISubprogram(name: "xreallocarray", scope: !875, file: !875, line: 83, type: !3979, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !3988)
!3988 = !{!3986, !3989, !3990}
!3989 = !DILocalVariable(name: "n", arg: 2, scope: !3987, file: !875, line: 83, type: !127)
!3990 = !DILocalVariable(name: "s", arg: 3, scope: !3987, file: !875, line: 83, type: !127)
!3991 = !DILocation(line: 0, scope: !3987, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 149, column: 10, scope: !3977)
!3993 = !DILocation(line: 85, column: 25, scope: !3987, inlinedAt: !3992)
!3994 = !DILocalVariable(name: "p", arg: 1, scope: !3995, file: !875, line: 37, type: !125)
!3995 = distinct !DISubprogram(name: "check_nonnull", scope: !875, file: !875, line: 37, type: !3996, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!125, !125}
!3998 = !{!3994}
!3999 = !DILocation(line: 0, scope: !3995, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 85, column: 10, scope: !3987, inlinedAt: !3992)
!4001 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4000)
!4002 = distinct !DILexicalBlock(scope: !3995, file: !875, line: 39, column: 7)
!4003 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4000)
!4004 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4000)
!4005 = !DILocation(line: 149, column: 3, scope: !3977)
!4006 = !DILocation(line: 0, scope: !3987)
!4007 = !DILocation(line: 85, column: 25, scope: !3987)
!4008 = !DILocation(line: 0, scope: !3995, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 85, column: 10, scope: !3987)
!4010 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4009)
!4011 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4009)
!4012 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4009)
!4013 = !DILocation(line: 85, column: 3, scope: !3987)
!4014 = distinct !DISubprogram(name: "xmalloc", scope: !875, file: !875, line: 47, type: !4015, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!125, !127}
!4017 = !{!4018}
!4018 = !DILocalVariable(name: "s", arg: 1, scope: !4014, file: !875, line: 47, type: !127)
!4019 = !DILocation(line: 0, scope: !4014)
!4020 = !DILocation(line: 49, column: 25, scope: !4014)
!4021 = !DILocation(line: 0, scope: !3995, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 49, column: 10, scope: !4014)
!4023 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4022)
!4024 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4022)
!4025 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4022)
!4026 = !DILocation(line: 49, column: 3, scope: !4014)
!4027 = !DISubprogram(name: "malloc", scope: !1189, file: !1189, line: 540, type: !4015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4028 = distinct !DISubprogram(name: "ximalloc", scope: !875, file: !875, line: 53, type: !4029, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!125, !894}
!4031 = !{!4032}
!4032 = !DILocalVariable(name: "s", arg: 1, scope: !4028, file: !875, line: 53, type: !894)
!4033 = !DILocation(line: 0, scope: !4028)
!4034 = !DILocalVariable(name: "s", arg: 1, scope: !4035, file: !4036, line: 55, type: !894)
!4035 = distinct !DISubprogram(name: "imalloc", scope: !4036, file: !4036, line: 55, type: !4029, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4037)
!4036 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4037 = !{!4034}
!4038 = !DILocation(line: 0, scope: !4035, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 55, column: 25, scope: !4028)
!4040 = !DILocation(line: 57, column: 26, scope: !4035, inlinedAt: !4039)
!4041 = !DILocation(line: 0, scope: !3995, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 55, column: 10, scope: !4028)
!4043 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4042)
!4044 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4042)
!4045 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4042)
!4046 = !DILocation(line: 55, column: 3, scope: !4028)
!4047 = distinct !DISubprogram(name: "xcharalloc", scope: !875, file: !875, line: 59, type: !4048, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!124, !127}
!4050 = !{!4051}
!4051 = !DILocalVariable(name: "n", arg: 1, scope: !4047, file: !875, line: 59, type: !127)
!4052 = !DILocation(line: 0, scope: !4047)
!4053 = !DILocation(line: 0, scope: !4014, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 61, column: 10, scope: !4047)
!4055 = !DILocation(line: 49, column: 25, scope: !4014, inlinedAt: !4054)
!4056 = !DILocation(line: 0, scope: !3995, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 49, column: 10, scope: !4014, inlinedAt: !4054)
!4058 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4057)
!4059 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4057)
!4060 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4057)
!4061 = !DILocation(line: 61, column: 3, scope: !4047)
!4062 = distinct !DISubprogram(name: "xrealloc", scope: !875, file: !875, line: 68, type: !4063, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!125, !125, !127}
!4065 = !{!4066, !4067}
!4066 = !DILocalVariable(name: "p", arg: 1, scope: !4062, file: !875, line: 68, type: !125)
!4067 = !DILocalVariable(name: "s", arg: 2, scope: !4062, file: !875, line: 68, type: !127)
!4068 = !DILocation(line: 0, scope: !4062)
!4069 = !DILocalVariable(name: "ptr", arg: 1, scope: !4070, file: !4071, line: 2057, type: !125)
!4070 = distinct !DISubprogram(name: "rpl_realloc", scope: !4071, file: !4071, line: 2057, type: !4063, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4072)
!4071 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4072 = !{!4069, !4073}
!4073 = !DILocalVariable(name: "size", arg: 2, scope: !4070, file: !4071, line: 2057, type: !127)
!4074 = !DILocation(line: 0, scope: !4070, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 70, column: 25, scope: !4062)
!4076 = !DILocation(line: 2059, column: 24, scope: !4070, inlinedAt: !4075)
!4077 = !DILocation(line: 2059, column: 10, scope: !4070, inlinedAt: !4075)
!4078 = !DILocation(line: 0, scope: !3995, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 70, column: 10, scope: !4062)
!4080 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4079)
!4081 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4079)
!4082 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4079)
!4083 = !DILocation(line: 70, column: 3, scope: !4062)
!4084 = !DISubprogram(name: "realloc", scope: !1189, file: !1189, line: 551, type: !4063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4085 = distinct !DISubprogram(name: "xirealloc", scope: !875, file: !875, line: 74, type: !4086, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!125, !125, !894}
!4088 = !{!4089, !4090}
!4089 = !DILocalVariable(name: "p", arg: 1, scope: !4085, file: !875, line: 74, type: !125)
!4090 = !DILocalVariable(name: "s", arg: 2, scope: !4085, file: !875, line: 74, type: !894)
!4091 = !DILocation(line: 0, scope: !4085)
!4092 = !DILocalVariable(name: "p", arg: 1, scope: !4093, file: !4036, line: 66, type: !125)
!4093 = distinct !DISubprogram(name: "irealloc", scope: !4036, file: !4036, line: 66, type: !4086, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4094)
!4094 = !{!4092, !4095}
!4095 = !DILocalVariable(name: "s", arg: 2, scope: !4093, file: !4036, line: 66, type: !894)
!4096 = !DILocation(line: 0, scope: !4093, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 76, column: 25, scope: !4085)
!4098 = !DILocation(line: 0, scope: !4070, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 68, column: 26, scope: !4093, inlinedAt: !4097)
!4100 = !DILocation(line: 2059, column: 24, scope: !4070, inlinedAt: !4099)
!4101 = !DILocation(line: 2059, column: 10, scope: !4070, inlinedAt: !4099)
!4102 = !DILocation(line: 0, scope: !3995, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 76, column: 10, scope: !4085)
!4104 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4103)
!4105 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4103)
!4106 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4103)
!4107 = !DILocation(line: 76, column: 3, scope: !4085)
!4108 = distinct !DISubprogram(name: "xireallocarray", scope: !875, file: !875, line: 89, type: !4109, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!125, !125, !894, !894}
!4111 = !{!4112, !4113, !4114}
!4112 = !DILocalVariable(name: "p", arg: 1, scope: !4108, file: !875, line: 89, type: !125)
!4113 = !DILocalVariable(name: "n", arg: 2, scope: !4108, file: !875, line: 89, type: !894)
!4114 = !DILocalVariable(name: "s", arg: 3, scope: !4108, file: !875, line: 89, type: !894)
!4115 = !DILocation(line: 0, scope: !4108)
!4116 = !DILocalVariable(name: "p", arg: 1, scope: !4117, file: !4036, line: 98, type: !125)
!4117 = distinct !DISubprogram(name: "ireallocarray", scope: !4036, file: !4036, line: 98, type: !4109, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4118)
!4118 = !{!4116, !4119, !4120}
!4119 = !DILocalVariable(name: "n", arg: 2, scope: !4117, file: !4036, line: 98, type: !894)
!4120 = !DILocalVariable(name: "s", arg: 3, scope: !4117, file: !4036, line: 98, type: !894)
!4121 = !DILocation(line: 0, scope: !4117, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 91, column: 25, scope: !4108)
!4123 = !DILocation(line: 101, column: 13, scope: !4117, inlinedAt: !4122)
!4124 = !DILocation(line: 0, scope: !3995, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 91, column: 10, scope: !4108)
!4126 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4125)
!4127 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4125)
!4128 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4125)
!4129 = !DILocation(line: 91, column: 3, scope: !4108)
!4130 = distinct !DISubprogram(name: "xnmalloc", scope: !875, file: !875, line: 98, type: !4131, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!125, !127, !127}
!4133 = !{!4134, !4135}
!4134 = !DILocalVariable(name: "n", arg: 1, scope: !4130, file: !875, line: 98, type: !127)
!4135 = !DILocalVariable(name: "s", arg: 2, scope: !4130, file: !875, line: 98, type: !127)
!4136 = !DILocation(line: 0, scope: !4130)
!4137 = !DILocation(line: 0, scope: !3987, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 100, column: 10, scope: !4130)
!4139 = !DILocation(line: 85, column: 25, scope: !3987, inlinedAt: !4138)
!4140 = !DILocation(line: 0, scope: !3995, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 85, column: 10, scope: !3987, inlinedAt: !4138)
!4142 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4141)
!4143 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4141)
!4144 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4141)
!4145 = !DILocation(line: 100, column: 3, scope: !4130)
!4146 = distinct !DISubprogram(name: "xinmalloc", scope: !875, file: !875, line: 104, type: !4147, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4149)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!125, !894, !894}
!4149 = !{!4150, !4151}
!4150 = !DILocalVariable(name: "n", arg: 1, scope: !4146, file: !875, line: 104, type: !894)
!4151 = !DILocalVariable(name: "s", arg: 2, scope: !4146, file: !875, line: 104, type: !894)
!4152 = !DILocation(line: 0, scope: !4146)
!4153 = !DILocation(line: 0, scope: !4108, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 106, column: 10, scope: !4146)
!4155 = !DILocation(line: 0, scope: !4117, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 91, column: 25, scope: !4108, inlinedAt: !4154)
!4157 = !DILocation(line: 101, column: 13, scope: !4117, inlinedAt: !4156)
!4158 = !DILocation(line: 0, scope: !3995, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 91, column: 10, scope: !4108, inlinedAt: !4154)
!4160 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4159)
!4161 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4159)
!4162 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4159)
!4163 = !DILocation(line: 106, column: 3, scope: !4146)
!4164 = distinct !DISubprogram(name: "x2realloc", scope: !875, file: !875, line: 116, type: !4165, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!125, !125, !881}
!4167 = !{!4168, !4169}
!4168 = !DILocalVariable(name: "p", arg: 1, scope: !4164, file: !875, line: 116, type: !125)
!4169 = !DILocalVariable(name: "ps", arg: 2, scope: !4164, file: !875, line: 116, type: !881)
!4170 = !DILocation(line: 0, scope: !4164)
!4171 = !DILocation(line: 0, scope: !878, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 118, column: 10, scope: !4164)
!4173 = !DILocation(line: 178, column: 14, scope: !878, inlinedAt: !4172)
!4174 = !DILocation(line: 180, column: 9, scope: !4175, inlinedAt: !4172)
!4175 = distinct !DILexicalBlock(scope: !878, file: !875, line: 180, column: 7)
!4176 = !DILocation(line: 180, column: 7, scope: !878, inlinedAt: !4172)
!4177 = !DILocation(line: 182, column: 13, scope: !4178, inlinedAt: !4172)
!4178 = distinct !DILexicalBlock(scope: !4179, file: !875, line: 182, column: 11)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !875, line: 181, column: 5)
!4180 = !DILocation(line: 182, column: 11, scope: !4179, inlinedAt: !4172)
!4181 = !DILocation(line: 197, column: 11, scope: !4182, inlinedAt: !4172)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !875, line: 197, column: 11)
!4183 = distinct !DILexicalBlock(scope: !4175, file: !875, line: 195, column: 5)
!4184 = !DILocation(line: 197, column: 11, scope: !4183, inlinedAt: !4172)
!4185 = !DILocation(line: 198, column: 9, scope: !4182, inlinedAt: !4172)
!4186 = !DILocation(line: 0, scope: !3987, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 201, column: 7, scope: !878, inlinedAt: !4172)
!4188 = !DILocation(line: 85, column: 25, scope: !3987, inlinedAt: !4187)
!4189 = !DILocation(line: 0, scope: !3995, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 85, column: 10, scope: !3987, inlinedAt: !4187)
!4191 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4190)
!4192 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4190)
!4193 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4190)
!4194 = !DILocation(line: 202, column: 7, scope: !878, inlinedAt: !4172)
!4195 = !DILocation(line: 118, column: 3, scope: !4164)
!4196 = !DILocation(line: 0, scope: !878)
!4197 = !DILocation(line: 178, column: 14, scope: !878)
!4198 = !DILocation(line: 180, column: 9, scope: !4175)
!4199 = !DILocation(line: 180, column: 7, scope: !878)
!4200 = !DILocation(line: 182, column: 13, scope: !4178)
!4201 = !DILocation(line: 182, column: 11, scope: !4179)
!4202 = !DILocation(line: 190, column: 30, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4178, file: !875, line: 183, column: 9)
!4204 = !DILocation(line: 191, column: 16, scope: !4203)
!4205 = !DILocation(line: 191, column: 13, scope: !4203)
!4206 = !DILocation(line: 192, column: 9, scope: !4203)
!4207 = !DILocation(line: 197, column: 11, scope: !4182)
!4208 = !DILocation(line: 197, column: 11, scope: !4183)
!4209 = !DILocation(line: 198, column: 9, scope: !4182)
!4210 = !DILocation(line: 0, scope: !3987, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 201, column: 7, scope: !878)
!4212 = !DILocation(line: 85, column: 25, scope: !3987, inlinedAt: !4211)
!4213 = !DILocation(line: 0, scope: !3995, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 85, column: 10, scope: !3987, inlinedAt: !4211)
!4215 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4214)
!4216 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4214)
!4217 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4214)
!4218 = !DILocation(line: 202, column: 7, scope: !878)
!4219 = !DILocation(line: 203, column: 3, scope: !878)
!4220 = !DILocation(line: 0, scope: !890)
!4221 = !DILocation(line: 230, column: 14, scope: !890)
!4222 = !DILocation(line: 238, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !890, file: !875, line: 238, column: 7)
!4224 = !DILocation(line: 238, column: 7, scope: !890)
!4225 = !DILocation(line: 240, column: 9, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !890, file: !875, line: 240, column: 7)
!4227 = !DILocation(line: 240, column: 18, scope: !4226)
!4228 = !DILocation(line: 253, column: 8, scope: !890)
!4229 = !DILocation(line: 256, column: 7, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !890, file: !875, line: 256, column: 7)
!4231 = !DILocation(line: 256, column: 7, scope: !890)
!4232 = !DILocation(line: 258, column: 27, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4230, file: !875, line: 257, column: 5)
!4234 = !DILocation(line: 259, column: 50, scope: !4233)
!4235 = !DILocation(line: 259, column: 32, scope: !4233)
!4236 = !DILocation(line: 260, column: 5, scope: !4233)
!4237 = !DILocation(line: 262, column: 9, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !890, file: !875, line: 262, column: 7)
!4239 = !DILocation(line: 262, column: 7, scope: !890)
!4240 = !DILocation(line: 263, column: 9, scope: !4238)
!4241 = !DILocation(line: 263, column: 5, scope: !4238)
!4242 = !DILocation(line: 264, column: 9, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !890, file: !875, line: 264, column: 7)
!4244 = !DILocation(line: 264, column: 14, scope: !4243)
!4245 = !DILocation(line: 265, column: 7, scope: !4243)
!4246 = !DILocation(line: 265, column: 11, scope: !4243)
!4247 = !DILocation(line: 266, column: 11, scope: !4243)
!4248 = !DILocation(line: 267, column: 14, scope: !4243)
!4249 = !DILocation(line: 264, column: 7, scope: !890)
!4250 = !DILocation(line: 268, column: 5, scope: !4243)
!4251 = !DILocation(line: 0, scope: !4062, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 269, column: 8, scope: !890)
!4253 = !DILocation(line: 0, scope: !4070, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 70, column: 25, scope: !4062, inlinedAt: !4252)
!4255 = !DILocation(line: 2059, column: 24, scope: !4070, inlinedAt: !4254)
!4256 = !DILocation(line: 2059, column: 10, scope: !4070, inlinedAt: !4254)
!4257 = !DILocation(line: 0, scope: !3995, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 70, column: 10, scope: !4062, inlinedAt: !4252)
!4259 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4258)
!4260 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4258)
!4261 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4258)
!4262 = !DILocation(line: 270, column: 7, scope: !890)
!4263 = !DILocation(line: 271, column: 3, scope: !890)
!4264 = distinct !DISubprogram(name: "xzalloc", scope: !875, file: !875, line: 279, type: !4015, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4265)
!4265 = !{!4266}
!4266 = !DILocalVariable(name: "s", arg: 1, scope: !4264, file: !875, line: 279, type: !127)
!4267 = !DILocation(line: 0, scope: !4264)
!4268 = !DILocalVariable(name: "n", arg: 1, scope: !4269, file: !875, line: 294, type: !127)
!4269 = distinct !DISubprogram(name: "xcalloc", scope: !875, file: !875, line: 294, type: !4131, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4270)
!4270 = !{!4268, !4271}
!4271 = !DILocalVariable(name: "s", arg: 2, scope: !4269, file: !875, line: 294, type: !127)
!4272 = !DILocation(line: 0, scope: !4269, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 281, column: 10, scope: !4264)
!4274 = !DILocation(line: 296, column: 25, scope: !4269, inlinedAt: !4273)
!4275 = !DILocation(line: 0, scope: !3995, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 296, column: 10, scope: !4269, inlinedAt: !4273)
!4277 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4276)
!4278 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4276)
!4279 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4276)
!4280 = !DILocation(line: 281, column: 3, scope: !4264)
!4281 = !DISubprogram(name: "calloc", scope: !1189, file: !1189, line: 543, type: !4131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4282 = !DILocation(line: 0, scope: !4269)
!4283 = !DILocation(line: 296, column: 25, scope: !4269)
!4284 = !DILocation(line: 0, scope: !3995, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 296, column: 10, scope: !4269)
!4286 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4285)
!4287 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4285)
!4288 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4285)
!4289 = !DILocation(line: 296, column: 3, scope: !4269)
!4290 = distinct !DISubprogram(name: "xizalloc", scope: !875, file: !875, line: 285, type: !4029, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4291)
!4291 = !{!4292}
!4292 = !DILocalVariable(name: "s", arg: 1, scope: !4290, file: !875, line: 285, type: !894)
!4293 = !DILocation(line: 0, scope: !4290)
!4294 = !DILocalVariable(name: "n", arg: 1, scope: !4295, file: !875, line: 300, type: !894)
!4295 = distinct !DISubprogram(name: "xicalloc", scope: !875, file: !875, line: 300, type: !4147, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4296)
!4296 = !{!4294, !4297}
!4297 = !DILocalVariable(name: "s", arg: 2, scope: !4295, file: !875, line: 300, type: !894)
!4298 = !DILocation(line: 0, scope: !4295, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 287, column: 10, scope: !4290)
!4300 = !DILocalVariable(name: "n", arg: 1, scope: !4301, file: !4036, line: 77, type: !894)
!4301 = distinct !DISubprogram(name: "icalloc", scope: !4036, file: !4036, line: 77, type: !4147, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4302)
!4302 = !{!4300, !4303}
!4303 = !DILocalVariable(name: "s", arg: 2, scope: !4301, file: !4036, line: 77, type: !894)
!4304 = !DILocation(line: 0, scope: !4301, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 302, column: 25, scope: !4295, inlinedAt: !4299)
!4306 = !DILocation(line: 91, column: 10, scope: !4301, inlinedAt: !4305)
!4307 = !DILocation(line: 0, scope: !3995, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 302, column: 10, scope: !4295, inlinedAt: !4299)
!4309 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4308)
!4310 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4308)
!4311 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4308)
!4312 = !DILocation(line: 287, column: 3, scope: !4290)
!4313 = !DILocation(line: 0, scope: !4295)
!4314 = !DILocation(line: 0, scope: !4301, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 302, column: 25, scope: !4295)
!4316 = !DILocation(line: 91, column: 10, scope: !4301, inlinedAt: !4315)
!4317 = !DILocation(line: 0, scope: !3995, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 302, column: 10, scope: !4295)
!4319 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4318)
!4320 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4318)
!4321 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4318)
!4322 = !DILocation(line: 302, column: 3, scope: !4295)
!4323 = distinct !DISubprogram(name: "xmemdup", scope: !875, file: !875, line: 310, type: !4324, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!125, !1213, !127}
!4326 = !{!4327, !4328}
!4327 = !DILocalVariable(name: "p", arg: 1, scope: !4323, file: !875, line: 310, type: !1213)
!4328 = !DILocalVariable(name: "s", arg: 2, scope: !4323, file: !875, line: 310, type: !127)
!4329 = !DILocation(line: 0, scope: !4323)
!4330 = !DILocation(line: 0, scope: !4014, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 312, column: 18, scope: !4323)
!4332 = !DILocation(line: 49, column: 25, scope: !4014, inlinedAt: !4331)
!4333 = !DILocation(line: 0, scope: !3995, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 49, column: 10, scope: !4014, inlinedAt: !4331)
!4335 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4334)
!4336 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4334)
!4337 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4334)
!4338 = !DILocalVariable(name: "__dest", arg: 1, scope: !4339, file: !2198, line: 26, type: !4342)
!4339 = distinct !DISubprogram(name: "memcpy", scope: !2198, file: !2198, line: 26, type: !4340, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4343)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!125, !4342, !1212, !127}
!4342 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!4343 = !{!4338, !4344, !4345}
!4344 = !DILocalVariable(name: "__src", arg: 2, scope: !4339, file: !2198, line: 26, type: !1212)
!4345 = !DILocalVariable(name: "__len", arg: 3, scope: !4339, file: !2198, line: 26, type: !127)
!4346 = !DILocation(line: 0, scope: !4339, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 312, column: 10, scope: !4323)
!4348 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4347)
!4349 = !DILocation(line: 312, column: 3, scope: !4323)
!4350 = distinct !DISubprogram(name: "ximemdup", scope: !875, file: !875, line: 316, type: !4351, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!125, !1213, !894}
!4353 = !{!4354, !4355}
!4354 = !DILocalVariable(name: "p", arg: 1, scope: !4350, file: !875, line: 316, type: !1213)
!4355 = !DILocalVariable(name: "s", arg: 2, scope: !4350, file: !875, line: 316, type: !894)
!4356 = !DILocation(line: 0, scope: !4350)
!4357 = !DILocation(line: 0, scope: !4028, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 318, column: 18, scope: !4350)
!4359 = !DILocation(line: 0, scope: !4035, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 55, column: 25, scope: !4028, inlinedAt: !4358)
!4361 = !DILocation(line: 57, column: 26, scope: !4035, inlinedAt: !4360)
!4362 = !DILocation(line: 0, scope: !3995, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 55, column: 10, scope: !4028, inlinedAt: !4358)
!4364 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4363)
!4365 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4363)
!4366 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4363)
!4367 = !DILocation(line: 0, scope: !4339, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 318, column: 10, scope: !4350)
!4369 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4368)
!4370 = !DILocation(line: 318, column: 3, scope: !4350)
!4371 = distinct !DISubprogram(name: "ximemdup0", scope: !875, file: !875, line: 325, type: !4372, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!124, !1213, !894}
!4374 = !{!4375, !4376, !4377}
!4375 = !DILocalVariable(name: "p", arg: 1, scope: !4371, file: !875, line: 325, type: !1213)
!4376 = !DILocalVariable(name: "s", arg: 2, scope: !4371, file: !875, line: 325, type: !894)
!4377 = !DILocalVariable(name: "result", scope: !4371, file: !875, line: 327, type: !124)
!4378 = !DILocation(line: 0, scope: !4371)
!4379 = !DILocation(line: 327, column: 30, scope: !4371)
!4380 = !DILocation(line: 0, scope: !4028, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 327, column: 18, scope: !4371)
!4382 = !DILocation(line: 0, scope: !4035, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 55, column: 25, scope: !4028, inlinedAt: !4381)
!4384 = !DILocation(line: 57, column: 26, scope: !4035, inlinedAt: !4383)
!4385 = !DILocation(line: 0, scope: !3995, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 55, column: 10, scope: !4028, inlinedAt: !4381)
!4387 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4386)
!4388 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4386)
!4389 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4386)
!4390 = !DILocation(line: 328, column: 3, scope: !4371)
!4391 = !DILocation(line: 328, column: 13, scope: !4371)
!4392 = !DILocation(line: 0, scope: !4339, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 329, column: 10, scope: !4371)
!4394 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4393)
!4395 = !DILocation(line: 329, column: 3, scope: !4371)
!4396 = distinct !DISubprogram(name: "xstrdup", scope: !875, file: !875, line: 335, type: !1191, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4397)
!4397 = !{!4398}
!4398 = !DILocalVariable(name: "string", arg: 1, scope: !4396, file: !875, line: 335, type: !130)
!4399 = !DILocation(line: 0, scope: !4396)
!4400 = !DILocation(line: 337, column: 27, scope: !4396)
!4401 = !DILocation(line: 337, column: 43, scope: !4396)
!4402 = !DILocation(line: 0, scope: !4323, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 337, column: 10, scope: !4396)
!4404 = !DILocation(line: 0, scope: !4014, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 312, column: 18, scope: !4323, inlinedAt: !4403)
!4406 = !DILocation(line: 49, column: 25, scope: !4014, inlinedAt: !4405)
!4407 = !DILocation(line: 0, scope: !3995, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 49, column: 10, scope: !4014, inlinedAt: !4405)
!4409 = !DILocation(line: 39, column: 8, scope: !4002, inlinedAt: !4408)
!4410 = !DILocation(line: 39, column: 7, scope: !3995, inlinedAt: !4408)
!4411 = !DILocation(line: 40, column: 5, scope: !4002, inlinedAt: !4408)
!4412 = !DILocation(line: 0, scope: !4339, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 312, column: 10, scope: !4323, inlinedAt: !4403)
!4414 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4413)
!4415 = !DILocation(line: 337, column: 3, scope: !4396)
!4416 = distinct !DISubprogram(name: "xalloc_die", scope: !822, file: !822, line: 32, type: !558, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !4417)
!4417 = !{!4418}
!4418 = !DILocalVariable(name: "__errstatus", scope: !4419, file: !822, line: 34, type: !4420)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !822, line: 34, column: 3)
!4420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!4421 = !DILocation(line: 34, column: 3, scope: !4419)
!4422 = !DILocation(line: 0, scope: !4419)
!4423 = !DILocation(line: 40, column: 3, scope: !4416)
!4424 = distinct !DISubprogram(name: "xgetgroups", scope: !912, file: !912, line: 31, type: !933, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4425)
!4425 = !{!4426, !4427, !4428, !4429}
!4426 = !DILocalVariable(name: "username", arg: 1, scope: !4424, file: !912, line: 31, type: !130)
!4427 = !DILocalVariable(name: "gid", arg: 2, scope: !4424, file: !912, line: 31, type: !207)
!4428 = !DILocalVariable(name: "groups", arg: 3, scope: !4424, file: !912, line: 31, type: !935)
!4429 = !DILocalVariable(name: "result", scope: !4424, file: !912, line: 33, type: !103)
!4430 = !DILocation(line: 0, scope: !4424)
!4431 = !DILocation(line: 33, column: 16, scope: !4424)
!4432 = !DILocation(line: 34, column: 14, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4424, file: !912, line: 34, column: 7)
!4434 = !DILocation(line: 34, column: 20, scope: !4433)
!4435 = !DILocation(line: 34, column: 23, scope: !4433)
!4436 = !DILocation(line: 34, column: 29, scope: !4433)
!4437 = !DILocation(line: 34, column: 7, scope: !4424)
!4438 = !DILocation(line: 35, column: 5, scope: !4433)
!4439 = !DILocation(line: 36, column: 3, scope: !4424)
!4440 = distinct !DISubprogram(name: "xstrtoul", scope: !4441, file: !4441, line: 71, type: !4442, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4446)
!4441 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!4444, !130, !1218, !103, !4445, !130}
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !858, line: 43, baseType: !857)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!4446 = !{!4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4457, !4458, !4459, !4460, !4463, !4464}
!4447 = !DILocalVariable(name: "nptr", arg: 1, scope: !4440, file: !4441, line: 71, type: !130)
!4448 = !DILocalVariable(name: "endptr", arg: 2, scope: !4440, file: !4441, line: 71, type: !1218)
!4449 = !DILocalVariable(name: "base", arg: 3, scope: !4440, file: !4441, line: 71, type: !103)
!4450 = !DILocalVariable(name: "val", arg: 4, scope: !4440, file: !4441, line: 72, type: !4445)
!4451 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4440, file: !4441, line: 72, type: !130)
!4452 = !DILocalVariable(name: "t_ptr", scope: !4440, file: !4441, line: 74, type: !124)
!4453 = !DILocalVariable(name: "p", scope: !4440, file: !4441, line: 75, type: !1218)
!4454 = !DILocalVariable(name: "q", scope: !4455, file: !4441, line: 79, type: !130)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !4441, line: 78, column: 5)
!4456 = distinct !DILexicalBlock(scope: !4440, file: !4441, line: 77, column: 7)
!4457 = !DILocalVariable(name: "ch", scope: !4455, file: !4441, line: 80, type: !132)
!4458 = !DILocalVariable(name: "tmp", scope: !4440, file: !4441, line: 91, type: !129)
!4459 = !DILocalVariable(name: "err", scope: !4440, file: !4441, line: 92, type: !4444)
!4460 = !DILocalVariable(name: "xbase", scope: !4461, file: !4441, line: 126, type: !103)
!4461 = distinct !DILexicalBlock(scope: !4462, file: !4441, line: 119, column: 5)
!4462 = distinct !DILexicalBlock(scope: !4440, file: !4441, line: 118, column: 7)
!4463 = !DILocalVariable(name: "suffixes", scope: !4461, file: !4441, line: 127, type: !103)
!4464 = !DILocalVariable(name: "overflow", scope: !4461, file: !4441, line: 156, type: !4444)
!4465 = distinct !DIAssignID()
!4466 = !DILocation(line: 0, scope: !4440)
!4467 = !DILocation(line: 74, column: 3, scope: !4440)
!4468 = !DILocation(line: 75, column: 14, scope: !4440)
!4469 = !DILocation(line: 0, scope: !4455)
!4470 = !DILocation(line: 81, column: 7, scope: !4455)
!4471 = !DILocation(line: 81, column: 14, scope: !4455)
!4472 = !DILocation(line: 82, column: 15, scope: !4455)
!4473 = distinct !{!4473, !4470, !4474, !1112}
!4474 = !DILocation(line: 82, column: 17, scope: !4455)
!4475 = !DILocation(line: 83, column: 14, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4455, file: !4441, line: 83, column: 11)
!4477 = !DILocation(line: 83, column: 11, scope: !4455)
!4478 = !DILocation(line: 85, column: 14, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4476, file: !4441, line: 84, column: 9)
!4480 = !DILocation(line: 90, column: 3, scope: !4440)
!4481 = !DILocation(line: 90, column: 9, scope: !4440)
!4482 = !DILocation(line: 91, column: 20, scope: !4440)
!4483 = !DILocation(line: 94, column: 7, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4440, file: !4441, line: 94, column: 7)
!4485 = !DILocation(line: 94, column: 10, scope: !4484)
!4486 = !DILocation(line: 94, column: 7, scope: !4440)
!4487 = !DILocation(line: 98, column: 14, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !4441, line: 98, column: 11)
!4489 = distinct !DILexicalBlock(scope: !4484, file: !4441, line: 95, column: 5)
!4490 = !DILocation(line: 98, column: 29, scope: !4488)
!4491 = !DILocation(line: 98, column: 32, scope: !4488)
!4492 = !DILocation(line: 98, column: 38, scope: !4488)
!4493 = !DILocation(line: 98, column: 41, scope: !4488)
!4494 = !DILocation(line: 98, column: 11, scope: !4489)
!4495 = !DILocation(line: 102, column: 12, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4484, file: !4441, line: 102, column: 12)
!4497 = !DILocation(line: 102, column: 12, scope: !4484)
!4498 = !DILocation(line: 107, column: 5, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4496, file: !4441, line: 103, column: 5)
!4500 = !DILocation(line: 112, column: 8, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4440, file: !4441, line: 112, column: 7)
!4502 = !DILocation(line: 112, column: 7, scope: !4440)
!4503 = !DILocation(line: 114, column: 12, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !4441, line: 113, column: 5)
!4505 = !DILocation(line: 115, column: 7, scope: !4504)
!4506 = !DILocation(line: 118, column: 7, scope: !4462)
!4507 = !DILocation(line: 118, column: 11, scope: !4462)
!4508 = !DILocation(line: 118, column: 7, scope: !4440)
!4509 = !DILocation(line: 120, column: 12, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4461, file: !4441, line: 120, column: 11)
!4511 = !DILocation(line: 120, column: 11, scope: !4461)
!4512 = !DILocation(line: 122, column: 16, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4510, file: !4441, line: 121, column: 9)
!4514 = !DILocation(line: 123, column: 22, scope: !4513)
!4515 = !DILocation(line: 123, column: 11, scope: !4513)
!4516 = !DILocation(line: 0, scope: !4461)
!4517 = !DILocation(line: 128, column: 7, scope: !4461)
!4518 = !DILocation(line: 140, column: 15, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !4441, line: 140, column: 15)
!4520 = distinct !DILexicalBlock(scope: !4461, file: !4441, line: 129, column: 9)
!4521 = !DILocation(line: 140, column: 15, scope: !4520)
!4522 = !DILocation(line: 141, column: 21, scope: !4519)
!4523 = !DILocation(line: 141, column: 13, scope: !4519)
!4524 = !DILocation(line: 144, column: 21, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !4441, line: 144, column: 21)
!4526 = distinct !DILexicalBlock(scope: !4519, file: !4441, line: 142, column: 15)
!4527 = !DILocation(line: 144, column: 29, scope: !4525)
!4528 = !DILocation(line: 144, column: 21, scope: !4526)
!4529 = !DILocation(line: 152, column: 17, scope: !4526)
!4530 = !DILocation(line: 157, column: 7, scope: !4461)
!4531 = !DILocalVariable(name: "err", scope: !4532, file: !4441, line: 64, type: !4444)
!4532 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4441, file: !4441, line: 62, type: !4533, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4535)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!4444, !4445, !103, !103}
!4535 = !{!4536, !4537, !4538, !4531}
!4536 = !DILocalVariable(name: "x", arg: 1, scope: !4532, file: !4441, line: 62, type: !4445)
!4537 = !DILocalVariable(name: "base", arg: 2, scope: !4532, file: !4441, line: 62, type: !103)
!4538 = !DILocalVariable(name: "power", arg: 3, scope: !4532, file: !4441, line: 62, type: !103)
!4539 = !DILocation(line: 0, scope: !4532, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 219, column: 22, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4461, file: !4441, line: 158, column: 9)
!4542 = !DILocalVariable(name: "x", arg: 1, scope: !4543, file: !4441, line: 47, type: !4445)
!4543 = distinct !DISubprogram(name: "bkm_scale", scope: !4441, file: !4441, line: 47, type: !4544, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!4444, !4445, !103}
!4546 = !{!4542, !4547, !4548}
!4547 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4543, file: !4441, line: 47, type: !103)
!4548 = !DILocalVariable(name: "scaled", scope: !4543, file: !4441, line: 49, type: !129)
!4549 = !DILocation(line: 0, scope: !4543, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4540)
!4551 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4550)
!4552 = distinct !DILexicalBlock(scope: !4543, file: !4441, line: 50, column: 7)
!4553 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4550)
!4554 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4540)
!4555 = !DILocation(line: 227, column: 11, scope: !4461)
!4556 = !DILocation(line: 0, scope: !4532, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 215, column: 22, scope: !4541)
!4558 = !DILocation(line: 0, scope: !4543, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4557)
!4560 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4559)
!4561 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4559)
!4562 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4557)
!4563 = !DILocation(line: 0, scope: !4532, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 202, column: 22, scope: !4541)
!4565 = !DILocation(line: 0, scope: !4543, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4564)
!4567 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4566)
!4568 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4566)
!4569 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4564)
!4570 = !DILocation(line: 0, scope: !4532, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 198, column: 22, scope: !4541)
!4572 = !DILocation(line: 0, scope: !4543, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4571)
!4574 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4573)
!4575 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4573)
!4576 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4571)
!4577 = !DILocation(line: 0, scope: !4532, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 194, column: 22, scope: !4541)
!4579 = !DILocation(line: 0, scope: !4543, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4578)
!4581 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4580)
!4582 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4580)
!4583 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4578)
!4584 = !DILocation(line: 0, scope: !4532, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 175, column: 22, scope: !4541)
!4586 = !DILocation(line: 0, scope: !4543, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4585)
!4588 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4587)
!4589 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4587)
!4590 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4585)
!4591 = !DILocation(line: 0, scope: !4543, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 160, column: 22, scope: !4541)
!4593 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4592)
!4594 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4592)
!4595 = !DILocation(line: 161, column: 11, scope: !4541)
!4596 = !DILocation(line: 0, scope: !4543, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 167, column: 22, scope: !4541)
!4598 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4597)
!4599 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4597)
!4600 = !DILocation(line: 168, column: 11, scope: !4541)
!4601 = !DILocation(line: 0, scope: !4532, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 180, column: 22, scope: !4541)
!4603 = !DILocation(line: 0, scope: !4543, inlinedAt: !4604)
!4604 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4602)
!4605 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4604)
!4606 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4604)
!4607 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4602)
!4608 = !DILocation(line: 0, scope: !4532, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 185, column: 22, scope: !4541)
!4610 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4609)
!4612 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4611)
!4613 = !DILocation(line: 0, scope: !4543, inlinedAt: !4611)
!4614 = !DILocation(line: 0, scope: !4532, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 190, column: 22, scope: !4541)
!4616 = !DILocation(line: 0, scope: !4543, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4615)
!4618 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4617)
!4619 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4617)
!4620 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4615)
!4621 = !DILocation(line: 0, scope: !4532, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 207, column: 22, scope: !4541)
!4623 = !DILocation(line: 0, scope: !4543, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 66, column: 12, scope: !4532, inlinedAt: !4622)
!4625 = !DILocation(line: 50, column: 7, scope: !4552, inlinedAt: !4624)
!4626 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4624)
!4627 = !DILocation(line: 66, column: 9, scope: !4532, inlinedAt: !4622)
!4628 = !DILocation(line: 0, scope: !4543, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 211, column: 22, scope: !4541)
!4630 = !DILocation(line: 50, column: 7, scope: !4543, inlinedAt: !4629)
!4631 = !DILocation(line: 212, column: 11, scope: !4541)
!4632 = !DILocation(line: 0, scope: !4541)
!4633 = !DILocation(line: 228, column: 10, scope: !4461)
!4634 = !DILocation(line: 229, column: 11, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4461, file: !4441, line: 229, column: 11)
!4636 = !DILocation(line: 229, column: 11, scope: !4461)
!4637 = !DILocation(line: 223, column: 16, scope: !4541)
!4638 = !DILocation(line: 224, column: 22, scope: !4541)
!4639 = !DILocation(line: 100, column: 11, scope: !4489)
!4640 = !DILocation(line: 92, column: 16, scope: !4440)
!4641 = !DILocation(line: 233, column: 8, scope: !4440)
!4642 = !DILocation(line: 234, column: 3, scope: !4440)
!4643 = !DILocation(line: 235, column: 1, scope: !4440)
!4644 = !DISubprogram(name: "strtoul", scope: !1189, file: !1189, line: 181, type: !4645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!129, !1055, !4647, !103}
!4647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1218)
!4648 = distinct !DISubprogram(name: "close_stream", scope: !918, file: !918, line: 55, type: !4649, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4685)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!103, !4651}
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4653, file: !240, line: 51, baseType: !103, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4653, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4653, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4653, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4653, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4653, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4653, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4653, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4653, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4653, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4653, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4653, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4653, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4653, file: !240, line: 70, baseType: !4669, size: 64, offset: 832)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4653, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4653, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4653, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4653, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4653, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4653, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4653, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4653, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4653, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4653, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4653, file: !240, line: 93, baseType: !4669, size: 64, offset: 1344)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4653, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4653, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4653, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4653, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4685 = !{!4686, !4687, !4689, !4690}
!4686 = !DILocalVariable(name: "stream", arg: 1, scope: !4648, file: !918, line: 55, type: !4651)
!4687 = !DILocalVariable(name: "some_pending", scope: !4648, file: !918, line: 57, type: !4688)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!4689 = !DILocalVariable(name: "prev_fail", scope: !4648, file: !918, line: 58, type: !4688)
!4690 = !DILocalVariable(name: "fclose_fail", scope: !4648, file: !918, line: 59, type: !4688)
!4691 = !DILocation(line: 0, scope: !4648)
!4692 = !DILocation(line: 57, column: 30, scope: !4648)
!4693 = !DILocalVariable(name: "__stream", arg: 1, scope: !4694, file: !1359, line: 135, type: !4651)
!4694 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1359, file: !1359, line: 135, type: !4649, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4695)
!4695 = !{!4693}
!4696 = !DILocation(line: 0, scope: !4694, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 58, column: 27, scope: !4648)
!4698 = !DILocation(line: 137, column: 10, scope: !4694, inlinedAt: !4697)
!4699 = !DILocation(line: 58, column: 43, scope: !4648)
!4700 = !DILocation(line: 59, column: 29, scope: !4648)
!4701 = !DILocation(line: 59, column: 45, scope: !4648)
!4702 = !DILocation(line: 69, column: 17, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4648, file: !918, line: 69, column: 7)
!4704 = !DILocation(line: 57, column: 50, scope: !4648)
!4705 = !DILocation(line: 69, column: 33, scope: !4703)
!4706 = !DILocation(line: 69, column: 53, scope: !4703)
!4707 = !DILocation(line: 69, column: 59, scope: !4703)
!4708 = !DILocation(line: 69, column: 7, scope: !4648)
!4709 = !DILocation(line: 71, column: 11, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4703, file: !918, line: 70, column: 5)
!4711 = !DILocation(line: 72, column: 9, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4710, file: !918, line: 71, column: 11)
!4713 = !DILocation(line: 72, column: 15, scope: !4712)
!4714 = !DILocation(line: 77, column: 1, scope: !4648)
!4715 = !DISubprogram(name: "__fpending", scope: !2135, file: !2135, line: 75, type: !4716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!127, !4651}
!4718 = distinct !DISubprogram(name: "rpl_fclose", scope: !920, file: !920, line: 58, type: !4719, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4755)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!103, !4721}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4723)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4724)
!4724 = !{!4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4723, file: !240, line: 51, baseType: !103, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4723, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4723, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4723, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4723, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4723, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4723, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4723, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4723, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4723, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4723, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4723, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4723, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4723, file: !240, line: 70, baseType: !4739, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4723, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4723, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4723, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4723, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4723, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4723, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4723, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4723, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4723, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4723, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4723, file: !240, line: 93, baseType: !4739, size: 64, offset: 1344)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4723, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4723, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4723, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4723, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4755 = !{!4756, !4757, !4758, !4759}
!4756 = !DILocalVariable(name: "fp", arg: 1, scope: !4718, file: !920, line: 58, type: !4721)
!4757 = !DILocalVariable(name: "saved_errno", scope: !4718, file: !920, line: 60, type: !103)
!4758 = !DILocalVariable(name: "fd", scope: !4718, file: !920, line: 63, type: !103)
!4759 = !DILocalVariable(name: "result", scope: !4718, file: !920, line: 74, type: !103)
!4760 = !DILocation(line: 0, scope: !4718)
!4761 = !DILocation(line: 63, column: 12, scope: !4718)
!4762 = !DILocation(line: 64, column: 10, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4718, file: !920, line: 64, column: 7)
!4764 = !DILocation(line: 64, column: 7, scope: !4718)
!4765 = !DILocation(line: 65, column: 12, scope: !4763)
!4766 = !DILocation(line: 65, column: 5, scope: !4763)
!4767 = !DILocation(line: 70, column: 9, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4718, file: !920, line: 70, column: 7)
!4769 = !DILocation(line: 70, column: 23, scope: !4768)
!4770 = !DILocation(line: 70, column: 33, scope: !4768)
!4771 = !DILocation(line: 70, column: 26, scope: !4768)
!4772 = !DILocation(line: 70, column: 59, scope: !4768)
!4773 = !DILocation(line: 71, column: 7, scope: !4768)
!4774 = !DILocation(line: 71, column: 10, scope: !4768)
!4775 = !DILocation(line: 70, column: 7, scope: !4718)
!4776 = !DILocation(line: 100, column: 12, scope: !4718)
!4777 = !DILocation(line: 105, column: 7, scope: !4718)
!4778 = !DILocation(line: 72, column: 19, scope: !4768)
!4779 = !DILocation(line: 105, column: 19, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4718, file: !920, line: 105, column: 7)
!4781 = !DILocation(line: 107, column: 13, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4780, file: !920, line: 106, column: 5)
!4783 = !DILocation(line: 109, column: 5, scope: !4782)
!4784 = !DILocation(line: 112, column: 1, scope: !4718)
!4785 = !DISubprogram(name: "fileno", scope: !1060, file: !1060, line: 809, type: !4719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4786 = !DISubprogram(name: "fclose", scope: !1060, file: !1060, line: 178, type: !4719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4787 = !DISubprogram(name: "__freading", scope: !2135, file: !2135, line: 51, type: !4719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4788 = !DISubprogram(name: "lseek", scope: !1667, file: !1667, line: 339, type: !4789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!262, !103, !262, !103}
!4791 = distinct !DISubprogram(name: "rpl_fflush", scope: !922, file: !922, line: 130, type: !4792, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4828)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!103, !4794}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4796)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4797)
!4797 = !{!4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4796, file: !240, line: 51, baseType: !103, size: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4796, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4796, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4796, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4796, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4796, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4796, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4796, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4796, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4796, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4796, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4796, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4796, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4796, file: !240, line: 70, baseType: !4812, size: 64, offset: 832)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4796, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4796, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4796, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4796, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4796, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4796, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4796, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4796, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4796, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4796, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4796, file: !240, line: 93, baseType: !4812, size: 64, offset: 1344)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4796, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4796, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4796, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4796, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4828 = !{!4829}
!4829 = !DILocalVariable(name: "stream", arg: 1, scope: !4791, file: !922, line: 130, type: !4794)
!4830 = !DILocation(line: 0, scope: !4791)
!4831 = !DILocation(line: 151, column: 14, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4791, file: !922, line: 151, column: 7)
!4833 = !DILocation(line: 151, column: 22, scope: !4832)
!4834 = !DILocation(line: 151, column: 27, scope: !4832)
!4835 = !DILocation(line: 151, column: 7, scope: !4791)
!4836 = !DILocation(line: 152, column: 12, scope: !4832)
!4837 = !DILocation(line: 152, column: 5, scope: !4832)
!4838 = !DILocalVariable(name: "fp", arg: 1, scope: !4839, file: !922, line: 42, type: !4794)
!4839 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !922, file: !922, line: 42, type: !4840, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4842)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{null, !4794}
!4842 = !{!4838}
!4843 = !DILocation(line: 0, scope: !4839, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 157, column: 3, scope: !4791)
!4845 = !DILocation(line: 44, column: 12, scope: !4846, inlinedAt: !4844)
!4846 = distinct !DILexicalBlock(scope: !4839, file: !922, line: 44, column: 7)
!4847 = !DILocation(line: 44, column: 19, scope: !4846, inlinedAt: !4844)
!4848 = !DILocation(line: 44, column: 7, scope: !4839, inlinedAt: !4844)
!4849 = !DILocation(line: 46, column: 5, scope: !4846, inlinedAt: !4844)
!4850 = !DILocation(line: 159, column: 10, scope: !4791)
!4851 = !DILocation(line: 159, column: 3, scope: !4791)
!4852 = !DILocation(line: 236, column: 1, scope: !4791)
!4853 = !DISubprogram(name: "fflush", scope: !1060, file: !1060, line: 230, type: !4792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4854 = distinct !DISubprogram(name: "rpl_fseeko", scope: !924, file: !924, line: 28, type: !4855, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !4892)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!103, !4857, !4891, !103}
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4859)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4860)
!4860 = !{!4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4859, file: !240, line: 51, baseType: !103, size: 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4859, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4859, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4859, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4859, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4859, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4859, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4859, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4859, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4859, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4859, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4859, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4859, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4859, file: !240, line: 70, baseType: !4875, size: 64, offset: 832)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4859, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4859, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4859, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4859, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4859, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4859, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4859, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4859, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4859, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4859, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4859, file: !240, line: 93, baseType: !4875, size: 64, offset: 1344)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4859, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4859, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4859, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4859, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4891 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1060, line: 63, baseType: !262)
!4892 = !{!4893, !4894, !4895, !4896}
!4893 = !DILocalVariable(name: "fp", arg: 1, scope: !4854, file: !924, line: 28, type: !4857)
!4894 = !DILocalVariable(name: "offset", arg: 2, scope: !4854, file: !924, line: 28, type: !4891)
!4895 = !DILocalVariable(name: "whence", arg: 3, scope: !4854, file: !924, line: 28, type: !103)
!4896 = !DILocalVariable(name: "pos", scope: !4897, file: !924, line: 123, type: !4891)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !924, line: 119, column: 5)
!4898 = distinct !DILexicalBlock(scope: !4854, file: !924, line: 55, column: 7)
!4899 = !DILocation(line: 0, scope: !4854)
!4900 = !DILocation(line: 55, column: 12, scope: !4898)
!4901 = !{!1367, !996, i64 16}
!4902 = !DILocation(line: 55, column: 33, scope: !4898)
!4903 = !{!1367, !996, i64 8}
!4904 = !DILocation(line: 55, column: 25, scope: !4898)
!4905 = !DILocation(line: 56, column: 7, scope: !4898)
!4906 = !DILocation(line: 56, column: 15, scope: !4898)
!4907 = !DILocation(line: 56, column: 37, scope: !4898)
!4908 = !{!1367, !996, i64 32}
!4909 = !DILocation(line: 56, column: 29, scope: !4898)
!4910 = !DILocation(line: 57, column: 7, scope: !4898)
!4911 = !DILocation(line: 57, column: 15, scope: !4898)
!4912 = !{!1367, !996, i64 72}
!4913 = !DILocation(line: 57, column: 29, scope: !4898)
!4914 = !DILocation(line: 55, column: 7, scope: !4854)
!4915 = !DILocation(line: 123, column: 26, scope: !4897)
!4916 = !DILocation(line: 123, column: 19, scope: !4897)
!4917 = !DILocation(line: 0, scope: !4897)
!4918 = !DILocation(line: 124, column: 15, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4897, file: !924, line: 124, column: 11)
!4920 = !DILocation(line: 124, column: 11, scope: !4897)
!4921 = !DILocation(line: 135, column: 19, scope: !4897)
!4922 = !DILocation(line: 136, column: 12, scope: !4897)
!4923 = !DILocation(line: 136, column: 20, scope: !4897)
!4924 = !{!1367, !1368, i64 144}
!4925 = !DILocation(line: 167, column: 7, scope: !4897)
!4926 = !DILocation(line: 169, column: 10, scope: !4854)
!4927 = !DILocation(line: 169, column: 3, scope: !4854)
!4928 = !DILocation(line: 170, column: 1, scope: !4854)
!4929 = !DISubprogram(name: "fseeko", scope: !1060, file: !1060, line: 736, type: !4930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!103, !4857, !262, !103}
!4932 = distinct !DISubprogram(name: "umaxtostr", scope: !4933, file: !4933, line: 29, type: !4934, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !4936)
!4933 = !DIFile(filename: "lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!124, !133, !124}
!4936 = !{!4937, !4938, !4939}
!4937 = !DILocalVariable(name: "i", arg: 1, scope: !4932, file: !4933, line: 29, type: !133)
!4938 = !DILocalVariable(name: "buf", arg: 2, scope: !4932, file: !4933, line: 29, type: !124)
!4939 = !DILocalVariable(name: "p", scope: !4932, file: !4933, line: 31, type: !124)
!4940 = !DILocation(line: 0, scope: !4932)
!4941 = !DILocation(line: 31, column: 17, scope: !4932)
!4942 = !DILocation(line: 32, column: 6, scope: !4932)
!4943 = !DILocation(line: 45, column: 24, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !4933, line: 43, column: 5)
!4945 = distinct !DILexicalBlock(scope: !4932, file: !4933, line: 34, column: 7)
!4946 = !DILocation(line: 45, column: 16, scope: !4944)
!4947 = !DILocation(line: 45, column: 10, scope: !4944)
!4948 = !DILocation(line: 45, column: 14, scope: !4944)
!4949 = !DILocation(line: 46, column: 17, scope: !4944)
!4950 = !DILocation(line: 46, column: 24, scope: !4944)
!4951 = !DILocation(line: 45, column: 9, scope: !4944)
!4952 = distinct !{!4952, !4953, !4954, !1112}
!4953 = !DILocation(line: 44, column: 7, scope: !4944)
!4954 = !DILocation(line: 46, column: 28, scope: !4944)
!4955 = !DILocation(line: 49, column: 3, scope: !4932)
!4956 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !829, file: !829, line: 100, type: !4957, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4960)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!127, !2216, !130, !127, !4959}
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!4960 = !{!4961, !4962, !4963, !4964, !4965}
!4961 = !DILocalVariable(name: "pwc", arg: 1, scope: !4956, file: !829, line: 100, type: !2216)
!4962 = !DILocalVariable(name: "s", arg: 2, scope: !4956, file: !829, line: 100, type: !130)
!4963 = !DILocalVariable(name: "n", arg: 3, scope: !4956, file: !829, line: 100, type: !127)
!4964 = !DILocalVariable(name: "ps", arg: 4, scope: !4956, file: !829, line: 100, type: !4959)
!4965 = !DILocalVariable(name: "ret", scope: !4956, file: !829, line: 130, type: !127)
!4966 = !DILocation(line: 0, scope: !4956)
!4967 = !DILocation(line: 105, column: 9, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4956, file: !829, line: 105, column: 7)
!4969 = !DILocation(line: 105, column: 7, scope: !4956)
!4970 = !DILocation(line: 117, column: 10, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4956, file: !829, line: 117, column: 7)
!4972 = !DILocation(line: 117, column: 7, scope: !4956)
!4973 = !DILocation(line: 130, column: 16, scope: !4956)
!4974 = !DILocation(line: 135, column: 11, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4956, file: !829, line: 135, column: 7)
!4976 = !DILocation(line: 135, column: 25, scope: !4975)
!4977 = !DILocation(line: 135, column: 30, scope: !4975)
!4978 = !DILocation(line: 135, column: 7, scope: !4956)
!4979 = !DILocalVariable(name: "ps", arg: 1, scope: !4980, file: !2189, line: 1135, type: !4959)
!4980 = distinct !DISubprogram(name: "mbszero", scope: !2189, file: !2189, line: 1135, type: !4981, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4983)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !4959}
!4983 = !{!4979}
!4984 = !DILocation(line: 0, scope: !4980, inlinedAt: !4985)
!4985 = distinct !DILocation(line: 137, column: 5, scope: !4975)
!4986 = !DILocalVariable(name: "__dest", arg: 1, scope: !4987, file: !2198, line: 57, type: !125)
!4987 = distinct !DISubprogram(name: "memset", scope: !2198, file: !2198, line: 57, type: !2199, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4988)
!4988 = !{!4986, !4989, !4990}
!4989 = !DILocalVariable(name: "__ch", arg: 2, scope: !4987, file: !2198, line: 57, type: !103)
!4990 = !DILocalVariable(name: "__len", arg: 3, scope: !4987, file: !2198, line: 57, type: !127)
!4991 = !DILocation(line: 0, scope: !4987, inlinedAt: !4992)
!4992 = distinct !DILocation(line: 1137, column: 3, scope: !4980, inlinedAt: !4985)
!4993 = !DILocation(line: 59, column: 10, scope: !4987, inlinedAt: !4992)
!4994 = !DILocation(line: 137, column: 5, scope: !4975)
!4995 = !DILocation(line: 138, column: 11, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4956, file: !829, line: 138, column: 7)
!4997 = !DILocation(line: 138, column: 7, scope: !4956)
!4998 = !DILocation(line: 139, column: 5, scope: !4996)
!4999 = !DILocation(line: 143, column: 26, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4956, file: !829, line: 143, column: 7)
!5001 = !DILocation(line: 143, column: 41, scope: !5000)
!5002 = !DILocation(line: 143, column: 7, scope: !4956)
!5003 = !DILocation(line: 145, column: 15, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !829, line: 145, column: 11)
!5005 = distinct !DILexicalBlock(scope: !5000, file: !829, line: 144, column: 5)
!5006 = !DILocation(line: 145, column: 11, scope: !5005)
!5007 = !DILocation(line: 146, column: 32, scope: !5004)
!5008 = !DILocation(line: 146, column: 16, scope: !5004)
!5009 = !DILocation(line: 146, column: 14, scope: !5004)
!5010 = !DILocation(line: 146, column: 9, scope: !5004)
!5011 = !DILocation(line: 286, column: 1, scope: !4956)
!5012 = !DISubprogram(name: "mbsinit", scope: !5013, file: !5013, line: 293, type: !5014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5013 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!103, !5016}
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!5018 = distinct !DIAssignID()
!5019 = !DILocation(line: 0, scope: !942)
!5020 = !DILocation(line: 0, scope: !932)
!5021 = !DILocation(line: 77, column: 7, scope: !943)
!5022 = !DILocation(line: 77, column: 7, scope: !932)
!5023 = !DILocation(line: 80, column: 7, scope: !942)
!5024 = !DILocation(line: 80, column: 11, scope: !942)
!5025 = distinct !DIAssignID()
!5026 = !DILocalVariable(name: "g", arg: 1, scope: !5027, file: !929, line: 43, type: !936)
!5027 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !929, file: !929, line: 43, type: !5028, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !5030)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!936, !936, !127}
!5030 = !{!5026, !5031}
!5031 = !DILocalVariable(name: "num", arg: 2, scope: !5027, file: !929, line: 43, type: !127)
!5032 = !DILocation(line: 0, scope: !5027, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 82, column: 18, scope: !942)
!5034 = !DILocalVariable(name: "ptr", arg: 1, scope: !5035, file: !4071, line: 2057, type: !125)
!5035 = distinct !DISubprogram(name: "rpl_realloc", scope: !4071, file: !4071, line: 2057, type: !4063, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !5036)
!5036 = !{!5034, !5037}
!5037 = !DILocalVariable(name: "size", arg: 2, scope: !5035, file: !4071, line: 2057, type: !127)
!5038 = !DILocation(line: 0, scope: !5035, inlinedAt: !5039)
!5039 = distinct !DILocation(line: 51, column: 10, scope: !5027, inlinedAt: !5033)
!5040 = !DILocation(line: 2059, column: 10, scope: !5035, inlinedAt: !5039)
!5041 = !DILocation(line: 83, column: 13, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !942, file: !929, line: 83, column: 11)
!5043 = !DILocation(line: 83, column: 11, scope: !942)
!5044 = !DILocation(line: 88, column: 31, scope: !946)
!5045 = !DILocation(line: 82, column: 14, scope: !942)
!5046 = !DILocation(line: 0, scope: !946)
!5047 = !DILocation(line: 91, column: 20, scope: !946)
!5048 = !DILocation(line: 95, column: 18, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !946, file: !929, line: 95, column: 15)
!5050 = !DILocation(line: 98, column: 43, scope: !946)
!5051 = !DILocation(line: 95, column: 22, scope: !5049)
!5052 = !DILocation(line: 96, column: 26, scope: !5049)
!5053 = distinct !DIAssignID()
!5054 = !DILocation(line: 96, column: 13, scope: !5049)
!5055 = !DILocation(line: 0, scope: !5027, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 98, column: 22, scope: !946)
!5057 = !DILocation(line: 45, column: 7, scope: !5058, inlinedAt: !5056)
!5058 = distinct !DILexicalBlock(scope: !5027, file: !929, line: 45, column: 7)
!5059 = !DILocation(line: 45, column: 7, scope: !5027, inlinedAt: !5056)
!5060 = !DILocation(line: 47, column: 7, scope: !5061, inlinedAt: !5056)
!5061 = distinct !DILexicalBlock(scope: !5058, file: !929, line: 46, column: 5)
!5062 = !DILocation(line: 47, column: 13, scope: !5061, inlinedAt: !5056)
!5063 = !DILocation(line: 99, column: 15, scope: !946)
!5064 = !DILocation(line: 51, column: 26, scope: !5027, inlinedAt: !5056)
!5065 = !DILocation(line: 0, scope: !5035, inlinedAt: !5066)
!5066 = distinct !DILocation(line: 51, column: 10, scope: !5027, inlinedAt: !5056)
!5067 = !DILocation(line: 2059, column: 24, scope: !5035, inlinedAt: !5066)
!5068 = !DILocation(line: 2059, column: 10, scope: !5035, inlinedAt: !5066)
!5069 = !DILocation(line: 99, column: 17, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !946, file: !929, line: 99, column: 15)
!5071 = !DILocation(line: 101, column: 15, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5070, file: !929, line: 100, column: 13)
!5073 = !DILocation(line: 102, column: 15, scope: !5072)
!5074 = !DILocation(line: 106, column: 17, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !946, file: !929, line: 106, column: 15)
!5076 = !DILocation(line: 106, column: 15, scope: !946)
!5077 = distinct !{!5077, !5078, !5079}
!5078 = !DILocation(line: 86, column: 7, scope: !942)
!5079 = !DILocation(line: 113, column: 9, scope: !942)
!5080 = !DILocation(line: 108, column: 23, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5075, file: !929, line: 107, column: 13)
!5082 = !DILocation(line: 111, column: 15, scope: !5081)
!5083 = !DILocation(line: 114, column: 5, scope: !943)
!5084 = !DILocation(line: 120, column: 25, scope: !932)
!5085 = !DILocation(line: 125, column: 20, scope: !954)
!5086 = !DILocation(line: 125, column: 7, scope: !932)
!5087 = !DILocation(line: 127, column: 11, scope: !952)
!5088 = !DILocation(line: 127, column: 17, scope: !952)
!5089 = !DILocation(line: 127, column: 11, scope: !953)
!5090 = !DILocation(line: 0, scope: !5027, inlinedAt: !5091)
!5091 = distinct !DILocation(line: 129, column: 22, scope: !951)
!5092 = !DILocation(line: 0, scope: !5035, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 51, column: 10, scope: !5027, inlinedAt: !5091)
!5094 = !DILocation(line: 2059, column: 10, scope: !5035, inlinedAt: !5093)
!5095 = !DILocation(line: 0, scope: !951)
!5096 = !DILocation(line: 130, column: 15, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !951, file: !929, line: 130, column: 15)
!5098 = !DILocation(line: 130, column: 15, scope: !951)
!5099 = !DILocation(line: 132, column: 23, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5097, file: !929, line: 131, column: 13)
!5101 = !DILocation(line: 133, column: 18, scope: !5100)
!5102 = !DILocation(line: 134, column: 26, scope: !5100)
!5103 = !DILocation(line: 140, column: 20, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !932, file: !929, line: 140, column: 7)
!5105 = !DILocation(line: 140, column: 25, scope: !5104)
!5106 = !DILocation(line: 142, column: 38, scope: !932)
!5107 = !DILocation(line: 0, scope: !5027, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 142, column: 14, scope: !932)
!5109 = !DILocation(line: 51, column: 26, scope: !5027, inlinedAt: !5108)
!5110 = !DILocation(line: 0, scope: !5035, inlinedAt: !5111)
!5111 = distinct !DILocation(line: 51, column: 10, scope: !5027, inlinedAt: !5108)
!5112 = !DILocation(line: 2059, column: 24, scope: !5035, inlinedAt: !5111)
!5113 = !DILocation(line: 2059, column: 10, scope: !5035, inlinedAt: !5111)
!5114 = !DILocation(line: 143, column: 9, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !932, file: !929, line: 143, column: 7)
!5116 = !DILocation(line: 143, column: 7, scope: !932)
!5117 = !DILocation(line: 148, column: 46, scope: !932)
!5118 = !DILocation(line: 148, column: 39, scope: !932)
!5119 = !DILocation(line: 149, column: 39, scope: !932)
!5120 = !DILocation(line: 148, column: 15, scope: !932)
!5121 = !DILocation(line: 151, column: 10, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !932, file: !929, line: 151, column: 7)
!5123 = !DILocation(line: 151, column: 7, scope: !932)
!5124 = !DILocation(line: 154, column: 7, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5122, file: !929, line: 152, column: 5)
!5126 = !DILocation(line: 155, column: 7, scope: !5125)
!5127 = !DILocation(line: 158, column: 17, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !932, file: !929, line: 158, column: 7)
!5129 = !DILocation(line: 160, column: 10, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5128, file: !929, line: 159, column: 5)
!5131 = !DILocation(line: 161, column: 9, scope: !5130)
!5132 = !DILocation(line: 162, column: 5, scope: !5130)
!5133 = !DILocation(line: 163, column: 11, scope: !932)
!5134 = !DILocation(line: 181, column: 9, scope: !959)
!5135 = !DILocation(line: 181, column: 7, scope: !932)
!5136 = !DILocation(line: 183, column: 21, scope: !958)
!5137 = !DILocation(line: 0, scope: !958)
!5138 = !DILocation(line: 184, column: 29, scope: !958)
!5139 = !DILocation(line: 0, scope: !962)
!5140 = !DILocation(line: 186, scope: !962)
!5141 = !DILocation(line: 186, column: 7, scope: !962)
!5142 = !DILocation(line: 188, column: 15, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !929, line: 188, column: 15)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !929, line: 187, column: 9)
!5145 = distinct !DILexicalBlock(scope: !962, file: !929, line: 186, column: 7)
!5146 = !DILocation(line: 188, column: 21, scope: !5143)
!5147 = !DILocation(line: 188, column: 30, scope: !5143)
!5148 = !DILocation(line: 189, column: 15, scope: !5143)
!5149 = !DILocation(line: 189, column: 13, scope: !5143)
!5150 = !DILocation(line: 191, column: 14, scope: !5143)
!5151 = !DILocation(line: 191, column: 18, scope: !5143)
!5152 = !DILocation(line: 186, column: 38, scope: !5145)
!5153 = distinct !{!5153, !5141, !5154, !1112}
!5154 = !DILocation(line: 192, column: 9, scope: !962)
!5155 = !DILocation(line: 196, column: 1, scope: !932)
!5156 = !DISubprogram(name: "getgrouplist", scope: !1532, file: !1532, line: 186, type: !5157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!103, !130, !208, !5159, !465}
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!5160 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !967, file: !967, line: 27, type: !3979, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !5161)
!5161 = !{!5162, !5163, !5164, !5165}
!5162 = !DILocalVariable(name: "ptr", arg: 1, scope: !5160, file: !967, line: 27, type: !125)
!5163 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5160, file: !967, line: 27, type: !127)
!5164 = !DILocalVariable(name: "size", arg: 3, scope: !5160, file: !967, line: 27, type: !127)
!5165 = !DILocalVariable(name: "nbytes", scope: !5160, file: !967, line: 29, type: !127)
!5166 = !DILocation(line: 0, scope: !5160)
!5167 = !DILocation(line: 30, column: 7, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5160, file: !967, line: 30, column: 7)
!5169 = !DILocation(line: 30, column: 7, scope: !5160)
!5170 = !DILocation(line: 32, column: 7, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5168, file: !967, line: 31, column: 5)
!5172 = !DILocation(line: 32, column: 13, scope: !5171)
!5173 = !DILocation(line: 33, column: 7, scope: !5171)
!5174 = !DILocalVariable(name: "ptr", arg: 1, scope: !5175, file: !4071, line: 2057, type: !125)
!5175 = distinct !DISubprogram(name: "rpl_realloc", scope: !4071, file: !4071, line: 2057, type: !4063, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !5176)
!5176 = !{!5174, !5177}
!5177 = !DILocalVariable(name: "size", arg: 2, scope: !5175, file: !4071, line: 2057, type: !127)
!5178 = !DILocation(line: 0, scope: !5175, inlinedAt: !5179)
!5179 = distinct !DILocation(line: 37, column: 10, scope: !5160)
!5180 = !DILocation(line: 2059, column: 24, scope: !5175, inlinedAt: !5179)
!5181 = !DILocation(line: 2059, column: 10, scope: !5175, inlinedAt: !5179)
!5182 = !DILocation(line: 37, column: 3, scope: !5160)
!5183 = !DILocation(line: 38, column: 1, scope: !5160)
!5184 = distinct !DISubprogram(name: "hard_locale", scope: !847, file: !847, line: 28, type: !5185, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5187)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{!223, !103}
!5187 = !{!5188, !5189}
!5188 = !DILocalVariable(name: "category", arg: 1, scope: !5184, file: !847, line: 28, type: !103)
!5189 = !DILocalVariable(name: "locale", scope: !5184, file: !847, line: 30, type: !5190)
!5190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5191)
!5191 = !{!5192}
!5192 = !DISubrange(count: 257)
!5193 = distinct !DIAssignID()
!5194 = !DILocation(line: 0, scope: !5184)
!5195 = !DILocation(line: 30, column: 3, scope: !5184)
!5196 = !DILocation(line: 32, column: 7, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5184, file: !847, line: 32, column: 7)
!5198 = !DILocation(line: 32, column: 7, scope: !5184)
!5199 = !DILocalVariable(name: "__s1", arg: 1, scope: !5200, file: !1078, line: 1359, type: !130)
!5200 = distinct !DISubprogram(name: "streq", scope: !1078, file: !1078, line: 1359, type: !1079, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5201)
!5201 = !{!5199, !5202}
!5202 = !DILocalVariable(name: "__s2", arg: 2, scope: !5200, file: !1078, line: 1359, type: !130)
!5203 = !DILocation(line: 0, scope: !5200, inlinedAt: !5204)
!5204 = distinct !DILocation(line: 35, column: 9, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5184, file: !847, line: 35, column: 7)
!5206 = !DILocation(line: 1361, column: 11, scope: !5200, inlinedAt: !5204)
!5207 = !DILocation(line: 35, column: 29, scope: !5205)
!5208 = !DILocation(line: 0, scope: !5200, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 35, column: 32, scope: !5205)
!5210 = !DILocation(line: 1361, column: 11, scope: !5200, inlinedAt: !5209)
!5211 = !DILocation(line: 1361, column: 10, scope: !5200, inlinedAt: !5209)
!5212 = !DILocation(line: 35, column: 7, scope: !5184)
!5213 = !DILocation(line: 46, column: 3, scope: !5184)
!5214 = !DILocation(line: 47, column: 1, scope: !5184)
!5215 = distinct !DISubprogram(name: "setlocale_null_r", scope: !973, file: !973, line: 154, type: !5216, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!103, !103, !124, !127}
!5218 = !{!5219, !5220, !5221}
!5219 = !DILocalVariable(name: "category", arg: 1, scope: !5215, file: !973, line: 154, type: !103)
!5220 = !DILocalVariable(name: "buf", arg: 2, scope: !5215, file: !973, line: 154, type: !124)
!5221 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5215, file: !973, line: 154, type: !127)
!5222 = !DILocation(line: 0, scope: !5215)
!5223 = !DILocation(line: 159, column: 10, scope: !5215)
!5224 = !DILocation(line: 159, column: 3, scope: !5215)
!5225 = distinct !DISubprogram(name: "setlocale_null", scope: !973, file: !973, line: 186, type: !5226, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5228)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!130, !103}
!5228 = !{!5229}
!5229 = !DILocalVariable(name: "category", arg: 1, scope: !5225, file: !973, line: 186, type: !103)
!5230 = !DILocation(line: 0, scope: !5225)
!5231 = !DILocation(line: 189, column: 10, scope: !5225)
!5232 = !DILocation(line: 189, column: 3, scope: !5225)
!5233 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !975, file: !975, line: 35, type: !5226, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5234)
!5234 = !{!5235, !5236}
!5235 = !DILocalVariable(name: "category", arg: 1, scope: !5233, file: !975, line: 35, type: !103)
!5236 = !DILocalVariable(name: "result", scope: !5233, file: !975, line: 37, type: !130)
!5237 = !DILocation(line: 0, scope: !5233)
!5238 = !DILocation(line: 37, column: 24, scope: !5233)
!5239 = !DILocation(line: 62, column: 3, scope: !5233)
!5240 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !975, file: !975, line: 66, type: !5216, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5241)
!5241 = !{!5242, !5243, !5244, !5245, !5246}
!5242 = !DILocalVariable(name: "category", arg: 1, scope: !5240, file: !975, line: 66, type: !103)
!5243 = !DILocalVariable(name: "buf", arg: 2, scope: !5240, file: !975, line: 66, type: !124)
!5244 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5240, file: !975, line: 66, type: !127)
!5245 = !DILocalVariable(name: "result", scope: !5240, file: !975, line: 111, type: !130)
!5246 = !DILocalVariable(name: "length", scope: !5247, file: !975, line: 125, type: !127)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !975, line: 124, column: 5)
!5248 = distinct !DILexicalBlock(scope: !5240, file: !975, line: 113, column: 7)
!5249 = !DILocation(line: 0, scope: !5240)
!5250 = !DILocation(line: 0, scope: !5233, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 111, column: 24, scope: !5240)
!5252 = !DILocation(line: 37, column: 24, scope: !5233, inlinedAt: !5251)
!5253 = !DILocation(line: 113, column: 14, scope: !5248)
!5254 = !DILocation(line: 113, column: 7, scope: !5240)
!5255 = !DILocation(line: 116, column: 19, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5257, file: !975, line: 116, column: 11)
!5257 = distinct !DILexicalBlock(scope: !5248, file: !975, line: 114, column: 5)
!5258 = !DILocation(line: 116, column: 11, scope: !5257)
!5259 = !DILocation(line: 120, column: 16, scope: !5256)
!5260 = !DILocation(line: 120, column: 9, scope: !5256)
!5261 = !DILocation(line: 125, column: 23, scope: !5247)
!5262 = !DILocation(line: 0, scope: !5247)
!5263 = !DILocation(line: 126, column: 18, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5247, file: !975, line: 126, column: 11)
!5265 = !DILocation(line: 126, column: 11, scope: !5247)
!5266 = !DILocation(line: 128, column: 39, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5264, file: !975, line: 127, column: 9)
!5268 = !DILocalVariable(name: "__dest", arg: 1, scope: !5269, file: !2198, line: 26, type: !4342)
!5269 = distinct !DISubprogram(name: "memcpy", scope: !2198, file: !2198, line: 26, type: !4340, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5270)
!5270 = !{!5268, !5271, !5272}
!5271 = !DILocalVariable(name: "__src", arg: 2, scope: !5269, file: !2198, line: 26, type: !1212)
!5272 = !DILocalVariable(name: "__len", arg: 3, scope: !5269, file: !2198, line: 26, type: !127)
!5273 = !DILocation(line: 0, scope: !5269, inlinedAt: !5274)
!5274 = distinct !DILocation(line: 128, column: 11, scope: !5267)
!5275 = !DILocation(line: 29, column: 10, scope: !5269, inlinedAt: !5274)
!5276 = !DILocation(line: 129, column: 11, scope: !5267)
!5277 = !DILocation(line: 133, column: 23, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !975, line: 133, column: 15)
!5279 = distinct !DILexicalBlock(scope: !5264, file: !975, line: 132, column: 9)
!5280 = !DILocation(line: 133, column: 15, scope: !5279)
!5281 = !DILocation(line: 138, column: 44, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5278, file: !975, line: 134, column: 13)
!5283 = !DILocation(line: 0, scope: !5269, inlinedAt: !5284)
!5284 = distinct !DILocation(line: 138, column: 15, scope: !5282)
!5285 = !DILocation(line: 29, column: 10, scope: !5269, inlinedAt: !5284)
!5286 = !DILocation(line: 139, column: 15, scope: !5282)
!5287 = !DILocation(line: 139, column: 32, scope: !5282)
!5288 = !DILocation(line: 140, column: 13, scope: !5282)
!5289 = !DILocation(line: 0, scope: !5248)
!5290 = !DILocation(line: 145, column: 1, scope: !5240)
