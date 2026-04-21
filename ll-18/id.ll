; ModuleID = 'src/id.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
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
@longopts = internal constant [10 x %struct.option] [%struct.option { ptr @.str.69, i32 0, ptr null, i32 90 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 103 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 71 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 117 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.77, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !97
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
@multiple_users = internal unnamed_addr global i8 0, align 4, !dbg !427
@euid = internal global i32 0, align 4, !dbg !203
@.str.29 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1, !dbg !179
@ok = internal unnamed_addr global i8 1, align 4, !dbg !429
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
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1, !dbg !478
@.str.3.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !483
@.str.4.5 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1, !dbg !485
@.str.38 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !487
@Version = dso_local local_unnamed_addr global ptr @.str.38, align 8, !dbg !490
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !494
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !507
@.str.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !499
@.str.1.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !501
@.str.2.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !503
@.str.3.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !505
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !509
@stderr = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !515
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !551
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !517
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !541
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !543
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !545
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !547
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !549
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !553
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !555
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !560
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !565
@.str.90 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !571
@.str.1.91 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !573
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !575
@.str.94 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !606
@.str.1.95 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !609
@.str.2.96 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !611
@.str.3.97 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !616
@.str.4.98 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !618
@.str.5.99 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !620
@.str.6.100 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !622
@.str.7.101 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !624
@.str.8.102 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !626
@.str.9.103 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !628
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.94, ptr @.str.1.95, ptr @.str.2.96, ptr @.str.3.97, ptr @.str.4.98, ptr @.str.5.99, ptr @.str.6.100, ptr @.str.7.101, ptr @.str.8.102, ptr @.str.9.103, ptr null], align 8, !dbg !630
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !655
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !669
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !707
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !714
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !671
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !716
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !659
@.str.10.106 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !676
@.str.11.104 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !678
@.str.12.107 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !680
@.str.13.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !682
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !684
@.str.112 = private unnamed_addr constant [27 x i8] c"warning: '.' should be ':'\00", align 1, !dbg !722
@.str.1.115 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1, !dbg !725
@.str.2.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !727
@.str.3.114 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1, !dbg !729
@.str.4.116 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1, !dbg !731
@.str.5.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !733
@.str.120 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !735
@.str.1.121 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !738
@.str.2.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !740
@.str.3.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !742
@.str.4.124 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !744
@.str.5.125 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !746
@.str.6.126 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !751
@.str.7.127 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !753
@.str.8.128 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !755
@.str.9.129 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !760
@.str.10.130 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !765
@.str.11.131 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !770
@.str.12.132 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !775
@.str.13.133 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !777
@.str.14.134 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !779
@.str.15.135 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !784
@.str.16.136 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !789
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.141 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !794
@.str.18.142 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !796
@.str.19.143 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !798
@.str.20.144 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !800
@.str.21.145 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !802
@.str.22.146 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !804
@.str.23.147 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !806
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !811
@exit_failure = dso_local global i32 1, align 4, !dbg !819
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !825
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !828
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !830
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !832
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !835
@.str.188 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !850
@.str.1.189 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !853

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !990 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !994, metadata !DIExpression()), !dbg !995
  %2 = icmp eq i32 %0, 0, !dbg !996
  br i1 %2, label %8, label %3, !dbg !998

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !999, !tbaa !1001
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !999
  %6 = load ptr, ptr @program_name, align 8, !dbg !999, !tbaa !1001
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !999
  br label %42, !dbg !999

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1005
  %10 = load ptr, ptr @program_name, align 8, !dbg !1005, !tbaa !1001
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !1005
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1007
  %13 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !1001
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1007
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1008
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1009
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1009
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1010
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1010
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1011
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1012
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1013
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1013
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1014
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1014
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1015
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1015
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1016
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1016
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1017
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1017
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1018
  %26 = load ptr, ptr @stdout, align 8, !dbg !1018, !tbaa !1001
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1019, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata !1038, metadata !1032, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr poison, metadata !1031, metadata !DIExpression()), !dbg !1036
  tail call void @emit_bug_reporting_address() #40, !dbg !1039
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1040
  call void @llvm.dbg.value(metadata ptr %28, metadata !1034, metadata !DIExpression()), !dbg !1036
  %29 = icmp eq ptr %28, null, !dbg !1041
  br i1 %29, label %37, label %30, !dbg !1043

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.64, i64 noundef 3) #41, !dbg !1044
  %32 = icmp eq i32 %31, 0, !dbg !1044
  br i1 %32, label %37, label %33, !dbg !1045

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #40, !dbg !1046
  %35 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !1001
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1046
  br label %37, !dbg !1048

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1031, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1035, metadata !DIExpression()), !dbg !1036
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #40, !dbg !1049
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #40, !dbg !1049
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #40, !dbg !1050
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #40, !dbg !1050
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1051
  unreachable, !dbg !1051
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1052 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1056 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1062 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1065 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !213 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !217, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !1068
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1069, !tbaa !1070
  %3 = icmp eq i32 %2, -1, !dbg !1072
  br i1 %3, label %4, label %16, !dbg !1073

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #40, !dbg !1074
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !1075
  %6 = icmp eq ptr %5, null, !dbg !1076
  br i1 %6, label %14, label %7, !dbg !1077

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1078, !tbaa !1079
  %9 = icmp eq i8 %8, 0, !dbg !1078
  br i1 %9, label %14, label %10, !dbg !1080

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1081, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1087, metadata !DIExpression()), !dbg !1088
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #41, !dbg !1090
  %12 = icmp eq i32 %11, 0, !dbg !1091
  %13 = zext i1 %12 to i32, !dbg !1080
  br label %14, !dbg !1080

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1092, !tbaa !1070
  br label %16, !dbg !1093

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1094
  %18 = icmp eq i32 %17, 0, !dbg !1094
  br i1 %18, label %22, label %19, !dbg !1096

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1097, !tbaa !1001
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1097
  br label %121, !dbg !1099

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !1068
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #41, !dbg !1100
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1101
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !1068
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1102
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !1068
  %26 = icmp eq ptr %25, null, !dbg !1103
  br i1 %26, label %53, label %27, !dbg !1104

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1105
  br i1 %28, label %53, label %29, !dbg !1106

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !1107
  %30 = icmp ult ptr %24, %25, !dbg !1108
  br i1 %30, label %31, label %53, !dbg !1109

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1068
  %33 = load ptr, ptr %32, align 8, !tbaa !1001
  br label %34, !dbg !1109

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !1107
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1110
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !1107
  %38 = load i8, ptr %35, align 1, !dbg !1110, !tbaa !1079
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1110
  %41 = load i16, ptr %40, align 2, !dbg !1110, !tbaa !1111
  %42 = freeze i16 %41, !dbg !1113
  %43 = lshr i16 %42, 13, !dbg !1113
  %44 = and i16 %43, 1, !dbg !1113
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !1107
  %47 = icmp ult ptr %37, %25, !dbg !1108
  %48 = icmp ult i64 %46, 2, !dbg !1115
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1115
  br i1 %49, label %34, label %50, !dbg !1109, !llvm.loop !1116

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1114
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1118
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1120
  br label %53, !dbg !1120

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1068
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !225, metadata !DIExpression()), !dbg !1068
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.37) #41, !dbg !1121
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !231, metadata !DIExpression()), !dbg !1068
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1122
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !232, metadata !DIExpression()), !dbg !1068
  br label %58, !dbg !1123

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1068
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !232, metadata !DIExpression()), !dbg !1068
  %61 = load i8, ptr %59, align 1, !dbg !1124, !tbaa !1079
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1125

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1126
  %64 = load i8, ptr %63, align 1, !dbg !1129, !tbaa !1079
  %65 = icmp ne i8 %64, 45, !dbg !1130
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1131
  br label %67, !dbg !1131

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !1068
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !1132
  %70 = load ptr, ptr %69, align 8, !dbg !1132, !tbaa !1001
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1132
  %73 = load i16, ptr %72, align 2, !dbg !1132, !tbaa !1111
  %74 = and i16 %73, 8192, !dbg !1132
  %75 = icmp eq i16 %74, 0, !dbg !1132
  br i1 %75, label %89, label %76, !dbg !1134

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1135
  br i1 %77, label %91, label %78, !dbg !1138

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1139
  %80 = load i8, ptr %79, align 1, !dbg !1139, !tbaa !1079
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1139
  %83 = load i16, ptr %82, align 2, !dbg !1139, !tbaa !1111
  %84 = and i16 %83, 8192, !dbg !1139
  %85 = icmp eq i16 %84, 0, !dbg !1139
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1140
  br i1 %88, label %89, label %91, !dbg !1140

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1141
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !232, metadata !DIExpression()), !dbg !1068
  br label %58, !dbg !1123, !llvm.loop !1142

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1068
  %92 = ptrtoint ptr %24 to i64, !dbg !1144
  %93 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !1001
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata !1038, metadata !1087, metadata !DIExpression()), !dbg !1163
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !1068
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #41, !dbg !1165
  %96 = icmp eq i32 %95, 0, !dbg !1165
  br i1 %96, label %100, label %97, !dbg !1167

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #41, !dbg !1168
  %99 = icmp eq i32 %98, 0, !dbg !1168
  br i1 %99, label %100, label %103, !dbg !1169

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1170
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !1170
  br label %106, !dbg !1172

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1173
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !1173
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1175, !tbaa !1001
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %107), !dbg !1175
  %109 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !1001
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %109), !dbg !1176
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1177
  %112 = sub i64 %111, %92, !dbg !1177
  %113 = load ptr, ptr @stdout, align 8, !dbg !1177, !tbaa !1001
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1177
  %115 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !1001
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %115), !dbg !1178
  %117 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !1001
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %117), !dbg !1179
  %119 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !1001
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1180
  br label %121, !dbg !1181

121:                                              ; preds = %106, %19
  ret void, !dbg !1181
}

; Function Attrs: nounwind
declare !dbg !1182 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1186 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1190 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1192 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1195 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1198 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1201 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1204 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1210 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1211 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1217 {
  %3 = alloca ptr, align 8, !DIAssignID !1251
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1229, metadata !DIExpression(), metadata !1251, metadata ptr %3, metadata !DIExpression()), !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1222, metadata !DIExpression()), !dbg !1253
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1223, metadata !DIExpression()), !dbg !1253
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1225, metadata !DIExpression()), !dbg !1253
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1226, metadata !DIExpression()), !dbg !1253
  %4 = load ptr, ptr %1, align 8, !dbg !1254, !tbaa !1001
  tail call void @set_program_name(ptr noundef %4) #40, !dbg !1255
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.15) #40, !dbg !1256
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #40, !dbg !1257
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.16) #40, !dbg !1258
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1259
  br label %9, !dbg !1260

9:                                                ; preds = %27, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1261
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1224, metadata !DIExpression()), !dbg !1253
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
    i32 -2, label %18
    i32 -3, label %19
  ], !dbg !1260

11:                                               ; preds = %9
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1262
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %12) #40, !dbg !1262
  unreachable, !dbg !1262

13:                                               ; preds = %9
  br label %25, !dbg !1266

14:                                               ; preds = %9
  br label %25, !dbg !1267

15:                                               ; preds = %9
  br label %25, !dbg !1268

16:                                               ; preds = %9
  br label %25, !dbg !1269

17:                                               ; preds = %9
  br label %25, !dbg !1270

18:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #44, !dbg !1271
  unreachable, !dbg !1271

19:                                               ; preds = %9
  %20 = load ptr, ptr @stdout, align 8, !dbg !1272, !tbaa !1001
  %21 = load ptr, ptr @Version, align 8, !dbg !1272, !tbaa !1001
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #40, !dbg !1272
  %23 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #40, !dbg !1272
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef null) #40, !dbg !1272
  tail call void @exit(i32 noundef 0) #42, !dbg !1272
  unreachable, !dbg !1272

24:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #44, !dbg !1273
  unreachable, !dbg !1273

25:                                               ; preds = %9, %13, %14, %15, %16, %17
  %26 = phi ptr [ @just_group_list, %17 ], [ @opt_zero, %16 ], [ @just_user, %15 ], [ @use_real, %14 ], [ @use_name, %13 ], [ @just_group, %9 ]
  store i1 true, ptr %26, align 1, !dbg !1274
  br label %27, !dbg !1260

27:                                               ; preds = %25, %9
  br label %9, !dbg !1261, !llvm.loop !1275

28:                                               ; preds = %9
  %29 = load i32, ptr @optind, align 4, !dbg !1277, !tbaa !1070
  %30 = sub nsw i32 %0, %29, !dbg !1278
  %31 = sext i32 %30 to i64, !dbg !1279
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1227, metadata !DIExpression()), !dbg !1253
  %32 = load i1, ptr @just_user, align 1, !dbg !1280
  %33 = zext i1 %32 to i32, !dbg !1280
  %34 = load i1, ptr @just_group, align 1, !dbg !1282
  %35 = zext i1 %34 to i32, !dbg !1282
  %36 = add nuw nsw i32 %35, %33, !dbg !1283
  %37 = load i1, ptr @just_group_list, align 1, !dbg !1284
  %38 = zext i1 %37 to i32, !dbg !1284
  %39 = add nuw nsw i32 %36, %38, !dbg !1285
  %40 = icmp ugt i32 %39, 1, !dbg !1286
  br i1 %40, label %41, label %43, !dbg !1287

41:                                               ; preds = %28
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1288
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %42) #40, !dbg !1288
  unreachable, !dbg !1288

43:                                               ; preds = %28
  %44 = or i1 %32, %34, !dbg !1289
  %45 = or i1 %44, %37, !dbg !1289
  tail call void @llvm.dbg.value(metadata i1 %45, metadata !1228, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1253
  br i1 %45, label %46, label %48, !dbg !1290

46:                                               ; preds = %43
  %47 = icmp eq i32 %29, %0, !dbg !1292
  br i1 %47, label %123, label %62, !dbg !1294

48:                                               ; preds = %43
  %49 = load i1, ptr @use_real, align 1, !dbg !1295
  br i1 %49, label %52, label %50, !dbg !1296

50:                                               ; preds = %48
  %51 = load i1, ptr @use_name, align 1, !dbg !1297
  br i1 %51, label %52, label %54, !dbg !1298

52:                                               ; preds = %50, %48
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1299
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %53) #40, !dbg !1299
  unreachable, !dbg !1299

54:                                               ; preds = %50
  %55 = load i1, ptr @opt_zero, align 1, !dbg !1300
  br i1 %55, label %56, label %58, !dbg !1302

56:                                               ; preds = %54
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1303
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %57) #40, !dbg !1303
  unreachable, !dbg !1303

58:                                               ; preds = %54
  %59 = icmp eq i32 %29, %0, !dbg !1292
  br i1 %59, label %60, label %62, !dbg !1304

60:                                               ; preds = %58
  %61 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #40, !dbg !1305
  br label %123, !dbg !1294

62:                                               ; preds = %58, %46
  %63 = icmp ugt i32 %30, 1, !dbg !1306
  %64 = zext i1 %63 to i8, !dbg !1307
  store i8 %64, ptr @multiple_users, align 4, !dbg !1307, !tbaa !1308
  %65 = sext i32 %29 to i64, !dbg !1310
  %66 = add nsw i64 %31, %65, !dbg !1311
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !1227, metadata !DIExpression()), !dbg !1253
  %67 = icmp ugt i64 %66, %65, !dbg !1312
  br i1 %67, label %.preheader, label %174, !dbg !1313

.preheader:                                       ; preds = %62
  br label %68, !dbg !1313

68:                                               ; preds = %.preheader, %117
  %69 = phi i64 [ %121, %117 ], [ %65, %.preheader ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1314
  store ptr null, ptr %3, align 8, !dbg !1315, !tbaa !1001, !DIAssignID !1316
  call void @llvm.dbg.assign(metadata ptr null, metadata !1229, metadata !DIExpression(), metadata !1316, metadata ptr %3, metadata !DIExpression()), !dbg !1252
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1235, metadata !DIExpression()), !dbg !1252
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69, !dbg !1317
  %71 = load ptr, ptr %70, align 8, !dbg !1317, !tbaa !1001
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1247, metadata !DIExpression()), !dbg !1252
  %72 = load i8, ptr %71, align 1, !dbg !1318, !tbaa !1079
  %73 = icmp eq i8 %72, 0, !dbg !1318
  br i1 %73, label %88, label %74, !dbg !1320

74:                                               ; preds = %68
  %75 = call ptr @parse_user_spec(ptr noundef nonnull %71, ptr noundef nonnull @euid, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #40, !dbg !1321
  %76 = icmp eq ptr %75, null, !dbg !1321
  br i1 %76, label %77, label %88, !dbg !1324

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 8, !dbg !1325, !tbaa !1001
  %79 = icmp eq ptr %78, null, !dbg !1325
  br i1 %79, label %82, label %80, !dbg !1325

80:                                               ; preds = %77
  %81 = call ptr @getpwnam(ptr noundef nonnull %78), !dbg !1326
  br label %85, !dbg !1325

82:                                               ; preds = %77
  %83 = load i32, ptr @euid, align 4, !dbg !1327, !tbaa !1070
  %84 = call ptr @getpwuid(i32 noundef %83) #40, !dbg !1328
  br label %85, !dbg !1325

85:                                               ; preds = %80, %82
  %86 = phi ptr [ %81, %80 ], [ %84, %82 ], !dbg !1252
  tail call void @llvm.dbg.value(metadata ptr %86, metadata !1235, metadata !DIExpression()), !dbg !1252
  %87 = icmp eq ptr %86, null, !dbg !1329
  br i1 %87, label %88, label %93, !dbg !1331

88:                                               ; preds = %68, %74, %85
  %89 = tail call ptr @__errno_location() #43, !dbg !1332
  %90 = load i32, ptr %89, align 4, !dbg !1332, !tbaa !1070
  %91 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1332
  %92 = call ptr @quote(ptr noundef nonnull %71) #40, !dbg !1332
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %90, ptr noundef %91, ptr noundef %92) #40, !dbg !1332
  store i8 0, ptr @ok, align 4, !dbg !1334, !tbaa !1308
  br label %117, !dbg !1335

93:                                               ; preds = %85
  %94 = load ptr, ptr %3, align 8, !dbg !1336, !tbaa !1001
  %95 = icmp eq ptr %94, null, !dbg !1336
  br i1 %95, label %96, label %99, !dbg !1339

96:                                               ; preds = %93
  %97 = load ptr, ptr %86, align 8, !dbg !1340, !tbaa !1341
  %98 = call noalias nonnull ptr @xstrdup(ptr noundef %97) #40, !dbg !1343
  store ptr %98, ptr %3, align 8, !dbg !1344, !tbaa !1001, !DIAssignID !1345
  call void @llvm.dbg.assign(metadata ptr %98, metadata !1229, metadata !DIExpression(), metadata !1345, metadata ptr %3, metadata !DIExpression()), !dbg !1252
  br label %99, !dbg !1346

99:                                               ; preds = %96, %93
  %100 = phi ptr [ %98, %96 ], [ %94, %93 ], !dbg !1347
  %101 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 2, !dbg !1348
  %102 = load i32, ptr %101, align 8, !dbg !1348, !tbaa !1349
  store i32 %102, ptr @euid, align 4, !dbg !1350, !tbaa !1070
  store i32 %102, ptr @ruid, align 4, !dbg !1351, !tbaa !1070
  %103 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 3, !dbg !1352
  %104 = load i32, ptr %103, align 4, !dbg !1352, !tbaa !1353
  store i32 %104, ptr @egid, align 4, !dbg !1354, !tbaa !1070
  store i32 %104, ptr @rgid, align 4, !dbg !1355, !tbaa !1070
  call fastcc void @print_stuff(ptr noundef nonnull %100), !dbg !1356
  %105 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !1001
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !1359, metadata !DIExpression()), !dbg !1365
  %106 = load i32, ptr %105, align 8, !dbg !1367, !tbaa !1368
  %107 = and i32 %106, 32, !dbg !1357
  %108 = icmp eq i32 %107, 0, !dbg !1357
  br i1 %108, label %117, label %109, !dbg !1371

109:                                              ; preds = %99
  %.lcssa = phi ptr [ %105, %99 ], !dbg !1357
  %110 = tail call ptr @__errno_location() #43, !dbg !1372
  %111 = load i32, ptr %110, align 4, !dbg !1372, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %111, metadata !1375, metadata !DIExpression()), !dbg !1377
  %112 = call i32 @fflush_unlocked(ptr noundef nonnull %.lcssa) #40, !dbg !1378
  %113 = load ptr, ptr @stdout, align 8, !dbg !1379, !tbaa !1001
  %114 = call i32 @fpurge(ptr noundef %113) #40, !dbg !1380
  %115 = load ptr, ptr @stdout, align 8, !dbg !1381, !tbaa !1001
  call void @clearerr_unlocked(ptr noundef %115) #40, !dbg !1381
  %116 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #40, !dbg !1382
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %111, ptr noundef %116) #40, !dbg !1382
  unreachable, !dbg !1382

117:                                              ; preds = %99, %88
  %118 = load ptr, ptr %3, align 8, !dbg !1383, !tbaa !1001
  call void @free(ptr noundef %118) #40, !dbg !1384
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1385
  %119 = load i32, ptr @optind, align 4, !dbg !1386, !tbaa !1070
  %120 = add nsw i32 %119, 1, !dbg !1386
  store i32 %120, ptr @optind, align 4, !dbg !1386, !tbaa !1070
  %121 = sext i32 %120 to i64, !dbg !1387
  %122 = icmp ugt i64 %66, %121, !dbg !1312
  br i1 %122, label %68, label %.loopexit, !dbg !1313, !llvm.loop !1388

123:                                              ; preds = %60, %46
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1248, metadata !DIExpression()), !dbg !1390
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1250, metadata !DIExpression()), !dbg !1390
  br i1 %32, label %124, label %126, !dbg !1391

124:                                              ; preds = %123
  %125 = load i1, ptr @use_real, align 1, !dbg !1392
  br i1 %125, label %137, label %128, !dbg !1394

126:                                              ; preds = %123
  %127 = or i1 %34, %37, !dbg !1395
  br i1 %127, label %137, label %128, !dbg !1395

128:                                              ; preds = %126, %124
  %129 = tail call ptr @__errno_location() #43, !dbg !1396
  store i32 0, ptr %129, align 4, !dbg !1398, !tbaa !1070
  %130 = tail call i32 @geteuid() #40, !dbg !1399
  store i32 %130, ptr @euid, align 4, !dbg !1400, !tbaa !1070
  %131 = icmp eq i32 %130, -1, !dbg !1401
  br i1 %131, label %132, label %137, !dbg !1403

132:                                              ; preds = %128
  %133 = load i32, ptr %129, align 4, !dbg !1404, !tbaa !1070
  %134 = icmp eq i32 %133, 0, !dbg !1404
  br i1 %134, label %137, label %135, !dbg !1405

135:                                              ; preds = %132
  %136 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1406
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %133, ptr noundef %136) #40, !dbg !1406
  unreachable, !dbg !1406

137:                                              ; preds = %126, %128, %132, %124
  %138 = load i1, ptr @just_user, align 1, !dbg !1407
  br i1 %138, label %139, label %141, !dbg !1409

139:                                              ; preds = %137
  %140 = load i1, ptr @use_real, align 1, !dbg !1410
  br i1 %140, label %145, label %173, !dbg !1407

141:                                              ; preds = %137
  %142 = load i1, ptr @just_group, align 1, !dbg !1411
  br i1 %142, label %143, label %145, !dbg !1412

143:                                              ; preds = %141
  %144 = tail call ptr @__errno_location() #43, !dbg !1413
  br label %156, !dbg !1412

145:                                              ; preds = %141, %139
  %146 = tail call ptr @__errno_location() #43, !dbg !1416
  store i32 0, ptr %146, align 4, !dbg !1418, !tbaa !1070
  %147 = tail call i32 @getuid() #40, !dbg !1419
  store i32 %147, ptr @ruid, align 4, !dbg !1420, !tbaa !1070
  %148 = icmp eq i32 %147, -1, !dbg !1421
  br i1 %148, label %149, label %154, !dbg !1423

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 4, !dbg !1424, !tbaa !1070
  %151 = icmp eq i32 %150, 0, !dbg !1424
  br i1 %151, label %154, label %152, !dbg !1425

152:                                              ; preds = %149
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1426
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %150, ptr noundef %153) #40, !dbg !1426
  unreachable, !dbg !1426

154:                                              ; preds = %145, %149
  %155 = load i1, ptr @just_user, align 1, !dbg !1427
  br i1 %155, label %173, label %156, !dbg !1428

156:                                              ; preds = %143, %154
  %157 = phi ptr [ %144, %143 ], [ %146, %154 ], !dbg !1413
  store i32 0, ptr %157, align 4, !dbg !1429, !tbaa !1070
  %158 = tail call i32 @getegid() #40, !dbg !1430
  store i32 %158, ptr @egid, align 4, !dbg !1431, !tbaa !1070
  %159 = icmp eq i32 %158, -1, !dbg !1432
  br i1 %159, label %160, label %165, !dbg !1434

160:                                              ; preds = %156
  %161 = load i32, ptr %157, align 4, !dbg !1435, !tbaa !1070
  %162 = icmp eq i32 %161, 0, !dbg !1435
  br i1 %162, label %165, label %163, !dbg !1436

163:                                              ; preds = %160
  %164 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !1437
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %161, ptr noundef %164) #40, !dbg !1437
  unreachable, !dbg !1437

165:                                              ; preds = %160, %156
  store i32 0, ptr %157, align 4, !dbg !1438, !tbaa !1070
  %166 = tail call i32 @getgid() #40, !dbg !1439
  store i32 %166, ptr @rgid, align 4, !dbg !1440, !tbaa !1070
  %167 = icmp eq i32 %166, -1, !dbg !1441
  br i1 %167, label %168, label %173, !dbg !1443

168:                                              ; preds = %165
  %169 = load i32, ptr %157, align 4, !dbg !1444, !tbaa !1070
  %170 = icmp eq i32 %169, 0, !dbg !1444
  br i1 %170, label %173, label %171, !dbg !1445

171:                                              ; preds = %168
  %172 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !1446
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %169, ptr noundef %172) #40, !dbg !1446
  unreachable, !dbg !1446

173:                                              ; preds = %139, %165, %168, %154
  tail call fastcc void @print_stuff(ptr noundef null), !dbg !1447
  br label %174

.loopexit:                                        ; preds = %117
  br label %174, !dbg !1448

174:                                              ; preds = %.loopexit, %62, %173
  %175 = load i8, ptr @ok, align 4, !dbg !1448, !tbaa !1308, !range !1449, !noundef !1038
  %176 = xor i8 %175, 1, !dbg !1448
  %177 = zext nneg i8 %176 to i32, !dbg !1448
  ret i32 %177, !dbg !1450
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1451 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1454 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1455 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1458 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1464 noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1467 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1470 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @print_stuff(ptr noundef %0) unnamed_addr #10 !dbg !1474 {
  %2 = alloca ptr, align 8, !DIAssignID !1477
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1476, metadata !DIExpression()), !dbg !1478
  %3 = load i1, ptr @just_user, align 1, !dbg !1479
  br i1 %3, label %4, label %24, !dbg !1481

4:                                                ; preds = %1
  %5 = load i1, ptr @use_real, align 1, !dbg !1482
  %6 = load i32, ptr @ruid, align 4, !dbg !1482
  %7 = load i32, ptr @euid, align 4, !dbg !1482
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %8, metadata !1483, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata ptr null, metadata !1488, metadata !DIExpression()), !dbg !1489
  %9 = load i1, ptr @use_name, align 1, !dbg !1491
  br i1 %9, label %12, label %10, !dbg !1493

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64, !dbg !1494
  br label %21, !dbg !1493

12:                                               ; preds = %4
  %13 = tail call ptr @getpwuid(i32 noundef %8) #40, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %13, metadata !1488, metadata !DIExpression()), !dbg !1489
  %14 = icmp eq ptr %13, null, !dbg !1498
  br i1 %14, label %15, label %18, !dbg !1500

15:                                               ; preds = %12
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #40, !dbg !1501
  %17 = zext i32 %8 to i64, !dbg !1501
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16, i64 noundef %17) #40, !dbg !1501
  store i8 0, ptr @ok, align 4, !dbg !1503, !tbaa !1308
  br label %21, !dbg !1504

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %13, metadata !1488, metadata !DIExpression()), !dbg !1489
  %19 = load ptr, ptr %13, align 8, !dbg !1505, !tbaa !1341
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %19) #40, !dbg !1505
  br label %182, !dbg !1505

21:                                               ; preds = %15, %10
  %22 = phi i64 [ %11, %10 ], [ %17, %15 ], !dbg !1494
  call void @llvm.dbg.value(metadata ptr null, metadata !1488, metadata !DIExpression()), !dbg !1489
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %22) #40, !dbg !1494
  br label %182

24:                                               ; preds = %1
  %25 = load i1, ptr @just_group, align 1, !dbg !1506
  br i1 %25, label %26, label %37, !dbg !1508

26:                                               ; preds = %24
  %27 = load i1, ptr @use_real, align 1, !dbg !1509
  %28 = load i32, ptr @rgid, align 4, !dbg !1509
  %29 = load i32, ptr @egid, align 4, !dbg !1509
  %30 = select i1 %27, i32 %28, i32 %29, !dbg !1509
  %31 = load i1, ptr @use_name, align 1, !dbg !1510
  %32 = tail call i1 @print_group(i32 noundef %30, i1 noundef %31) #40, !dbg !1511
  %33 = load i8, ptr @ok, align 4, !dbg !1512, !tbaa !1308, !range !1449, !noundef !1038
  %34 = icmp ne i8 %33, 0, !dbg !1512
  %35 = and i1 %32, %34, !dbg !1512
  %36 = zext i1 %35 to i8, !dbg !1512
  store i8 %36, ptr @ok, align 4, !dbg !1512, !tbaa !1308
  br label %182, !dbg !1513

37:                                               ; preds = %24
  %38 = load i1, ptr @just_group_list, align 1, !dbg !1514
  br i1 %38, label %39, label %51, !dbg !1516

39:                                               ; preds = %37
  %40 = load i32, ptr @ruid, align 4, !dbg !1517, !tbaa !1070
  %41 = load i32, ptr @rgid, align 4, !dbg !1518, !tbaa !1070
  %42 = load i32, ptr @egid, align 4, !dbg !1519, !tbaa !1070
  %43 = load i1, ptr @use_name, align 1, !dbg !1520
  %44 = load i1, ptr @opt_zero, align 1, !dbg !1521
  %45 = select i1 %44, i8 0, i8 32, !dbg !1521
  %46 = tail call i1 @print_group_list(ptr noundef %0, i32 noundef %40, i32 noundef %41, i32 noundef %42, i1 noundef %43, i8 noundef %45) #40, !dbg !1522
  %47 = load i8, ptr @ok, align 4, !dbg !1523, !tbaa !1308, !range !1449, !noundef !1038
  %48 = icmp ne i8 %47, 0, !dbg !1523
  %49 = and i1 %46, %48, !dbg !1523
  %50 = zext i1 %49 to i8, !dbg !1523
  store i8 %50, ptr @ok, align 4, !dbg !1523, !tbaa !1308
  br label %182, !dbg !1524

51:                                               ; preds = %37
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1525, metadata !DIExpression(), metadata !1477, metadata ptr %2, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !1547
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #40, !dbg !1548
  %53 = load i32, ptr @ruid, align 4, !dbg !1548, !tbaa !1070
  %54 = zext i32 %53 to i64, !dbg !1548
  %55 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %52, i64 noundef %54) #40, !dbg !1548
  %56 = load i32, ptr @ruid, align 4, !dbg !1549, !tbaa !1070
  %57 = tail call ptr @getpwuid(i32 noundef %56) #40, !dbg !1550
  call void @llvm.dbg.value(metadata ptr %57, metadata !1530, metadata !DIExpression()), !dbg !1547
  %58 = icmp eq ptr %57, null, !dbg !1551
  br i1 %58, label %62, label %59, !dbg !1553

59:                                               ; preds = %51
  %60 = load ptr, ptr %57, align 8, !dbg !1554, !tbaa !1341
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %60) #40, !dbg !1554
  br label %62, !dbg !1554

62:                                               ; preds = %59, %51
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #40, !dbg !1555
  %64 = load i32, ptr @rgid, align 4, !dbg !1555, !tbaa !1070
  %65 = zext i32 %64 to i64, !dbg !1555
  %66 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %63, i64 noundef %65) #40, !dbg !1555
  %67 = load i32, ptr @rgid, align 4, !dbg !1556, !tbaa !1070
  %68 = tail call ptr @getgrgid(i32 noundef %67) #40, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %68, metadata !1531, metadata !DIExpression()), !dbg !1547
  %69 = icmp eq ptr %68, null, !dbg !1558
  br i1 %69, label %73, label %70, !dbg !1560

70:                                               ; preds = %62
  %71 = load ptr, ptr %68, align 8, !dbg !1561, !tbaa !1562
  %72 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %71) #40, !dbg !1561
  br label %73, !dbg !1561

73:                                               ; preds = %70, %62
  %74 = load i32, ptr @euid, align 4, !dbg !1564, !tbaa !1070
  %75 = load i32, ptr @ruid, align 4, !dbg !1566, !tbaa !1070
  %76 = icmp eq i32 %74, %75, !dbg !1567
  br i1 %76, label %88, label %77, !dbg !1568

77:                                               ; preds = %73
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #40, !dbg !1569
  %79 = load i32, ptr @euid, align 4, !dbg !1569, !tbaa !1070
  %80 = zext i32 %79 to i64, !dbg !1569
  %81 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %78, i64 noundef %80) #40, !dbg !1569
  %82 = load i32, ptr @euid, align 4, !dbg !1571, !tbaa !1070
  %83 = tail call ptr @getpwuid(i32 noundef %82) #40, !dbg !1572
  call void @llvm.dbg.value(metadata ptr %83, metadata !1530, metadata !DIExpression()), !dbg !1547
  %84 = icmp eq ptr %83, null, !dbg !1573
  br i1 %84, label %88, label %85, !dbg !1575

85:                                               ; preds = %77
  %86 = load ptr, ptr %83, align 8, !dbg !1576, !tbaa !1341
  %87 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %86) #40, !dbg !1576
  br label %88, !dbg !1576

88:                                               ; preds = %85, %77, %73
  %89 = phi ptr [ %83, %85 ], [ null, %77 ], [ %57, %73 ], !dbg !1547
  call void @llvm.dbg.value(metadata ptr %89, metadata !1530, metadata !DIExpression()), !dbg !1547
  %90 = load i32, ptr @egid, align 4, !dbg !1577, !tbaa !1070
  %91 = load i32, ptr @rgid, align 4, !dbg !1579, !tbaa !1070
  %92 = icmp eq i32 %90, %91, !dbg !1580
  br i1 %92, label %104, label %93, !dbg !1581

93:                                               ; preds = %88
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #40, !dbg !1582
  %95 = load i32, ptr @egid, align 4, !dbg !1582, !tbaa !1070
  %96 = zext i32 %95 to i64, !dbg !1582
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, i64 noundef %96) #40, !dbg !1582
  %98 = load i32, ptr @egid, align 4, !dbg !1584, !tbaa !1070
  %99 = tail call ptr @getgrgid(i32 noundef %98) #40, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %99, metadata !1531, metadata !DIExpression()), !dbg !1547
  %100 = icmp eq ptr %99, null, !dbg !1586
  br i1 %100, label %104, label %101, !dbg !1588

101:                                              ; preds = %93
  %102 = load ptr, ptr %99, align 8, !dbg !1589, !tbaa !1562
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %102) #40, !dbg !1589
  br label %104, !dbg !1589

104:                                              ; preds = %101, %93, %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40, !dbg !1590
  %105 = icmp eq ptr %0, null, !dbg !1591
  br i1 %105, label %115, label %106, !dbg !1593

106:                                              ; preds = %104
  %107 = icmp eq ptr %89, null, !dbg !1594
  br i1 %107, label %111, label %108, !dbg !1594

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.passwd, ptr %89, i64 0, i32 3, !dbg !1595
  %110 = load i32, ptr %109, align 4, !dbg !1595, !tbaa !1353
  br label %111, !dbg !1594

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %110, %108 ], [ -1, %106 ], !dbg !1596
  call void @llvm.dbg.value(metadata i32 %112, metadata !1540, metadata !DIExpression()), !dbg !1544
  %113 = call i32 @xgetgroups(ptr noundef nonnull %0, i32 noundef %112, ptr noundef nonnull %2) #40, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %113, metadata !1541, metadata !DIExpression()), !dbg !1544
  %114 = icmp sgt i32 %113, -1, !dbg !1598
  br i1 %114, label %129, label %119, !dbg !1600

115:                                              ; preds = %104
  %116 = load i32, ptr @egid, align 4, !dbg !1601, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %116, metadata !1540, metadata !DIExpression()), !dbg !1544
  %117 = call i32 @xgetgroups(ptr noundef null, i32 noundef %116, ptr noundef nonnull %2) #40, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %117, metadata !1541, metadata !DIExpression()), !dbg !1544
  %118 = icmp sgt i32 %117, -1, !dbg !1598
  br i1 %118, label %129, label %124, !dbg !1600

119:                                              ; preds = %111
  %120 = tail call ptr @__errno_location() #43, !dbg !1602
  %121 = load i32, ptr %120, align 4, !dbg !1602, !tbaa !1070
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #40, !dbg !1602
  %123 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !1602
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %121, ptr noundef %122, ptr noundef %123) #40, !dbg !1602
  br label %128, !dbg !1602

124:                                              ; preds = %115
  %125 = tail call ptr @__errno_location() #43, !dbg !1605
  %126 = load i32, ptr %125, align 4, !dbg !1605, !tbaa !1070
  %127 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #40, !dbg !1605
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %126, ptr noundef %127) #40, !dbg !1605
  br label %128

128:                                              ; preds = %124, %119
  store i8 0, ptr @ok, align 4, !dbg !1606, !tbaa !1308
  br label %181, !dbg !1607

129:                                              ; preds = %115, %111
  %130 = phi i32 [ %117, %115 ], [ %113, %111 ]
  %131 = icmp eq i32 %130, 0, !dbg !1608
  br i1 %131, label %150, label %132, !dbg !1610

132:                                              ; preds = %129
  %133 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.89, i32 noundef 5) #40, !dbg !1611
  %134 = load ptr, ptr @stdout, align 8, !dbg !1611, !tbaa !1001
  %135 = call i32 @fputs_unlocked(ptr noundef %133, ptr noundef %134), !dbg !1611
  call void @llvm.dbg.value(metadata i32 0, metadata !1542, metadata !DIExpression()), !dbg !1612
  %136 = zext nneg i32 %130 to i64, !dbg !1613
  call void @llvm.dbg.value(metadata i64 0, metadata !1542, metadata !DIExpression()), !dbg !1612
  %137 = load ptr, ptr %2, align 8, !dbg !1615, !tbaa !1001
  %138 = load i32, ptr %137, align 4, !dbg !1615, !tbaa !1070
  %139 = zext i32 %138 to i64, !dbg !1615
  %140 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %139) #40, !dbg !1615
  %141 = load ptr, ptr %2, align 8, !dbg !1617, !tbaa !1001
  %142 = load i32, ptr %141, align 4, !dbg !1617, !tbaa !1070
  %143 = call ptr @getgrgid(i32 noundef %142) #40, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %143, metadata !1531, metadata !DIExpression()), !dbg !1547
  %144 = icmp eq ptr %143, null, !dbg !1619
  br i1 %144, label %148, label %145, !dbg !1621

145:                                              ; preds = %132
  %146 = load ptr, ptr %143, align 8, !dbg !1622, !tbaa !1562
  %147 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %146) #40, !dbg !1622
  br label %148, !dbg !1622

148:                                              ; preds = %145, %132
  call void @llvm.dbg.value(metadata i64 1, metadata !1542, metadata !DIExpression()), !dbg !1612
  %149 = icmp eq i32 %130, 1, !dbg !1613
  br i1 %149, label %150, label %.preheader, !dbg !1623

.preheader:                                       ; preds = %148
  br label %152, !dbg !1623

.loopexit:                                        ; preds = %178
  br label %150, !dbg !1624

150:                                              ; preds = %.loopexit, %148, %129
  %151 = load ptr, ptr %2, align 8, !dbg !1624, !tbaa !1001
  call void @free(ptr noundef %151) #40, !dbg !1625
  br label %181, !dbg !1626

152:                                              ; preds = %.preheader, %178
  %153 = phi i64 [ %179, %178 ], [ 1, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !1542, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i32 44, metadata !1627, metadata !DIExpression()), !dbg !1632
  %154 = load ptr, ptr @stdout, align 8, !dbg !1635, !tbaa !1001
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 5, !dbg !1635
  %156 = load ptr, ptr %155, align 8, !dbg !1635, !tbaa !1636
  %157 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 6, !dbg !1635
  %158 = load ptr, ptr %157, align 8, !dbg !1635, !tbaa !1637
  %159 = icmp ult ptr %156, %158, !dbg !1635
  br i1 %159, label %162, label %160, !dbg !1635, !prof !1638

160:                                              ; preds = %152
  %161 = call i32 @__overflow(ptr noundef nonnull %154, i32 noundef 44) #40, !dbg !1635
  br label %164, !dbg !1635

162:                                              ; preds = %152
  %163 = getelementptr inbounds i8, ptr %156, i64 1, !dbg !1635
  store ptr %163, ptr %155, align 8, !dbg !1635, !tbaa !1636
  store i8 44, ptr %156, align 1, !dbg !1635, !tbaa !1079
  br label %164, !dbg !1635

164:                                              ; preds = %162, %160
  %165 = load ptr, ptr %2, align 8, !dbg !1615, !tbaa !1001
  %166 = getelementptr inbounds i32, ptr %165, i64 %153, !dbg !1615
  %167 = load i32, ptr %166, align 4, !dbg !1615, !tbaa !1070
  %168 = zext i32 %167 to i64, !dbg !1615
  %169 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %168) #40, !dbg !1615
  %170 = load ptr, ptr %2, align 8, !dbg !1617, !tbaa !1001
  %171 = getelementptr inbounds i32, ptr %170, i64 %153, !dbg !1617
  %172 = load i32, ptr %171, align 4, !dbg !1617, !tbaa !1070
  %173 = call ptr @getgrgid(i32 noundef %172) #40, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %173, metadata !1531, metadata !DIExpression()), !dbg !1547
  %174 = icmp eq ptr %173, null, !dbg !1619
  br i1 %174, label %178, label %175, !dbg !1621

175:                                              ; preds = %164
  %176 = load ptr, ptr %173, align 8, !dbg !1622, !tbaa !1562
  %177 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %176) #40, !dbg !1622
  br label %178, !dbg !1622

178:                                              ; preds = %175, %164
  %179 = add nuw nsw i64 %153, 1, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %179, metadata !1542, metadata !DIExpression()), !dbg !1612
  %180 = icmp eq i64 %179, %136, !dbg !1613
  br i1 %180, label %.loopexit, label %152, !dbg !1623, !llvm.loop !1640

181:                                              ; preds = %128, %150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40, !dbg !1626
  br label %182

182:                                              ; preds = %21, %18, %26, %181, %39
  %183 = load i1, ptr @opt_zero, align 1, !dbg !1643
  br i1 %183, label %184, label %211, !dbg !1645

184:                                              ; preds = %182
  %185 = load i1, ptr @just_group_list, align 1, !dbg !1646
  %186 = load i8, ptr @multiple_users, align 4, !range !1449
  %187 = icmp ne i8 %186, 0
  %188 = select i1 %185, i1 %187, i1 false, !dbg !1647
  br i1 %188, label %189, label %211, !dbg !1647

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 0, metadata !1627, metadata !DIExpression()), !dbg !1648
  %190 = load ptr, ptr @stdout, align 8, !dbg !1651, !tbaa !1001
  %191 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 5, !dbg !1651
  %192 = load ptr, ptr %191, align 8, !dbg !1651, !tbaa !1636
  %193 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 6, !dbg !1651
  %194 = load ptr, ptr %193, align 8, !dbg !1651, !tbaa !1637
  %195 = icmp ult ptr %192, %194, !dbg !1651
  br i1 %195, label %198, label %196, !dbg !1651, !prof !1638

196:                                              ; preds = %189
  %197 = call i32 @__overflow(ptr noundef nonnull %190, i32 noundef 0) #40, !dbg !1651
  br label %200, !dbg !1651

198:                                              ; preds = %189
  %199 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !1651
  store ptr %199, ptr %191, align 8, !dbg !1651, !tbaa !1636
  store i8 0, ptr %192, align 1, !dbg !1651, !tbaa !1079
  br label %200, !dbg !1651

200:                                              ; preds = %196, %198
  call void @llvm.dbg.value(metadata i32 0, metadata !1627, metadata !DIExpression()), !dbg !1652
  %201 = load ptr, ptr @stdout, align 8, !dbg !1654, !tbaa !1001
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1654
  %203 = load ptr, ptr %202, align 8, !dbg !1654, !tbaa !1636
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1654
  %205 = load ptr, ptr %204, align 8, !dbg !1654, !tbaa !1637
  %206 = icmp ult ptr %203, %205, !dbg !1654
  br i1 %206, label %209, label %207, !dbg !1654, !prof !1638

207:                                              ; preds = %200
  %208 = call i32 @__overflow(ptr noundef nonnull %201, i32 noundef 0) #40, !dbg !1654
  br label %224, !dbg !1654

209:                                              ; preds = %200
  %210 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1654
  store ptr %210, ptr %202, align 8, !dbg !1654, !tbaa !1636
  store i8 0, ptr %203, align 1, !dbg !1654, !tbaa !1079
  br label %224, !dbg !1654

211:                                              ; preds = %184, %182
  %212 = phi i32 [ 0, %184 ], [ 10, %182 ], !dbg !1655
  call void @llvm.dbg.value(metadata i32 %212, metadata !1627, metadata !DIExpression()), !dbg !1657
  %213 = load ptr, ptr @stdout, align 8, !dbg !1659, !tbaa !1001
  %214 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 5, !dbg !1659
  %215 = load ptr, ptr %214, align 8, !dbg !1659, !tbaa !1636
  %216 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 6, !dbg !1659
  %217 = load ptr, ptr %216, align 8, !dbg !1659, !tbaa !1637
  %218 = icmp ult ptr %215, %217, !dbg !1659
  br i1 %218, label %221, label %219, !dbg !1659, !prof !1638

219:                                              ; preds = %211
  %220 = call i32 @__overflow(ptr noundef nonnull %213, i32 noundef %212) #40, !dbg !1659
  br label %224, !dbg !1659

221:                                              ; preds = %211
  %222 = trunc i32 %212 to i8, !dbg !1659
  %223 = getelementptr inbounds i8, ptr %215, i64 1, !dbg !1659
  store ptr %223, ptr %214, align 8, !dbg !1659, !tbaa !1636
  store i8 %222, ptr %215, align 1, !dbg !1659, !tbaa !1079
  br label %224, !dbg !1659

224:                                              ; preds = %221, %219, %209, %207
  ret void, !dbg !1660
}

declare !dbg !1661 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1662 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1665 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1668 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1672 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1673 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1676 i32 @getgid() local_unnamed_addr #2

declare !dbg !1677 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

declare !dbg !1680 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) local_unnamed_addr #10 !dbg !1683 {
  %7 = alloca ptr, align 8, !DIAssignID !1710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1705, metadata !DIExpression(), metadata !1710, metadata ptr %7, metadata !DIExpression()), !dbg !1711
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1687, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1688, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1689, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1690, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !1691, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !1692, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1693, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1694, metadata !DIExpression()), !dbg !1712
  %8 = icmp eq ptr %0, null, !dbg !1713
  br i1 %8, label %12, label %9, !dbg !1715

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #40, !dbg !1716
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1694, metadata !DIExpression()), !dbg !1712
  %11 = icmp ne ptr %10, null, !dbg !1718
  br label %12, !dbg !1720

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1712
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1694, metadata !DIExpression()), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1693, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 %2, metadata !1721, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i1 %4, metadata !1726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1743
  call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1743
  br i1 %4, label %17, label %15, !dbg !1746

15:                                               ; preds = %12
  %16 = zext i32 %2 to i64, !dbg !1747
  br label %26, !dbg !1746

17:                                               ; preds = %12
  %18 = tail call ptr @getgrgid(i32 noundef %2) #40, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %18, metadata !1727, metadata !DIExpression()), !dbg !1743
  %19 = icmp eq ptr %18, null, !dbg !1750
  br i1 %19, label %20, label %23, !dbg !1751

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %21, metadata !1736, metadata !DIExpression()), !dbg !1753
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #40, !dbg !1754
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %22, i64 noundef %21) #40, !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1743
  br label %26, !dbg !1755

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %18, metadata !1727, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1743
  %24 = load ptr, ptr %18, align 8, !dbg !1756, !tbaa !1562
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %24) #40, !dbg !1756
  br label %31, !dbg !1756

26:                                               ; preds = %20, %15
  %27 = phi i64 [ %16, %15 ], [ %21, %20 ], !dbg !1747
  %28 = xor i1 %4, true, !dbg !1747
  call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1743
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %27) #40, !dbg !1747
  %30 = select i1 %28, i1 %13, i1 false, !dbg !1757
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i1 [ %30, %26 ], [ %13, %23 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1693, metadata !DIExpression()), !dbg !1712
  %33 = icmp eq i32 %3, %2, !dbg !1758
  br i1 %33, label %63, label %34, !dbg !1760

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8 %5, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1764
  %35 = load ptr, ptr @stdout, align 8, !dbg !1767, !tbaa !1001
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 5, !dbg !1767
  %37 = load ptr, ptr %36, align 8, !dbg !1767, !tbaa !1636
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 6, !dbg !1767
  %39 = load ptr, ptr %38, align 8, !dbg !1767, !tbaa !1637
  %40 = icmp ult ptr %37, %39, !dbg !1767
  br i1 %40, label %44, label %41, !dbg !1767, !prof !1638

41:                                               ; preds = %34
  %42 = zext i8 %5 to i32, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %42, metadata !1761, metadata !DIExpression()), !dbg !1764
  %43 = tail call i32 @__overflow(ptr noundef nonnull %35, i32 noundef %42) #40, !dbg !1767
  br label %46, !dbg !1767

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1767
  store ptr %45, ptr %36, align 8, !dbg !1767, !tbaa !1636
  store i8 %5, ptr %37, align 1, !dbg !1767, !tbaa !1079
  br label %46, !dbg !1767

46:                                               ; preds = %41, %44
  call void @llvm.dbg.value(metadata i32 %3, metadata !1721, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i1 %4, metadata !1726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1769
  call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1769
  br i1 %4, label %49, label %47, !dbg !1772

47:                                               ; preds = %46
  %48 = zext i32 %3 to i64, !dbg !1773
  br label %58, !dbg !1772

49:                                               ; preds = %46
  %50 = tail call ptr @getgrgid(i32 noundef %3) #40, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %50, metadata !1727, metadata !DIExpression()), !dbg !1769
  %51 = icmp eq ptr %50, null, !dbg !1775
  br i1 %51, label %52, label %55, !dbg !1776

52:                                               ; preds = %49
  %53 = zext i32 %3 to i64, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %53, metadata !1736, metadata !DIExpression()), !dbg !1778
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #40, !dbg !1779
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %54, i64 noundef %53) #40, !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1769
  br label %58, !dbg !1780

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %50, metadata !1727, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1769
  %56 = load ptr, ptr %50, align 8, !dbg !1781, !tbaa !1562
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %56) #40, !dbg !1781
  br label %63, !dbg !1781

58:                                               ; preds = %52, %47
  %59 = phi i64 [ %48, %47 ], [ %53, %52 ], !dbg !1773
  %60 = xor i1 %4, true, !dbg !1773
  call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1769
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %59) #40, !dbg !1773
  %62 = select i1 %60, i1 %32, i1 false, !dbg !1782
  br label %63

63:                                               ; preds = %58, %55, %31
  %64 = phi i1 [ %32, %31 ], [ %62, %58 ], [ %32, %55 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1693, metadata !DIExpression()), !dbg !1712
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !1783
  %65 = icmp eq ptr %14, null, !dbg !1784
  br i1 %65, label %69, label %66, !dbg !1784

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.passwd, ptr %14, i64 0, i32 3, !dbg !1785
  %68 = load i32, ptr %67, align 4, !dbg !1785, !tbaa !1353
  br label %69, !dbg !1784

69:                                               ; preds = %63, %66
  %70 = phi i32 [ %68, %66 ], [ %3, %63 ], !dbg !1784
  %71 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %70, ptr noundef nonnull %7) #40, !dbg !1786
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1707, metadata !DIExpression()), !dbg !1711
  %72 = icmp sgt i32 %71, -1, !dbg !1787
  br i1 %72, label %73, label %79, !dbg !1789

73:                                               ; preds = %69
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1708, metadata !DIExpression()), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1693, metadata !DIExpression()), !dbg !1712
  %74 = icmp eq i32 %71, 0, !dbg !1791
  br i1 %74, label %87, label %75, !dbg !1793

75:                                               ; preds = %73
  %76 = zext i8 %5 to i32
  %77 = xor i1 %4, true
  %78 = zext nneg i32 %71 to i64, !dbg !1791
  br label %90, !dbg !1793

79:                                               ; preds = %69
  %80 = tail call ptr @__errno_location() #43, !dbg !1794
  %81 = load i32, ptr %80, align 4, !dbg !1794, !tbaa !1070
  br i1 %8, label %85, label %82, !dbg !1797

82:                                               ; preds = %79
  %83 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1798
  %84 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !1798
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %83, ptr noundef %84) #40, !dbg !1798
  br label %135, !dbg !1800

85:                                               ; preds = %79
  %86 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.24, i32 noundef 5) #40, !dbg !1801
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %86) #40, !dbg !1801
  br label %135

.loopexit:                                        ; preds = %131
  %.lcssa = phi i1 [ %132, %131 ]
  br label %87, !dbg !1803

87:                                               ; preds = %.loopexit, %73
  %88 = phi i1 [ %64, %73 ], [ %.lcssa, %.loopexit ]
  %89 = load ptr, ptr %7, align 8, !dbg !1803, !tbaa !1001
  call void @free(ptr noundef %89) #40, !dbg !1804
  br label %135, !dbg !1805

90:                                               ; preds = %75, %131
  %91 = phi i64 [ 0, %75 ], [ %133, %131 ]
  %92 = phi i1 [ %64, %75 ], [ %132, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1708, metadata !DIExpression()), !dbg !1790
  %93 = load ptr, ptr %7, align 8, !dbg !1806, !tbaa !1001
  %94 = getelementptr inbounds i32, ptr %93, i64 %91, !dbg !1806
  %95 = load i32, ptr %94, align 4, !dbg !1806, !tbaa !1070
  %96 = icmp eq i32 %95, %2, !dbg !1808
  %97 = icmp eq i32 %95, %3
  %98 = or i1 %96, %97, !dbg !1809
  br i1 %98, label %131, label %99, !dbg !1809

99:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i8 %5, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1810
  %100 = load ptr, ptr @stdout, align 8, !dbg !1813, !tbaa !1001
  %101 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 5, !dbg !1813
  %102 = load ptr, ptr %101, align 8, !dbg !1813, !tbaa !1636
  %103 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 6, !dbg !1813
  %104 = load ptr, ptr %103, align 8, !dbg !1813, !tbaa !1637
  %105 = icmp ult ptr %102, %104, !dbg !1813
  br i1 %105, label %108, label %106, !dbg !1813, !prof !1638

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %76, metadata !1761, metadata !DIExpression()), !dbg !1810
  %107 = call i32 @__overflow(ptr noundef nonnull %100, i32 noundef %76) #40, !dbg !1813
  br label %110, !dbg !1813

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1813
  store ptr %109, ptr %101, align 8, !dbg !1813, !tbaa !1636
  store i8 %5, ptr %102, align 1, !dbg !1813, !tbaa !1079
  br label %110, !dbg !1813

110:                                              ; preds = %106, %108
  %111 = load ptr, ptr %7, align 8, !dbg !1814, !tbaa !1001
  %112 = getelementptr inbounds i32, ptr %111, i64 %91, !dbg !1814
  %113 = load i32, ptr %112, align 4, !dbg !1814, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %113, metadata !1721, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i1 %4, metadata !1726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1816
  call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1816
  br i1 %4, label %116, label %114, !dbg !1818

114:                                              ; preds = %110
  %115 = zext i32 %113 to i64, !dbg !1819
  br label %125, !dbg !1818

116:                                              ; preds = %110
  %117 = call ptr @getgrgid(i32 noundef %113) #40, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %117, metadata !1727, metadata !DIExpression()), !dbg !1816
  %118 = icmp eq ptr %117, null, !dbg !1821
  br i1 %118, label %119, label %122, !dbg !1822

119:                                              ; preds = %116
  %120 = zext i32 %113 to i64, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %120, metadata !1736, metadata !DIExpression()), !dbg !1824
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #40, !dbg !1825
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %121, i64 noundef %120) #40, !dbg !1825
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1816
  br label %125, !dbg !1826

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata ptr %117, metadata !1727, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1816
  %123 = load ptr, ptr %117, align 8, !dbg !1827, !tbaa !1562
  %124 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %123) #40, !dbg !1827
  br label %128, !dbg !1827

125:                                              ; preds = %119, %114
  %126 = phi i64 [ %115, %114 ], [ %120, %119 ], !dbg !1819
  call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1816
  %127 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %126) #40, !dbg !1819
  br label %128

128:                                              ; preds = %122, %125
  %129 = phi i1 [ %77, %125 ], [ true, %122 ]
  %130 = select i1 %129, i1 %92, i1 false, !dbg !1828
  br label %131, !dbg !1828

131:                                              ; preds = %128, %90
  %132 = phi i1 [ %92, %90 ], [ %130, %128 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1693, metadata !DIExpression()), !dbg !1712
  %133 = add nuw nsw i64 %91, 1, !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !1708, metadata !DIExpression()), !dbg !1790
  %134 = icmp eq i64 %133, %78, !dbg !1791
  br i1 %134, label %.loopexit, label %90, !dbg !1793, !llvm.loop !1830

135:                                              ; preds = %82, %85, %87
  %136 = phi i1 [ %88, %87 ], [ false, %85 ], [ false, %82 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1693, metadata !DIExpression()), !dbg !1712
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !1805
  ret i1 %136, !dbg !1832
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @print_group(i32 noundef %0, i1 noundef %1) local_unnamed_addr #10 !dbg !1722 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1721, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1833
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1833
  br i1 %1, label %5, label %3, !dbg !1834

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1835
  br label %14, !dbg !1834

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #40, !dbg !1836
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1727, metadata !DIExpression()), !dbg !1833
  %7 = icmp eq ptr %6, null, !dbg !1837
  br i1 %7, label %8, label %11, !dbg !1838

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1839
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1736, metadata !DIExpression()), !dbg !1840
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #40, !dbg !1841
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #40, !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1833
  br label %14, !dbg !1842

11:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1727, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1833
  %12 = load ptr, ptr %6, align 8, !dbg !1843, !tbaa !1562
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #40, !dbg !1843
  br label %18, !dbg !1843

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1835
  %16 = xor i1 %1, true, !dbg !1835
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1727, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1833
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %15) #40, !dbg !1835
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1844
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1845 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1847, metadata !DIExpression()), !dbg !1848
  store ptr %0, ptr @file_name, align 8, !dbg !1849, !tbaa !1001
  ret void, !dbg !1850
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1851 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1855, metadata !DIExpression()), !dbg !1856
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1857, !tbaa !1308
  ret void, !dbg !1858
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1859 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1864, !tbaa !1001
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1865
  %3 = icmp eq i32 %2, 0, !dbg !1866
  br i1 %3, label %22, label %4, !dbg !1867

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1868, !tbaa !1308, !range !1449, !noundef !1038
  %6 = icmp eq i8 %5, 0, !dbg !1868
  br i1 %6, label %11, label %7, !dbg !1869

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1870
  %9 = load i32, ptr %8, align 4, !dbg !1870, !tbaa !1070
  %10 = icmp eq i32 %9, 32, !dbg !1871
  br i1 %10, label %22, label %11, !dbg !1872

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #40, !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1861, metadata !DIExpression()), !dbg !1874
  %13 = load ptr, ptr @file_name, align 8, !dbg !1875, !tbaa !1001
  %14 = icmp eq ptr %13, null, !dbg !1875
  %15 = tail call ptr @__errno_location() #43, !dbg !1877
  %16 = load i32, ptr %15, align 4, !dbg !1877, !tbaa !1070
  br i1 %14, label %19, label %17, !dbg !1878

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1879
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #40, !dbg !1879
  br label %20, !dbg !1879

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #40, !dbg !1880
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1881, !tbaa !1070
  tail call void @_exit(i32 noundef %21) #42, !dbg !1882
  unreachable, !dbg !1882

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1883, !tbaa !1001
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1885
  %25 = icmp eq i32 %24, 0, !dbg !1886
  br i1 %25, label %28, label %26, !dbg !1887

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1888, !tbaa !1070
  tail call void @_exit(i32 noundef %27) #42, !dbg !1889
  unreachable, !dbg !1889

28:                                               ; preds = %22
  ret void, !dbg !1890
}

; Function Attrs: noreturn
declare !dbg !1891 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1892 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1896, metadata !DIExpression()), !dbg !1900
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1897, metadata !DIExpression()), !dbg !1900
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1898, metadata !DIExpression()), !dbg !1900
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1899, metadata !DIExpression(DW_OP_deref)), !dbg !1900
  tail call fastcc void @flush_stdout(), !dbg !1901
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1902, !tbaa !1001
  %7 = icmp eq ptr %6, null, !dbg !1902
  br i1 %7, label %9, label %8, !dbg !1904

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1905
  br label %13, !dbg !1905

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1906, !tbaa !1001
  %11 = tail call ptr @getprogname() #41, !dbg !1906
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %11) #40, !dbg !1906
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1908, !tbaa.struct !1909
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1908
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1908
  ret void, !dbg !1910
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1911 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1913, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i32 1, metadata !1915, metadata !DIExpression()), !dbg !1918
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1921
  %2 = icmp slt i32 %1, 0, !dbg !1922
  br i1 %2, label %6, label %3, !dbg !1923

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1924, !tbaa !1001
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1924
  br label %6, !dbg !1924

6:                                                ; preds = %3, %0
  ret void, !dbg !1925
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1926 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1932
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1929, metadata !DIExpression()), !dbg !1933
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1930, metadata !DIExpression()), !dbg !1933
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !1933
  %7 = load ptr, ptr @stderr, align 8, !dbg !1934, !tbaa !1001
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1935, !noalias !1979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1983
  call void @llvm.dbg.value(metadata ptr %7, metadata !1975, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %2, metadata !1976, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr poison, metadata !1977, metadata !DIExpression(DW_OP_deref)), !dbg !1984
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1935, !noalias !1979
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1985, !tbaa !1070
  %10 = add i32 %9, 1, !dbg !1985
  store i32 %10, ptr @error_message_count, align 4, !dbg !1985, !tbaa !1070
  %11 = icmp eq i32 %1, 0, !dbg !1986
  br i1 %11, label %21, label %12, !dbg !1988

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1989, metadata !DIExpression(), metadata !1932, metadata ptr %5, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 %1, metadata !1992, metadata !DIExpression()), !dbg !1997
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1999
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %13, metadata !1993, metadata !DIExpression()), !dbg !1997
  %14 = icmp eq ptr %13, null, !dbg !2001
  br i1 %14, label %15, label %17, !dbg !2003

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #40, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %16, metadata !1993, metadata !DIExpression()), !dbg !1997
  br label %17, !dbg !2005

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1997
  call void @llvm.dbg.value(metadata ptr %18, metadata !1993, metadata !DIExpression()), !dbg !1997
  %19 = load ptr, ptr @stderr, align 8, !dbg !2006, !tbaa !1001
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %18) #40, !dbg !2006
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2007
  br label %21, !dbg !2008

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2009, !tbaa !1001
  call void @llvm.dbg.value(metadata i32 10, metadata !2010, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata ptr %22, metadata !2015, metadata !DIExpression()), !dbg !2016
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2018
  %24 = load ptr, ptr %23, align 8, !dbg !2018, !tbaa !1636
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2018
  %26 = load ptr, ptr %25, align 8, !dbg !2018, !tbaa !1637
  %27 = icmp ult ptr %24, %26, !dbg !2018
  br i1 %27, label %30, label %28, !dbg !2018, !prof !1638

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2018
  br label %32, !dbg !2018

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2018
  store ptr %31, ptr %23, align 8, !dbg !2018, !tbaa !1636
  store i8 10, ptr %24, align 1, !dbg !2018, !tbaa !1079
  br label %32, !dbg !2018

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2019, !tbaa !1001
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2019
  %35 = icmp eq i32 %0, 0, !dbg !2020
  br i1 %35, label %37, label %36, !dbg !2022

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2023
  unreachable, !dbg !2023

37:                                               ; preds = %32
  ret void, !dbg !2024
}

declare !dbg !2025 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2028 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2031 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2035 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2043
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2042, metadata !DIExpression(), metadata !2043, metadata ptr %4, metadata !DIExpression()), !dbg !2044
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2040, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2041, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2045
  call void @llvm.va_start(ptr nonnull %4), !dbg !2046
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2047, !tbaa.struct !1909
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !2047
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2047
  call void @llvm.va_end(ptr nonnull %4), !dbg !2048
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2049
  ret void, !dbg !2049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !519 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !535, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !536, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !537, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !538, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !539, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !540, metadata !DIExpression(DW_OP_deref)), !dbg !2050
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2051, !tbaa !1070
  %9 = icmp eq i32 %8, 0, !dbg !2051
  br i1 %9, label %24, label %10, !dbg !2053

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2054, !tbaa !1070
  %12 = icmp eq i32 %11, %3, !dbg !2057
  br i1 %12, label %13, label %23, !dbg !2058

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2059, !tbaa !1001
  %15 = icmp eq ptr %14, %2, !dbg !2060
  br i1 %15, label %37, label %16, !dbg !2061

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2062
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2063
  br i1 %19, label %20, label %23, !dbg !2063

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2064
  %22 = icmp eq i32 %21, 0, !dbg !2065
  br i1 %22, label %37, label %23, !dbg !2066

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2067, !tbaa !1001
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2068, !tbaa !1070
  br label %24, !dbg !2069

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2070
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2071, !tbaa !1001
  %26 = icmp eq ptr %25, null, !dbg !2071
  br i1 %26, label %28, label %27, !dbg !2073

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2074
  br label %32, !dbg !2074

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2075, !tbaa !1001
  %30 = tail call ptr @getprogname() #41, !dbg !2075
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %30) #40, !dbg !2075
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2077, !tbaa !1001
  %34 = icmp eq ptr %2, null, !dbg !2077
  %35 = select i1 %34, ptr @.str.3.52, ptr @.str.2.53, !dbg !2077
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2077
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2078, !tbaa.struct !1909
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2078
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2078
  br label %37, !dbg !2079

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2079
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2080 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2089, metadata !DIExpression(), metadata !2090, metadata ptr %6, metadata !DIExpression()), !dbg !2091
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2084, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2085, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2086, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2087, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2088, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2092
  call void @llvm.va_start(ptr nonnull %6), !dbg !2093
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2094, !tbaa.struct !1909
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !2094
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2094
  call void @llvm.va_end(ptr nonnull %6), !dbg !2095
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2096
  ret void, !dbg !2096
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2097 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2135, metadata !DIExpression()), !dbg !2136
  tail call void @__fpurge(ptr noundef nonnull %0) #40, !dbg !2137
  ret i32 0, !dbg !2138
}

; Function Attrs: nounwind
declare !dbg !2139 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2143 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2146, !tbaa !1001
  ret ptr %1, !dbg !2147
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2148 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2150, metadata !DIExpression()), !dbg !2153
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2154
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2151, metadata !DIExpression()), !dbg !2153
  %3 = icmp eq ptr %2, null, !dbg !2155
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2155
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2155
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2152, metadata !DIExpression()), !dbg !2153
  %6 = ptrtoint ptr %5 to i64, !dbg !2156
  %7 = ptrtoint ptr %0 to i64, !dbg !2156
  %8 = sub i64 %6, %7, !dbg !2156
  %9 = icmp sgt i64 %8, 6, !dbg !2158
  br i1 %9, label %10, label %19, !dbg !2159

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2160
  call void @llvm.dbg.value(metadata ptr %11, metadata !2161, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 7, metadata !2167, metadata !DIExpression()), !dbg !2168
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.90, i64 7), !dbg !2170
  %13 = icmp eq i32 %12, 0, !dbg !2171
  br i1 %13, label %14, label %19, !dbg !2172

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2150, metadata !DIExpression()), !dbg !2153
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.91, i64 noundef 3) #41, !dbg !2173
  %16 = icmp eq i32 %15, 0, !dbg !2176
  %17 = select i1 %16, i64 3, i64 0, !dbg !2177
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2177
  br label %19, !dbg !2177

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2152, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2150, metadata !DIExpression()), !dbg !2153
  store ptr %20, ptr @program_name, align 8, !dbg !2178, !tbaa !1001
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2179, !tbaa !1001
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2180, !tbaa !1001
  ret void, !dbg !2181
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2182 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !577 {
  %3 = alloca i32, align 4, !DIAssignID !2183
  call void @llvm.dbg.assign(metadata i1 undef, metadata !587, metadata !DIExpression(), metadata !2183, metadata ptr %3, metadata !DIExpression()), !dbg !2184
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2185
  call void @llvm.dbg.assign(metadata i1 undef, metadata !592, metadata !DIExpression(), metadata !2185, metadata ptr %4, metadata !DIExpression()), !dbg !2184
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !584, metadata !DIExpression()), !dbg !2184
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !585, metadata !DIExpression()), !dbg !2184
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2186
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !586, metadata !DIExpression()), !dbg !2184
  %6 = icmp eq ptr %5, %0, !dbg !2187
  br i1 %6, label %7, label %14, !dbg !2189

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2191
  call void @llvm.dbg.value(metadata ptr %4, metadata !2192, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata ptr %4, metadata !2201, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 0, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 8, metadata !2208, metadata !DIExpression()), !dbg !2209
  store i64 0, ptr %4, align 8, !dbg !2211
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2212
  %9 = icmp eq i64 %8, 2, !dbg !2214
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2215
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2184
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2216
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2184
  ret ptr %15, !dbg !2216
}

; Function Attrs: nounwind
declare !dbg !2217 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2223 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2228, metadata !DIExpression()), !dbg !2231
  %2 = tail call ptr @__errno_location() #43, !dbg !2232
  %3 = load i32, ptr %2, align 4, !dbg !2232, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2229, metadata !DIExpression()), !dbg !2231
  %4 = icmp eq ptr %0, null, !dbg !2233
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2233
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2234
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2230, metadata !DIExpression()), !dbg !2231
  store i32 %3, ptr %2, align 4, !dbg !2235, !tbaa !1070
  ret ptr %6, !dbg !2236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2237 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2243, metadata !DIExpression()), !dbg !2244
  %2 = icmp eq ptr %0, null, !dbg !2245
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2245
  %4 = load i32, ptr %3, align 8, !dbg !2246, !tbaa !2247
  ret i32 %4, !dbg !2249
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2250 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2256
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2255, metadata !DIExpression()), !dbg !2256
  %3 = icmp eq ptr %0, null, !dbg !2257
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2257
  store i32 %1, ptr %4, align 8, !dbg !2258, !tbaa !2247
  ret void, !dbg !2259
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2260 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2264, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2265, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2266, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2267, metadata !DIExpression()), !dbg !2272
  %4 = icmp eq ptr %0, null, !dbg !2273
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2273
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2274
  %7 = lshr i8 %1, 5, !dbg !2275
  %8 = zext nneg i8 %7 to i64, !dbg !2275
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2276
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2268, metadata !DIExpression()), !dbg !2272
  %10 = and i8 %1, 31, !dbg !2277
  %11 = zext nneg i8 %10 to i32, !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2270, metadata !DIExpression()), !dbg !2272
  %12 = load i32, ptr %9, align 4, !dbg !2278, !tbaa !1070
  %13 = lshr i32 %12, %11, !dbg !2279
  %14 = and i32 %13, 1, !dbg !2280
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2271, metadata !DIExpression()), !dbg !2272
  %15 = xor i32 %13, %2, !dbg !2281
  %16 = and i32 %15, 1, !dbg !2281
  %17 = shl nuw i32 %16, %11, !dbg !2282
  %18 = xor i32 %17, %12, !dbg !2283
  store i32 %18, ptr %9, align 4, !dbg !2283, !tbaa !1070
  ret i32 %14, !dbg !2284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2285 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2289, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2290, metadata !DIExpression()), !dbg !2292
  %3 = icmp eq ptr %0, null, !dbg !2293
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2295
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2289, metadata !DIExpression()), !dbg !2292
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2296
  %6 = load i32, ptr %5, align 4, !dbg !2296, !tbaa !2297
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2291, metadata !DIExpression()), !dbg !2292
  store i32 %1, ptr %5, align 4, !dbg !2298, !tbaa !2297
  ret i32 %6, !dbg !2299
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2300 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2304, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2305, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2306, metadata !DIExpression()), !dbg !2307
  %4 = icmp eq ptr %0, null, !dbg !2308
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2310
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2304, metadata !DIExpression()), !dbg !2307
  store i32 10, ptr %5, align 8, !dbg !2311, !tbaa !2247
  %6 = icmp ne ptr %1, null, !dbg !2312
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2314
  br i1 %8, label %10, label %9, !dbg !2314

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2315
  unreachable, !dbg !2315

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2316
  store ptr %1, ptr %11, align 8, !dbg !2317, !tbaa !2318
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2319
  store ptr %2, ptr %12, align 8, !dbg !2320, !tbaa !2321
  ret void, !dbg !2322
}

; Function Attrs: noreturn nounwind
declare !dbg !2323 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2324 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2328, metadata !DIExpression()), !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2329, metadata !DIExpression()), !dbg !2336
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2330, metadata !DIExpression()), !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2331, metadata !DIExpression()), !dbg !2336
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2332, metadata !DIExpression()), !dbg !2336
  %6 = icmp eq ptr %4, null, !dbg !2337
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2337
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2333, metadata !DIExpression()), !dbg !2336
  %8 = tail call ptr @__errno_location() #43, !dbg !2338
  %9 = load i32, ptr %8, align 4, !dbg !2338, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2334, metadata !DIExpression()), !dbg !2336
  %10 = load i32, ptr %7, align 8, !dbg !2339, !tbaa !2247
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2340
  %12 = load i32, ptr %11, align 4, !dbg !2340, !tbaa !2297
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2341
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2342
  %15 = load ptr, ptr %14, align 8, !dbg !2342, !tbaa !2318
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2343
  %17 = load ptr, ptr %16, align 8, !dbg !2343, !tbaa !2321
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2335, metadata !DIExpression()), !dbg !2336
  store i32 %9, ptr %8, align 4, !dbg !2345, !tbaa !1070
  ret i64 %18, !dbg !2346
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2347 {
  %10 = alloca i32, align 4, !DIAssignID !2415
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2416
  %12 = alloca i32, align 4, !DIAssignID !2417
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2418
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2419
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2393, metadata !DIExpression(), metadata !2419, metadata ptr %14, metadata !DIExpression()), !dbg !2420
  %15 = alloca i32, align 4, !DIAssignID !2421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2396, metadata !DIExpression(), metadata !2421, metadata ptr %15, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2353, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2355, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2356, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2357, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2358, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2359, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2360, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2361, metadata !DIExpression()), !dbg !2423
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2424
  %17 = icmp eq i64 %16, 1, !dbg !2425
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2365, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2366, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2368, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2370, metadata !DIExpression()), !dbg !2423
  %18 = and i32 %5, 2, !dbg !2426
  %19 = icmp ne i32 %18, 0, !dbg !2426
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2426

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2427
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2428
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2429
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2370, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2366, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2365, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2356, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2361, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2360, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2357, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.label(metadata !2371), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2423
  switch i32 %28, label %100 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %101
    i32 0, label %99
    i32 2, label %94
    i32 4, label %93
    i32 3, label %92
    i32 1, label %91
    i32 10, label %70
    i32 8, label %45
    i32 9, label %45
  ], !dbg !2431

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2357, metadata !DIExpression()), !dbg !2423
  br label %101, !dbg !2432

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2357, metadata !DIExpression()), !dbg !2423
  br i1 %36, label %101, label %42, !dbg !2432

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2433
  br i1 %43, label %101, label %44, !dbg !2437

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2433, !tbaa !1079
  br label %101, !dbg !2433

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !693, metadata !DIExpression(), metadata !2417, metadata ptr %12, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.assign(metadata i1 undef, metadata !694, metadata !DIExpression(), metadata !2418, metadata ptr %13, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata ptr @.str.11.104, metadata !690, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 %28, metadata !691, metadata !DIExpression()), !dbg !2438
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.11.104, i32 noundef 5) #40, !dbg !2442
  call void @llvm.dbg.value(metadata ptr %46, metadata !692, metadata !DIExpression()), !dbg !2438
  %47 = icmp eq ptr %46, @.str.11.104, !dbg !2443
  br i1 %47, label %48, label %57, !dbg !2445

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %13, metadata !2448, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata ptr %13, metadata !2456, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 8, metadata !2460, metadata !DIExpression()), !dbg !2461
  store i64 0, ptr %13, align 8, !dbg !2463
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2464
  %50 = icmp eq i64 %49, 3, !dbg !2466
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2467
  %54 = icmp eq i32 %28, 9, !dbg !2467
  %55 = select i1 %54, ptr @.str.10.106, ptr @.str.12.107, !dbg !2467
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2468
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2468
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2360, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !693, metadata !DIExpression(), metadata !2415, metadata ptr %10, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !694, metadata !DIExpression(), metadata !2416, metadata ptr %11, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata ptr @.str.12.107, metadata !690, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %28, metadata !691, metadata !DIExpression()), !dbg !2469
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.12.107, i32 noundef 5) #40, !dbg !2471
  call void @llvm.dbg.value(metadata ptr %59, metadata !692, metadata !DIExpression()), !dbg !2469
  %60 = icmp eq ptr %59, @.str.12.107, !dbg !2472
  br i1 %60, label %61, label %70, !dbg !2473

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2474
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2475
  call void @llvm.dbg.value(metadata ptr %11, metadata !2448, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %11, metadata !2456, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 8, metadata !2460, metadata !DIExpression()), !dbg !2478
  store i64 0, ptr %11, align 8, !dbg !2480
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2481
  %63 = icmp eq i64 %62, 3, !dbg !2482
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2483
  %67 = icmp eq i32 %28, 9, !dbg !2483
  %68 = select i1 %67, ptr @.str.10.106, ptr @.str.12.107, !dbg !2483
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2484
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2484
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2361, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2360, metadata !DIExpression()), !dbg !2423
  br i1 %36, label %88, label %73, !dbg !2485

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2373, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2363, metadata !DIExpression()), !dbg !2423
  %74 = load i8, ptr %71, align 1, !dbg !2487, !tbaa !1079
  %75 = icmp eq i8 %74, 0, !dbg !2489
  br i1 %75, label %88, label %.preheader11, !dbg !2489

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2489

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2373, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2363, metadata !DIExpression()), !dbg !2423
  %80 = icmp ult i64 %79, %39, !dbg !2490
  br i1 %80, label %81, label %83, !dbg !2493

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2490
  store i8 %77, ptr %82, align 1, !dbg !2490, !tbaa !1079
  br label %83, !dbg !2490

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2363, metadata !DIExpression()), !dbg !2423
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2373, metadata !DIExpression()), !dbg !2486
  %86 = load i8, ptr %85, align 1, !dbg !2487, !tbaa !1079
  %87 = icmp eq i8 %86, 0, !dbg !2489
  br i1 %87, label %.loopexit12, label %76, !dbg !2489, !llvm.loop !2495

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2493
  br label %88, !dbg !2497

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2367, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2365, metadata !DIExpression()), !dbg !2423
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2366, metadata !DIExpression()), !dbg !2423
  br label %101, !dbg !2499

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2368, metadata !DIExpression()), !dbg !2423
  br label %101, !dbg !2500

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2357, metadata !DIExpression()), !dbg !2423
  br label %101, !dbg !2501

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2423
  br i1 %36, label %101, label %95, !dbg !2502

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2357, metadata !DIExpression()), !dbg !2423
  br i1 %36, label %101, label %95, !dbg !2501

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2503
  br i1 %97, label %101, label %98, !dbg !2507

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2503, !tbaa !1079
  br label %101, !dbg !2503

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2368, metadata !DIExpression()), !dbg !2423
  br label %101, !dbg !2508

100:                                              ; preds = %27
  call void @abort() #42, !dbg !2509
  unreachable, !dbg !2509

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2498
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.106, %42 ], [ @.str.10.106, %44 ], [ @.str.10.106, %41 ], [ %33, %27 ], [ @.str.12.107, %95 ], [ @.str.12.107, %98 ], [ @.str.12.107, %94 ], [ @.str.10.106, %40 ], [ @.str.12.107, %91 ], [ @.str.12.107, %92 ], [ @.str.12.107, %93 ], !dbg !2423
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2423
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2366, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2365, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2361, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2360, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2357, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2378, metadata !DIExpression()), !dbg !2510
  %110 = icmp ne i32 %102, 2
  %111 = and i1 %110, %108
  %112 = icmp ne i64 %107, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ugt i64 %107, 1
  %115 = icmp eq i32 %102, 2
  %116 = and i1 %108, %109
  %117 = select i1 %116, i1 %112, i1 false
  %118 = and i1 %115, %109
  %119 = xor i1 %108, true
  %120 = and i1 %25, %109
  br label %121, !dbg !2511

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2498
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2427
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2512
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2378, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2370, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2356, metadata !DIExpression()), !dbg !2423
  %130 = icmp eq i64 %122, -1, !dbg !2513
  br i1 %130, label %131, label %135, !dbg !2514

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2515
  %133 = load i8, ptr %132, align 1, !dbg !2515, !tbaa !1079
  %134 = icmp eq i8 %133, 0, !dbg !2516
  br i1 %134, label %573, label %137, !dbg !2517

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2518
  br i1 %136, label %573, label %137, !dbg !2517

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2383, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2384, metadata !DIExpression()), !dbg !2519
  br i1 %113, label %138, label %151, !dbg !2520

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2522
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2523
  br i1 %140, label %141, label %143, !dbg !2523

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2356, metadata !DIExpression()), !dbg !2423
  br label %143, !dbg !2525

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2525
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2356, metadata !DIExpression()), !dbg !2423
  %145 = icmp ugt i64 %139, %144, !dbg !2526
  br i1 %145, label %151, label %146, !dbg !2527

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2528
  call void @llvm.dbg.value(metadata ptr %147, metadata !2529, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata ptr %106, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %107, metadata !2533, metadata !DIExpression()), !dbg !2534
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2536
  %149 = icmp eq i32 %148, 0, !dbg !2537
  %150 = and i1 %149, %109, !dbg !2538
  br i1 %150, label %.loopexit7, label %151, !dbg !2538

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2380, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2356, metadata !DIExpression()), !dbg !2423
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2539
  %155 = load i8, ptr %154, align 1, !dbg !2539, !tbaa !1079
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2385, metadata !DIExpression()), !dbg !2519
  switch i8 %155, label %284 [
    i8 0, label %156
    i8 63, label %204
    i8 7, label %249
    i8 8, label %239
    i8 12, label %240
    i8 10, label %247
    i8 13, label %241
    i8 9, label %242
    i8 11, label %243
    i8 92, label %244
    i8 123, label %251
    i8 125, label %251
    i8 35, label %255
    i8 126, label %255
    i8 32, label %257
    i8 33, label %258
    i8 34, label %258
    i8 36, label %258
    i8 38, label %258
    i8 40, label %258
    i8 41, label %258
    i8 42, label %258
    i8 59, label %258
    i8 60, label %258
    i8 61, label %258
    i8 62, label %258
    i8 91, label %258
    i8 94, label %258
    i8 96, label %258
    i8 124, label %258
    i8 39, label %261
    i8 37, label %433
    i8 43, label %433
    i8 44, label %433
    i8 45, label %433
    i8 46, label %433
    i8 47, label %433
    i8 48, label %433
    i8 49, label %433
    i8 50, label %433
    i8 51, label %433
    i8 52, label %433
    i8 53, label %433
    i8 54, label %433
    i8 55, label %433
    i8 56, label %433
    i8 57, label %433
    i8 58, label %433
    i8 65, label %433
    i8 66, label %433
    i8 67, label %433
    i8 68, label %433
    i8 69, label %433
    i8 70, label %433
    i8 71, label %433
    i8 72, label %433
    i8 73, label %433
    i8 74, label %433
    i8 75, label %433
    i8 76, label %433
    i8 77, label %433
    i8 78, label %433
    i8 79, label %433
    i8 80, label %433
    i8 81, label %433
    i8 82, label %433
    i8 83, label %433
    i8 84, label %433
    i8 85, label %433
    i8 86, label %433
    i8 87, label %433
    i8 88, label %433
    i8 89, label %433
    i8 90, label %433
    i8 93, label %433
    i8 95, label %433
    i8 97, label %433
    i8 98, label %433
    i8 99, label %433
    i8 100, label %433
    i8 101, label %433
    i8 102, label %433
    i8 103, label %433
    i8 104, label %433
    i8 105, label %433
    i8 106, label %433
    i8 107, label %433
    i8 108, label %433
    i8 109, label %433
    i8 110, label %433
    i8 111, label %433
    i8 112, label %433
    i8 113, label %433
    i8 114, label %433
    i8 115, label %433
    i8 116, label %433
    i8 117, label %433
    i8 118, label %433
    i8 119, label %433
    i8 120, label %433
    i8 121, label %433
    i8 122, label %433
  ], !dbg !2540

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2541

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2542

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2383, metadata !DIExpression()), !dbg !2519
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2546
  br i1 %159, label %176, label %160, !dbg !2546

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2548
  br i1 %161, label %162, label %164, !dbg !2552

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2548
  store i8 39, ptr %163, align 1, !dbg !2548, !tbaa !1079
  br label %164, !dbg !2548

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2552
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2363, metadata !DIExpression()), !dbg !2423
  %166 = icmp ult i64 %165, %129, !dbg !2553
  br i1 %166, label %167, label %169, !dbg !2556

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2553
  store i8 36, ptr %168, align 1, !dbg !2553, !tbaa !1079
  br label %169, !dbg !2553

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2556
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2363, metadata !DIExpression()), !dbg !2423
  %171 = icmp ult i64 %170, %129, !dbg !2557
  br i1 %171, label %172, label %174, !dbg !2560

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2557
  store i8 39, ptr %173, align 1, !dbg !2557, !tbaa !1079
  br label %174, !dbg !2557

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2560
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2372, metadata !DIExpression()), !dbg !2423
  br label %176, !dbg !2561

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2423
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2363, metadata !DIExpression()), !dbg !2423
  %179 = icmp ult i64 %177, %129, !dbg !2562
  br i1 %179, label %180, label %182, !dbg !2565

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2562
  store i8 92, ptr %181, align 1, !dbg !2562, !tbaa !1079
  br label %182, !dbg !2562

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2565
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2363, metadata !DIExpression()), !dbg !2423
  br i1 %110, label %184, label %476, !dbg !2566

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2568
  %186 = icmp ult i64 %185, %152, !dbg !2569
  br i1 %186, label %187, label %433, !dbg !2570

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2571
  %189 = load i8, ptr %188, align 1, !dbg !2571, !tbaa !1079
  %190 = add i8 %189, -48, !dbg !2572
  %191 = icmp ult i8 %190, 10, !dbg !2572
  br i1 %191, label %192, label %433, !dbg !2572

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2573
  br i1 %193, label %194, label %196, !dbg !2577

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2573
  store i8 48, ptr %195, align 1, !dbg !2573, !tbaa !1079
  br label %196, !dbg !2573

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2363, metadata !DIExpression()), !dbg !2423
  %198 = icmp ult i64 %197, %129, !dbg !2578
  br i1 %198, label %199, label %201, !dbg !2581

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2578
  store i8 48, ptr %200, align 1, !dbg !2578, !tbaa !1079
  br label %201, !dbg !2578

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2363, metadata !DIExpression()), !dbg !2423
  br label %433, !dbg !2582

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2583

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2584

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2585

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2587

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2589
  %209 = icmp ult i64 %208, %152, !dbg !2590
  br i1 %209, label %210, label %433, !dbg !2591

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2592
  %212 = load i8, ptr %211, align 1, !dbg !2592, !tbaa !1079
  %213 = icmp eq i8 %212, 63, !dbg !2593
  br i1 %213, label %214, label %433, !dbg !2594

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2595
  %216 = load i8, ptr %215, align 1, !dbg !2595, !tbaa !1079
  switch i8 %216, label %433 [
    i8 33, label %217
    i8 39, label %217
    i8 40, label %217
    i8 41, label %217
    i8 45, label %217
    i8 47, label %217
    i8 60, label %217
    i8 61, label %217
    i8 62, label %217
  ], !dbg !2596

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2597

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2385, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2378, metadata !DIExpression()), !dbg !2510
  %219 = icmp ult i64 %123, %129, !dbg !2599
  br i1 %219, label %220, label %222, !dbg !2602

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2599
  store i8 63, ptr %221, align 1, !dbg !2599, !tbaa !1079
  br label %222, !dbg !2599

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2363, metadata !DIExpression()), !dbg !2423
  %224 = icmp ult i64 %223, %129, !dbg !2603
  br i1 %224, label %225, label %227, !dbg !2606

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2603
  store i8 34, ptr %226, align 1, !dbg !2603, !tbaa !1079
  br label %227, !dbg !2603

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2606
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2363, metadata !DIExpression()), !dbg !2423
  %229 = icmp ult i64 %228, %129, !dbg !2607
  br i1 %229, label %230, label %232, !dbg !2610

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2607
  store i8 34, ptr %231, align 1, !dbg !2607, !tbaa !1079
  br label %232, !dbg !2607

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2363, metadata !DIExpression()), !dbg !2423
  %234 = icmp ult i64 %233, %129, !dbg !2611
  br i1 %234, label %235, label %237, !dbg !2614

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2611
  store i8 63, ptr %236, align 1, !dbg !2611, !tbaa !1079
  br label %237, !dbg !2611

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2363, metadata !DIExpression()), !dbg !2423
  br label %433, !dbg !2615

239:                                              ; preds = %151
  br label %249, !dbg !2616

240:                                              ; preds = %151
  br label %249, !dbg !2617

241:                                              ; preds = %151
  br label %247, !dbg !2618

242:                                              ; preds = %151
  br label %247, !dbg !2619

243:                                              ; preds = %151
  br label %249, !dbg !2620

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2621

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2622

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2625

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2627
  call void @llvm.dbg.label(metadata !2386), !dbg !2628
  br i1 %118, label %.loopexit8, label %249, !dbg !2629

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2627
  call void @llvm.dbg.label(metadata !2389), !dbg !2631
  br i1 %108, label %487, label %444, !dbg !2632

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2633

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2634, !tbaa !1079
  %254 = icmp eq i8 %253, 0, !dbg !2636
  br i1 %254, label %255, label %433, !dbg !2637

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2638
  br i1 %256, label %257, label %433, !dbg !2640

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2384, metadata !DIExpression()), !dbg !2519
  br label %258, !dbg !2641

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2384, metadata !DIExpression()), !dbg !2519
  br i1 %115, label %260, label %433, !dbg !2642

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2644

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2384, metadata !DIExpression()), !dbg !2519
  br i1 %115, label %262, label %433, !dbg !2645

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2646

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2649
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2651
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2651
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2364, metadata !DIExpression()), !dbg !2423
  %269 = icmp ult i64 %123, %268, !dbg !2652
  br i1 %269, label %270, label %272, !dbg !2655

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2652
  store i8 39, ptr %271, align 1, !dbg !2652, !tbaa !1079
  br label %272, !dbg !2652

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2363, metadata !DIExpression()), !dbg !2423
  %274 = icmp ult i64 %273, %268, !dbg !2656
  br i1 %274, label %275, label %277, !dbg !2659

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2656
  store i8 92, ptr %276, align 1, !dbg !2656, !tbaa !1079
  br label %277, !dbg !2656

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2363, metadata !DIExpression()), !dbg !2423
  %279 = icmp ult i64 %278, %268, !dbg !2660
  br i1 %279, label %280, label %282, !dbg !2663

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2660
  store i8 39, ptr %281, align 1, !dbg !2660, !tbaa !1079
  br label %282, !dbg !2660

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2423
  br label %433, !dbg !2664

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2665

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2390, metadata !DIExpression()), !dbg !2666
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !2667
  %287 = load ptr, ptr %286, align 8, !dbg !2667, !tbaa !1001
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2667
  %290 = load i16, ptr %289, align 2, !dbg !2667, !tbaa !1111
  %291 = and i16 %290, 16384, !dbg !2667
  %292 = icmp ne i16 %291, 0, !dbg !2669
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2666
  br label %334, !dbg !2670

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2671
  call void @llvm.dbg.value(metadata ptr %14, metadata !2448, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %14, metadata !2456, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 8, metadata !2460, metadata !DIExpression()), !dbg !2674
  store i64 0, ptr %14, align 8, !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2390, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2392, metadata !DIExpression()), !dbg !2666
  %294 = icmp eq i64 %152, -1, !dbg !2677
  br i1 %294, label %295, label %297, !dbg !2679

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2680
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2356, metadata !DIExpression()), !dbg !2423
  br label %297, !dbg !2681

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2356, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2682
  %299 = sub i64 %298, %128, !dbg !2683
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !2684
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2400, metadata !DIExpression()), !dbg !2422
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2685

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2390, metadata !DIExpression()), !dbg !2666
  %302 = icmp ult i64 %128, %298, !dbg !2686
  br i1 %302, label %.preheader5, label %329, !dbg !2688

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2689

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2666
  br label %329, !dbg !2690

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2390, metadata !DIExpression()), !dbg !2666
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2692
  %308 = load i8, ptr %307, align 1, !dbg !2692, !tbaa !1079
  %309 = icmp eq i8 %308, 0, !dbg !2688
  br i1 %309, label %.loopexit6, label %310, !dbg !2689

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2390, metadata !DIExpression()), !dbg !2666
  %312 = add i64 %311, %128, !dbg !2694
  %313 = icmp eq i64 %311, %299, !dbg !2686
  br i1 %313, label %.loopexit6, label %304, !dbg !2688, !llvm.loop !2695

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2401, metadata !DIExpression()), !dbg !2696
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2697
  %317 = and i1 %316, %109, !dbg !2697
  br i1 %317, label %.preheader3, label %325, !dbg !2697

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2698

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2401, metadata !DIExpression()), !dbg !2696
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2699
  %321 = load i8, ptr %320, align 1, !dbg !2699, !tbaa !1079
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2701

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2401, metadata !DIExpression()), !dbg !2696
  %324 = icmp eq i64 %323, %300, !dbg !2703
  br i1 %324, label %.loopexit4, label %318, !dbg !2698, !llvm.loop !2704

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2706

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2706, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %326, metadata !2708, metadata !DIExpression()), !dbg !2716
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !2718
  %328 = icmp ne i32 %327, 0, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2392, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2390, metadata !DIExpression()), !dbg !2666
  br label %329, !dbg !2720

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2721

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2392, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2390, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2721
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2722
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2392, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2390, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2721
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2722
  call void @llvm.dbg.label(metadata !2414), !dbg !2723
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2724
  br label %624, !dbg !2724

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2519
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2726
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2392, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2390, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2356, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2384, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2519
  %338 = icmp ult i64 %336, 2, !dbg !2727
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2728
  br i1 %340, label %433, label %341, !dbg !2728

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2409, metadata !DIExpression()), !dbg !2730
  br label %343, !dbg !2731

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2423
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2510
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2385, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2383, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2380, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2378, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2363, metadata !DIExpression()), !dbg !2423
  br i1 %339, label %394, label %350, !dbg !2732

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2737

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2383, metadata !DIExpression()), !dbg !2519
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2740
  br i1 %352, label %369, label %353, !dbg !2740

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2742
  br i1 %354, label %355, label %357, !dbg !2746

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2742
  store i8 39, ptr %356, align 1, !dbg !2742, !tbaa !1079
  br label %357, !dbg !2742

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2363, metadata !DIExpression()), !dbg !2423
  %359 = icmp ult i64 %358, %129, !dbg !2747
  br i1 %359, label %360, label %362, !dbg !2750

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2747
  store i8 36, ptr %361, align 1, !dbg !2747, !tbaa !1079
  br label %362, !dbg !2747

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2750
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2363, metadata !DIExpression()), !dbg !2423
  %364 = icmp ult i64 %363, %129, !dbg !2751
  br i1 %364, label %365, label %367, !dbg !2754

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2751
  store i8 39, ptr %366, align 1, !dbg !2751, !tbaa !1079
  br label %367, !dbg !2751

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2372, metadata !DIExpression()), !dbg !2423
  br label %369, !dbg !2755

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2423
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2363, metadata !DIExpression()), !dbg !2423
  %372 = icmp ult i64 %370, %129, !dbg !2756
  br i1 %372, label %373, label %375, !dbg !2759

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2756
  store i8 92, ptr %374, align 1, !dbg !2756, !tbaa !1079
  br label %375, !dbg !2756

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2363, metadata !DIExpression()), !dbg !2423
  %377 = icmp ult i64 %376, %129, !dbg !2760
  br i1 %377, label %378, label %382, !dbg !2763

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2760
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2760
  store i8 %380, ptr %381, align 1, !dbg !2760, !tbaa !1079
  br label %382, !dbg !2760

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2363, metadata !DIExpression()), !dbg !2423
  %384 = icmp ult i64 %383, %129, !dbg !2764
  br i1 %384, label %385, label %390, !dbg !2767

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2764
  %388 = or disjoint i8 %387, 48, !dbg !2764
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2764
  store i8 %388, ptr %389, align 1, !dbg !2764, !tbaa !1079
  br label %390, !dbg !2764

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2363, metadata !DIExpression()), !dbg !2423
  %392 = and i8 %349, 7, !dbg !2768
  %393 = or disjoint i8 %392, 48, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2385, metadata !DIExpression()), !dbg !2519
  br label %401, !dbg !2770

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2771

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2772
  br i1 %396, label %397, label %399, !dbg !2777

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2772
  store i8 92, ptr %398, align 1, !dbg !2772, !tbaa !1079
  br label %399, !dbg !2772

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2519
  br label %401, !dbg !2778

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2423
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2385, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2383, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2380, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2363, metadata !DIExpression()), !dbg !2423
  %407 = add i64 %346, 1, !dbg !2779
  %408 = icmp ugt i64 %342, %407, !dbg !2781
  br i1 %408, label %409, label %.loopexit2, !dbg !2782

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2783
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2783
  br i1 %411, label %423, label %412, !dbg !2783

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2786
  br i1 %413, label %414, label %416, !dbg !2790

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2786
  store i8 39, ptr %415, align 1, !dbg !2786, !tbaa !1079
  br label %416, !dbg !2786

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2363, metadata !DIExpression()), !dbg !2423
  %418 = icmp ult i64 %417, %129, !dbg !2791
  br i1 %418, label %419, label %421, !dbg !2794

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2791
  store i8 39, ptr %420, align 1, !dbg !2791, !tbaa !1079
  br label %421, !dbg !2791

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2423
  br label %423, !dbg !2795

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2796
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2363, metadata !DIExpression()), !dbg !2423
  %426 = icmp ult i64 %424, %129, !dbg !2797
  br i1 %426, label %427, label %429, !dbg !2800

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2797
  store i8 %406, ptr %428, align 1, !dbg !2797, !tbaa !1079
  br label %429, !dbg !2797

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2378, metadata !DIExpression()), !dbg !2510
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2801
  %432 = load i8, ptr %431, align 1, !dbg !2801, !tbaa !1079
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2385, metadata !DIExpression()), !dbg !2519
  br label %343, !dbg !2802, !llvm.loop !2803

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2806
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2423
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2427
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2510
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2519
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2385, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2384, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2383, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2380, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2378, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2356, metadata !DIExpression()), !dbg !2423
  br i1 %111, label %455, label %444, !dbg !2807

444:                                              ; preds = %203, %249, %433
  %445 = phi i64 [ %443, %433 ], [ %129, %249 ], [ %129, %203 ]
  %446 = phi i8 [ %442, %433 ], [ %155, %249 ], [ 0, %203 ]
  %447 = phi i1 [ %441, %433 ], [ false, %249 ], [ false, %203 ]
  %448 = phi i1 [ %440, %433 ], [ false, %249 ], [ false, %203 ]
  %449 = phi i64 [ %439, %433 ], [ %128, %249 ], [ %128, %203 ]
  %450 = phi i1 [ %438, %433 ], [ %127, %249 ], [ %127, %203 ]
  %451 = phi i1 [ %437, %433 ], [ %125, %249 ], [ %125, %203 ]
  %452 = phi i64 [ %436, %433 ], [ %124, %249 ], [ %124, %203 ]
  %453 = phi i64 [ %435, %433 ], [ %123, %249 ], [ %123, %203 ]
  %454 = phi i64 [ %434, %433 ], [ %152, %249 ], [ %152, %203 ]
  br i1 %120, label %456, label %476, !dbg !2809

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2810

456:                                              ; preds = %444, %455
  %457 = phi i64 [ %445, %444 ], [ %443, %455 ]
  %458 = phi i8 [ %446, %444 ], [ %442, %455 ]
  %459 = phi i1 [ %447, %444 ], [ %441, %455 ]
  %460 = phi i1 [ %448, %444 ], [ %440, %455 ]
  %461 = phi i64 [ %449, %444 ], [ %439, %455 ]
  %462 = phi i1 [ %450, %444 ], [ %438, %455 ]
  %463 = phi i1 [ %451, %444 ], [ %437, %455 ]
  %464 = phi i64 [ %452, %444 ], [ %436, %455 ]
  %465 = phi i64 [ %453, %444 ], [ %435, %455 ]
  %466 = phi i64 [ %454, %444 ], [ %434, %455 ]
  %467 = lshr i8 %458, 5, !dbg !2811
  %468 = zext nneg i8 %467 to i64, !dbg !2811
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2812
  %470 = load i32, ptr %469, align 4, !dbg !2812, !tbaa !1070
  %471 = and i8 %458, 31, !dbg !2813
  %472 = zext nneg i8 %471 to i32, !dbg !2813
  %473 = shl nuw i32 1, %472, !dbg !2814
  %474 = and i32 %470, %473, !dbg !2814
  %475 = icmp eq i32 %474, 0, !dbg !2814
  br i1 %475, label %476, label %487, !dbg !2815

476:                                              ; preds = %182, %456, %455, %444
  %477 = phi i64 [ %457, %456 ], [ %443, %455 ], [ %445, %444 ], [ %129, %182 ]
  %478 = phi i8 [ %458, %456 ], [ %442, %455 ], [ %446, %444 ], [ 48, %182 ]
  %479 = phi i1 [ %459, %456 ], [ %441, %455 ], [ %447, %444 ], [ false, %182 ]
  %480 = phi i1 [ %460, %456 ], [ %440, %455 ], [ %448, %444 ], [ true, %182 ]
  %481 = phi i64 [ %461, %456 ], [ %439, %455 ], [ %449, %444 ], [ %128, %182 ]
  %482 = phi i1 [ %462, %456 ], [ %438, %455 ], [ %450, %444 ], [ %178, %182 ]
  %483 = phi i1 [ %463, %456 ], [ %437, %455 ], [ %451, %444 ], [ %125, %182 ]
  %484 = phi i64 [ %464, %456 ], [ %436, %455 ], [ %452, %444 ], [ %124, %182 ]
  %485 = phi i64 [ %465, %456 ], [ %435, %455 ], [ %453, %444 ], [ %183, %182 ]
  %486 = phi i64 [ %466, %456 ], [ %434, %455 ], [ %454, %444 ], [ %152, %182 ]
  br i1 %153, label %487, label %523, !dbg !2816

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2806
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2423
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2427
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2817
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2519
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2385, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2384, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2378, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2356, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.label(metadata !2412), !dbg !2818
  br i1 %109, label %.loopexit8, label %497, !dbg !2819

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2383, metadata !DIExpression()), !dbg !2519
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2821
  br i1 %498, label %515, label %499, !dbg !2821

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2823
  br i1 %500, label %501, label %503, !dbg !2827

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2823
  store i8 39, ptr %502, align 1, !dbg !2823, !tbaa !1079
  br label %503, !dbg !2823

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2363, metadata !DIExpression()), !dbg !2423
  %505 = icmp ult i64 %504, %496, !dbg !2828
  br i1 %505, label %506, label %508, !dbg !2831

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2828
  store i8 36, ptr %507, align 1, !dbg !2828, !tbaa !1079
  br label %508, !dbg !2828

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2363, metadata !DIExpression()), !dbg !2423
  %510 = icmp ult i64 %509, %496, !dbg !2832
  br i1 %510, label %511, label %513, !dbg !2835

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2832
  store i8 39, ptr %512, align 1, !dbg !2832, !tbaa !1079
  br label %513, !dbg !2832

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2835
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2372, metadata !DIExpression()), !dbg !2423
  br label %515, !dbg !2836

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2519
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2363, metadata !DIExpression()), !dbg !2423
  %518 = icmp ult i64 %516, %496, !dbg !2837
  br i1 %518, label %519, label %521, !dbg !2840

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2837
  store i8 92, ptr %520, align 1, !dbg !2837, !tbaa !1079
  br label %521, !dbg !2837

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2385, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2384, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2383, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2378, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2356, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.label(metadata !2413), !dbg !2841
  br label %547, !dbg !2842

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2423
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2519
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2510
  br label %523, !dbg !2842

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2806
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2423
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2427
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2817
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2845
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2385, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2384, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2383, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2378, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2356, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.label(metadata !2413), !dbg !2841
  %534 = xor i1 %528, true, !dbg !2842
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2842
  br i1 %535, label %547, label %536, !dbg !2842

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2846
  br i1 %537, label %538, label %540, !dbg !2850

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2846
  store i8 39, ptr %539, align 1, !dbg !2846, !tbaa !1079
  br label %540, !dbg !2846

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2850
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2363, metadata !DIExpression()), !dbg !2423
  %542 = icmp ult i64 %541, %533, !dbg !2851
  br i1 %542, label %543, label %545, !dbg !2854

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2851
  store i8 39, ptr %544, align 1, !dbg !2851, !tbaa !1079
  br label %545, !dbg !2851

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2423
  br label %547, !dbg !2855

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2519
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2363, metadata !DIExpression()), !dbg !2423
  %557 = icmp ult i64 %555, %548, !dbg !2856
  br i1 %557, label %558, label %560, !dbg !2859

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2856
  store i8 %549, ptr %559, align 1, !dbg !2856, !tbaa !1079
  br label %560, !dbg !2856

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2363, metadata !DIExpression()), !dbg !2423
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2860
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2370, metadata !DIExpression()), !dbg !2423
  br label %563, !dbg !2861

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2806
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2423
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2427
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2817
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2378, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2372, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2370, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2356, metadata !DIExpression()), !dbg !2423
  %572 = add i64 %570, 1, !dbg !2862
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2378, metadata !DIExpression()), !dbg !2510
  br label %121, !dbg !2863, !llvm.loop !2864

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2498
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2427
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2354, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2370, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2364, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2363, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2356, metadata !DIExpression()), !dbg !2423
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2866
  %575 = xor i1 %109, true, !dbg !2868
  %576 = or i1 %574, %575, !dbg !2868
  %577 = or i1 %576, %110, !dbg !2868
  br i1 %577, label %578, label %.loopexit13, !dbg !2868

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2869
  %580 = xor i1 %.lcssa38, true, !dbg !2869
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2869
  br i1 %581, label %589, label %582, !dbg !2869

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2871

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2427
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2873
  br label %638, !dbg !2875

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2876
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2878
  br i1 %588, label %27, label %589, !dbg !2878

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2423
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2498
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2879
  %592 = or i1 %591, %590, !dbg !2881
  br i1 %592, label %608, label %593, !dbg !2881

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2365, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2363, metadata !DIExpression()), !dbg !2423
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2882, !tbaa !1079
  %595 = icmp eq i8 %594, 0, !dbg !2885
  br i1 %595, label %608, label %.preheader, !dbg !2885

.preheader:                                       ; preds = %593
  br label %596, !dbg !2885

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2365, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2363, metadata !DIExpression()), !dbg !2423
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2886
  br i1 %600, label %601, label %603, !dbg !2889

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2886
  store i8 %597, ptr %602, align 1, !dbg !2886, !tbaa !1079
  br label %603, !dbg !2886

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2363, metadata !DIExpression()), !dbg !2423
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2890
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2365, metadata !DIExpression()), !dbg !2423
  %606 = load i8, ptr %605, align 1, !dbg !2882, !tbaa !1079
  %607 = icmp eq i8 %606, 0, !dbg !2885
  br i1 %607, label %.loopexit, label %596, !dbg !2885, !llvm.loop !2891

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2889
  br label %608, !dbg !2893

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2363, metadata !DIExpression()), !dbg !2423
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2893
  br i1 %610, label %611, label %638, !dbg !2895

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2896
  store i8 0, ptr %612, align 1, !dbg !2897, !tbaa !1079
  br label %638, !dbg !2896

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2414), !dbg !2723
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2898
  br i1 %614, label %624, label %630, !dbg !2724

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2519
  br label %615, !dbg !2898

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2898

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2898

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2414), !dbg !2723
  %622 = icmp eq i32 %616, 2, !dbg !2898
  %623 = select i1 %619, i32 4, i32 2, !dbg !2724
  br i1 %622, label %624, label %630, !dbg !2724

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2724

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2525
  br label %630, !dbg !2899

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2357, metadata !DIExpression()), !dbg !2423
  %636 = and i32 %5, -3, !dbg !2899
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2900
  br label %638, !dbg !2901

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2902
}

; Function Attrs: nounwind
declare !dbg !2903 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2906 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2909 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2911 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata ptr %0, metadata !2919, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr null, metadata !2925, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %2, metadata !2926, metadata !DIExpression()), !dbg !2932
  %4 = icmp eq ptr %2, null, !dbg !2934
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %5, metadata !2927, metadata !DIExpression()), !dbg !2932
  %6 = tail call ptr @__errno_location() #43, !dbg !2935
  %7 = load i32, ptr %6, align 4, !dbg !2935, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %7, metadata !2928, metadata !DIExpression()), !dbg !2932
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2936
  %9 = load i32, ptr %8, align 4, !dbg !2936, !tbaa !2297
  %10 = or i32 %9, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %10, metadata !2929, metadata !DIExpression()), !dbg !2932
  %11 = load i32, ptr %5, align 8, !dbg !2938, !tbaa !2247
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2939
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2940
  %14 = load ptr, ptr %13, align 8, !dbg !2940, !tbaa !2318
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2941
  %16 = load ptr, ptr %15, align 8, !dbg !2941, !tbaa !2321
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2942
  %18 = add i64 %17, 1, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %18, metadata !2930, metadata !DIExpression()), !dbg !2932
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %19, metadata !2931, metadata !DIExpression()), !dbg !2932
  %20 = load i32, ptr %5, align 8, !dbg !2945, !tbaa !2247
  %21 = load ptr, ptr %13, align 8, !dbg !2946, !tbaa !2318
  %22 = load ptr, ptr %15, align 8, !dbg !2947, !tbaa !2321
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2948
  store i32 %7, ptr %6, align 4, !dbg !2949, !tbaa !1070
  ret ptr %19, !dbg !2950
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2919, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2925, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2926, metadata !DIExpression()), !dbg !2951
  %5 = icmp eq ptr %3, null, !dbg !2952
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2927, metadata !DIExpression()), !dbg !2951
  %7 = tail call ptr @__errno_location() #43, !dbg !2953
  %8 = load i32, ptr %7, align 4, !dbg !2953, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2928, metadata !DIExpression()), !dbg !2951
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2954
  %10 = load i32, ptr %9, align 4, !dbg !2954, !tbaa !2297
  %11 = icmp eq ptr %2, null, !dbg !2955
  %12 = zext i1 %11 to i32, !dbg !2955
  %13 = or i32 %10, %12, !dbg !2956
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2929, metadata !DIExpression()), !dbg !2951
  %14 = load i32, ptr %6, align 8, !dbg !2957, !tbaa !2247
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2958
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2959
  %17 = load ptr, ptr %16, align 8, !dbg !2959, !tbaa !2318
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2960
  %19 = load ptr, ptr %18, align 8, !dbg !2960, !tbaa !2321
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2961
  %21 = add i64 %20, 1, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2930, metadata !DIExpression()), !dbg !2951
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !2963
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2931, metadata !DIExpression()), !dbg !2951
  %23 = load i32, ptr %6, align 8, !dbg !2964, !tbaa !2247
  %24 = load ptr, ptr %16, align 8, !dbg !2965, !tbaa !2318
  %25 = load ptr, ptr %18, align 8, !dbg !2966, !tbaa !2321
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2967
  store i32 %8, ptr %7, align 4, !dbg !2968, !tbaa !1070
  br i1 %11, label %28, label %27, !dbg !2969

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2970, !tbaa !2972
  br label %28, !dbg !2973

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2974
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2975 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2980, !tbaa !1001
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2977, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2978, metadata !DIExpression()), !dbg !2982
  %2 = load i32, ptr @nslots, align 4, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2978, metadata !DIExpression()), !dbg !2982
  %3 = icmp sgt i32 %2, 1, !dbg !2983
  br i1 %3, label %4, label %6, !dbg !2985

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2983
  br label %10, !dbg !2985

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2986

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2986
  %8 = load ptr, ptr %7, align 8, !dbg !2986, !tbaa !2988
  %9 = icmp eq ptr %8, @slot0, !dbg !2990
  br i1 %9, label %17, label %16, !dbg !2991

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2978, metadata !DIExpression()), !dbg !2982
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2992
  %13 = load ptr, ptr %12, align 8, !dbg !2992, !tbaa !2988
  tail call void @free(ptr noundef %13) #40, !dbg !2993
  %14 = add nuw nsw i64 %11, 1, !dbg !2994
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2978, metadata !DIExpression()), !dbg !2982
  %15 = icmp eq i64 %14, %5, !dbg !2983
  br i1 %15, label %.loopexit, label %10, !dbg !2985, !llvm.loop !2995

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2997
  store i64 256, ptr @slotvec0, align 8, !dbg !2999, !tbaa !3000
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3001, !tbaa !2988
  br label %17, !dbg !3002

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3003
  br i1 %18, label %20, label %19, !dbg !3005

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3006
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3008, !tbaa !1001
  br label %20, !dbg !3009

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3010, !tbaa !1070
  ret void, !dbg !3011
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3015, metadata !DIExpression()), !dbg !3016
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3017
  ret ptr %3, !dbg !3018
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3019 {
  %5 = alloca i64, align 8, !DIAssignID !3039
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3033, metadata !DIExpression(), metadata !3039, metadata ptr %5, metadata !DIExpression()), !dbg !3040
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3023, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3024, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3025, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3026, metadata !DIExpression()), !dbg !3041
  %6 = tail call ptr @__errno_location() #43, !dbg !3042
  %7 = load i32, ptr %6, align 4, !dbg !3042, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3027, metadata !DIExpression()), !dbg !3041
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3043, !tbaa !1001
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3028, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3029, metadata !DIExpression()), !dbg !3041
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3044
  br i1 %9, label %10, label %11, !dbg !3044

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3046
  unreachable, !dbg !3046

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3047, !tbaa !1070
  %13 = icmp sgt i32 %12, %0, !dbg !3048
  br i1 %13, label %32, label %14, !dbg !3049

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3050
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3030, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3040
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3051
  %16 = sext i32 %12 to i64, !dbg !3052
  store i64 %16, ptr %5, align 8, !dbg !3053, !tbaa !2972, !DIAssignID !3054
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3033, metadata !DIExpression(), metadata !3054, metadata ptr %5, metadata !DIExpression()), !dbg !3040
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3055
  %18 = add nuw nsw i32 %0, 1, !dbg !3056
  %19 = sub i32 %18, %12, !dbg !3057
  %20 = sext i32 %19 to i64, !dbg !3058
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3059
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3028, metadata !DIExpression()), !dbg !3041
  store ptr %21, ptr @slotvec, align 8, !dbg !3060, !tbaa !1001
  br i1 %15, label %22, label %23, !dbg !3061

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3062, !tbaa.struct !3064
  br label %23, !dbg !3065

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3066, !tbaa !1070
  %25 = sext i32 %24 to i64, !dbg !3067
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3067
  %27 = load i64, ptr %5, align 8, !dbg !3068, !tbaa !2972
  %28 = sub nsw i64 %27, %25, !dbg !3069
  %29 = shl i64 %28, 4, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %26, metadata !2456, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %29, metadata !2460, metadata !DIExpression()), !dbg !3071
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3073
  %30 = load i64, ptr %5, align 8, !dbg !3074, !tbaa !2972
  %31 = trunc i64 %30 to i32, !dbg !3074
  store i32 %31, ptr @nslots, align 4, !dbg !3075, !tbaa !1070
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3076
  br label %32, !dbg !3077

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3028, metadata !DIExpression()), !dbg !3041
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3078
  %36 = load i64, ptr %35, align 8, !dbg !3079, !tbaa !3000
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3034, metadata !DIExpression()), !dbg !3080
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3081
  %38 = load ptr, ptr %37, align 8, !dbg !3081, !tbaa !2988
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3036, metadata !DIExpression()), !dbg !3080
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3082
  %40 = load i32, ptr %39, align 4, !dbg !3082, !tbaa !2297
  %41 = or i32 %40, 1, !dbg !3083
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3037, metadata !DIExpression()), !dbg !3080
  %42 = load i32, ptr %3, align 8, !dbg !3084, !tbaa !2247
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3085
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3086
  %45 = load ptr, ptr %44, align 8, !dbg !3086, !tbaa !2318
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3087
  %47 = load ptr, ptr %46, align 8, !dbg !3087, !tbaa !2321
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3038, metadata !DIExpression()), !dbg !3080
  %49 = icmp ugt i64 %36, %48, !dbg !3089
  br i1 %49, label %60, label %50, !dbg !3091

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3034, metadata !DIExpression()), !dbg !3080
  store i64 %51, ptr %35, align 8, !dbg !3094, !tbaa !3000
  %52 = icmp eq ptr %38, @slot0, !dbg !3095
  br i1 %52, label %54, label %53, !dbg !3097

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3098
  br label %54, !dbg !3098

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3099
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3036, metadata !DIExpression()), !dbg !3080
  store ptr %55, ptr %37, align 8, !dbg !3100, !tbaa !2988
  %56 = load i32, ptr %3, align 8, !dbg !3101, !tbaa !2247
  %57 = load ptr, ptr %44, align 8, !dbg !3102, !tbaa !2318
  %58 = load ptr, ptr %46, align 8, !dbg !3103, !tbaa !2321
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3104
  br label %60, !dbg !3105

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3080
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3036, metadata !DIExpression()), !dbg !3080
  store i32 %7, ptr %6, align 4, !dbg !3106, !tbaa !1070
  ret ptr %61, !dbg !3107
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3108 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3112, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3113, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3114, metadata !DIExpression()), !dbg !3115
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3116
  ret ptr %4, !dbg !3117
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3118 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 0, metadata !3014, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3122
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3124
  ret ptr %2, !dbg !3125
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3126 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3130, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3131, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32 0, metadata !3112, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !3113, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3133
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3135
  ret ptr %3, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3137 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3145
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3144, metadata !DIExpression(), metadata !3145, metadata ptr %4, metadata !DIExpression()), !dbg !3146
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3141, metadata !DIExpression()), !dbg !3146
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3142, metadata !DIExpression()), !dbg !3146
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3143, metadata !DIExpression()), !dbg !3146
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3148), !dbg !3151
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3160, !alias.scope !3148, !DIAssignID !3161
  call void @llvm.dbg.assign(metadata i8 0, metadata !3144, metadata !DIExpression(), metadata !3161, metadata ptr %4, metadata !DIExpression()), !dbg !3146
  %5 = icmp eq i32 %1, 10, !dbg !3162
  br i1 %5, label %6, label %7, !dbg !3164

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3165, !noalias !3148
  unreachable, !dbg !3165

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3166, !tbaa !2247, !alias.scope !3148, !DIAssignID !3167
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3167, metadata ptr %4, metadata !DIExpression()), !dbg !3146
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3168
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3169
  ret ptr %8, !dbg !3170
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3171 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3179, metadata !DIExpression(), metadata !3180, metadata ptr %5, metadata !DIExpression()), !dbg !3181
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3175, metadata !DIExpression()), !dbg !3181
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3176, metadata !DIExpression()), !dbg !3181
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3177, metadata !DIExpression()), !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183), !dbg !3186
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3157, metadata !DIExpression()), !dbg !3189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3189, !alias.scope !3183, !DIAssignID !3190
  call void @llvm.dbg.assign(metadata i8 0, metadata !3179, metadata !DIExpression(), metadata !3190, metadata ptr %5, metadata !DIExpression()), !dbg !3181
  %6 = icmp eq i32 %1, 10, !dbg !3191
  br i1 %6, label %7, label %8, !dbg !3192

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3193, !noalias !3183
  unreachable, !dbg !3193

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3194, !tbaa !2247, !alias.scope !3183, !DIAssignID !3195
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3195, metadata ptr %5, metadata !DIExpression()), !dbg !3181
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3196
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3197
  ret ptr %9, !dbg !3198
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3199 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3205
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()), !dbg !3206
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3144, metadata !DIExpression(), metadata !3205, metadata ptr %3, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !3141, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %1, metadata !3143, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3210), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3157, metadata !DIExpression()), !dbg !3216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3216, !alias.scope !3210, !DIAssignID !3217
  call void @llvm.dbg.assign(metadata i8 0, metadata !3144, metadata !DIExpression(), metadata !3217, metadata ptr %3, metadata !DIExpression()), !dbg !3207
  %4 = icmp eq i32 %0, 10, !dbg !3218
  br i1 %4, label %5, label %6, !dbg !3219

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3220, !noalias !3210
  unreachable, !dbg !3220

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3221, !tbaa !2247, !alias.scope !3210, !DIAssignID !3222
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3222, metadata ptr %3, metadata !DIExpression()), !dbg !3207
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3223
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3224
  ret ptr %7, !dbg !3225
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3226 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3233
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3230, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3231, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3232, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3179, metadata !DIExpression(), metadata !3233, metadata ptr %4, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i32 0, metadata !3175, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i32 %0, metadata !3176, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %2, metadata !3178, metadata !DIExpression()), !dbg !3235
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3238), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3157, metadata !DIExpression()), !dbg !3244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3244, !alias.scope !3238, !DIAssignID !3245
  call void @llvm.dbg.assign(metadata i8 0, metadata !3179, metadata !DIExpression(), metadata !3245, metadata ptr %4, metadata !DIExpression()), !dbg !3235
  %5 = icmp eq i32 %0, 10, !dbg !3246
  br i1 %5, label %6, label %7, !dbg !3247

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3248, !noalias !3238
  unreachable, !dbg !3248

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3249, !tbaa !2247, !alias.scope !3238, !DIAssignID !3250
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3250, metadata ptr %4, metadata !DIExpression()), !dbg !3235
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3251
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3252
  ret ptr %8, !dbg !3253
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3254 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3262
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3262, metadata ptr %4, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3258, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3259, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3260, metadata !DIExpression()), !dbg !3263
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3265, !tbaa.struct !3266, !DIAssignID !3267
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3267, metadata ptr %4, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2264, metadata !DIExpression()), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2265, metadata !DIExpression()), !dbg !3268
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2266, metadata !DIExpression()), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2267, metadata !DIExpression()), !dbg !3268
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3270
  %6 = lshr i8 %2, 5, !dbg !3271
  %7 = zext nneg i8 %6 to i64, !dbg !3271
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3272
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2268, metadata !DIExpression()), !dbg !3268
  %9 = and i8 %2, 31, !dbg !3273
  %10 = zext nneg i8 %9 to i32, !dbg !3273
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2270, metadata !DIExpression()), !dbg !3268
  %11 = load i32, ptr %8, align 4, !dbg !3274, !tbaa !1070
  %12 = lshr i32 %11, %10, !dbg !3275
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2271, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3268
  %13 = and i32 %12, 1, !dbg !3276
  %14 = xor i32 %13, 1, !dbg !3276
  %15 = shl nuw i32 %14, %10, !dbg !3277
  %16 = xor i32 %15, %11, !dbg !3278
  store i32 %16, ptr %8, align 4, !dbg !3278, !tbaa !1070
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3279
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3280
  ret ptr %17, !dbg !3281
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3282 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3288
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3289
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3288, metadata ptr %3, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %0, metadata !3258, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 -1, metadata !3259, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %1, metadata !3260, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3293, !tbaa.struct !3266, !DIAssignID !3294
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3294, metadata ptr %3, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %3, metadata !2264, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 %1, metadata !2265, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 1, metadata !2266, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8 %1, metadata !2267, metadata !DIExpression()), !dbg !3295
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3297
  %5 = lshr i8 %1, 5, !dbg !3298
  %6 = zext nneg i8 %5 to i64, !dbg !3298
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3299
  call void @llvm.dbg.value(metadata ptr %7, metadata !2268, metadata !DIExpression()), !dbg !3295
  %8 = and i8 %1, 31, !dbg !3300
  %9 = zext nneg i8 %8 to i32, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %9, metadata !2270, metadata !DIExpression()), !dbg !3295
  %10 = load i32, ptr %7, align 4, !dbg !3301, !tbaa !1070
  %11 = lshr i32 %10, %9, !dbg !3302
  call void @llvm.dbg.value(metadata i32 %11, metadata !2271, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3295
  %12 = and i32 %11, 1, !dbg !3303
  %13 = xor i32 %12, 1, !dbg !3303
  %14 = shl nuw i32 %13, %9, !dbg !3304
  %15 = xor i32 %14, %10, !dbg !3305
  store i32 %15, ptr %7, align 4, !dbg !3305, !tbaa !1070
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3306
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3307
  ret ptr %16, !dbg !3308
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3309 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3312
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8 58, metadata !3287, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3312, metadata ptr %2, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata ptr %0, metadata !3258, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 -1, metadata !3259, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i8 58, metadata !3260, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3319, !tbaa.struct !3266, !DIAssignID !3320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3320, metadata ptr %2, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata ptr %2, metadata !2264, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 58, metadata !2265, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 1, metadata !2266, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8 58, metadata !2267, metadata !DIExpression()), !dbg !3321
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %3, metadata !2268, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 26, metadata !2270, metadata !DIExpression()), !dbg !3321
  %4 = load i32, ptr %3, align 4, !dbg !3324, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %4, metadata !2271, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3321
  %5 = or i32 %4, 67108864, !dbg !3325
  store i32 %5, ptr %3, align 4, !dbg !3325, !tbaa !1070
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3326
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3327
  ret ptr %6, !dbg !3328
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3329 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3333
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3333, metadata ptr %3, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata ptr %0, metadata !3258, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3259, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8 58, metadata !3260, metadata !DIExpression()), !dbg !3335
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3338, !tbaa.struct !3266, !DIAssignID !3339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3261, metadata !DIExpression(), metadata !3339, metadata ptr %3, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata ptr %3, metadata !2264, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !2265, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 1, metadata !2266, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 58, metadata !2267, metadata !DIExpression()), !dbg !3340
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3342
  call void @llvm.dbg.value(metadata ptr %4, metadata !2268, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 26, metadata !2270, metadata !DIExpression()), !dbg !3340
  %5 = load i32, ptr %4, align 4, !dbg !3343, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %5, metadata !2271, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3340
  %6 = or i32 %5, 67108864, !dbg !3344
  store i32 %6, ptr %4, align 4, !dbg !3344, !tbaa !1070
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3345
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3346
  ret ptr %7, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3348 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3354
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3353, metadata !DIExpression(), metadata !3354, metadata ptr %4, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3157, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3356
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3350, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3358
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3359
  %5 = icmp eq i32 %1, 10, !dbg !3360
  br i1 %5, label %6, label %7, !dbg !3361

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3362, !noalias !3363
  unreachable, !dbg !3362

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3359
  store i32 %1, ptr %4, align 8, !dbg !3366, !tbaa.struct !3266, !DIAssignID !3367
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3366
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3366
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3367, metadata ptr %4, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3353, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3368, metadata ptr %8, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2264, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2265, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2266, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2267, metadata !DIExpression()), !dbg !3369
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3371
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2268, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2270, metadata !DIExpression()), !dbg !3369
  %10 = load i32, ptr %9, align 4, !dbg !3372, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2271, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3369
  %11 = or i32 %10, 67108864, !dbg !3373
  store i32 %11, ptr %9, align 4, !dbg !3373, !tbaa !1070, !DIAssignID !3374
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3353, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3374, metadata ptr %9, metadata !DIExpression()), !dbg !3355
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3375
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3376
  ret ptr %12, !dbg !3377
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3378 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3386
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3382, metadata !DIExpression()), !dbg !3387
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3383, metadata !DIExpression()), !dbg !3387
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3384, metadata !DIExpression()), !dbg !3387
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3386, metadata ptr %5, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %1, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %3, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 -1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3401, !tbaa.struct !3266, !DIAssignID !3402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3402, metadata ptr %5, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3403, metadata ptr undef, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %5, metadata !2304, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %1, metadata !2305, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %2, metadata !2306, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %5, metadata !2304, metadata !DIExpression()), !dbg !3404
  store i32 10, ptr %5, align 8, !dbg !3406, !tbaa !2247, !DIAssignID !3407
  call void @llvm.dbg.assign(metadata i32 10, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3407, metadata ptr %5, metadata !DIExpression()), !dbg !3398
  %6 = icmp ne ptr %1, null, !dbg !3408
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3409
  br i1 %8, label %10, label %9, !dbg !3409

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3410
  unreachable, !dbg !3410

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3411
  store ptr %1, ptr %11, align 8, !dbg !3412, !tbaa !2318, !DIAssignID !3413
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3413, metadata ptr %11, metadata !DIExpression()), !dbg !3398
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3414
  store ptr %2, ptr %12, align 8, !dbg !3415, !tbaa !2321, !DIAssignID !3416
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3416, metadata ptr %12, metadata !DIExpression()), !dbg !3398
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3417
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3418
  ret ptr %13, !dbg !3419
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3389 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3420, metadata ptr %6, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3394, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3396, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3397, metadata !DIExpression()), !dbg !3421
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3423, !tbaa.struct !3266, !DIAssignID !3424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3424, metadata ptr %6, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3425, metadata ptr undef, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata ptr %6, metadata !2304, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %1, metadata !2305, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %2, metadata !2306, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %6, metadata !2304, metadata !DIExpression()), !dbg !3426
  store i32 10, ptr %6, align 8, !dbg !3428, !tbaa !2247, !DIAssignID !3429
  call void @llvm.dbg.assign(metadata i32 10, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3429, metadata ptr %6, metadata !DIExpression()), !dbg !3421
  %7 = icmp ne ptr %1, null, !dbg !3430
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3431
  br i1 %9, label %11, label %10, !dbg !3431

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3432
  unreachable, !dbg !3432

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3433
  store ptr %1, ptr %12, align 8, !dbg !3434, !tbaa !2318, !DIAssignID !3435
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3435, metadata ptr %12, metadata !DIExpression()), !dbg !3421
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3436
  store ptr %2, ptr %13, align 8, !dbg !3437, !tbaa !2321, !DIAssignID !3438
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3438, metadata ptr %13, metadata !DIExpression()), !dbg !3421
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3439
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3440
  ret ptr %14, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3442 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3449
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3447, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 0, metadata !3382, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata ptr %0, metadata !3383, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata ptr %1, metadata !3384, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata ptr %2, metadata !3385, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3449, metadata ptr %4, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata ptr %1, metadata !3395, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata ptr %2, metadata !3396, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 -1, metadata !3397, metadata !DIExpression()), !dbg !3453
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3456, !tbaa.struct !3266, !DIAssignID !3457
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3457, metadata ptr %4, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3458, metadata ptr undef, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata ptr %4, metadata !2304, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %0, metadata !2305, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %1, metadata !2306, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %4, metadata !2304, metadata !DIExpression()), !dbg !3459
  store i32 10, ptr %4, align 8, !dbg !3461, !tbaa !2247, !DIAssignID !3462
  call void @llvm.dbg.assign(metadata i32 10, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3462, metadata ptr %4, metadata !DIExpression()), !dbg !3453
  %5 = icmp ne ptr %0, null, !dbg !3463
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3464
  br i1 %7, label %9, label %8, !dbg !3464

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3465
  unreachable, !dbg !3465

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3466
  store ptr %0, ptr %10, align 8, !dbg !3467, !tbaa !2318, !DIAssignID !3468
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3468, metadata ptr %10, metadata !DIExpression()), !dbg !3453
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3469
  store ptr %1, ptr %11, align 8, !dbg !3470, !tbaa !2321, !DIAssignID !3471
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3471, metadata ptr %11, metadata !DIExpression()), !dbg !3453
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3472
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3473
  ret ptr %12, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3475 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3483
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3484
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3480, metadata !DIExpression()), !dbg !3484
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3481, metadata !DIExpression()), !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3483, metadata ptr %5, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata ptr %1, metadata !3395, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata ptr %2, metadata !3396, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %3, metadata !3397, metadata !DIExpression()), !dbg !3485
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3488, !tbaa.struct !3266, !DIAssignID !3489
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3489, metadata ptr %5, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3490, metadata ptr undef, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata ptr %5, metadata !2304, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %0, metadata !2305, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %1, metadata !2306, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %5, metadata !2304, metadata !DIExpression()), !dbg !3491
  store i32 10, ptr %5, align 8, !dbg !3493, !tbaa !2247, !DIAssignID !3494
  call void @llvm.dbg.assign(metadata i32 10, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3494, metadata ptr %5, metadata !DIExpression()), !dbg !3485
  %6 = icmp ne ptr %0, null, !dbg !3495
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3496
  br i1 %8, label %10, label %9, !dbg !3496

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3497
  unreachable, !dbg !3497

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3498
  store ptr %0, ptr %11, align 8, !dbg !3499, !tbaa !2318, !DIAssignID !3500
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3500, metadata ptr %11, metadata !DIExpression()), !dbg !3485
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3501
  store ptr %1, ptr %12, align 8, !dbg !3502, !tbaa !2321, !DIAssignID !3503
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3503, metadata ptr %12, metadata !DIExpression()), !dbg !3485
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3504
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3505
  ret ptr %13, !dbg !3506
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3507 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3511, metadata !DIExpression()), !dbg !3514
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3512, metadata !DIExpression()), !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3513, metadata !DIExpression()), !dbg !3514
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3515
  ret ptr %4, !dbg !3516
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3517 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 %1, metadata !3513, metadata !DIExpression()), !dbg !3524
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3526
  ret ptr %3, !dbg !3527
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3528 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3533, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 %0, metadata !3511, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata ptr %1, metadata !3512, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 -1, metadata !3513, metadata !DIExpression()), !dbg !3535
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3537
  ret ptr %3, !dbg !3538
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3539 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3543, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 -1, metadata !3513, metadata !DIExpression()), !dbg !3547
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3549
  ret ptr %2, !dbg !3550
}

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec_warn(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #10 !dbg !3551 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3558, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3559, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3560, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3561, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3562, metadata !DIExpression()), !dbg !3569
  %7 = icmp eq ptr %2, null, !dbg !3570
  br i1 %7, label %10, label %8, !dbg !3570

8:                                                ; preds = %6
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #41, !dbg !3571
  br label %10, !dbg !3570

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %9, %8 ], [ null, %6 ], !dbg !3570
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3563, metadata !DIExpression()), !dbg !3569
  %12 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3572
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !3564, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3565, metadata !DIExpression()), !dbg !3569
  %13 = icmp ne ptr %2, null, !dbg !3573
  %14 = icmp eq ptr %11, null
  %15 = and i1 %13, %14, !dbg !3574
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false, !dbg !3574
  br i1 %17, label %18, label %27, !dbg !3574

18:                                               ; preds = %10
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #41, !dbg !3575
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !3566, metadata !DIExpression()), !dbg !3576
  %20 = icmp eq ptr %19, null, !dbg !3577
  br i1 %20, label %27, label %21, !dbg !3579

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3580
  %23 = icmp eq ptr %22, null, !dbg !3580
  br i1 %23, label %24, label %27, !dbg !3581

24:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3565, metadata !DIExpression()), !dbg !3569
  %25 = icmp eq ptr %5, null, !dbg !3582
  %26 = select i1 %25, ptr null, ptr @.str.112, !dbg !3582
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !3564, metadata !DIExpression()), !dbg !3569
  br label %27, !dbg !3584

27:                                               ; preds = %18, %21, %24, %10
  %28 = phi i1 [ false, %10 ], [ false, %21 ], [ true, %24 ], [ false, %18 ]
  %29 = phi ptr [ %12, %10 ], [ %12, %21 ], [ %26, %24 ], [ %12, %18 ], !dbg !3585
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3564, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3565, metadata !DIExpression()), !dbg !3569
  %30 = icmp eq ptr %5, null, !dbg !3586
  br i1 %30, label %33, label %31, !dbg !3588

31:                                               ; preds = %27
  %32 = zext i1 %28 to i8, !dbg !3589
  store i8 %32, ptr %5, align 1, !dbg !3589, !tbaa !1308
  br label %33, !dbg !3590

33:                                               ; preds = %31, %27
  ret ptr %29, !dbg !3591
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #10 !dbg !3592 {
  %7 = alloca i64, align 8, !DIAssignID !3648
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3648, metadata ptr %7, metadata !DIExpression()), !dbg !3649
  %8 = alloca [21 x i8], align 1, !DIAssignID !3650
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3630, metadata !DIExpression(), metadata !3650, metadata ptr %8, metadata !DIExpression()), !dbg !3651
  %9 = alloca i64, align 8, !DIAssignID !3652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3645, metadata !DIExpression(), metadata !3652, metadata ptr %9, metadata !DIExpression()), !dbg !3653
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3597, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3598, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3599, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3600, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3601, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3602, metadata !DIExpression()), !dbg !3654
  %10 = icmp eq ptr %4, null, !dbg !3655
  br i1 %10, label %12, label %11, !dbg !3657

11:                                               ; preds = %6
  store ptr null, ptr %4, align 8, !dbg !3658, !tbaa !1001
  br label %12, !dbg !3659

12:                                               ; preds = %11, %6
  %13 = icmp eq ptr %5, null, !dbg !3660
  br i1 %13, label %15, label %14, !dbg !3662

14:                                               ; preds = %12
  store ptr null, ptr %5, align 8, !dbg !3663, !tbaa !1001
  br label %15, !dbg !3664

15:                                               ; preds = %14, %12
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3603, metadata !DIExpression()), !dbg !3654
  %16 = icmp eq ptr %1, null, !dbg !3665
  br i1 %16, label %17, label %22, !dbg !3666

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !dbg !3667, !tbaa !1079
  %19 = icmp eq i8 %18, 0, !dbg !3667
  br i1 %19, label %37, label %20, !dbg !3670

20:                                               ; preds = %17
  %21 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #40, !dbg !3671
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3603, metadata !DIExpression()), !dbg !3654
  br label %37, !dbg !3672

22:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !3604, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  %23 = icmp eq ptr %1, %0, !dbg !3674
  br i1 %23, label %31, label %24, !dbg !3676

24:                                               ; preds = %22
  %25 = ptrtoint ptr %0 to i64, !dbg !3677
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %25), metadata !3604, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  %26 = ptrtoint ptr %1 to i64, !dbg !3677
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %26, i64 %25), metadata !3604, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3673
  %27 = sub i64 %26, %25, !dbg !3677
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3604, metadata !DIExpression()), !dbg !3673
  %28 = add nsw i64 %27, 1, !dbg !3678
  %29 = tail call noalias nonnull ptr @ximemdup(ptr noundef %0, i64 noundef %28) #46, !dbg !3680
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3603, metadata !DIExpression()), !dbg !3654
  %30 = getelementptr inbounds i8, ptr %29, i64 %27, !dbg !3681
  store i8 0, ptr %30, align 1, !dbg !3682, !tbaa !1079
  br label %31, !dbg !3683

31:                                               ; preds = %24, %22
  %32 = phi ptr [ %29, %24 ], [ null, %22 ], !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !3603, metadata !DIExpression()), !dbg !3654
  %33 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !3684
  %34 = load i8, ptr %33, align 1, !dbg !3685, !tbaa !1079
  %35 = icmp eq i8 %34, 0, !dbg !3686
  %36 = select i1 %35, ptr null, ptr %33, !dbg !3687
  br label %37, !dbg !3687

37:                                               ; preds = %20, %17, %31
  %38 = phi ptr [ %32, %31 ], [ null, %17 ], [ %21, %20 ]
  %39 = phi ptr [ %36, %31 ], [ null, %17 ], [ null, %20 ], !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !3607, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3608, metadata !DIExpression()), !dbg !3654
  %40 = load i32, ptr %2, align 4, !dbg !3688, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !3609, metadata !DIExpression()), !dbg !3654
  %41 = icmp eq ptr %3, null, !dbg !3689
  br i1 %41, label %44, label %42, !dbg !3689

42:                                               ; preds = %37
  %43 = load i32, ptr %3, align 4, !dbg !3690, !tbaa !1070
  br label %44, !dbg !3689

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %37 ], !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !3610, metadata !DIExpression()), !dbg !3654
  %46 = icmp eq ptr %38, null, !dbg !3691
  br i1 %46, label %93, label %47, !dbg !3692

47:                                               ; preds = %44
  %48 = load i8, ptr %38, align 1, !dbg !3693, !tbaa !1079
  %49 = icmp eq i8 %48, 43, !dbg !3694
  br i1 %49, label %53, label %50, !dbg !3693

50:                                               ; preds = %47
  %51 = tail call ptr @getpwnam(ptr noundef nonnull %38), !dbg !3695
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !3611, metadata !DIExpression()), !dbg !3696
  %52 = icmp eq ptr %51, null, !dbg !3697
  br i1 %52, label %53, label %68, !dbg !3698

53:                                               ; preds = %47, %50
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3600, metadata !DIExpression()), !dbg !3654
  %54 = icmp ne ptr %1, null, !dbg !3699
  %55 = icmp eq ptr %39, null, !dbg !3700
  %56 = and i1 %54, %55, !dbg !3700
  tail call void @llvm.dbg.value(metadata i1 %56, metadata !3624, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3701
  br i1 %56, label %87, label %57, !dbg !3702

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !3703
  %58 = call i32 @xstrtoul(ptr noundef nonnull %38, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef nonnull @.str.2.113) #40, !dbg !3704
  %59 = icmp eq i32 %58, 0, !dbg !3706
  %60 = load i64, ptr %7, align 8
  %61 = icmp ult i64 %60, 4294967296
  %62 = select i1 %59, i1 %61, i1 false, !dbg !3707
  %63 = trunc i64 %60 to i32
  %64 = icmp ne i32 %63, -1
  %65 = select i1 %62, i1 %64, i1 false, !dbg !3707
  %66 = select i1 %65, i32 %63, i32 %40
  %67 = select i1 %65, ptr null, ptr @.str.3.114
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !3602, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !3609, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !3708
  br label %87

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 2, !dbg !3709
  %70 = load i32, ptr %69, align 8, !dbg !3709, !tbaa !1349
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !3609, metadata !DIExpression()), !dbg !3654
  %71 = icmp eq ptr %39, null, !dbg !3710
  %72 = icmp ne ptr %1, null
  %73 = and i1 %72, %71, !dbg !3711
  br i1 %73, label %74, label %87, !dbg !3711

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #40, !dbg !3712
  %75 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 3, !dbg !3713
  %76 = load i32, ptr %75, align 4, !dbg !3713, !tbaa !1353
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !3610, metadata !DIExpression()), !dbg !3654
  %77 = tail call ptr @getgrgid(i32 noundef %76) #40, !dbg !3714
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !3634, metadata !DIExpression()), !dbg !3651
  %78 = icmp eq ptr %77, null, !dbg !3715
  br i1 %78, label %81, label %79, !dbg !3715

79:                                               ; preds = %74
  %80 = load ptr, ptr %77, align 8, !dbg !3716, !tbaa !1562
  br label %84, !dbg !3715

81:                                               ; preds = %74
  %82 = zext i32 %76 to i64, !dbg !3717
  %83 = call ptr @umaxtostr(i64 noundef %82, ptr noundef nonnull %8) #40, !dbg !3718
  br label %84, !dbg !3715

84:                                               ; preds = %81, %79
  %85 = phi ptr [ %80, %79 ], [ %83, %81 ], !dbg !3715
  %86 = call noalias nonnull ptr @xstrdup(ptr noundef %85) #40, !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %86, metadata !3608, metadata !DIExpression()), !dbg !3654
  call void @endgrent() #40, !dbg !3720
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #40, !dbg !3721
  br label %87, !dbg !3722

87:                                               ; preds = %57, %53, %68, %84
  %88 = phi ptr [ %86, %84 ], [ null, %68 ], [ null, %53 ], [ null, %57 ], !dbg !3654
  %89 = phi i32 [ %70, %84 ], [ %70, %68 ], [ %40, %53 ], [ %66, %57 ], !dbg !3654
  %90 = phi i32 [ %76, %84 ], [ %45, %68 ], [ %45, %53 ], [ %45, %57 ], !dbg !3654
  %91 = phi ptr [ null, %84 ], [ null, %68 ], [ @.str.1.115, %53 ], [ %67, %57 ], !dbg !3654
  %92 = phi ptr [ %4, %84 ], [ %4, %68 ], [ null, %53 ], [ null, %57 ]
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !3600, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !3602, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !3610, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !3609, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %88, metadata !3608, metadata !DIExpression()), !dbg !3654
  call void @endpwent() #40, !dbg !3723
  br label %93, !dbg !3724

93:                                               ; preds = %87, %44
  %94 = phi ptr [ %88, %87 ], [ null, %44 ], !dbg !3725
  %95 = phi i32 [ %89, %87 ], [ %40, %44 ], !dbg !3726
  %96 = phi i32 [ %90, %87 ], [ %45, %44 ], !dbg !3727
  %97 = phi ptr [ %91, %87 ], [ null, %44 ], !dbg !3654
  %98 = phi ptr [ %92, %87 ], [ %4, %44 ]
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !3600, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !3602, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !3610, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !3609, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %94, metadata !3608, metadata !DIExpression()), !dbg !3654
  %99 = icmp ne ptr %39, null, !dbg !3728
  %100 = icmp eq ptr %97, null
  %101 = and i1 %99, %100, !dbg !3729
  br i1 %101, label %102, label %127, !dbg !3729

102:                                              ; preds = %93
  %103 = load i8, ptr %39, align 1, !dbg !3730, !tbaa !1079
  %104 = icmp eq i8 %103, 43, !dbg !3731
  br i1 %104, label %108, label %105, !dbg !3730

105:                                              ; preds = %102
  %106 = call ptr @getgrnam(ptr noundef nonnull %39) #40, !dbg !3732
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !3642, metadata !DIExpression()), !dbg !3733
  %107 = icmp eq ptr %106, null, !dbg !3734
  br i1 %107, label %108, label %119, !dbg !3735

108:                                              ; preds = %102, %105
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3601, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !3736
  %109 = call i32 @xstrtoul(ptr noundef nonnull %39, ptr noundef null, i32 noundef 10, ptr noundef nonnull %9, ptr noundef nonnull @.str.2.113) #40, !dbg !3737
  %110 = icmp eq i32 %109, 0, !dbg !3739
  %111 = load i64, ptr %9, align 8
  %112 = icmp ult i64 %111, 4294967296
  %113 = select i1 %110, i1 %112, i1 false, !dbg !3740
  %114 = trunc i64 %111 to i32
  %115 = icmp ne i32 %114, -1
  %116 = select i1 %113, i1 %115, i1 false, !dbg !3740
  %117 = select i1 %116, i32 %114, i32 %96
  %118 = select i1 %116, ptr null, ptr @.str.4.116
  tail call void @llvm.dbg.value(metadata ptr %118, metadata !3602, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !3610, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !3741
  br label %122, !dbg !3742

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.group, ptr %106, i64 0, i32 2, !dbg !3743
  %121 = load i32, ptr %120, align 8, !dbg !3743, !tbaa !3744
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !3610, metadata !DIExpression()), !dbg !3654
  br label %122

122:                                              ; preds = %119, %108
  %123 = phi i32 [ %117, %108 ], [ %121, %119 ], !dbg !3745
  %124 = phi ptr [ %118, %108 ], [ null, %119 ], !dbg !3746
  %125 = phi ptr [ null, %108 ], [ %5, %119 ]
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !3601, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !3602, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !3610, metadata !DIExpression()), !dbg !3654
  call void @endgrent() #40, !dbg !3748
  %126 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %39) #40, !dbg !3749
  tail call void @llvm.dbg.value(metadata ptr %126, metadata !3608, metadata !DIExpression()), !dbg !3654
  br label %127, !dbg !3750

127:                                              ; preds = %122, %93
  %128 = phi ptr [ %126, %122 ], [ %94, %93 ], !dbg !3654
  %129 = phi i32 [ %123, %122 ], [ %96, %93 ], !dbg !3654
  %130 = phi ptr [ %124, %122 ], [ %97, %93 ], !dbg !3746
  %131 = phi ptr [ %125, %122 ], [ %5, %93 ]
  tail call void @llvm.dbg.value(metadata ptr %131, metadata !3601, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %130, metadata !3602, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !3610, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %128, metadata !3608, metadata !DIExpression()), !dbg !3654
  %132 = icmp eq ptr %130, null, !dbg !3751
  br i1 %132, label %133, label %144, !dbg !3753

133:                                              ; preds = %127
  store i32 %95, ptr %2, align 4, !dbg !3754, !tbaa !1070
  br i1 %41, label %135, label %134, !dbg !3756

134:                                              ; preds = %133
  store i32 %129, ptr %3, align 4, !dbg !3757, !tbaa !1070
  br label %135, !dbg !3759

135:                                              ; preds = %134, %133
  %136 = icmp eq ptr %98, null, !dbg !3760
  br i1 %136, label %138, label %137, !dbg !3762

137:                                              ; preds = %135
  store ptr %38, ptr %98, align 8, !dbg !3763, !tbaa !1001
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3603, metadata !DIExpression()), !dbg !3654
  br label %138, !dbg !3765

138:                                              ; preds = %137, %135
  %139 = phi ptr [ null, %137 ], [ %38, %135 ], !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %139, metadata !3603, metadata !DIExpression()), !dbg !3654
  %140 = icmp eq ptr %131, null, !dbg !3766
  br i1 %140, label %142, label %141, !dbg !3768

141:                                              ; preds = %138
  store ptr %128, ptr %131, align 8, !dbg !3769, !tbaa !1001
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3608, metadata !DIExpression()), !dbg !3654
  br label %142, !dbg !3771

142:                                              ; preds = %138, %141
  %143 = phi ptr [ null, %141 ], [ %128, %138 ], !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %139, metadata !3603, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !3608, metadata !DIExpression()), !dbg !3654
  call void @free(ptr noundef %139) #40, !dbg !3772
  call void @free(ptr noundef %143) #40, !dbg !3773
  br label %146, !dbg !3774

144:                                              ; preds = %127
  tail call void @llvm.dbg.value(metadata ptr %139, metadata !3603, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !3608, metadata !DIExpression()), !dbg !3654
  call void @free(ptr noundef %38) #40, !dbg !3772
  call void @free(ptr noundef %128) #40, !dbg !3773
  %145 = call ptr @dcgettext(ptr noundef nonnull @.str.5.117, ptr noundef nonnull %130, i32 noundef 5) #40, !dbg !3775
  br label %146, !dbg !3774

146:                                              ; preds = %142, %144
  %147 = phi ptr [ %145, %144 ], [ null, %142 ], !dbg !3774
  ret ptr %147, !dbg !3776
}

declare !dbg !3777 void @endgrent() local_unnamed_addr #3

declare !dbg !3778 void @endpwent() local_unnamed_addr #3

declare !dbg !3779 ptr @getgrnam(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3782 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3786, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3787, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3788, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3789, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %1, metadata !3558, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %2, metadata !3559, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %3, metadata !3560, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %4, metadata !3561, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr null, metadata !3562, metadata !DIExpression()), !dbg !3792
  %6 = icmp eq ptr %2, null, !dbg !3794
  br i1 %6, label %9, label %7, !dbg !3794

7:                                                ; preds = %5
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #41, !dbg !3795
  br label %9, !dbg !3794

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ null, %5 ], !dbg !3794
  call void @llvm.dbg.value(metadata ptr %10, metadata !3563, metadata !DIExpression()), !dbg !3792
  %11 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %11, metadata !3564, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i8 0, metadata !3565, metadata !DIExpression()), !dbg !3792
  %12 = icmp ne ptr %2, null, !dbg !3797
  %13 = icmp eq ptr %10, null
  %14 = and i1 %12, %13, !dbg !3798
  %15 = icmp ne ptr %11, null
  %16 = select i1 %14, i1 %15, i1 false, !dbg !3798
  br i1 %16, label %17, label %24, !dbg !3798

17:                                               ; preds = %9
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #41, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %18, metadata !3566, metadata !DIExpression()), !dbg !3800
  %19 = icmp eq ptr %18, null, !dbg !3801
  br i1 %19, label %24, label %20, !dbg !3802

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3803
  %22 = icmp eq ptr %21, null, !dbg !3803
  %23 = select i1 %22, ptr null, ptr %11, !dbg !3804
  br label %24, !dbg !3804

24:                                               ; preds = %20, %9, %17
  %25 = phi ptr [ %11, %9 ], [ %11, %17 ], [ %23, %20 ], !dbg !3805
  call void @llvm.dbg.value(metadata ptr %25, metadata !3564, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i8 poison, metadata !3565, metadata !DIExpression()), !dbg !3792
  ret ptr %25, !dbg !3806
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3807 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3846, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3847, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3848, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3849, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3850, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3851, metadata !DIExpression()), !dbg !3852
  %7 = icmp eq ptr %1, null, !dbg !3853
  br i1 %7, label %10, label %8, !dbg !3855

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3856
  br label %12, !dbg !3856

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.121, ptr noundef %2, ptr noundef %3) #40, !dbg !3857
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.3.123, i32 noundef 5) #40, !dbg !3858
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3858
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3859
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.5.125, i32 noundef 5) #40, !dbg !3860
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.126) #40, !dbg !3860
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3861
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
  ], !dbg !3862

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.7.127, i32 noundef 5) #40, !dbg !3863
  %21 = load ptr, ptr %4, align 8, !dbg !3863, !tbaa !1001
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3863
  br label %147, !dbg !3865

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.8.128, i32 noundef 5) #40, !dbg !3866
  %25 = load ptr, ptr %4, align 8, !dbg !3866, !tbaa !1001
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3866
  %27 = load ptr, ptr %26, align 8, !dbg !3866, !tbaa !1001
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3866
  br label %147, !dbg !3867

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.9.129, i32 noundef 5) #40, !dbg !3868
  %31 = load ptr, ptr %4, align 8, !dbg !3868, !tbaa !1001
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3868
  %33 = load ptr, ptr %32, align 8, !dbg !3868, !tbaa !1001
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3868
  %35 = load ptr, ptr %34, align 8, !dbg !3868, !tbaa !1001
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3868
  br label %147, !dbg !3869

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.10.130, i32 noundef 5) #40, !dbg !3870
  %39 = load ptr, ptr %4, align 8, !dbg !3870, !tbaa !1001
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3870
  %41 = load ptr, ptr %40, align 8, !dbg !3870, !tbaa !1001
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3870
  %43 = load ptr, ptr %42, align 8, !dbg !3870, !tbaa !1001
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3870
  %45 = load ptr, ptr %44, align 8, !dbg !3870, !tbaa !1001
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3870
  br label %147, !dbg !3871

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.11.131, i32 noundef 5) #40, !dbg !3872
  %49 = load ptr, ptr %4, align 8, !dbg !3872, !tbaa !1001
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3872
  %51 = load ptr, ptr %50, align 8, !dbg !3872, !tbaa !1001
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3872
  %53 = load ptr, ptr %52, align 8, !dbg !3872, !tbaa !1001
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3872
  %55 = load ptr, ptr %54, align 8, !dbg !3872, !tbaa !1001
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3872
  %57 = load ptr, ptr %56, align 8, !dbg !3872, !tbaa !1001
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3872
  br label %147, !dbg !3873

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.12.132, i32 noundef 5) #40, !dbg !3874
  %61 = load ptr, ptr %4, align 8, !dbg !3874, !tbaa !1001
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3874
  %63 = load ptr, ptr %62, align 8, !dbg !3874, !tbaa !1001
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3874
  %65 = load ptr, ptr %64, align 8, !dbg !3874, !tbaa !1001
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3874
  %67 = load ptr, ptr %66, align 8, !dbg !3874, !tbaa !1001
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3874
  %69 = load ptr, ptr %68, align 8, !dbg !3874, !tbaa !1001
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3874
  %71 = load ptr, ptr %70, align 8, !dbg !3874, !tbaa !1001
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3874
  br label %147, !dbg !3875

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.13.133, i32 noundef 5) #40, !dbg !3876
  %75 = load ptr, ptr %4, align 8, !dbg !3876, !tbaa !1001
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3876
  %77 = load ptr, ptr %76, align 8, !dbg !3876, !tbaa !1001
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3876
  %79 = load ptr, ptr %78, align 8, !dbg !3876, !tbaa !1001
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3876
  %81 = load ptr, ptr %80, align 8, !dbg !3876, !tbaa !1001
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3876
  %83 = load ptr, ptr %82, align 8, !dbg !3876, !tbaa !1001
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3876
  %85 = load ptr, ptr %84, align 8, !dbg !3876, !tbaa !1001
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3876
  %87 = load ptr, ptr %86, align 8, !dbg !3876, !tbaa !1001
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3876
  br label %147, !dbg !3877

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.14.134, i32 noundef 5) #40, !dbg !3878
  %91 = load ptr, ptr %4, align 8, !dbg !3878, !tbaa !1001
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3878
  %93 = load ptr, ptr %92, align 8, !dbg !3878, !tbaa !1001
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3878
  %95 = load ptr, ptr %94, align 8, !dbg !3878, !tbaa !1001
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3878
  %97 = load ptr, ptr %96, align 8, !dbg !3878, !tbaa !1001
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3878
  %99 = load ptr, ptr %98, align 8, !dbg !3878, !tbaa !1001
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3878
  %101 = load ptr, ptr %100, align 8, !dbg !3878, !tbaa !1001
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3878
  %103 = load ptr, ptr %102, align 8, !dbg !3878, !tbaa !1001
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3878
  %105 = load ptr, ptr %104, align 8, !dbg !3878, !tbaa !1001
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3878
  br label %147, !dbg !3879

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.15.135, i32 noundef 5) #40, !dbg !3880
  %109 = load ptr, ptr %4, align 8, !dbg !3880, !tbaa !1001
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3880
  %111 = load ptr, ptr %110, align 8, !dbg !3880, !tbaa !1001
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3880
  %113 = load ptr, ptr %112, align 8, !dbg !3880, !tbaa !1001
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3880
  %115 = load ptr, ptr %114, align 8, !dbg !3880, !tbaa !1001
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3880
  %117 = load ptr, ptr %116, align 8, !dbg !3880, !tbaa !1001
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3880
  %119 = load ptr, ptr %118, align 8, !dbg !3880, !tbaa !1001
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3880
  %121 = load ptr, ptr %120, align 8, !dbg !3880, !tbaa !1001
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3880
  %123 = load ptr, ptr %122, align 8, !dbg !3880, !tbaa !1001
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3880
  %125 = load ptr, ptr %124, align 8, !dbg !3880, !tbaa !1001
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3880
  br label %147, !dbg !3881

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.16.136, i32 noundef 5) #40, !dbg !3882
  %129 = load ptr, ptr %4, align 8, !dbg !3882, !tbaa !1001
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3882
  %131 = load ptr, ptr %130, align 8, !dbg !3882, !tbaa !1001
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3882
  %133 = load ptr, ptr %132, align 8, !dbg !3882, !tbaa !1001
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3882
  %135 = load ptr, ptr %134, align 8, !dbg !3882, !tbaa !1001
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3882
  %137 = load ptr, ptr %136, align 8, !dbg !3882, !tbaa !1001
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3882
  %139 = load ptr, ptr %138, align 8, !dbg !3882, !tbaa !1001
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3882
  %141 = load ptr, ptr %140, align 8, !dbg !3882, !tbaa !1001
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3882
  %143 = load ptr, ptr %142, align 8, !dbg !3882, !tbaa !1001
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3882
  %145 = load ptr, ptr %144, align 8, !dbg !3882, !tbaa !1001
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3882
  br label %147, !dbg !3883

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3884
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3885 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3889, metadata !DIExpression()), !dbg !3895
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3890, metadata !DIExpression()), !dbg !3895
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3891, metadata !DIExpression()), !dbg !3895
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3892, metadata !DIExpression()), !dbg !3895
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3893, metadata !DIExpression()), !dbg !3895
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3894, metadata !DIExpression()), !dbg !3895
  br label %6, !dbg !3896

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3894, metadata !DIExpression()), !dbg !3895
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3899
  %9 = load ptr, ptr %8, align 8, !dbg !3899, !tbaa !1001
  %10 = icmp eq ptr %9, null, !dbg !3901
  %11 = add i64 %7, 1, !dbg !3902
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3894, metadata !DIExpression()), !dbg !3895
  br i1 %10, label %12, label %6, !dbg !3901, !llvm.loop !3903

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3898
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3905
  ret void, !dbg !3906
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3907 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3929
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3927, metadata !DIExpression(), metadata !3929, metadata ptr %6, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3921, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3922, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3923, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3924, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3925, metadata !DIExpression(DW_OP_deref)), !dbg !3930
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3926, metadata !DIExpression()), !dbg !3930
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3926, metadata !DIExpression()), !dbg !3930
  %10 = icmp sgt i32 %9, -1, !dbg !3932
  br i1 %10, label %18, label %11, !dbg !3932

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3932
  store i32 %12, ptr %7, align 8, !dbg !3932
  %13 = icmp ult i32 %9, -7, !dbg !3932
  br i1 %13, label %14, label %18, !dbg !3932

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3932
  %16 = sext i32 %9 to i64, !dbg !3932
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3932
  br label %22, !dbg !3932

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3932
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3932
  store ptr %21, ptr %4, align 8, !dbg !3932
  br label %22, !dbg !3932

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3932
  %25 = load ptr, ptr %24, align 8, !dbg !3932
  store ptr %25, ptr %6, align 8, !dbg !3935, !tbaa !1001
  %26 = icmp eq ptr %25, null, !dbg !3936
  br i1 %26, label %197, label %27, !dbg !3937

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3926, metadata !DIExpression()), !dbg !3930
  %28 = icmp sgt i32 %23, -1, !dbg !3932
  br i1 %28, label %36, label %29, !dbg !3932

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3932
  store i32 %30, ptr %7, align 8, !dbg !3932
  %31 = icmp ult i32 %23, -7, !dbg !3932
  br i1 %31, label %32, label %36, !dbg !3932

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3932
  %34 = sext i32 %23 to i64, !dbg !3932
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3932
  br label %40, !dbg !3932

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3932
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3932
  store ptr %39, ptr %4, align 8, !dbg !3932
  br label %40, !dbg !3932

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3932
  %43 = load ptr, ptr %42, align 8, !dbg !3932
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3938
  store ptr %43, ptr %44, align 8, !dbg !3935, !tbaa !1001
  %45 = icmp eq ptr %43, null, !dbg !3936
  br i1 %45, label %197, label %46, !dbg !3937

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3926, metadata !DIExpression()), !dbg !3930
  %47 = icmp sgt i32 %41, -1, !dbg !3932
  br i1 %47, label %55, label %48, !dbg !3932

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3932
  store i32 %49, ptr %7, align 8, !dbg !3932
  %50 = icmp ult i32 %41, -7, !dbg !3932
  br i1 %50, label %51, label %55, !dbg !3932

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3932
  %53 = sext i32 %41 to i64, !dbg !3932
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3932
  br label %59, !dbg !3932

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3932
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3932
  store ptr %58, ptr %4, align 8, !dbg !3932
  br label %59, !dbg !3932

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3932
  %62 = load ptr, ptr %61, align 8, !dbg !3932
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3938
  store ptr %62, ptr %63, align 8, !dbg !3935, !tbaa !1001
  %64 = icmp eq ptr %62, null, !dbg !3936
  br i1 %64, label %197, label %65, !dbg !3937

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3926, metadata !DIExpression()), !dbg !3930
  %66 = icmp sgt i32 %60, -1, !dbg !3932
  br i1 %66, label %74, label %67, !dbg !3932

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3932
  store i32 %68, ptr %7, align 8, !dbg !3932
  %69 = icmp ult i32 %60, -7, !dbg !3932
  br i1 %69, label %70, label %74, !dbg !3932

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3932
  %72 = sext i32 %60 to i64, !dbg !3932
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3932
  br label %78, !dbg !3932

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3932
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3932
  store ptr %77, ptr %4, align 8, !dbg !3932
  br label %78, !dbg !3932

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3932
  %81 = load ptr, ptr %80, align 8, !dbg !3932
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3938
  store ptr %81, ptr %82, align 8, !dbg !3935, !tbaa !1001
  %83 = icmp eq ptr %81, null, !dbg !3936
  br i1 %83, label %197, label %84, !dbg !3937

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3926, metadata !DIExpression()), !dbg !3930
  %85 = icmp sgt i32 %79, -1, !dbg !3932
  br i1 %85, label %93, label %86, !dbg !3932

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3932
  store i32 %87, ptr %7, align 8, !dbg !3932
  %88 = icmp ult i32 %79, -7, !dbg !3932
  br i1 %88, label %89, label %93, !dbg !3932

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3932
  %91 = sext i32 %79 to i64, !dbg !3932
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3932
  br label %97, !dbg !3932

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3932
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3932
  store ptr %96, ptr %4, align 8, !dbg !3932
  br label %97, !dbg !3932

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3932
  %100 = load ptr, ptr %99, align 8, !dbg !3932
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3938
  store ptr %100, ptr %101, align 8, !dbg !3935, !tbaa !1001
  %102 = icmp eq ptr %100, null, !dbg !3936
  br i1 %102, label %197, label %103, !dbg !3937

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3926, metadata !DIExpression()), !dbg !3930
  %104 = icmp sgt i32 %98, -1, !dbg !3932
  br i1 %104, label %112, label %105, !dbg !3932

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3932
  store i32 %106, ptr %7, align 8, !dbg !3932
  %107 = icmp ult i32 %98, -7, !dbg !3932
  br i1 %107, label %108, label %112, !dbg !3932

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3932
  %110 = sext i32 %98 to i64, !dbg !3932
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3932
  br label %116, !dbg !3932

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3932
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3932
  store ptr %115, ptr %4, align 8, !dbg !3932
  br label %116, !dbg !3932

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3932
  %119 = load ptr, ptr %118, align 8, !dbg !3932
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3938
  store ptr %119, ptr %120, align 8, !dbg !3935, !tbaa !1001
  %121 = icmp eq ptr %119, null, !dbg !3936
  br i1 %121, label %197, label %122, !dbg !3937

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3926, metadata !DIExpression()), !dbg !3930
  %123 = icmp sgt i32 %117, -1, !dbg !3932
  br i1 %123, label %131, label %124, !dbg !3932

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3932
  store i32 %125, ptr %7, align 8, !dbg !3932
  %126 = icmp ult i32 %117, -7, !dbg !3932
  br i1 %126, label %127, label %131, !dbg !3932

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3932
  %129 = sext i32 %117 to i64, !dbg !3932
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3932
  br label %135, !dbg !3932

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3932
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3932
  store ptr %134, ptr %4, align 8, !dbg !3932
  br label %135, !dbg !3932

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3932
  %138 = load ptr, ptr %137, align 8, !dbg !3932
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3938
  store ptr %138, ptr %139, align 8, !dbg !3935, !tbaa !1001
  %140 = icmp eq ptr %138, null, !dbg !3936
  br i1 %140, label %197, label %141, !dbg !3937

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3926, metadata !DIExpression()), !dbg !3930
  %142 = icmp sgt i32 %136, -1, !dbg !3932
  br i1 %142, label %150, label %143, !dbg !3932

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3932
  store i32 %144, ptr %7, align 8, !dbg !3932
  %145 = icmp ult i32 %136, -7, !dbg !3932
  br i1 %145, label %146, label %150, !dbg !3932

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3932
  %148 = sext i32 %136 to i64, !dbg !3932
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3932
  br label %154, !dbg !3932

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3932
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3932
  store ptr %153, ptr %4, align 8, !dbg !3932
  br label %154, !dbg !3932

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3932
  %157 = load ptr, ptr %156, align 8, !dbg !3932
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3938
  store ptr %157, ptr %158, align 8, !dbg !3935, !tbaa !1001
  %159 = icmp eq ptr %157, null, !dbg !3936
  br i1 %159, label %197, label %160, !dbg !3937

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3926, metadata !DIExpression()), !dbg !3930
  %161 = icmp sgt i32 %155, -1, !dbg !3932
  br i1 %161, label %169, label %162, !dbg !3932

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3932
  store i32 %163, ptr %7, align 8, !dbg !3932
  %164 = icmp ult i32 %155, -7, !dbg !3932
  br i1 %164, label %165, label %169, !dbg !3932

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3932
  %167 = sext i32 %155 to i64, !dbg !3932
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3932
  br label %173, !dbg !3932

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3932
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3932
  store ptr %172, ptr %4, align 8, !dbg !3932
  br label %173, !dbg !3932

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3932
  %176 = load ptr, ptr %175, align 8, !dbg !3932
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3938
  store ptr %176, ptr %177, align 8, !dbg !3935, !tbaa !1001
  %178 = icmp eq ptr %176, null, !dbg !3936
  br i1 %178, label %197, label %179, !dbg !3937

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3926, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3926, metadata !DIExpression()), !dbg !3930
  %180 = icmp sgt i32 %174, -1, !dbg !3932
  br i1 %180, label %188, label %181, !dbg !3932

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3932
  store i32 %182, ptr %7, align 8, !dbg !3932
  %183 = icmp ult i32 %174, -7, !dbg !3932
  br i1 %183, label %184, label %188, !dbg !3932

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3932
  %186 = sext i32 %174 to i64, !dbg !3932
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3932
  br label %191, !dbg !3932

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3932
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3932
  store ptr %190, ptr %4, align 8, !dbg !3932
  br label %191, !dbg !3932

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3932
  %193 = load ptr, ptr %192, align 8, !dbg !3932
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3938
  store ptr %193, ptr %194, align 8, !dbg !3935, !tbaa !1001
  %195 = icmp eq ptr %193, null, !dbg !3936
  %196 = select i1 %195, i64 9, i64 10, !dbg !3937
  br label %197, !dbg !3937

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3939
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3940
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3941
  ret void, !dbg !3941
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3942 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3950, metadata !DIExpression(), metadata !3951, metadata ptr %5, metadata !DIExpression()), !dbg !3952
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3946, metadata !DIExpression()), !dbg !3952
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3947, metadata !DIExpression()), !dbg !3952
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3948, metadata !DIExpression()), !dbg !3952
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3949, metadata !DIExpression()), !dbg !3952
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3953
  call void @llvm.va_start(ptr nonnull %5), !dbg !3954
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !3955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3955, !tbaa.struct !1909
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3955
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !3955
  call void @llvm.va_end(ptr nonnull %5), !dbg !3956
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3957
  ret void, !dbg !3957
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3958 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3959, !tbaa !1001
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %1), !dbg !3959
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.17.141, i32 noundef 5) #40, !dbg !3960
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.142) #40, !dbg !3960
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.19.143, i32 noundef 5) #40, !dbg !3961
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.144, ptr noundef nonnull @.str.21.145) #40, !dbg !3961
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.22.146, i32 noundef 5) #40, !dbg !3962
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.147) #40, !dbg !3962
  ret void, !dbg !3963
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3969, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3970, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata ptr %0, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %1, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %2, metadata !3977, metadata !DIExpression()), !dbg !3978
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !3986
  %5 = icmp eq ptr %4, null, !dbg !3988
  br i1 %5, label %6, label %7, !dbg !3990

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3991
  unreachable, !dbg !3991

7:                                                ; preds = %3
  ret ptr %4, !dbg !3992
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3974 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3973, metadata !DIExpression()), !dbg !3993
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3976, metadata !DIExpression()), !dbg !3993
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3977, metadata !DIExpression()), !dbg !3993
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3994
  call void @llvm.dbg.value(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !3995
  %5 = icmp eq ptr %4, null, !dbg !3997
  br i1 %5, label %6, label %7, !dbg !3998

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3999
  unreachable, !dbg !3999

7:                                                ; preds = %3
  ret ptr %4, !dbg !4000
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4001 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4005, metadata !DIExpression()), !dbg !4006
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4007
  call void @llvm.dbg.value(metadata ptr %2, metadata !3981, metadata !DIExpression()), !dbg !4008
  %3 = icmp eq ptr %2, null, !dbg !4010
  br i1 %3, label %4, label %5, !dbg !4011

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4012
  unreachable, !dbg !4012

5:                                                ; preds = %1
  ret ptr %2, !dbg !4013
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4014 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4015 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4019, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %0, metadata !4021, metadata !DIExpression()), !dbg !4025
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4027
  call void @llvm.dbg.value(metadata ptr %2, metadata !3981, metadata !DIExpression()), !dbg !4028
  %3 = icmp eq ptr %2, null, !dbg !4030
  br i1 %3, label %4, label %5, !dbg !4031

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4032
  unreachable, !dbg !4032

5:                                                ; preds = %1
  ret ptr %2, !dbg !4033
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4034 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4038, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %0, metadata !4005, metadata !DIExpression()), !dbg !4040
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4042
  call void @llvm.dbg.value(metadata ptr %2, metadata !3981, metadata !DIExpression()), !dbg !4043
  %3 = icmp eq ptr %2, null, !dbg !4045
  br i1 %3, label %4, label %5, !dbg !4046

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4047
  unreachable, !dbg !4047

5:                                                ; preds = %1
  ret ptr %2, !dbg !4048
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4049 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4053, metadata !DIExpression()), !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4054, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %1, metadata !4060, metadata !DIExpression()), !dbg !4061
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4063
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4064
  call void @llvm.dbg.value(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !4065
  %5 = icmp eq ptr %4, null, !dbg !4067
  br i1 %5, label %6, label %7, !dbg !4068

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4069
  unreachable, !dbg !4069

7:                                                ; preds = %2
  ret ptr %4, !dbg !4070
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4071 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4072 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4076, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4077, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %0, metadata !4079, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %1, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %1, metadata !4060, metadata !DIExpression()), !dbg !4085
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4087
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4088
  call void @llvm.dbg.value(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !4089
  %5 = icmp eq ptr %4, null, !dbg !4091
  br i1 %5, label %6, label %7, !dbg !4092

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4093
  unreachable, !dbg !4093

7:                                                ; preds = %2
  ret ptr %4, !dbg !4094
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4095 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4099, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4100, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata ptr %0, metadata !4103, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %1, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %2, metadata !4107, metadata !DIExpression()), !dbg !4108
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4110
  call void @llvm.dbg.value(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !4111
  %5 = icmp eq ptr %4, null, !dbg !4113
  br i1 %5, label %6, label %7, !dbg !4114

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4115
  unreachable, !dbg !4115

7:                                                ; preds = %3
  ret ptr %4, !dbg !4116
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4117 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4121, metadata !DIExpression()), !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4122, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr null, metadata !3973, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %0, metadata !3976, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %1, metadata !3977, metadata !DIExpression()), !dbg !4124
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4126
  call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !4127
  %4 = icmp eq ptr %3, null, !dbg !4129
  br i1 %4, label %5, label %6, !dbg !4130

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4131
  unreachable, !dbg !4131

6:                                                ; preds = %2
  ret ptr %3, !dbg !4132
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4133 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()), !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4138, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr null, metadata !4099, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %0, metadata !4100, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %1, metadata !4101, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata ptr null, metadata !4103, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %0, metadata !4106, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %1, metadata !4107, metadata !DIExpression()), !dbg !4142
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4144
  call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !4145
  %4 = icmp eq ptr %3, null, !dbg !4147
  br i1 %4, label %5, label %6, !dbg !4148

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4149
  unreachable, !dbg !4149

6:                                                ; preds = %2
  ret ptr %3, !dbg !4150
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4151 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4155, metadata !DIExpression()), !dbg !4157
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata ptr %0, metadata !890, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %1, metadata !891, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 1, metadata !892, metadata !DIExpression()), !dbg !4158
  %3 = load i64, ptr %1, align 8, !dbg !4160, !tbaa !2972
  call void @llvm.dbg.value(metadata i64 %3, metadata !893, metadata !DIExpression()), !dbg !4158
  %4 = icmp eq ptr %0, null, !dbg !4161
  br i1 %4, label %5, label %8, !dbg !4163

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4164
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4167
  br label %15, !dbg !4167

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4168
  %10 = add nuw i64 %9, 1, !dbg !4168
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4168
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4168
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %13, metadata !893, metadata !DIExpression()), !dbg !4158
  br i1 %12, label %14, label %15, !dbg !4171

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4172
  unreachable, !dbg !4172

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4158
  call void @llvm.dbg.value(metadata i64 %16, metadata !893, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %0, metadata !3973, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %16, metadata !3976, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 1, metadata !3977, metadata !DIExpression()), !dbg !4173
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4175
  call void @llvm.dbg.value(metadata ptr %17, metadata !3981, metadata !DIExpression()), !dbg !4176
  %18 = icmp eq ptr %17, null, !dbg !4178
  br i1 %18, label %19, label %20, !dbg !4179

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4180
  unreachable, !dbg !4180

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !890, metadata !DIExpression()), !dbg !4158
  store i64 %16, ptr %1, align 8, !dbg !4181, !tbaa !2972
  ret ptr %17, !dbg !4182
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !885 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !890, metadata !DIExpression()), !dbg !4183
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !891, metadata !DIExpression()), !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !892, metadata !DIExpression()), !dbg !4183
  %4 = load i64, ptr %1, align 8, !dbg !4184, !tbaa !2972
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !893, metadata !DIExpression()), !dbg !4183
  %5 = icmp eq ptr %0, null, !dbg !4185
  br i1 %5, label %6, label %13, !dbg !4186

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4187
  br i1 %7, label %8, label %20, !dbg !4188

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4189
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !893, metadata !DIExpression()), !dbg !4183
  %10 = icmp ugt i64 %2, 128, !dbg !4191
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4192
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !893, metadata !DIExpression()), !dbg !4183
  br label %20, !dbg !4193

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4194
  %15 = add nuw i64 %14, 1, !dbg !4194
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4194
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4194
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !893, metadata !DIExpression()), !dbg !4183
  br i1 %17, label %19, label %20, !dbg !4195

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4196
  unreachable, !dbg !4196

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !893, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %0, metadata !3973, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %21, metadata !3976, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %2, metadata !3977, metadata !DIExpression()), !dbg !4197
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4199
  call void @llvm.dbg.value(metadata ptr %22, metadata !3981, metadata !DIExpression()), !dbg !4200
  %23 = icmp eq ptr %22, null, !dbg !4202
  br i1 %23, label %24, label %25, !dbg !4203

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4204
  unreachable, !dbg !4204

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !890, metadata !DIExpression()), !dbg !4183
  store i64 %21, ptr %1, align 8, !dbg !4205, !tbaa !2972
  ret ptr %22, !dbg !4206
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !897 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !906, metadata !DIExpression()), !dbg !4207
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !907, metadata !DIExpression()), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !908, metadata !DIExpression()), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !909, metadata !DIExpression()), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !910, metadata !DIExpression()), !dbg !4207
  %6 = load i64, ptr %1, align 8, !dbg !4208, !tbaa !2972
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !911, metadata !DIExpression()), !dbg !4207
  %7 = ashr i64 %6, 1, !dbg !4209
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4209
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4209
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !912, metadata !DIExpression()), !dbg !4207
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4211
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !912, metadata !DIExpression()), !dbg !4207
  %12 = icmp sgt i64 %3, -1, !dbg !4212
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4214
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4214
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !912, metadata !DIExpression()), !dbg !4207
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4215
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4215
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4215
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !913, metadata !DIExpression()), !dbg !4207
  %18 = icmp slt i64 %17, 128, !dbg !4215
  %19 = select i1 %18, i64 128, i64 0, !dbg !4215
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4215
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !914, metadata !DIExpression()), !dbg !4207
  %21 = icmp eq i64 %20, 0, !dbg !4216
  br i1 %21, label %28, label %22, !dbg !4218

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !912, metadata !DIExpression()), !dbg !4207
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4221
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !913, metadata !DIExpression()), !dbg !4207
  br label %28, !dbg !4222

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4207
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !913, metadata !DIExpression()), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !912, metadata !DIExpression()), !dbg !4207
  %31 = icmp eq ptr %0, null, !dbg !4223
  br i1 %31, label %32, label %33, !dbg !4225

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4226, !tbaa !2972
  br label %33, !dbg !4227

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4228
  %35 = icmp slt i64 %34, %2, !dbg !4230
  br i1 %35, label %36, label %48, !dbg !4231

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4232
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4232
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4232
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !912, metadata !DIExpression()), !dbg !4207
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4233
  br i1 %42, label %47, label %43, !dbg !4233

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4234
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4234
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !913, metadata !DIExpression()), !dbg !4207
  br i1 %45, label %47, label %48, !dbg !4235

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !4236
  unreachable, !dbg !4236

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4207
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !913, metadata !DIExpression()), !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !912, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %0, metadata !4053, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %50, metadata !4054, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %50, metadata !4060, metadata !DIExpression()), !dbg !4239
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4241
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #46, !dbg !4242
  call void @llvm.dbg.value(metadata ptr %52, metadata !3981, metadata !DIExpression()), !dbg !4243
  %53 = icmp eq ptr %52, null, !dbg !4245
  br i1 %53, label %54, label %55, !dbg !4246

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !4247
  unreachable, !dbg !4247

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !906, metadata !DIExpression()), !dbg !4207
  store i64 %49, ptr %1, align 8, !dbg !4248, !tbaa !2972
  ret ptr %52, !dbg !4249
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4250 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 1, metadata !4257, metadata !DIExpression()), !dbg !4258
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %2, metadata !3981, metadata !DIExpression()), !dbg !4261
  %3 = icmp eq ptr %2, null, !dbg !4263
  br i1 %3, label %4, label %5, !dbg !4264

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4265
  unreachable, !dbg !4265

5:                                                ; preds = %1
  ret ptr %2, !dbg !4266
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4267 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4255 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4268
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4268
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4269
  call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !4270
  %4 = icmp eq ptr %3, null, !dbg !4272
  br i1 %4, label %5, label %6, !dbg !4273

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4274
  unreachable, !dbg !4274

6:                                                ; preds = %2
  ret ptr %3, !dbg !4275
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4276 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %0, metadata !4280, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata i64 1, metadata !4283, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata i64 %0, metadata !4286, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 1, metadata !4289, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %0, metadata !4286, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 1, metadata !4289, metadata !DIExpression()), !dbg !4290
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4292
  call void @llvm.dbg.value(metadata ptr %2, metadata !3981, metadata !DIExpression()), !dbg !4293
  %3 = icmp eq ptr %2, null, !dbg !4295
  br i1 %3, label %4, label %5, !dbg !4296

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4297
  unreachable, !dbg !4297

5:                                                ; preds = %1
  ret ptr %2, !dbg !4298
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4281 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4280, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4283, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %0, metadata !4286, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %0, metadata !4286, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4300
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4302
  call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !4303
  %4 = icmp eq ptr %3, null, !dbg !4305
  br i1 %4, label %5, label %6, !dbg !4306

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4307
  unreachable, !dbg !4307

6:                                                ; preds = %2
  ret ptr %3, !dbg !4308
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4309 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4313, metadata !DIExpression()), !dbg !4315
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4316
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4318
  call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !4319
  %4 = icmp eq ptr %3, null, !dbg !4321
  br i1 %4, label %5, label %6, !dbg !4322

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4323
  unreachable, !dbg !4323

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata ptr %0, metadata !4330, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()), !dbg !4332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4334
  ret ptr %3, !dbg !4335
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4336 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %1, metadata !4019, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64 %1, metadata !4021, metadata !DIExpression()), !dbg !4345
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4347
  call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !4348
  %4 = icmp eq ptr %3, null, !dbg !4350
  br i1 %4, label %5, label %6, !dbg !4351

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4352
  unreachable, !dbg !4352

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr %0, metadata !4330, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()), !dbg !4353
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4355
  ret ptr %3, !dbg !4356
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4357 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4361, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4362, metadata !DIExpression()), !dbg !4364
  %3 = add nsw i64 %1, 1, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %3, metadata !4019, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %3, metadata !4021, metadata !DIExpression()), !dbg !4368
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4370
  call void @llvm.dbg.value(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !4371
  %5 = icmp eq ptr %4, null, !dbg !4373
  br i1 %5, label %6, label %7, !dbg !4374

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4375
  unreachable, !dbg !4375

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4363, metadata !DIExpression()), !dbg !4364
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4376
  store i8 0, ptr %8, align 1, !dbg !4377, !tbaa !1079
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata ptr %0, metadata !4330, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()), !dbg !4378
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4380
  ret ptr %4, !dbg !4381
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4382 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4384, metadata !DIExpression()), !dbg !4385
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4386
  %3 = add i64 %2, 1, !dbg !4387
  call void @llvm.dbg.value(metadata ptr %0, metadata !4313, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 %3, metadata !4314, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 %3, metadata !4005, metadata !DIExpression()), !dbg !4390
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4392
  call void @llvm.dbg.value(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !4393
  %5 = icmp eq ptr %4, null, !dbg !4395
  br i1 %5, label %6, label %7, !dbg !4396

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4397
  unreachable, !dbg !4397

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata ptr %0, metadata !4330, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %3, metadata !4331, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4400
  ret ptr %4, !dbg !4401
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4402 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4407, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4404, metadata !DIExpression()), !dbg !4408
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #40, !dbg !4407
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #40, !dbg !4407
  %3 = icmp eq i32 %1, 0, !dbg !4407
  tail call void @llvm.assume(i1 %3), !dbg !4407
  tail call void @abort() #42, !dbg !4409
  unreachable, !dbg !4409
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4410 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4412, metadata !DIExpression()), !dbg !4416
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4413, metadata !DIExpression()), !dbg !4416
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4414, metadata !DIExpression()), !dbg !4416
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #40, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !4415, metadata !DIExpression()), !dbg !4416
  %5 = icmp eq i32 %4, -1, !dbg !4418
  br i1 %5, label %6, label %11, !dbg !4420

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4421
  %8 = load i32, ptr %7, align 4, !dbg !4421, !tbaa !1070
  %9 = icmp eq i32 %8, 12, !dbg !4422
  br i1 %9, label %10, label %11, !dbg !4423

10:                                               ; preds = %6
  tail call void @xalloc_die() #42, !dbg !4424
  unreachable, !dbg !4424

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !4425
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtoul(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #35 !dbg !4426 {
  %6 = alloca ptr, align 8, !DIAssignID !4451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4438, metadata !DIExpression(), metadata !4451, metadata ptr %6, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4433, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4434, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4435, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4436, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4437, metadata !DIExpression()), !dbg !4452
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !4453
  %7 = icmp eq ptr %1, null, !dbg !4454
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4439, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4440, metadata !DIExpression()), !dbg !4455
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4443, metadata !DIExpression()), !dbg !4455
  %8 = tail call ptr @__ctype_b_loc() #43, !dbg !4452
  %9 = load ptr, ptr %8, align 8, !tbaa !1001
  br label %10, !dbg !4456

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4455
  %12 = load i8, ptr %11, align 1, !dbg !4455, !tbaa !1079
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !4443, metadata !DIExpression()), !dbg !4455
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !4440, metadata !DIExpression()), !dbg !4455
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4457
  %15 = load i16, ptr %14, align 2, !dbg !4457, !tbaa !1111
  %16 = and i16 %15, 8192, !dbg !4457
  %17 = icmp eq i16 %16, 0, !dbg !4456
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4458
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !4440, metadata !DIExpression()), !dbg !4455
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4443, metadata !DIExpression()), !dbg !4455
  br i1 %17, label %19, label %10, !dbg !4456, !llvm.loop !4459

19:                                               ; preds = %10
  %.lcssa = phi i8 [ %12, %10 ], !dbg !4455
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4454
  %21 = icmp eq i8 %.lcssa, 45, !dbg !4461
  br i1 %21, label %22, label %23, !dbg !4463

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4464, !tbaa !1001
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #43, !dbg !4466
  store i32 0, ptr %24, align 4, !dbg !4467, !tbaa !1070
  %25 = call i64 @strtoul(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #40, !dbg !4468
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4445, metadata !DIExpression()), !dbg !4452
  %26 = load ptr, ptr %20, align 8, !dbg !4469, !tbaa !1001
  %27 = icmp eq ptr %26, %0, !dbg !4471
  br i1 %27, label %28, label %37, !dbg !4472

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4473
  br i1 %29, label %386, label %30, !dbg !4476

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4477, !tbaa !1079
  %32 = icmp eq i8 %31, 0, !dbg !4477
  br i1 %32, label %386, label %33, !dbg !4478

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !4477
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #41, !dbg !4479
  %36 = icmp eq ptr %35, null, !dbg !4479
  br i1 %36, label %386, label %44, !dbg !4480

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4481, !tbaa !1070
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4483

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4445, metadata !DIExpression()), !dbg !4452
  br label %40, !dbg !4484

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !4445, metadata !DIExpression()), !dbg !4452
  %42 = icmp eq ptr %4, null, !dbg !4486
  br i1 %42, label %43, label %44, !dbg !4488

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4489, !tbaa !2972
  br label %386, !dbg !4491

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4492, !tbaa !1079
  %48 = icmp eq i8 %47, 0, !dbg !4493
  br i1 %48, label %383, label %49, !dbg !4494

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !4492
  %51 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #41, !dbg !4495
  %52 = icmp eq ptr %51, null, !dbg !4495
  br i1 %52, label %53, label %55, !dbg !4497

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4498, !tbaa !2972
  %54 = or disjoint i32 %45, 2, !dbg !4500
  br label %386, !dbg !4501

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4446, metadata !DIExpression()), !dbg !4502
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4449, metadata !DIExpression()), !dbg !4502
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
  ], !dbg !4503

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #41, !dbg !4504
  %58 = icmp eq ptr %57, null, !dbg !4504
  br i1 %58, label %68, label %59, !dbg !4507

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4508
  %61 = load i8, ptr %60, align 1, !dbg !4508, !tbaa !1079
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4509

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4510
  %64 = load i8, ptr %63, align 1, !dbg !4510, !tbaa !1079
  %65 = icmp eq i8 %64, 66, !dbg !4513
  %66 = select i1 %65, i64 3, i64 1, !dbg !4514
  br label %68, !dbg !4514

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4446, metadata !DIExpression()), !dbg !4502
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4449, metadata !DIExpression()), !dbg !4502
  br label %68, !dbg !4515

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4502
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4502
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !4449, metadata !DIExpression()), !dbg !4502
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !4446, metadata !DIExpression()), !dbg !4502
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
  ], !dbg !4516

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4535
  %72 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4537
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4535
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4539
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %73, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i1 %73, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4535
  %76 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4537
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4535
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4539
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4539
  %80 = or i1 %73, %77, !dbg !4540
  call void @llvm.dbg.value(metadata i1 %80, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i1 %80, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4535
  %81 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4537
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4535
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4539
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4539
  %85 = or i1 %80, %82, !dbg !4540
  call void @llvm.dbg.value(metadata i1 %85, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i1 %85, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4535
  %86 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4537
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4535
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4539
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4539
  %90 = or i1 %85, %87, !dbg !4540
  call void @llvm.dbg.value(metadata i1 %90, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i1 %90, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4535
  %91 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4537
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4535
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4539
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4539
  %95 = or i1 %90, %92, !dbg !4540
  call void @llvm.dbg.value(metadata i1 %95, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i1 %95, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4535
  %96 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4537
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4535
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4539
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4539
  %100 = or i1 %95, %97, !dbg !4540
  call void @llvm.dbg.value(metadata i1 %100, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i1 %100, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4525
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4535
  %101 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4537
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4535
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4539
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4539
  %105 = or i1 %100, %102, !dbg !4540
  %106 = zext i1 %105 to i32, !dbg !4540
  call void @llvm.dbg.value(metadata i32 %106, metadata !4517, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4525
  br label %372, !dbg !4541

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 8, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %108 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4546
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4547
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %109, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %109, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %112 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4546
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4547
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4547
  %116 = or i1 %109, %113, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %116, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %116, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %117 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4546
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4547
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4547
  %121 = or i1 %116, %118, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %121, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %121, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %122 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4546
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4547
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4547
  %126 = or i1 %121, %123, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %126, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %126, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %127 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4546
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4547
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4547
  %131 = or i1 %126, %128, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %131, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %131, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %132 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4546
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4547
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4547
  %136 = or i1 %131, %133, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %136, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %136, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %137 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4546
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4547
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4547
  %141 = or i1 %136, %138, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %141, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i1 %141, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4544
  %142 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4546
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4544
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4547
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4547
  %146 = or i1 %141, %143, !dbg !4548
  %147 = zext i1 %146 to i32, !dbg !4548
  call void @llvm.dbg.value(metadata i32 %147, metadata !4517, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  br label %372, !dbg !4541

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 9, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 8, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %149 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4553
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4554
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %150, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 8, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %150, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 8, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %153 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4553
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4554
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4554
  %157 = or i1 %150, %154, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %157, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %157, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %158 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4553
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4554
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4554
  %162 = or i1 %157, %159, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %162, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %162, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %163 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4553
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4554
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4554
  %167 = or i1 %162, %164, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %167, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %167, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %168 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4553
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4554
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4554
  %172 = or i1 %167, %169, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %172, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %172, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %173 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4553
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4554
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4554
  %177 = or i1 %172, %174, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %177, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %177, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %178 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4553
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4554
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4554
  %182 = or i1 %177, %179, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %182, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %182, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %183 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4553
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4554
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4554
  %187 = or i1 %182, %184, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %187, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i1 %187, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4549
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4551
  %188 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4553
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4553
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4551
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4554
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4554
  %192 = or i1 %187, %189, !dbg !4555
  %193 = zext i1 %192 to i32, !dbg !4555
  call void @llvm.dbg.value(metadata i32 %193, metadata !4517, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4549
  br label %372, !dbg !4541

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 10, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 9, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %195 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4560
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4561
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %196, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 9, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %196, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 9, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 8, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %199 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4560
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4561
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4561
  %203 = or i1 %196, %200, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %203, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 8, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %203, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 8, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %204 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4560
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4561
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4561
  %208 = or i1 %203, %205, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %208, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %208, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 7, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %209 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4560
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4561
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4561
  %213 = or i1 %208, %210, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %213, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %213, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %214 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4560
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4561
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4561
  %218 = or i1 %213, %215, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %218, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %218, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %219 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4560
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4561
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4561
  %223 = or i1 %218, %220, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %223, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %223, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %224 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4560
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4561
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4561
  %228 = or i1 %223, %225, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %228, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %228, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %229 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4560
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4561
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4561
  %233 = or i1 %228, %230, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %233, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %233, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %234 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4560
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4561
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4561
  %238 = or i1 %233, %235, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %238, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i1 %238, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4556
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4558
  %239 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4560
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4560
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4558
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4561
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4561
  %243 = or i1 %238, %240, !dbg !4562
  %244 = zext i1 %243 to i32, !dbg !4562
  call void @llvm.dbg.value(metadata i32 %244, metadata !4517, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4556
  br label %372, !dbg !4541

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4565
  %246 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4567
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4565
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4568
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %247, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %247, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4565
  %250 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4567
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4565
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4568
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4568
  %254 = or i1 %247, %251, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %254, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %254, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4565
  %255 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4567
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4565
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4568
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4568
  %259 = or i1 %254, %256, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %259, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %259, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4565
  %260 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4567
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4565
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4568
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4568
  %264 = or i1 %259, %261, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %264, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %264, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4565
  %265 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4567
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4567
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4565
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4568
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4568
  %269 = or i1 %264, %266, !dbg !4569
  %270 = zext i1 %269 to i32, !dbg !4569
  call void @llvm.dbg.value(metadata i32 %270, metadata !4517, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  br label %372, !dbg !4541

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 6, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4572
  %272 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4574
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4572
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4575
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4575
  call void @llvm.dbg.value(metadata i1 %273, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %273, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 5, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4572
  %276 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4574
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4572
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4575
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4575
  %280 = or i1 %273, %277, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %280, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %280, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4572
  %281 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4574
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4572
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4575
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4575
  %285 = or i1 %280, %282, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %285, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %285, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4572
  %286 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4574
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4572
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4575
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4575
  %290 = or i1 %285, %287, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %290, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %290, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4572
  %291 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4574
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4572
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4575
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4575
  %295 = or i1 %290, %292, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %295, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i1 %295, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4572
  %296 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4574
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4574
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4572
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4575
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4575
  %300 = or i1 %295, %297, !dbg !4576
  %301 = zext i1 %300 to i32, !dbg !4576
  call void @llvm.dbg.value(metadata i32 %301, metadata !4517, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4570
  br label %372, !dbg !4541

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 512, metadata !4533, metadata !DIExpression()), !dbg !4577
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4579
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4577
  %304 = shl i64 %46, 9, !dbg !4580
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4580
  %306 = zext i1 %303 to i32, !dbg !4580
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !4450, metadata !DIExpression()), !dbg !4502
  br label %372, !dbg !4581

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i32 1024, metadata !4533, metadata !DIExpression()), !dbg !4582
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4584
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4582
  %309 = shl i64 %46, 10, !dbg !4585
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4585
  %311 = zext i1 %308 to i32, !dbg !4585
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !4450, metadata !DIExpression()), !dbg !4502
  br label %372, !dbg !4586

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4522, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %69, metadata !4523, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4587
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4589
  %313 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4591
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4591
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4589
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4592
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4592
  call void @llvm.dbg.value(metadata i1 %314, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4587
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4587
  call void @llvm.dbg.value(metadata i1 %314, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4587
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4589
  %317 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4591
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4591
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4589
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4592
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4592
  %321 = or i1 %314, %318, !dbg !4593
  call void @llvm.dbg.value(metadata i1 %321, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4587
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4587
  call void @llvm.dbg.value(metadata i1 %321, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4587
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4589
  %322 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4591
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4591
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4589
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4592
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4592
  %326 = or i1 %321, %323, !dbg !4593
  %327 = zext i1 %326 to i32, !dbg !4593
  call void @llvm.dbg.value(metadata i32 %327, metadata !4517, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4587
  br label %372, !dbg !4541

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4522, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %69, metadata !4523, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4594
  %329 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4596
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4596
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4598
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4598
  %333 = zext i1 %330 to i32, !dbg !4598
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4599
  br label %372, !dbg !4541

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4522, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i64 %69, metadata !4523, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4600
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4602
  %335 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4604
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4604
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4602
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4605
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4605
  call void @llvm.dbg.value(metadata i1 %336, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4600
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4600
  call void @llvm.dbg.value(metadata i1 %336, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4600
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4602
  %339 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4604
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4604
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4602
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4605
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4605
  %343 = or i1 %336, %340, !dbg !4606
  %344 = zext i1 %343 to i32, !dbg !4606
  call void @llvm.dbg.value(metadata i32 %344, metadata !4517, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4600
  br label %372, !dbg !4541

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4522, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %69, metadata !4523, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i32 0, metadata !4517, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 4, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4609
  %346 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4611
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4611
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4609
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4612
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4612
  call void @llvm.dbg.value(metadata i1 %347, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i1 %347, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i32 3, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4609
  %350 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4611
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4611
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4609
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4612
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4612
  %354 = or i1 %347, %351, !dbg !4613
  call void @llvm.dbg.value(metadata i1 %354, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i1 %354, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i32 2, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4609
  %355 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4611
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4611
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4609
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4612
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4612
  %359 = or i1 %354, %356, !dbg !4613
  call void @llvm.dbg.value(metadata i1 %359, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i1 %359, metadata !4517, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4607
  call void @llvm.dbg.value(metadata i32 1, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 %69, metadata !4533, metadata !DIExpression()), !dbg !4609
  %360 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4611
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4611
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4609
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4612
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4612
  %364 = or i1 %359, %361, !dbg !4613
  %365 = zext i1 %364 to i32, !dbg !4613
  call void @llvm.dbg.value(metadata i32 %365, metadata !4517, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 0, metadata !4524, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4607
  br label %372, !dbg !4541

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4528, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 2, metadata !4533, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 poison, metadata !4534, metadata !DIExpression()), !dbg !4614
  %367 = shl i64 %46, 1, !dbg !4616
  %368 = icmp sgt i64 %46, -1, !dbg !4616
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4616
  %370 = lshr i64 %46, 63, !dbg !4616
  %371 = trunc i64 %370 to i32, !dbg !4616
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !4450, metadata !DIExpression()), !dbg !4502
  br label %372, !dbg !4617

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4452
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4618
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !4450, metadata !DIExpression()), !dbg !4502
  %375 = or i32 %374, %45, !dbg !4541
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !4445, metadata !DIExpression()), !dbg !4452
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4619
  store ptr %376, ptr %20, align 8, !dbg !4619, !tbaa !1001
  %377 = load i8, ptr %376, align 1, !dbg !4620, !tbaa !1079
  %378 = icmp eq i8 %377, 0, !dbg !4620
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4622
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !4445, metadata !DIExpression()), !dbg !4452
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4623, !tbaa !2972
  %382 = or disjoint i32 %45, 2, !dbg !4624
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !4445, metadata !DIExpression()), !dbg !4452
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4625
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4626
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !4444, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !4445, metadata !DIExpression()), !dbg !4452
  store i64 %384, ptr %3, align 8, !dbg !4627, !tbaa !2972
  br label %386, !dbg !4628

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4452
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !4629
  ret i32 %387, !dbg !4629
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4630 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4634 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4672, metadata !DIExpression()), !dbg !4677
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4678
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4673, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4677
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4679, metadata !DIExpression()), !dbg !4682
  %3 = load i32, ptr %0, align 8, !dbg !4684, !tbaa !1368
  %4 = and i32 %3, 32, !dbg !4685
  %5 = icmp eq i32 %4, 0, !dbg !4685
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4677
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4686
  %7 = icmp eq i32 %6, 0, !dbg !4687
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4676, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4677
  br i1 %5, label %8, label %18, !dbg !4688

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4690
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4673, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4677
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4691
  %11 = xor i1 %7, true, !dbg !4691
  %12 = sext i1 %11 to i32, !dbg !4691
  br i1 %10, label %21, label %13, !dbg !4691

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4692
  %15 = load i32, ptr %14, align 4, !dbg !4692, !tbaa !1070
  %16 = icmp ne i32 %15, 9, !dbg !4693
  %17 = sext i1 %16 to i32, !dbg !4694
  br label %21, !dbg !4694

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4695

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4697
  store i32 0, ptr %20, align 4, !dbg !4699, !tbaa !1070
  br label %21, !dbg !4697

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4677
  ret i32 %22, !dbg !4700
}

; Function Attrs: nounwind
declare !dbg !4701 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4704 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4746
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4743, metadata !DIExpression()), !dbg !4746
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4747
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4744, metadata !DIExpression()), !dbg !4746
  %3 = icmp slt i32 %2, 0, !dbg !4748
  br i1 %3, label %4, label %6, !dbg !4750

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4751
  br label %24, !dbg !4752

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4753
  %8 = icmp eq i32 %7, 0, !dbg !4753
  br i1 %8, label %13, label %9, !dbg !4755

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4756
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4757
  %12 = icmp eq i64 %11, -1, !dbg !4758
  br i1 %12, label %16, label %13, !dbg !4759

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4760
  %15 = icmp eq i32 %14, 0, !dbg !4760
  br i1 %15, label %16, label %18, !dbg !4761

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4743, metadata !DIExpression()), !dbg !4746
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4745, metadata !DIExpression()), !dbg !4746
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4762
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4745, metadata !DIExpression()), !dbg !4746
  br label %24, !dbg !4763

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4764
  %20 = load i32, ptr %19, align 4, !dbg !4764, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4743, metadata !DIExpression()), !dbg !4746
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4745, metadata !DIExpression()), !dbg !4746
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4762
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4745, metadata !DIExpression()), !dbg !4746
  %22 = icmp eq i32 %20, 0, !dbg !4765
  br i1 %22, label %24, label %23, !dbg !4763

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4767, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4745, metadata !DIExpression()), !dbg !4746
  br label %24, !dbg !4769

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4746
  ret i32 %25, !dbg !4770
}

; Function Attrs: nofree nounwind
declare !dbg !4771 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4772 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4773 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4774 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4777 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4815, metadata !DIExpression()), !dbg !4816
  %2 = icmp eq ptr %0, null, !dbg !4817
  br i1 %2, label %6, label %3, !dbg !4819

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4820
  %5 = icmp eq i32 %4, 0, !dbg !4820
  br i1 %5, label %6, label %8, !dbg !4821

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4822
  br label %16, !dbg !4823

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4824, metadata !DIExpression()), !dbg !4829
  %9 = load i32, ptr %0, align 8, !dbg !4831, !tbaa !1368
  %10 = and i32 %9, 256, !dbg !4833
  %11 = icmp eq i32 %10, 0, !dbg !4833
  br i1 %11, label %14, label %12, !dbg !4834

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4835
  br label %14, !dbg !4835

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4836
  br label %16, !dbg !4837

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4816
  ret i32 %17, !dbg !4838
}

; Function Attrs: nofree nounwind
declare !dbg !4839 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4840 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4879, metadata !DIExpression()), !dbg !4885
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4880, metadata !DIExpression()), !dbg !4885
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4881, metadata !DIExpression()), !dbg !4885
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4886
  %5 = load ptr, ptr %4, align 8, !dbg !4886, !tbaa !4887
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4888
  %7 = load ptr, ptr %6, align 8, !dbg !4888, !tbaa !4889
  %8 = icmp eq ptr %5, %7, !dbg !4890
  br i1 %8, label %9, label %27, !dbg !4891

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4892
  %11 = load ptr, ptr %10, align 8, !dbg !4892, !tbaa !1636
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4893
  %13 = load ptr, ptr %12, align 8, !dbg !4893, !tbaa !4894
  %14 = icmp eq ptr %11, %13, !dbg !4895
  br i1 %14, label %15, label %27, !dbg !4896

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4897
  %17 = load ptr, ptr %16, align 8, !dbg !4897, !tbaa !4898
  %18 = icmp eq ptr %17, null, !dbg !4899
  br i1 %18, label %19, label %27, !dbg !4900

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4901
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4902
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4882, metadata !DIExpression()), !dbg !4903
  %22 = icmp eq i64 %21, -1, !dbg !4904
  br i1 %22, label %29, label %23, !dbg !4906

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4907, !tbaa !1368
  %25 = and i32 %24, -17, !dbg !4907
  store i32 %25, ptr %0, align 8, !dbg !4907, !tbaa !1368
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4908
  store i64 %21, ptr %26, align 8, !dbg !4909, !tbaa !4910
  br label %29, !dbg !4911

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4912
  br label %29, !dbg !4913

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4885
  ret i32 %30, !dbg !4914
}

; Function Attrs: nofree nounwind
declare !dbg !4915 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #37 !dbg !4918 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4923, metadata !DIExpression()), !dbg !4926
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4924, metadata !DIExpression()), !dbg !4926
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !4927
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4925, metadata !DIExpression()), !dbg !4926
  store i8 0, ptr %3, align 1, !dbg !4928, !tbaa !1079
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %13, %4 ], !dbg !4926
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4925, metadata !DIExpression()), !dbg !4926
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4923, metadata !DIExpression()), !dbg !4926
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !4929
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !4932
  %12 = or disjoint i8 %11, 48, !dbg !4932
  %13 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !4933
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !4925, metadata !DIExpression()), !dbg !4926
  store i8 %12, ptr %13, align 1, !dbg !4934, !tbaa !1079
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4923, metadata !DIExpression()), !dbg !4926
  %14 = icmp ult i64 %5, 10, !dbg !4935
  br i1 %14, label %15, label %4, !dbg !4936, !llvm.loop !4937

15:                                               ; preds = %4
  %.lcssa = phi ptr [ %13, %4 ], !dbg !4933
  tail call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !4925, metadata !DIExpression()), !dbg !4926
  ret ptr %.lcssa, !dbg !4940
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4941 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4946, metadata !DIExpression()), !dbg !4951
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4947, metadata !DIExpression()), !dbg !4951
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4948, metadata !DIExpression()), !dbg !4951
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4949, metadata !DIExpression()), !dbg !4951
  %5 = icmp eq ptr %1, null, !dbg !4952
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4954
  %7 = select i1 %5, ptr @.str.181, ptr %1, !dbg !4954
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4954
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4948, metadata !DIExpression()), !dbg !4951
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4947, metadata !DIExpression()), !dbg !4951
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4946, metadata !DIExpression()), !dbg !4951
  %9 = icmp eq ptr %3, null, !dbg !4955
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4957
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4949, metadata !DIExpression()), !dbg !4951
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4958
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4950, metadata !DIExpression()), !dbg !4951
  %12 = icmp ult i64 %11, -3, !dbg !4959
  br i1 %12, label %13, label %17, !dbg !4961

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4962
  %15 = icmp eq i32 %14, 0, !dbg !4962
  br i1 %15, label %16, label %29, !dbg !4963

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4964, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr %10, metadata !4971, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i32 0, metadata !4974, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i64 8, metadata !4975, metadata !DIExpression()), !dbg !4976
  store i64 0, ptr %10, align 1, !dbg !4978
  br label %29, !dbg !4979

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4980
  br i1 %18, label %19, label %20, !dbg !4982

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4983
  unreachable, !dbg !4983

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4984

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4986
  br i1 %23, label %29, label %24, !dbg !4987

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4988
  br i1 %25, label %29, label %26, !dbg !4991

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4992, !tbaa !1079
  %28 = zext i8 %27 to i32, !dbg !4993
  store i32 %28, ptr %6, align 4, !dbg !4994, !tbaa !1070
  br label %29, !dbg !4995

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4951
  ret i64 %30, !dbg !4996
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4997 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !939 {
  %4 = alloca i32, align 4, !DIAssignID !5003
  call void @llvm.dbg.assign(metadata i1 undef, metadata !948, metadata !DIExpression(), metadata !5003, metadata ptr %4, metadata !DIExpression()), !dbg !5004
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !945, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !946, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !947, metadata !DIExpression()), !dbg !5005
  %5 = icmp eq ptr %0, null, !dbg !5006
  br i1 %5, label %37, label %6, !dbg !5007

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40, !dbg !5008
  store i32 10, ptr %4, align 4, !dbg !5009, !tbaa !1070, !DIAssignID !5010
  call void @llvm.dbg.assign(metadata i32 10, metadata !948, metadata !DIExpression(), metadata !5010, metadata ptr %4, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.value(metadata ptr null, metadata !5011, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i64 10, metadata !5016, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr null, metadata !5019, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.value(metadata i64 40, metadata !5022, metadata !DIExpression()), !dbg !5023
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !5025
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !951, metadata !DIExpression()), !dbg !5004
  %8 = icmp eq ptr %7, null, !dbg !5026
  br i1 %8, label %35, label %.preheader, !dbg !5028

.preheader:                                       ; preds = %6
  br label %9, !dbg !5029

9:                                                ; preds = %.preheader, %32
  %10 = phi i32 [ %20, %32 ], [ 10, %.preheader ], !dbg !5030
  %11 = phi ptr [ %28, %32 ], [ %7, %.preheader ], !dbg !5031
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !951, metadata !DIExpression()), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !952, metadata !DIExpression()), !dbg !5032
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #40, !dbg !5033
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !954, metadata !DIExpression()), !dbg !5032
  %13 = icmp slt i32 %12, 0, !dbg !5034
  %14 = load i32, ptr %4, align 4, !dbg !5036, !tbaa !1070
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !5037
  br i1 %16, label %17, label %19, !dbg !5037

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !5038
  store i32 %18, ptr %4, align 4, !dbg !5038, !tbaa !1070, !DIAssignID !5039
  call void @llvm.dbg.assign(metadata i32 %18, metadata !948, metadata !DIExpression(), metadata !5039, metadata ptr %4, metadata !DIExpression()), !dbg !5004
  br label %19, !dbg !5040

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !5036
  call void @llvm.dbg.value(metadata ptr %11, metadata !5011, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i32 %20, metadata !5016, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !5041
  %21 = icmp slt i32 %20, 0, !dbg !5043
  br i1 %21, label %22, label %24, !dbg !5045

22:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %11, %19 ], !dbg !5031
  %23 = tail call ptr @__errno_location() #43, !dbg !5046
  store i32 12, ptr %23, align 4, !dbg !5048, !tbaa !1070
  tail call void @llvm.dbg.value(metadata ptr null, metadata !955, metadata !DIExpression()), !dbg !5032
  br label %30, !dbg !5049

24:                                               ; preds = %19
  %25 = zext nneg i32 %20 to i64, !dbg !5036
  call void @llvm.dbg.value(metadata i32 %20, metadata !5016, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !5041
  %26 = shl nuw nsw i64 %25, 2, !dbg !5050
  call void @llvm.dbg.value(metadata ptr %11, metadata !5019, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.value(metadata i64 %26, metadata !5022, metadata !DIExpression()), !dbg !5051
  %27 = call i64 @llvm.umax.i64(i64 %26, i64 1), !dbg !5053
  %28 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %27) #46, !dbg !5054
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !955, metadata !DIExpression()), !dbg !5032
  %29 = icmp eq ptr %28, null, !dbg !5055
  br i1 %29, label %.loopexit1, label %32, !dbg !5049

.loopexit1:                                       ; preds = %24
  %.lcssa3 = phi ptr [ %11, %24 ], !dbg !5031
  br label %30, !dbg !5057

30:                                               ; preds = %.loopexit1, %22
  %31 = phi ptr [ %.lcssa3, %.loopexit1 ], [ %.lcssa2, %22 ]
  call void @free(ptr noundef nonnull %31) #40, !dbg !5057
  br label %35, !dbg !5059

32:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !951, metadata !DIExpression()), !dbg !5004
  %33 = icmp sgt i32 %12, -1, !dbg !5060
  br i1 %33, label %34, label %9, !dbg !5062, !llvm.loop !5063

34:                                               ; preds = %32
  %.lcssa9 = phi ptr [ %28, %32 ], !dbg !5054
  %.lcssa7 = phi i32 [ %20, %32 ], !dbg !5036
  store ptr %.lcssa9, ptr %2, align 8, !dbg !5065, !tbaa !1001
  br label %35, !dbg !5067

35:                                               ; preds = %34, %30, %6
  %36 = phi i32 [ -1, %6 ], [ %.lcssa7, %34 ], [ -1, %30 ], !dbg !5004
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40, !dbg !5068
  br label %99

37:                                               ; preds = %3
  %38 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #40, !dbg !5069
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !956, metadata !DIExpression()), !dbg !5005
  %39 = icmp slt i32 %38, 0, !dbg !5070
  br i1 %39, label %40, label %50, !dbg !5071

40:                                               ; preds = %37
  %41 = tail call ptr @__errno_location() #43, !dbg !5072
  %42 = load i32, ptr %41, align 4, !dbg !5072, !tbaa !1070
  %43 = icmp eq i32 %42, 38, !dbg !5073
  br i1 %43, label %44, label %99, !dbg !5074

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr null, metadata !5011, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata i64 1, metadata !5016, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata ptr null, metadata !5019, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i64 4, metadata !5022, metadata !DIExpression()), !dbg !5077
  %45 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !5079
  tail call void @llvm.dbg.value(metadata ptr %45, metadata !957, metadata !DIExpression()), !dbg !5080
  %46 = icmp eq ptr %45, null, !dbg !5081
  br i1 %46, label %99, label %47, !dbg !5083

47:                                               ; preds = %44
  store ptr %45, ptr %2, align 8, !dbg !5084, !tbaa !1001
  store i32 %1, ptr %45, align 4, !dbg !5086, !tbaa !1070
  %48 = icmp ne i32 %1, -1, !dbg !5087
  %49 = zext i1 %48 to i32, !dbg !5087
  br label %99

50:                                               ; preds = %37
  %51 = icmp eq i32 %38, 0, !dbg !5088
  %52 = icmp ne i32 %1, -1
  %53 = or i1 %52, %51, !dbg !5090
  %54 = zext i1 %53 to i32, !dbg !5090
  %55 = add nuw nsw i32 %38, %54, !dbg !5090
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !956, metadata !DIExpression()), !dbg !5005
  %56 = zext nneg i32 %55 to i64, !dbg !5091
  call void @llvm.dbg.value(metadata ptr null, metadata !5011, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata i64 %56, metadata !5016, metadata !DIExpression()), !dbg !5092
  %57 = shl nuw nsw i64 %56, 2, !dbg !5094
  call void @llvm.dbg.value(metadata ptr null, metadata !5019, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata i64 %57, metadata !5022, metadata !DIExpression()), !dbg !5095
  %58 = tail call i64 @llvm.umax.i64(i64 %57, i64 1), !dbg !5097
  %59 = tail call ptr @malloc(i64 %58), !dbg !5098
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !962, metadata !DIExpression()), !dbg !5005
  %60 = icmp eq ptr %59, null, !dbg !5099
  br i1 %60, label %99, label %61, !dbg !5101

61:                                               ; preds = %50
  %62 = sext i1 %52 to i32, !dbg !5102
  %63 = add nsw i32 %55, %62, !dbg !5103
  %64 = zext i1 %52 to i64
  %65 = getelementptr inbounds i32, ptr %59, i64 %64, !dbg !5104
  %66 = tail call i32 @getgroups(i32 noundef %63, ptr noundef nonnull %65) #40, !dbg !5105
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !963, metadata !DIExpression()), !dbg !5005
  %67 = icmp slt i32 %66, 0, !dbg !5106
  br i1 %67, label %68, label %69, !dbg !5108

68:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %59) #40, !dbg !5109
  br label %99, !dbg !5111

69:                                               ; preds = %61
  br i1 %52, label %70, label %72, !dbg !5112

70:                                               ; preds = %69
  store i32 %1, ptr %59, align 4, !dbg !5114, !tbaa !1070
  %71 = add nuw nsw i32 %66, 1, !dbg !5116
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !963, metadata !DIExpression()), !dbg !5005
  br label %72, !dbg !5117

72:                                               ; preds = %70, %69
  %73 = phi i32 [ %71, %70 ], [ %66, %69 ], !dbg !5005
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !963, metadata !DIExpression()), !dbg !5005
  store ptr %59, ptr %2, align 8, !dbg !5118, !tbaa !1001
  %74 = icmp ugt i32 %73, 1, !dbg !5119
  br i1 %74, label %75, label %99, !dbg !5120

75:                                               ; preds = %72
  %76 = load i32, ptr %59, align 4, !dbg !5121, !tbaa !1070
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !964, metadata !DIExpression()), !dbg !5122
  %77 = zext nneg i32 %73 to i64
  %78 = getelementptr inbounds i32, ptr %59, i64 %77, !dbg !5123
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !967, metadata !DIExpression()), !dbg !5122
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5124
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !963, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !962, metadata !DIExpression()), !dbg !5005
  %79 = getelementptr inbounds i32, ptr %59, i64 1, !dbg !5125
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !968, metadata !DIExpression()), !dbg !5124
  br label %80, !dbg !5126

80:                                               ; preds = %75, %93
  %81 = phi i32 [ %94, %93 ], [ %76, %75 ]
  %82 = phi ptr [ %97, %93 ], [ %79, %75 ]
  %83 = phi i32 [ %96, %93 ], [ %73, %75 ]
  %84 = phi ptr [ %95, %93 ], [ %59, %75 ]
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !963, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata ptr %84, metadata !962, metadata !DIExpression()), !dbg !5005
  %85 = load i32, ptr %82, align 4, !dbg !5127, !tbaa !1070
  %86 = icmp eq i32 %85, %76, !dbg !5131
  %87 = icmp eq i32 %85, %81
  %88 = select i1 %86, i1 true, i1 %87, !dbg !5132
  br i1 %88, label %89, label %91, !dbg !5132

89:                                               ; preds = %80
  %90 = add nsw i32 %83, -1, !dbg !5133
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !963, metadata !DIExpression()), !dbg !5005
  br label %93, !dbg !5134

91:                                               ; preds = %80
  %92 = getelementptr inbounds i32, ptr %84, i64 1, !dbg !5135
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !962, metadata !DIExpression()), !dbg !5005
  store i32 %85, ptr %92, align 4, !dbg !5136, !tbaa !1070
  br label %93

93:                                               ; preds = %89, %91
  %94 = phi i32 [ %81, %89 ], [ %85, %91 ]
  %95 = phi ptr [ %84, %89 ], [ %92, %91 ], !dbg !5005
  %96 = phi i32 [ %90, %89 ], [ %83, %91 ], !dbg !5005
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !963, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !962, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5124
  %97 = getelementptr inbounds i32, ptr %82, i64 1, !dbg !5125
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !968, metadata !DIExpression()), !dbg !5124
  %98 = icmp ult ptr %97, %78, !dbg !5137
  br i1 %98, label %80, label %.loopexit, !dbg !5126, !llvm.loop !5138

.loopexit:                                        ; preds = %93
  %.lcssa = phi i32 [ %96, %93 ], !dbg !5005
  br label %99, !dbg !5140

99:                                               ; preds = %.loopexit, %44, %40, %47, %68, %72, %50, %35
  %100 = phi i32 [ %36, %35 ], [ %49, %47 ], [ -1, %50 ], [ -1, %68 ], [ %73, %72 ], [ -1, %40 ], [ -1, %44 ], [ %.lcssa, %.loopexit ], !dbg !5005
  ret i32 %100, !dbg !5140
}

declare !dbg !5141 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5145 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5147, metadata !DIExpression()), !dbg !5151
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5148, metadata !DIExpression()), !dbg !5151
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5149, metadata !DIExpression()), !dbg !5151
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5152
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5152
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5150, metadata !DIExpression()), !dbg !5151
  br i1 %5, label %6, label %8, !dbg !5154

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5155
  store i32 12, ptr %7, align 4, !dbg !5157, !tbaa !1070
  br label %12, !dbg !5158

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5152
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata ptr %0, metadata !5159, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.value(metadata i64 %9, metadata !5162, metadata !DIExpression()), !dbg !5163
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5165
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !5166
  br label %12, !dbg !5167

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5151
  ret ptr %13, !dbg !5168
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5169 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5178
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5174, metadata !DIExpression(), metadata !5178, metadata ptr %2, metadata !DIExpression()), !dbg !5179
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5173, metadata !DIExpression()), !dbg !5179
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5180
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5181
  %4 = icmp eq i32 %3, 0, !dbg !5181
  br i1 %4, label %5, label %12, !dbg !5183

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5184, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.value(metadata ptr @.str.188, metadata !5187, metadata !DIExpression()), !dbg !5188
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.188, i64 2), !dbg !5191
  %7 = icmp eq i32 %6, 0, !dbg !5192
  br i1 %7, label %11, label %8, !dbg !5193

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5184, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.value(metadata ptr @.str.1.189, metadata !5187, metadata !DIExpression()), !dbg !5194
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.189, i64 6), !dbg !5196
  %10 = icmp eq i32 %9, 0, !dbg !5197
  br i1 %10, label %11, label %12, !dbg !5198

11:                                               ; preds = %8, %5
  br label %12, !dbg !5199

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5179
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5200
  ret i1 %13, !dbg !5200
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5201 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5205, metadata !DIExpression()), !dbg !5208
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5206, metadata !DIExpression()), !dbg !5208
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5207, metadata !DIExpression()), !dbg !5208
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5209
  ret i32 %4, !dbg !5210
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5211 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5215, metadata !DIExpression()), !dbg !5216
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5217
  ret ptr %2, !dbg !5218
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5219 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5221, metadata !DIExpression()), !dbg !5223
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5224
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5222, metadata !DIExpression()), !dbg !5223
  ret ptr %2, !dbg !5225
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5226 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5228, metadata !DIExpression()), !dbg !5235
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5229, metadata !DIExpression()), !dbg !5235
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5230, metadata !DIExpression()), !dbg !5235
  call void @llvm.dbg.value(metadata i32 %0, metadata !5221, metadata !DIExpression()), !dbg !5236
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5238
  call void @llvm.dbg.value(metadata ptr %4, metadata !5222, metadata !DIExpression()), !dbg !5236
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5231, metadata !DIExpression()), !dbg !5235
  %5 = icmp eq ptr %4, null, !dbg !5239
  br i1 %5, label %6, label %9, !dbg !5240

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5241
  br i1 %7, label %19, label %8, !dbg !5244

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5245, !tbaa !1079
  br label %19, !dbg !5246

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5247
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5232, metadata !DIExpression()), !dbg !5248
  %11 = icmp ult i64 %10, %2, !dbg !5249
  br i1 %11, label %12, label %14, !dbg !5251

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5252
  call void @llvm.dbg.value(metadata ptr %1, metadata !5254, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.value(metadata ptr %4, metadata !5257, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.value(metadata i64 %13, metadata !5258, metadata !DIExpression()), !dbg !5259
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5261
  br label %19, !dbg !5262

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5263
  br i1 %15, label %19, label %16, !dbg !5266

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5267
  call void @llvm.dbg.value(metadata ptr %1, metadata !5254, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata ptr %4, metadata !5257, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i64 %17, metadata !5258, metadata !DIExpression()), !dbg !5269
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5271
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5272
  store i8 0, ptr %18, align 1, !dbg !5273, !tbaa !1079
  br label %19, !dbg !5274

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5275
  ret i32 %20, !dbg !5276
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!99, !855, !492, !496, !511, !821, !858, !860, !567, !581, !632, !862, !874, !813, !881, !916, !918, !920, !924, !926, !928, !930, !932, !837, !935, !973, !975, !977, !979}
!llvm.ident = !{!981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981}
!llvm.module.flags = !{!982, !983, !984, !985, !986, !987, !988, !989}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/id.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4d6d8f8486b7af02f11b43ac1fb9adde")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!105 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!106 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!136 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!201 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
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
!238 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !241)
!240 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!460 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!510 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !511, file: !512, line: 66, type: !562, isLocal: false, isDefinition: true)
!511 = distinct !DICompileUnit(language: DW_LANG_C11, file: !512, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !513, globals: !514, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!513 = !{!125, !132}
!514 = !{!515, !517, !541, !543, !545, !547, !509, !549, !551, !553, !555, !560}
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !512, line: 272, type: !292, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "old_file_name", scope: !519, file: !512, line: 304, type: !130, isLocal: true, isDefinition: true)
!519 = distinct !DISubprogram(name: "verror_at_line", scope: !512, file: !512, line: 298, type: !520, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !534)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !103, !103, !130, !109, !130, !522}
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !523, line: 52, baseType: !524)
!523 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !525, line: 12, baseType: !526)
!525 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !512, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !528)
!528 = !{!529, !530, !531, !532, !533}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !527, file: !512, baseType: !125, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !527, file: !512, baseType: !125, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !527, file: !512, baseType: !125, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !527, file: !512, baseType: !103, size: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !527, file: !512, baseType: !103, size: 32, offset: 224)
!534 = !{!535, !536, !537, !538, !539, !540}
!535 = !DILocalVariable(name: "status", arg: 1, scope: !519, file: !512, line: 298, type: !103)
!536 = !DILocalVariable(name: "errnum", arg: 2, scope: !519, file: !512, line: 298, type: !103)
!537 = !DILocalVariable(name: "file_name", arg: 3, scope: !519, file: !512, line: 298, type: !130)
!538 = !DILocalVariable(name: "line_number", arg: 4, scope: !519, file: !512, line: 298, type: !109)
!539 = !DILocalVariable(name: "message", arg: 5, scope: !519, file: !512, line: 298, type: !130)
!540 = !DILocalVariable(name: "args", arg: 6, scope: !519, file: !512, line: 298, type: !522)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "old_line_number", scope: !519, file: !512, line: 305, type: !109, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !512, line: 338, type: !299, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !331, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !309, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "error_message_count", scope: !511, file: !512, line: 69, type: !109, isLocal: false, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !511, file: !512, line: 295, type: !103, isLocal: false, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !326, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 21)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !512, line: 214, type: !292, isLocal: true, isDefinition: true)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null}
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "program_name", scope: !567, file: !568, line: 31, type: !130, isLocal: false, isDefinition: true)
!567 = distinct !DICompileUnit(language: DW_LANG_C11, file: !568, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !569, globals: !570, splitDebugInlining: false, nameTableKind: None)
!568 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!569 = !{!125, !124}
!570 = !{!565, !571, !573}
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !568, line: 46, type: !331, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !568, line: 49, type: !299, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "utf07FF", scope: !577, file: !578, line: 46, type: !605, isLocal: true, isDefinition: true)
!577 = distinct !DISubprogram(name: "proper_name_lite", scope: !578, file: !578, line: 38, type: !579, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !583)
!578 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!579 = !DISubroutineType(types: !580)
!580 = !{!130, !130, !130}
!581 = distinct !DICompileUnit(language: DW_LANG_C11, file: !578, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !582, splitDebugInlining: false, nameTableKind: None)
!582 = !{!575}
!583 = !{!584, !585, !586, !587, !592}
!584 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !577, file: !578, line: 38, type: !130)
!585 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !577, file: !578, line: 38, type: !130)
!586 = !DILocalVariable(name: "translation", scope: !577, file: !578, line: 40, type: !130)
!587 = !DILocalVariable(name: "w", scope: !577, file: !578, line: 47, type: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !589, line: 37, baseType: !590)
!589 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !136, line: 57, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !136, line: 42, baseType: !109)
!592 = !DILocalVariable(name: "mbs", scope: !577, file: !578, line: 48, type: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !594, line: 6, baseType: !595)
!594 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !596, line: 21, baseType: !597)
!596 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 13, size: 64, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !597, file: !596, line: 15, baseType: !103, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !597, file: !596, line: 20, baseType: !601, size: 32, offset: 32)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !596, line: 16, size: 32, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !601, file: !596, line: 18, baseType: !109, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !601, file: !596, line: 19, baseType: !299, size: 32)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 16, elements: !310)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !608, line: 78, type: !331, isLocal: true, isDefinition: true)
!608 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !608, line: 79, type: !304, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !608, line: 80, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 13)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !608, line: 81, type: !613, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !608, line: 82, type: !191, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !608, line: 83, type: !309, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !608, line: 84, type: !331, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !608, line: 85, type: !326, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !608, line: 86, type: !326, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !608, line: 87, type: !331, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !632, file: !608, line: 76, type: !718, isLocal: false, isDefinition: true)
!632 = distinct !DICompileUnit(language: DW_LANG_C11, file: !608, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !633, retainedTypes: !653, globals: !654, splitDebugInlining: false, nameTableKind: None)
!633 = !{!634, !648, !107}
!634 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !635, line: 42, baseType: !109, size: 32, elements: !636)
!635 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!637 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!638 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!639 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!640 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!641 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!642 = !DIEnumerator(name: "c_quoting_style", value: 5)
!643 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!644 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!645 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!646 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!647 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!648 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !635, line: 254, baseType: !109, size: 32, elements: !649)
!649 = !{!650, !651, !652}
!650 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!651 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!652 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!653 = !{!125, !103, !126, !127}
!654 = !{!606, !609, !611, !616, !618, !620, !622, !624, !626, !628, !630, !655, !659, !669, !671, !676, !678, !680, !682, !684, !707, !714, !716}
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !632, file: !608, line: 92, type: !657, isLocal: false, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 320, elements: !85)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !632, file: !608, line: 1040, type: !661, isLocal: false, isDefinition: true)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !608, line: 56, size: 448, elements: !662)
!662 = !{!663, !664, !665, !667, !668}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !661, file: !608, line: 59, baseType: !634, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !608, line: 62, baseType: !103, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !661, file: !608, line: 66, baseType: !666, size: 256, offset: 64)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !332)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !661, file: !608, line: 69, baseType: !130, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !661, file: !608, line: 72, baseType: !130, size: 64, offset: 384)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !632, file: !608, line: 107, type: !661, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "slot0", scope: !632, file: !608, line: 831, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 256)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !608, line: 321, type: !309, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !608, line: 357, type: !309, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !608, line: 358, type: !309, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !608, line: 199, type: !326, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "quote", scope: !686, file: !608, line: 228, type: !705, isLocal: true, isDefinition: true)
!686 = distinct !DISubprogram(name: "gettext_quote", scope: !608, file: !608, line: 197, type: !687, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!130, !130, !634}
!689 = !{!690, !691, !692, !693, !694}
!690 = !DILocalVariable(name: "msgid", arg: 1, scope: !686, file: !608, line: 197, type: !130)
!691 = !DILocalVariable(name: "s", arg: 2, scope: !686, file: !608, line: 197, type: !634)
!692 = !DILocalVariable(name: "translation", scope: !686, file: !608, line: 199, type: !130)
!693 = !DILocalVariable(name: "w", scope: !686, file: !608, line: 229, type: !588)
!694 = !DILocalVariable(name: "mbs", scope: !686, file: !608, line: 230, type: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !594, line: 6, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !596, line: 21, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 13, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !697, file: !596, line: 15, baseType: !103, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !697, file: !596, line: 20, baseType: !701, size: 32, offset: 32)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !596, line: 16, size: 32, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !701, file: !596, line: 18, baseType: !109, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !701, file: !596, line: 19, baseType: !299, size: 32)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !706)
!706 = !{!311, !301}
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "slotvec", scope: !632, file: !608, line: 834, type: !709, isLocal: true, isDefinition: true)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !608, line: 823, size: 128, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !710, file: !608, line: 825, baseType: !127, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !710, file: !608, line: 826, baseType: !124, size: 64, offset: 64)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "nslots", scope: !632, file: !608, line: 832, type: !103, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "slotvec0", scope: !632, file: !608, line: 833, type: !710, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 704, elements: !720)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!720 = !{!721}
!721 = !DISubrange(count: 11)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !724, line: 274, type: !380, isLocal: true, isDefinition: true)
!724 = !DIFile(filename: "lib/userspec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9b1d112c5d74602907b912457199dc83")
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !724, line: 160, type: !613, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !724, line: 165, type: !79, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !724, line: 169, type: !613, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !724, line: 202, type: !145, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !724, line: 229, type: !326, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !737, line: 67, type: !390, isLocal: true, isDefinition: true)
!737 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !737, line: 69, type: !326, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !737, line: 83, type: !326, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !737, line: 83, type: !299, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !737, line: 85, type: !309, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !737, line: 88, type: !748, isLocal: true, isDefinition: true)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 171)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !737, line: 88, type: !480, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !737, line: 105, type: !155, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !737, line: 109, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 23)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !737, line: 113, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 28)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !737, line: 120, type: !767, isLocal: true, isDefinition: true)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 32)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !737, line: 127, type: !772, isLocal: true, isDefinition: true)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 36)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !737, line: 134, type: !350, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !737, line: 142, type: !162, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !737, line: 150, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 48)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !737, line: 159, type: !786, isLocal: true, isDefinition: true)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 52)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !737, line: 170, type: !791, isLocal: true, isDefinition: true)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 60)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !737, line: 248, type: !191, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !737, line: 248, type: !369, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !737, line: 254, type: !191, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !737, line: 254, type: !145, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !737, line: 254, type: !350, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !737, line: 259, type: !3, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !737, line: 259, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 29)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !813, file: !814, line: 26, type: !816, isLocal: false, isDefinition: true)
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !815, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!815 = !{!811}
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 376, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 47)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "exit_failure", scope: !821, file: !822, line: 24, type: !824, isLocal: false, isDefinition: true)
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !823, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!823 = !{!819}
!824 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !827, line: 34, type: !19, isLocal: true, isDefinition: true)
!827 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !827, line: 34, type: !326, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !827, line: 34, type: !181, isLocal: true, isDefinition: true)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !834, line: 108, type: !79, isLocal: true, isDefinition: true)
!834 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "internal_state", scope: !837, file: !834, line: 97, type: !840, isLocal: true, isDefinition: true)
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !838, globals: !839, splitDebugInlining: false, nameTableKind: None)
!838 = !{!125, !127, !132}
!839 = !{!832, !835}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !594, line: 6, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !596, line: 21, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 13, size: 64, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !842, file: !596, line: 15, baseType: !103, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !842, file: !596, line: 20, baseType: !846, size: 32, offset: 32)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !842, file: !596, line: 16, size: 32, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !846, file: !596, line: 18, baseType: !109, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !846, file: !596, line: 19, baseType: !299, size: 32)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !852, line: 35, type: !309, isLocal: true, isDefinition: true)
!852 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !852, line: 35, type: !304, isLocal: true, isDefinition: true)
!855 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/group-list.o -MD -MP -MF src/.deps/group-list.Tpo -c src/group-list.c -o src/.group-list.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !856, globals: !857, splitDebugInlining: false, nameTableKind: None)
!856 = !{!125, !133, !132}
!857 = !{!473, !476, !478, !483, !485}
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-userspec.o -MD -MP -MF lib/.deps/libcoreutils_a-userspec.Tpo -c lib/userspec.c -o lib/.libcoreutils_a-userspec.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !863, retainedTypes: !872, globals: !873, splitDebugInlining: false, nameTableKind: None)
!863 = !{!864}
!864 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !865, line: 30, baseType: !109, size: 32, elements: !866)
!865 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!866 = !{!867, !868, !869, !870, !871}
!867 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!868 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!869 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!870 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!871 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!872 = !{!125, !200, !207}
!873 = !{!722, !725, !727, !729, !731, !733}
!874 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !875, retainedTypes: !879, globals: !880, splitDebugInlining: false, nameTableKind: None)
!875 = !{!876}
!876 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !737, line: 40, baseType: !109, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!879 = !{!125}
!880 = !{!735, !738, !740, !742, !744, !746, !751, !753, !755, !760, !765, !770, !775, !777, !779, !784, !789, !794, !796, !798, !800, !802, !804, !806}
!881 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !883, retainedTypes: !915, splitDebugInlining: false, nameTableKind: None)
!882 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!883 = !{!884, !896}
!884 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !885, file: !882, line: 188, baseType: !109, size: 32, elements: !894)
!885 = distinct !DISubprogram(name: "x2nrealloc", scope: !882, file: !882, line: 176, type: !886, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !889)
!886 = !DISubroutineType(types: !887)
!887 = !{!125, !125, !888, !127}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!889 = !{!890, !891, !892, !893}
!890 = !DILocalVariable(name: "p", arg: 1, scope: !885, file: !882, line: 176, type: !125)
!891 = !DILocalVariable(name: "pn", arg: 2, scope: !885, file: !882, line: 176, type: !888)
!892 = !DILocalVariable(name: "s", arg: 3, scope: !885, file: !882, line: 176, type: !127)
!893 = !DILocalVariable(name: "n", scope: !885, file: !882, line: 178, type: !127)
!894 = !{!895}
!895 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!896 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !897, file: !882, line: 228, baseType: !109, size: 32, elements: !894)
!897 = distinct !DISubprogram(name: "xpalloc", scope: !882, file: !882, line: 223, type: !898, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !905)
!898 = !DISubroutineType(types: !899)
!899 = !{!125, !125, !900, !901, !903, !901}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !902, line: 130, baseType: !903)
!902 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !904, line: 18, baseType: !263)
!904 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913, !914}
!906 = !DILocalVariable(name: "pa", arg: 1, scope: !897, file: !882, line: 223, type: !125)
!907 = !DILocalVariable(name: "pn", arg: 2, scope: !897, file: !882, line: 223, type: !900)
!908 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !897, file: !882, line: 223, type: !901)
!909 = !DILocalVariable(name: "n_max", arg: 4, scope: !897, file: !882, line: 223, type: !903)
!910 = !DILocalVariable(name: "s", arg: 5, scope: !897, file: !882, line: 223, type: !901)
!911 = !DILocalVariable(name: "n0", scope: !897, file: !882, line: 230, type: !901)
!912 = !DILocalVariable(name: "n", scope: !897, file: !882, line: 237, type: !901)
!913 = !DILocalVariable(name: "nbytes", scope: !897, file: !882, line: 248, type: !901)
!914 = !DILocalVariable(name: "adjusted_nbytes", scope: !897, file: !882, line: 252, type: !901)
!915 = !{!124, !125}
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !917, splitDebugInlining: false, nameTableKind: None)
!917 = !{!825, !828, !830}
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-xgetgroups.Tpo -c lib/xgetgroups.c -o lib/.libcoreutils_a-xgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoul.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoul.Tpo -c lib/xstrtoul.c -o lib/.libcoreutils_a-xstrtoul.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !922, retainedTypes: !923, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/xstrtoul.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b318e5928e8382cfa3ae094c8d00222")
!922 = !{!864, !107}
!923 = !{!103, !126, !124, !129}
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!925 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !927, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !879, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !879, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-umaxtostr.o -MD -MP -MF lib/.deps/libcoreutils_a-umaxtostr.Tpo -c lib/umaxtostr.c -o lib/.libcoreutils_a-umaxtostr.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !934, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!934 = !{!133}
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mgetgroups.o -MD -MP -MF lib/.deps/libcoreutils_a-mgetgroups.Tpo -c lib/mgetgroups.c -o lib/.libcoreutils_a-mgetgroups.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !937, retainedTypes: !972, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!937 = !{!938}
!938 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !939, file: !936, line: 79, baseType: !109, size: 32, elements: !970)
!939 = distinct !DISubprogram(name: "mgetgroups", scope: !936, file: !936, line: 66, type: !940, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !944)
!940 = !DISubroutineType(types: !941)
!941 = !{!103, !130, !207, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!944 = !{!945, !946, !947, !948, !951, !952, !954, !955, !956, !957, !962, !963, !964, !967, !968}
!945 = !DILocalVariable(name: "username", arg: 1, scope: !939, file: !936, line: 66, type: !130)
!946 = !DILocalVariable(name: "gid", arg: 2, scope: !939, file: !936, line: 66, type: !207)
!947 = !DILocalVariable(name: "groups", arg: 3, scope: !939, file: !936, line: 66, type: !942)
!948 = !DILocalVariable(name: "max_n_groups", scope: !949, file: !936, line: 80, type: !103)
!949 = distinct !DILexicalBlock(scope: !950, file: !936, line: 78, column: 5)
!950 = distinct !DILexicalBlock(scope: !939, file: !936, line: 77, column: 7)
!951 = !DILocalVariable(name: "g", scope: !949, file: !936, line: 82, type: !943)
!952 = !DILocalVariable(name: "last_n_groups", scope: !953, file: !936, line: 88, type: !103)
!953 = distinct !DILexicalBlock(scope: !949, file: !936, line: 87, column: 9)
!954 = !DILocalVariable(name: "ng", scope: !953, file: !936, line: 91, type: !103)
!955 = !DILocalVariable(name: "h", scope: !953, file: !936, line: 98, type: !943)
!956 = !DILocalVariable(name: "max_n_groups", scope: !939, file: !936, line: 118, type: !103)
!957 = !DILocalVariable(name: "g", scope: !958, file: !936, line: 129, type: !943)
!958 = distinct !DILexicalBlock(scope: !959, file: !936, line: 128, column: 9)
!959 = distinct !DILexicalBlock(scope: !960, file: !936, line: 127, column: 11)
!960 = distinct !DILexicalBlock(scope: !961, file: !936, line: 126, column: 5)
!961 = distinct !DILexicalBlock(scope: !939, file: !936, line: 125, column: 7)
!962 = !DILocalVariable(name: "g", scope: !939, file: !936, line: 142, type: !943)
!963 = !DILocalVariable(name: "ng", scope: !939, file: !936, line: 146, type: !103)
!964 = !DILocalVariable(name: "first", scope: !965, file: !936, line: 183, type: !207)
!965 = distinct !DILexicalBlock(scope: !966, file: !936, line: 182, column: 5)
!966 = distinct !DILexicalBlock(scope: !939, file: !936, line: 181, column: 7)
!967 = !DILocalVariable(name: "groups_end", scope: !965, file: !936, line: 184, type: !943)
!968 = !DILocalVariable(name: "next", scope: !969, file: !936, line: 186, type: !943)
!969 = distinct !DILexicalBlock(scope: !965, file: !936, line: 186, column: 7)
!970 = !{!971}
!971 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!972 = !{!125, !207}
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !879, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!975 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !976, splitDebugInlining: false, nameTableKind: None)
!976 = !{!850, !853}
!977 = distinct !DICompileUnit(language: DW_LANG_C11, file: !978, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!978 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!979 = distinct !DICompileUnit(language: DW_LANG_C11, file: !980, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !879, splitDebugInlining: false, nameTableKind: None)
!980 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!981 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!982 = !{i32 7, !"Dwarf Version", i32 5}
!983 = !{i32 2, !"Debug Info Version", i32 3}
!984 = !{i32 1, !"wchar_size", i32 4}
!985 = !{i32 8, !"PIC Level", i32 2}
!986 = !{i32 7, !"PIE Level", i32 2}
!987 = !{i32 7, !"uwtable", i32 2}
!988 = !{i32 7, !"frame-pointer", i32 1}
!989 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!990 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 88, type: !991, scopeLine: 89, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !103}
!993 = !{!994}
!994 = !DILocalVariable(name: "status", arg: 1, scope: !990, file: !2, line: 88, type: !103)
!995 = !DILocation(line: 0, scope: !990)
!996 = !DILocation(line: 90, column: 14, scope: !997)
!997 = distinct !DILexicalBlock(scope: !990, file: !2, line: 90, column: 7)
!998 = !DILocation(line: 90, column: 7, scope: !990)
!999 = !DILocation(line: 91, column: 5, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !2, line: 91, column: 5)
!1001 = !{!1002, !1002, i64 0}
!1002 = !{!"any pointer", !1003, i64 0}
!1003 = !{!"omnipotent char", !1004, i64 0}
!1004 = !{!"Simple C/C++ TBAA"}
!1005 = !DILocation(line: 94, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !997, file: !2, line: 93, column: 5)
!1007 = !DILocation(line: 95, column: 7, scope: !1006)
!1008 = !DILocation(line: 100, column: 7, scope: !1006)
!1009 = !DILocation(line: 104, column: 7, scope: !1006)
!1010 = !DILocation(line: 108, column: 7, scope: !1006)
!1011 = !DILocation(line: 112, column: 7, scope: !1006)
!1012 = !DILocation(line: 116, column: 7, scope: !1006)
!1013 = !DILocation(line: 120, column: 7, scope: !1006)
!1014 = !DILocation(line: 124, column: 7, scope: !1006)
!1015 = !DILocation(line: 128, column: 7, scope: !1006)
!1016 = !DILocation(line: 133, column: 7, scope: !1006)
!1017 = !DILocation(line: 134, column: 7, scope: !1006)
!1018 = !DILocation(line: 135, column: 7, scope: !1006)
!1019 = !DILocalVariable(name: "program", arg: 1, scope: !1020, file: !102, line: 836, type: !130)
!1020 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !102, file: !102, line: 836, type: !1021, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !130}
!1023 = !{!1019, !1024, !1031, !1032, !1034, !1035}
!1024 = !DILocalVariable(name: "infomap", scope: !1020, file: !102, line: 838, type: !1025)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 896, elements: !327)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1020, file: !102, line: 838, size: 128, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1027, file: !102, line: 838, baseType: !130, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1027, file: !102, line: 838, baseType: !130, size: 64, offset: 64)
!1031 = !DILocalVariable(name: "node", scope: !1020, file: !102, line: 848, type: !130)
!1032 = !DILocalVariable(name: "map_prog", scope: !1020, file: !102, line: 849, type: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1034 = !DILocalVariable(name: "lc_messages", scope: !1020, file: !102, line: 861, type: !130)
!1035 = !DILocalVariable(name: "url_program", scope: !1020, file: !102, line: 874, type: !130)
!1036 = !DILocation(line: 0, scope: !1020, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 139, column: 7, scope: !1006)
!1038 = !{}
!1039 = !DILocation(line: 857, column: 3, scope: !1020, inlinedAt: !1037)
!1040 = !DILocation(line: 861, column: 29, scope: !1020, inlinedAt: !1037)
!1041 = !DILocation(line: 862, column: 7, scope: !1042, inlinedAt: !1037)
!1042 = distinct !DILexicalBlock(scope: !1020, file: !102, line: 862, column: 7)
!1043 = !DILocation(line: 862, column: 19, scope: !1042, inlinedAt: !1037)
!1044 = !DILocation(line: 862, column: 22, scope: !1042, inlinedAt: !1037)
!1045 = !DILocation(line: 862, column: 7, scope: !1020, inlinedAt: !1037)
!1046 = !DILocation(line: 868, column: 7, scope: !1047, inlinedAt: !1037)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !102, line: 863, column: 5)
!1048 = !DILocation(line: 870, column: 5, scope: !1047, inlinedAt: !1037)
!1049 = !DILocation(line: 875, column: 3, scope: !1020, inlinedAt: !1037)
!1050 = !DILocation(line: 877, column: 3, scope: !1020, inlinedAt: !1037)
!1051 = !DILocation(line: 141, column: 3, scope: !990)
!1052 = !DISubprogram(name: "dcgettext", scope: !1053, file: !1053, line: 51, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!124, !130, !130, !103}
!1056 = !DISubprogram(name: "__fprintf_chk", scope: !1057, file: !1057, line: 93, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!103, !1060, !103, !1061, null}
!1060 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!1061 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1062 = !DISubprogram(name: "__printf_chk", scope: !1057, file: !1057, line: 95, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!103, !103, !1061, null}
!1065 = !DISubprogram(name: "fputs_unlocked", scope: !523, file: !523, line: 691, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!103, !1061, !1060}
!1068 = !DILocation(line: 0, scope: !213)
!1069 = !DILocation(line: 581, column: 7, scope: !221)
!1070 = !{!1071, !1071, i64 0}
!1071 = !{!"int", !1003, i64 0}
!1072 = !DILocation(line: 581, column: 19, scope: !221)
!1073 = !DILocation(line: 581, column: 7, scope: !213)
!1074 = !DILocation(line: 585, column: 26, scope: !220)
!1075 = !DILocation(line: 0, scope: !220)
!1076 = !DILocation(line: 586, column: 23, scope: !220)
!1077 = !DILocation(line: 586, column: 28, scope: !220)
!1078 = !DILocation(line: 586, column: 32, scope: !220)
!1079 = !{!1003, !1003, i64 0}
!1080 = !DILocation(line: 586, column: 38, scope: !220)
!1081 = !DILocalVariable(name: "__s1", arg: 1, scope: !1082, file: !1083, line: 1359, type: !130)
!1082 = distinct !DISubprogram(name: "streq", scope: !1083, file: !1083, line: 1359, type: !1084, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1086)
!1083 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!223, !130, !130}
!1086 = !{!1081, !1087}
!1087 = !DILocalVariable(name: "__s2", arg: 2, scope: !1082, file: !1083, line: 1359, type: !130)
!1088 = !DILocation(line: 0, scope: !1082, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 586, column: 41, scope: !220)
!1090 = !DILocation(line: 1361, column: 11, scope: !1082, inlinedAt: !1089)
!1091 = !DILocation(line: 1361, column: 10, scope: !1082, inlinedAt: !1089)
!1092 = !DILocation(line: 586, column: 19, scope: !220)
!1093 = !DILocation(line: 587, column: 5, scope: !220)
!1094 = !DILocation(line: 588, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !213, file: !102, line: 588, column: 7)
!1096 = !DILocation(line: 588, column: 7, scope: !213)
!1097 = !DILocation(line: 590, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !102, line: 589, column: 5)
!1099 = !DILocation(line: 591, column: 7, scope: !1098)
!1100 = !DILocation(line: 595, column: 37, scope: !213)
!1101 = !DILocation(line: 595, column: 35, scope: !213)
!1102 = !DILocation(line: 596, column: 29, scope: !213)
!1103 = !DILocation(line: 597, column: 8, scope: !229)
!1104 = !DILocation(line: 597, column: 7, scope: !213)
!1105 = !DILocation(line: 604, column: 24, scope: !228)
!1106 = !DILocation(line: 604, column: 12, scope: !229)
!1107 = !DILocation(line: 0, scope: !227)
!1108 = !DILocation(line: 610, column: 16, scope: !227)
!1109 = !DILocation(line: 610, column: 7, scope: !227)
!1110 = !DILocation(line: 611, column: 21, scope: !227)
!1111 = !{!1112, !1112, i64 0}
!1112 = !{!"short", !1003, i64 0}
!1113 = !DILocation(line: 611, column: 19, scope: !227)
!1114 = !DILocation(line: 611, column: 16, scope: !227)
!1115 = !DILocation(line: 610, column: 30, scope: !227)
!1116 = distinct !{!1116, !1109, !1110, !1117}
!1117 = !{!"llvm.loop.mustprogress"}
!1118 = !DILocation(line: 612, column: 18, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !227, file: !102, line: 612, column: 11)
!1120 = !DILocation(line: 612, column: 11, scope: !227)
!1121 = !DILocation(line: 620, column: 23, scope: !213)
!1122 = !DILocation(line: 625, column: 39, scope: !213)
!1123 = !DILocation(line: 626, column: 3, scope: !213)
!1124 = !DILocation(line: 626, column: 10, scope: !213)
!1125 = !DILocation(line: 626, column: 21, scope: !213)
!1126 = !DILocation(line: 628, column: 44, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !102, line: 628, column: 11)
!1128 = distinct !DILexicalBlock(scope: !213, file: !102, line: 627, column: 5)
!1129 = !DILocation(line: 628, column: 32, scope: !1127)
!1130 = !DILocation(line: 628, column: 49, scope: !1127)
!1131 = !DILocation(line: 628, column: 11, scope: !1128)
!1132 = !DILocation(line: 630, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !102, line: 630, column: 11)
!1134 = !DILocation(line: 630, column: 11, scope: !1128)
!1135 = !DILocation(line: 632, column: 26, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !102, line: 632, column: 15)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !102, line: 631, column: 9)
!1138 = !DILocation(line: 632, column: 34, scope: !1136)
!1139 = !DILocation(line: 632, column: 37, scope: !1136)
!1140 = !DILocation(line: 632, column: 15, scope: !1137)
!1141 = !DILocation(line: 640, column: 16, scope: !1128)
!1142 = distinct !{!1142, !1123, !1143, !1117}
!1143 = !DILocation(line: 641, column: 5, scope: !213)
!1144 = !DILocation(line: 644, column: 3, scope: !213)
!1145 = !DILocation(line: 0, scope: !1082, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 648, column: 31, scope: !213)
!1147 = !DILocation(line: 0, scope: !1082, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 649, column: 31, scope: !213)
!1149 = !DILocation(line: 0, scope: !1082, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 650, column: 31, scope: !213)
!1151 = !DILocation(line: 0, scope: !1082, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 651, column: 31, scope: !213)
!1153 = !DILocation(line: 0, scope: !1082, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 652, column: 31, scope: !213)
!1155 = !DILocation(line: 0, scope: !1082, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 653, column: 31, scope: !213)
!1157 = !DILocation(line: 0, scope: !1082, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 654, column: 31, scope: !213)
!1159 = !DILocation(line: 0, scope: !1082, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 655, column: 31, scope: !213)
!1161 = !DILocation(line: 0, scope: !1082, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 656, column: 31, scope: !213)
!1163 = !DILocation(line: 0, scope: !1082, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 657, column: 31, scope: !213)
!1165 = !DILocation(line: 663, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !213, file: !102, line: 663, column: 7)
!1167 = !DILocation(line: 664, column: 7, scope: !1166)
!1168 = !DILocation(line: 664, column: 10, scope: !1166)
!1169 = !DILocation(line: 663, column: 7, scope: !213)
!1170 = !DILocation(line: 669, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !102, line: 665, column: 5)
!1172 = !DILocation(line: 671, column: 5, scope: !1171)
!1173 = !DILocation(line: 676, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1166, file: !102, line: 673, column: 5)
!1175 = !DILocation(line: 679, column: 3, scope: !213)
!1176 = !DILocation(line: 683, column: 3, scope: !213)
!1177 = !DILocation(line: 686, column: 3, scope: !213)
!1178 = !DILocation(line: 688, column: 3, scope: !213)
!1179 = !DILocation(line: 691, column: 3, scope: !213)
!1180 = !DILocation(line: 695, column: 3, scope: !213)
!1181 = !DILocation(line: 696, column: 1, scope: !213)
!1182 = !DISubprogram(name: "setlocale", scope: !1183, file: !1183, line: 122, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!124, !103, !130}
!1186 = !DISubprogram(name: "strncmp", scope: !1187, file: !1187, line: 159, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!103, !130, !130, !127}
!1190 = !DISubprogram(name: "exit", scope: !1191, file: !1191, line: 624, type: !991, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1191 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1192 = !DISubprogram(name: "getenv", scope: !1191, file: !1191, line: 641, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!124, !130}
!1195 = !DISubprogram(name: "strcmp", scope: !1187, file: !1187, line: 156, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!103, !130, !130}
!1198 = !DISubprogram(name: "strspn", scope: !1187, file: !1187, line: 297, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!129, !130, !130}
!1201 = !DISubprogram(name: "strchr", scope: !1187, file: !1187, line: 246, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!124, !130, !103}
!1204 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1210 = !DISubprogram(name: "strcspn", scope: !1187, file: !1187, line: 293, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1211 = !DISubprogram(name: "fwrite_unlocked", scope: !523, file: !523, line: 704, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!127, !1214, !127, !127, !1060}
!1214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1217 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 145, type: !1218, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1221)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!103, !103, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1235, !1247, !1248, !1250}
!1222 = !DILocalVariable(name: "argc", arg: 1, scope: !1217, file: !2, line: 145, type: !103)
!1223 = !DILocalVariable(name: "argv", arg: 2, scope: !1217, file: !2, line: 145, type: !1220)
!1224 = !DILocalVariable(name: "optc", scope: !1217, file: !2, line: 147, type: !103)
!1225 = !DILocalVariable(name: "selinux_enabled", scope: !1217, file: !2, line: 148, type: !103)
!1226 = !DILocalVariable(name: "smack_enabled", scope: !1217, file: !2, line: 149, type: !223)
!1227 = !DILocalVariable(name: "n_ids", scope: !1217, file: !2, line: 207, type: !127)
!1228 = !DILocalVariable(name: "default_format", scope: !1217, file: !2, line: 216, type: !223)
!1229 = !DILocalVariable(name: "pw_name", scope: !1230, file: !2, line: 257, type: !124)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 256, column: 9)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 255, column: 7)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 255, column: 7)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 247, column: 5)
!1234 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 246, column: 7)
!1235 = !DILocalVariable(name: "pwd", scope: !1230, file: !2, line: 258, type: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1238, line: 49, size: 384, elements: !1239)
!1238 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1237, file: !1238, line: 51, baseType: !124, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1237, file: !1238, line: 52, baseType: !124, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1237, file: !1238, line: 54, baseType: !202, size: 32, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1237, file: !1238, line: 55, baseType: !208, size: 32, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1237, file: !1238, line: 56, baseType: !124, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1237, file: !1238, line: 57, baseType: !124, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1237, file: !1238, line: 58, baseType: !124, size: 64, offset: 320)
!1247 = !DILocalVariable(name: "spec", scope: !1230, file: !2, line: 259, type: !130)
!1248 = !DILocalVariable(name: "NO_UID", scope: !1249, file: !2, line: 291, type: !200)
!1249 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 287, column: 5)
!1250 = !DILocalVariable(name: "NO_GID", scope: !1249, file: !2, line: 292, type: !207)
!1251 = distinct !DIAssignID()
!1252 = !DILocation(line: 0, scope: !1230)
!1253 = !DILocation(line: 0, scope: !1217)
!1254 = !DILocation(line: 152, column: 21, scope: !1217)
!1255 = !DILocation(line: 152, column: 3, scope: !1217)
!1256 = !DILocation(line: 153, column: 3, scope: !1217)
!1257 = !DILocation(line: 154, column: 3, scope: !1217)
!1258 = !DILocation(line: 155, column: 3, scope: !1217)
!1259 = !DILocation(line: 157, column: 3, scope: !1217)
!1260 = !DILocation(line: 159, column: 3, scope: !1217)
!1261 = !DILocation(line: 159, column: 18, scope: !1217)
!1262 = !DILocation(line: 176, column: 13, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 175, column: 15)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 162, column: 9)
!1265 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 160, column: 5)
!1266 = !DILocation(line: 187, column: 11, scope: !1264)
!1267 = !DILocation(line: 190, column: 11, scope: !1264)
!1268 = !DILocation(line: 193, column: 11, scope: !1264)
!1269 = !DILocation(line: 196, column: 11, scope: !1264)
!1270 = !DILocation(line: 199, column: 11, scope: !1264)
!1271 = !DILocation(line: 200, column: 9, scope: !1264)
!1272 = !DILocation(line: 201, column: 9, scope: !1264)
!1273 = !DILocation(line: 203, column: 11, scope: !1264)
!1274 = !DILocation(line: 0, scope: !1264)
!1275 = distinct !{!1275, !1260, !1276, !1117}
!1276 = !DILocation(line: 205, column: 5, scope: !1217)
!1277 = !DILocation(line: 207, column: 25, scope: !1217)
!1278 = !DILocation(line: 207, column: 23, scope: !1217)
!1279 = !DILocation(line: 207, column: 18, scope: !1217)
!1280 = !DILocation(line: 213, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 213, column: 7)
!1282 = !DILocation(line: 213, column: 19, scope: !1281)
!1283 = !DILocation(line: 213, column: 17, scope: !1281)
!1284 = !DILocation(line: 213, column: 32, scope: !1281)
!1285 = !DILocation(line: 213, column: 30, scope: !1281)
!1286 = !DILocation(line: 213, column: 63, scope: !1281)
!1287 = !DILocation(line: 213, column: 7, scope: !1217)
!1288 = !DILocation(line: 214, column: 5, scope: !1281)
!1289 = !DILocation(line: 217, column: 28, scope: !1217)
!1290 = !DILocation(line: 221, column: 22, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 221, column: 7)
!1292 = !DILocation(line: 234, column: 13, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 234, column: 7)
!1294 = !DILocation(line: 246, column: 7, scope: !1217)
!1295 = !DILocation(line: 221, column: 26, scope: !1291)
!1296 = !DILocation(line: 221, column: 35, scope: !1291)
!1297 = !DILocation(line: 221, column: 38, scope: !1291)
!1298 = !DILocation(line: 221, column: 7, scope: !1217)
!1299 = !DILocation(line: 222, column: 5, scope: !1291)
!1300 = !DILocation(line: 225, column: 25, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 225, column: 7)
!1302 = !DILocation(line: 225, column: 7, scope: !1217)
!1303 = !DILocation(line: 226, column: 5, scope: !1301)
!1304 = !DILocation(line: 235, column: 7, scope: !1293)
!1305 = !DILocation(line: 236, column: 35, scope: !1293)
!1306 = !DILocation(line: 248, column: 30, scope: !1233)
!1307 = !DILocation(line: 248, column: 22, scope: !1233)
!1308 = !{!1309, !1309, i64 0}
!1309 = !{!"_Bool", !1003, i64 0}
!1310 = !DILocation(line: 253, column: 16, scope: !1233)
!1311 = !DILocation(line: 253, column: 13, scope: !1233)
!1312 = !DILocation(line: 255, column: 21, scope: !1231)
!1313 = !DILocation(line: 255, column: 7, scope: !1232)
!1314 = !DILocation(line: 257, column: 11, scope: !1230)
!1315 = !DILocation(line: 257, column: 17, scope: !1230)
!1316 = distinct !DIAssignID()
!1317 = !DILocation(line: 259, column: 30, scope: !1230)
!1318 = !DILocation(line: 263, column: 15, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 263, column: 15)
!1320 = !DILocation(line: 263, column: 15, scope: !1230)
!1321 = !DILocation(line: 265, column: 21, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 265, column: 19)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 264, column: 13)
!1324 = !DILocation(line: 265, column: 19, scope: !1323)
!1325 = !DILocation(line: 266, column: 23, scope: !1322)
!1326 = !DILocation(line: 266, column: 33, scope: !1322)
!1327 = !DILocation(line: 266, column: 64, scope: !1322)
!1328 = !DILocation(line: 266, column: 54, scope: !1322)
!1329 = !DILocation(line: 268, column: 19, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 268, column: 15)
!1331 = !DILocation(line: 268, column: 15, scope: !1230)
!1332 = !DILocation(line: 270, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 269, column: 13)
!1334 = !DILocation(line: 271, column: 18, scope: !1333)
!1335 = !DILocation(line: 272, column: 13, scope: !1333)
!1336 = !DILocation(line: 275, column: 20, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 275, column: 19)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 274, column: 13)
!1339 = !DILocation(line: 275, column: 19, scope: !1338)
!1340 = !DILocation(line: 276, column: 41, scope: !1337)
!1341 = !{!1342, !1002, i64 0}
!1342 = !{!"passwd", !1002, i64 0, !1002, i64 8, !1071, i64 16, !1071, i64 20, !1002, i64 24, !1002, i64 32, !1002, i64 40}
!1343 = !DILocation(line: 276, column: 27, scope: !1337)
!1344 = !DILocation(line: 276, column: 25, scope: !1337)
!1345 = distinct !DIAssignID()
!1346 = !DILocation(line: 276, column: 17, scope: !1337)
!1347 = !DILocation(line: 279, column: 28, scope: !1338)
!1348 = !DILocation(line: 277, column: 34, scope: !1338)
!1349 = !{!1342, !1071, i64 16}
!1350 = !DILocation(line: 277, column: 27, scope: !1338)
!1351 = !DILocation(line: 277, column: 20, scope: !1338)
!1352 = !DILocation(line: 278, column: 34, scope: !1338)
!1353 = !{!1342, !1071, i64 20}
!1354 = !DILocation(line: 278, column: 27, scope: !1338)
!1355 = !DILocation(line: 278, column: 20, scope: !1338)
!1356 = !DILocation(line: 279, column: 15, scope: !1338)
!1357 = !DILocation(line: 280, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 280, column: 19)
!1359 = !DILocalVariable(name: "__stream", arg: 1, scope: !1360, file: !1361, line: 135, type: !236)
!1360 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1361, file: !1361, line: 135, type: !1362, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1364)
!1361 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!103, !236}
!1364 = !{!1359}
!1365 = !DILocation(line: 0, scope: !1360, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 280, column: 19, scope: !1358)
!1367 = !DILocation(line: 137, column: 10, scope: !1360, inlinedAt: !1366)
!1368 = !{!1369, !1071, i64 0}
!1369 = !{!"_IO_FILE", !1071, i64 0, !1002, i64 8, !1002, i64 16, !1002, i64 24, !1002, i64 32, !1002, i64 40, !1002, i64 48, !1002, i64 56, !1002, i64 64, !1002, i64 72, !1002, i64 80, !1002, i64 88, !1002, i64 96, !1002, i64 104, !1071, i64 112, !1071, i64 116, !1370, i64 120, !1112, i64 128, !1003, i64 130, !1003, i64 131, !1002, i64 136, !1370, i64 144, !1002, i64 152, !1002, i64 160, !1002, i64 168, !1002, i64 176, !1370, i64 184, !1071, i64 192, !1003, i64 196}
!1370 = !{!"long", !1003, i64 0}
!1371 = !DILocation(line: 280, column: 19, scope: !1338)
!1372 = !DILocation(line: 948, column: 21, scope: !1373, inlinedAt: !1376)
!1373 = distinct !DISubprogram(name: "write_error", scope: !102, file: !102, line: 946, type: !563, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1374)
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "saved_errno", scope: !1373, file: !102, line: 948, type: !103)
!1376 = distinct !DILocation(line: 281, column: 17, scope: !1358)
!1377 = !DILocation(line: 0, scope: !1373, inlinedAt: !1376)
!1378 = !DILocation(line: 949, column: 3, scope: !1373, inlinedAt: !1376)
!1379 = !DILocation(line: 950, column: 11, scope: !1373, inlinedAt: !1376)
!1380 = !DILocation(line: 950, column: 3, scope: !1373, inlinedAt: !1376)
!1381 = !DILocation(line: 951, column: 3, scope: !1373, inlinedAt: !1376)
!1382 = !DILocation(line: 952, column: 3, scope: !1373, inlinedAt: !1376)
!1383 = !DILocation(line: 283, column: 17, scope: !1230)
!1384 = !DILocation(line: 283, column: 11, scope: !1230)
!1385 = !DILocation(line: 284, column: 9, scope: !1231)
!1386 = !DILocation(line: 255, column: 36, scope: !1231)
!1387 = !DILocation(line: 255, column: 14, scope: !1231)
!1388 = distinct !{!1388, !1313, !1389, !1117}
!1389 = !DILocation(line: 284, column: 9, scope: !1232)
!1390 = !DILocation(line: 0, scope: !1249)
!1391 = !DILocation(line: 294, column: 11, scope: !1249)
!1392 = !DILocation(line: 294, column: 24, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 294, column: 11)
!1394 = !DILocation(line: 294, column: 11, scope: !1393)
!1395 = !DILocation(line: 295, column: 25, scope: !1393)
!1396 = !DILocation(line: 297, column: 11, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 296, column: 9)
!1398 = !DILocation(line: 297, column: 17, scope: !1397)
!1399 = !DILocation(line: 298, column: 18, scope: !1397)
!1400 = !DILocation(line: 298, column: 16, scope: !1397)
!1401 = !DILocation(line: 299, column: 20, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 299, column: 15)
!1403 = !DILocation(line: 299, column: 30, scope: !1402)
!1404 = !DILocation(line: 299, column: 33, scope: !1402)
!1405 = !DILocation(line: 299, column: 15, scope: !1397)
!1406 = !DILocation(line: 300, column: 13, scope: !1402)
!1407 = !DILocation(line: 303, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 303, column: 11)
!1409 = !DILocation(line: 303, column: 11, scope: !1249)
!1410 = !DILocation(line: 303, column: 23, scope: !1408)
!1411 = !DILocation(line: 304, column: 14, scope: !1408)
!1412 = !DILocation(line: 304, column: 25, scope: !1408)
!1413 = !DILocation(line: 314, column: 11, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 313, column: 9)
!1415 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 312, column: 11)
!1416 = !DILocation(line: 306, column: 11, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 305, column: 9)
!1418 = !DILocation(line: 306, column: 17, scope: !1417)
!1419 = !DILocation(line: 307, column: 18, scope: !1417)
!1420 = !DILocation(line: 307, column: 16, scope: !1417)
!1421 = !DILocation(line: 308, column: 20, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 308, column: 15)
!1423 = !DILocation(line: 308, column: 30, scope: !1422)
!1424 = !DILocation(line: 308, column: 33, scope: !1422)
!1425 = !DILocation(line: 308, column: 15, scope: !1417)
!1426 = !DILocation(line: 309, column: 13, scope: !1422)
!1427 = !DILocation(line: 312, column: 12, scope: !1415)
!1428 = !DILocation(line: 312, column: 22, scope: !1415)
!1429 = !DILocation(line: 314, column: 17, scope: !1414)
!1430 = !DILocation(line: 315, column: 18, scope: !1414)
!1431 = !DILocation(line: 315, column: 16, scope: !1414)
!1432 = !DILocation(line: 316, column: 20, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 316, column: 15)
!1434 = !DILocation(line: 316, column: 30, scope: !1433)
!1435 = !DILocation(line: 316, column: 33, scope: !1433)
!1436 = !DILocation(line: 316, column: 15, scope: !1414)
!1437 = !DILocation(line: 317, column: 13, scope: !1433)
!1438 = !DILocation(line: 319, column: 17, scope: !1414)
!1439 = !DILocation(line: 320, column: 18, scope: !1414)
!1440 = !DILocation(line: 320, column: 16, scope: !1414)
!1441 = !DILocation(line: 321, column: 20, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 321, column: 15)
!1443 = !DILocation(line: 321, column: 30, scope: !1442)
!1444 = !DILocation(line: 321, column: 33, scope: !1442)
!1445 = !DILocation(line: 321, column: 15, scope: !1414)
!1446 = !DILocation(line: 322, column: 13, scope: !1442)
!1447 = !DILocation(line: 324, column: 9, scope: !1249)
!1448 = !DILocation(line: 327, column: 10, scope: !1217)
!1449 = !{i8 0, i8 2}
!1450 = !DILocation(line: 327, column: 3, scope: !1217)
!1451 = !DISubprogram(name: "bindtextdomain", scope: !1053, file: !1053, line: 86, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!124, !130, !130}
!1454 = !DISubprogram(name: "textdomain", scope: !1053, file: !1053, line: 82, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DISubprogram(name: "atexit", scope: !1191, file: !1191, line: 602, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!103, !562}
!1458 = !DISubprogram(name: "getopt_long", scope: !460, file: !460, line: 66, type: !1459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!103, !103, !1461, !130, !1463, !465}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1464 = !DISubprogram(name: "getpwnam", scope: !1238, file: !1238, line: 116, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1236, !130}
!1467 = !DISubprogram(name: "getpwuid", scope: !1238, file: !1238, line: 110, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1236, !202}
!1470 = !DISubprogram(name: "__errno_location", scope: !1471, file: !1471, line: 37, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1471 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!465}
!1474 = distinct !DISubprogram(name: "print_stuff", scope: !2, file: !2, line: 431, type: !1021, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1475)
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1474, file: !2, line: 431, type: !130)
!1477 = distinct !DIAssignID()
!1478 = !DILocation(line: 0, scope: !1474)
!1479 = !DILocation(line: 433, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 433, column: 7)
!1481 = !DILocation(line: 433, column: 7, scope: !1474)
!1482 = !DILocation(line: 434, column: 19, scope: !1480)
!1483 = !DILocalVariable(name: "uid", arg: 1, scope: !1484, file: !2, line: 333, type: !200)
!1484 = distinct !DISubprogram(name: "print_user", scope: !2, file: !2, line: 333, type: !1485, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !200}
!1487 = !{!1483, !1488}
!1488 = !DILocalVariable(name: "pwd", scope: !1484, file: !2, line: 335, type: !1236)
!1489 = !DILocation(line: 0, scope: !1484, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 434, column: 7, scope: !1480)
!1491 = !DILocation(line: 337, column: 7, scope: !1492, inlinedAt: !1490)
!1492 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 337, column: 7)
!1493 = !DILocation(line: 337, column: 7, scope: !1484, inlinedAt: !1490)
!1494 = !DILocation(line: 350, column: 5, scope: !1495, inlinedAt: !1490)
!1495 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 347, column: 7)
!1496 = !DILocation(line: 339, column: 13, scope: !1497, inlinedAt: !1490)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 338, column: 5)
!1498 = !DILocation(line: 340, column: 15, scope: !1499, inlinedAt: !1490)
!1499 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 340, column: 11)
!1500 = !DILocation(line: 340, column: 11, scope: !1497, inlinedAt: !1490)
!1501 = !DILocation(line: 342, column: 11, scope: !1502, inlinedAt: !1490)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 341, column: 9)
!1503 = !DILocation(line: 343, column: 14, scope: !1502, inlinedAt: !1490)
!1504 = !DILocation(line: 344, column: 9, scope: !1502, inlinedAt: !1490)
!1505 = !DILocation(line: 348, column: 5, scope: !1495, inlinedAt: !1490)
!1506 = !DILocation(line: 441, column: 12, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 441, column: 12)
!1508 = !DILocation(line: 441, column: 12, scope: !1480)
!1509 = !DILocation(line: 442, column: 24, scope: !1507)
!1510 = !DILocation(line: 442, column: 48, scope: !1507)
!1511 = !DILocation(line: 442, column: 11, scope: !1507)
!1512 = !DILocation(line: 442, column: 8, scope: !1507)
!1513 = !DILocation(line: 442, column: 5, scope: !1507)
!1514 = !DILocation(line: 443, column: 12, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 443, column: 12)
!1516 = !DILocation(line: 443, column: 12, scope: !1507)
!1517 = !DILocation(line: 444, column: 38, scope: !1515)
!1518 = !DILocation(line: 444, column: 44, scope: !1515)
!1519 = !DILocation(line: 444, column: 50, scope: !1515)
!1520 = !DILocation(line: 445, column: 29, scope: !1515)
!1521 = !DILocation(line: 445, column: 39, scope: !1515)
!1522 = !DILocation(line: 444, column: 11, scope: !1515)
!1523 = !DILocation(line: 444, column: 8, scope: !1515)
!1524 = !DILocation(line: 444, column: 5, scope: !1515)
!1525 = !DILocalVariable(name: "groups", scope: !1526, file: !2, line: 388, type: !943)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 387, column: 3)
!1527 = distinct !DISubprogram(name: "print_full_info", scope: !2, file: !2, line: 356, type: !1021, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1528)
!1528 = !{!1529, !1530, !1531, !1525, !1540, !1541, !1542}
!1529 = !DILocalVariable(name: "username", arg: 1, scope: !1527, file: !2, line: 356, type: !130)
!1530 = !DILocalVariable(name: "pwd", scope: !1527, file: !2, line: 358, type: !1236)
!1531 = !DILocalVariable(name: "grp", scope: !1527, file: !2, line: 359, type: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1534, line: 42, size: 256, elements: !1535)
!1534 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1535 = !{!1536, !1537, !1538, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1533, file: !1534, line: 44, baseType: !124, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1533, file: !1534, line: 45, baseType: !124, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1533, file: !1534, line: 46, baseType: !208, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1533, file: !1534, line: 47, baseType: !1220, size: 64, offset: 192)
!1540 = !DILocalVariable(name: "primary_group", scope: !1526, file: !2, line: 390, type: !207)
!1541 = !DILocalVariable(name: "n_groups", scope: !1526, file: !2, line: 396, type: !103)
!1542 = !DILocalVariable(name: "i", scope: !1543, file: !2, line: 410, type: !103)
!1543 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 410, column: 5)
!1544 = !DILocation(line: 0, scope: !1526, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 449, column: 5, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 446, column: 12)
!1547 = !DILocation(line: 0, scope: !1527, inlinedAt: !1545)
!1548 = !DILocation(line: 361, column: 3, scope: !1527, inlinedAt: !1545)
!1549 = !DILocation(line: 362, column: 19, scope: !1527, inlinedAt: !1545)
!1550 = !DILocation(line: 362, column: 9, scope: !1527, inlinedAt: !1545)
!1551 = !DILocation(line: 363, column: 7, scope: !1552, inlinedAt: !1545)
!1552 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 363, column: 7)
!1553 = !DILocation(line: 363, column: 7, scope: !1527, inlinedAt: !1545)
!1554 = !DILocation(line: 364, column: 5, scope: !1552, inlinedAt: !1545)
!1555 = !DILocation(line: 366, column: 3, scope: !1527, inlinedAt: !1545)
!1556 = !DILocation(line: 367, column: 19, scope: !1527, inlinedAt: !1545)
!1557 = !DILocation(line: 367, column: 9, scope: !1527, inlinedAt: !1545)
!1558 = !DILocation(line: 368, column: 7, scope: !1559, inlinedAt: !1545)
!1559 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 368, column: 7)
!1560 = !DILocation(line: 368, column: 7, scope: !1527, inlinedAt: !1545)
!1561 = !DILocation(line: 369, column: 5, scope: !1559, inlinedAt: !1545)
!1562 = !{!1563, !1002, i64 0}
!1563 = !{!"group", !1002, i64 0, !1002, i64 8, !1071, i64 16, !1002, i64 24}
!1564 = !DILocation(line: 371, column: 7, scope: !1565, inlinedAt: !1545)
!1565 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 371, column: 7)
!1566 = !DILocation(line: 371, column: 15, scope: !1565, inlinedAt: !1545)
!1567 = !DILocation(line: 371, column: 12, scope: !1565, inlinedAt: !1545)
!1568 = !DILocation(line: 371, column: 7, scope: !1527, inlinedAt: !1545)
!1569 = !DILocation(line: 373, column: 7, scope: !1570, inlinedAt: !1545)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 372, column: 5)
!1571 = !DILocation(line: 374, column: 23, scope: !1570, inlinedAt: !1545)
!1572 = !DILocation(line: 374, column: 13, scope: !1570, inlinedAt: !1545)
!1573 = !DILocation(line: 375, column: 11, scope: !1574, inlinedAt: !1545)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 375, column: 11)
!1575 = !DILocation(line: 375, column: 11, scope: !1570, inlinedAt: !1545)
!1576 = !DILocation(line: 376, column: 9, scope: !1574, inlinedAt: !1545)
!1577 = !DILocation(line: 379, column: 7, scope: !1578, inlinedAt: !1545)
!1578 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 379, column: 7)
!1579 = !DILocation(line: 379, column: 15, scope: !1578, inlinedAt: !1545)
!1580 = !DILocation(line: 379, column: 12, scope: !1578, inlinedAt: !1545)
!1581 = !DILocation(line: 379, column: 7, scope: !1527, inlinedAt: !1545)
!1582 = !DILocation(line: 381, column: 7, scope: !1583, inlinedAt: !1545)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 380, column: 5)
!1584 = !DILocation(line: 382, column: 23, scope: !1583, inlinedAt: !1545)
!1585 = !DILocation(line: 382, column: 13, scope: !1583, inlinedAt: !1545)
!1586 = !DILocation(line: 383, column: 11, scope: !1587, inlinedAt: !1545)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 383, column: 11)
!1588 = !DILocation(line: 383, column: 11, scope: !1583, inlinedAt: !1545)
!1589 = !DILocation(line: 384, column: 9, scope: !1587, inlinedAt: !1545)
!1590 = !DILocation(line: 388, column: 5, scope: !1526, inlinedAt: !1545)
!1591 = !DILocation(line: 391, column: 9, scope: !1592, inlinedAt: !1545)
!1592 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 391, column: 9)
!1593 = !DILocation(line: 391, column: 9, scope: !1526, inlinedAt: !1545)
!1594 = !DILocation(line: 392, column: 23, scope: !1592, inlinedAt: !1545)
!1595 = !DILocation(line: 392, column: 34, scope: !1592, inlinedAt: !1545)
!1596 = !DILocation(line: 0, scope: !1592, inlinedAt: !1545)
!1597 = !DILocation(line: 396, column: 20, scope: !1526, inlinedAt: !1545)
!1598 = !DILocation(line: 397, column: 18, scope: !1599, inlinedAt: !1545)
!1599 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 397, column: 9)
!1600 = !DILocation(line: 397, column: 9, scope: !1526, inlinedAt: !1545)
!1601 = !DILocation(line: 394, column: 23, scope: !1592, inlinedAt: !1545)
!1602 = !DILocation(line: 400, column: 11, scope: !1603, inlinedAt: !1545)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 399, column: 13)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 398, column: 7)
!1605 = !DILocation(line: 403, column: 11, scope: !1603, inlinedAt: !1545)
!1606 = !DILocation(line: 404, column: 12, scope: !1604, inlinedAt: !1545)
!1607 = !DILocation(line: 405, column: 9, scope: !1604, inlinedAt: !1545)
!1608 = !DILocation(line: 408, column: 18, scope: !1609, inlinedAt: !1545)
!1609 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 408, column: 9)
!1610 = !DILocation(line: 408, column: 9, scope: !1526, inlinedAt: !1545)
!1611 = !DILocation(line: 409, column: 7, scope: !1609, inlinedAt: !1545)
!1612 = !DILocation(line: 0, scope: !1543, inlinedAt: !1545)
!1613 = !DILocation(line: 410, column: 23, scope: !1614, inlinedAt: !1545)
!1614 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 410, column: 5)
!1615 = !DILocation(line: 414, column: 9, scope: !1616, inlinedAt: !1545)
!1616 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 411, column: 7)
!1617 = !DILocation(line: 415, column: 25, scope: !1616, inlinedAt: !1545)
!1618 = !DILocation(line: 415, column: 15, scope: !1616, inlinedAt: !1545)
!1619 = !DILocation(line: 416, column: 13, scope: !1620, inlinedAt: !1545)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 416, column: 13)
!1621 = !DILocation(line: 416, column: 13, scope: !1616, inlinedAt: !1545)
!1622 = !DILocation(line: 417, column: 11, scope: !1620, inlinedAt: !1545)
!1623 = !DILocation(line: 410, column: 5, scope: !1543, inlinedAt: !1545)
!1624 = !DILocation(line: 419, column: 11, scope: !1526, inlinedAt: !1545)
!1625 = !DILocation(line: 419, column: 5, scope: !1526, inlinedAt: !1545)
!1626 = !DILocation(line: 420, column: 3, scope: !1527, inlinedAt: !1545)
!1627 = !DILocalVariable(name: "__c", arg: 1, scope: !1628, file: !1361, line: 108, type: !103)
!1628 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1361, file: !1361, line: 108, type: !1629, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!103, !103}
!1631 = !{!1627}
!1632 = !DILocation(line: 0, scope: !1628, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 413, column: 11, scope: !1634, inlinedAt: !1545)
!1634 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 412, column: 13)
!1635 = !DILocation(line: 110, column: 10, scope: !1628, inlinedAt: !1633)
!1636 = !{!1369, !1002, i64 40}
!1637 = !{!1369, !1002, i64 48}
!1638 = !{!"branch_weights", i32 2000, i32 1}
!1639 = !DILocation(line: 410, column: 36, scope: !1614, inlinedAt: !1545)
!1640 = distinct !{!1640, !1623, !1641, !1117, !1642}
!1641 = !DILocation(line: 418, column: 7, scope: !1543, inlinedAt: !1545)
!1642 = !{!"llvm.loop.peeled.count", i32 1}
!1643 = !DILocation(line: 454, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 454, column: 7)
!1645 = !DILocation(line: 454, column: 16, scope: !1644)
!1646 = !DILocation(line: 454, column: 19, scope: !1644)
!1647 = !DILocation(line: 454, column: 35, scope: !1644)
!1648 = !DILocation(line: 0, scope: !1628, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 456, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 455, column: 5)
!1651 = !DILocation(line: 110, column: 10, scope: !1628, inlinedAt: !1649)
!1652 = !DILocation(line: 0, scope: !1628, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 457, column: 7, scope: !1650)
!1654 = !DILocation(line: 110, column: 10, scope: !1628, inlinedAt: !1653)
!1655 = !DILocation(line: 461, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 460, column: 5)
!1657 = !DILocation(line: 0, scope: !1628, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 461, column: 7, scope: !1656)
!1659 = !DILocation(line: 110, column: 10, scope: !1628, inlinedAt: !1658)
!1660 = !DILocation(line: 463, column: 1, scope: !1474)
!1661 = !DISubprogram(name: "fflush_unlocked", scope: !523, file: !523, line: 239, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1662 = !DISubprogram(name: "clearerr_unlocked", scope: !523, file: !523, line: 794, type: !1663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !236}
!1665 = !DISubprogram(name: "free", scope: !1191, file: !1191, line: 555, type: !1666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !125}
!1668 = !DISubprogram(name: "geteuid", scope: !1669, file: !1669, line: 700, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1669 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!202}
!1672 = !DISubprogram(name: "getuid", scope: !1669, file: !1669, line: 697, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1673 = !DISubprogram(name: "getegid", scope: !1669, file: !1669, line: 706, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!208}
!1676 = !DISubprogram(name: "getgid", scope: !1669, file: !1669, line: 703, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1677 = !DISubprogram(name: "getgrgid", scope: !1534, file: !1534, line: 101, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1532, !208}
!1680 = !DISubprogram(name: "__overflow", scope: !523, file: !523, line: 886, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!103, !236, !103}
!1683 = distinct !DISubprogram(name: "print_group_list", scope: !475, file: !475, line: 35, type: !1684, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!223, !130, !200, !207, !207, !223, !4}
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1705, !1707, !1708}
!1687 = !DILocalVariable(name: "username", arg: 1, scope: !1683, file: !475, line: 35, type: !130)
!1688 = !DILocalVariable(name: "ruid", arg: 2, scope: !1683, file: !475, line: 36, type: !200)
!1689 = !DILocalVariable(name: "rgid", arg: 3, scope: !1683, file: !475, line: 36, type: !207)
!1690 = !DILocalVariable(name: "egid", arg: 4, scope: !1683, file: !475, line: 36, type: !207)
!1691 = !DILocalVariable(name: "use_names", arg: 5, scope: !1683, file: !475, line: 37, type: !223)
!1692 = !DILocalVariable(name: "delim", arg: 6, scope: !1683, file: !475, line: 37, type: !4)
!1693 = !DILocalVariable(name: "ok", scope: !1683, file: !475, line: 39, type: !223)
!1694 = !DILocalVariable(name: "pwd", scope: !1683, file: !475, line: 40, type: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1238, line: 49, size: 384, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1696, file: !1238, line: 51, baseType: !124, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1696, file: !1238, line: 52, baseType: !124, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1696, file: !1238, line: 54, baseType: !202, size: 32, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1696, file: !1238, line: 55, baseType: !208, size: 32, offset: 160)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1696, file: !1238, line: 56, baseType: !124, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1696, file: !1238, line: 57, baseType: !124, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1696, file: !1238, line: 58, baseType: !124, size: 64, offset: 320)
!1705 = !DILocalVariable(name: "groups", scope: !1706, file: !475, line: 60, type: !943)
!1706 = distinct !DILexicalBlock(scope: !1683, file: !475, line: 59, column: 3)
!1707 = !DILocalVariable(name: "n_groups", scope: !1706, file: !475, line: 62, type: !103)
!1708 = !DILocalVariable(name: "i", scope: !1709, file: !475, line: 77, type: !103)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !475, line: 77, column: 5)
!1710 = distinct !DIAssignID()
!1711 = !DILocation(line: 0, scope: !1706)
!1712 = !DILocation(line: 0, scope: !1683)
!1713 = !DILocation(line: 42, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1683, file: !475, line: 42, column: 7)
!1715 = !DILocation(line: 42, column: 7, scope: !1683)
!1716 = !DILocation(line: 44, column: 13, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !475, line: 43, column: 5)
!1718 = !DILocation(line: 45, column: 15, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1717, file: !475, line: 45, column: 11)
!1720 = !DILocation(line: 45, column: 11, scope: !1717)
!1721 = !DILocalVariable(name: "gid", arg: 1, scope: !1722, file: !475, line: 91, type: !207)
!1722 = distinct !DISubprogram(name: "print_group", scope: !475, file: !475, line: 91, type: !1723, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!223, !207, !223}
!1725 = !{!1721, !1726, !1727, !1735, !1736}
!1726 = !DILocalVariable(name: "use_name", arg: 2, scope: !1722, file: !475, line: 91, type: !223)
!1727 = !DILocalVariable(name: "grp", scope: !1722, file: !475, line: 93, type: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1534, line: 42, size: 256, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1729, file: !1534, line: 44, baseType: !124, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1729, file: !1534, line: 45, baseType: !124, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1729, file: !1534, line: 46, baseType: !208, size: 32, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1729, file: !1534, line: 47, baseType: !1220, size: 64, offset: 192)
!1735 = !DILocalVariable(name: "ok", scope: !1722, file: !475, line: 94, type: !223)
!1736 = !DILocalVariable(name: "g", scope: !1737, file: !475, line: 108, type: !133)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !475, line: 107, column: 13)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !475, line: 101, column: 15)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !475, line: 100, column: 9)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !475, line: 99, column: 11)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !475, line: 97, column: 5)
!1742 = distinct !DILexicalBlock(scope: !1722, file: !475, line: 96, column: 7)
!1743 = !DILocation(line: 0, scope: !1722, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 49, column: 8, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1683, file: !475, line: 49, column: 7)
!1746 = !DILocation(line: 96, column: 7, scope: !1722, inlinedAt: !1744)
!1747 = !DILocation(line: 118, column: 5, scope: !1748, inlinedAt: !1744)
!1748 = distinct !DILexicalBlock(scope: !1722, file: !475, line: 115, column: 7)
!1749 = !DILocation(line: 98, column: 13, scope: !1741, inlinedAt: !1744)
!1750 = !DILocation(line: 99, column: 15, scope: !1740, inlinedAt: !1744)
!1751 = !DILocation(line: 99, column: 11, scope: !1741, inlinedAt: !1744)
!1752 = !DILocation(line: 108, column: 29, scope: !1737, inlinedAt: !1744)
!1753 = !DILocation(line: 0, scope: !1737, inlinedAt: !1744)
!1754 = !DILocation(line: 109, column: 15, scope: !1737, inlinedAt: !1744)
!1755 = !DILocation(line: 112, column: 9, scope: !1739, inlinedAt: !1744)
!1756 = !DILocation(line: 116, column: 5, scope: !1748, inlinedAt: !1744)
!1757 = !DILocation(line: 49, column: 7, scope: !1683)
!1758 = !DILocation(line: 52, column: 12, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1683, file: !475, line: 52, column: 7)
!1760 = !DILocation(line: 52, column: 7, scope: !1683)
!1761 = !DILocalVariable(name: "__c", arg: 1, scope: !1762, file: !1361, line: 108, type: !103)
!1762 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1361, file: !1361, line: 108, type: !1629, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !1763)
!1763 = !{!1761}
!1764 = !DILocation(line: 0, scope: !1762, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 54, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !475, line: 53, column: 5)
!1767 = !DILocation(line: 110, column: 10, scope: !1762, inlinedAt: !1765)
!1768 = !DILocation(line: 54, column: 7, scope: !1766)
!1769 = !DILocation(line: 0, scope: !1722, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 55, column: 12, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !475, line: 55, column: 11)
!1772 = !DILocation(line: 96, column: 7, scope: !1722, inlinedAt: !1770)
!1773 = !DILocation(line: 118, column: 5, scope: !1748, inlinedAt: !1770)
!1774 = !DILocation(line: 98, column: 13, scope: !1741, inlinedAt: !1770)
!1775 = !DILocation(line: 99, column: 15, scope: !1740, inlinedAt: !1770)
!1776 = !DILocation(line: 99, column: 11, scope: !1741, inlinedAt: !1770)
!1777 = !DILocation(line: 108, column: 29, scope: !1737, inlinedAt: !1770)
!1778 = !DILocation(line: 0, scope: !1737, inlinedAt: !1770)
!1779 = !DILocation(line: 109, column: 15, scope: !1737, inlinedAt: !1770)
!1780 = !DILocation(line: 112, column: 9, scope: !1739, inlinedAt: !1770)
!1781 = !DILocation(line: 116, column: 5, scope: !1748, inlinedAt: !1770)
!1782 = !DILocation(line: 55, column: 11, scope: !1766)
!1783 = !DILocation(line: 60, column: 5, scope: !1706)
!1784 = !DILocation(line: 62, column: 43, scope: !1706)
!1785 = !DILocation(line: 62, column: 54, scope: !1706)
!1786 = !DILocation(line: 62, column: 20, scope: !1706)
!1787 = !DILocation(line: 63, column: 18, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1706, file: !475, line: 63, column: 9)
!1789 = !DILocation(line: 63, column: 9, scope: !1706)
!1790 = !DILocation(line: 0, scope: !1709)
!1791 = !DILocation(line: 77, column: 23, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1709, file: !475, line: 77, column: 5)
!1793 = !DILocation(line: 77, column: 5, scope: !1709)
!1794 = !DILocation(line: 0, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !475, line: 65, column: 13)
!1796 = distinct !DILexicalBlock(scope: !1788, file: !475, line: 64, column: 7)
!1797 = !DILocation(line: 65, column: 13, scope: !1796)
!1798 = !DILocation(line: 67, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !475, line: 66, column: 11)
!1800 = !DILocation(line: 69, column: 11, scope: !1799)
!1801 = !DILocation(line: 72, column: 13, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1795, file: !475, line: 71, column: 11)
!1803 = !DILocation(line: 84, column: 11, scope: !1706)
!1804 = !DILocation(line: 84, column: 5, scope: !1706)
!1805 = !DILocation(line: 85, column: 3, scope: !1683)
!1806 = !DILocation(line: 78, column: 11, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1792, file: !475, line: 78, column: 11)
!1808 = !DILocation(line: 78, column: 21, scope: !1807)
!1809 = !DILocation(line: 78, column: 29, scope: !1807)
!1810 = !DILocation(line: 0, scope: !1762, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 80, column: 11, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !475, line: 79, column: 9)
!1813 = !DILocation(line: 110, column: 10, scope: !1762, inlinedAt: !1811)
!1814 = !DILocation(line: 81, column: 29, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1812, file: !475, line: 81, column: 15)
!1816 = !DILocation(line: 0, scope: !1722, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 81, column: 16, scope: !1815)
!1818 = !DILocation(line: 96, column: 7, scope: !1722, inlinedAt: !1817)
!1819 = !DILocation(line: 118, column: 5, scope: !1748, inlinedAt: !1817)
!1820 = !DILocation(line: 98, column: 13, scope: !1741, inlinedAt: !1817)
!1821 = !DILocation(line: 99, column: 15, scope: !1740, inlinedAt: !1817)
!1822 = !DILocation(line: 99, column: 11, scope: !1741, inlinedAt: !1817)
!1823 = !DILocation(line: 108, column: 29, scope: !1737, inlinedAt: !1817)
!1824 = !DILocation(line: 0, scope: !1737, inlinedAt: !1817)
!1825 = !DILocation(line: 109, column: 15, scope: !1737, inlinedAt: !1817)
!1826 = !DILocation(line: 112, column: 9, scope: !1739, inlinedAt: !1817)
!1827 = !DILocation(line: 116, column: 5, scope: !1748, inlinedAt: !1817)
!1828 = !DILocation(line: 81, column: 15, scope: !1812)
!1829 = !DILocation(line: 77, column: 36, scope: !1792)
!1830 = distinct !{!1830, !1793, !1831, !1117}
!1831 = !DILocation(line: 83, column: 9, scope: !1709)
!1832 = !DILocation(line: 87, column: 1, scope: !1683)
!1833 = !DILocation(line: 0, scope: !1722)
!1834 = !DILocation(line: 96, column: 7, scope: !1722)
!1835 = !DILocation(line: 118, column: 5, scope: !1748)
!1836 = !DILocation(line: 98, column: 13, scope: !1741)
!1837 = !DILocation(line: 99, column: 15, scope: !1740)
!1838 = !DILocation(line: 99, column: 11, scope: !1741)
!1839 = !DILocation(line: 108, column: 29, scope: !1737)
!1840 = !DILocation(line: 0, scope: !1737)
!1841 = !DILocation(line: 109, column: 15, scope: !1737)
!1842 = !DILocation(line: 112, column: 9, scope: !1739)
!1843 = !DILocation(line: 116, column: 5, scope: !1748)
!1844 = !DILocation(line: 119, column: 3, scope: !1722)
!1845 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !497, file: !497, line: 50, type: !1021, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1846)
!1846 = !{!1847}
!1847 = !DILocalVariable(name: "file", arg: 1, scope: !1845, file: !497, line: 50, type: !130)
!1848 = !DILocation(line: 0, scope: !1845)
!1849 = !DILocation(line: 52, column: 13, scope: !1845)
!1850 = !DILocation(line: 53, column: 1, scope: !1845)
!1851 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !497, file: !497, line: 87, type: !1852, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !223}
!1854 = !{!1855}
!1855 = !DILocalVariable(name: "ignore", arg: 1, scope: !1851, file: !497, line: 87, type: !223)
!1856 = !DILocation(line: 0, scope: !1851)
!1857 = !DILocation(line: 89, column: 16, scope: !1851)
!1858 = !DILocation(line: 90, column: 1, scope: !1851)
!1859 = distinct !DISubprogram(name: "close_stdout", scope: !497, file: !497, line: 116, type: !563, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1860)
!1860 = !{!1861}
!1861 = !DILocalVariable(name: "write_error", scope: !1862, file: !497, line: 121, type: !130)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !497, line: 120, column: 5)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !497, line: 118, column: 7)
!1864 = !DILocation(line: 118, column: 21, scope: !1863)
!1865 = !DILocation(line: 118, column: 7, scope: !1863)
!1866 = !DILocation(line: 118, column: 29, scope: !1863)
!1867 = !DILocation(line: 119, column: 7, scope: !1863)
!1868 = !DILocation(line: 119, column: 12, scope: !1863)
!1869 = !DILocation(line: 119, column: 25, scope: !1863)
!1870 = !DILocation(line: 119, column: 28, scope: !1863)
!1871 = !DILocation(line: 119, column: 34, scope: !1863)
!1872 = !DILocation(line: 118, column: 7, scope: !1859)
!1873 = !DILocation(line: 121, column: 33, scope: !1862)
!1874 = !DILocation(line: 0, scope: !1862)
!1875 = !DILocation(line: 122, column: 11, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1862, file: !497, line: 122, column: 11)
!1877 = !DILocation(line: 0, scope: !1876)
!1878 = !DILocation(line: 122, column: 11, scope: !1862)
!1879 = !DILocation(line: 123, column: 9, scope: !1876)
!1880 = !DILocation(line: 126, column: 9, scope: !1876)
!1881 = !DILocation(line: 128, column: 14, scope: !1862)
!1882 = !DILocation(line: 128, column: 7, scope: !1862)
!1883 = !DILocation(line: 133, column: 42, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1859, file: !497, line: 133, column: 7)
!1885 = !DILocation(line: 133, column: 28, scope: !1884)
!1886 = !DILocation(line: 133, column: 50, scope: !1884)
!1887 = !DILocation(line: 133, column: 7, scope: !1859)
!1888 = !DILocation(line: 134, column: 12, scope: !1884)
!1889 = !DILocation(line: 134, column: 5, scope: !1884)
!1890 = !DILocation(line: 135, column: 1, scope: !1859)
!1891 = !DISubprogram(name: "_exit", scope: !1669, file: !1669, line: 624, type: !991, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1892 = distinct !DISubprogram(name: "verror", scope: !512, file: !512, line: 251, type: !1893, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !103, !103, !130, !522}
!1895 = !{!1896, !1897, !1898, !1899}
!1896 = !DILocalVariable(name: "status", arg: 1, scope: !1892, file: !512, line: 251, type: !103)
!1897 = !DILocalVariable(name: "errnum", arg: 2, scope: !1892, file: !512, line: 251, type: !103)
!1898 = !DILocalVariable(name: "message", arg: 3, scope: !1892, file: !512, line: 251, type: !130)
!1899 = !DILocalVariable(name: "args", arg: 4, scope: !1892, file: !512, line: 251, type: !522)
!1900 = !DILocation(line: 0, scope: !1892)
!1901 = !DILocation(line: 261, column: 3, scope: !1892)
!1902 = !DILocation(line: 265, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1892, file: !512, line: 265, column: 7)
!1904 = !DILocation(line: 265, column: 7, scope: !1892)
!1905 = !DILocation(line: 266, column: 5, scope: !1903)
!1906 = !DILocation(line: 272, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !512, line: 268, column: 5)
!1908 = !DILocation(line: 276, column: 3, scope: !1892)
!1909 = !{i64 0, i64 8, !1001, i64 8, i64 8, !1001, i64 16, i64 8, !1001, i64 24, i64 4, !1070, i64 28, i64 4, !1070}
!1910 = !DILocation(line: 282, column: 1, scope: !1892)
!1911 = distinct !DISubprogram(name: "flush_stdout", scope: !512, file: !512, line: 163, type: !563, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1912)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "stdout_fd", scope: !1911, file: !512, line: 166, type: !103)
!1914 = !DILocation(line: 0, scope: !1911)
!1915 = !DILocalVariable(name: "fd", arg: 1, scope: !1916, file: !512, line: 145, type: !103)
!1916 = distinct !DISubprogram(name: "is_open", scope: !512, file: !512, line: 145, type: !1629, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1917)
!1917 = !{!1915}
!1918 = !DILocation(line: 0, scope: !1916, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 182, column: 25, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1911, file: !512, line: 182, column: 7)
!1921 = !DILocation(line: 157, column: 15, scope: !1916, inlinedAt: !1919)
!1922 = !DILocation(line: 157, column: 12, scope: !1916, inlinedAt: !1919)
!1923 = !DILocation(line: 182, column: 7, scope: !1911)
!1924 = !DILocation(line: 184, column: 5, scope: !1920)
!1925 = !DILocation(line: 185, column: 1, scope: !1911)
!1926 = distinct !DISubprogram(name: "error_tail", scope: !512, file: !512, line: 219, type: !1893, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1927)
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "status", arg: 1, scope: !1926, file: !512, line: 219, type: !103)
!1929 = !DILocalVariable(name: "errnum", arg: 2, scope: !1926, file: !512, line: 219, type: !103)
!1930 = !DILocalVariable(name: "message", arg: 3, scope: !1926, file: !512, line: 219, type: !130)
!1931 = !DILocalVariable(name: "args", arg: 4, scope: !1926, file: !512, line: 219, type: !522)
!1932 = distinct !DIAssignID()
!1933 = !DILocation(line: 0, scope: !1926)
!1934 = !DILocation(line: 229, column: 13, scope: !1926)
!1935 = !DILocation(line: 135, column: 10, scope: !1936, inlinedAt: !1978)
!1936 = distinct !DISubprogram(name: "vfprintf", scope: !1057, file: !1057, line: 132, type: !1937, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1974)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!103, !1939, !1061, !524}
!1939 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1942, file: !240, line: 51, baseType: !103, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1942, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1942, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1942, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1942, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1942, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1942, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1942, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1942, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1942, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1942, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1942, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1942, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1942, file: !240, line: 70, baseType: !1958, size: 64, offset: 832)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1942, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1942, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1942, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1942, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1942, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1942, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1942, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1942, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1942, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1942, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1942, file: !240, line: 93, baseType: !1958, size: 64, offset: 1344)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1942, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1942, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1942, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1942, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!1974 = !{!1975, !1976, !1977}
!1975 = !DILocalVariable(name: "__stream", arg: 1, scope: !1936, file: !1057, line: 132, type: !1939)
!1976 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1936, file: !1057, line: 133, type: !1061)
!1977 = !DILocalVariable(name: "__ap", arg: 3, scope: !1936, file: !1057, line: 133, type: !524)
!1978 = distinct !DILocation(line: 229, column: 3, scope: !1926)
!1979 = !{!1980, !1982}
!1980 = distinct !{!1980, !1981, !"vfprintf.inline: argument 0"}
!1981 = distinct !{!1981, !"vfprintf.inline"}
!1982 = distinct !{!1982, !1981, !"vfprintf.inline: argument 1"}
!1983 = !DILocation(line: 229, column: 3, scope: !1926)
!1984 = !DILocation(line: 0, scope: !1936, inlinedAt: !1978)
!1985 = !DILocation(line: 232, column: 3, scope: !1926)
!1986 = !DILocation(line: 233, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1926, file: !512, line: 233, column: 7)
!1988 = !DILocation(line: 233, column: 7, scope: !1926)
!1989 = !DILocalVariable(name: "errbuf", scope: !1990, file: !512, line: 193, type: !1994)
!1990 = distinct !DISubprogram(name: "print_errno_message", scope: !512, file: !512, line: 188, type: !991, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1991)
!1991 = !{!1992, !1993, !1989}
!1992 = !DILocalVariable(name: "errnum", arg: 1, scope: !1990, file: !512, line: 188, type: !103)
!1993 = !DILocalVariable(name: "s", scope: !1990, file: !512, line: 190, type: !130)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1995)
!1995 = !{!1996}
!1996 = !DISubrange(count: 1024)
!1997 = !DILocation(line: 0, scope: !1990, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 234, column: 5, scope: !1987)
!1999 = !DILocation(line: 193, column: 3, scope: !1990, inlinedAt: !1998)
!2000 = !DILocation(line: 195, column: 7, scope: !1990, inlinedAt: !1998)
!2001 = !DILocation(line: 207, column: 9, scope: !2002, inlinedAt: !1998)
!2002 = distinct !DILexicalBlock(scope: !1990, file: !512, line: 207, column: 7)
!2003 = !DILocation(line: 207, column: 7, scope: !1990, inlinedAt: !1998)
!2004 = !DILocation(line: 208, column: 9, scope: !2002, inlinedAt: !1998)
!2005 = !DILocation(line: 208, column: 5, scope: !2002, inlinedAt: !1998)
!2006 = !DILocation(line: 214, column: 3, scope: !1990, inlinedAt: !1998)
!2007 = !DILocation(line: 216, column: 1, scope: !1990, inlinedAt: !1998)
!2008 = !DILocation(line: 234, column: 5, scope: !1987)
!2009 = !DILocation(line: 238, column: 3, scope: !1926)
!2010 = !DILocalVariable(name: "__c", arg: 1, scope: !2011, file: !1361, line: 101, type: !103)
!2011 = distinct !DISubprogram(name: "putc_unlocked", scope: !1361, file: !1361, line: 101, type: !2012, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!103, !103, !1940}
!2014 = !{!2010, !2015}
!2015 = !DILocalVariable(name: "__stream", arg: 2, scope: !2011, file: !1361, line: 101, type: !1940)
!2016 = !DILocation(line: 0, scope: !2011, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 238, column: 3, scope: !1926)
!2018 = !DILocation(line: 103, column: 10, scope: !2011, inlinedAt: !2017)
!2019 = !DILocation(line: 240, column: 3, scope: !1926)
!2020 = !DILocation(line: 241, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1926, file: !512, line: 241, column: 7)
!2022 = !DILocation(line: 241, column: 7, scope: !1926)
!2023 = !DILocation(line: 242, column: 5, scope: !2021)
!2024 = !DILocation(line: 243, column: 1, scope: !1926)
!2025 = !DISubprogram(name: "__vfprintf_chk", scope: !1057, file: !1057, line: 96, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!103, !1939, !103, !1061, !524}
!2028 = !DISubprogram(name: "strerror_r", scope: !1187, file: !1187, line: 444, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!124, !103, !124, !127}
!2031 = !DISubprogram(name: "fcntl", scope: !2032, file: !2032, line: 149, type: !2033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2032 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!103, !103, !103, null}
!2035 = distinct !DISubprogram(name: "error", scope: !512, file: !512, line: 285, type: !2036, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !103, !103, !130, null}
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DILocalVariable(name: "status", arg: 1, scope: !2035, file: !512, line: 285, type: !103)
!2040 = !DILocalVariable(name: "errnum", arg: 2, scope: !2035, file: !512, line: 285, type: !103)
!2041 = !DILocalVariable(name: "message", arg: 3, scope: !2035, file: !512, line: 285, type: !130)
!2042 = !DILocalVariable(name: "ap", scope: !2035, file: !512, line: 287, type: !522)
!2043 = distinct !DIAssignID()
!2044 = !DILocation(line: 0, scope: !2035)
!2045 = !DILocation(line: 287, column: 3, scope: !2035)
!2046 = !DILocation(line: 288, column: 3, scope: !2035)
!2047 = !DILocation(line: 289, column: 3, scope: !2035)
!2048 = !DILocation(line: 290, column: 3, scope: !2035)
!2049 = !DILocation(line: 291, column: 1, scope: !2035)
!2050 = !DILocation(line: 0, scope: !519)
!2051 = !DILocation(line: 302, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !519, file: !512, line: 302, column: 7)
!2053 = !DILocation(line: 302, column: 7, scope: !519)
!2054 = !DILocation(line: 307, column: 11, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !512, line: 307, column: 11)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !512, line: 303, column: 5)
!2057 = !DILocation(line: 307, column: 27, scope: !2055)
!2058 = !DILocation(line: 308, column: 11, scope: !2055)
!2059 = !DILocation(line: 308, column: 28, scope: !2055)
!2060 = !DILocation(line: 308, column: 25, scope: !2055)
!2061 = !DILocation(line: 309, column: 15, scope: !2055)
!2062 = !DILocation(line: 309, column: 33, scope: !2055)
!2063 = !DILocation(line: 310, column: 19, scope: !2055)
!2064 = !DILocation(line: 311, column: 22, scope: !2055)
!2065 = !DILocation(line: 311, column: 56, scope: !2055)
!2066 = !DILocation(line: 307, column: 11, scope: !2056)
!2067 = !DILocation(line: 316, column: 21, scope: !2056)
!2068 = !DILocation(line: 317, column: 23, scope: !2056)
!2069 = !DILocation(line: 318, column: 5, scope: !2056)
!2070 = !DILocation(line: 327, column: 3, scope: !519)
!2071 = !DILocation(line: 331, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !519, file: !512, line: 331, column: 7)
!2073 = !DILocation(line: 331, column: 7, scope: !519)
!2074 = !DILocation(line: 332, column: 5, scope: !2072)
!2075 = !DILocation(line: 338, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !512, line: 334, column: 5)
!2077 = !DILocation(line: 346, column: 3, scope: !519)
!2078 = !DILocation(line: 350, column: 3, scope: !519)
!2079 = !DILocation(line: 356, column: 1, scope: !519)
!2080 = distinct !DISubprogram(name: "error_at_line", scope: !512, file: !512, line: 359, type: !2081, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !103, !103, !130, !109, !130, null}
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089}
!2084 = !DILocalVariable(name: "status", arg: 1, scope: !2080, file: !512, line: 359, type: !103)
!2085 = !DILocalVariable(name: "errnum", arg: 2, scope: !2080, file: !512, line: 359, type: !103)
!2086 = !DILocalVariable(name: "file_name", arg: 3, scope: !2080, file: !512, line: 359, type: !130)
!2087 = !DILocalVariable(name: "line_number", arg: 4, scope: !2080, file: !512, line: 360, type: !109)
!2088 = !DILocalVariable(name: "message", arg: 5, scope: !2080, file: !512, line: 360, type: !130)
!2089 = !DILocalVariable(name: "ap", scope: !2080, file: !512, line: 362, type: !522)
!2090 = distinct !DIAssignID()
!2091 = !DILocation(line: 0, scope: !2080)
!2092 = !DILocation(line: 362, column: 3, scope: !2080)
!2093 = !DILocation(line: 363, column: 3, scope: !2080)
!2094 = !DILocation(line: 364, column: 3, scope: !2080)
!2095 = !DILocation(line: 366, column: 3, scope: !2080)
!2096 = !DILocation(line: 367, column: 1, scope: !2080)
!2097 = distinct !DISubprogram(name: "fpurge", scope: !859, file: !859, line: 32, type: !2098, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2134)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!103, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2102, file: !240, line: 51, baseType: !103, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2102, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2102, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2102, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2102, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2102, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2102, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2102, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2102, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2102, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2102, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2102, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2102, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2102, file: !240, line: 70, baseType: !2118, size: 64, offset: 832)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2102, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2102, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2102, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2102, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2102, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2102, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2102, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2102, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2102, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2102, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2102, file: !240, line: 93, baseType: !2118, size: 64, offset: 1344)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2102, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2102, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2102, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2102, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "fp", arg: 1, scope: !2097, file: !859, line: 32, type: !2100)
!2136 = !DILocation(line: 0, scope: !2097)
!2137 = !DILocation(line: 36, column: 3, scope: !2097)
!2138 = !DILocation(line: 38, column: 3, scope: !2097)
!2139 = !DISubprogram(name: "__fpurge", scope: !2140, file: !2140, line: 72, type: !2141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2140 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !2100}
!2143 = distinct !DISubprogram(name: "getprogname", scope: !861, file: !861, line: 54, type: !2144, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!130}
!2146 = !DILocation(line: 58, column: 10, scope: !2143)
!2147 = !DILocation(line: 58, column: 3, scope: !2143)
!2148 = distinct !DISubprogram(name: "set_program_name", scope: !568, file: !568, line: 37, type: !1021, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "argv0", arg: 1, scope: !2148, file: !568, line: 37, type: !130)
!2151 = !DILocalVariable(name: "slash", scope: !2148, file: !568, line: 44, type: !130)
!2152 = !DILocalVariable(name: "base", scope: !2148, file: !568, line: 45, type: !130)
!2153 = !DILocation(line: 0, scope: !2148)
!2154 = !DILocation(line: 44, column: 23, scope: !2148)
!2155 = !DILocation(line: 45, column: 22, scope: !2148)
!2156 = !DILocation(line: 46, column: 17, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2148, file: !568, line: 46, column: 7)
!2158 = !DILocation(line: 46, column: 9, scope: !2157)
!2159 = !DILocation(line: 46, column: 25, scope: !2157)
!2160 = !DILocation(line: 46, column: 40, scope: !2157)
!2161 = !DILocalVariable(name: "__s1", arg: 1, scope: !2162, file: !1083, line: 974, type: !1215)
!2162 = distinct !DISubprogram(name: "memeq", scope: !1083, file: !1083, line: 974, type: !2163, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!223, !1215, !1215, !127}
!2165 = !{!2161, !2166, !2167}
!2166 = !DILocalVariable(name: "__s2", arg: 2, scope: !2162, file: !1083, line: 974, type: !1215)
!2167 = !DILocalVariable(name: "__n", arg: 3, scope: !2162, file: !1083, line: 974, type: !127)
!2168 = !DILocation(line: 0, scope: !2162, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 46, column: 28, scope: !2157)
!2170 = !DILocation(line: 976, column: 11, scope: !2162, inlinedAt: !2169)
!2171 = !DILocation(line: 976, column: 10, scope: !2162, inlinedAt: !2169)
!2172 = !DILocation(line: 46, column: 7, scope: !2148)
!2173 = !DILocation(line: 49, column: 11, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !568, line: 49, column: 11)
!2175 = distinct !DILexicalBlock(scope: !2157, file: !568, line: 47, column: 5)
!2176 = !DILocation(line: 49, column: 36, scope: !2174)
!2177 = !DILocation(line: 49, column: 11, scope: !2175)
!2178 = !DILocation(line: 65, column: 16, scope: !2148)
!2179 = !DILocation(line: 71, column: 27, scope: !2148)
!2180 = !DILocation(line: 74, column: 33, scope: !2148)
!2181 = !DILocation(line: 76, column: 1, scope: !2148)
!2182 = !DISubprogram(name: "strrchr", scope: !1187, file: !1187, line: 273, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2183 = distinct !DIAssignID()
!2184 = !DILocation(line: 0, scope: !577)
!2185 = distinct !DIAssignID()
!2186 = !DILocation(line: 40, column: 29, scope: !577)
!2187 = !DILocation(line: 41, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !577, file: !578, line: 41, column: 7)
!2189 = !DILocation(line: 41, column: 7, scope: !577)
!2190 = !DILocation(line: 47, column: 3, scope: !577)
!2191 = !DILocation(line: 48, column: 3, scope: !577)
!2192 = !DILocalVariable(name: "ps", arg: 1, scope: !2193, file: !2194, line: 1135, type: !2197)
!2193 = distinct !DISubprogram(name: "mbszero", scope: !2194, file: !2194, line: 1135, type: !2195, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !2198)
!2194 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!2198 = !{!2192}
!2199 = !DILocation(line: 0, scope: !2193, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 48, column: 18, scope: !577)
!2201 = !DILocalVariable(name: "__dest", arg: 1, scope: !2202, file: !2203, line: 57, type: !125)
!2202 = distinct !DISubprogram(name: "memset", scope: !2203, file: !2203, line: 57, type: !2204, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !2206)
!2203 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!125, !125, !103, !127}
!2206 = !{!2201, !2207, !2208}
!2207 = !DILocalVariable(name: "__ch", arg: 2, scope: !2202, file: !2203, line: 57, type: !103)
!2208 = !DILocalVariable(name: "__len", arg: 3, scope: !2202, file: !2203, line: 57, type: !127)
!2209 = !DILocation(line: 0, scope: !2202, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 1137, column: 3, scope: !2193, inlinedAt: !2200)
!2211 = !DILocation(line: 59, column: 10, scope: !2202, inlinedAt: !2210)
!2212 = !DILocation(line: 49, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !577, file: !578, line: 49, column: 7)
!2214 = !DILocation(line: 49, column: 39, scope: !2213)
!2215 = !DILocation(line: 49, column: 44, scope: !2213)
!2216 = !DILocation(line: 54, column: 1, scope: !577)
!2217 = !DISubprogram(name: "mbrtoc32", scope: !589, file: !589, line: 57, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!127, !2220, !1061, !127, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2221)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2197)
!2223 = distinct !DISubprogram(name: "clone_quoting_options", scope: !608, file: !608, line: 113, type: !2224, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2227)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!2226, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!2227 = !{!2228, !2229, !2230}
!2228 = !DILocalVariable(name: "o", arg: 1, scope: !2223, file: !608, line: 113, type: !2226)
!2229 = !DILocalVariable(name: "saved_errno", scope: !2223, file: !608, line: 115, type: !103)
!2230 = !DILocalVariable(name: "p", scope: !2223, file: !608, line: 116, type: !2226)
!2231 = !DILocation(line: 0, scope: !2223)
!2232 = !DILocation(line: 115, column: 21, scope: !2223)
!2233 = !DILocation(line: 116, column: 40, scope: !2223)
!2234 = !DILocation(line: 116, column: 31, scope: !2223)
!2235 = !DILocation(line: 118, column: 9, scope: !2223)
!2236 = !DILocation(line: 119, column: 3, scope: !2223)
!2237 = distinct !DISubprogram(name: "get_quoting_style", scope: !608, file: !608, line: 124, type: !2238, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2242)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!634, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "o", arg: 1, scope: !2237, file: !608, line: 124, type: !2240)
!2244 = !DILocation(line: 0, scope: !2237)
!2245 = !DILocation(line: 126, column: 11, scope: !2237)
!2246 = !DILocation(line: 126, column: 46, scope: !2237)
!2247 = !{!2248, !1071, i64 0}
!2248 = !{!"quoting_options", !1071, i64 0, !1071, i64 4, !1003, i64 8, !1002, i64 40, !1002, i64 48}
!2249 = !DILocation(line: 126, column: 3, scope: !2237)
!2250 = distinct !DISubprogram(name: "set_quoting_style", scope: !608, file: !608, line: 132, type: !2251, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !2226, !634}
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "o", arg: 1, scope: !2250, file: !608, line: 132, type: !2226)
!2255 = !DILocalVariable(name: "s", arg: 2, scope: !2250, file: !608, line: 132, type: !634)
!2256 = !DILocation(line: 0, scope: !2250)
!2257 = !DILocation(line: 134, column: 4, scope: !2250)
!2258 = !DILocation(line: 134, column: 45, scope: !2250)
!2259 = !DILocation(line: 135, column: 1, scope: !2250)
!2260 = distinct !DISubprogram(name: "set_char_quoting", scope: !608, file: !608, line: 143, type: !2261, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!103, !2226, !4, !103}
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2270, !2271}
!2264 = !DILocalVariable(name: "o", arg: 1, scope: !2260, file: !608, line: 143, type: !2226)
!2265 = !DILocalVariable(name: "c", arg: 2, scope: !2260, file: !608, line: 143, type: !4)
!2266 = !DILocalVariable(name: "i", arg: 3, scope: !2260, file: !608, line: 143, type: !103)
!2267 = !DILocalVariable(name: "uc", scope: !2260, file: !608, line: 145, type: !132)
!2268 = !DILocalVariable(name: "p", scope: !2260, file: !608, line: 146, type: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2270 = !DILocalVariable(name: "shift", scope: !2260, file: !608, line: 148, type: !103)
!2271 = !DILocalVariable(name: "r", scope: !2260, file: !608, line: 149, type: !109)
!2272 = !DILocation(line: 0, scope: !2260)
!2273 = !DILocation(line: 147, column: 6, scope: !2260)
!2274 = !DILocation(line: 147, column: 41, scope: !2260)
!2275 = !DILocation(line: 147, column: 62, scope: !2260)
!2276 = !DILocation(line: 147, column: 57, scope: !2260)
!2277 = !DILocation(line: 148, column: 15, scope: !2260)
!2278 = !DILocation(line: 149, column: 21, scope: !2260)
!2279 = !DILocation(line: 149, column: 24, scope: !2260)
!2280 = !DILocation(line: 149, column: 34, scope: !2260)
!2281 = !DILocation(line: 150, column: 19, scope: !2260)
!2282 = !DILocation(line: 150, column: 24, scope: !2260)
!2283 = !DILocation(line: 150, column: 6, scope: !2260)
!2284 = !DILocation(line: 151, column: 3, scope: !2260)
!2285 = distinct !DISubprogram(name: "set_quoting_flags", scope: !608, file: !608, line: 159, type: !2286, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!103, !2226, !103}
!2288 = !{!2289, !2290, !2291}
!2289 = !DILocalVariable(name: "o", arg: 1, scope: !2285, file: !608, line: 159, type: !2226)
!2290 = !DILocalVariable(name: "i", arg: 2, scope: !2285, file: !608, line: 159, type: !103)
!2291 = !DILocalVariable(name: "r", scope: !2285, file: !608, line: 163, type: !103)
!2292 = !DILocation(line: 0, scope: !2285)
!2293 = !DILocation(line: 161, column: 8, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2285, file: !608, line: 161, column: 7)
!2295 = !DILocation(line: 161, column: 7, scope: !2285)
!2296 = !DILocation(line: 163, column: 14, scope: !2285)
!2297 = !{!2248, !1071, i64 4}
!2298 = !DILocation(line: 164, column: 12, scope: !2285)
!2299 = !DILocation(line: 165, column: 3, scope: !2285)
!2300 = distinct !DISubprogram(name: "set_custom_quoting", scope: !608, file: !608, line: 169, type: !2301, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2226, !130, !130}
!2303 = !{!2304, !2305, !2306}
!2304 = !DILocalVariable(name: "o", arg: 1, scope: !2300, file: !608, line: 169, type: !2226)
!2305 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2300, file: !608, line: 170, type: !130)
!2306 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2300, file: !608, line: 170, type: !130)
!2307 = !DILocation(line: 0, scope: !2300)
!2308 = !DILocation(line: 172, column: 8, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !608, line: 172, column: 7)
!2310 = !DILocation(line: 172, column: 7, scope: !2300)
!2311 = !DILocation(line: 174, column: 12, scope: !2300)
!2312 = !DILocation(line: 175, column: 8, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2300, file: !608, line: 175, column: 7)
!2314 = !DILocation(line: 175, column: 19, scope: !2313)
!2315 = !DILocation(line: 176, column: 5, scope: !2313)
!2316 = !DILocation(line: 177, column: 6, scope: !2300)
!2317 = !DILocation(line: 177, column: 17, scope: !2300)
!2318 = !{!2248, !1002, i64 40}
!2319 = !DILocation(line: 178, column: 6, scope: !2300)
!2320 = !DILocation(line: 178, column: 18, scope: !2300)
!2321 = !{!2248, !1002, i64 48}
!2322 = !DILocation(line: 179, column: 1, scope: !2300)
!2323 = !DISubprogram(name: "abort", scope: !1191, file: !1191, line: 598, type: !563, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2324 = distinct !DISubprogram(name: "quotearg_buffer", scope: !608, file: !608, line: 774, type: !2325, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!127, !124, !127, !130, !127, !2240}
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2328 = !DILocalVariable(name: "buffer", arg: 1, scope: !2324, file: !608, line: 774, type: !124)
!2329 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2324, file: !608, line: 774, type: !127)
!2330 = !DILocalVariable(name: "arg", arg: 3, scope: !2324, file: !608, line: 775, type: !130)
!2331 = !DILocalVariable(name: "argsize", arg: 4, scope: !2324, file: !608, line: 775, type: !127)
!2332 = !DILocalVariable(name: "o", arg: 5, scope: !2324, file: !608, line: 776, type: !2240)
!2333 = !DILocalVariable(name: "p", scope: !2324, file: !608, line: 778, type: !2240)
!2334 = !DILocalVariable(name: "saved_errno", scope: !2324, file: !608, line: 779, type: !103)
!2335 = !DILocalVariable(name: "r", scope: !2324, file: !608, line: 780, type: !127)
!2336 = !DILocation(line: 0, scope: !2324)
!2337 = !DILocation(line: 778, column: 37, scope: !2324)
!2338 = !DILocation(line: 779, column: 21, scope: !2324)
!2339 = !DILocation(line: 781, column: 43, scope: !2324)
!2340 = !DILocation(line: 781, column: 53, scope: !2324)
!2341 = !DILocation(line: 781, column: 63, scope: !2324)
!2342 = !DILocation(line: 782, column: 43, scope: !2324)
!2343 = !DILocation(line: 782, column: 58, scope: !2324)
!2344 = !DILocation(line: 780, column: 14, scope: !2324)
!2345 = !DILocation(line: 783, column: 9, scope: !2324)
!2346 = !DILocation(line: 784, column: 3, scope: !2324)
!2347 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !608, file: !608, line: 251, type: !2348, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2352)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!127, !124, !127, !130, !127, !634, !103, !2350, !130, !130}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2378, !2380, !2383, !2384, !2385, !2386, !2389, !2390, !2392, !2393, !2396, !2400, !2401, !2409, !2412, !2413, !2414}
!2353 = !DILocalVariable(name: "buffer", arg: 1, scope: !2347, file: !608, line: 251, type: !124)
!2354 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2347, file: !608, line: 251, type: !127)
!2355 = !DILocalVariable(name: "arg", arg: 3, scope: !2347, file: !608, line: 252, type: !130)
!2356 = !DILocalVariable(name: "argsize", arg: 4, scope: !2347, file: !608, line: 252, type: !127)
!2357 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2347, file: !608, line: 253, type: !634)
!2358 = !DILocalVariable(name: "flags", arg: 6, scope: !2347, file: !608, line: 253, type: !103)
!2359 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2347, file: !608, line: 254, type: !2350)
!2360 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2347, file: !608, line: 255, type: !130)
!2361 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2347, file: !608, line: 256, type: !130)
!2362 = !DILocalVariable(name: "unibyte_locale", scope: !2347, file: !608, line: 258, type: !223)
!2363 = !DILocalVariable(name: "len", scope: !2347, file: !608, line: 260, type: !127)
!2364 = !DILocalVariable(name: "orig_buffersize", scope: !2347, file: !608, line: 261, type: !127)
!2365 = !DILocalVariable(name: "quote_string", scope: !2347, file: !608, line: 262, type: !130)
!2366 = !DILocalVariable(name: "quote_string_len", scope: !2347, file: !608, line: 263, type: !127)
!2367 = !DILocalVariable(name: "backslash_escapes", scope: !2347, file: !608, line: 264, type: !223)
!2368 = !DILocalVariable(name: "elide_outer_quotes", scope: !2347, file: !608, line: 265, type: !223)
!2369 = !DILocalVariable(name: "encountered_single_quote", scope: !2347, file: !608, line: 266, type: !223)
!2370 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2347, file: !608, line: 267, type: !223)
!2371 = !DILabel(scope: !2347, name: "process_input", file: !608, line: 308)
!2372 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2347, file: !608, line: 309, type: !223)
!2373 = !DILocalVariable(name: "lq", scope: !2374, file: !608, line: 361, type: !130)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !608, line: 361, column: 11)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !608, line: 360, column: 13)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !608, line: 333, column: 7)
!2377 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 312, column: 5)
!2378 = !DILocalVariable(name: "i", scope: !2379, file: !608, line: 395, type: !127)
!2379 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 395, column: 3)
!2380 = !DILocalVariable(name: "is_right_quote", scope: !2381, file: !608, line: 397, type: !223)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !608, line: 396, column: 5)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !608, line: 395, column: 3)
!2383 = !DILocalVariable(name: "escaping", scope: !2381, file: !608, line: 398, type: !223)
!2384 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2381, file: !608, line: 399, type: !223)
!2385 = !DILocalVariable(name: "c", scope: !2381, file: !608, line: 417, type: !132)
!2386 = !DILabel(scope: !2387, name: "c_and_shell_escape", file: !608, line: 502)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 478, column: 9)
!2388 = distinct !DILexicalBlock(scope: !2381, file: !608, line: 419, column: 9)
!2389 = !DILabel(scope: !2387, name: "c_escape", file: !608, line: 507)
!2390 = !DILocalVariable(name: "m", scope: !2391, file: !608, line: 598, type: !127)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 596, column: 11)
!2392 = !DILocalVariable(name: "printable", scope: !2391, file: !608, line: 600, type: !223)
!2393 = !DILocalVariable(name: "mbs", scope: !2394, file: !608, line: 609, type: !695)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !608, line: 608, column: 15)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !608, line: 602, column: 17)
!2396 = !DILocalVariable(name: "w", scope: !2397, file: !608, line: 618, type: !588)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !608, line: 617, column: 19)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !608, line: 616, column: 17)
!2399 = distinct !DILexicalBlock(scope: !2394, file: !608, line: 616, column: 17)
!2400 = !DILocalVariable(name: "bytes", scope: !2397, file: !608, line: 619, type: !127)
!2401 = !DILocalVariable(name: "j", scope: !2402, file: !608, line: 648, type: !127)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !608, line: 648, column: 29)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !608, line: 647, column: 27)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !608, line: 645, column: 29)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !608, line: 636, column: 23)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !608, line: 628, column: 30)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !608, line: 623, column: 30)
!2408 = distinct !DILexicalBlock(scope: !2397, file: !608, line: 621, column: 25)
!2409 = !DILocalVariable(name: "ilim", scope: !2410, file: !608, line: 674, type: !127)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !608, line: 671, column: 15)
!2411 = distinct !DILexicalBlock(scope: !2391, file: !608, line: 670, column: 17)
!2412 = !DILabel(scope: !2381, name: "store_escape", file: !608, line: 709)
!2413 = !DILabel(scope: !2381, name: "store_c", file: !608, line: 712)
!2414 = !DILabel(scope: !2347, name: "force_outer_quoting_style", file: !608, line: 753)
!2415 = distinct !DIAssignID()
!2416 = distinct !DIAssignID()
!2417 = distinct !DIAssignID()
!2418 = distinct !DIAssignID()
!2419 = distinct !DIAssignID()
!2420 = !DILocation(line: 0, scope: !2394)
!2421 = distinct !DIAssignID()
!2422 = !DILocation(line: 0, scope: !2397)
!2423 = !DILocation(line: 0, scope: !2347)
!2424 = !DILocation(line: 258, column: 25, scope: !2347)
!2425 = !DILocation(line: 258, column: 36, scope: !2347)
!2426 = !DILocation(line: 267, column: 3, scope: !2347)
!2427 = !DILocation(line: 261, column: 10, scope: !2347)
!2428 = !DILocation(line: 262, column: 15, scope: !2347)
!2429 = !DILocation(line: 263, column: 10, scope: !2347)
!2430 = !DILocation(line: 308, column: 2, scope: !2347)
!2431 = !DILocation(line: 311, column: 3, scope: !2347)
!2432 = !DILocation(line: 318, column: 11, scope: !2377)
!2433 = !DILocation(line: 319, column: 9, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !608, line: 319, column: 9)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !608, line: 319, column: 9)
!2436 = distinct !DILexicalBlock(scope: !2377, file: !608, line: 318, column: 11)
!2437 = !DILocation(line: 319, column: 9, scope: !2435)
!2438 = !DILocation(line: 0, scope: !686, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 357, column: 26, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !608, line: 335, column: 11)
!2441 = distinct !DILexicalBlock(scope: !2376, file: !608, line: 334, column: 13)
!2442 = !DILocation(line: 199, column: 29, scope: !686, inlinedAt: !2439)
!2443 = !DILocation(line: 201, column: 19, scope: !2444, inlinedAt: !2439)
!2444 = distinct !DILexicalBlock(scope: !686, file: !608, line: 201, column: 7)
!2445 = !DILocation(line: 201, column: 7, scope: !686, inlinedAt: !2439)
!2446 = !DILocation(line: 229, column: 3, scope: !686, inlinedAt: !2439)
!2447 = !DILocation(line: 230, column: 3, scope: !686, inlinedAt: !2439)
!2448 = !DILocalVariable(name: "ps", arg: 1, scope: !2449, file: !2194, line: 1135, type: !2452)
!2449 = distinct !DISubprogram(name: "mbszero", scope: !2194, file: !2194, line: 1135, type: !2450, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2453)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!2453 = !{!2448}
!2454 = !DILocation(line: 0, scope: !2449, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 230, column: 18, scope: !686, inlinedAt: !2439)
!2456 = !DILocalVariable(name: "__dest", arg: 1, scope: !2457, file: !2203, line: 57, type: !125)
!2457 = distinct !DISubprogram(name: "memset", scope: !2203, file: !2203, line: 57, type: !2204, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2458)
!2458 = !{!2456, !2459, !2460}
!2459 = !DILocalVariable(name: "__ch", arg: 2, scope: !2457, file: !2203, line: 57, type: !103)
!2460 = !DILocalVariable(name: "__len", arg: 3, scope: !2457, file: !2203, line: 57, type: !127)
!2461 = !DILocation(line: 0, scope: !2457, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 1137, column: 3, scope: !2449, inlinedAt: !2455)
!2463 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !2462)
!2464 = !DILocation(line: 231, column: 7, scope: !2465, inlinedAt: !2439)
!2465 = distinct !DILexicalBlock(scope: !686, file: !608, line: 231, column: 7)
!2466 = !DILocation(line: 231, column: 40, scope: !2465, inlinedAt: !2439)
!2467 = !DILocation(line: 231, column: 45, scope: !2465, inlinedAt: !2439)
!2468 = !DILocation(line: 235, column: 1, scope: !686, inlinedAt: !2439)
!2469 = !DILocation(line: 0, scope: !686, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 358, column: 27, scope: !2440)
!2471 = !DILocation(line: 199, column: 29, scope: !686, inlinedAt: !2470)
!2472 = !DILocation(line: 201, column: 19, scope: !2444, inlinedAt: !2470)
!2473 = !DILocation(line: 201, column: 7, scope: !686, inlinedAt: !2470)
!2474 = !DILocation(line: 229, column: 3, scope: !686, inlinedAt: !2470)
!2475 = !DILocation(line: 230, column: 3, scope: !686, inlinedAt: !2470)
!2476 = !DILocation(line: 0, scope: !2449, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 230, column: 18, scope: !686, inlinedAt: !2470)
!2478 = !DILocation(line: 0, scope: !2457, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1137, column: 3, scope: !2449, inlinedAt: !2477)
!2480 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !2479)
!2481 = !DILocation(line: 231, column: 7, scope: !2465, inlinedAt: !2470)
!2482 = !DILocation(line: 231, column: 40, scope: !2465, inlinedAt: !2470)
!2483 = !DILocation(line: 231, column: 45, scope: !2465, inlinedAt: !2470)
!2484 = !DILocation(line: 235, column: 1, scope: !686, inlinedAt: !2470)
!2485 = !DILocation(line: 360, column: 13, scope: !2376)
!2486 = !DILocation(line: 0, scope: !2374)
!2487 = !DILocation(line: 361, column: 45, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2374, file: !608, line: 361, column: 11)
!2489 = !DILocation(line: 361, column: 11, scope: !2374)
!2490 = !DILocation(line: 362, column: 13, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !608, line: 362, column: 13)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !608, line: 362, column: 13)
!2493 = !DILocation(line: 362, column: 13, scope: !2492)
!2494 = !DILocation(line: 361, column: 52, scope: !2488)
!2495 = distinct !{!2495, !2489, !2496, !1117}
!2496 = !DILocation(line: 362, column: 13, scope: !2374)
!2497 = !DILocation(line: 365, column: 28, scope: !2376)
!2498 = !DILocation(line: 260, column: 10, scope: !2347)
!2499 = !DILocation(line: 367, column: 7, scope: !2377)
!2500 = !DILocation(line: 373, column: 7, scope: !2377)
!2501 = !DILocation(line: 381, column: 11, scope: !2377)
!2502 = !DILocation(line: 376, column: 11, scope: !2377)
!2503 = !DILocation(line: 382, column: 9, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !608, line: 382, column: 9)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !608, line: 382, column: 9)
!2506 = distinct !DILexicalBlock(scope: !2377, file: !608, line: 381, column: 11)
!2507 = !DILocation(line: 382, column: 9, scope: !2505)
!2508 = !DILocation(line: 389, column: 7, scope: !2377)
!2509 = !DILocation(line: 392, column: 7, scope: !2377)
!2510 = !DILocation(line: 0, scope: !2379)
!2511 = !DILocation(line: 395, column: 8, scope: !2379)
!2512 = !DILocation(line: 395, scope: !2379)
!2513 = !DILocation(line: 395, column: 34, scope: !2382)
!2514 = !DILocation(line: 395, column: 26, scope: !2382)
!2515 = !DILocation(line: 395, column: 48, scope: !2382)
!2516 = !DILocation(line: 395, column: 55, scope: !2382)
!2517 = !DILocation(line: 395, column: 3, scope: !2379)
!2518 = !DILocation(line: 395, column: 67, scope: !2382)
!2519 = !DILocation(line: 0, scope: !2381)
!2520 = !DILocation(line: 402, column: 11, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2381, file: !608, line: 401, column: 11)
!2522 = !DILocation(line: 404, column: 17, scope: !2521)
!2523 = !DILocation(line: 405, column: 39, scope: !2521)
!2524 = !DILocation(line: 409, column: 32, scope: !2521)
!2525 = !DILocation(line: 405, column: 19, scope: !2521)
!2526 = !DILocation(line: 405, column: 15, scope: !2521)
!2527 = !DILocation(line: 410, column: 11, scope: !2521)
!2528 = !DILocation(line: 410, column: 25, scope: !2521)
!2529 = !DILocalVariable(name: "__s1", arg: 1, scope: !2530, file: !1083, line: 974, type: !1215)
!2530 = distinct !DISubprogram(name: "memeq", scope: !1083, file: !1083, line: 974, type: !2163, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2531)
!2531 = !{!2529, !2532, !2533}
!2532 = !DILocalVariable(name: "__s2", arg: 2, scope: !2530, file: !1083, line: 974, type: !1215)
!2533 = !DILocalVariable(name: "__n", arg: 3, scope: !2530, file: !1083, line: 974, type: !127)
!2534 = !DILocation(line: 0, scope: !2530, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 410, column: 14, scope: !2521)
!2536 = !DILocation(line: 976, column: 11, scope: !2530, inlinedAt: !2535)
!2537 = !DILocation(line: 976, column: 10, scope: !2530, inlinedAt: !2535)
!2538 = !DILocation(line: 401, column: 11, scope: !2381)
!2539 = !DILocation(line: 417, column: 25, scope: !2381)
!2540 = !DILocation(line: 418, column: 7, scope: !2381)
!2541 = !DILocation(line: 421, column: 15, scope: !2388)
!2542 = !DILocation(line: 423, column: 15, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !608, line: 423, column: 15)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !608, line: 422, column: 13)
!2545 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 421, column: 15)
!2546 = !DILocation(line: 423, column: 15, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !608, line: 423, column: 15)
!2548 = !DILocation(line: 423, column: 15, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !608, line: 423, column: 15)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !608, line: 423, column: 15)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !608, line: 423, column: 15)
!2552 = !DILocation(line: 423, column: 15, scope: !2550)
!2553 = !DILocation(line: 423, column: 15, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !608, line: 423, column: 15)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !608, line: 423, column: 15)
!2556 = !DILocation(line: 423, column: 15, scope: !2555)
!2557 = !DILocation(line: 423, column: 15, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !608, line: 423, column: 15)
!2559 = distinct !DILexicalBlock(scope: !2551, file: !608, line: 423, column: 15)
!2560 = !DILocation(line: 423, column: 15, scope: !2559)
!2561 = !DILocation(line: 423, column: 15, scope: !2551)
!2562 = !DILocation(line: 423, column: 15, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !608, line: 423, column: 15)
!2564 = distinct !DILexicalBlock(scope: !2543, file: !608, line: 423, column: 15)
!2565 = !DILocation(line: 423, column: 15, scope: !2564)
!2566 = !DILocation(line: 431, column: 19, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2544, file: !608, line: 430, column: 19)
!2568 = !DILocation(line: 431, column: 24, scope: !2567)
!2569 = !DILocation(line: 431, column: 28, scope: !2567)
!2570 = !DILocation(line: 431, column: 38, scope: !2567)
!2571 = !DILocation(line: 431, column: 48, scope: !2567)
!2572 = !DILocation(line: 431, column: 59, scope: !2567)
!2573 = !DILocation(line: 433, column: 19, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !608, line: 433, column: 19)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !608, line: 433, column: 19)
!2576 = distinct !DILexicalBlock(scope: !2567, file: !608, line: 432, column: 17)
!2577 = !DILocation(line: 433, column: 19, scope: !2575)
!2578 = !DILocation(line: 434, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !608, line: 434, column: 19)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !608, line: 434, column: 19)
!2581 = !DILocation(line: 434, column: 19, scope: !2580)
!2582 = !DILocation(line: 435, column: 17, scope: !2576)
!2583 = !DILocation(line: 442, column: 20, scope: !2545)
!2584 = !DILocation(line: 447, column: 11, scope: !2388)
!2585 = !DILocation(line: 450, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 448, column: 13)
!2587 = !DILocation(line: 456, column: 19, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2586, file: !608, line: 455, column: 19)
!2589 = !DILocation(line: 456, column: 24, scope: !2588)
!2590 = !DILocation(line: 456, column: 28, scope: !2588)
!2591 = !DILocation(line: 456, column: 38, scope: !2588)
!2592 = !DILocation(line: 456, column: 41, scope: !2588)
!2593 = !DILocation(line: 456, column: 52, scope: !2588)
!2594 = !DILocation(line: 455, column: 19, scope: !2586)
!2595 = !DILocation(line: 457, column: 25, scope: !2588)
!2596 = !DILocation(line: 457, column: 17, scope: !2588)
!2597 = !DILocation(line: 464, column: 25, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2588, file: !608, line: 458, column: 19)
!2599 = !DILocation(line: 468, column: 21, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !608, line: 468, column: 21)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !608, line: 468, column: 21)
!2602 = !DILocation(line: 468, column: 21, scope: !2601)
!2603 = !DILocation(line: 469, column: 21, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !608, line: 469, column: 21)
!2605 = distinct !DILexicalBlock(scope: !2598, file: !608, line: 469, column: 21)
!2606 = !DILocation(line: 469, column: 21, scope: !2605)
!2607 = !DILocation(line: 470, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !608, line: 470, column: 21)
!2609 = distinct !DILexicalBlock(scope: !2598, file: !608, line: 470, column: 21)
!2610 = !DILocation(line: 470, column: 21, scope: !2609)
!2611 = !DILocation(line: 471, column: 21, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !608, line: 471, column: 21)
!2613 = distinct !DILexicalBlock(scope: !2598, file: !608, line: 471, column: 21)
!2614 = !DILocation(line: 471, column: 21, scope: !2613)
!2615 = !DILocation(line: 472, column: 21, scope: !2598)
!2616 = !DILocation(line: 482, column: 33, scope: !2387)
!2617 = !DILocation(line: 483, column: 33, scope: !2387)
!2618 = !DILocation(line: 485, column: 33, scope: !2387)
!2619 = !DILocation(line: 486, column: 33, scope: !2387)
!2620 = !DILocation(line: 487, column: 33, scope: !2387)
!2621 = !DILocation(line: 490, column: 17, scope: !2387)
!2622 = !DILocation(line: 492, column: 21, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !608, line: 491, column: 15)
!2624 = distinct !DILexicalBlock(scope: !2387, file: !608, line: 490, column: 17)
!2625 = !DILocation(line: 499, column: 35, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2387, file: !608, line: 499, column: 17)
!2627 = !DILocation(line: 0, scope: !2387)
!2628 = !DILocation(line: 502, column: 11, scope: !2387)
!2629 = !DILocation(line: 504, column: 17, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2387, file: !608, line: 503, column: 17)
!2631 = !DILocation(line: 507, column: 11, scope: !2387)
!2632 = !DILocation(line: 508, column: 17, scope: !2387)
!2633 = !DILocation(line: 517, column: 15, scope: !2388)
!2634 = !DILocation(line: 517, column: 40, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 517, column: 15)
!2636 = !DILocation(line: 517, column: 47, scope: !2635)
!2637 = !DILocation(line: 517, column: 18, scope: !2635)
!2638 = !DILocation(line: 521, column: 17, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 521, column: 15)
!2640 = !DILocation(line: 521, column: 15, scope: !2388)
!2641 = !DILocation(line: 525, column: 11, scope: !2388)
!2642 = !DILocation(line: 537, column: 15, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 536, column: 15)
!2644 = !DILocation(line: 536, column: 15, scope: !2388)
!2645 = !DILocation(line: 544, column: 15, scope: !2388)
!2646 = !DILocation(line: 546, column: 19, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !608, line: 545, column: 13)
!2648 = distinct !DILexicalBlock(scope: !2388, file: !608, line: 544, column: 15)
!2649 = !DILocation(line: 549, column: 19, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !608, line: 549, column: 19)
!2651 = !DILocation(line: 549, column: 30, scope: !2650)
!2652 = !DILocation(line: 558, column: 15, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !608, line: 558, column: 15)
!2654 = distinct !DILexicalBlock(scope: !2647, file: !608, line: 558, column: 15)
!2655 = !DILocation(line: 558, column: 15, scope: !2654)
!2656 = !DILocation(line: 559, column: 15, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !608, line: 559, column: 15)
!2658 = distinct !DILexicalBlock(scope: !2647, file: !608, line: 559, column: 15)
!2659 = !DILocation(line: 559, column: 15, scope: !2658)
!2660 = !DILocation(line: 560, column: 15, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !608, line: 560, column: 15)
!2662 = distinct !DILexicalBlock(scope: !2647, file: !608, line: 560, column: 15)
!2663 = !DILocation(line: 560, column: 15, scope: !2662)
!2664 = !DILocation(line: 562, column: 13, scope: !2647)
!2665 = !DILocation(line: 602, column: 17, scope: !2391)
!2666 = !DILocation(line: 0, scope: !2391)
!2667 = !DILocation(line: 605, column: 29, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2395, file: !608, line: 603, column: 15)
!2669 = !DILocation(line: 605, column: 41, scope: !2668)
!2670 = !DILocation(line: 606, column: 15, scope: !2668)
!2671 = !DILocation(line: 609, column: 17, scope: !2394)
!2672 = !DILocation(line: 0, scope: !2449, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 609, column: 32, scope: !2394)
!2674 = !DILocation(line: 0, scope: !2457, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1137, column: 3, scope: !2449, inlinedAt: !2673)
!2676 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !2675)
!2677 = !DILocation(line: 613, column: 29, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2394, file: !608, line: 613, column: 21)
!2679 = !DILocation(line: 613, column: 21, scope: !2394)
!2680 = !DILocation(line: 614, column: 29, scope: !2678)
!2681 = !DILocation(line: 614, column: 19, scope: !2678)
!2682 = !DILocation(line: 618, column: 21, scope: !2397)
!2683 = !DILocation(line: 620, column: 54, scope: !2397)
!2684 = !DILocation(line: 619, column: 36, scope: !2397)
!2685 = !DILocation(line: 621, column: 25, scope: !2397)
!2686 = !DILocation(line: 631, column: 38, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2406, file: !608, line: 629, column: 23)
!2688 = !DILocation(line: 631, column: 48, scope: !2687)
!2689 = !DILocation(line: 631, column: 25, scope: !2687)
!2690 = !DILocation(line: 626, column: 25, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2407, file: !608, line: 624, column: 23)
!2692 = !DILocation(line: 631, column: 51, scope: !2687)
!2693 = !DILocation(line: 632, column: 28, scope: !2687)
!2694 = !DILocation(line: 631, column: 34, scope: !2687)
!2695 = distinct !{!2695, !2689, !2693, !1117}
!2696 = !DILocation(line: 0, scope: !2402)
!2697 = !DILocation(line: 646, column: 29, scope: !2404)
!2698 = !DILocation(line: 648, column: 29, scope: !2402)
!2699 = !DILocation(line: 649, column: 39, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2402, file: !608, line: 648, column: 29)
!2701 = !DILocation(line: 649, column: 31, scope: !2700)
!2702 = !DILocation(line: 648, column: 60, scope: !2700)
!2703 = !DILocation(line: 648, column: 50, scope: !2700)
!2704 = distinct !{!2704, !2698, !2705, !1117}
!2705 = !DILocation(line: 654, column: 33, scope: !2402)
!2706 = !DILocation(line: 657, column: 43, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2405, file: !608, line: 657, column: 29)
!2708 = !DILocalVariable(name: "wc", arg: 1, scope: !2709, file: !2710, line: 865, type: !2713)
!2709 = distinct !DISubprogram(name: "c32isprint", scope: !2710, file: !2710, line: 865, type: !2711, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2715)
!2710 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!103, !2713}
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2714, line: 20, baseType: !109)
!2714 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2715 = !{!2708}
!2716 = !DILocation(line: 0, scope: !2709, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 657, column: 31, scope: !2707)
!2718 = !DILocation(line: 871, column: 10, scope: !2709, inlinedAt: !2717)
!2719 = !DILocation(line: 657, column: 31, scope: !2707)
!2720 = !DILocation(line: 664, column: 23, scope: !2397)
!2721 = !DILocation(line: 665, column: 19, scope: !2398)
!2722 = !DILocation(line: 666, column: 15, scope: !2395)
!2723 = !DILocation(line: 753, column: 2, scope: !2347)
!2724 = !DILocation(line: 756, column: 51, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 756, column: 7)
!2726 = !DILocation(line: 0, scope: !2395)
!2727 = !DILocation(line: 670, column: 19, scope: !2411)
!2728 = !DILocation(line: 670, column: 23, scope: !2411)
!2729 = !DILocation(line: 674, column: 33, scope: !2410)
!2730 = !DILocation(line: 0, scope: !2410)
!2731 = !DILocation(line: 676, column: 17, scope: !2410)
!2732 = !DILocation(line: 678, column: 43, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !608, line: 678, column: 25)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !608, line: 677, column: 19)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !608, line: 676, column: 17)
!2736 = distinct !DILexicalBlock(scope: !2410, file: !608, line: 676, column: 17)
!2737 = !DILocation(line: 680, column: 25, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !608, line: 680, column: 25)
!2739 = distinct !DILexicalBlock(scope: !2733, file: !608, line: 679, column: 23)
!2740 = !DILocation(line: 680, column: 25, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2738, file: !608, line: 680, column: 25)
!2742 = !DILocation(line: 680, column: 25, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !608, line: 680, column: 25)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !608, line: 680, column: 25)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !608, line: 680, column: 25)
!2746 = !DILocation(line: 680, column: 25, scope: !2744)
!2747 = !DILocation(line: 680, column: 25, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !608, line: 680, column: 25)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !608, line: 680, column: 25)
!2750 = !DILocation(line: 680, column: 25, scope: !2749)
!2751 = !DILocation(line: 680, column: 25, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !608, line: 680, column: 25)
!2753 = distinct !DILexicalBlock(scope: !2745, file: !608, line: 680, column: 25)
!2754 = !DILocation(line: 680, column: 25, scope: !2753)
!2755 = !DILocation(line: 680, column: 25, scope: !2745)
!2756 = !DILocation(line: 680, column: 25, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !608, line: 680, column: 25)
!2758 = distinct !DILexicalBlock(scope: !2738, file: !608, line: 680, column: 25)
!2759 = !DILocation(line: 680, column: 25, scope: !2758)
!2760 = !DILocation(line: 681, column: 25, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !608, line: 681, column: 25)
!2762 = distinct !DILexicalBlock(scope: !2739, file: !608, line: 681, column: 25)
!2763 = !DILocation(line: 681, column: 25, scope: !2762)
!2764 = !DILocation(line: 682, column: 25, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !608, line: 682, column: 25)
!2766 = distinct !DILexicalBlock(scope: !2739, file: !608, line: 682, column: 25)
!2767 = !DILocation(line: 682, column: 25, scope: !2766)
!2768 = !DILocation(line: 683, column: 38, scope: !2739)
!2769 = !DILocation(line: 683, column: 33, scope: !2739)
!2770 = !DILocation(line: 684, column: 23, scope: !2739)
!2771 = !DILocation(line: 685, column: 30, scope: !2733)
!2772 = !DILocation(line: 687, column: 25, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !608, line: 687, column: 25)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !608, line: 687, column: 25)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !608, line: 686, column: 23)
!2776 = distinct !DILexicalBlock(scope: !2733, file: !608, line: 685, column: 30)
!2777 = !DILocation(line: 687, column: 25, scope: !2774)
!2778 = !DILocation(line: 689, column: 23, scope: !2775)
!2779 = !DILocation(line: 690, column: 35, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2734, file: !608, line: 690, column: 25)
!2781 = !DILocation(line: 690, column: 30, scope: !2780)
!2782 = !DILocation(line: 690, column: 25, scope: !2734)
!2783 = !DILocation(line: 692, column: 21, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !608, line: 692, column: 21)
!2785 = distinct !DILexicalBlock(scope: !2734, file: !608, line: 692, column: 21)
!2786 = !DILocation(line: 692, column: 21, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !608, line: 692, column: 21)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !608, line: 692, column: 21)
!2789 = distinct !DILexicalBlock(scope: !2784, file: !608, line: 692, column: 21)
!2790 = !DILocation(line: 692, column: 21, scope: !2788)
!2791 = !DILocation(line: 692, column: 21, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !608, line: 692, column: 21)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !608, line: 692, column: 21)
!2794 = !DILocation(line: 692, column: 21, scope: !2793)
!2795 = !DILocation(line: 692, column: 21, scope: !2789)
!2796 = !DILocation(line: 0, scope: !2734)
!2797 = !DILocation(line: 693, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !608, line: 693, column: 21)
!2799 = distinct !DILexicalBlock(scope: !2734, file: !608, line: 693, column: 21)
!2800 = !DILocation(line: 693, column: 21, scope: !2799)
!2801 = !DILocation(line: 694, column: 25, scope: !2734)
!2802 = !DILocation(line: 676, column: 17, scope: !2735)
!2803 = distinct !{!2803, !2804, !2805}
!2804 = !DILocation(line: 676, column: 17, scope: !2736)
!2805 = !DILocation(line: 695, column: 19, scope: !2736)
!2806 = !DILocation(line: 409, column: 30, scope: !2521)
!2807 = !DILocation(line: 702, column: 34, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2381, file: !608, line: 702, column: 11)
!2809 = !DILocation(line: 704, column: 14, scope: !2808)
!2810 = !DILocation(line: 705, column: 14, scope: !2808)
!2811 = !DILocation(line: 705, column: 35, scope: !2808)
!2812 = !DILocation(line: 705, column: 17, scope: !2808)
!2813 = !DILocation(line: 705, column: 47, scope: !2808)
!2814 = !DILocation(line: 705, column: 65, scope: !2808)
!2815 = !DILocation(line: 706, column: 11, scope: !2808)
!2816 = !DILocation(line: 702, column: 11, scope: !2381)
!2817 = !DILocation(line: 395, column: 15, scope: !2379)
!2818 = !DILocation(line: 709, column: 5, scope: !2381)
!2819 = !DILocation(line: 710, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2381, file: !608, line: 710, column: 7)
!2821 = !DILocation(line: 710, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2820, file: !608, line: 710, column: 7)
!2823 = !DILocation(line: 710, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !608, line: 710, column: 7)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !608, line: 710, column: 7)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !608, line: 710, column: 7)
!2827 = !DILocation(line: 710, column: 7, scope: !2825)
!2828 = !DILocation(line: 710, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !608, line: 710, column: 7)
!2830 = distinct !DILexicalBlock(scope: !2826, file: !608, line: 710, column: 7)
!2831 = !DILocation(line: 710, column: 7, scope: !2830)
!2832 = !DILocation(line: 710, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !608, line: 710, column: 7)
!2834 = distinct !DILexicalBlock(scope: !2826, file: !608, line: 710, column: 7)
!2835 = !DILocation(line: 710, column: 7, scope: !2834)
!2836 = !DILocation(line: 710, column: 7, scope: !2826)
!2837 = !DILocation(line: 710, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !608, line: 710, column: 7)
!2839 = distinct !DILexicalBlock(scope: !2820, file: !608, line: 710, column: 7)
!2840 = !DILocation(line: 710, column: 7, scope: !2839)
!2841 = !DILocation(line: 712, column: 5, scope: !2381)
!2842 = !DILocation(line: 713, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !608, line: 713, column: 7)
!2844 = distinct !DILexicalBlock(scope: !2381, file: !608, line: 713, column: 7)
!2845 = !DILocation(line: 417, column: 21, scope: !2381)
!2846 = !DILocation(line: 713, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !608, line: 713, column: 7)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !608, line: 713, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !608, line: 713, column: 7)
!2850 = !DILocation(line: 713, column: 7, scope: !2848)
!2851 = !DILocation(line: 713, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !608, line: 713, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2849, file: !608, line: 713, column: 7)
!2854 = !DILocation(line: 713, column: 7, scope: !2853)
!2855 = !DILocation(line: 713, column: 7, scope: !2849)
!2856 = !DILocation(line: 714, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !608, line: 714, column: 7)
!2858 = distinct !DILexicalBlock(scope: !2381, file: !608, line: 714, column: 7)
!2859 = !DILocation(line: 714, column: 7, scope: !2858)
!2860 = !DILocation(line: 716, column: 11, scope: !2381)
!2861 = !DILocation(line: 718, column: 5, scope: !2382)
!2862 = !DILocation(line: 395, column: 82, scope: !2382)
!2863 = !DILocation(line: 395, column: 3, scope: !2382)
!2864 = distinct !{!2864, !2517, !2865, !1117}
!2865 = !DILocation(line: 718, column: 5, scope: !2379)
!2866 = !DILocation(line: 720, column: 11, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 720, column: 7)
!2868 = !DILocation(line: 720, column: 16, scope: !2867)
!2869 = !DILocation(line: 728, column: 51, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 728, column: 7)
!2871 = !DILocation(line: 731, column: 11, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2870, file: !608, line: 730, column: 5)
!2873 = !DILocation(line: 732, column: 16, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2872, file: !608, line: 731, column: 11)
!2875 = !DILocation(line: 732, column: 9, scope: !2874)
!2876 = !DILocation(line: 736, column: 18, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !608, line: 736, column: 16)
!2878 = !DILocation(line: 736, column: 29, scope: !2877)
!2879 = !DILocation(line: 745, column: 7, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 745, column: 7)
!2881 = !DILocation(line: 745, column: 20, scope: !2880)
!2882 = !DILocation(line: 746, column: 12, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !608, line: 746, column: 5)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !608, line: 746, column: 5)
!2885 = !DILocation(line: 746, column: 5, scope: !2884)
!2886 = !DILocation(line: 747, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !608, line: 747, column: 7)
!2888 = distinct !DILexicalBlock(scope: !2883, file: !608, line: 747, column: 7)
!2889 = !DILocation(line: 747, column: 7, scope: !2888)
!2890 = !DILocation(line: 746, column: 39, scope: !2883)
!2891 = distinct !{!2891, !2885, !2892, !1117}
!2892 = !DILocation(line: 747, column: 7, scope: !2884)
!2893 = !DILocation(line: 749, column: 11, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2347, file: !608, line: 749, column: 7)
!2895 = !DILocation(line: 749, column: 7, scope: !2347)
!2896 = !DILocation(line: 750, column: 5, scope: !2894)
!2897 = !DILocation(line: 750, column: 17, scope: !2894)
!2898 = !DILocation(line: 756, column: 21, scope: !2725)
!2899 = !DILocation(line: 760, column: 42, scope: !2347)
!2900 = !DILocation(line: 758, column: 10, scope: !2347)
!2901 = !DILocation(line: 758, column: 3, scope: !2347)
!2902 = !DILocation(line: 762, column: 1, scope: !2347)
!2903 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1191, file: !1191, line: 98, type: !2904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!127}
!2906 = !DISubprogram(name: "strlen", scope: !1187, file: !1187, line: 407, type: !2907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!129, !130}
!2909 = !DISubprogram(name: "iswprint", scope: !2910, file: !2910, line: 120, type: !2711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2910 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2911 = distinct !DISubprogram(name: "quotearg_alloc", scope: !608, file: !608, line: 788, type: !2912, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!124, !130, !127, !2240}
!2914 = !{!2915, !2916, !2917}
!2915 = !DILocalVariable(name: "arg", arg: 1, scope: !2911, file: !608, line: 788, type: !130)
!2916 = !DILocalVariable(name: "argsize", arg: 2, scope: !2911, file: !608, line: 788, type: !127)
!2917 = !DILocalVariable(name: "o", arg: 3, scope: !2911, file: !608, line: 789, type: !2240)
!2918 = !DILocation(line: 0, scope: !2911)
!2919 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !608, line: 801, type: !130)
!2920 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !608, file: !608, line: 801, type: !2921, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!124, !130, !127, !888, !2240}
!2923 = !{!2919, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2924 = !DILocalVariable(name: "argsize", arg: 2, scope: !2920, file: !608, line: 801, type: !127)
!2925 = !DILocalVariable(name: "size", arg: 3, scope: !2920, file: !608, line: 801, type: !888)
!2926 = !DILocalVariable(name: "o", arg: 4, scope: !2920, file: !608, line: 802, type: !2240)
!2927 = !DILocalVariable(name: "p", scope: !2920, file: !608, line: 804, type: !2240)
!2928 = !DILocalVariable(name: "saved_errno", scope: !2920, file: !608, line: 805, type: !103)
!2929 = !DILocalVariable(name: "flags", scope: !2920, file: !608, line: 807, type: !103)
!2930 = !DILocalVariable(name: "bufsize", scope: !2920, file: !608, line: 808, type: !127)
!2931 = !DILocalVariable(name: "buf", scope: !2920, file: !608, line: 812, type: !124)
!2932 = !DILocation(line: 0, scope: !2920, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 791, column: 10, scope: !2911)
!2934 = !DILocation(line: 804, column: 37, scope: !2920, inlinedAt: !2933)
!2935 = !DILocation(line: 805, column: 21, scope: !2920, inlinedAt: !2933)
!2936 = !DILocation(line: 807, column: 18, scope: !2920, inlinedAt: !2933)
!2937 = !DILocation(line: 807, column: 24, scope: !2920, inlinedAt: !2933)
!2938 = !DILocation(line: 808, column: 72, scope: !2920, inlinedAt: !2933)
!2939 = !DILocation(line: 809, column: 56, scope: !2920, inlinedAt: !2933)
!2940 = !DILocation(line: 810, column: 49, scope: !2920, inlinedAt: !2933)
!2941 = !DILocation(line: 811, column: 49, scope: !2920, inlinedAt: !2933)
!2942 = !DILocation(line: 808, column: 20, scope: !2920, inlinedAt: !2933)
!2943 = !DILocation(line: 811, column: 62, scope: !2920, inlinedAt: !2933)
!2944 = !DILocation(line: 812, column: 15, scope: !2920, inlinedAt: !2933)
!2945 = !DILocation(line: 813, column: 60, scope: !2920, inlinedAt: !2933)
!2946 = !DILocation(line: 815, column: 32, scope: !2920, inlinedAt: !2933)
!2947 = !DILocation(line: 815, column: 47, scope: !2920, inlinedAt: !2933)
!2948 = !DILocation(line: 813, column: 3, scope: !2920, inlinedAt: !2933)
!2949 = !DILocation(line: 816, column: 9, scope: !2920, inlinedAt: !2933)
!2950 = !DILocation(line: 791, column: 3, scope: !2911)
!2951 = !DILocation(line: 0, scope: !2920)
!2952 = !DILocation(line: 804, column: 37, scope: !2920)
!2953 = !DILocation(line: 805, column: 21, scope: !2920)
!2954 = !DILocation(line: 807, column: 18, scope: !2920)
!2955 = !DILocation(line: 807, column: 27, scope: !2920)
!2956 = !DILocation(line: 807, column: 24, scope: !2920)
!2957 = !DILocation(line: 808, column: 72, scope: !2920)
!2958 = !DILocation(line: 809, column: 56, scope: !2920)
!2959 = !DILocation(line: 810, column: 49, scope: !2920)
!2960 = !DILocation(line: 811, column: 49, scope: !2920)
!2961 = !DILocation(line: 808, column: 20, scope: !2920)
!2962 = !DILocation(line: 811, column: 62, scope: !2920)
!2963 = !DILocation(line: 812, column: 15, scope: !2920)
!2964 = !DILocation(line: 813, column: 60, scope: !2920)
!2965 = !DILocation(line: 815, column: 32, scope: !2920)
!2966 = !DILocation(line: 815, column: 47, scope: !2920)
!2967 = !DILocation(line: 813, column: 3, scope: !2920)
!2968 = !DILocation(line: 816, column: 9, scope: !2920)
!2969 = !DILocation(line: 817, column: 7, scope: !2920)
!2970 = !DILocation(line: 818, column: 11, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2920, file: !608, line: 817, column: 7)
!2972 = !{!1370, !1370, i64 0}
!2973 = !DILocation(line: 818, column: 5, scope: !2971)
!2974 = !DILocation(line: 819, column: 3, scope: !2920)
!2975 = distinct !DISubprogram(name: "quotearg_free", scope: !608, file: !608, line: 837, type: !563, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !2976)
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "sv", scope: !2975, file: !608, line: 839, type: !709)
!2978 = !DILocalVariable(name: "i", scope: !2979, file: !608, line: 840, type: !103)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !608, line: 840, column: 3)
!2980 = !DILocation(line: 839, column: 24, scope: !2975)
!2981 = !DILocation(line: 0, scope: !2975)
!2982 = !DILocation(line: 0, scope: !2979)
!2983 = !DILocation(line: 840, column: 21, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !608, line: 840, column: 3)
!2985 = !DILocation(line: 840, column: 3, scope: !2979)
!2986 = !DILocation(line: 842, column: 13, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !608, line: 842, column: 7)
!2988 = !{!2989, !1002, i64 8}
!2989 = !{!"slotvec", !1370, i64 0, !1002, i64 8}
!2990 = !DILocation(line: 842, column: 17, scope: !2987)
!2991 = !DILocation(line: 842, column: 7, scope: !2975)
!2992 = !DILocation(line: 841, column: 17, scope: !2984)
!2993 = !DILocation(line: 841, column: 5, scope: !2984)
!2994 = !DILocation(line: 840, column: 32, scope: !2984)
!2995 = distinct !{!2995, !2985, !2996, !1117}
!2996 = !DILocation(line: 841, column: 20, scope: !2979)
!2997 = !DILocation(line: 844, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2987, file: !608, line: 843, column: 5)
!2999 = !DILocation(line: 845, column: 21, scope: !2998)
!3000 = !{!2989, !1370, i64 0}
!3001 = !DILocation(line: 846, column: 20, scope: !2998)
!3002 = !DILocation(line: 847, column: 5, scope: !2998)
!3003 = !DILocation(line: 848, column: 10, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2975, file: !608, line: 848, column: 7)
!3005 = !DILocation(line: 848, column: 7, scope: !2975)
!3006 = !DILocation(line: 850, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3004, file: !608, line: 849, column: 5)
!3008 = !DILocation(line: 851, column: 15, scope: !3007)
!3009 = !DILocation(line: 852, column: 5, scope: !3007)
!3010 = !DILocation(line: 853, column: 10, scope: !2975)
!3011 = !DILocation(line: 854, column: 1, scope: !2975)
!3012 = distinct !DISubprogram(name: "quotearg_n", scope: !608, file: !608, line: 919, type: !1184, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3013)
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "n", arg: 1, scope: !3012, file: !608, line: 919, type: !103)
!3015 = !DILocalVariable(name: "arg", arg: 2, scope: !3012, file: !608, line: 919, type: !130)
!3016 = !DILocation(line: 0, scope: !3012)
!3017 = !DILocation(line: 921, column: 10, scope: !3012)
!3018 = !DILocation(line: 921, column: 3, scope: !3012)
!3019 = distinct !DISubprogram(name: "quotearg_n_options", scope: !608, file: !608, line: 866, type: !3020, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!124, !103, !130, !127, !2240}
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3033, !3034, !3036, !3037, !3038}
!3023 = !DILocalVariable(name: "n", arg: 1, scope: !3019, file: !608, line: 866, type: !103)
!3024 = !DILocalVariable(name: "arg", arg: 2, scope: !3019, file: !608, line: 866, type: !130)
!3025 = !DILocalVariable(name: "argsize", arg: 3, scope: !3019, file: !608, line: 866, type: !127)
!3026 = !DILocalVariable(name: "options", arg: 4, scope: !3019, file: !608, line: 867, type: !2240)
!3027 = !DILocalVariable(name: "saved_errno", scope: !3019, file: !608, line: 869, type: !103)
!3028 = !DILocalVariable(name: "sv", scope: !3019, file: !608, line: 871, type: !709)
!3029 = !DILocalVariable(name: "nslots_max", scope: !3019, file: !608, line: 873, type: !103)
!3030 = !DILocalVariable(name: "preallocated", scope: !3031, file: !608, line: 879, type: !223)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !608, line: 878, column: 5)
!3032 = distinct !DILexicalBlock(scope: !3019, file: !608, line: 877, column: 7)
!3033 = !DILocalVariable(name: "new_nslots", scope: !3031, file: !608, line: 880, type: !901)
!3034 = !DILocalVariable(name: "size", scope: !3035, file: !608, line: 891, type: !127)
!3035 = distinct !DILexicalBlock(scope: !3019, file: !608, line: 890, column: 3)
!3036 = !DILocalVariable(name: "val", scope: !3035, file: !608, line: 892, type: !124)
!3037 = !DILocalVariable(name: "flags", scope: !3035, file: !608, line: 894, type: !103)
!3038 = !DILocalVariable(name: "qsize", scope: !3035, file: !608, line: 895, type: !127)
!3039 = distinct !DIAssignID()
!3040 = !DILocation(line: 0, scope: !3031)
!3041 = !DILocation(line: 0, scope: !3019)
!3042 = !DILocation(line: 869, column: 21, scope: !3019)
!3043 = !DILocation(line: 871, column: 24, scope: !3019)
!3044 = !DILocation(line: 874, column: 17, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3019, file: !608, line: 874, column: 7)
!3046 = !DILocation(line: 875, column: 5, scope: !3045)
!3047 = !DILocation(line: 877, column: 7, scope: !3032)
!3048 = !DILocation(line: 877, column: 14, scope: !3032)
!3049 = !DILocation(line: 877, column: 7, scope: !3019)
!3050 = !DILocation(line: 879, column: 31, scope: !3031)
!3051 = !DILocation(line: 880, column: 7, scope: !3031)
!3052 = !DILocation(line: 880, column: 26, scope: !3031)
!3053 = !DILocation(line: 880, column: 13, scope: !3031)
!3054 = distinct !DIAssignID()
!3055 = !DILocation(line: 882, column: 31, scope: !3031)
!3056 = !DILocation(line: 883, column: 33, scope: !3031)
!3057 = !DILocation(line: 883, column: 42, scope: !3031)
!3058 = !DILocation(line: 883, column: 31, scope: !3031)
!3059 = !DILocation(line: 882, column: 22, scope: !3031)
!3060 = !DILocation(line: 882, column: 15, scope: !3031)
!3061 = !DILocation(line: 884, column: 11, scope: !3031)
!3062 = !DILocation(line: 885, column: 15, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3031, file: !608, line: 884, column: 11)
!3064 = !{i64 0, i64 8, !2972, i64 8, i64 8, !1001}
!3065 = !DILocation(line: 885, column: 9, scope: !3063)
!3066 = !DILocation(line: 886, column: 20, scope: !3031)
!3067 = !DILocation(line: 886, column: 18, scope: !3031)
!3068 = !DILocation(line: 886, column: 32, scope: !3031)
!3069 = !DILocation(line: 886, column: 43, scope: !3031)
!3070 = !DILocation(line: 886, column: 53, scope: !3031)
!3071 = !DILocation(line: 0, scope: !2457, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 886, column: 7, scope: !3031)
!3073 = !DILocation(line: 59, column: 10, scope: !2457, inlinedAt: !3072)
!3074 = !DILocation(line: 887, column: 16, scope: !3031)
!3075 = !DILocation(line: 887, column: 14, scope: !3031)
!3076 = !DILocation(line: 888, column: 5, scope: !3032)
!3077 = !DILocation(line: 888, column: 5, scope: !3031)
!3078 = !DILocation(line: 891, column: 19, scope: !3035)
!3079 = !DILocation(line: 891, column: 25, scope: !3035)
!3080 = !DILocation(line: 0, scope: !3035)
!3081 = !DILocation(line: 892, column: 23, scope: !3035)
!3082 = !DILocation(line: 894, column: 26, scope: !3035)
!3083 = !DILocation(line: 894, column: 32, scope: !3035)
!3084 = !DILocation(line: 896, column: 55, scope: !3035)
!3085 = !DILocation(line: 897, column: 55, scope: !3035)
!3086 = !DILocation(line: 898, column: 55, scope: !3035)
!3087 = !DILocation(line: 899, column: 55, scope: !3035)
!3088 = !DILocation(line: 895, column: 20, scope: !3035)
!3089 = !DILocation(line: 901, column: 14, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3035, file: !608, line: 901, column: 9)
!3091 = !DILocation(line: 901, column: 9, scope: !3035)
!3092 = !DILocation(line: 903, column: 35, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3090, file: !608, line: 902, column: 7)
!3094 = !DILocation(line: 903, column: 20, scope: !3093)
!3095 = !DILocation(line: 904, column: 17, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !608, line: 904, column: 13)
!3097 = !DILocation(line: 904, column: 13, scope: !3093)
!3098 = !DILocation(line: 905, column: 11, scope: !3096)
!3099 = !DILocation(line: 906, column: 27, scope: !3093)
!3100 = !DILocation(line: 906, column: 19, scope: !3093)
!3101 = !DILocation(line: 907, column: 69, scope: !3093)
!3102 = !DILocation(line: 909, column: 44, scope: !3093)
!3103 = !DILocation(line: 910, column: 44, scope: !3093)
!3104 = !DILocation(line: 907, column: 9, scope: !3093)
!3105 = !DILocation(line: 911, column: 7, scope: !3093)
!3106 = !DILocation(line: 913, column: 11, scope: !3035)
!3107 = !DILocation(line: 914, column: 5, scope: !3035)
!3108 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !608, file: !608, line: 925, type: !3109, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!124, !103, !130, !127}
!3111 = !{!3112, !3113, !3114}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !608, line: 925, type: !103)
!3113 = !DILocalVariable(name: "arg", arg: 2, scope: !3108, file: !608, line: 925, type: !130)
!3114 = !DILocalVariable(name: "argsize", arg: 3, scope: !3108, file: !608, line: 925, type: !127)
!3115 = !DILocation(line: 0, scope: !3108)
!3116 = !DILocation(line: 927, column: 10, scope: !3108)
!3117 = !DILocation(line: 927, column: 3, scope: !3108)
!3118 = distinct !DISubprogram(name: "quotearg", scope: !608, file: !608, line: 931, type: !1193, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3119)
!3119 = !{!3120}
!3120 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !608, line: 931, type: !130)
!3121 = !DILocation(line: 0, scope: !3118)
!3122 = !DILocation(line: 0, scope: !3012, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 933, column: 10, scope: !3118)
!3124 = !DILocation(line: 921, column: 10, scope: !3012, inlinedAt: !3123)
!3125 = !DILocation(line: 933, column: 3, scope: !3118)
!3126 = distinct !DISubprogram(name: "quotearg_mem", scope: !608, file: !608, line: 937, type: !3127, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!124, !130, !127}
!3129 = !{!3130, !3131}
!3130 = !DILocalVariable(name: "arg", arg: 1, scope: !3126, file: !608, line: 937, type: !130)
!3131 = !DILocalVariable(name: "argsize", arg: 2, scope: !3126, file: !608, line: 937, type: !127)
!3132 = !DILocation(line: 0, scope: !3126)
!3133 = !DILocation(line: 0, scope: !3108, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 939, column: 10, scope: !3126)
!3135 = !DILocation(line: 927, column: 10, scope: !3108, inlinedAt: !3134)
!3136 = !DILocation(line: 939, column: 3, scope: !3126)
!3137 = distinct !DISubprogram(name: "quotearg_n_style", scope: !608, file: !608, line: 943, type: !3138, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!124, !103, !634, !130}
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DILocalVariable(name: "n", arg: 1, scope: !3137, file: !608, line: 943, type: !103)
!3142 = !DILocalVariable(name: "s", arg: 2, scope: !3137, file: !608, line: 943, type: !634)
!3143 = !DILocalVariable(name: "arg", arg: 3, scope: !3137, file: !608, line: 943, type: !130)
!3144 = !DILocalVariable(name: "o", scope: !3137, file: !608, line: 945, type: !2241)
!3145 = distinct !DIAssignID()
!3146 = !DILocation(line: 0, scope: !3137)
!3147 = !DILocation(line: 945, column: 3, scope: !3137)
!3148 = !{!3149}
!3149 = distinct !{!3149, !3150, !"quoting_options_from_style: argument 0"}
!3150 = distinct !{!3150, !"quoting_options_from_style"}
!3151 = !DILocation(line: 945, column: 36, scope: !3137)
!3152 = !DILocalVariable(name: "style", arg: 1, scope: !3153, file: !608, line: 183, type: !634)
!3153 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !608, file: !608, line: 183, type: !3154, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!661, !634}
!3156 = !{!3152, !3157}
!3157 = !DILocalVariable(name: "o", scope: !3153, file: !608, line: 185, type: !661)
!3158 = !DILocation(line: 0, scope: !3153, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 945, column: 36, scope: !3137)
!3160 = !DILocation(line: 185, column: 26, scope: !3153, inlinedAt: !3159)
!3161 = distinct !DIAssignID()
!3162 = !DILocation(line: 186, column: 13, scope: !3163, inlinedAt: !3159)
!3163 = distinct !DILexicalBlock(scope: !3153, file: !608, line: 186, column: 7)
!3164 = !DILocation(line: 186, column: 7, scope: !3153, inlinedAt: !3159)
!3165 = !DILocation(line: 187, column: 5, scope: !3163, inlinedAt: !3159)
!3166 = !DILocation(line: 188, column: 11, scope: !3153, inlinedAt: !3159)
!3167 = distinct !DIAssignID()
!3168 = !DILocation(line: 946, column: 10, scope: !3137)
!3169 = !DILocation(line: 947, column: 1, scope: !3137)
!3170 = !DILocation(line: 946, column: 3, scope: !3137)
!3171 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !608, file: !608, line: 950, type: !3172, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!124, !103, !634, !130, !127}
!3174 = !{!3175, !3176, !3177, !3178, !3179}
!3175 = !DILocalVariable(name: "n", arg: 1, scope: !3171, file: !608, line: 950, type: !103)
!3176 = !DILocalVariable(name: "s", arg: 2, scope: !3171, file: !608, line: 950, type: !634)
!3177 = !DILocalVariable(name: "arg", arg: 3, scope: !3171, file: !608, line: 951, type: !130)
!3178 = !DILocalVariable(name: "argsize", arg: 4, scope: !3171, file: !608, line: 951, type: !127)
!3179 = !DILocalVariable(name: "o", scope: !3171, file: !608, line: 953, type: !2241)
!3180 = distinct !DIAssignID()
!3181 = !DILocation(line: 0, scope: !3171)
!3182 = !DILocation(line: 953, column: 3, scope: !3171)
!3183 = !{!3184}
!3184 = distinct !{!3184, !3185, !"quoting_options_from_style: argument 0"}
!3185 = distinct !{!3185, !"quoting_options_from_style"}
!3186 = !DILocation(line: 953, column: 36, scope: !3171)
!3187 = !DILocation(line: 0, scope: !3153, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 953, column: 36, scope: !3171)
!3189 = !DILocation(line: 185, column: 26, scope: !3153, inlinedAt: !3188)
!3190 = distinct !DIAssignID()
!3191 = !DILocation(line: 186, column: 13, scope: !3163, inlinedAt: !3188)
!3192 = !DILocation(line: 186, column: 7, scope: !3153, inlinedAt: !3188)
!3193 = !DILocation(line: 187, column: 5, scope: !3163, inlinedAt: !3188)
!3194 = !DILocation(line: 188, column: 11, scope: !3153, inlinedAt: !3188)
!3195 = distinct !DIAssignID()
!3196 = !DILocation(line: 954, column: 10, scope: !3171)
!3197 = !DILocation(line: 955, column: 1, scope: !3171)
!3198 = !DILocation(line: 954, column: 3, scope: !3171)
!3199 = distinct !DISubprogram(name: "quotearg_style", scope: !608, file: !608, line: 958, type: !3200, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!124, !634, !130}
!3202 = !{!3203, !3204}
!3203 = !DILocalVariable(name: "s", arg: 1, scope: !3199, file: !608, line: 958, type: !634)
!3204 = !DILocalVariable(name: "arg", arg: 2, scope: !3199, file: !608, line: 958, type: !130)
!3205 = distinct !DIAssignID()
!3206 = !DILocation(line: 0, scope: !3199)
!3207 = !DILocation(line: 0, scope: !3137, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 960, column: 10, scope: !3199)
!3209 = !DILocation(line: 945, column: 3, scope: !3137, inlinedAt: !3208)
!3210 = !{!3211}
!3211 = distinct !{!3211, !3212, !"quoting_options_from_style: argument 0"}
!3212 = distinct !{!3212, !"quoting_options_from_style"}
!3213 = !DILocation(line: 945, column: 36, scope: !3137, inlinedAt: !3208)
!3214 = !DILocation(line: 0, scope: !3153, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 945, column: 36, scope: !3137, inlinedAt: !3208)
!3216 = !DILocation(line: 185, column: 26, scope: !3153, inlinedAt: !3215)
!3217 = distinct !DIAssignID()
!3218 = !DILocation(line: 186, column: 13, scope: !3163, inlinedAt: !3215)
!3219 = !DILocation(line: 186, column: 7, scope: !3153, inlinedAt: !3215)
!3220 = !DILocation(line: 187, column: 5, scope: !3163, inlinedAt: !3215)
!3221 = !DILocation(line: 188, column: 11, scope: !3153, inlinedAt: !3215)
!3222 = distinct !DIAssignID()
!3223 = !DILocation(line: 946, column: 10, scope: !3137, inlinedAt: !3208)
!3224 = !DILocation(line: 947, column: 1, scope: !3137, inlinedAt: !3208)
!3225 = !DILocation(line: 960, column: 3, scope: !3199)
!3226 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !608, file: !608, line: 964, type: !3227, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!124, !634, !130, !127}
!3229 = !{!3230, !3231, !3232}
!3230 = !DILocalVariable(name: "s", arg: 1, scope: !3226, file: !608, line: 964, type: !634)
!3231 = !DILocalVariable(name: "arg", arg: 2, scope: !3226, file: !608, line: 964, type: !130)
!3232 = !DILocalVariable(name: "argsize", arg: 3, scope: !3226, file: !608, line: 964, type: !127)
!3233 = distinct !DIAssignID()
!3234 = !DILocation(line: 0, scope: !3226)
!3235 = !DILocation(line: 0, scope: !3171, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 966, column: 10, scope: !3226)
!3237 = !DILocation(line: 953, column: 3, scope: !3171, inlinedAt: !3236)
!3238 = !{!3239}
!3239 = distinct !{!3239, !3240, !"quoting_options_from_style: argument 0"}
!3240 = distinct !{!3240, !"quoting_options_from_style"}
!3241 = !DILocation(line: 953, column: 36, scope: !3171, inlinedAt: !3236)
!3242 = !DILocation(line: 0, scope: !3153, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 953, column: 36, scope: !3171, inlinedAt: !3236)
!3244 = !DILocation(line: 185, column: 26, scope: !3153, inlinedAt: !3243)
!3245 = distinct !DIAssignID()
!3246 = !DILocation(line: 186, column: 13, scope: !3163, inlinedAt: !3243)
!3247 = !DILocation(line: 186, column: 7, scope: !3153, inlinedAt: !3243)
!3248 = !DILocation(line: 187, column: 5, scope: !3163, inlinedAt: !3243)
!3249 = !DILocation(line: 188, column: 11, scope: !3153, inlinedAt: !3243)
!3250 = distinct !DIAssignID()
!3251 = !DILocation(line: 954, column: 10, scope: !3171, inlinedAt: !3236)
!3252 = !DILocation(line: 955, column: 1, scope: !3171, inlinedAt: !3236)
!3253 = !DILocation(line: 966, column: 3, scope: !3226)
!3254 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !608, file: !608, line: 970, type: !3255, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!124, !130, !127, !4}
!3257 = !{!3258, !3259, !3260, !3261}
!3258 = !DILocalVariable(name: "arg", arg: 1, scope: !3254, file: !608, line: 970, type: !130)
!3259 = !DILocalVariable(name: "argsize", arg: 2, scope: !3254, file: !608, line: 970, type: !127)
!3260 = !DILocalVariable(name: "ch", arg: 3, scope: !3254, file: !608, line: 970, type: !4)
!3261 = !DILocalVariable(name: "options", scope: !3254, file: !608, line: 972, type: !661)
!3262 = distinct !DIAssignID()
!3263 = !DILocation(line: 0, scope: !3254)
!3264 = !DILocation(line: 972, column: 3, scope: !3254)
!3265 = !DILocation(line: 973, column: 13, scope: !3254)
!3266 = !{i64 0, i64 4, !1070, i64 4, i64 4, !1070, i64 8, i64 32, !1079, i64 40, i64 8, !1001, i64 48, i64 8, !1001}
!3267 = distinct !DIAssignID()
!3268 = !DILocation(line: 0, scope: !2260, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 974, column: 3, scope: !3254)
!3270 = !DILocation(line: 147, column: 41, scope: !2260, inlinedAt: !3269)
!3271 = !DILocation(line: 147, column: 62, scope: !2260, inlinedAt: !3269)
!3272 = !DILocation(line: 147, column: 57, scope: !2260, inlinedAt: !3269)
!3273 = !DILocation(line: 148, column: 15, scope: !2260, inlinedAt: !3269)
!3274 = !DILocation(line: 149, column: 21, scope: !2260, inlinedAt: !3269)
!3275 = !DILocation(line: 149, column: 24, scope: !2260, inlinedAt: !3269)
!3276 = !DILocation(line: 150, column: 19, scope: !2260, inlinedAt: !3269)
!3277 = !DILocation(line: 150, column: 24, scope: !2260, inlinedAt: !3269)
!3278 = !DILocation(line: 150, column: 6, scope: !2260, inlinedAt: !3269)
!3279 = !DILocation(line: 975, column: 10, scope: !3254)
!3280 = !DILocation(line: 976, column: 1, scope: !3254)
!3281 = !DILocation(line: 975, column: 3, scope: !3254)
!3282 = distinct !DISubprogram(name: "quotearg_char", scope: !608, file: !608, line: 979, type: !3283, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!124, !130, !4}
!3285 = !{!3286, !3287}
!3286 = !DILocalVariable(name: "arg", arg: 1, scope: !3282, file: !608, line: 979, type: !130)
!3287 = !DILocalVariable(name: "ch", arg: 2, scope: !3282, file: !608, line: 979, type: !4)
!3288 = distinct !DIAssignID()
!3289 = !DILocation(line: 0, scope: !3282)
!3290 = !DILocation(line: 0, scope: !3254, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 981, column: 10, scope: !3282)
!3292 = !DILocation(line: 972, column: 3, scope: !3254, inlinedAt: !3291)
!3293 = !DILocation(line: 973, column: 13, scope: !3254, inlinedAt: !3291)
!3294 = distinct !DIAssignID()
!3295 = !DILocation(line: 0, scope: !2260, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 974, column: 3, scope: !3254, inlinedAt: !3291)
!3297 = !DILocation(line: 147, column: 41, scope: !2260, inlinedAt: !3296)
!3298 = !DILocation(line: 147, column: 62, scope: !2260, inlinedAt: !3296)
!3299 = !DILocation(line: 147, column: 57, scope: !2260, inlinedAt: !3296)
!3300 = !DILocation(line: 148, column: 15, scope: !2260, inlinedAt: !3296)
!3301 = !DILocation(line: 149, column: 21, scope: !2260, inlinedAt: !3296)
!3302 = !DILocation(line: 149, column: 24, scope: !2260, inlinedAt: !3296)
!3303 = !DILocation(line: 150, column: 19, scope: !2260, inlinedAt: !3296)
!3304 = !DILocation(line: 150, column: 24, scope: !2260, inlinedAt: !3296)
!3305 = !DILocation(line: 150, column: 6, scope: !2260, inlinedAt: !3296)
!3306 = !DILocation(line: 975, column: 10, scope: !3254, inlinedAt: !3291)
!3307 = !DILocation(line: 976, column: 1, scope: !3254, inlinedAt: !3291)
!3308 = !DILocation(line: 981, column: 3, scope: !3282)
!3309 = distinct !DISubprogram(name: "quotearg_colon", scope: !608, file: !608, line: 985, type: !1193, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3310)
!3310 = !{!3311}
!3311 = !DILocalVariable(name: "arg", arg: 1, scope: !3309, file: !608, line: 985, type: !130)
!3312 = distinct !DIAssignID()
!3313 = !DILocation(line: 0, scope: !3309)
!3314 = !DILocation(line: 0, scope: !3282, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 987, column: 10, scope: !3309)
!3316 = !DILocation(line: 0, scope: !3254, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 981, column: 10, scope: !3282, inlinedAt: !3315)
!3318 = !DILocation(line: 972, column: 3, scope: !3254, inlinedAt: !3317)
!3319 = !DILocation(line: 973, column: 13, scope: !3254, inlinedAt: !3317)
!3320 = distinct !DIAssignID()
!3321 = !DILocation(line: 0, scope: !2260, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 974, column: 3, scope: !3254, inlinedAt: !3317)
!3323 = !DILocation(line: 147, column: 57, scope: !2260, inlinedAt: !3322)
!3324 = !DILocation(line: 149, column: 21, scope: !2260, inlinedAt: !3322)
!3325 = !DILocation(line: 150, column: 6, scope: !2260, inlinedAt: !3322)
!3326 = !DILocation(line: 975, column: 10, scope: !3254, inlinedAt: !3317)
!3327 = !DILocation(line: 976, column: 1, scope: !3254, inlinedAt: !3317)
!3328 = !DILocation(line: 987, column: 3, scope: !3309)
!3329 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !608, file: !608, line: 991, type: !3127, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3330)
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "arg", arg: 1, scope: !3329, file: !608, line: 991, type: !130)
!3332 = !DILocalVariable(name: "argsize", arg: 2, scope: !3329, file: !608, line: 991, type: !127)
!3333 = distinct !DIAssignID()
!3334 = !DILocation(line: 0, scope: !3329)
!3335 = !DILocation(line: 0, scope: !3254, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 993, column: 10, scope: !3329)
!3337 = !DILocation(line: 972, column: 3, scope: !3254, inlinedAt: !3336)
!3338 = !DILocation(line: 973, column: 13, scope: !3254, inlinedAt: !3336)
!3339 = distinct !DIAssignID()
!3340 = !DILocation(line: 0, scope: !2260, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 974, column: 3, scope: !3254, inlinedAt: !3336)
!3342 = !DILocation(line: 147, column: 57, scope: !2260, inlinedAt: !3341)
!3343 = !DILocation(line: 149, column: 21, scope: !2260, inlinedAt: !3341)
!3344 = !DILocation(line: 150, column: 6, scope: !2260, inlinedAt: !3341)
!3345 = !DILocation(line: 975, column: 10, scope: !3254, inlinedAt: !3336)
!3346 = !DILocation(line: 976, column: 1, scope: !3254, inlinedAt: !3336)
!3347 = !DILocation(line: 993, column: 3, scope: !3329)
!3348 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !608, file: !608, line: 997, type: !3138, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3349)
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DILocalVariable(name: "n", arg: 1, scope: !3348, file: !608, line: 997, type: !103)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !3348, file: !608, line: 997, type: !634)
!3352 = !DILocalVariable(name: "arg", arg: 3, scope: !3348, file: !608, line: 997, type: !130)
!3353 = !DILocalVariable(name: "options", scope: !3348, file: !608, line: 999, type: !661)
!3354 = distinct !DIAssignID()
!3355 = !DILocation(line: 0, scope: !3348)
!3356 = !DILocation(line: 185, column: 26, scope: !3153, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1000, column: 13, scope: !3348)
!3358 = !DILocation(line: 999, column: 3, scope: !3348)
!3359 = !DILocation(line: 0, scope: !3153, inlinedAt: !3357)
!3360 = !DILocation(line: 186, column: 13, scope: !3163, inlinedAt: !3357)
!3361 = !DILocation(line: 186, column: 7, scope: !3153, inlinedAt: !3357)
!3362 = !DILocation(line: 187, column: 5, scope: !3163, inlinedAt: !3357)
!3363 = !{!3364}
!3364 = distinct !{!3364, !3365, !"quoting_options_from_style: argument 0"}
!3365 = distinct !{!3365, !"quoting_options_from_style"}
!3366 = !DILocation(line: 1000, column: 13, scope: !3348)
!3367 = distinct !DIAssignID()
!3368 = distinct !DIAssignID()
!3369 = !DILocation(line: 0, scope: !2260, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1001, column: 3, scope: !3348)
!3371 = !DILocation(line: 147, column: 57, scope: !2260, inlinedAt: !3370)
!3372 = !DILocation(line: 149, column: 21, scope: !2260, inlinedAt: !3370)
!3373 = !DILocation(line: 150, column: 6, scope: !2260, inlinedAt: !3370)
!3374 = distinct !DIAssignID()
!3375 = !DILocation(line: 1002, column: 10, scope: !3348)
!3376 = !DILocation(line: 1003, column: 1, scope: !3348)
!3377 = !DILocation(line: 1002, column: 3, scope: !3348)
!3378 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !608, file: !608, line: 1006, type: !3379, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3381)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!124, !103, !130, !130, !130}
!3381 = !{!3382, !3383, !3384, !3385}
!3382 = !DILocalVariable(name: "n", arg: 1, scope: !3378, file: !608, line: 1006, type: !103)
!3383 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3378, file: !608, line: 1006, type: !130)
!3384 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3378, file: !608, line: 1007, type: !130)
!3385 = !DILocalVariable(name: "arg", arg: 4, scope: !3378, file: !608, line: 1007, type: !130)
!3386 = distinct !DIAssignID()
!3387 = !DILocation(line: 0, scope: !3378)
!3388 = !DILocalVariable(name: "o", scope: !3389, file: !608, line: 1018, type: !661)
!3389 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !608, file: !608, line: 1014, type: !3390, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!124, !103, !130, !130, !130, !127}
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3388}
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !608, line: 1014, type: !103)
!3394 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3389, file: !608, line: 1014, type: !130)
!3395 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3389, file: !608, line: 1015, type: !130)
!3396 = !DILocalVariable(name: "arg", arg: 4, scope: !3389, file: !608, line: 1016, type: !130)
!3397 = !DILocalVariable(name: "argsize", arg: 5, scope: !3389, file: !608, line: 1016, type: !127)
!3398 = !DILocation(line: 0, scope: !3389, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1009, column: 10, scope: !3378)
!3400 = !DILocation(line: 1018, column: 3, scope: !3389, inlinedAt: !3399)
!3401 = !DILocation(line: 1018, column: 30, scope: !3389, inlinedAt: !3399)
!3402 = distinct !DIAssignID()
!3403 = distinct !DIAssignID()
!3404 = !DILocation(line: 0, scope: !2300, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1019, column: 3, scope: !3389, inlinedAt: !3399)
!3406 = !DILocation(line: 174, column: 12, scope: !2300, inlinedAt: !3405)
!3407 = distinct !DIAssignID()
!3408 = !DILocation(line: 175, column: 8, scope: !2313, inlinedAt: !3405)
!3409 = !DILocation(line: 175, column: 19, scope: !2313, inlinedAt: !3405)
!3410 = !DILocation(line: 176, column: 5, scope: !2313, inlinedAt: !3405)
!3411 = !DILocation(line: 177, column: 6, scope: !2300, inlinedAt: !3405)
!3412 = !DILocation(line: 177, column: 17, scope: !2300, inlinedAt: !3405)
!3413 = distinct !DIAssignID()
!3414 = !DILocation(line: 178, column: 6, scope: !2300, inlinedAt: !3405)
!3415 = !DILocation(line: 178, column: 18, scope: !2300, inlinedAt: !3405)
!3416 = distinct !DIAssignID()
!3417 = !DILocation(line: 1020, column: 10, scope: !3389, inlinedAt: !3399)
!3418 = !DILocation(line: 1021, column: 1, scope: !3389, inlinedAt: !3399)
!3419 = !DILocation(line: 1009, column: 3, scope: !3378)
!3420 = distinct !DIAssignID()
!3421 = !DILocation(line: 0, scope: !3389)
!3422 = !DILocation(line: 1018, column: 3, scope: !3389)
!3423 = !DILocation(line: 1018, column: 30, scope: !3389)
!3424 = distinct !DIAssignID()
!3425 = distinct !DIAssignID()
!3426 = !DILocation(line: 0, scope: !2300, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 1019, column: 3, scope: !3389)
!3428 = !DILocation(line: 174, column: 12, scope: !2300, inlinedAt: !3427)
!3429 = distinct !DIAssignID()
!3430 = !DILocation(line: 175, column: 8, scope: !2313, inlinedAt: !3427)
!3431 = !DILocation(line: 175, column: 19, scope: !2313, inlinedAt: !3427)
!3432 = !DILocation(line: 176, column: 5, scope: !2313, inlinedAt: !3427)
!3433 = !DILocation(line: 177, column: 6, scope: !2300, inlinedAt: !3427)
!3434 = !DILocation(line: 177, column: 17, scope: !2300, inlinedAt: !3427)
!3435 = distinct !DIAssignID()
!3436 = !DILocation(line: 178, column: 6, scope: !2300, inlinedAt: !3427)
!3437 = !DILocation(line: 178, column: 18, scope: !2300, inlinedAt: !3427)
!3438 = distinct !DIAssignID()
!3439 = !DILocation(line: 1020, column: 10, scope: !3389)
!3440 = !DILocation(line: 1021, column: 1, scope: !3389)
!3441 = !DILocation(line: 1020, column: 3, scope: !3389)
!3442 = distinct !DISubprogram(name: "quotearg_custom", scope: !608, file: !608, line: 1024, type: !3443, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!124, !130, !130, !130}
!3445 = !{!3446, !3447, !3448}
!3446 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3442, file: !608, line: 1024, type: !130)
!3447 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3442, file: !608, line: 1024, type: !130)
!3448 = !DILocalVariable(name: "arg", arg: 3, scope: !3442, file: !608, line: 1025, type: !130)
!3449 = distinct !DIAssignID()
!3450 = !DILocation(line: 0, scope: !3442)
!3451 = !DILocation(line: 0, scope: !3378, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 1027, column: 10, scope: !3442)
!3453 = !DILocation(line: 0, scope: !3389, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 1009, column: 10, scope: !3378, inlinedAt: !3452)
!3455 = !DILocation(line: 1018, column: 3, scope: !3389, inlinedAt: !3454)
!3456 = !DILocation(line: 1018, column: 30, scope: !3389, inlinedAt: !3454)
!3457 = distinct !DIAssignID()
!3458 = distinct !DIAssignID()
!3459 = !DILocation(line: 0, scope: !2300, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 1019, column: 3, scope: !3389, inlinedAt: !3454)
!3461 = !DILocation(line: 174, column: 12, scope: !2300, inlinedAt: !3460)
!3462 = distinct !DIAssignID()
!3463 = !DILocation(line: 175, column: 8, scope: !2313, inlinedAt: !3460)
!3464 = !DILocation(line: 175, column: 19, scope: !2313, inlinedAt: !3460)
!3465 = !DILocation(line: 176, column: 5, scope: !2313, inlinedAt: !3460)
!3466 = !DILocation(line: 177, column: 6, scope: !2300, inlinedAt: !3460)
!3467 = !DILocation(line: 177, column: 17, scope: !2300, inlinedAt: !3460)
!3468 = distinct !DIAssignID()
!3469 = !DILocation(line: 178, column: 6, scope: !2300, inlinedAt: !3460)
!3470 = !DILocation(line: 178, column: 18, scope: !2300, inlinedAt: !3460)
!3471 = distinct !DIAssignID()
!3472 = !DILocation(line: 1020, column: 10, scope: !3389, inlinedAt: !3454)
!3473 = !DILocation(line: 1021, column: 1, scope: !3389, inlinedAt: !3454)
!3474 = !DILocation(line: 1027, column: 3, scope: !3442)
!3475 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !608, file: !608, line: 1031, type: !3476, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!124, !130, !130, !130, !127}
!3478 = !{!3479, !3480, !3481, !3482}
!3479 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3475, file: !608, line: 1031, type: !130)
!3480 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3475, file: !608, line: 1031, type: !130)
!3481 = !DILocalVariable(name: "arg", arg: 3, scope: !3475, file: !608, line: 1032, type: !130)
!3482 = !DILocalVariable(name: "argsize", arg: 4, scope: !3475, file: !608, line: 1032, type: !127)
!3483 = distinct !DIAssignID()
!3484 = !DILocation(line: 0, scope: !3475)
!3485 = !DILocation(line: 0, scope: !3389, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 1034, column: 10, scope: !3475)
!3487 = !DILocation(line: 1018, column: 3, scope: !3389, inlinedAt: !3486)
!3488 = !DILocation(line: 1018, column: 30, scope: !3389, inlinedAt: !3486)
!3489 = distinct !DIAssignID()
!3490 = distinct !DIAssignID()
!3491 = !DILocation(line: 0, scope: !2300, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 1019, column: 3, scope: !3389, inlinedAt: !3486)
!3493 = !DILocation(line: 174, column: 12, scope: !2300, inlinedAt: !3492)
!3494 = distinct !DIAssignID()
!3495 = !DILocation(line: 175, column: 8, scope: !2313, inlinedAt: !3492)
!3496 = !DILocation(line: 175, column: 19, scope: !2313, inlinedAt: !3492)
!3497 = !DILocation(line: 176, column: 5, scope: !2313, inlinedAt: !3492)
!3498 = !DILocation(line: 177, column: 6, scope: !2300, inlinedAt: !3492)
!3499 = !DILocation(line: 177, column: 17, scope: !2300, inlinedAt: !3492)
!3500 = distinct !DIAssignID()
!3501 = !DILocation(line: 178, column: 6, scope: !2300, inlinedAt: !3492)
!3502 = !DILocation(line: 178, column: 18, scope: !2300, inlinedAt: !3492)
!3503 = distinct !DIAssignID()
!3504 = !DILocation(line: 1020, column: 10, scope: !3389, inlinedAt: !3486)
!3505 = !DILocation(line: 1021, column: 1, scope: !3389, inlinedAt: !3486)
!3506 = !DILocation(line: 1034, column: 3, scope: !3475)
!3507 = distinct !DISubprogram(name: "quote_n_mem", scope: !608, file: !608, line: 1049, type: !3508, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!130, !103, !130, !127}
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "n", arg: 1, scope: !3507, file: !608, line: 1049, type: !103)
!3512 = !DILocalVariable(name: "arg", arg: 2, scope: !3507, file: !608, line: 1049, type: !130)
!3513 = !DILocalVariable(name: "argsize", arg: 3, scope: !3507, file: !608, line: 1049, type: !127)
!3514 = !DILocation(line: 0, scope: !3507)
!3515 = !DILocation(line: 1051, column: 10, scope: !3507)
!3516 = !DILocation(line: 1051, column: 3, scope: !3507)
!3517 = distinct !DISubprogram(name: "quote_mem", scope: !608, file: !608, line: 1055, type: !3518, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!130, !130, !127}
!3520 = !{!3521, !3522}
!3521 = !DILocalVariable(name: "arg", arg: 1, scope: !3517, file: !608, line: 1055, type: !130)
!3522 = !DILocalVariable(name: "argsize", arg: 2, scope: !3517, file: !608, line: 1055, type: !127)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 0, scope: !3507, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1057, column: 10, scope: !3517)
!3526 = !DILocation(line: 1051, column: 10, scope: !3507, inlinedAt: !3525)
!3527 = !DILocation(line: 1057, column: 3, scope: !3517)
!3528 = distinct !DISubprogram(name: "quote_n", scope: !608, file: !608, line: 1061, type: !3529, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!130, !103, !130}
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !608, line: 1061, type: !103)
!3533 = !DILocalVariable(name: "arg", arg: 2, scope: !3528, file: !608, line: 1061, type: !130)
!3534 = !DILocation(line: 0, scope: !3528)
!3535 = !DILocation(line: 0, scope: !3507, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 1063, column: 10, scope: !3528)
!3537 = !DILocation(line: 1051, column: 10, scope: !3507, inlinedAt: !3536)
!3538 = !DILocation(line: 1063, column: 3, scope: !3528)
!3539 = distinct !DISubprogram(name: "quote", scope: !608, file: !608, line: 1067, type: !3540, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!130, !130}
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "arg", arg: 1, scope: !3539, file: !608, line: 1067, type: !130)
!3544 = !DILocation(line: 0, scope: !3539)
!3545 = !DILocation(line: 0, scope: !3528, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 1069, column: 10, scope: !3539)
!3547 = !DILocation(line: 0, scope: !3507, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 1063, column: 10, scope: !3528, inlinedAt: !3546)
!3549 = !DILocation(line: 1051, column: 10, scope: !3507, inlinedAt: !3548)
!3550 = !DILocation(line: 1069, column: 3, scope: !3539)
!3551 = distinct !DISubprogram(name: "parse_user_spec_warn", scope: !724, file: !724, line: 253, type: !3552, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3556)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!130, !130, !3554, !943, !1220, !1220, !3555}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3557 = !DILocalVariable(name: "spec", arg: 1, scope: !3551, file: !724, line: 253, type: !130)
!3558 = !DILocalVariable(name: "uid", arg: 2, scope: !3551, file: !724, line: 253, type: !3554)
!3559 = !DILocalVariable(name: "gid", arg: 3, scope: !3551, file: !724, line: 253, type: !943)
!3560 = !DILocalVariable(name: "username", arg: 4, scope: !3551, file: !724, line: 254, type: !1220)
!3561 = !DILocalVariable(name: "groupname", arg: 5, scope: !3551, file: !724, line: 254, type: !1220)
!3562 = !DILocalVariable(name: "pwarn", arg: 6, scope: !3551, file: !724, line: 254, type: !3555)
!3563 = !DILocalVariable(name: "colon", scope: !3551, file: !724, line: 256, type: !130)
!3564 = !DILocalVariable(name: "error_msg", scope: !3551, file: !724, line: 257, type: !130)
!3565 = !DILocalVariable(name: "warn", scope: !3551, file: !724, line: 259, type: !223)
!3566 = !DILocalVariable(name: "dot", scope: !3567, file: !724, line: 269, type: !130)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !724, line: 262, column: 5)
!3568 = distinct !DILexicalBlock(scope: !3551, file: !724, line: 261, column: 7)
!3569 = !DILocation(line: 0, scope: !3551)
!3570 = !DILocation(line: 256, column: 23, scope: !3551)
!3571 = !DILocation(line: 256, column: 29, scope: !3551)
!3572 = !DILocation(line: 258, column: 5, scope: !3551)
!3573 = !DILocation(line: 261, column: 7, scope: !3568)
!3574 = !DILocation(line: 261, column: 11, scope: !3568)
!3575 = !DILocation(line: 269, column: 25, scope: !3567)
!3576 = !DILocation(line: 0, scope: !3567)
!3577 = !DILocation(line: 270, column: 11, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3567, file: !724, line: 270, column: 11)
!3579 = !DILocation(line: 271, column: 11, scope: !3578)
!3580 = !DILocation(line: 271, column: 16, scope: !3578)
!3581 = !DILocation(line: 270, column: 11, scope: !3567)
!3582 = !DILocation(line: 274, column: 23, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3578, file: !724, line: 272, column: 9)
!3584 = !DILocation(line: 275, column: 9, scope: !3583)
!3585 = !DILocation(line: 257, column: 15, scope: !3551)
!3586 = !DILocation(line: 278, column: 7, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3551, file: !724, line: 278, column: 7)
!3588 = !DILocation(line: 278, column: 7, scope: !3551)
!3589 = !DILocation(line: 279, column: 12, scope: !3587)
!3590 = !DILocation(line: 279, column: 5, scope: !3587)
!3591 = !DILocation(line: 280, column: 3, scope: !3551)
!3592 = distinct !DISubprogram(name: "parse_with_separator", scope: !724, file: !724, line: 101, type: !3593, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!130, !130, !130, !3554, !943, !1220, !1220}
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3607, !3608, !3609, !3610, !3611, !3624, !3627, !3630, !3634, !3642, !3645}
!3596 = !DILocalVariable(name: "spec", arg: 1, scope: !3592, file: !724, line: 101, type: !130)
!3597 = !DILocalVariable(name: "separator", arg: 2, scope: !3592, file: !724, line: 101, type: !130)
!3598 = !DILocalVariable(name: "uid", arg: 3, scope: !3592, file: !724, line: 102, type: !3554)
!3599 = !DILocalVariable(name: "gid", arg: 4, scope: !3592, file: !724, line: 102, type: !943)
!3600 = !DILocalVariable(name: "username", arg: 5, scope: !3592, file: !724, line: 103, type: !1220)
!3601 = !DILocalVariable(name: "groupname", arg: 6, scope: !3592, file: !724, line: 103, type: !1220)
!3602 = !DILocalVariable(name: "error_msg", scope: !3592, file: !724, line: 105, type: !130)
!3603 = !DILocalVariable(name: "u", scope: !3592, file: !724, line: 115, type: !124)
!3604 = !DILocalVariable(name: "ulen", scope: !3605, file: !724, line: 123, type: !901)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !724, line: 122, column: 5)
!3606 = distinct !DILexicalBlock(scope: !3592, file: !724, line: 116, column: 7)
!3607 = !DILocalVariable(name: "g", scope: !3592, file: !724, line: 131, type: !130)
!3608 = !DILocalVariable(name: "gname", scope: !3592, file: !724, line: 144, type: !124)
!3609 = !DILocalVariable(name: "unum", scope: !3592, file: !724, line: 145, type: !200)
!3610 = !DILocalVariable(name: "gnum", scope: !3592, file: !724, line: 146, type: !207)
!3611 = !DILocalVariable(name: "pwd", scope: !3612, file: !724, line: 151, type: !3614)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !724, line: 149, column: 5)
!3613 = distinct !DILexicalBlock(scope: !3592, file: !724, line: 148, column: 7)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1238, line: 49, size: 384, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3615, file: !1238, line: 51, baseType: !124, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3615, file: !1238, line: 52, baseType: !124, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3615, file: !1238, line: 54, baseType: !202, size: 32, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3615, file: !1238, line: 55, baseType: !208, size: 32, offset: 160)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3615, file: !1238, line: 56, baseType: !124, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3615, file: !1238, line: 57, baseType: !124, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3615, file: !1238, line: 58, baseType: !124, size: 64, offset: 320)
!3624 = !DILocalVariable(name: "use_login_group", scope: !3625, file: !724, line: 155, type: !223)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !724, line: 153, column: 9)
!3626 = distinct !DILexicalBlock(scope: !3612, file: !724, line: 152, column: 11)
!3627 = !DILocalVariable(name: "tmp", scope: !3628, file: !724, line: 164, type: !129)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !724, line: 163, column: 13)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !724, line: 156, column: 15)
!3630 = !DILocalVariable(name: "buf", scope: !3631, file: !724, line: 179, type: !557)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !724, line: 176, column: 13)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !724, line: 175, column: 15)
!3633 = distinct !DILexicalBlock(scope: !3626, file: !724, line: 173, column: 9)
!3634 = !DILocalVariable(name: "grp", scope: !3631, file: !724, line: 181, type: !3635)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1534, line: 42, size: 256, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3641}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3636, file: !1534, line: 44, baseType: !124, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3636, file: !1534, line: 45, baseType: !124, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3636, file: !1534, line: 46, baseType: !208, size: 32, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3636, file: !1534, line: 47, baseType: !1220, size: 64, offset: 192)
!3642 = !DILocalVariable(name: "grp", scope: !3643, file: !724, line: 193, type: !3635)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !724, line: 190, column: 5)
!3644 = distinct !DILexicalBlock(scope: !3592, file: !724, line: 189, column: 7)
!3645 = !DILocalVariable(name: "tmp", scope: !3646, file: !724, line: 197, type: !129)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !724, line: 195, column: 9)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !724, line: 194, column: 11)
!3648 = distinct !DIAssignID()
!3649 = !DILocation(line: 0, scope: !3628)
!3650 = distinct !DIAssignID()
!3651 = !DILocation(line: 0, scope: !3631)
!3652 = distinct !DIAssignID()
!3653 = !DILocation(line: 0, scope: !3646)
!3654 = !DILocation(line: 0, scope: !3592)
!3655 = !DILocation(line: 106, column: 7, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3592, file: !724, line: 106, column: 7)
!3657 = !DILocation(line: 106, column: 7, scope: !3592)
!3658 = !DILocation(line: 107, column: 15, scope: !3656)
!3659 = !DILocation(line: 107, column: 5, scope: !3656)
!3660 = !DILocation(line: 108, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3592, file: !724, line: 108, column: 7)
!3662 = !DILocation(line: 108, column: 7, scope: !3592)
!3663 = !DILocation(line: 109, column: 16, scope: !3661)
!3664 = !DILocation(line: 109, column: 5, scope: !3661)
!3665 = !DILocation(line: 116, column: 17, scope: !3606)
!3666 = !DILocation(line: 116, column: 7, scope: !3592)
!3667 = !DILocation(line: 118, column: 11, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !724, line: 118, column: 11)
!3669 = distinct !DILexicalBlock(scope: !3606, file: !724, line: 117, column: 5)
!3670 = !DILocation(line: 118, column: 11, scope: !3669)
!3671 = !DILocation(line: 119, column: 13, scope: !3668)
!3672 = !DILocation(line: 119, column: 9, scope: !3668)
!3673 = !DILocation(line: 0, scope: !3605)
!3674 = !DILocation(line: 124, column: 16, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3605, file: !724, line: 124, column: 11)
!3676 = !DILocation(line: 124, column: 11, scope: !3605)
!3677 = !DILocation(line: 123, column: 30, scope: !3605)
!3678 = !DILocation(line: 126, column: 36, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3675, file: !724, line: 125, column: 9)
!3680 = !DILocation(line: 126, column: 15, scope: !3679)
!3681 = !DILocation(line: 127, column: 11, scope: !3679)
!3682 = !DILocation(line: 127, column: 19, scope: !3679)
!3683 = !DILocation(line: 128, column: 9, scope: !3679)
!3684 = !DILocation(line: 131, column: 53, scope: !3592)
!3685 = !DILocation(line: 131, column: 41, scope: !3592)
!3686 = !DILocation(line: 131, column: 58, scope: !3592)
!3687 = !DILocation(line: 131, column: 20, scope: !3592)
!3688 = !DILocation(line: 145, column: 16, scope: !3592)
!3689 = !DILocation(line: 146, column: 16, scope: !3592)
!3690 = !DILocation(line: 146, column: 22, scope: !3592)
!3691 = !DILocation(line: 148, column: 9, scope: !3613)
!3692 = !DILocation(line: 148, column: 7, scope: !3592)
!3693 = !DILocation(line: 151, column: 29, scope: !3612)
!3694 = !DILocation(line: 151, column: 32, scope: !3612)
!3695 = !DILocation(line: 151, column: 48, scope: !3612)
!3696 = !DILocation(line: 0, scope: !3612)
!3697 = !DILocation(line: 152, column: 15, scope: !3626)
!3698 = !DILocation(line: 152, column: 11, scope: !3612)
!3699 = !DILocation(line: 155, column: 45, scope: !3625)
!3700 = !DILocation(line: 155, column: 53, scope: !3625)
!3701 = !DILocation(line: 0, scope: !3625)
!3702 = !DILocation(line: 156, column: 15, scope: !3625)
!3703 = !DILocation(line: 164, column: 15, scope: !3628)
!3704 = !DILocation(line: 165, column: 19, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3628, file: !724, line: 165, column: 19)
!3706 = !DILocation(line: 165, column: 52, scope: !3705)
!3707 = !DILocation(line: 166, column: 19, scope: !3705)
!3708 = !DILocation(line: 170, column: 13, scope: !3629)
!3709 = !DILocation(line: 174, column: 23, scope: !3633)
!3710 = !DILocation(line: 175, column: 17, scope: !3632)
!3711 = !DILocation(line: 175, column: 25, scope: !3632)
!3712 = !DILocation(line: 179, column: 15, scope: !3631)
!3713 = !DILocation(line: 180, column: 27, scope: !3631)
!3714 = !DILocation(line: 181, column: 35, scope: !3631)
!3715 = !DILocation(line: 182, column: 32, scope: !3631)
!3716 = !DILocation(line: 182, column: 43, scope: !3631)
!3717 = !DILocation(line: 182, column: 64, scope: !3631)
!3718 = !DILocation(line: 182, column: 53, scope: !3631)
!3719 = !DILocation(line: 182, column: 23, scope: !3631)
!3720 = !DILocation(line: 183, column: 15, scope: !3631)
!3721 = !DILocation(line: 184, column: 13, scope: !3632)
!3722 = !DILocation(line: 184, column: 13, scope: !3631)
!3723 = !DILocation(line: 186, column: 7, scope: !3612)
!3724 = !DILocation(line: 187, column: 5, scope: !3612)
!3725 = !DILocation(line: 144, column: 9, scope: !3592)
!3726 = !DILocation(line: 145, column: 9, scope: !3592)
!3727 = !DILocation(line: 146, column: 9, scope: !3592)
!3728 = !DILocation(line: 189, column: 9, scope: !3644)
!3729 = !DILocation(line: 189, column: 17, scope: !3644)
!3730 = !DILocation(line: 193, column: 28, scope: !3643)
!3731 = !DILocation(line: 193, column: 31, scope: !3643)
!3732 = !DILocation(line: 193, column: 47, scope: !3643)
!3733 = !DILocation(line: 0, scope: !3643)
!3734 = !DILocation(line: 194, column: 15, scope: !3647)
!3735 = !DILocation(line: 194, column: 11, scope: !3643)
!3736 = !DILocation(line: 197, column: 11, scope: !3646)
!3737 = !DILocation(line: 198, column: 15, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3646, file: !724, line: 198, column: 15)
!3739 = !DILocation(line: 198, column: 48, scope: !3738)
!3740 = !DILocation(line: 199, column: 15, scope: !3738)
!3741 = !DILocation(line: 203, column: 9, scope: !3647)
!3742 = !DILocation(line: 203, column: 9, scope: !3646)
!3743 = !DILocation(line: 205, column: 21, scope: !3647)
!3744 = !{!1563, !1071, i64 16}
!3745 = !DILocation(line: 0, scope: !3647)
!3746 = !DILocation(line: 160, column: 25, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3629, file: !724, line: 157, column: 13)
!3748 = !DILocation(line: 206, column: 7, scope: !3643)
!3749 = !DILocation(line: 207, column: 15, scope: !3643)
!3750 = !DILocation(line: 208, column: 5, scope: !3643)
!3751 = !DILocation(line: 210, column: 17, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3592, file: !724, line: 210, column: 7)
!3753 = !DILocation(line: 210, column: 7, scope: !3592)
!3754 = !DILocation(line: 212, column: 12, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3752, file: !724, line: 211, column: 5)
!3756 = !DILocation(line: 213, column: 11, scope: !3755)
!3757 = !DILocation(line: 214, column: 14, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3755, file: !724, line: 213, column: 11)
!3759 = !DILocation(line: 214, column: 9, scope: !3758)
!3760 = !DILocation(line: 215, column: 11, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3755, file: !724, line: 215, column: 11)
!3762 = !DILocation(line: 215, column: 11, scope: !3755)
!3763 = !DILocation(line: 217, column: 21, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !724, line: 216, column: 9)
!3765 = !DILocation(line: 219, column: 9, scope: !3764)
!3766 = !DILocation(line: 220, column: 11, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3755, file: !724, line: 220, column: 11)
!3768 = !DILocation(line: 220, column: 11, scope: !3755)
!3769 = !DILocation(line: 222, column: 22, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !724, line: 221, column: 9)
!3771 = !DILocation(line: 224, column: 9, scope: !3770)
!3772 = !DILocation(line: 227, column: 3, scope: !3592)
!3773 = !DILocation(line: 228, column: 3, scope: !3592)
!3774 = !DILocation(line: 229, column: 10, scope: !3592)
!3775 = !DILocation(line: 229, column: 22, scope: !3592)
!3776 = !DILocation(line: 229, column: 3, scope: !3592)
!3777 = !DISubprogram(name: "endgrent", scope: !1534, file: !1534, line: 67, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3778 = !DISubprogram(name: "endpwent", scope: !1238, file: !1238, line: 78, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3779 = !DISubprogram(name: "getgrnam", scope: !1534, file: !1534, line: 107, type: !3780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!3635, !130}
!3782 = distinct !DISubprogram(name: "parse_user_spec", scope: !724, file: !724, line: 286, type: !3783, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!130, !130, !3554, !943, !1220, !1220}
!3785 = !{!3786, !3787, !3788, !3789, !3790}
!3786 = !DILocalVariable(name: "spec", arg: 1, scope: !3782, file: !724, line: 286, type: !130)
!3787 = !DILocalVariable(name: "uid", arg: 2, scope: !3782, file: !724, line: 286, type: !3554)
!3788 = !DILocalVariable(name: "gid", arg: 3, scope: !3782, file: !724, line: 286, type: !943)
!3789 = !DILocalVariable(name: "username", arg: 4, scope: !3782, file: !724, line: 287, type: !1220)
!3790 = !DILocalVariable(name: "groupname", arg: 5, scope: !3782, file: !724, line: 287, type: !1220)
!3791 = !DILocation(line: 0, scope: !3782)
!3792 = !DILocation(line: 0, scope: !3551, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 289, column: 10, scope: !3782)
!3794 = !DILocation(line: 256, column: 23, scope: !3551, inlinedAt: !3793)
!3795 = !DILocation(line: 256, column: 29, scope: !3551, inlinedAt: !3793)
!3796 = !DILocation(line: 258, column: 5, scope: !3551, inlinedAt: !3793)
!3797 = !DILocation(line: 261, column: 7, scope: !3568, inlinedAt: !3793)
!3798 = !DILocation(line: 261, column: 11, scope: !3568, inlinedAt: !3793)
!3799 = !DILocation(line: 269, column: 25, scope: !3567, inlinedAt: !3793)
!3800 = !DILocation(line: 0, scope: !3567, inlinedAt: !3793)
!3801 = !DILocation(line: 270, column: 11, scope: !3578, inlinedAt: !3793)
!3802 = !DILocation(line: 271, column: 11, scope: !3578, inlinedAt: !3793)
!3803 = !DILocation(line: 271, column: 16, scope: !3578, inlinedAt: !3793)
!3804 = !DILocation(line: 270, column: 11, scope: !3567, inlinedAt: !3793)
!3805 = !DILocation(line: 257, column: 15, scope: !3551, inlinedAt: !3793)
!3806 = !DILocation(line: 289, column: 3, scope: !3782)
!3807 = distinct !DISubprogram(name: "version_etc_arn", scope: !737, file: !737, line: 61, type: !3808, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !3845)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3810, !130, !130, !130, !3844, !127}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3812)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3812, file: !240, line: 51, baseType: !103, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3812, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3812, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3812, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3812, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3812, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3812, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3812, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3812, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3812, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3812, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3812, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3812, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3812, file: !240, line: 70, baseType: !3828, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3812, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3812, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3812, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3812, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3812, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3812, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3812, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3812, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3812, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3812, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3812, file: !240, line: 93, baseType: !3828, size: 64, offset: 1344)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3812, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3812, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3812, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3812, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851}
!3846 = !DILocalVariable(name: "stream", arg: 1, scope: !3807, file: !737, line: 61, type: !3810)
!3847 = !DILocalVariable(name: "command_name", arg: 2, scope: !3807, file: !737, line: 62, type: !130)
!3848 = !DILocalVariable(name: "package", arg: 3, scope: !3807, file: !737, line: 62, type: !130)
!3849 = !DILocalVariable(name: "version", arg: 4, scope: !3807, file: !737, line: 63, type: !130)
!3850 = !DILocalVariable(name: "authors", arg: 5, scope: !3807, file: !737, line: 64, type: !3844)
!3851 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3807, file: !737, line: 64, type: !127)
!3852 = !DILocation(line: 0, scope: !3807)
!3853 = !DILocation(line: 66, column: 7, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3807, file: !737, line: 66, column: 7)
!3855 = !DILocation(line: 66, column: 7, scope: !3807)
!3856 = !DILocation(line: 67, column: 5, scope: !3854)
!3857 = !DILocation(line: 69, column: 5, scope: !3854)
!3858 = !DILocation(line: 83, column: 3, scope: !3807)
!3859 = !DILocation(line: 85, column: 3, scope: !3807)
!3860 = !DILocation(line: 88, column: 3, scope: !3807)
!3861 = !DILocation(line: 95, column: 3, scope: !3807)
!3862 = !DILocation(line: 97, column: 3, scope: !3807)
!3863 = !DILocation(line: 105, column: 7, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3807, file: !737, line: 98, column: 5)
!3865 = !DILocation(line: 106, column: 7, scope: !3864)
!3866 = !DILocation(line: 109, column: 7, scope: !3864)
!3867 = !DILocation(line: 110, column: 7, scope: !3864)
!3868 = !DILocation(line: 113, column: 7, scope: !3864)
!3869 = !DILocation(line: 115, column: 7, scope: !3864)
!3870 = !DILocation(line: 120, column: 7, scope: !3864)
!3871 = !DILocation(line: 122, column: 7, scope: !3864)
!3872 = !DILocation(line: 127, column: 7, scope: !3864)
!3873 = !DILocation(line: 129, column: 7, scope: !3864)
!3874 = !DILocation(line: 134, column: 7, scope: !3864)
!3875 = !DILocation(line: 137, column: 7, scope: !3864)
!3876 = !DILocation(line: 142, column: 7, scope: !3864)
!3877 = !DILocation(line: 145, column: 7, scope: !3864)
!3878 = !DILocation(line: 150, column: 7, scope: !3864)
!3879 = !DILocation(line: 154, column: 7, scope: !3864)
!3880 = !DILocation(line: 159, column: 7, scope: !3864)
!3881 = !DILocation(line: 163, column: 7, scope: !3864)
!3882 = !DILocation(line: 170, column: 7, scope: !3864)
!3883 = !DILocation(line: 174, column: 7, scope: !3864)
!3884 = !DILocation(line: 176, column: 1, scope: !3807)
!3885 = distinct !DISubprogram(name: "version_etc_ar", scope: !737, file: !737, line: 183, type: !3886, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{null, !3810, !130, !130, !130, !3844}
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894}
!3889 = !DILocalVariable(name: "stream", arg: 1, scope: !3885, file: !737, line: 183, type: !3810)
!3890 = !DILocalVariable(name: "command_name", arg: 2, scope: !3885, file: !737, line: 184, type: !130)
!3891 = !DILocalVariable(name: "package", arg: 3, scope: !3885, file: !737, line: 184, type: !130)
!3892 = !DILocalVariable(name: "version", arg: 4, scope: !3885, file: !737, line: 185, type: !130)
!3893 = !DILocalVariable(name: "authors", arg: 5, scope: !3885, file: !737, line: 185, type: !3844)
!3894 = !DILocalVariable(name: "n_authors", scope: !3885, file: !737, line: 187, type: !127)
!3895 = !DILocation(line: 0, scope: !3885)
!3896 = !DILocation(line: 189, column: 8, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3885, file: !737, line: 189, column: 3)
!3898 = !DILocation(line: 189, scope: !3897)
!3899 = !DILocation(line: 189, column: 23, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3897, file: !737, line: 189, column: 3)
!3901 = !DILocation(line: 189, column: 3, scope: !3897)
!3902 = !DILocation(line: 189, column: 52, scope: !3900)
!3903 = distinct !{!3903, !3901, !3904, !1117}
!3904 = !DILocation(line: 190, column: 5, scope: !3897)
!3905 = !DILocation(line: 191, column: 3, scope: !3885)
!3906 = !DILocation(line: 192, column: 1, scope: !3885)
!3907 = distinct !DISubprogram(name: "version_etc_va", scope: !737, file: !737, line: 199, type: !3908, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !3920)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3810, !130, !130, !130, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !523, line: 52, baseType: !3911)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !525, line: 12, baseType: !3912)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !737, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3913, file: !737, line: 192, baseType: !125, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3913, file: !737, line: 192, baseType: !125, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3913, file: !737, line: 192, baseType: !125, size: 64, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3913, file: !737, line: 192, baseType: !103, size: 32, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3913, file: !737, line: 192, baseType: !103, size: 32, offset: 224)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3921 = !DILocalVariable(name: "stream", arg: 1, scope: !3907, file: !737, line: 199, type: !3810)
!3922 = !DILocalVariable(name: "command_name", arg: 2, scope: !3907, file: !737, line: 200, type: !130)
!3923 = !DILocalVariable(name: "package", arg: 3, scope: !3907, file: !737, line: 200, type: !130)
!3924 = !DILocalVariable(name: "version", arg: 4, scope: !3907, file: !737, line: 201, type: !130)
!3925 = !DILocalVariable(name: "authors", arg: 5, scope: !3907, file: !737, line: 201, type: !3910)
!3926 = !DILocalVariable(name: "n_authors", scope: !3907, file: !737, line: 203, type: !127)
!3927 = !DILocalVariable(name: "authtab", scope: !3907, file: !737, line: 204, type: !3928)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 640, elements: !85)
!3929 = distinct !DIAssignID()
!3930 = !DILocation(line: 0, scope: !3907)
!3931 = !DILocation(line: 204, column: 3, scope: !3907)
!3932 = !DILocation(line: 208, column: 35, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !737, line: 206, column: 3)
!3934 = distinct !DILexicalBlock(scope: !3907, file: !737, line: 206, column: 3)
!3935 = !DILocation(line: 208, column: 33, scope: !3933)
!3936 = !DILocation(line: 208, column: 67, scope: !3933)
!3937 = !DILocation(line: 206, column: 3, scope: !3934)
!3938 = !DILocation(line: 208, column: 14, scope: !3933)
!3939 = !DILocation(line: 0, scope: !3934)
!3940 = !DILocation(line: 211, column: 3, scope: !3907)
!3941 = !DILocation(line: 213, column: 1, scope: !3907)
!3942 = distinct !DISubprogram(name: "version_etc", scope: !737, file: !737, line: 230, type: !3943, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !3810, !130, !130, !130, null}
!3945 = !{!3946, !3947, !3948, !3949, !3950}
!3946 = !DILocalVariable(name: "stream", arg: 1, scope: !3942, file: !737, line: 230, type: !3810)
!3947 = !DILocalVariable(name: "command_name", arg: 2, scope: !3942, file: !737, line: 231, type: !130)
!3948 = !DILocalVariable(name: "package", arg: 3, scope: !3942, file: !737, line: 231, type: !130)
!3949 = !DILocalVariable(name: "version", arg: 4, scope: !3942, file: !737, line: 232, type: !130)
!3950 = !DILocalVariable(name: "authors", scope: !3942, file: !737, line: 234, type: !3910)
!3951 = distinct !DIAssignID()
!3952 = !DILocation(line: 0, scope: !3942)
!3953 = !DILocation(line: 234, column: 3, scope: !3942)
!3954 = !DILocation(line: 235, column: 3, scope: !3942)
!3955 = !DILocation(line: 236, column: 3, scope: !3942)
!3956 = !DILocation(line: 237, column: 3, scope: !3942)
!3957 = !DILocation(line: 238, column: 1, scope: !3942)
!3958 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !737, file: !737, line: 241, type: !563, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874)
!3959 = !DILocation(line: 243, column: 3, scope: !3958)
!3960 = !DILocation(line: 248, column: 3, scope: !3958)
!3961 = !DILocation(line: 254, column: 3, scope: !3958)
!3962 = !DILocation(line: 259, column: 3, scope: !3958)
!3963 = !DILocation(line: 261, column: 1, scope: !3958)
!3964 = distinct !DISubprogram(name: "xnrealloc", scope: !3965, file: !3965, line: 147, type: !3966, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !3968)
!3965 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!125, !125, !127, !127}
!3968 = !{!3969, !3970, !3971}
!3969 = !DILocalVariable(name: "p", arg: 1, scope: !3964, file: !3965, line: 147, type: !125)
!3970 = !DILocalVariable(name: "n", arg: 2, scope: !3964, file: !3965, line: 147, type: !127)
!3971 = !DILocalVariable(name: "s", arg: 3, scope: !3964, file: !3965, line: 147, type: !127)
!3972 = !DILocation(line: 0, scope: !3964)
!3973 = !DILocalVariable(name: "p", arg: 1, scope: !3974, file: !882, line: 83, type: !125)
!3974 = distinct !DISubprogram(name: "xreallocarray", scope: !882, file: !882, line: 83, type: !3966, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !3975)
!3975 = !{!3973, !3976, !3977}
!3976 = !DILocalVariable(name: "n", arg: 2, scope: !3974, file: !882, line: 83, type: !127)
!3977 = !DILocalVariable(name: "s", arg: 3, scope: !3974, file: !882, line: 83, type: !127)
!3978 = !DILocation(line: 0, scope: !3974, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 149, column: 10, scope: !3964)
!3980 = !DILocation(line: 85, column: 25, scope: !3974, inlinedAt: !3979)
!3981 = !DILocalVariable(name: "p", arg: 1, scope: !3982, file: !882, line: 37, type: !125)
!3982 = distinct !DISubprogram(name: "check_nonnull", scope: !882, file: !882, line: 37, type: !3983, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !3985)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!125, !125}
!3985 = !{!3981}
!3986 = !DILocation(line: 0, scope: !3982, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 85, column: 10, scope: !3974, inlinedAt: !3979)
!3988 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !3987)
!3989 = distinct !DILexicalBlock(scope: !3982, file: !882, line: 39, column: 7)
!3990 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !3987)
!3991 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !3987)
!3992 = !DILocation(line: 149, column: 3, scope: !3964)
!3993 = !DILocation(line: 0, scope: !3974)
!3994 = !DILocation(line: 85, column: 25, scope: !3974)
!3995 = !DILocation(line: 0, scope: !3982, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 85, column: 10, scope: !3974)
!3997 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !3996)
!3998 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !3996)
!3999 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !3996)
!4000 = !DILocation(line: 85, column: 3, scope: !3974)
!4001 = distinct !DISubprogram(name: "xmalloc", scope: !882, file: !882, line: 47, type: !4002, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!125, !127}
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "s", arg: 1, scope: !4001, file: !882, line: 47, type: !127)
!4006 = !DILocation(line: 0, scope: !4001)
!4007 = !DILocation(line: 49, column: 25, scope: !4001)
!4008 = !DILocation(line: 0, scope: !3982, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 49, column: 10, scope: !4001)
!4010 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4009)
!4011 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4009)
!4012 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4009)
!4013 = !DILocation(line: 49, column: 3, scope: !4001)
!4014 = !DISubprogram(name: "malloc", scope: !1191, file: !1191, line: 540, type: !4002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4015 = distinct !DISubprogram(name: "ximalloc", scope: !882, file: !882, line: 53, type: !4016, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!125, !901}
!4018 = !{!4019}
!4019 = !DILocalVariable(name: "s", arg: 1, scope: !4015, file: !882, line: 53, type: !901)
!4020 = !DILocation(line: 0, scope: !4015)
!4021 = !DILocalVariable(name: "s", arg: 1, scope: !4022, file: !4023, line: 55, type: !901)
!4022 = distinct !DISubprogram(name: "imalloc", scope: !4023, file: !4023, line: 55, type: !4016, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4024)
!4023 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4024 = !{!4021}
!4025 = !DILocation(line: 0, scope: !4022, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 55, column: 25, scope: !4015)
!4027 = !DILocation(line: 57, column: 26, scope: !4022, inlinedAt: !4026)
!4028 = !DILocation(line: 0, scope: !3982, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 55, column: 10, scope: !4015)
!4030 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4029)
!4031 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4029)
!4032 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4029)
!4033 = !DILocation(line: 55, column: 3, scope: !4015)
!4034 = distinct !DISubprogram(name: "xcharalloc", scope: !882, file: !882, line: 59, type: !4035, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!124, !127}
!4037 = !{!4038}
!4038 = !DILocalVariable(name: "n", arg: 1, scope: !4034, file: !882, line: 59, type: !127)
!4039 = !DILocation(line: 0, scope: !4034)
!4040 = !DILocation(line: 0, scope: !4001, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 61, column: 10, scope: !4034)
!4042 = !DILocation(line: 49, column: 25, scope: !4001, inlinedAt: !4041)
!4043 = !DILocation(line: 0, scope: !3982, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 49, column: 10, scope: !4001, inlinedAt: !4041)
!4045 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4044)
!4046 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4044)
!4047 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4044)
!4048 = !DILocation(line: 61, column: 3, scope: !4034)
!4049 = distinct !DISubprogram(name: "xrealloc", scope: !882, file: !882, line: 68, type: !4050, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!125, !125, !127}
!4052 = !{!4053, !4054}
!4053 = !DILocalVariable(name: "p", arg: 1, scope: !4049, file: !882, line: 68, type: !125)
!4054 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !882, line: 68, type: !127)
!4055 = !DILocation(line: 0, scope: !4049)
!4056 = !DILocalVariable(name: "ptr", arg: 1, scope: !4057, file: !4058, line: 2057, type: !125)
!4057 = distinct !DISubprogram(name: "rpl_realloc", scope: !4058, file: !4058, line: 2057, type: !4050, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4059)
!4058 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4059 = !{!4056, !4060}
!4060 = !DILocalVariable(name: "size", arg: 2, scope: !4057, file: !4058, line: 2057, type: !127)
!4061 = !DILocation(line: 0, scope: !4057, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 70, column: 25, scope: !4049)
!4063 = !DILocation(line: 2059, column: 24, scope: !4057, inlinedAt: !4062)
!4064 = !DILocation(line: 2059, column: 10, scope: !4057, inlinedAt: !4062)
!4065 = !DILocation(line: 0, scope: !3982, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 70, column: 10, scope: !4049)
!4067 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4066)
!4068 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4066)
!4069 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4066)
!4070 = !DILocation(line: 70, column: 3, scope: !4049)
!4071 = !DISubprogram(name: "realloc", scope: !1191, file: !1191, line: 551, type: !4050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4072 = distinct !DISubprogram(name: "xirealloc", scope: !882, file: !882, line: 74, type: !4073, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!125, !125, !901}
!4075 = !{!4076, !4077}
!4076 = !DILocalVariable(name: "p", arg: 1, scope: !4072, file: !882, line: 74, type: !125)
!4077 = !DILocalVariable(name: "s", arg: 2, scope: !4072, file: !882, line: 74, type: !901)
!4078 = !DILocation(line: 0, scope: !4072)
!4079 = !DILocalVariable(name: "p", arg: 1, scope: !4080, file: !4023, line: 66, type: !125)
!4080 = distinct !DISubprogram(name: "irealloc", scope: !4023, file: !4023, line: 66, type: !4073, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4081)
!4081 = !{!4079, !4082}
!4082 = !DILocalVariable(name: "s", arg: 2, scope: !4080, file: !4023, line: 66, type: !901)
!4083 = !DILocation(line: 0, scope: !4080, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 76, column: 25, scope: !4072)
!4085 = !DILocation(line: 0, scope: !4057, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 68, column: 26, scope: !4080, inlinedAt: !4084)
!4087 = !DILocation(line: 2059, column: 24, scope: !4057, inlinedAt: !4086)
!4088 = !DILocation(line: 2059, column: 10, scope: !4057, inlinedAt: !4086)
!4089 = !DILocation(line: 0, scope: !3982, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 76, column: 10, scope: !4072)
!4091 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4090)
!4092 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4090)
!4093 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4090)
!4094 = !DILocation(line: 76, column: 3, scope: !4072)
!4095 = distinct !DISubprogram(name: "xireallocarray", scope: !882, file: !882, line: 89, type: !4096, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4098)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!125, !125, !901, !901}
!4098 = !{!4099, !4100, !4101}
!4099 = !DILocalVariable(name: "p", arg: 1, scope: !4095, file: !882, line: 89, type: !125)
!4100 = !DILocalVariable(name: "n", arg: 2, scope: !4095, file: !882, line: 89, type: !901)
!4101 = !DILocalVariable(name: "s", arg: 3, scope: !4095, file: !882, line: 89, type: !901)
!4102 = !DILocation(line: 0, scope: !4095)
!4103 = !DILocalVariable(name: "p", arg: 1, scope: !4104, file: !4023, line: 98, type: !125)
!4104 = distinct !DISubprogram(name: "ireallocarray", scope: !4023, file: !4023, line: 98, type: !4096, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4105)
!4105 = !{!4103, !4106, !4107}
!4106 = !DILocalVariable(name: "n", arg: 2, scope: !4104, file: !4023, line: 98, type: !901)
!4107 = !DILocalVariable(name: "s", arg: 3, scope: !4104, file: !4023, line: 98, type: !901)
!4108 = !DILocation(line: 0, scope: !4104, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 91, column: 25, scope: !4095)
!4110 = !DILocation(line: 101, column: 13, scope: !4104, inlinedAt: !4109)
!4111 = !DILocation(line: 0, scope: !3982, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 91, column: 10, scope: !4095)
!4113 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4112)
!4114 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4112)
!4115 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4112)
!4116 = !DILocation(line: 91, column: 3, scope: !4095)
!4117 = distinct !DISubprogram(name: "xnmalloc", scope: !882, file: !882, line: 98, type: !4118, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4120)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!125, !127, !127}
!4120 = !{!4121, !4122}
!4121 = !DILocalVariable(name: "n", arg: 1, scope: !4117, file: !882, line: 98, type: !127)
!4122 = !DILocalVariable(name: "s", arg: 2, scope: !4117, file: !882, line: 98, type: !127)
!4123 = !DILocation(line: 0, scope: !4117)
!4124 = !DILocation(line: 0, scope: !3974, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 100, column: 10, scope: !4117)
!4126 = !DILocation(line: 85, column: 25, scope: !3974, inlinedAt: !4125)
!4127 = !DILocation(line: 0, scope: !3982, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 85, column: 10, scope: !3974, inlinedAt: !4125)
!4129 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4128)
!4130 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4128)
!4131 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4128)
!4132 = !DILocation(line: 100, column: 3, scope: !4117)
!4133 = distinct !DISubprogram(name: "xinmalloc", scope: !882, file: !882, line: 104, type: !4134, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!125, !901, !901}
!4136 = !{!4137, !4138}
!4137 = !DILocalVariable(name: "n", arg: 1, scope: !4133, file: !882, line: 104, type: !901)
!4138 = !DILocalVariable(name: "s", arg: 2, scope: !4133, file: !882, line: 104, type: !901)
!4139 = !DILocation(line: 0, scope: !4133)
!4140 = !DILocation(line: 0, scope: !4095, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 106, column: 10, scope: !4133)
!4142 = !DILocation(line: 0, scope: !4104, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 91, column: 25, scope: !4095, inlinedAt: !4141)
!4144 = !DILocation(line: 101, column: 13, scope: !4104, inlinedAt: !4143)
!4145 = !DILocation(line: 0, scope: !3982, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 91, column: 10, scope: !4095, inlinedAt: !4141)
!4147 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4146)
!4148 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4146)
!4149 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4146)
!4150 = !DILocation(line: 106, column: 3, scope: !4133)
!4151 = distinct !DISubprogram(name: "x2realloc", scope: !882, file: !882, line: 116, type: !4152, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!125, !125, !888}
!4154 = !{!4155, !4156}
!4155 = !DILocalVariable(name: "p", arg: 1, scope: !4151, file: !882, line: 116, type: !125)
!4156 = !DILocalVariable(name: "ps", arg: 2, scope: !4151, file: !882, line: 116, type: !888)
!4157 = !DILocation(line: 0, scope: !4151)
!4158 = !DILocation(line: 0, scope: !885, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 118, column: 10, scope: !4151)
!4160 = !DILocation(line: 178, column: 14, scope: !885, inlinedAt: !4159)
!4161 = !DILocation(line: 180, column: 9, scope: !4162, inlinedAt: !4159)
!4162 = distinct !DILexicalBlock(scope: !885, file: !882, line: 180, column: 7)
!4163 = !DILocation(line: 180, column: 7, scope: !885, inlinedAt: !4159)
!4164 = !DILocation(line: 182, column: 13, scope: !4165, inlinedAt: !4159)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !882, line: 182, column: 11)
!4166 = distinct !DILexicalBlock(scope: !4162, file: !882, line: 181, column: 5)
!4167 = !DILocation(line: 182, column: 11, scope: !4166, inlinedAt: !4159)
!4168 = !DILocation(line: 197, column: 11, scope: !4169, inlinedAt: !4159)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !882, line: 197, column: 11)
!4170 = distinct !DILexicalBlock(scope: !4162, file: !882, line: 195, column: 5)
!4171 = !DILocation(line: 197, column: 11, scope: !4170, inlinedAt: !4159)
!4172 = !DILocation(line: 198, column: 9, scope: !4169, inlinedAt: !4159)
!4173 = !DILocation(line: 0, scope: !3974, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 201, column: 7, scope: !885, inlinedAt: !4159)
!4175 = !DILocation(line: 85, column: 25, scope: !3974, inlinedAt: !4174)
!4176 = !DILocation(line: 0, scope: !3982, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 85, column: 10, scope: !3974, inlinedAt: !4174)
!4178 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4177)
!4179 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4177)
!4180 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4177)
!4181 = !DILocation(line: 202, column: 7, scope: !885, inlinedAt: !4159)
!4182 = !DILocation(line: 118, column: 3, scope: !4151)
!4183 = !DILocation(line: 0, scope: !885)
!4184 = !DILocation(line: 178, column: 14, scope: !885)
!4185 = !DILocation(line: 180, column: 9, scope: !4162)
!4186 = !DILocation(line: 180, column: 7, scope: !885)
!4187 = !DILocation(line: 182, column: 13, scope: !4165)
!4188 = !DILocation(line: 182, column: 11, scope: !4166)
!4189 = !DILocation(line: 190, column: 30, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4165, file: !882, line: 183, column: 9)
!4191 = !DILocation(line: 191, column: 16, scope: !4190)
!4192 = !DILocation(line: 191, column: 13, scope: !4190)
!4193 = !DILocation(line: 192, column: 9, scope: !4190)
!4194 = !DILocation(line: 197, column: 11, scope: !4169)
!4195 = !DILocation(line: 197, column: 11, scope: !4170)
!4196 = !DILocation(line: 198, column: 9, scope: !4169)
!4197 = !DILocation(line: 0, scope: !3974, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 201, column: 7, scope: !885)
!4199 = !DILocation(line: 85, column: 25, scope: !3974, inlinedAt: !4198)
!4200 = !DILocation(line: 0, scope: !3982, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 85, column: 10, scope: !3974, inlinedAt: !4198)
!4202 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4201)
!4203 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4201)
!4204 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4201)
!4205 = !DILocation(line: 202, column: 7, scope: !885)
!4206 = !DILocation(line: 203, column: 3, scope: !885)
!4207 = !DILocation(line: 0, scope: !897)
!4208 = !DILocation(line: 230, column: 14, scope: !897)
!4209 = !DILocation(line: 238, column: 7, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !897, file: !882, line: 238, column: 7)
!4211 = !DILocation(line: 238, column: 7, scope: !897)
!4212 = !DILocation(line: 240, column: 9, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !897, file: !882, line: 240, column: 7)
!4214 = !DILocation(line: 240, column: 18, scope: !4213)
!4215 = !DILocation(line: 253, column: 8, scope: !897)
!4216 = !DILocation(line: 256, column: 7, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !897, file: !882, line: 256, column: 7)
!4218 = !DILocation(line: 256, column: 7, scope: !897)
!4219 = !DILocation(line: 258, column: 27, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !882, line: 257, column: 5)
!4221 = !DILocation(line: 259, column: 32, scope: !4220)
!4222 = !DILocation(line: 260, column: 5, scope: !4220)
!4223 = !DILocation(line: 262, column: 9, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !897, file: !882, line: 262, column: 7)
!4225 = !DILocation(line: 262, column: 7, scope: !897)
!4226 = !DILocation(line: 263, column: 9, scope: !4224)
!4227 = !DILocation(line: 263, column: 5, scope: !4224)
!4228 = !DILocation(line: 264, column: 9, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !897, file: !882, line: 264, column: 7)
!4230 = !DILocation(line: 264, column: 14, scope: !4229)
!4231 = !DILocation(line: 265, column: 7, scope: !4229)
!4232 = !DILocation(line: 265, column: 11, scope: !4229)
!4233 = !DILocation(line: 266, column: 11, scope: !4229)
!4234 = !DILocation(line: 267, column: 14, scope: !4229)
!4235 = !DILocation(line: 264, column: 7, scope: !897)
!4236 = !DILocation(line: 268, column: 5, scope: !4229)
!4237 = !DILocation(line: 0, scope: !4049, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 269, column: 8, scope: !897)
!4239 = !DILocation(line: 0, scope: !4057, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 70, column: 25, scope: !4049, inlinedAt: !4238)
!4241 = !DILocation(line: 2059, column: 24, scope: !4057, inlinedAt: !4240)
!4242 = !DILocation(line: 2059, column: 10, scope: !4057, inlinedAt: !4240)
!4243 = !DILocation(line: 0, scope: !3982, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 70, column: 10, scope: !4049, inlinedAt: !4238)
!4245 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4244)
!4246 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4244)
!4247 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4244)
!4248 = !DILocation(line: 270, column: 7, scope: !897)
!4249 = !DILocation(line: 271, column: 3, scope: !897)
!4250 = distinct !DISubprogram(name: "xzalloc", scope: !882, file: !882, line: 279, type: !4002, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4251)
!4251 = !{!4252}
!4252 = !DILocalVariable(name: "s", arg: 1, scope: !4250, file: !882, line: 279, type: !127)
!4253 = !DILocation(line: 0, scope: !4250)
!4254 = !DILocalVariable(name: "n", arg: 1, scope: !4255, file: !882, line: 294, type: !127)
!4255 = distinct !DISubprogram(name: "xcalloc", scope: !882, file: !882, line: 294, type: !4118, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4256)
!4256 = !{!4254, !4257}
!4257 = !DILocalVariable(name: "s", arg: 2, scope: !4255, file: !882, line: 294, type: !127)
!4258 = !DILocation(line: 0, scope: !4255, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 281, column: 10, scope: !4250)
!4260 = !DILocation(line: 296, column: 25, scope: !4255, inlinedAt: !4259)
!4261 = !DILocation(line: 0, scope: !3982, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 296, column: 10, scope: !4255, inlinedAt: !4259)
!4263 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4262)
!4264 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4262)
!4265 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4262)
!4266 = !DILocation(line: 281, column: 3, scope: !4250)
!4267 = !DISubprogram(name: "calloc", scope: !1191, file: !1191, line: 543, type: !4118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4268 = !DILocation(line: 0, scope: !4255)
!4269 = !DILocation(line: 296, column: 25, scope: !4255)
!4270 = !DILocation(line: 0, scope: !3982, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 296, column: 10, scope: !4255)
!4272 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4271)
!4273 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4271)
!4274 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4271)
!4275 = !DILocation(line: 296, column: 3, scope: !4255)
!4276 = distinct !DISubprogram(name: "xizalloc", scope: !882, file: !882, line: 285, type: !4016, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4277)
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "s", arg: 1, scope: !4276, file: !882, line: 285, type: !901)
!4279 = !DILocation(line: 0, scope: !4276)
!4280 = !DILocalVariable(name: "n", arg: 1, scope: !4281, file: !882, line: 300, type: !901)
!4281 = distinct !DISubprogram(name: "xicalloc", scope: !882, file: !882, line: 300, type: !4134, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4282)
!4282 = !{!4280, !4283}
!4283 = !DILocalVariable(name: "s", arg: 2, scope: !4281, file: !882, line: 300, type: !901)
!4284 = !DILocation(line: 0, scope: !4281, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 287, column: 10, scope: !4276)
!4286 = !DILocalVariable(name: "n", arg: 1, scope: !4287, file: !4023, line: 77, type: !901)
!4287 = distinct !DISubprogram(name: "icalloc", scope: !4023, file: !4023, line: 77, type: !4134, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4288)
!4288 = !{!4286, !4289}
!4289 = !DILocalVariable(name: "s", arg: 2, scope: !4287, file: !4023, line: 77, type: !901)
!4290 = !DILocation(line: 0, scope: !4287, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 302, column: 25, scope: !4281, inlinedAt: !4285)
!4292 = !DILocation(line: 91, column: 10, scope: !4287, inlinedAt: !4291)
!4293 = !DILocation(line: 0, scope: !3982, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 302, column: 10, scope: !4281, inlinedAt: !4285)
!4295 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4294)
!4296 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4294)
!4297 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4294)
!4298 = !DILocation(line: 287, column: 3, scope: !4276)
!4299 = !DILocation(line: 0, scope: !4281)
!4300 = !DILocation(line: 0, scope: !4287, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 302, column: 25, scope: !4281)
!4302 = !DILocation(line: 91, column: 10, scope: !4287, inlinedAt: !4301)
!4303 = !DILocation(line: 0, scope: !3982, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 302, column: 10, scope: !4281)
!4305 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4304)
!4306 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4304)
!4307 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4304)
!4308 = !DILocation(line: 302, column: 3, scope: !4281)
!4309 = distinct !DISubprogram(name: "xmemdup", scope: !882, file: !882, line: 310, type: !4310, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4312)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!125, !1215, !127}
!4312 = !{!4313, !4314}
!4313 = !DILocalVariable(name: "p", arg: 1, scope: !4309, file: !882, line: 310, type: !1215)
!4314 = !DILocalVariable(name: "s", arg: 2, scope: !4309, file: !882, line: 310, type: !127)
!4315 = !DILocation(line: 0, scope: !4309)
!4316 = !DILocation(line: 0, scope: !4001, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 312, column: 18, scope: !4309)
!4318 = !DILocation(line: 49, column: 25, scope: !4001, inlinedAt: !4317)
!4319 = !DILocation(line: 0, scope: !3982, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 49, column: 10, scope: !4001, inlinedAt: !4317)
!4321 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4320)
!4322 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4320)
!4323 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4320)
!4324 = !DILocalVariable(name: "__dest", arg: 1, scope: !4325, file: !2203, line: 26, type: !4328)
!4325 = distinct !DISubprogram(name: "memcpy", scope: !2203, file: !2203, line: 26, type: !4326, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4329)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!125, !4328, !1214, !127}
!4328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!4329 = !{!4324, !4330, !4331}
!4330 = !DILocalVariable(name: "__src", arg: 2, scope: !4325, file: !2203, line: 26, type: !1214)
!4331 = !DILocalVariable(name: "__len", arg: 3, scope: !4325, file: !2203, line: 26, type: !127)
!4332 = !DILocation(line: 0, scope: !4325, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 312, column: 10, scope: !4309)
!4334 = !DILocation(line: 29, column: 10, scope: !4325, inlinedAt: !4333)
!4335 = !DILocation(line: 312, column: 3, scope: !4309)
!4336 = distinct !DISubprogram(name: "ximemdup", scope: !882, file: !882, line: 316, type: !4337, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!125, !1215, !901}
!4339 = !{!4340, !4341}
!4340 = !DILocalVariable(name: "p", arg: 1, scope: !4336, file: !882, line: 316, type: !1215)
!4341 = !DILocalVariable(name: "s", arg: 2, scope: !4336, file: !882, line: 316, type: !901)
!4342 = !DILocation(line: 0, scope: !4336)
!4343 = !DILocation(line: 0, scope: !4015, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 318, column: 18, scope: !4336)
!4345 = !DILocation(line: 0, scope: !4022, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 55, column: 25, scope: !4015, inlinedAt: !4344)
!4347 = !DILocation(line: 57, column: 26, scope: !4022, inlinedAt: !4346)
!4348 = !DILocation(line: 0, scope: !3982, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 55, column: 10, scope: !4015, inlinedAt: !4344)
!4350 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4349)
!4351 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4349)
!4352 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4349)
!4353 = !DILocation(line: 0, scope: !4325, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 318, column: 10, scope: !4336)
!4355 = !DILocation(line: 29, column: 10, scope: !4325, inlinedAt: !4354)
!4356 = !DILocation(line: 318, column: 3, scope: !4336)
!4357 = distinct !DISubprogram(name: "ximemdup0", scope: !882, file: !882, line: 325, type: !4358, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4360)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!124, !1215, !901}
!4360 = !{!4361, !4362, !4363}
!4361 = !DILocalVariable(name: "p", arg: 1, scope: !4357, file: !882, line: 325, type: !1215)
!4362 = !DILocalVariable(name: "s", arg: 2, scope: !4357, file: !882, line: 325, type: !901)
!4363 = !DILocalVariable(name: "result", scope: !4357, file: !882, line: 327, type: !124)
!4364 = !DILocation(line: 0, scope: !4357)
!4365 = !DILocation(line: 327, column: 30, scope: !4357)
!4366 = !DILocation(line: 0, scope: !4015, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 327, column: 18, scope: !4357)
!4368 = !DILocation(line: 0, scope: !4022, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 55, column: 25, scope: !4015, inlinedAt: !4367)
!4370 = !DILocation(line: 57, column: 26, scope: !4022, inlinedAt: !4369)
!4371 = !DILocation(line: 0, scope: !3982, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 55, column: 10, scope: !4015, inlinedAt: !4367)
!4373 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4372)
!4374 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4372)
!4375 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4372)
!4376 = !DILocation(line: 328, column: 3, scope: !4357)
!4377 = !DILocation(line: 328, column: 13, scope: !4357)
!4378 = !DILocation(line: 0, scope: !4325, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 329, column: 10, scope: !4357)
!4380 = !DILocation(line: 29, column: 10, scope: !4325, inlinedAt: !4379)
!4381 = !DILocation(line: 329, column: 3, scope: !4357)
!4382 = distinct !DISubprogram(name: "xstrdup", scope: !882, file: !882, line: 335, type: !1193, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4383)
!4383 = !{!4384}
!4384 = !DILocalVariable(name: "string", arg: 1, scope: !4382, file: !882, line: 335, type: !130)
!4385 = !DILocation(line: 0, scope: !4382)
!4386 = !DILocation(line: 337, column: 27, scope: !4382)
!4387 = !DILocation(line: 337, column: 43, scope: !4382)
!4388 = !DILocation(line: 0, scope: !4309, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 337, column: 10, scope: !4382)
!4390 = !DILocation(line: 0, scope: !4001, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 312, column: 18, scope: !4309, inlinedAt: !4389)
!4392 = !DILocation(line: 49, column: 25, scope: !4001, inlinedAt: !4391)
!4393 = !DILocation(line: 0, scope: !3982, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 49, column: 10, scope: !4001, inlinedAt: !4391)
!4395 = !DILocation(line: 39, column: 8, scope: !3989, inlinedAt: !4394)
!4396 = !DILocation(line: 39, column: 7, scope: !3982, inlinedAt: !4394)
!4397 = !DILocation(line: 40, column: 5, scope: !3989, inlinedAt: !4394)
!4398 = !DILocation(line: 0, scope: !4325, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 312, column: 10, scope: !4309, inlinedAt: !4389)
!4400 = !DILocation(line: 29, column: 10, scope: !4325, inlinedAt: !4399)
!4401 = !DILocation(line: 337, column: 3, scope: !4382)
!4402 = distinct !DISubprogram(name: "xalloc_die", scope: !827, file: !827, line: 32, type: !563, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4403)
!4403 = !{!4404}
!4404 = !DILocalVariable(name: "__errstatus", scope: !4405, file: !827, line: 34, type: !4406)
!4405 = distinct !DILexicalBlock(scope: !4402, file: !827, line: 34, column: 3)
!4406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!4407 = !DILocation(line: 34, column: 3, scope: !4405)
!4408 = !DILocation(line: 0, scope: !4405)
!4409 = !DILocation(line: 40, column: 3, scope: !4402)
!4410 = distinct !DISubprogram(name: "xgetgroups", scope: !919, file: !919, line: 31, type: !940, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4411)
!4411 = !{!4412, !4413, !4414, !4415}
!4412 = !DILocalVariable(name: "username", arg: 1, scope: !4410, file: !919, line: 31, type: !130)
!4413 = !DILocalVariable(name: "gid", arg: 2, scope: !4410, file: !919, line: 31, type: !207)
!4414 = !DILocalVariable(name: "groups", arg: 3, scope: !4410, file: !919, line: 31, type: !942)
!4415 = !DILocalVariable(name: "result", scope: !4410, file: !919, line: 33, type: !103)
!4416 = !DILocation(line: 0, scope: !4410)
!4417 = !DILocation(line: 33, column: 16, scope: !4410)
!4418 = !DILocation(line: 34, column: 14, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4410, file: !919, line: 34, column: 7)
!4420 = !DILocation(line: 34, column: 20, scope: !4419)
!4421 = !DILocation(line: 34, column: 23, scope: !4419)
!4422 = !DILocation(line: 34, column: 29, scope: !4419)
!4423 = !DILocation(line: 34, column: 7, scope: !4410)
!4424 = !DILocation(line: 35, column: 5, scope: !4419)
!4425 = !DILocation(line: 36, column: 3, scope: !4410)
!4426 = distinct !DISubprogram(name: "xstrtoul", scope: !4427, file: !4427, line: 71, type: !4428, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4432)
!4427 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!4430, !130, !1220, !103, !4431, !130}
!4430 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !865, line: 43, baseType: !864)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4443, !4444, !4445, !4446, !4449, !4450}
!4433 = !DILocalVariable(name: "nptr", arg: 1, scope: !4426, file: !4427, line: 71, type: !130)
!4434 = !DILocalVariable(name: "endptr", arg: 2, scope: !4426, file: !4427, line: 71, type: !1220)
!4435 = !DILocalVariable(name: "base", arg: 3, scope: !4426, file: !4427, line: 71, type: !103)
!4436 = !DILocalVariable(name: "val", arg: 4, scope: !4426, file: !4427, line: 72, type: !4431)
!4437 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4426, file: !4427, line: 72, type: !130)
!4438 = !DILocalVariable(name: "t_ptr", scope: !4426, file: !4427, line: 74, type: !124)
!4439 = !DILocalVariable(name: "p", scope: !4426, file: !4427, line: 75, type: !1220)
!4440 = !DILocalVariable(name: "q", scope: !4441, file: !4427, line: 79, type: !130)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !4427, line: 78, column: 5)
!4442 = distinct !DILexicalBlock(scope: !4426, file: !4427, line: 77, column: 7)
!4443 = !DILocalVariable(name: "ch", scope: !4441, file: !4427, line: 80, type: !132)
!4444 = !DILocalVariable(name: "tmp", scope: !4426, file: !4427, line: 91, type: !129)
!4445 = !DILocalVariable(name: "err", scope: !4426, file: !4427, line: 92, type: !4430)
!4446 = !DILocalVariable(name: "xbase", scope: !4447, file: !4427, line: 126, type: !103)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !4427, line: 119, column: 5)
!4448 = distinct !DILexicalBlock(scope: !4426, file: !4427, line: 118, column: 7)
!4449 = !DILocalVariable(name: "suffixes", scope: !4447, file: !4427, line: 127, type: !103)
!4450 = !DILocalVariable(name: "overflow", scope: !4447, file: !4427, line: 156, type: !4430)
!4451 = distinct !DIAssignID()
!4452 = !DILocation(line: 0, scope: !4426)
!4453 = !DILocation(line: 74, column: 3, scope: !4426)
!4454 = !DILocation(line: 75, column: 14, scope: !4426)
!4455 = !DILocation(line: 0, scope: !4441)
!4456 = !DILocation(line: 81, column: 7, scope: !4441)
!4457 = !DILocation(line: 81, column: 14, scope: !4441)
!4458 = !DILocation(line: 82, column: 15, scope: !4441)
!4459 = distinct !{!4459, !4456, !4460, !1117}
!4460 = !DILocation(line: 82, column: 17, scope: !4441)
!4461 = !DILocation(line: 83, column: 14, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4441, file: !4427, line: 83, column: 11)
!4463 = !DILocation(line: 83, column: 11, scope: !4441)
!4464 = !DILocation(line: 85, column: 14, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4462, file: !4427, line: 84, column: 9)
!4466 = !DILocation(line: 90, column: 3, scope: !4426)
!4467 = !DILocation(line: 90, column: 9, scope: !4426)
!4468 = !DILocation(line: 91, column: 20, scope: !4426)
!4469 = !DILocation(line: 94, column: 7, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4426, file: !4427, line: 94, column: 7)
!4471 = !DILocation(line: 94, column: 10, scope: !4470)
!4472 = !DILocation(line: 94, column: 7, scope: !4426)
!4473 = !DILocation(line: 98, column: 14, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !4427, line: 98, column: 11)
!4475 = distinct !DILexicalBlock(scope: !4470, file: !4427, line: 95, column: 5)
!4476 = !DILocation(line: 98, column: 29, scope: !4474)
!4477 = !DILocation(line: 98, column: 32, scope: !4474)
!4478 = !DILocation(line: 98, column: 38, scope: !4474)
!4479 = !DILocation(line: 98, column: 41, scope: !4474)
!4480 = !DILocation(line: 98, column: 11, scope: !4475)
!4481 = !DILocation(line: 102, column: 12, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4470, file: !4427, line: 102, column: 12)
!4483 = !DILocation(line: 102, column: 12, scope: !4470)
!4484 = !DILocation(line: 107, column: 5, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4482, file: !4427, line: 103, column: 5)
!4486 = !DILocation(line: 112, column: 8, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4426, file: !4427, line: 112, column: 7)
!4488 = !DILocation(line: 112, column: 7, scope: !4426)
!4489 = !DILocation(line: 114, column: 12, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !4427, line: 113, column: 5)
!4491 = !DILocation(line: 115, column: 7, scope: !4490)
!4492 = !DILocation(line: 118, column: 7, scope: !4448)
!4493 = !DILocation(line: 118, column: 11, scope: !4448)
!4494 = !DILocation(line: 118, column: 7, scope: !4426)
!4495 = !DILocation(line: 120, column: 12, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4447, file: !4427, line: 120, column: 11)
!4497 = !DILocation(line: 120, column: 11, scope: !4447)
!4498 = !DILocation(line: 122, column: 16, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4496, file: !4427, line: 121, column: 9)
!4500 = !DILocation(line: 123, column: 22, scope: !4499)
!4501 = !DILocation(line: 123, column: 11, scope: !4499)
!4502 = !DILocation(line: 0, scope: !4447)
!4503 = !DILocation(line: 128, column: 7, scope: !4447)
!4504 = !DILocation(line: 140, column: 15, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !4427, line: 140, column: 15)
!4506 = distinct !DILexicalBlock(scope: !4447, file: !4427, line: 129, column: 9)
!4507 = !DILocation(line: 140, column: 15, scope: !4506)
!4508 = !DILocation(line: 141, column: 21, scope: !4505)
!4509 = !DILocation(line: 141, column: 13, scope: !4505)
!4510 = !DILocation(line: 144, column: 21, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !4427, line: 144, column: 21)
!4512 = distinct !DILexicalBlock(scope: !4505, file: !4427, line: 142, column: 15)
!4513 = !DILocation(line: 144, column: 29, scope: !4511)
!4514 = !DILocation(line: 144, column: 21, scope: !4512)
!4515 = !DILocation(line: 152, column: 17, scope: !4512)
!4516 = !DILocation(line: 157, column: 7, scope: !4447)
!4517 = !DILocalVariable(name: "err", scope: !4518, file: !4427, line: 64, type: !4430)
!4518 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4427, file: !4427, line: 62, type: !4519, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4521)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!4430, !4431, !103, !103}
!4521 = !{!4522, !4523, !4524, !4517}
!4522 = !DILocalVariable(name: "x", arg: 1, scope: !4518, file: !4427, line: 62, type: !4431)
!4523 = !DILocalVariable(name: "base", arg: 2, scope: !4518, file: !4427, line: 62, type: !103)
!4524 = !DILocalVariable(name: "power", arg: 3, scope: !4518, file: !4427, line: 62, type: !103)
!4525 = !DILocation(line: 0, scope: !4518, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 219, column: 22, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4447, file: !4427, line: 158, column: 9)
!4528 = !DILocalVariable(name: "x", arg: 1, scope: !4529, file: !4427, line: 47, type: !4431)
!4529 = distinct !DISubprogram(name: "bkm_scale", scope: !4427, file: !4427, line: 47, type: !4530, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!4430, !4431, !103}
!4532 = !{!4528, !4533, !4534}
!4533 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4529, file: !4427, line: 47, type: !103)
!4534 = !DILocalVariable(name: "scaled", scope: !4529, file: !4427, line: 49, type: !129)
!4535 = !DILocation(line: 0, scope: !4529, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4526)
!4537 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4536)
!4538 = distinct !DILexicalBlock(scope: !4529, file: !4427, line: 50, column: 7)
!4539 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4536)
!4540 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4526)
!4541 = !DILocation(line: 227, column: 11, scope: !4447)
!4542 = !DILocation(line: 0, scope: !4518, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 215, column: 22, scope: !4527)
!4544 = !DILocation(line: 0, scope: !4529, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4543)
!4546 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4545)
!4547 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4545)
!4548 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4543)
!4549 = !DILocation(line: 0, scope: !4518, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 202, column: 22, scope: !4527)
!4551 = !DILocation(line: 0, scope: !4529, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4550)
!4553 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4552)
!4554 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4552)
!4555 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4550)
!4556 = !DILocation(line: 0, scope: !4518, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 198, column: 22, scope: !4527)
!4558 = !DILocation(line: 0, scope: !4529, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4557)
!4560 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4559)
!4561 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4559)
!4562 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4557)
!4563 = !DILocation(line: 0, scope: !4518, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 194, column: 22, scope: !4527)
!4565 = !DILocation(line: 0, scope: !4529, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4564)
!4567 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4566)
!4568 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4566)
!4569 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4564)
!4570 = !DILocation(line: 0, scope: !4518, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 175, column: 22, scope: !4527)
!4572 = !DILocation(line: 0, scope: !4529, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4571)
!4574 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4573)
!4575 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4573)
!4576 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4571)
!4577 = !DILocation(line: 0, scope: !4529, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 160, column: 22, scope: !4527)
!4579 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4578)
!4580 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4578)
!4581 = !DILocation(line: 161, column: 11, scope: !4527)
!4582 = !DILocation(line: 0, scope: !4529, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 167, column: 22, scope: !4527)
!4584 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4583)
!4585 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4583)
!4586 = !DILocation(line: 168, column: 11, scope: !4527)
!4587 = !DILocation(line: 0, scope: !4518, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 180, column: 22, scope: !4527)
!4589 = !DILocation(line: 0, scope: !4529, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4588)
!4591 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4590)
!4592 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4590)
!4593 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4588)
!4594 = !DILocation(line: 0, scope: !4518, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 185, column: 22, scope: !4527)
!4596 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4595)
!4598 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4597)
!4599 = !DILocation(line: 0, scope: !4529, inlinedAt: !4597)
!4600 = !DILocation(line: 0, scope: !4518, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 190, column: 22, scope: !4527)
!4602 = !DILocation(line: 0, scope: !4529, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4601)
!4604 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4603)
!4605 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4603)
!4606 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4601)
!4607 = !DILocation(line: 0, scope: !4518, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 207, column: 22, scope: !4527)
!4609 = !DILocation(line: 0, scope: !4529, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 66, column: 12, scope: !4518, inlinedAt: !4608)
!4611 = !DILocation(line: 50, column: 7, scope: !4538, inlinedAt: !4610)
!4612 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4610)
!4613 = !DILocation(line: 66, column: 9, scope: !4518, inlinedAt: !4608)
!4614 = !DILocation(line: 0, scope: !4529, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 211, column: 22, scope: !4527)
!4616 = !DILocation(line: 50, column: 7, scope: !4529, inlinedAt: !4615)
!4617 = !DILocation(line: 212, column: 11, scope: !4527)
!4618 = !DILocation(line: 0, scope: !4527)
!4619 = !DILocation(line: 228, column: 10, scope: !4447)
!4620 = !DILocation(line: 229, column: 11, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4447, file: !4427, line: 229, column: 11)
!4622 = !DILocation(line: 229, column: 11, scope: !4447)
!4623 = !DILocation(line: 223, column: 16, scope: !4527)
!4624 = !DILocation(line: 224, column: 22, scope: !4527)
!4625 = !DILocation(line: 100, column: 11, scope: !4475)
!4626 = !DILocation(line: 92, column: 16, scope: !4426)
!4627 = !DILocation(line: 233, column: 8, scope: !4426)
!4628 = !DILocation(line: 234, column: 3, scope: !4426)
!4629 = !DILocation(line: 235, column: 1, scope: !4426)
!4630 = !DISubprogram(name: "strtoul", scope: !1191, file: !1191, line: 181, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!129, !1061, !4633, !103}
!4633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1220)
!4634 = distinct !DISubprogram(name: "close_stream", scope: !925, file: !925, line: 55, type: !4635, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4671)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!103, !4637}
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4639)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4640)
!4640 = !{!4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4639, file: !240, line: 51, baseType: !103, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4639, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4639, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4639, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4639, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4639, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4639, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4639, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4639, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4639, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4639, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4639, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4639, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4639, file: !240, line: 70, baseType: !4655, size: 64, offset: 832)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4639, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4639, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4639, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4639, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4639, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4639, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4639, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4639, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4639, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4639, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4639, file: !240, line: 93, baseType: !4655, size: 64, offset: 1344)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4639, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4639, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4639, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4639, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4671 = !{!4672, !4673, !4675, !4676}
!4672 = !DILocalVariable(name: "stream", arg: 1, scope: !4634, file: !925, line: 55, type: !4637)
!4673 = !DILocalVariable(name: "some_pending", scope: !4634, file: !925, line: 57, type: !4674)
!4674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!4675 = !DILocalVariable(name: "prev_fail", scope: !4634, file: !925, line: 58, type: !4674)
!4676 = !DILocalVariable(name: "fclose_fail", scope: !4634, file: !925, line: 59, type: !4674)
!4677 = !DILocation(line: 0, scope: !4634)
!4678 = !DILocation(line: 57, column: 30, scope: !4634)
!4679 = !DILocalVariable(name: "__stream", arg: 1, scope: !4680, file: !1361, line: 135, type: !4637)
!4680 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1361, file: !1361, line: 135, type: !4635, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4681)
!4681 = !{!4679}
!4682 = !DILocation(line: 0, scope: !4680, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 58, column: 27, scope: !4634)
!4684 = !DILocation(line: 137, column: 10, scope: !4680, inlinedAt: !4683)
!4685 = !DILocation(line: 58, column: 43, scope: !4634)
!4686 = !DILocation(line: 59, column: 29, scope: !4634)
!4687 = !DILocation(line: 59, column: 45, scope: !4634)
!4688 = !DILocation(line: 69, column: 17, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4634, file: !925, line: 69, column: 7)
!4690 = !DILocation(line: 57, column: 50, scope: !4634)
!4691 = !DILocation(line: 69, column: 33, scope: !4689)
!4692 = !DILocation(line: 69, column: 53, scope: !4689)
!4693 = !DILocation(line: 69, column: 59, scope: !4689)
!4694 = !DILocation(line: 69, column: 7, scope: !4634)
!4695 = !DILocation(line: 71, column: 11, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4689, file: !925, line: 70, column: 5)
!4697 = !DILocation(line: 72, column: 9, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4696, file: !925, line: 71, column: 11)
!4699 = !DILocation(line: 72, column: 15, scope: !4698)
!4700 = !DILocation(line: 77, column: 1, scope: !4634)
!4701 = !DISubprogram(name: "__fpending", scope: !2140, file: !2140, line: 75, type: !4702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!127, !4637}
!4704 = distinct !DISubprogram(name: "rpl_fclose", scope: !927, file: !927, line: 58, type: !4705, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4741)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!103, !4707}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4709)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4709, file: !240, line: 51, baseType: !103, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4709, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4709, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4709, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4709, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4709, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4709, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4709, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4709, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4709, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4709, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4709, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4709, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4709, file: !240, line: 70, baseType: !4725, size: 64, offset: 832)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4709, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4709, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4709, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4709, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4709, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4709, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4709, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4709, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4709, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4709, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4709, file: !240, line: 93, baseType: !4725, size: 64, offset: 1344)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4709, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4709, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4709, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4709, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4741 = !{!4742, !4743, !4744, !4745}
!4742 = !DILocalVariable(name: "fp", arg: 1, scope: !4704, file: !927, line: 58, type: !4707)
!4743 = !DILocalVariable(name: "saved_errno", scope: !4704, file: !927, line: 60, type: !103)
!4744 = !DILocalVariable(name: "fd", scope: !4704, file: !927, line: 63, type: !103)
!4745 = !DILocalVariable(name: "result", scope: !4704, file: !927, line: 74, type: !103)
!4746 = !DILocation(line: 0, scope: !4704)
!4747 = !DILocation(line: 63, column: 12, scope: !4704)
!4748 = !DILocation(line: 64, column: 10, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4704, file: !927, line: 64, column: 7)
!4750 = !DILocation(line: 64, column: 7, scope: !4704)
!4751 = !DILocation(line: 65, column: 12, scope: !4749)
!4752 = !DILocation(line: 65, column: 5, scope: !4749)
!4753 = !DILocation(line: 70, column: 9, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4704, file: !927, line: 70, column: 7)
!4755 = !DILocation(line: 70, column: 23, scope: !4754)
!4756 = !DILocation(line: 70, column: 33, scope: !4754)
!4757 = !DILocation(line: 70, column: 26, scope: !4754)
!4758 = !DILocation(line: 70, column: 59, scope: !4754)
!4759 = !DILocation(line: 71, column: 7, scope: !4754)
!4760 = !DILocation(line: 71, column: 10, scope: !4754)
!4761 = !DILocation(line: 70, column: 7, scope: !4704)
!4762 = !DILocation(line: 100, column: 12, scope: !4704)
!4763 = !DILocation(line: 105, column: 7, scope: !4704)
!4764 = !DILocation(line: 72, column: 19, scope: !4754)
!4765 = !DILocation(line: 105, column: 19, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4704, file: !927, line: 105, column: 7)
!4767 = !DILocation(line: 107, column: 13, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4766, file: !927, line: 106, column: 5)
!4769 = !DILocation(line: 109, column: 5, scope: !4768)
!4770 = !DILocation(line: 112, column: 1, scope: !4704)
!4771 = !DISubprogram(name: "fileno", scope: !523, file: !523, line: 809, type: !4705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4772 = !DISubprogram(name: "fclose", scope: !523, file: !523, line: 178, type: !4705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4773 = !DISubprogram(name: "__freading", scope: !2140, file: !2140, line: 51, type: !4705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4774 = !DISubprogram(name: "lseek", scope: !1669, file: !1669, line: 339, type: !4775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!262, !103, !262, !103}
!4777 = distinct !DISubprogram(name: "rpl_fflush", scope: !929, file: !929, line: 130, type: !4778, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4814)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!103, !4780}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4782)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4783)
!4783 = !{!4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4782, file: !240, line: 51, baseType: !103, size: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4782, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4782, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4782, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4782, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4782, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4782, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4782, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4782, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4782, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4782, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4782, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4782, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4782, file: !240, line: 70, baseType: !4798, size: 64, offset: 832)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4782, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4782, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4782, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4782, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4782, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4782, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4782, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4782, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4782, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4782, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4782, file: !240, line: 93, baseType: !4798, size: 64, offset: 1344)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4782, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4782, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4782, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4782, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4814 = !{!4815}
!4815 = !DILocalVariable(name: "stream", arg: 1, scope: !4777, file: !929, line: 130, type: !4780)
!4816 = !DILocation(line: 0, scope: !4777)
!4817 = !DILocation(line: 151, column: 14, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4777, file: !929, line: 151, column: 7)
!4819 = !DILocation(line: 151, column: 22, scope: !4818)
!4820 = !DILocation(line: 151, column: 27, scope: !4818)
!4821 = !DILocation(line: 151, column: 7, scope: !4777)
!4822 = !DILocation(line: 152, column: 12, scope: !4818)
!4823 = !DILocation(line: 152, column: 5, scope: !4818)
!4824 = !DILocalVariable(name: "fp", arg: 1, scope: !4825, file: !929, line: 42, type: !4780)
!4825 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !929, file: !929, line: 42, type: !4826, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4828)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !4780}
!4828 = !{!4824}
!4829 = !DILocation(line: 0, scope: !4825, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 157, column: 3, scope: !4777)
!4831 = !DILocation(line: 44, column: 12, scope: !4832, inlinedAt: !4830)
!4832 = distinct !DILexicalBlock(scope: !4825, file: !929, line: 44, column: 7)
!4833 = !DILocation(line: 44, column: 19, scope: !4832, inlinedAt: !4830)
!4834 = !DILocation(line: 44, column: 7, scope: !4825, inlinedAt: !4830)
!4835 = !DILocation(line: 46, column: 5, scope: !4832, inlinedAt: !4830)
!4836 = !DILocation(line: 159, column: 10, scope: !4777)
!4837 = !DILocation(line: 159, column: 3, scope: !4777)
!4838 = !DILocation(line: 236, column: 1, scope: !4777)
!4839 = !DISubprogram(name: "fflush", scope: !523, file: !523, line: 230, type: !4778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4840 = distinct !DISubprogram(name: "rpl_fseeko", scope: !931, file: !931, line: 28, type: !4841, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !4878)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!103, !4843, !4877, !103}
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4845)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4846)
!4846 = !{!4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4845, file: !240, line: 51, baseType: !103, size: 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4845, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4845, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4845, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4845, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4845, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4845, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4845, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4845, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4845, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4845, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4845, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4845, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4845, file: !240, line: 70, baseType: !4861, size: 64, offset: 832)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4845, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4845, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4845, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4845, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4845, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4845, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4845, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4845, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4845, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4845, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4845, file: !240, line: 93, baseType: !4861, size: 64, offset: 1344)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4845, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4845, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4845, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4845, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4877 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !523, line: 63, baseType: !262)
!4878 = !{!4879, !4880, !4881, !4882}
!4879 = !DILocalVariable(name: "fp", arg: 1, scope: !4840, file: !931, line: 28, type: !4843)
!4880 = !DILocalVariable(name: "offset", arg: 2, scope: !4840, file: !931, line: 28, type: !4877)
!4881 = !DILocalVariable(name: "whence", arg: 3, scope: !4840, file: !931, line: 28, type: !103)
!4882 = !DILocalVariable(name: "pos", scope: !4883, file: !931, line: 123, type: !4877)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !931, line: 119, column: 5)
!4884 = distinct !DILexicalBlock(scope: !4840, file: !931, line: 55, column: 7)
!4885 = !DILocation(line: 0, scope: !4840)
!4886 = !DILocation(line: 55, column: 12, scope: !4884)
!4887 = !{!1369, !1002, i64 16}
!4888 = !DILocation(line: 55, column: 33, scope: !4884)
!4889 = !{!1369, !1002, i64 8}
!4890 = !DILocation(line: 55, column: 25, scope: !4884)
!4891 = !DILocation(line: 56, column: 7, scope: !4884)
!4892 = !DILocation(line: 56, column: 15, scope: !4884)
!4893 = !DILocation(line: 56, column: 37, scope: !4884)
!4894 = !{!1369, !1002, i64 32}
!4895 = !DILocation(line: 56, column: 29, scope: !4884)
!4896 = !DILocation(line: 57, column: 7, scope: !4884)
!4897 = !DILocation(line: 57, column: 15, scope: !4884)
!4898 = !{!1369, !1002, i64 72}
!4899 = !DILocation(line: 57, column: 29, scope: !4884)
!4900 = !DILocation(line: 55, column: 7, scope: !4840)
!4901 = !DILocation(line: 123, column: 26, scope: !4883)
!4902 = !DILocation(line: 123, column: 19, scope: !4883)
!4903 = !DILocation(line: 0, scope: !4883)
!4904 = !DILocation(line: 124, column: 15, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4883, file: !931, line: 124, column: 11)
!4906 = !DILocation(line: 124, column: 11, scope: !4883)
!4907 = !DILocation(line: 135, column: 19, scope: !4883)
!4908 = !DILocation(line: 136, column: 12, scope: !4883)
!4909 = !DILocation(line: 136, column: 20, scope: !4883)
!4910 = !{!1369, !1370, i64 144}
!4911 = !DILocation(line: 167, column: 7, scope: !4883)
!4912 = !DILocation(line: 169, column: 10, scope: !4840)
!4913 = !DILocation(line: 169, column: 3, scope: !4840)
!4914 = !DILocation(line: 170, column: 1, scope: !4840)
!4915 = !DISubprogram(name: "fseeko", scope: !523, file: !523, line: 736, type: !4916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!103, !4843, !262, !103}
!4918 = distinct !DISubprogram(name: "umaxtostr", scope: !4919, file: !4919, line: 29, type: !4920, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !4922)
!4919 = !DIFile(filename: "lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!124, !133, !124}
!4922 = !{!4923, !4924, !4925}
!4923 = !DILocalVariable(name: "i", arg: 1, scope: !4918, file: !4919, line: 29, type: !133)
!4924 = !DILocalVariable(name: "buf", arg: 2, scope: !4918, file: !4919, line: 29, type: !124)
!4925 = !DILocalVariable(name: "p", scope: !4918, file: !4919, line: 31, type: !124)
!4926 = !DILocation(line: 0, scope: !4918)
!4927 = !DILocation(line: 31, column: 17, scope: !4918)
!4928 = !DILocation(line: 32, column: 6, scope: !4918)
!4929 = !DILocation(line: 46, column: 17, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !4919, line: 43, column: 5)
!4931 = distinct !DILexicalBlock(scope: !4918, file: !4919, line: 34, column: 7)
!4932 = !DILocation(line: 45, column: 16, scope: !4930)
!4933 = !DILocation(line: 45, column: 10, scope: !4930)
!4934 = !DILocation(line: 45, column: 14, scope: !4930)
!4935 = !DILocation(line: 46, column: 24, scope: !4930)
!4936 = !DILocation(line: 45, column: 9, scope: !4930)
!4937 = distinct !{!4937, !4938, !4939, !1117}
!4938 = !DILocation(line: 44, column: 7, scope: !4930)
!4939 = !DILocation(line: 46, column: 28, scope: !4930)
!4940 = !DILocation(line: 49, column: 3, scope: !4918)
!4941 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !834, file: !834, line: 100, type: !4942, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4945)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!127, !2221, !130, !127, !4944}
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!4945 = !{!4946, !4947, !4948, !4949, !4950}
!4946 = !DILocalVariable(name: "pwc", arg: 1, scope: !4941, file: !834, line: 100, type: !2221)
!4947 = !DILocalVariable(name: "s", arg: 2, scope: !4941, file: !834, line: 100, type: !130)
!4948 = !DILocalVariable(name: "n", arg: 3, scope: !4941, file: !834, line: 100, type: !127)
!4949 = !DILocalVariable(name: "ps", arg: 4, scope: !4941, file: !834, line: 100, type: !4944)
!4950 = !DILocalVariable(name: "ret", scope: !4941, file: !834, line: 130, type: !127)
!4951 = !DILocation(line: 0, scope: !4941)
!4952 = !DILocation(line: 105, column: 9, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4941, file: !834, line: 105, column: 7)
!4954 = !DILocation(line: 105, column: 7, scope: !4941)
!4955 = !DILocation(line: 117, column: 10, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4941, file: !834, line: 117, column: 7)
!4957 = !DILocation(line: 117, column: 7, scope: !4941)
!4958 = !DILocation(line: 130, column: 16, scope: !4941)
!4959 = !DILocation(line: 135, column: 11, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4941, file: !834, line: 135, column: 7)
!4961 = !DILocation(line: 135, column: 25, scope: !4960)
!4962 = !DILocation(line: 135, column: 30, scope: !4960)
!4963 = !DILocation(line: 135, column: 7, scope: !4941)
!4964 = !DILocalVariable(name: "ps", arg: 1, scope: !4965, file: !2194, line: 1135, type: !4944)
!4965 = distinct !DISubprogram(name: "mbszero", scope: !2194, file: !2194, line: 1135, type: !4966, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4968)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{null, !4944}
!4968 = !{!4964}
!4969 = !DILocation(line: 0, scope: !4965, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 137, column: 5, scope: !4960)
!4971 = !DILocalVariable(name: "__dest", arg: 1, scope: !4972, file: !2203, line: 57, type: !125)
!4972 = distinct !DISubprogram(name: "memset", scope: !2203, file: !2203, line: 57, type: !2204, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4973)
!4973 = !{!4971, !4974, !4975}
!4974 = !DILocalVariable(name: "__ch", arg: 2, scope: !4972, file: !2203, line: 57, type: !103)
!4975 = !DILocalVariable(name: "__len", arg: 3, scope: !4972, file: !2203, line: 57, type: !127)
!4976 = !DILocation(line: 0, scope: !4972, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 1137, column: 3, scope: !4965, inlinedAt: !4970)
!4978 = !DILocation(line: 59, column: 10, scope: !4972, inlinedAt: !4977)
!4979 = !DILocation(line: 137, column: 5, scope: !4960)
!4980 = !DILocation(line: 138, column: 11, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4941, file: !834, line: 138, column: 7)
!4982 = !DILocation(line: 138, column: 7, scope: !4941)
!4983 = !DILocation(line: 139, column: 5, scope: !4981)
!4984 = !DILocation(line: 143, column: 26, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4941, file: !834, line: 143, column: 7)
!4986 = !DILocation(line: 143, column: 41, scope: !4985)
!4987 = !DILocation(line: 143, column: 7, scope: !4941)
!4988 = !DILocation(line: 145, column: 15, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !834, line: 145, column: 11)
!4990 = distinct !DILexicalBlock(scope: !4985, file: !834, line: 144, column: 5)
!4991 = !DILocation(line: 145, column: 11, scope: !4990)
!4992 = !DILocation(line: 146, column: 32, scope: !4989)
!4993 = !DILocation(line: 146, column: 16, scope: !4989)
!4994 = !DILocation(line: 146, column: 14, scope: !4989)
!4995 = !DILocation(line: 146, column: 9, scope: !4989)
!4996 = !DILocation(line: 286, column: 1, scope: !4941)
!4997 = !DISubprogram(name: "mbsinit", scope: !4998, file: !4998, line: 293, type: !4999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4998 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!103, !5001}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!5003 = distinct !DIAssignID()
!5004 = !DILocation(line: 0, scope: !949)
!5005 = !DILocation(line: 0, scope: !939)
!5006 = !DILocation(line: 77, column: 7, scope: !950)
!5007 = !DILocation(line: 77, column: 7, scope: !939)
!5008 = !DILocation(line: 80, column: 7, scope: !949)
!5009 = !DILocation(line: 80, column: 11, scope: !949)
!5010 = distinct !DIAssignID()
!5011 = !DILocalVariable(name: "g", arg: 1, scope: !5012, file: !936, line: 43, type: !943)
!5012 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !936, file: !936, line: 43, type: !5013, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5015)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!943, !943, !127}
!5015 = !{!5011, !5016}
!5016 = !DILocalVariable(name: "num", arg: 2, scope: !5012, file: !936, line: 43, type: !127)
!5017 = !DILocation(line: 0, scope: !5012, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 82, column: 18, scope: !949)
!5019 = !DILocalVariable(name: "ptr", arg: 1, scope: !5020, file: !4058, line: 2057, type: !125)
!5020 = distinct !DISubprogram(name: "rpl_realloc", scope: !4058, file: !4058, line: 2057, type: !4050, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5021)
!5021 = !{!5019, !5022}
!5022 = !DILocalVariable(name: "size", arg: 2, scope: !5020, file: !4058, line: 2057, type: !127)
!5023 = !DILocation(line: 0, scope: !5020, inlinedAt: !5024)
!5024 = distinct !DILocation(line: 51, column: 10, scope: !5012, inlinedAt: !5018)
!5025 = !DILocation(line: 2059, column: 10, scope: !5020, inlinedAt: !5024)
!5026 = !DILocation(line: 83, column: 13, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !949, file: !936, line: 83, column: 11)
!5028 = !DILocation(line: 83, column: 11, scope: !949)
!5029 = !DILocation(line: 86, column: 7, scope: !949)
!5030 = !DILocation(line: 88, column: 31, scope: !953)
!5031 = !DILocation(line: 82, column: 14, scope: !949)
!5032 = !DILocation(line: 0, scope: !953)
!5033 = !DILocation(line: 91, column: 20, scope: !953)
!5034 = !DILocation(line: 95, column: 18, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !953, file: !936, line: 95, column: 15)
!5036 = !DILocation(line: 98, column: 43, scope: !953)
!5037 = !DILocation(line: 95, column: 22, scope: !5035)
!5038 = !DILocation(line: 96, column: 26, scope: !5035)
!5039 = distinct !DIAssignID()
!5040 = !DILocation(line: 96, column: 13, scope: !5035)
!5041 = !DILocation(line: 0, scope: !5012, inlinedAt: !5042)
!5042 = distinct !DILocation(line: 98, column: 22, scope: !953)
!5043 = !DILocation(line: 45, column: 7, scope: !5044, inlinedAt: !5042)
!5044 = distinct !DILexicalBlock(scope: !5012, file: !936, line: 45, column: 7)
!5045 = !DILocation(line: 45, column: 7, scope: !5012, inlinedAt: !5042)
!5046 = !DILocation(line: 47, column: 7, scope: !5047, inlinedAt: !5042)
!5047 = distinct !DILexicalBlock(scope: !5044, file: !936, line: 46, column: 5)
!5048 = !DILocation(line: 47, column: 13, scope: !5047, inlinedAt: !5042)
!5049 = !DILocation(line: 99, column: 15, scope: !953)
!5050 = !DILocation(line: 51, column: 26, scope: !5012, inlinedAt: !5042)
!5051 = !DILocation(line: 0, scope: !5020, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 51, column: 10, scope: !5012, inlinedAt: !5042)
!5053 = !DILocation(line: 2059, column: 24, scope: !5020, inlinedAt: !5052)
!5054 = !DILocation(line: 2059, column: 10, scope: !5020, inlinedAt: !5052)
!5055 = !DILocation(line: 99, column: 17, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !953, file: !936, line: 99, column: 15)
!5057 = !DILocation(line: 101, column: 15, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !936, line: 100, column: 13)
!5059 = !DILocation(line: 102, column: 15, scope: !5058)
!5060 = !DILocation(line: 106, column: 17, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !953, file: !936, line: 106, column: 15)
!5062 = !DILocation(line: 106, column: 15, scope: !953)
!5063 = distinct !{!5063, !5029, !5064}
!5064 = !DILocation(line: 113, column: 9, scope: !949)
!5065 = !DILocation(line: 108, column: 23, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5061, file: !936, line: 107, column: 13)
!5067 = !DILocation(line: 111, column: 15, scope: !5066)
!5068 = !DILocation(line: 114, column: 5, scope: !950)
!5069 = !DILocation(line: 120, column: 25, scope: !939)
!5070 = !DILocation(line: 125, column: 20, scope: !961)
!5071 = !DILocation(line: 125, column: 7, scope: !939)
!5072 = !DILocation(line: 127, column: 11, scope: !959)
!5073 = !DILocation(line: 127, column: 17, scope: !959)
!5074 = !DILocation(line: 127, column: 11, scope: !960)
!5075 = !DILocation(line: 0, scope: !5012, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 129, column: 22, scope: !958)
!5077 = !DILocation(line: 0, scope: !5020, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 51, column: 10, scope: !5012, inlinedAt: !5076)
!5079 = !DILocation(line: 2059, column: 10, scope: !5020, inlinedAt: !5078)
!5080 = !DILocation(line: 0, scope: !958)
!5081 = !DILocation(line: 130, column: 15, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !958, file: !936, line: 130, column: 15)
!5083 = !DILocation(line: 130, column: 15, scope: !958)
!5084 = !DILocation(line: 132, column: 23, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5082, file: !936, line: 131, column: 13)
!5086 = !DILocation(line: 133, column: 18, scope: !5085)
!5087 = !DILocation(line: 134, column: 26, scope: !5085)
!5088 = !DILocation(line: 140, column: 20, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !939, file: !936, line: 140, column: 7)
!5090 = !DILocation(line: 140, column: 25, scope: !5089)
!5091 = !DILocation(line: 142, column: 38, scope: !939)
!5092 = !DILocation(line: 0, scope: !5012, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 142, column: 14, scope: !939)
!5094 = !DILocation(line: 51, column: 26, scope: !5012, inlinedAt: !5093)
!5095 = !DILocation(line: 0, scope: !5020, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 51, column: 10, scope: !5012, inlinedAt: !5093)
!5097 = !DILocation(line: 2059, column: 24, scope: !5020, inlinedAt: !5096)
!5098 = !DILocation(line: 2059, column: 10, scope: !5020, inlinedAt: !5096)
!5099 = !DILocation(line: 143, column: 9, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !939, file: !936, line: 143, column: 7)
!5101 = !DILocation(line: 143, column: 7, scope: !939)
!5102 = !DILocation(line: 148, column: 46, scope: !939)
!5103 = !DILocation(line: 148, column: 39, scope: !939)
!5104 = !DILocation(line: 149, column: 39, scope: !939)
!5105 = !DILocation(line: 148, column: 15, scope: !939)
!5106 = !DILocation(line: 151, column: 10, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !939, file: !936, line: 151, column: 7)
!5108 = !DILocation(line: 151, column: 7, scope: !939)
!5109 = !DILocation(line: 154, column: 7, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5107, file: !936, line: 152, column: 5)
!5111 = !DILocation(line: 155, column: 7, scope: !5110)
!5112 = !DILocation(line: 158, column: 17, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !939, file: !936, line: 158, column: 7)
!5114 = !DILocation(line: 160, column: 10, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5113, file: !936, line: 159, column: 5)
!5116 = !DILocation(line: 161, column: 9, scope: !5115)
!5117 = !DILocation(line: 162, column: 5, scope: !5115)
!5118 = !DILocation(line: 163, column: 11, scope: !939)
!5119 = !DILocation(line: 181, column: 9, scope: !966)
!5120 = !DILocation(line: 181, column: 7, scope: !939)
!5121 = !DILocation(line: 183, column: 21, scope: !965)
!5122 = !DILocation(line: 0, scope: !965)
!5123 = !DILocation(line: 184, column: 29, scope: !965)
!5124 = !DILocation(line: 0, scope: !969)
!5125 = !DILocation(line: 186, scope: !969)
!5126 = !DILocation(line: 186, column: 7, scope: !969)
!5127 = !DILocation(line: 188, column: 15, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !936, line: 188, column: 15)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !936, line: 187, column: 9)
!5130 = distinct !DILexicalBlock(scope: !969, file: !936, line: 186, column: 7)
!5131 = !DILocation(line: 188, column: 21, scope: !5128)
!5132 = !DILocation(line: 188, column: 30, scope: !5128)
!5133 = !DILocation(line: 189, column: 15, scope: !5128)
!5134 = !DILocation(line: 189, column: 13, scope: !5128)
!5135 = !DILocation(line: 191, column: 14, scope: !5128)
!5136 = !DILocation(line: 191, column: 18, scope: !5128)
!5137 = !DILocation(line: 186, column: 38, scope: !5130)
!5138 = distinct !{!5138, !5126, !5139, !1117}
!5139 = !DILocation(line: 192, column: 9, scope: !969)
!5140 = !DILocation(line: 196, column: 1, scope: !939)
!5141 = !DISubprogram(name: "getgrouplist", scope: !1534, file: !1534, line: 186, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!103, !130, !208, !5144, !465}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!5145 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !974, file: !974, line: 27, type: !3966, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5146)
!5146 = !{!5147, !5148, !5149, !5150}
!5147 = !DILocalVariable(name: "ptr", arg: 1, scope: !5145, file: !974, line: 27, type: !125)
!5148 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5145, file: !974, line: 27, type: !127)
!5149 = !DILocalVariable(name: "size", arg: 3, scope: !5145, file: !974, line: 27, type: !127)
!5150 = !DILocalVariable(name: "nbytes", scope: !5145, file: !974, line: 29, type: !127)
!5151 = !DILocation(line: 0, scope: !5145)
!5152 = !DILocation(line: 30, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5145, file: !974, line: 30, column: 7)
!5154 = !DILocation(line: 30, column: 7, scope: !5145)
!5155 = !DILocation(line: 32, column: 7, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5153, file: !974, line: 31, column: 5)
!5157 = !DILocation(line: 32, column: 13, scope: !5156)
!5158 = !DILocation(line: 33, column: 7, scope: !5156)
!5159 = !DILocalVariable(name: "ptr", arg: 1, scope: !5160, file: !4058, line: 2057, type: !125)
!5160 = distinct !DISubprogram(name: "rpl_realloc", scope: !4058, file: !4058, line: 2057, type: !4050, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5161)
!5161 = !{!5159, !5162}
!5162 = !DILocalVariable(name: "size", arg: 2, scope: !5160, file: !4058, line: 2057, type: !127)
!5163 = !DILocation(line: 0, scope: !5160, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 37, column: 10, scope: !5145)
!5165 = !DILocation(line: 2059, column: 24, scope: !5160, inlinedAt: !5164)
!5166 = !DILocation(line: 2059, column: 10, scope: !5160, inlinedAt: !5164)
!5167 = !DILocation(line: 37, column: 3, scope: !5145)
!5168 = !DILocation(line: 38, column: 1, scope: !5145)
!5169 = distinct !DISubprogram(name: "hard_locale", scope: !852, file: !852, line: 28, type: !5170, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!223, !103}
!5172 = !{!5173, !5174}
!5173 = !DILocalVariable(name: "category", arg: 1, scope: !5169, file: !852, line: 28, type: !103)
!5174 = !DILocalVariable(name: "locale", scope: !5169, file: !852, line: 30, type: !5175)
!5175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5176)
!5176 = !{!5177}
!5177 = !DISubrange(count: 257)
!5178 = distinct !DIAssignID()
!5179 = !DILocation(line: 0, scope: !5169)
!5180 = !DILocation(line: 30, column: 3, scope: !5169)
!5181 = !DILocation(line: 32, column: 7, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5169, file: !852, line: 32, column: 7)
!5183 = !DILocation(line: 32, column: 7, scope: !5169)
!5184 = !DILocalVariable(name: "__s1", arg: 1, scope: !5185, file: !1083, line: 1359, type: !130)
!5185 = distinct !DISubprogram(name: "streq", scope: !1083, file: !1083, line: 1359, type: !1084, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5186)
!5186 = !{!5184, !5187}
!5187 = !DILocalVariable(name: "__s2", arg: 2, scope: !5185, file: !1083, line: 1359, type: !130)
!5188 = !DILocation(line: 0, scope: !5185, inlinedAt: !5189)
!5189 = distinct !DILocation(line: 35, column: 9, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5169, file: !852, line: 35, column: 7)
!5191 = !DILocation(line: 1361, column: 11, scope: !5185, inlinedAt: !5189)
!5192 = !DILocation(line: 1361, column: 10, scope: !5185, inlinedAt: !5189)
!5193 = !DILocation(line: 35, column: 29, scope: !5190)
!5194 = !DILocation(line: 0, scope: !5185, inlinedAt: !5195)
!5195 = distinct !DILocation(line: 35, column: 32, scope: !5190)
!5196 = !DILocation(line: 1361, column: 11, scope: !5185, inlinedAt: !5195)
!5197 = !DILocation(line: 1361, column: 10, scope: !5185, inlinedAt: !5195)
!5198 = !DILocation(line: 35, column: 7, scope: !5169)
!5199 = !DILocation(line: 46, column: 3, scope: !5169)
!5200 = !DILocation(line: 47, column: 1, scope: !5169)
!5201 = distinct !DISubprogram(name: "setlocale_null_r", scope: !978, file: !978, line: 154, type: !5202, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !5204)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!103, !103, !124, !127}
!5204 = !{!5205, !5206, !5207}
!5205 = !DILocalVariable(name: "category", arg: 1, scope: !5201, file: !978, line: 154, type: !103)
!5206 = !DILocalVariable(name: "buf", arg: 2, scope: !5201, file: !978, line: 154, type: !124)
!5207 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5201, file: !978, line: 154, type: !127)
!5208 = !DILocation(line: 0, scope: !5201)
!5209 = !DILocation(line: 159, column: 10, scope: !5201)
!5210 = !DILocation(line: 159, column: 3, scope: !5201)
!5211 = distinct !DISubprogram(name: "setlocale_null", scope: !978, file: !978, line: 186, type: !5212, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !5214)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!130, !103}
!5214 = !{!5215}
!5215 = !DILocalVariable(name: "category", arg: 1, scope: !5211, file: !978, line: 186, type: !103)
!5216 = !DILocation(line: 0, scope: !5211)
!5217 = !DILocation(line: 189, column: 10, scope: !5211)
!5218 = !DILocation(line: 189, column: 3, scope: !5211)
!5219 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !980, file: !980, line: 35, type: !5212, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5220)
!5220 = !{!5221, !5222}
!5221 = !DILocalVariable(name: "category", arg: 1, scope: !5219, file: !980, line: 35, type: !103)
!5222 = !DILocalVariable(name: "result", scope: !5219, file: !980, line: 37, type: !130)
!5223 = !DILocation(line: 0, scope: !5219)
!5224 = !DILocation(line: 37, column: 24, scope: !5219)
!5225 = !DILocation(line: 62, column: 3, scope: !5219)
!5226 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !980, file: !980, line: 66, type: !5202, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5227)
!5227 = !{!5228, !5229, !5230, !5231, !5232}
!5228 = !DILocalVariable(name: "category", arg: 1, scope: !5226, file: !980, line: 66, type: !103)
!5229 = !DILocalVariable(name: "buf", arg: 2, scope: !5226, file: !980, line: 66, type: !124)
!5230 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5226, file: !980, line: 66, type: !127)
!5231 = !DILocalVariable(name: "result", scope: !5226, file: !980, line: 111, type: !130)
!5232 = !DILocalVariable(name: "length", scope: !5233, file: !980, line: 125, type: !127)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !980, line: 124, column: 5)
!5234 = distinct !DILexicalBlock(scope: !5226, file: !980, line: 113, column: 7)
!5235 = !DILocation(line: 0, scope: !5226)
!5236 = !DILocation(line: 0, scope: !5219, inlinedAt: !5237)
!5237 = distinct !DILocation(line: 111, column: 24, scope: !5226)
!5238 = !DILocation(line: 37, column: 24, scope: !5219, inlinedAt: !5237)
!5239 = !DILocation(line: 113, column: 14, scope: !5234)
!5240 = !DILocation(line: 113, column: 7, scope: !5226)
!5241 = !DILocation(line: 116, column: 19, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !980, line: 116, column: 11)
!5243 = distinct !DILexicalBlock(scope: !5234, file: !980, line: 114, column: 5)
!5244 = !DILocation(line: 116, column: 11, scope: !5243)
!5245 = !DILocation(line: 120, column: 16, scope: !5242)
!5246 = !DILocation(line: 120, column: 9, scope: !5242)
!5247 = !DILocation(line: 125, column: 23, scope: !5233)
!5248 = !DILocation(line: 0, scope: !5233)
!5249 = !DILocation(line: 126, column: 18, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5233, file: !980, line: 126, column: 11)
!5251 = !DILocation(line: 126, column: 11, scope: !5233)
!5252 = !DILocation(line: 128, column: 39, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5250, file: !980, line: 127, column: 9)
!5254 = !DILocalVariable(name: "__dest", arg: 1, scope: !5255, file: !2203, line: 26, type: !4328)
!5255 = distinct !DISubprogram(name: "memcpy", scope: !2203, file: !2203, line: 26, type: !4326, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5256)
!5256 = !{!5254, !5257, !5258}
!5257 = !DILocalVariable(name: "__src", arg: 2, scope: !5255, file: !2203, line: 26, type: !1214)
!5258 = !DILocalVariable(name: "__len", arg: 3, scope: !5255, file: !2203, line: 26, type: !127)
!5259 = !DILocation(line: 0, scope: !5255, inlinedAt: !5260)
!5260 = distinct !DILocation(line: 128, column: 11, scope: !5253)
!5261 = !DILocation(line: 29, column: 10, scope: !5255, inlinedAt: !5260)
!5262 = !DILocation(line: 129, column: 11, scope: !5253)
!5263 = !DILocation(line: 133, column: 23, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5265, file: !980, line: 133, column: 15)
!5265 = distinct !DILexicalBlock(scope: !5250, file: !980, line: 132, column: 9)
!5266 = !DILocation(line: 133, column: 15, scope: !5265)
!5267 = !DILocation(line: 138, column: 44, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5264, file: !980, line: 134, column: 13)
!5269 = !DILocation(line: 0, scope: !5255, inlinedAt: !5270)
!5270 = distinct !DILocation(line: 138, column: 15, scope: !5268)
!5271 = !DILocation(line: 29, column: 10, scope: !5255, inlinedAt: !5270)
!5272 = !DILocation(line: 139, column: 15, scope: !5268)
!5273 = !DILocation(line: 139, column: 32, scope: !5268)
!5274 = !DILocation(line: 140, column: 13, scope: !5268)
!5275 = !DILocation(line: 0, scope: !5234)
!5276 = !DILocation(line: 145, column: 1, scope: !5226)
