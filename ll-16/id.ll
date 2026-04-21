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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !552
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !517
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !542
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !544
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !546
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !548
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !550
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !554
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !556
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !561
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !566
@.str.90 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !572
@.str.1.91 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !574
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !576
@.str.94 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !607
@.str.1.95 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !610
@.str.2.96 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !612
@.str.3.97 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !617
@.str.4.98 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !619
@.str.5.99 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !621
@.str.6.100 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !623
@.str.7.101 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !625
@.str.8.102 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !627
@.str.9.103 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !629
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.94, ptr @.str.1.95, ptr @.str.2.96, ptr @.str.3.97, ptr @.str.4.98, ptr @.str.5.99, ptr @.str.6.100, ptr @.str.7.101, ptr @.str.8.102, ptr @.str.9.103, ptr null], align 8, !dbg !631
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !656
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !670
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !708
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !715
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !672
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !717
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !660
@.str.10.106 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !677
@.str.11.104 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !679
@.str.12.107 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !681
@.str.13.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !683
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !685
@.str.112 = private unnamed_addr constant [27 x i8] c"warning: '.' should be ':'\00", align 1, !dbg !723
@.str.1.115 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1, !dbg !726
@.str.2.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !728
@.str.3.114 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1, !dbg !730
@.str.4.116 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1, !dbg !732
@.str.5.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !734
@.str.120 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !736
@.str.1.121 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !739
@.str.2.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !741
@.str.3.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !743
@.str.4.124 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !745
@.str.5.125 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !747
@.str.6.126 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !752
@.str.7.127 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !754
@.str.8.128 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !756
@.str.9.129 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !761
@.str.10.130 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !766
@.str.11.131 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !771
@.str.12.132 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !776
@.str.13.133 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !778
@.str.14.134 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !780
@.str.15.135 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !785
@.str.16.136 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !790
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.141 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !795
@.str.18.142 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !797
@.str.19.143 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !799
@.str.20.144 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !801
@.str.21.145 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !803
@.str.22.146 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !805
@.str.23.147 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !807
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !812
@exit_failure = dso_local global i32 1, align 4, !dbg !820
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !826
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !829
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !831
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !833
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !836
@.str.188 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !851
@.str.1.189 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !854

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !994, metadata !DIExpression()), !dbg !995
  %2 = icmp eq i32 %0, 0, !dbg !996
  br i1 %2, label %8, label %3, !dbg !998

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !999, !tbaa !1001
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !999
  %6 = load ptr, ptr @program_name, align 8, !dbg !999, !tbaa !1001
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !999
  br label %42, !dbg !999

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1005
  %10 = load ptr, ptr @program_name, align 8, !dbg !1005, !tbaa !1001
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !1005
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1007
  %13 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !1001
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1007
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1008
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1009
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1009
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1010
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1010
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1011
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1012
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1013
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1013
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !1014
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1014
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !1015
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1015
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1016
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1016
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1017
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1017
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1018
  %26 = load ptr, ptr @stdout, align 8, !dbg !1018, !tbaa !1001
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1019, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1031, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr poison, metadata !1031, metadata !DIExpression()), !dbg !1036
  tail call void @emit_bug_reporting_address() #39, !dbg !1038
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1039
  call void @llvm.dbg.value(metadata ptr %28, metadata !1034, metadata !DIExpression()), !dbg !1036
  %29 = icmp eq ptr %28, null, !dbg !1040
  br i1 %29, label %37, label %30, !dbg !1042

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.64, i64 noundef 3) #40, !dbg !1043
  %32 = icmp eq i32 %31, 0, !dbg !1043
  br i1 %32, label %37, label %33, !dbg !1044

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1045
  %35 = load ptr, ptr @stdout, align 8, !dbg !1045, !tbaa !1001
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1045
  br label %37, !dbg !1047

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1031, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1035, metadata !DIExpression()), !dbg !1036
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #39, !dbg !1048
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #39, !dbg !1048
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1049
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #39, !dbg !1049
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1050
  unreachable, !dbg !1050
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1051 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1056 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1062 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1065 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !213 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !217, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !1068
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1069, !tbaa !1070
  %3 = icmp eq i32 %2, -1, !dbg !1072
  br i1 %3, label %4, label %16, !dbg !1073

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #39, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !1075
  %6 = icmp eq ptr %5, null, !dbg !1076
  br i1 %6, label %14, label %7, !dbg !1077

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1078, !tbaa !1079
  %9 = icmp eq i8 %8, 0, !dbg !1078
  br i1 %9, label %14, label %10, !dbg !1080

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1081, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1087, metadata !DIExpression()), !dbg !1088
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #40, !dbg !1090
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
  br label %122, !dbg !1099

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !1068
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #40, !dbg !1100
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1101
  call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !1068
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1102
  call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !1068
  %26 = icmp eq ptr %25, null, !dbg !1103
  br i1 %26, label %54, label %27, !dbg !1104

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1105
  br i1 %28, label %54, label %29, !dbg !1106

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !1107
  %30 = icmp ult ptr %24, %25, !dbg !1108
  br i1 %30, label %31, label %52, !dbg !1109

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1068
  %33 = load ptr, ptr %32, align 8, !tbaa !1001
  br label %34, !dbg !1109

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !1107
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1110
  call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !1107
  %38 = load i8, ptr %35, align 1, !dbg !1110, !tbaa !1079
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1110
  %41 = load i16, ptr %40, align 2, !dbg !1110, !tbaa !1111
  %42 = freeze i16 %41, !dbg !1113
  %43 = lshr i16 %42, 13, !dbg !1113
  %44 = and i16 %43, 1, !dbg !1113
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !1107
  %47 = icmp ult ptr %37, %25, !dbg !1108
  %48 = icmp ult i64 %46, 2, !dbg !1115
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1115
  br i1 %49, label %34, label %50, !dbg !1109, !llvm.loop !1116

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1118
  br i1 %51, label %52, label %54, !dbg !1120

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1120

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1068
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %55, metadata !225, metadata !DIExpression()), !dbg !1068
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.37) #40, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %57, metadata !231, metadata !DIExpression()), !dbg !1068
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1122
  call void @llvm.dbg.value(metadata ptr %58, metadata !232, metadata !DIExpression()), !dbg !1068
  br label %59, !dbg !1123

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1068
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %60, metadata !232, metadata !DIExpression()), !dbg !1068
  %62 = load i8, ptr %60, align 1, !dbg !1124, !tbaa !1079
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1125

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1126
  %65 = load i8, ptr %64, align 1, !dbg !1129, !tbaa !1079
  %66 = icmp ne i8 %65, 45, !dbg !1130
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1131
  br label %68, !dbg !1131

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !222, metadata !DIExpression()), !dbg !1068
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1132
  %71 = load ptr, ptr %70, align 8, !dbg !1132, !tbaa !1001
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1132
  %74 = load i16, ptr %73, align 2, !dbg !1132, !tbaa !1111
  %75 = and i16 %74, 8192, !dbg !1132
  %76 = icmp eq i16 %75, 0, !dbg !1132
  br i1 %76, label %90, label %77, !dbg !1134

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1135
  br i1 %78, label %92, label %79, !dbg !1138

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1139
  %81 = load i8, ptr %80, align 1, !dbg !1139, !tbaa !1079
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1139
  %84 = load i16, ptr %83, align 2, !dbg !1139, !tbaa !1111
  %85 = and i16 %84, 8192, !dbg !1139
  %86 = icmp eq i16 %85, 0, !dbg !1139
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1140
  br i1 %89, label %90, label %92, !dbg !1140

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %91, metadata !232, metadata !DIExpression()), !dbg !1068
  br label %59, !dbg !1123, !llvm.loop !1142

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1144
  %94 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !1001
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !1068
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #40, !dbg !1165
  %97 = icmp eq i32 %96, 0, !dbg !1165
  br i1 %97, label %101, label %98, !dbg !1167

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #40, !dbg !1168
  %100 = icmp eq i32 %99, 0, !dbg !1168
  br i1 %100, label %101, label %104, !dbg !1169

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1170
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !1170
  br label %107, !dbg !1172

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1173
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !1173
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1175, !tbaa !1001
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %108), !dbg !1175
  %110 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !1001
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %110), !dbg !1176
  %112 = ptrtoint ptr %60 to i64, !dbg !1177
  %113 = sub i64 %112, %93, !dbg !1177
  %114 = load ptr, ptr @stdout, align 8, !dbg !1177, !tbaa !1001
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1177
  %116 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !1001
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %116), !dbg !1178
  %118 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !1001
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %118), !dbg !1179
  %120 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !1001
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1180
  br label %122, !dbg !1181

122:                                              ; preds = %107, %19
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
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1222, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr %1, metadata !1223, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i32 0, metadata !1225, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 0, metadata !1226, metadata !DIExpression()), !dbg !1251
  %4 = load ptr, ptr %1, align 8, !dbg !1252, !tbaa !1001
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1253
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.15) #39, !dbg !1254
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #39, !dbg !1255
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.16) #39, !dbg !1256
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1257
  br label %9, !dbg !1258

9:                                                ; preds = %27, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %10, metadata !1224, metadata !DIExpression()), !dbg !1251
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
  ], !dbg !1258

11:                                               ; preds = %9
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1260
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %12) #39, !dbg !1260
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
  tail call void @usage(i32 noundef 0) #43, !dbg !1269
  unreachable, !dbg !1269

19:                                               ; preds = %9
  %20 = load ptr, ptr @stdout, align 8, !dbg !1270, !tbaa !1001
  %21 = load ptr, ptr @Version, align 8, !dbg !1270, !tbaa !1001
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #39, !dbg !1270
  %23 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #39, !dbg !1270
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef null) #39, !dbg !1270
  tail call void @exit(i32 noundef 0) #41, !dbg !1270
  unreachable, !dbg !1270

24:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #43, !dbg !1271
  unreachable, !dbg !1271

25:                                               ; preds = %9, %13, %14, %15, %16, %17
  %26 = phi ptr [ @just_group_list, %17 ], [ @opt_zero, %16 ], [ @just_user, %15 ], [ @use_real, %14 ], [ @use_name, %13 ], [ @just_group, %9 ]
  store i1 true, ptr %26, align 1, !dbg !1272
  br label %27, !dbg !1258

27:                                               ; preds = %25, %9
  br label %9, !dbg !1259, !llvm.loop !1273

28:                                               ; preds = %9
  %29 = load i32, ptr @optind, align 4, !dbg !1275, !tbaa !1070
  %30 = sub nsw i32 %0, %29, !dbg !1276
  %31 = sext i32 %30 to i64, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %31, metadata !1227, metadata !DIExpression()), !dbg !1251
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
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !1286
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %42) #39, !dbg !1286
  unreachable, !dbg !1286

43:                                               ; preds = %28
  %44 = select i1 %32, i1 true, i1 %34, !dbg !1287
  %45 = select i1 %44, i1 true, i1 %37, !dbg !1287
  call void @llvm.dbg.value(metadata i1 %45, metadata !1228, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1251
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
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !1297
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %53) #39, !dbg !1297
  unreachable, !dbg !1297

54:                                               ; preds = %50
  %55 = load i1, ptr @opt_zero, align 1, !dbg !1298
  br i1 %55, label %56, label %58, !dbg !1300

56:                                               ; preds = %54
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1301
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %57) #39, !dbg !1301
  unreachable, !dbg !1301

58:                                               ; preds = %54
  %59 = icmp eq i32 %29, %0, !dbg !1290
  br i1 %59, label %60, label %62, !dbg !1302

60:                                               ; preds = %58
  %61 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !1303
  br label %123, !dbg !1292

62:                                               ; preds = %58, %46
  %63 = icmp ugt i32 %30, 1, !dbg !1304
  %64 = zext i1 %63 to i8, !dbg !1305
  store i8 %64, ptr @multiple_users, align 4, !dbg !1305, !tbaa !1306
  %65 = sext i32 %29 to i64, !dbg !1308
  %66 = add nsw i64 %31, %65, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %66, metadata !1227, metadata !DIExpression()), !dbg !1251
  %67 = icmp ugt i64 %66, %65, !dbg !1310
  br i1 %67, label %68, label %174, !dbg !1311

68:                                               ; preds = %62, %117
  %69 = phi i64 [ %121, %117 ], [ %65, %62 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1312
  call void @llvm.dbg.value(metadata ptr null, metadata !1229, metadata !DIExpression()), !dbg !1313
  store ptr null, ptr %3, align 8, !dbg !1314, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr null, metadata !1235, metadata !DIExpression()), !dbg !1313
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69, !dbg !1315
  %71 = load ptr, ptr %70, align 8, !dbg !1315, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %71, metadata !1247, metadata !DIExpression()), !dbg !1313
  %72 = load i8, ptr %71, align 1, !dbg !1316, !tbaa !1079
  %73 = icmp eq i8 %72, 0, !dbg !1316
  br i1 %73, label %88, label %74, !dbg !1318

74:                                               ; preds = %68
  call void @llvm.dbg.value(metadata ptr %3, metadata !1229, metadata !DIExpression(DW_OP_deref)), !dbg !1313
  %75 = call ptr @parse_user_spec(ptr noundef nonnull %71, ptr noundef nonnull @euid, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #39, !dbg !1319
  %76 = icmp eq ptr %75, null, !dbg !1319
  br i1 %76, label %77, label %88, !dbg !1322

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 8, !dbg !1323, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %78, metadata !1229, metadata !DIExpression()), !dbg !1313
  %79 = icmp eq ptr %78, null, !dbg !1323
  br i1 %79, label %82, label %80, !dbg !1323

80:                                               ; preds = %77
  %81 = call ptr @getpwnam(ptr noundef nonnull %78), !dbg !1324
  br label %85, !dbg !1323

82:                                               ; preds = %77
  %83 = load i32, ptr @euid, align 4, !dbg !1325, !tbaa !1070
  %84 = call ptr @getpwuid(i32 noundef %83) #39, !dbg !1326
  br label %85, !dbg !1323

85:                                               ; preds = %80, %82
  %86 = phi ptr [ %81, %80 ], [ %84, %82 ], !dbg !1313
  call void @llvm.dbg.value(metadata ptr %86, metadata !1235, metadata !DIExpression()), !dbg !1313
  %87 = icmp eq ptr %86, null, !dbg !1327
  br i1 %87, label %88, label %93, !dbg !1329

88:                                               ; preds = %68, %74, %85
  %89 = tail call ptr @__errno_location() #42, !dbg !1330
  %90 = load i32, ptr %89, align 4, !dbg !1330, !tbaa !1070
  %91 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !1330
  %92 = call ptr @quote(ptr noundef nonnull %71) #39, !dbg !1330
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %90, ptr noundef %91, ptr noundef %92) #39, !dbg !1330
  store i8 0, ptr @ok, align 4, !dbg !1332, !tbaa !1306
  br label %117, !dbg !1333

93:                                               ; preds = %85
  %94 = load ptr, ptr %3, align 8, !dbg !1334, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %94, metadata !1229, metadata !DIExpression()), !dbg !1313
  %95 = icmp eq ptr %94, null, !dbg !1334
  br i1 %95, label %96, label %99, !dbg !1337

96:                                               ; preds = %93
  %97 = load ptr, ptr %86, align 8, !dbg !1338, !tbaa !1339
  %98 = call noalias nonnull ptr @xstrdup(ptr noundef %97) #39, !dbg !1341
  call void @llvm.dbg.value(metadata ptr %98, metadata !1229, metadata !DIExpression()), !dbg !1313
  store ptr %98, ptr %3, align 8, !dbg !1342, !tbaa !1001
  br label %99, !dbg !1343

99:                                               ; preds = %96, %93
  %100 = phi ptr [ %98, %96 ], [ %94, %93 ], !dbg !1344
  %101 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 2, !dbg !1345
  %102 = load i32, ptr %101, align 8, !dbg !1345, !tbaa !1346
  store i32 %102, ptr @euid, align 4, !dbg !1347, !tbaa !1070
  store i32 %102, ptr @ruid, align 4, !dbg !1348, !tbaa !1070
  %103 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 3, !dbg !1349
  %104 = load i32, ptr %103, align 4, !dbg !1349, !tbaa !1350
  store i32 %104, ptr @egid, align 4, !dbg !1351, !tbaa !1070
  store i32 %104, ptr @rgid, align 4, !dbg !1352, !tbaa !1070
  call void @llvm.dbg.value(metadata ptr %100, metadata !1229, metadata !DIExpression()), !dbg !1313
  call fastcc void @print_stuff(ptr noundef nonnull %100), !dbg !1353
  %105 = load ptr, ptr @stdout, align 8, !dbg !1354, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %105, metadata !1356, metadata !DIExpression()), !dbg !1362
  %106 = load i32, ptr %105, align 8, !dbg !1364, !tbaa !1365
  %107 = and i32 %106, 32, !dbg !1354
  %108 = icmp eq i32 %107, 0, !dbg !1354
  br i1 %108, label %117, label %109, !dbg !1368

109:                                              ; preds = %99
  %110 = tail call ptr @__errno_location() #42, !dbg !1369
  %111 = load i32, ptr %110, align 4, !dbg !1369, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %111, metadata !1372, metadata !DIExpression()), !dbg !1374
  %112 = call i32 @fflush_unlocked(ptr noundef nonnull %105) #39, !dbg !1375
  %113 = load ptr, ptr @stdout, align 8, !dbg !1376, !tbaa !1001
  %114 = call i32 @fpurge(ptr noundef %113) #39, !dbg !1377
  %115 = load ptr, ptr @stdout, align 8, !dbg !1378, !tbaa !1001
  call void @clearerr_unlocked(ptr noundef %115) #39, !dbg !1378
  %116 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #39, !dbg !1379
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %111, ptr noundef %116) #39, !dbg !1379
  unreachable, !dbg !1379

117:                                              ; preds = %99, %88
  %118 = load ptr, ptr %3, align 8, !dbg !1380, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %118, metadata !1229, metadata !DIExpression()), !dbg !1313
  call void @free(ptr noundef %118) #39, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1382
  %119 = load i32, ptr @optind, align 4, !dbg !1383, !tbaa !1070
  %120 = add nsw i32 %119, 1, !dbg !1383
  store i32 %120, ptr @optind, align 4, !dbg !1383, !tbaa !1070
  %121 = sext i32 %120 to i64, !dbg !1384
  %122 = icmp ugt i64 %66, %121, !dbg !1310
  br i1 %122, label %68, label %174, !dbg !1311, !llvm.loop !1385

123:                                              ; preds = %60, %46
  call void @llvm.dbg.value(metadata i32 -1, metadata !1248, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 -1, metadata !1250, metadata !DIExpression()), !dbg !1387
  br i1 %32, label %124, label %126, !dbg !1388

124:                                              ; preds = %123
  %125 = load i1, ptr @use_real, align 1, !dbg !1389
  br i1 %125, label %137, label %128, !dbg !1391

126:                                              ; preds = %123
  %127 = select i1 %34, i1 true, i1 %37, !dbg !1392
  br i1 %127, label %137, label %128, !dbg !1392

128:                                              ; preds = %126, %124
  %129 = tail call ptr @__errno_location() #42, !dbg !1393
  store i32 0, ptr %129, align 4, !dbg !1395, !tbaa !1070
  %130 = tail call i32 @geteuid() #39, !dbg !1396
  store i32 %130, ptr @euid, align 4, !dbg !1397, !tbaa !1070
  %131 = icmp eq i32 %130, -1, !dbg !1398
  br i1 %131, label %132, label %137, !dbg !1400

132:                                              ; preds = %128
  %133 = load i32, ptr %129, align 4, !dbg !1401, !tbaa !1070
  %134 = icmp eq i32 %133, 0, !dbg !1401
  br i1 %134, label %137, label %135, !dbg !1402

135:                                              ; preds = %132
  %136 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !1403
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %133, ptr noundef %136) #39, !dbg !1403
  unreachable, !dbg !1403

137:                                              ; preds = %126, %128, %132, %124
  %138 = load i1, ptr @just_user, align 1, !dbg !1404
  br i1 %138, label %139, label %141, !dbg !1406

139:                                              ; preds = %137
  %140 = load i1, ptr @use_real, align 1, !dbg !1407
  br i1 %140, label %145, label %173, !dbg !1404

141:                                              ; preds = %137
  %142 = load i1, ptr @just_group, align 1, !dbg !1408
  br i1 %142, label %143, label %145, !dbg !1409

143:                                              ; preds = %141
  %144 = tail call ptr @__errno_location() #42, !dbg !1410
  br label %156, !dbg !1409

145:                                              ; preds = %141, %139
  %146 = tail call ptr @__errno_location() #42, !dbg !1413
  store i32 0, ptr %146, align 4, !dbg !1415, !tbaa !1070
  %147 = tail call i32 @getuid() #39, !dbg !1416
  store i32 %147, ptr @ruid, align 4, !dbg !1417, !tbaa !1070
  %148 = icmp eq i32 %147, -1, !dbg !1418
  br i1 %148, label %149, label %154, !dbg !1420

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 4, !dbg !1421, !tbaa !1070
  %151 = icmp eq i32 %150, 0, !dbg !1421
  br i1 %151, label %154, label %152, !dbg !1422

152:                                              ; preds = %149
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !1423
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %150, ptr noundef %153) #39, !dbg !1423
  unreachable, !dbg !1423

154:                                              ; preds = %145, %149
  %155 = load i1, ptr @just_user, align 1, !dbg !1424
  br i1 %155, label %173, label %156, !dbg !1425

156:                                              ; preds = %143, %154
  %157 = phi ptr [ %144, %143 ], [ %146, %154 ], !dbg !1410
  store i32 0, ptr %157, align 4, !dbg !1426, !tbaa !1070
  %158 = tail call i32 @getegid() #39, !dbg !1427
  store i32 %158, ptr @egid, align 4, !dbg !1428, !tbaa !1070
  %159 = icmp eq i32 %158, -1, !dbg !1429
  br i1 %159, label %160, label %165, !dbg !1431

160:                                              ; preds = %156
  %161 = load i32, ptr %157, align 4, !dbg !1432, !tbaa !1070
  %162 = icmp eq i32 %161, 0, !dbg !1432
  br i1 %162, label %165, label %163, !dbg !1433

163:                                              ; preds = %160
  %164 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #39, !dbg !1434
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %161, ptr noundef %164) #39, !dbg !1434
  unreachable, !dbg !1434

165:                                              ; preds = %160, %156
  store i32 0, ptr %157, align 4, !dbg !1435, !tbaa !1070
  %166 = tail call i32 @getgid() #39, !dbg !1436
  store i32 %166, ptr @rgid, align 4, !dbg !1437, !tbaa !1070
  %167 = icmp eq i32 %166, -1, !dbg !1438
  br i1 %167, label %168, label %173, !dbg !1440

168:                                              ; preds = %165
  %169 = load i32, ptr %157, align 4, !dbg !1441, !tbaa !1070
  %170 = icmp eq i32 %169, 0, !dbg !1441
  br i1 %170, label %173, label %171, !dbg !1442

171:                                              ; preds = %168
  %172 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #39, !dbg !1443
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %169, ptr noundef %172) #39, !dbg !1443
  unreachable, !dbg !1443

173:                                              ; preds = %139, %165, %168, %154
  tail call fastcc void @print_stuff(ptr noundef null), !dbg !1444
  br label %174

174:                                              ; preds = %117, %62, %173
  %175 = load i8, ptr @ok, align 4, !dbg !1445, !tbaa !1306, !range !1446, !noundef !1055
  %176 = icmp eq i8 %175, 0, !dbg !1445
  %177 = zext i1 %176 to i32, !dbg !1445
  ret i32 %177, !dbg !1447
}

; Function Attrs: nounwind
declare !dbg !1448 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1451 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1452 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1455 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1461 noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1464 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1467 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @print_stuff(ptr noundef %0) unnamed_addr #10 !dbg !1471 {
  %2 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1473, metadata !DIExpression()), !dbg !1474
  %3 = load i1, ptr @just_user, align 1, !dbg !1475
  br i1 %3, label %4, label %24, !dbg !1477

4:                                                ; preds = %1
  %5 = load i1, ptr @use_real, align 1, !dbg !1478
  %6 = load i32, ptr @ruid, align 4, !dbg !1478
  %7 = load i32, ptr @euid, align 4, !dbg !1478
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %8, metadata !1479, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata ptr null, metadata !1484, metadata !DIExpression()), !dbg !1485
  %9 = load i1, ptr @use_name, align 1, !dbg !1487
  br i1 %9, label %12, label %10, !dbg !1489

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64, !dbg !1490
  br label %21, !dbg !1489

12:                                               ; preds = %4
  %13 = tail call ptr @getpwuid(i32 noundef %8) #39, !dbg !1492
  call void @llvm.dbg.value(metadata ptr %13, metadata !1484, metadata !DIExpression()), !dbg !1485
  %14 = icmp eq ptr %13, null, !dbg !1494
  br i1 %14, label %15, label %18, !dbg !1496

15:                                               ; preds = %12
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #39, !dbg !1497
  %17 = zext i32 %8 to i64, !dbg !1497
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16, i64 noundef %17) #39, !dbg !1497
  store i8 0, ptr @ok, align 4, !dbg !1499, !tbaa !1306
  br label %21, !dbg !1500

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %13, metadata !1484, metadata !DIExpression()), !dbg !1485
  %19 = load ptr, ptr %13, align 8, !dbg !1501, !tbaa !1339
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %19) #39, !dbg !1501
  br label %182, !dbg !1501

21:                                               ; preds = %15, %10
  %22 = phi i64 [ %11, %10 ], [ %17, %15 ], !dbg !1490
  call void @llvm.dbg.value(metadata ptr null, metadata !1484, metadata !DIExpression()), !dbg !1485
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %22) #39, !dbg !1490
  br label %182

24:                                               ; preds = %1
  %25 = load i1, ptr @just_group, align 1, !dbg !1502
  br i1 %25, label %26, label %37, !dbg !1504

26:                                               ; preds = %24
  %27 = load i1, ptr @use_real, align 1, !dbg !1505
  %28 = load i32, ptr @rgid, align 4, !dbg !1505
  %29 = load i32, ptr @egid, align 4, !dbg !1505
  %30 = select i1 %27, i32 %28, i32 %29, !dbg !1505
  %31 = load i1, ptr @use_name, align 1, !dbg !1506
  %32 = tail call i1 @print_group(i32 noundef %30, i1 noundef %31) #39, !dbg !1507
  %33 = load i8, ptr @ok, align 4, !dbg !1508, !tbaa !1306, !range !1446, !noundef !1055
  %34 = icmp ne i8 %33, 0, !dbg !1508
  %35 = and i1 %32, %34, !dbg !1508
  %36 = zext i1 %35 to i8, !dbg !1508
  store i8 %36, ptr @ok, align 4, !dbg !1508, !tbaa !1306
  br label %182, !dbg !1509

37:                                               ; preds = %24
  %38 = load i1, ptr @just_group_list, align 1, !dbg !1510
  br i1 %38, label %39, label %51, !dbg !1512

39:                                               ; preds = %37
  %40 = load i32, ptr @ruid, align 4, !dbg !1513, !tbaa !1070
  %41 = load i32, ptr @rgid, align 4, !dbg !1514, !tbaa !1070
  %42 = load i32, ptr @egid, align 4, !dbg !1515, !tbaa !1070
  %43 = load i1, ptr @use_name, align 1, !dbg !1516
  %44 = load i1, ptr @opt_zero, align 1, !dbg !1517
  %45 = select i1 %44, i8 0, i8 32, !dbg !1517
  %46 = tail call i1 @print_group_list(ptr noundef %0, i32 noundef %40, i32 noundef %41, i32 noundef %42, i1 noundef %43, i8 noundef %45) #39, !dbg !1518
  %47 = load i8, ptr @ok, align 4, !dbg !1519, !tbaa !1306, !range !1446, !noundef !1055
  %48 = icmp ne i8 %47, 0, !dbg !1519
  %49 = and i1 %46, %48, !dbg !1519
  %50 = zext i1 %49 to i8, !dbg !1519
  store i8 %50, ptr @ok, align 4, !dbg !1519, !tbaa !1306
  br label %182, !dbg !1520

51:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !1540
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #39, !dbg !1543
  %53 = load i32, ptr @ruid, align 4, !dbg !1543, !tbaa !1070
  %54 = zext i32 %53 to i64, !dbg !1543
  %55 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %52, i64 noundef %54) #39, !dbg !1543
  %56 = load i32, ptr @ruid, align 4, !dbg !1544, !tbaa !1070
  %57 = tail call ptr @getpwuid(i32 noundef %56) #39, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %57, metadata !1524, metadata !DIExpression()), !dbg !1540
  %58 = icmp eq ptr %57, null, !dbg !1546
  br i1 %58, label %62, label %59, !dbg !1548

59:                                               ; preds = %51
  %60 = load ptr, ptr %57, align 8, !dbg !1549, !tbaa !1339
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %60) #39, !dbg !1549
  br label %62, !dbg !1549

62:                                               ; preds = %59, %51
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #39, !dbg !1550
  %64 = load i32, ptr @rgid, align 4, !dbg !1550, !tbaa !1070
  %65 = zext i32 %64 to i64, !dbg !1550
  %66 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %63, i64 noundef %65) #39, !dbg !1550
  %67 = load i32, ptr @rgid, align 4, !dbg !1551, !tbaa !1070
  %68 = tail call ptr @getgrgid(i32 noundef %67) #39, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %68, metadata !1525, metadata !DIExpression()), !dbg !1540
  %69 = icmp eq ptr %68, null, !dbg !1553
  br i1 %69, label %73, label %70, !dbg !1555

70:                                               ; preds = %62
  %71 = load ptr, ptr %68, align 8, !dbg !1556, !tbaa !1557
  %72 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %71) #39, !dbg !1556
  br label %73, !dbg !1556

73:                                               ; preds = %70, %62
  %74 = load i32, ptr @euid, align 4, !dbg !1559, !tbaa !1070
  %75 = load i32, ptr @ruid, align 4, !dbg !1561, !tbaa !1070
  %76 = icmp eq i32 %74, %75, !dbg !1562
  br i1 %76, label %88, label %77, !dbg !1563

77:                                               ; preds = %73
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #39, !dbg !1564
  %79 = load i32, ptr @euid, align 4, !dbg !1564, !tbaa !1070
  %80 = zext i32 %79 to i64, !dbg !1564
  %81 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %78, i64 noundef %80) #39, !dbg !1564
  %82 = load i32, ptr @euid, align 4, !dbg !1566, !tbaa !1070
  %83 = tail call ptr @getpwuid(i32 noundef %82) #39, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %83, metadata !1524, metadata !DIExpression()), !dbg !1540
  %84 = icmp eq ptr %83, null, !dbg !1568
  br i1 %84, label %88, label %85, !dbg !1570

85:                                               ; preds = %77
  %86 = load ptr, ptr %83, align 8, !dbg !1571, !tbaa !1339
  %87 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %86) #39, !dbg !1571
  br label %88, !dbg !1571

88:                                               ; preds = %85, %77, %73
  %89 = phi ptr [ %83, %85 ], [ null, %77 ], [ %57, %73 ], !dbg !1540
  call void @llvm.dbg.value(metadata ptr %89, metadata !1524, metadata !DIExpression()), !dbg !1540
  %90 = load i32, ptr @egid, align 4, !dbg !1572, !tbaa !1070
  %91 = load i32, ptr @rgid, align 4, !dbg !1574, !tbaa !1070
  %92 = icmp eq i32 %90, %91, !dbg !1575
  br i1 %92, label %104, label %93, !dbg !1576

93:                                               ; preds = %88
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #39, !dbg !1577
  %95 = load i32, ptr @egid, align 4, !dbg !1577, !tbaa !1070
  %96 = zext i32 %95 to i64, !dbg !1577
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, i64 noundef %96) #39, !dbg !1577
  %98 = load i32, ptr @egid, align 4, !dbg !1579, !tbaa !1070
  %99 = tail call ptr @getgrgid(i32 noundef %98) #39, !dbg !1580
  call void @llvm.dbg.value(metadata ptr %99, metadata !1525, metadata !DIExpression()), !dbg !1540
  %100 = icmp eq ptr %99, null, !dbg !1581
  br i1 %100, label %104, label %101, !dbg !1583

101:                                              ; preds = %93
  %102 = load ptr, ptr %99, align 8, !dbg !1584, !tbaa !1557
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %102) #39, !dbg !1584
  br label %104, !dbg !1584

104:                                              ; preds = %101, %93, %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #39, !dbg !1585
  %105 = icmp eq ptr %0, null, !dbg !1586
  br i1 %105, label %115, label %106, !dbg !1588

106:                                              ; preds = %104
  %107 = icmp eq ptr %89, null, !dbg !1589
  br i1 %107, label %111, label %108, !dbg !1589

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.passwd, ptr %89, i64 0, i32 3, !dbg !1590
  %110 = load i32, ptr %109, align 4, !dbg !1590, !tbaa !1350
  br label %111, !dbg !1589

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %110, %108 ], [ -1, %106 ], !dbg !1591
  call void @llvm.dbg.value(metadata i32 %112, metadata !1536, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %2, metadata !1534, metadata !DIExpression(DW_OP_deref)), !dbg !1592
  %113 = call i32 @xgetgroups(ptr noundef nonnull %0, i32 noundef %112, ptr noundef nonnull %2) #39, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %113, metadata !1537, metadata !DIExpression()), !dbg !1592
  %114 = icmp sgt i32 %113, -1, !dbg !1594
  br i1 %114, label %129, label %119, !dbg !1596

115:                                              ; preds = %104
  %116 = load i32, ptr @egid, align 4, !dbg !1597, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %116, metadata !1536, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %2, metadata !1534, metadata !DIExpression(DW_OP_deref)), !dbg !1592
  %117 = call i32 @xgetgroups(ptr noundef null, i32 noundef %116, ptr noundef nonnull %2) #39, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %117, metadata !1537, metadata !DIExpression()), !dbg !1592
  %118 = icmp sgt i32 %117, -1, !dbg !1594
  br i1 %118, label %129, label %124, !dbg !1596

119:                                              ; preds = %111
  %120 = tail call ptr @__errno_location() #42, !dbg !1598
  %121 = load i32, ptr %120, align 4, !dbg !1598, !tbaa !1070
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #39, !dbg !1598
  %123 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !1598
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %121, ptr noundef %122, ptr noundef %123) #39, !dbg !1598
  br label %128, !dbg !1598

124:                                              ; preds = %115
  %125 = tail call ptr @__errno_location() #42, !dbg !1601
  %126 = load i32, ptr %125, align 4, !dbg !1601, !tbaa !1070
  %127 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #39, !dbg !1601
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %126, ptr noundef %127) #39, !dbg !1601
  br label %128

128:                                              ; preds = %124, %119
  store i8 0, ptr @ok, align 4, !dbg !1602, !tbaa !1306
  br label %181, !dbg !1603

129:                                              ; preds = %115, %111
  %130 = phi i32 [ %117, %115 ], [ %113, %111 ]
  %131 = icmp eq i32 %130, 0, !dbg !1604
  br i1 %131, label %150, label %132, !dbg !1606

132:                                              ; preds = %129
  %133 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.89, i32 noundef 5) #39, !dbg !1607
  %134 = load ptr, ptr @stdout, align 8, !dbg !1607, !tbaa !1001
  %135 = call i32 @fputs_unlocked(ptr noundef %133, ptr noundef %134), !dbg !1607
  call void @llvm.dbg.value(metadata i32 0, metadata !1538, metadata !DIExpression()), !dbg !1608
  %136 = zext i32 %130 to i64, !dbg !1609
  call void @llvm.dbg.value(metadata i64 0, metadata !1538, metadata !DIExpression()), !dbg !1608
  %137 = load ptr, ptr %2, align 8, !dbg !1611, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %137, metadata !1534, metadata !DIExpression()), !dbg !1592
  %138 = load i32, ptr %137, align 4, !dbg !1611, !tbaa !1070
  %139 = zext i32 %138 to i64, !dbg !1611
  %140 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %139) #39, !dbg !1611
  %141 = load ptr, ptr %2, align 8, !dbg !1613, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %141, metadata !1534, metadata !DIExpression()), !dbg !1592
  %142 = load i32, ptr %141, align 4, !dbg !1613, !tbaa !1070
  %143 = call ptr @getgrgid(i32 noundef %142) #39, !dbg !1614
  call void @llvm.dbg.value(metadata ptr %143, metadata !1525, metadata !DIExpression()), !dbg !1540
  %144 = icmp eq ptr %143, null, !dbg !1615
  br i1 %144, label %148, label %145, !dbg !1617

145:                                              ; preds = %132
  %146 = load ptr, ptr %143, align 8, !dbg !1618, !tbaa !1557
  %147 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %146) #39, !dbg !1618
  br label %148, !dbg !1618

148:                                              ; preds = %145, %132
  call void @llvm.dbg.value(metadata i64 1, metadata !1538, metadata !DIExpression()), !dbg !1608
  %149 = icmp eq i32 %130, 1, !dbg !1609
  br i1 %149, label %150, label %152, !dbg !1619

150:                                              ; preds = %178, %148, %129
  %151 = load ptr, ptr %2, align 8, !dbg !1620, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %151, metadata !1534, metadata !DIExpression()), !dbg !1592
  call void @free(ptr noundef %151) #39, !dbg !1621
  br label %181, !dbg !1622

152:                                              ; preds = %148, %178
  %153 = phi i64 [ %179, %178 ], [ 1, %148 ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !1538, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i32 44, metadata !1623, metadata !DIExpression()), !dbg !1628
  %154 = load ptr, ptr @stdout, align 8, !dbg !1631, !tbaa !1001
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 5, !dbg !1631
  %156 = load ptr, ptr %155, align 8, !dbg !1631, !tbaa !1632
  %157 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 6, !dbg !1631
  %158 = load ptr, ptr %157, align 8, !dbg !1631, !tbaa !1633
  %159 = icmp ult ptr %156, %158, !dbg !1631
  br i1 %159, label %162, label %160, !dbg !1631, !prof !1634

160:                                              ; preds = %152
  %161 = call i32 @__overflow(ptr noundef nonnull %154, i32 noundef 44) #39, !dbg !1631
  br label %164, !dbg !1631

162:                                              ; preds = %152
  %163 = getelementptr inbounds i8, ptr %156, i64 1, !dbg !1631
  store ptr %163, ptr %155, align 8, !dbg !1631, !tbaa !1632
  store i8 44, ptr %156, align 1, !dbg !1631, !tbaa !1079
  br label %164, !dbg !1631

164:                                              ; preds = %162, %160
  %165 = load ptr, ptr %2, align 8, !dbg !1611, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %165, metadata !1534, metadata !DIExpression()), !dbg !1592
  %166 = getelementptr inbounds i32, ptr %165, i64 %153, !dbg !1611
  %167 = load i32, ptr %166, align 4, !dbg !1611, !tbaa !1070
  %168 = zext i32 %167 to i64, !dbg !1611
  %169 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %168) #39, !dbg !1611
  %170 = load ptr, ptr %2, align 8, !dbg !1613, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %170, metadata !1534, metadata !DIExpression()), !dbg !1592
  %171 = getelementptr inbounds i32, ptr %170, i64 %153, !dbg !1613
  %172 = load i32, ptr %171, align 4, !dbg !1613, !tbaa !1070
  %173 = call ptr @getgrgid(i32 noundef %172) #39, !dbg !1614
  call void @llvm.dbg.value(metadata ptr %173, metadata !1525, metadata !DIExpression()), !dbg !1540
  %174 = icmp eq ptr %173, null, !dbg !1615
  br i1 %174, label %178, label %175, !dbg !1617

175:                                              ; preds = %164
  %176 = load ptr, ptr %173, align 8, !dbg !1618, !tbaa !1557
  %177 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %176) #39, !dbg !1618
  br label %178, !dbg !1618

178:                                              ; preds = %175, %164
  %179 = add nuw nsw i64 %153, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %179, metadata !1538, metadata !DIExpression()), !dbg !1608
  %180 = icmp eq i64 %179, %136, !dbg !1609
  br i1 %180, label %150, label %152, !dbg !1619, !llvm.loop !1636

181:                                              ; preds = %128, %150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #39, !dbg !1622
  br label %182

182:                                              ; preds = %21, %18, %26, %181, %39
  %183 = load i1, ptr @opt_zero, align 1, !dbg !1639
  br i1 %183, label %184, label %211, !dbg !1641

184:                                              ; preds = %182
  %185 = load i1, ptr @just_group_list, align 1, !dbg !1642
  %186 = load i8, ptr @multiple_users, align 4
  %187 = icmp ne i8 %186, 0
  %188 = select i1 %185, i1 %187, i1 false, !dbg !1643
  br i1 %188, label %189, label %211, !dbg !1643

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 0, metadata !1623, metadata !DIExpression()), !dbg !1644
  %190 = load ptr, ptr @stdout, align 8, !dbg !1647, !tbaa !1001
  %191 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 5, !dbg !1647
  %192 = load ptr, ptr %191, align 8, !dbg !1647, !tbaa !1632
  %193 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 6, !dbg !1647
  %194 = load ptr, ptr %193, align 8, !dbg !1647, !tbaa !1633
  %195 = icmp ult ptr %192, %194, !dbg !1647
  br i1 %195, label %198, label %196, !dbg !1647, !prof !1634

196:                                              ; preds = %189
  %197 = call i32 @__overflow(ptr noundef nonnull %190, i32 noundef 0) #39, !dbg !1647
  br label %200, !dbg !1647

198:                                              ; preds = %189
  %199 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !1647
  store ptr %199, ptr %191, align 8, !dbg !1647, !tbaa !1632
  store i8 0, ptr %192, align 1, !dbg !1647, !tbaa !1079
  br label %200, !dbg !1647

200:                                              ; preds = %196, %198
  call void @llvm.dbg.value(metadata i32 0, metadata !1623, metadata !DIExpression()), !dbg !1648
  %201 = load ptr, ptr @stdout, align 8, !dbg !1650, !tbaa !1001
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1650
  %203 = load ptr, ptr %202, align 8, !dbg !1650, !tbaa !1632
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1650
  %205 = load ptr, ptr %204, align 8, !dbg !1650, !tbaa !1633
  %206 = icmp ult ptr %203, %205, !dbg !1650
  br i1 %206, label %209, label %207, !dbg !1650, !prof !1634

207:                                              ; preds = %200
  %208 = call i32 @__overflow(ptr noundef nonnull %201, i32 noundef 0) #39, !dbg !1650
  br label %224, !dbg !1650

209:                                              ; preds = %200
  %210 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1650
  store ptr %210, ptr %202, align 8, !dbg !1650, !tbaa !1632
  store i8 0, ptr %203, align 1, !dbg !1650, !tbaa !1079
  br label %224, !dbg !1650

211:                                              ; preds = %184, %182
  %212 = phi i32 [ 0, %184 ], [ 10, %182 ], !dbg !1651
  call void @llvm.dbg.value(metadata i32 %212, metadata !1623, metadata !DIExpression()), !dbg !1653
  %213 = load ptr, ptr @stdout, align 8, !dbg !1655, !tbaa !1001
  %214 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 5, !dbg !1655
  %215 = load ptr, ptr %214, align 8, !dbg !1655, !tbaa !1632
  %216 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 6, !dbg !1655
  %217 = load ptr, ptr %216, align 8, !dbg !1655, !tbaa !1633
  %218 = icmp ult ptr %215, %217, !dbg !1655
  br i1 %218, label %221, label %219, !dbg !1655, !prof !1634

219:                                              ; preds = %211
  %220 = call i32 @__overflow(ptr noundef nonnull %213, i32 noundef %212) #39, !dbg !1655
  br label %224, !dbg !1655

221:                                              ; preds = %211
  %222 = trunc i32 %212 to i8, !dbg !1655
  %223 = getelementptr inbounds i8, ptr %215, i64 1, !dbg !1655
  store ptr %223, ptr %214, align 8, !dbg !1655, !tbaa !1632
  store i8 %222, ptr %215, align 1, !dbg !1655, !tbaa !1079
  br label %224, !dbg !1655

224:                                              ; preds = %221, %219, %209, %207
  ret void, !dbg !1656
}

declare !dbg !1657 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1658 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1661 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1664 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1668 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1669 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1672 i32 @getgid() local_unnamed_addr #2

declare !dbg !1673 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

declare !dbg !1676 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) local_unnamed_addr #10 !dbg !1679 {
  %7 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1683, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %1, metadata !1684, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %2, metadata !1685, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %3, metadata !1686, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i1 %4, metadata !1687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1706
  call void @llvm.dbg.value(metadata i8 %5, metadata !1688, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8 1, metadata !1689, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr null, metadata !1690, metadata !DIExpression()), !dbg !1706
  %8 = icmp eq ptr %0, null, !dbg !1707
  br i1 %8, label %12, label %9, !dbg !1709

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #39, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %10, metadata !1690, metadata !DIExpression()), !dbg !1706
  %11 = icmp ne ptr %10, null, !dbg !1712
  br label %12, !dbg !1714

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1706
  call void @llvm.dbg.value(metadata ptr %14, metadata !1690, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8 poison, metadata !1689, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %2, metadata !1715, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i1 %4, metadata !1720, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1737
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1737
  br i1 %4, label %17, label %15, !dbg !1740

15:                                               ; preds = %12
  %16 = zext i32 %2 to i64, !dbg !1741
  br label %26, !dbg !1740

17:                                               ; preds = %12
  %18 = tail call ptr @getgrgid(i32 noundef %2) #39, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %18, metadata !1721, metadata !DIExpression()), !dbg !1737
  %19 = icmp eq ptr %18, null, !dbg !1744
  br i1 %19, label %20, label %23, !dbg !1745

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %21, metadata !1730, metadata !DIExpression()), !dbg !1747
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #39, !dbg !1748
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %22, i64 noundef %21) #39, !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1737
  br label %26, !dbg !1749

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %18, metadata !1721, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1737
  %24 = load ptr, ptr %18, align 8, !dbg !1750, !tbaa !1557
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %24) #39, !dbg !1750
  br label %31, !dbg !1750

26:                                               ; preds = %20, %15
  %27 = phi i64 [ %16, %15 ], [ %21, %20 ], !dbg !1741
  %28 = xor i1 %4, true, !dbg !1737
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1737
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %27) #39, !dbg !1741
  %30 = select i1 %28, i1 %13, i1 false, !dbg !1751
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i1 [ %30, %26 ], [ %13, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1689, metadata !DIExpression()), !dbg !1706
  %33 = icmp eq i32 %3, %2, !dbg !1752
  br i1 %33, label %63, label %34, !dbg !1754

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8 %5, metadata !1755, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1758
  %35 = load ptr, ptr @stdout, align 8, !dbg !1761, !tbaa !1001
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 5, !dbg !1761
  %37 = load ptr, ptr %36, align 8, !dbg !1761, !tbaa !1632
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %35, i64 0, i32 6, !dbg !1761
  %39 = load ptr, ptr %38, align 8, !dbg !1761, !tbaa !1633
  %40 = icmp ult ptr %37, %39, !dbg !1761
  br i1 %40, label %44, label %41, !dbg !1761, !prof !1634

41:                                               ; preds = %34
  %42 = zext i8 %5 to i32, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %42, metadata !1755, metadata !DIExpression()), !dbg !1758
  %43 = tail call i32 @__overflow(ptr noundef nonnull %35, i32 noundef %42) #39, !dbg !1761
  br label %46, !dbg !1761

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1761
  store ptr %45, ptr %36, align 8, !dbg !1761, !tbaa !1632
  store i8 %5, ptr %37, align 1, !dbg !1761, !tbaa !1079
  br label %46, !dbg !1761

46:                                               ; preds = %41, %44
  call void @llvm.dbg.value(metadata i32 %3, metadata !1715, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i1 %4, metadata !1720, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1763
  br i1 %4, label %49, label %47, !dbg !1766

47:                                               ; preds = %46
  %48 = zext i32 %3 to i64, !dbg !1767
  br label %58, !dbg !1766

49:                                               ; preds = %46
  %50 = tail call ptr @getgrgid(i32 noundef %3) #39, !dbg !1768
  call void @llvm.dbg.value(metadata ptr %50, metadata !1721, metadata !DIExpression()), !dbg !1763
  %51 = icmp eq ptr %50, null, !dbg !1769
  br i1 %51, label %52, label %55, !dbg !1770

52:                                               ; preds = %49
  %53 = zext i32 %3 to i64, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %53, metadata !1730, metadata !DIExpression()), !dbg !1772
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #39, !dbg !1773
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %54, i64 noundef %53) #39, !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1763
  br label %58, !dbg !1774

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %50, metadata !1721, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1763
  %56 = load ptr, ptr %50, align 8, !dbg !1775, !tbaa !1557
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %56) #39, !dbg !1775
  br label %63, !dbg !1775

58:                                               ; preds = %52, %47
  %59 = phi i64 [ %48, %47 ], [ %53, %52 ], !dbg !1767
  %60 = xor i1 %4, true, !dbg !1763
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1763
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %59) #39, !dbg !1767
  %62 = select i1 %60, i1 %32, i1 false, !dbg !1776
  br label %63

63:                                               ; preds = %58, %55, %31
  %64 = phi i1 [ %32, %31 ], [ %62, %58 ], [ %32, %55 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1689, metadata !DIExpression()), !dbg !1706
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !1777
  %65 = icmp eq ptr %14, null, !dbg !1778
  br i1 %65, label %69, label %66, !dbg !1778

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.passwd, ptr %14, i64 0, i32 3, !dbg !1779
  %68 = load i32, ptr %67, align 4, !dbg !1779, !tbaa !1350
  br label %69, !dbg !1778

69:                                               ; preds = %63, %66
  %70 = phi i32 [ %68, %66 ], [ %3, %63 ], !dbg !1778
  call void @llvm.dbg.value(metadata ptr %7, metadata !1701, metadata !DIExpression(DW_OP_deref)), !dbg !1780
  %71 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %70, ptr noundef nonnull %7) #39, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %71, metadata !1703, metadata !DIExpression()), !dbg !1780
  %72 = icmp sgt i32 %71, -1, !dbg !1782
  br i1 %72, label %73, label %79, !dbg !1784

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !1704, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 poison, metadata !1689, metadata !DIExpression()), !dbg !1706
  %74 = icmp eq i32 %71, 0, !dbg !1786
  br i1 %74, label %87, label %75, !dbg !1788

75:                                               ; preds = %73
  %76 = zext i8 %5 to i32
  %77 = xor i1 %4, true
  %78 = zext i32 %71 to i64, !dbg !1786
  br label %90, !dbg !1788

79:                                               ; preds = %69
  %80 = tail call ptr @__errno_location() #42, !dbg !1789
  %81 = load i32, ptr %80, align 4, !dbg !1789, !tbaa !1070
  br i1 %8, label %85, label %82, !dbg !1792

82:                                               ; preds = %79
  %83 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !1793
  %84 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !1793
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %83, ptr noundef %84) #39, !dbg !1793
  br label %135, !dbg !1795

85:                                               ; preds = %79
  %86 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1796
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %86) #39, !dbg !1796
  br label %135

87:                                               ; preds = %131, %73
  %88 = phi i1 [ %64, %73 ], [ %132, %131 ]
  %89 = load ptr, ptr %7, align 8, !dbg !1798, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %89, metadata !1701, metadata !DIExpression()), !dbg !1780
  call void @free(ptr noundef %89) #39, !dbg !1799
  br label %135, !dbg !1800

90:                                               ; preds = %75, %131
  %91 = phi i64 [ 0, %75 ], [ %133, %131 ]
  %92 = phi i1 [ %64, %75 ], [ %132, %131 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1704, metadata !DIExpression()), !dbg !1785
  %93 = load ptr, ptr %7, align 8, !dbg !1801, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %93, metadata !1701, metadata !DIExpression()), !dbg !1780
  %94 = getelementptr inbounds i32, ptr %93, i64 %91, !dbg !1801
  %95 = load i32, ptr %94, align 4, !dbg !1801, !tbaa !1070
  %96 = icmp eq i32 %95, %2, !dbg !1803
  %97 = icmp eq i32 %95, %3
  %98 = or i1 %96, %97, !dbg !1804
  br i1 %98, label %131, label %99, !dbg !1804

99:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i8 %5, metadata !1755, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1805
  %100 = load ptr, ptr @stdout, align 8, !dbg !1808, !tbaa !1001
  %101 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 5, !dbg !1808
  %102 = load ptr, ptr %101, align 8, !dbg !1808, !tbaa !1632
  %103 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 6, !dbg !1808
  %104 = load ptr, ptr %103, align 8, !dbg !1808, !tbaa !1633
  %105 = icmp ult ptr %102, %104, !dbg !1808
  br i1 %105, label %108, label %106, !dbg !1808, !prof !1634

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %76, metadata !1755, metadata !DIExpression()), !dbg !1805
  %107 = call i32 @__overflow(ptr noundef nonnull %100, i32 noundef %76) #39, !dbg !1808
  br label %110, !dbg !1808

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1808
  store ptr %109, ptr %101, align 8, !dbg !1808, !tbaa !1632
  store i8 %5, ptr %102, align 1, !dbg !1808, !tbaa !1079
  br label %110, !dbg !1808

110:                                              ; preds = %106, %108
  %111 = load ptr, ptr %7, align 8, !dbg !1809, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %111, metadata !1701, metadata !DIExpression()), !dbg !1780
  %112 = getelementptr inbounds i32, ptr %111, i64 %91, !dbg !1809
  %113 = load i32, ptr %112, align 4, !dbg !1809, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %113, metadata !1715, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i1 %4, metadata !1720, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1811
  br i1 %4, label %116, label %114, !dbg !1813

114:                                              ; preds = %110
  %115 = zext i32 %113 to i64, !dbg !1814
  br label %125, !dbg !1813

116:                                              ; preds = %110
  %117 = call ptr @getgrgid(i32 noundef %113) #39, !dbg !1815
  call void @llvm.dbg.value(metadata ptr %117, metadata !1721, metadata !DIExpression()), !dbg !1811
  %118 = icmp eq ptr %117, null, !dbg !1816
  br i1 %118, label %119, label %122, !dbg !1817

119:                                              ; preds = %116
  %120 = zext i32 %113 to i64, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %120, metadata !1730, metadata !DIExpression()), !dbg !1819
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #39, !dbg !1820
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %121, i64 noundef %120) #39, !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1811
  br label %125, !dbg !1821

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata ptr %117, metadata !1721, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1811
  %123 = load ptr, ptr %117, align 8, !dbg !1822, !tbaa !1557
  %124 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %123) #39, !dbg !1822
  br label %128, !dbg !1822

125:                                              ; preds = %119, %114
  %126 = phi i64 [ %115, %114 ], [ %120, %119 ], !dbg !1814
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1811
  %127 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %126) #39, !dbg !1814
  br label %128

128:                                              ; preds = %122, %125
  %129 = phi i1 [ %77, %125 ], [ true, %122 ]
  %130 = select i1 %129, i1 %92, i1 false, !dbg !1823
  br label %131, !dbg !1823

131:                                              ; preds = %128, %90
  %132 = phi i1 [ %92, %90 ], [ %130, %128 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1689, metadata !DIExpression()), !dbg !1706
  %133 = add nuw nsw i64 %91, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %133, metadata !1704, metadata !DIExpression()), !dbg !1785
  %134 = icmp eq i64 %133, %78, !dbg !1786
  br i1 %134, label %87, label %90, !dbg !1788, !llvm.loop !1825

135:                                              ; preds = %82, %85, %87
  %136 = phi i1 [ false, %82 ], [ false, %85 ], [ %88, %87 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1689, metadata !DIExpression()), !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !1800
  ret i1 %136, !dbg !1827
}

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group(i32 noundef %0, i1 noundef %1) local_unnamed_addr #10 !dbg !1716 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1715, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i1 %1, metadata !1720, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1828
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1729, metadata !DIExpression()), !dbg !1828
  br i1 %1, label %5, label %3, !dbg !1829

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1830
  br label %14, !dbg !1829

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #39, !dbg !1831
  call void @llvm.dbg.value(metadata ptr %6, metadata !1721, metadata !DIExpression()), !dbg !1828
  %7 = icmp eq ptr %6, null, !dbg !1832
  br i1 %7, label %8, label %11, !dbg !1833

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %9, metadata !1730, metadata !DIExpression()), !dbg !1835
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.3, i32 noundef 5) #39, !dbg !1836
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #39, !dbg !1836
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1828
  br label %14, !dbg !1837

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !1721, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1828
  %12 = load ptr, ptr %6, align 8, !dbg !1838, !tbaa !1557
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #39, !dbg !1838
  br label %18, !dbg !1838

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1830
  %16 = xor i1 %1, true, !dbg !1828
  call void @llvm.dbg.value(metadata ptr null, metadata !1721, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 poison, metadata !1729, metadata !DIExpression()), !dbg !1828
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.5, i64 noundef %15) #39, !dbg !1830
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1839
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1840 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1842, metadata !DIExpression()), !dbg !1843
  store ptr %0, ptr @file_name, align 8, !dbg !1844, !tbaa !1001
  ret void, !dbg !1845
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1846 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1850, metadata !DIExpression()), !dbg !1851
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1852, !tbaa !1306
  ret void, !dbg !1853
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1854 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1859, !tbaa !1001
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1860
  %3 = icmp eq i32 %2, 0, !dbg !1861
  br i1 %3, label %22, label %4, !dbg !1862

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1863, !tbaa !1306, !range !1446, !noundef !1055
  %6 = icmp eq i8 %5, 0, !dbg !1863
  br i1 %6, label %11, label %7, !dbg !1864

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1865
  %9 = load i32, ptr %8, align 4, !dbg !1865, !tbaa !1070
  %10 = icmp eq i32 %9, 32, !dbg !1866
  br i1 %10, label %22, label %11, !dbg !1867

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #39, !dbg !1868
  call void @llvm.dbg.value(metadata ptr %12, metadata !1856, metadata !DIExpression()), !dbg !1869
  %13 = load ptr, ptr @file_name, align 8, !dbg !1870, !tbaa !1001
  %14 = icmp eq ptr %13, null, !dbg !1870
  %15 = tail call ptr @__errno_location() #42, !dbg !1872
  %16 = load i32, ptr %15, align 4, !dbg !1872, !tbaa !1070
  br i1 %14, label %19, label %17, !dbg !1873

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1874
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #39, !dbg !1874
  br label %20, !dbg !1874

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #39, !dbg !1875
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1876, !tbaa !1070
  tail call void @_exit(i32 noundef %21) #41, !dbg !1877
  unreachable, !dbg !1877

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1878, !tbaa !1001
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1880
  %25 = icmp eq i32 %24, 0, !dbg !1881
  br i1 %25, label %28, label %26, !dbg !1882

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1883, !tbaa !1070
  tail call void @_exit(i32 noundef %27) #41, !dbg !1884
  unreachable, !dbg !1884

28:                                               ; preds = %22
  ret void, !dbg !1885
}

; Function Attrs: noreturn
declare !dbg !1886 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1887 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1891, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i32 %1, metadata !1892, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr %2, metadata !1893, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1894, metadata !DIExpression()), !dbg !1896
  tail call fastcc void @flush_stdout(), !dbg !1897
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1898, !tbaa !1001
  %7 = icmp eq ptr %6, null, !dbg !1898
  br i1 %7, label %9, label %8, !dbg !1900

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1901
  br label %13, !dbg !1901

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1902, !tbaa !1001
  %11 = tail call ptr @getprogname() #40, !dbg !1902
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %11) #39, !dbg !1902
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1904, !tbaa.struct !1905
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1904
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1904
  ret void, !dbg !1906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1907 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1909, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i32 1, metadata !1911, metadata !DIExpression()), !dbg !1914
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1917
  %2 = icmp slt i32 %1, 0, !dbg !1918
  br i1 %2, label %6, label %3, !dbg !1919

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1920, !tbaa !1001
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1920
  br label %6, !dbg !1920

6:                                                ; preds = %3, %0
  ret void, !dbg !1921
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1922 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1924, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i32 %1, metadata !1925, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata ptr %2, metadata !1926, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1927, metadata !DIExpression()), !dbg !1929
  %7 = load ptr, ptr @stderr, align 8, !dbg !1930, !tbaa !1001
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1931, !noalias !1975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1979
  call void @llvm.dbg.value(metadata ptr %7, metadata !1971, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata ptr %2, metadata !1972, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1973, metadata !DIExpression()), !dbg !1981
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1931, !noalias !1975
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1982, !tbaa !1070
  %10 = add i32 %9, 1, !dbg !1982
  store i32 %10, ptr @error_message_count, align 4, !dbg !1982, !tbaa !1070
  %11 = icmp eq i32 %1, 0, !dbg !1983
  br i1 %11, label %21, label %12, !dbg !1985

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1986, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1996
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1990, metadata !DIExpression()), !dbg !1997
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1998
  call void @llvm.dbg.value(metadata ptr %13, metadata !1989, metadata !DIExpression()), !dbg !1994
  %14 = icmp eq ptr %13, null, !dbg !1999
  br i1 %14, label %15, label %17, !dbg !2001

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #39, !dbg !2002
  call void @llvm.dbg.value(metadata ptr %16, metadata !1989, metadata !DIExpression()), !dbg !1994
  br label %17, !dbg !2003

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1994
  call void @llvm.dbg.value(metadata ptr %18, metadata !1989, metadata !DIExpression()), !dbg !1994
  %19 = load ptr, ptr @stderr, align 8, !dbg !2004, !tbaa !1001
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %18) #39, !dbg !2004
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2005
  br label %21, !dbg !2006

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2007, !tbaa !1001
  call void @llvm.dbg.value(metadata i32 10, metadata !2008, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata ptr %22, metadata !2013, metadata !DIExpression()), !dbg !2014
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2016
  %24 = load ptr, ptr %23, align 8, !dbg !2016, !tbaa !1632
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2016
  %26 = load ptr, ptr %25, align 8, !dbg !2016, !tbaa !1633
  %27 = icmp ult ptr %24, %26, !dbg !2016
  br i1 %27, label %30, label %28, !dbg !2016, !prof !1634

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !2016
  br label %32, !dbg !2016

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2016
  store ptr %31, ptr %23, align 8, !dbg !2016, !tbaa !1632
  store i8 10, ptr %24, align 1, !dbg !2016, !tbaa !1079
  br label %32, !dbg !2016

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2017, !tbaa !1001
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !2017
  %35 = icmp eq i32 %0, 0, !dbg !2018
  br i1 %35, label %37, label %36, !dbg !2020

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !2021
  unreachable, !dbg !2021

37:                                               ; preds = %32
  ret void, !dbg !2022
}

declare !dbg !2023 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2026 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2029 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2033 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2037, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %1, metadata !2038, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %2, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2040, metadata !DIExpression()), !dbg !2043
  call void @llvm.va_start(ptr nonnull %4), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2045, !tbaa.struct !1905
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2045
  call void @llvm.va_end(ptr nonnull %4), !dbg !2046
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !2047
  ret void, !dbg !2047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !519 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !536, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %1, metadata !537, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr %2, metadata !538, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %3, metadata !539, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.declare(metadata ptr %5, metadata !541, metadata !DIExpression()), !dbg !2049
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2050, !tbaa !1070
  %9 = icmp eq i32 %8, 0, !dbg !2050
  br i1 %9, label %24, label %10, !dbg !2052

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2053, !tbaa !1070
  %12 = icmp eq i32 %11, %3, !dbg !2056
  br i1 %12, label %13, label %23, !dbg !2057

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2058, !tbaa !1001
  %15 = icmp eq ptr %14, %2, !dbg !2059
  br i1 %15, label %37, label %16, !dbg !2060

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2061
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2062
  br i1 %19, label %20, label %23, !dbg !2062

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2063
  %22 = icmp eq i32 %21, 0, !dbg !2064
  br i1 %22, label %37, label %23, !dbg !2065

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2066, !tbaa !1001
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2067, !tbaa !1070
  br label %24, !dbg !2068

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2069
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2070, !tbaa !1001
  %26 = icmp eq ptr %25, null, !dbg !2070
  br i1 %26, label %28, label %27, !dbg !2072

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !2073
  br label %32, !dbg !2073

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2074, !tbaa !1001
  %30 = tail call ptr @getprogname() #40, !dbg !2074
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %30) #39, !dbg !2074
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2076, !tbaa !1001
  %34 = icmp eq ptr %2, null, !dbg !2076
  %35 = select i1 %34, ptr @.str.3.52, ptr @.str.2.53, !dbg !2076
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !2076
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2077, !tbaa.struct !1905
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2077
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2077
  br label %37, !dbg !2078

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2078
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2079 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2083, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %1, metadata !2084, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata ptr %2, metadata !2085, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %3, metadata !2086, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata ptr %4, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2090
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2088, metadata !DIExpression()), !dbg !2091
  call void @llvm.va_start(ptr nonnull %6), !dbg !2092
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2093, !tbaa.struct !1905
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2093
  call void @llvm.va_end(ptr nonnull %6), !dbg !2094
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2095
  ret void, !dbg !2095
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2096 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2134, metadata !DIExpression()), !dbg !2135
  tail call void @__fpurge(ptr noundef nonnull %0) #39, !dbg !2136
  ret i32 0, !dbg !2137
}

; Function Attrs: nounwind
declare !dbg !2138 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2142 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2145, !tbaa !1001
  ret ptr %1, !dbg !2146
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2147 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2152
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2153
  call void @llvm.dbg.value(metadata ptr %2, metadata !2150, metadata !DIExpression()), !dbg !2152
  %3 = icmp eq ptr %2, null, !dbg !2154
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2154
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2154
  call void @llvm.dbg.value(metadata ptr %5, metadata !2151, metadata !DIExpression()), !dbg !2152
  %6 = ptrtoint ptr %5 to i64, !dbg !2155
  %7 = ptrtoint ptr %0 to i64, !dbg !2155
  %8 = sub i64 %6, %7, !dbg !2155
  %9 = icmp sgt i64 %8, 6, !dbg !2157
  br i1 %9, label %10, label %19, !dbg !2158

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2159
  call void @llvm.dbg.value(metadata ptr %11, metadata !2160, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !2165, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i64 7, metadata !2166, metadata !DIExpression()), !dbg !2167
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.90, i64 7), !dbg !2169
  %13 = icmp eq i32 %12, 0, !dbg !2170
  br i1 %13, label %14, label %19, !dbg !2171

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2149, metadata !DIExpression()), !dbg !2152
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.91, i64 noundef 3) #40, !dbg !2172
  %16 = icmp eq i32 %15, 0, !dbg !2175
  %17 = select i1 %16, i64 3, i64 0, !dbg !2176
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2176
  br label %19, !dbg !2176

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2152
  call void @llvm.dbg.value(metadata ptr %21, metadata !2151, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %20, metadata !2149, metadata !DIExpression()), !dbg !2152
  store ptr %20, ptr @program_name, align 8, !dbg !2177, !tbaa !1001
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2178, !tbaa !1001
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2179, !tbaa !1001
  ret void, !dbg !2180
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2181 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !578 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !585, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata ptr %1, metadata !586, metadata !DIExpression()), !dbg !2182
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2183
  call void @llvm.dbg.value(metadata ptr %5, metadata !587, metadata !DIExpression()), !dbg !2182
  %6 = icmp eq ptr %5, %0, !dbg !2184
  br i1 %6, label %7, label %14, !dbg !2186

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %4, metadata !593, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %4, metadata !2190, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata ptr %4, metadata !2199, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 0, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i64 8, metadata !2206, metadata !DIExpression()), !dbg !2207
  store i64 0, ptr %4, align 8, !dbg !2209
  call void @llvm.dbg.value(metadata ptr %3, metadata !588, metadata !DIExpression(DW_OP_deref)), !dbg !2182
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2210
  %9 = icmp eq i64 %8, 2, !dbg !2212
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !588, metadata !DIExpression()), !dbg !2182
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2213
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2182
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2214
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2214
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2182
  ret ptr %15, !dbg !2214
}

; Function Attrs: nounwind
declare !dbg !2215 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2221 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2226, metadata !DIExpression()), !dbg !2229
  %2 = tail call ptr @__errno_location() #42, !dbg !2230
  %3 = load i32, ptr %2, align 4, !dbg !2230, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %3, metadata !2227, metadata !DIExpression()), !dbg !2229
  %4 = icmp eq ptr %0, null, !dbg !2231
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2231
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2232
  call void @llvm.dbg.value(metadata ptr %6, metadata !2228, metadata !DIExpression()), !dbg !2229
  store i32 %3, ptr %2, align 4, !dbg !2233, !tbaa !1070
  ret ptr %6, !dbg !2234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2235 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2241, metadata !DIExpression()), !dbg !2242
  %2 = icmp eq ptr %0, null, !dbg !2243
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2243
  %4 = load i32, ptr %3, align 8, !dbg !2244, !tbaa !2245
  ret i32 %4, !dbg !2247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2248 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %1, metadata !2253, metadata !DIExpression()), !dbg !2254
  %3 = icmp eq ptr %0, null, !dbg !2255
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2255
  store i32 %1, ptr %4, align 8, !dbg !2256, !tbaa !2245
  ret void, !dbg !2257
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2258 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2262, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 %1, metadata !2263, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %2, metadata !2264, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 %1, metadata !2265, metadata !DIExpression()), !dbg !2270
  %4 = icmp eq ptr %0, null, !dbg !2271
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2271
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2272
  %7 = lshr i8 %1, 5, !dbg !2273
  %8 = zext i8 %7 to i64, !dbg !2273
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2274
  call void @llvm.dbg.value(metadata ptr %9, metadata !2266, metadata !DIExpression()), !dbg !2270
  %10 = and i8 %1, 31, !dbg !2275
  %11 = zext i8 %10 to i32, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %11, metadata !2268, metadata !DIExpression()), !dbg !2270
  %12 = load i32, ptr %9, align 4, !dbg !2276, !tbaa !1070
  %13 = lshr i32 %12, %11, !dbg !2277
  %14 = and i32 %13, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %14, metadata !2269, metadata !DIExpression()), !dbg !2270
  %15 = xor i32 %13, %2, !dbg !2279
  %16 = and i32 %15, 1, !dbg !2279
  %17 = shl nuw i32 %16, %11, !dbg !2280
  %18 = xor i32 %17, %12, !dbg !2281
  store i32 %18, ptr %9, align 4, !dbg !2281, !tbaa !1070
  ret i32 %14, !dbg !2282
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2283 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2287, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %1, metadata !2288, metadata !DIExpression()), !dbg !2290
  %3 = icmp eq ptr %0, null, !dbg !2291
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2293
  call void @llvm.dbg.value(metadata ptr %4, metadata !2287, metadata !DIExpression()), !dbg !2290
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2294
  %6 = load i32, ptr %5, align 4, !dbg !2294, !tbaa !2295
  call void @llvm.dbg.value(metadata i32 %6, metadata !2289, metadata !DIExpression()), !dbg !2290
  store i32 %1, ptr %5, align 4, !dbg !2296, !tbaa !2295
  ret i32 %6, !dbg !2297
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2298 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2302, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %1, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %2, metadata !2304, metadata !DIExpression()), !dbg !2305
  %4 = icmp eq ptr %0, null, !dbg !2306
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %5, metadata !2302, metadata !DIExpression()), !dbg !2305
  store i32 10, ptr %5, align 8, !dbg !2309, !tbaa !2245
  %6 = icmp ne ptr %1, null, !dbg !2310
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2312
  br i1 %8, label %10, label %9, !dbg !2312

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2313
  unreachable, !dbg !2313

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2314
  store ptr %1, ptr %11, align 8, !dbg !2315, !tbaa !2316
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2317
  store ptr %2, ptr %12, align 8, !dbg !2318, !tbaa !2319
  ret void, !dbg !2320
}

; Function Attrs: noreturn nounwind
declare !dbg !2321 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2322 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2326, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i64 %1, metadata !2327, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata ptr %2, metadata !2328, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i64 %3, metadata !2329, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata ptr %4, metadata !2330, metadata !DIExpression()), !dbg !2334
  %6 = icmp eq ptr %4, null, !dbg !2335
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %7, metadata !2331, metadata !DIExpression()), !dbg !2334
  %8 = tail call ptr @__errno_location() #42, !dbg !2336
  %9 = load i32, ptr %8, align 4, !dbg !2336, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %9, metadata !2332, metadata !DIExpression()), !dbg !2334
  %10 = load i32, ptr %7, align 8, !dbg !2337, !tbaa !2245
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2338
  %12 = load i32, ptr %11, align 4, !dbg !2338, !tbaa !2295
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2339
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2340
  %15 = load ptr, ptr %14, align 8, !dbg !2340, !tbaa !2316
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2341
  %17 = load ptr, ptr %16, align 8, !dbg !2341, !tbaa !2319
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2342
  call void @llvm.dbg.value(metadata i64 %18, metadata !2333, metadata !DIExpression()), !dbg !2334
  store i32 %9, ptr %8, align 4, !dbg !2343, !tbaa !1070
  ret i64 %18, !dbg !2344
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2345 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2351, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %1, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %2, metadata !2353, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %3, metadata !2354, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %4, metadata !2355, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %5, metadata !2356, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %6, metadata !2357, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %7, metadata !2358, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %8, metadata !2359, metadata !DIExpression()), !dbg !2413
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2414
  %17 = icmp eq i64 %16, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i1 %17, metadata !2360, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2413
  call void @llvm.dbg.value(metadata i64 0, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 0, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr null, metadata !2363, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 0, metadata !2364, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2365, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %5, metadata !2366, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 1, metadata !2368, metadata !DIExpression()), !dbg !2413
  %18 = and i32 %5, 2, !dbg !2416
  %19 = icmp ne i32 %18, 0, !dbg !2416
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2416

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2417
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2418
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2419
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2365, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %34, metadata !2364, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %33, metadata !2363, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %32, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 0, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %31, metadata !2354, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %30, metadata !2359, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %29, metadata !2358, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %28, metadata !2355, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.label(metadata !2406), !dbg !2420
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2413
  switch i32 %28, label %101 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %102
    i32 0, label %100
    i32 2, label %95
    i32 4, label %92
    i32 3, label %91
    i32 1, label %93
    i32 10, label %70
    i32 8, label %45
    i32 9, label %45
  ], !dbg !2421

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 5, metadata !2355, metadata !DIExpression()), !dbg !2413
  br label %102, !dbg !2422

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 5, metadata !2355, metadata !DIExpression()), !dbg !2413
  br i1 %36, label %102, label %42, !dbg !2422

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2423
  br i1 %43, label %102, label %44, !dbg !2427

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2423, !tbaa !1079
  br label %102, !dbg !2423

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.104, metadata !691, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %28, metadata !692, metadata !DIExpression()), !dbg !2428
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.11.104, i32 noundef 5) #39, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %46, metadata !693, metadata !DIExpression()), !dbg !2428
  %47 = icmp eq ptr %46, @.str.11.104, !dbg !2433
  br i1 %47, label %48, label %57, !dbg !2435

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2436
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %13, metadata !695, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata ptr %13, metadata !2439, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr %13, metadata !2447, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 8, metadata !2451, metadata !DIExpression()), !dbg !2452
  store i64 0, ptr %13, align 8, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %12, metadata !694, metadata !DIExpression(DW_OP_deref)), !dbg !2428
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2455
  %50 = icmp eq i64 %49, 3, !dbg !2457
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !694, metadata !DIExpression()), !dbg !2428
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2458
  %54 = icmp eq i32 %28, 9, !dbg !2458
  %55 = select i1 %54, ptr @.str.10.106, ptr @.str.12.107, !dbg !2458
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2458
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2459
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2428
  call void @llvm.dbg.value(metadata ptr %58, metadata !2358, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr @.str.12.107, metadata !691, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %28, metadata !692, metadata !DIExpression()), !dbg !2460
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.12.107, i32 noundef 5) #39, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %59, metadata !693, metadata !DIExpression()), !dbg !2460
  %60 = icmp eq ptr %59, @.str.12.107, !dbg !2463
  br i1 %60, label %61, label %70, !dbg !2464

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2465
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %11, metadata !695, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %11, metadata !2439, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata ptr %11, metadata !2447, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 8, metadata !2451, metadata !DIExpression()), !dbg !2470
  store i64 0, ptr %11, align 8, !dbg !2472
  call void @llvm.dbg.value(metadata ptr %10, metadata !694, metadata !DIExpression(DW_OP_deref)), !dbg !2460
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2473
  %63 = icmp eq i64 %62, 3, !dbg !2474
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !694, metadata !DIExpression()), !dbg !2460
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2475
  %67 = icmp eq i32 %28, 9, !dbg !2475
  %68 = select i1 %67, ptr @.str.10.106, ptr @.str.12.107, !dbg !2475
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2475
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2476
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2359, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %71, metadata !2358, metadata !DIExpression()), !dbg !2413
  br i1 %36, label %88, label %73, !dbg !2477

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2370, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 0, metadata !2361, metadata !DIExpression()), !dbg !2413
  %74 = load i8, ptr %71, align 1, !dbg !2479, !tbaa !1079
  %75 = icmp eq i8 %74, 0, !dbg !2481
  br i1 %75, label %88, label %76, !dbg !2481

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2370, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %79, metadata !2361, metadata !DIExpression()), !dbg !2413
  %80 = icmp ult i64 %79, %39, !dbg !2482
  br i1 %80, label %81, label %83, !dbg !2485

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2482
  store i8 %77, ptr %82, align 1, !dbg !2482, !tbaa !1079
  br label %83, !dbg !2482

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %84, metadata !2361, metadata !DIExpression()), !dbg !2413
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2486
  call void @llvm.dbg.value(metadata ptr %85, metadata !2370, metadata !DIExpression()), !dbg !2478
  %86 = load i8, ptr %85, align 1, !dbg !2479, !tbaa !1079
  %87 = icmp eq i8 %86, 0, !dbg !2481
  br i1 %87, label %88, label %76, !dbg !2481, !llvm.loop !2487

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2489
  call void @llvm.dbg.value(metadata i64 %89, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 1, metadata !2365, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %72, metadata !2363, metadata !DIExpression()), !dbg !2413
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %90, metadata !2364, metadata !DIExpression()), !dbg !2413
  br label %102, !dbg !2491

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2365, metadata !DIExpression()), !dbg !2413
  br label %93, !dbg !2492

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2365, metadata !DIExpression()), !dbg !2413
  br i1 %36, label %102, label %96, !dbg !2493

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2365, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 2, metadata !2355, metadata !DIExpression()), !dbg !2413
  br label %102, !dbg !2494

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2365, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 2, metadata !2355, metadata !DIExpression()), !dbg !2413
  br i1 %36, label %102, label %96, !dbg !2494

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2495
  br i1 %98, label %102, label %99, !dbg !2499

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2495, !tbaa !1079
  br label %102, !dbg !2495

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2366, metadata !DIExpression()), !dbg !2413
  br label %102, !dbg !2500

101:                                              ; preds = %27
  call void @abort() #41, !dbg !2501
  unreachable, !dbg !2501

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2489
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.106, %42 ], [ @.str.10.106, %44 ], [ @.str.10.106, %41 ], [ %33, %27 ], [ @.str.12.107, %96 ], [ @.str.12.107, %99 ], [ @.str.12.107, %95 ], [ @.str.10.106, %40 ], [ @.str.12.107, %93 ], [ @.str.12.107, %92 ], !dbg !2413
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2413
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2365, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %108, metadata !2364, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %107, metadata !2363, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %106, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %105, metadata !2359, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %104, metadata !2358, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %103, metadata !2355, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 0, metadata !2375, metadata !DIExpression()), !dbg !2502
  %111 = icmp ne i32 %103, 2
  %112 = and i1 %111, %109
  %113 = icmp ne i64 %108, 0
  %114 = select i1 %112, i1 %113, i1 false
  %115 = icmp ugt i64 %108, 1
  %116 = icmp eq i32 %103, 2
  %117 = and i1 %109, %110
  %118 = select i1 %117, i1 %113, i1 false
  %119 = and i1 %116, %110
  %120 = xor i1 %109, true
  %121 = and i1 %25, %110
  br label %122, !dbg !2503

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2489
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2417
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2504
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %129, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %125, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %124, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %123, metadata !2354, metadata !DIExpression()), !dbg !2413
  %131 = icmp eq i64 %123, -1, !dbg !2505
  br i1 %131, label %132, label %136, !dbg !2506

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2507
  %134 = load i8, ptr %133, align 1, !dbg !2507, !tbaa !1079
  %135 = icmp eq i8 %134, 0, !dbg !2508
  br i1 %135, label %579, label %138, !dbg !2509

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2510
  br i1 %137, label %579, label %138, !dbg !2509

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2511
  br i1 %114, label %139, label %152, !dbg !2512

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2514
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2515
  br i1 %141, label %142, label %144, !dbg !2515

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %143, metadata !2354, metadata !DIExpression()), !dbg !2413
  br label %144, !dbg !2517

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2517
  call void @llvm.dbg.value(metadata i64 %145, metadata !2354, metadata !DIExpression()), !dbg !2413
  %146 = icmp ugt i64 %140, %145, !dbg !2518
  br i1 %146, label %152, label %147, !dbg !2519

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2520
  call void @llvm.dbg.value(metadata ptr %148, metadata !2521, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %107, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %108, metadata !2525, metadata !DIExpression()), !dbg !2526
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2528
  %150 = icmp eq i32 %149, 0, !dbg !2529
  %151 = and i1 %150, %110, !dbg !2530
  br i1 %151, label %630, label %152, !dbg !2530

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2377, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %153, metadata !2354, metadata !DIExpression()), !dbg !2413
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2531
  %156 = load i8, ptr %155, align 1, !dbg !2531, !tbaa !1079
  call void @llvm.dbg.value(metadata i8 %156, metadata !2382, metadata !DIExpression()), !dbg !2511
  switch i8 %156, label %286 [
    i8 0, label %157
    i8 63, label %205
    i8 7, label %251
    i8 8, label %241
    i8 12, label %242
    i8 10, label %249
    i8 13, label %243
    i8 9, label %244
    i8 11, label %245
    i8 92, label %246
    i8 123, label %253
    i8 125, label %253
    i8 35, label %257
    i8 126, label %257
    i8 32, label %259
    i8 33, label %260
    i8 34, label %260
    i8 36, label %260
    i8 38, label %260
    i8 40, label %260
    i8 41, label %260
    i8 42, label %260
    i8 59, label %260
    i8 60, label %260
    i8 61, label %260
    i8 62, label %260
    i8 91, label %260
    i8 94, label %260
    i8 96, label %260
    i8 124, label %260
    i8 39, label %263
    i8 37, label %439
    i8 43, label %439
    i8 44, label %439
    i8 45, label %439
    i8 46, label %439
    i8 47, label %439
    i8 48, label %439
    i8 49, label %439
    i8 50, label %439
    i8 51, label %439
    i8 52, label %439
    i8 53, label %439
    i8 54, label %439
    i8 55, label %439
    i8 56, label %439
    i8 57, label %439
    i8 58, label %439
    i8 65, label %439
    i8 66, label %439
    i8 67, label %439
    i8 68, label %439
    i8 69, label %439
    i8 70, label %439
    i8 71, label %439
    i8 72, label %439
    i8 73, label %439
    i8 74, label %439
    i8 75, label %439
    i8 76, label %439
    i8 77, label %439
    i8 78, label %439
    i8 79, label %439
    i8 80, label %439
    i8 81, label %439
    i8 82, label %439
    i8 83, label %439
    i8 84, label %439
    i8 85, label %439
    i8 86, label %439
    i8 87, label %439
    i8 88, label %439
    i8 89, label %439
    i8 90, label %439
    i8 93, label %439
    i8 95, label %439
    i8 97, label %439
    i8 98, label %439
    i8 99, label %439
    i8 100, label %439
    i8 101, label %439
    i8 102, label %439
    i8 103, label %439
    i8 104, label %439
    i8 105, label %439
    i8 106, label %439
    i8 107, label %439
    i8 108, label %439
    i8 109, label %439
    i8 110, label %439
    i8 111, label %439
    i8 112, label %439
    i8 113, label %439
    i8 114, label %439
    i8 115, label %439
    i8 116, label %439
    i8 117, label %439
    i8 118, label %439
    i8 119, label %439
    i8 120, label %439
    i8 121, label %439
    i8 122, label %439
  ], !dbg !2532

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2533

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2534

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2380, metadata !DIExpression()), !dbg !2511
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2538
  br i1 %160, label %177, label %161, !dbg !2538

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2540
  br i1 %162, label %163, label %165, !dbg !2544

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2540
  store i8 39, ptr %164, align 1, !dbg !2540, !tbaa !1079
  br label %165, !dbg !2540

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %166, metadata !2361, metadata !DIExpression()), !dbg !2413
  %167 = icmp ult i64 %166, %130, !dbg !2545
  br i1 %167, label %168, label %170, !dbg !2548

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2545
  store i8 36, ptr %169, align 1, !dbg !2545, !tbaa !1079
  br label %170, !dbg !2545

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %171, metadata !2361, metadata !DIExpression()), !dbg !2413
  %172 = icmp ult i64 %171, %130, !dbg !2549
  br i1 %172, label %173, label %175, !dbg !2552

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2549
  store i8 39, ptr %174, align 1, !dbg !2549, !tbaa !1079
  br label %175, !dbg !2549

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %176, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 1, metadata !2369, metadata !DIExpression()), !dbg !2413
  br label %177, !dbg !2553

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2413
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %178, metadata !2361, metadata !DIExpression()), !dbg !2413
  %180 = icmp ult i64 %178, %130, !dbg !2554
  br i1 %180, label %181, label %183, !dbg !2557

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2554
  store i8 92, ptr %182, align 1, !dbg !2554, !tbaa !1079
  br label %183, !dbg !2554

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %184, metadata !2361, metadata !DIExpression()), !dbg !2413
  br i1 %111, label %185, label %482, !dbg !2558

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2560
  %187 = icmp ult i64 %186, %153, !dbg !2561
  br i1 %187, label %188, label %439, !dbg !2562

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2563
  %190 = load i8, ptr %189, align 1, !dbg !2563, !tbaa !1079
  %191 = add i8 %190, -48, !dbg !2564
  %192 = icmp ult i8 %191, 10, !dbg !2564
  br i1 %192, label %193, label %439, !dbg !2564

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2565
  br i1 %194, label %195, label %197, !dbg !2569

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2565
  store i8 48, ptr %196, align 1, !dbg !2565, !tbaa !1079
  br label %197, !dbg !2565

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %198, metadata !2361, metadata !DIExpression()), !dbg !2413
  %199 = icmp ult i64 %198, %130, !dbg !2570
  br i1 %199, label %200, label %202, !dbg !2573

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2570
  store i8 48, ptr %201, align 1, !dbg !2570, !tbaa !1079
  br label %202, !dbg !2570

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %203, metadata !2361, metadata !DIExpression()), !dbg !2413
  br label %439, !dbg !2574

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2575

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2576

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2577

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2579

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2581
  %210 = icmp ult i64 %209, %153, !dbg !2582
  br i1 %210, label %211, label %439, !dbg !2583

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2584
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2585
  %214 = load i8, ptr %213, align 1, !dbg !2585, !tbaa !1079
  %215 = icmp eq i8 %214, 63, !dbg !2586
  br i1 %215, label %216, label %439, !dbg !2587

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2588
  %218 = load i8, ptr %217, align 1, !dbg !2588, !tbaa !1079
  switch i8 %218, label %439 [
    i8 33, label %219
    i8 39, label %219
    i8 40, label %219
    i8 41, label %219
    i8 45, label %219
    i8 47, label %219
    i8 60, label %219
    i8 61, label %219
    i8 62, label %219
  ], !dbg !2589

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2590

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %209, metadata !2375, metadata !DIExpression()), !dbg !2502
  %221 = icmp ult i64 %124, %130, !dbg !2592
  br i1 %221, label %222, label %224, !dbg !2595

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2592
  store i8 63, ptr %223, align 1, !dbg !2592, !tbaa !1079
  br label %224, !dbg !2592

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %225, metadata !2361, metadata !DIExpression()), !dbg !2413
  %226 = icmp ult i64 %225, %130, !dbg !2596
  br i1 %226, label %227, label %229, !dbg !2599

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2596
  store i8 34, ptr %228, align 1, !dbg !2596, !tbaa !1079
  br label %229, !dbg !2596

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %230, metadata !2361, metadata !DIExpression()), !dbg !2413
  %231 = icmp ult i64 %230, %130, !dbg !2600
  br i1 %231, label %232, label %234, !dbg !2603

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2600
  store i8 34, ptr %233, align 1, !dbg !2600, !tbaa !1079
  br label %234, !dbg !2600

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %235, metadata !2361, metadata !DIExpression()), !dbg !2413
  %236 = icmp ult i64 %235, %130, !dbg !2604
  br i1 %236, label %237, label %239, !dbg !2607

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2604
  store i8 63, ptr %238, align 1, !dbg !2604, !tbaa !1079
  br label %239, !dbg !2604

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %240, metadata !2361, metadata !DIExpression()), !dbg !2413
  br label %439, !dbg !2608

241:                                              ; preds = %152
  br label %251, !dbg !2609

242:                                              ; preds = %152
  br label %251, !dbg !2610

243:                                              ; preds = %152
  br label %249, !dbg !2611

244:                                              ; preds = %152
  br label %249, !dbg !2612

245:                                              ; preds = %152
  br label %251, !dbg !2613

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2614

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2615

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2618

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2620
  call void @llvm.dbg.label(metadata !2407), !dbg !2621
  br i1 %119, label %621, label %251, !dbg !2622

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2620
  call void @llvm.dbg.label(metadata !2409), !dbg !2624
  br i1 %109, label %493, label %450, !dbg !2625

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2626

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2627, !tbaa !1079
  %256 = icmp eq i8 %255, 0, !dbg !2629
  br i1 %256, label %257, label %439, !dbg !2630

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2631
  br i1 %258, label %259, label %439, !dbg !2633

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2381, metadata !DIExpression()), !dbg !2511
  br label %260, !dbg !2634

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2381, metadata !DIExpression()), !dbg !2511
  br i1 %116, label %262, label %439, !dbg !2635

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2637

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 1, metadata !2381, metadata !DIExpression()), !dbg !2511
  br i1 %116, label %264, label %439, !dbg !2638

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2639

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2642
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2644
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2644
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %270, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %269, metadata !2362, metadata !DIExpression()), !dbg !2413
  %271 = icmp ult i64 %124, %270, !dbg !2645
  br i1 %271, label %272, label %274, !dbg !2648

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2645
  store i8 39, ptr %273, align 1, !dbg !2645, !tbaa !1079
  br label %274, !dbg !2645

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %275, metadata !2361, metadata !DIExpression()), !dbg !2413
  %276 = icmp ult i64 %275, %270, !dbg !2649
  br i1 %276, label %277, label %279, !dbg !2652

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2649
  store i8 92, ptr %278, align 1, !dbg !2649, !tbaa !1079
  br label %279, !dbg !2649

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %280, metadata !2361, metadata !DIExpression()), !dbg !2413
  %281 = icmp ult i64 %280, %270, !dbg !2653
  br i1 %281, label %282, label %284, !dbg !2656

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2653
  store i8 39, ptr %283, align 1, !dbg !2653, !tbaa !1079
  br label %284, !dbg !2653

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %285, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2413
  br label %439, !dbg !2657

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2658

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2383, metadata !DIExpression()), !dbg !2659
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !2660
  %289 = load ptr, ptr %288, align 8, !dbg !2660, !tbaa !1001
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2660
  %292 = load i16, ptr %291, align 2, !dbg !2660, !tbaa !1111
  %293 = and i16 %292, 16384, !dbg !2660
  %294 = icmp ne i16 %293, 0, !dbg !2662
  call void @llvm.dbg.value(metadata i1 %294, metadata !2386, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2659
  br label %337, !dbg !2663

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2664
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2387, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %14, metadata !2439, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %14, metadata !2447, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i64 8, metadata !2451, metadata !DIExpression()), !dbg !2668
  store i64 0, ptr %14, align 8, !dbg !2670
  call void @llvm.dbg.value(metadata i64 0, metadata !2383, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 1, metadata !2386, metadata !DIExpression()), !dbg !2659
  %296 = icmp eq i64 %153, -1, !dbg !2671
  br i1 %296, label %297, label %299, !dbg !2673

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %298, metadata !2354, metadata !DIExpression()), !dbg !2413
  br label %299, !dbg !2675

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2511
  call void @llvm.dbg.value(metadata i64 %300, metadata !2354, metadata !DIExpression()), !dbg !2413
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2676
  %301 = sub i64 %300, %129, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %15, metadata !2390, metadata !DIExpression(DW_OP_deref)), !dbg !2678
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %302, metadata !2394, metadata !DIExpression()), !dbg !2678
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2680

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2383, metadata !DIExpression()), !dbg !2659
  %304 = icmp ugt i64 %300, %129, !dbg !2681
  br i1 %304, label %306, label %332, !dbg !2683

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2386, metadata !DIExpression()), !dbg !2659
  br label %332, !dbg !2684

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2383, metadata !DIExpression()), !dbg !2659
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2686
  %310 = load i8, ptr %309, align 1, !dbg !2686, !tbaa !1079
  %311 = icmp eq i8 %310, 0, !dbg !2683
  br i1 %311, label %332, label %312, !dbg !2687

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %313, metadata !2383, metadata !DIExpression()), !dbg !2659
  %314 = add i64 %313, %129, !dbg !2689
  %315 = icmp eq i64 %313, %301, !dbg !2681
  br i1 %315, label %332, label %306, !dbg !2683, !llvm.loop !2690

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2691
  %319 = and i1 %318, %110, !dbg !2691
  call void @llvm.dbg.value(metadata i64 1, metadata !2395, metadata !DIExpression()), !dbg !2692
  br i1 %319, label %320, label %328, !dbg !2691

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2395, metadata !DIExpression()), !dbg !2692
  %322 = add i64 %321, %129, !dbg !2693
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2695
  %324 = load i8, ptr %323, align 1, !dbg !2695, !tbaa !1079
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2696

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %326, metadata !2395, metadata !DIExpression()), !dbg !2692
  %327 = icmp eq i64 %326, %302, !dbg !2698
  br i1 %327, label %328, label %320, !dbg !2699, !llvm.loop !2700

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2702, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %329, metadata !2390, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 %329, metadata !2704, metadata !DIExpression()), !dbg !2712
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !2714
  %331 = icmp ne i32 %330, 0, !dbg !2715
  call void @llvm.dbg.value(metadata i8 poison, metadata !2386, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %302, metadata !2383, metadata !DIExpression()), !dbg !2659
  br label %332, !dbg !2716

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2386, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %333, metadata !2383, metadata !DIExpression()), !dbg !2659
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2717
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2718
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2386, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 0, metadata !2383, metadata !DIExpression()), !dbg !2659
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2717
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2718
  call void @llvm.dbg.label(metadata !2412), !dbg !2719
  %336 = select i1 %109, i32 4, i32 2, !dbg !2720
  br label %626, !dbg !2720

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2511
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2722
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2386, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %339, metadata !2383, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %338, metadata !2354, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i1 %340, metadata !2381, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2511
  %341 = icmp ult i64 %339, 2, !dbg !2723
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2724
  br i1 %343, label %439, label %344, !dbg !2724

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %345, metadata !2403, metadata !DIExpression()), !dbg !2726
  br label %346, !dbg !2727

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2413
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2502
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2728
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2511
  call void @llvm.dbg.value(metadata i8 %352, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 %351, metadata !2380, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2377, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %349, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %347, metadata !2361, metadata !DIExpression()), !dbg !2413
  br i1 %342, label %397, label %353, !dbg !2729

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2734

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2380, metadata !DIExpression()), !dbg !2511
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2737
  br i1 %355, label %372, label %356, !dbg !2737

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2739
  br i1 %357, label %358, label %360, !dbg !2743

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2739
  store i8 39, ptr %359, align 1, !dbg !2739, !tbaa !1079
  br label %360, !dbg !2739

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %361, metadata !2361, metadata !DIExpression()), !dbg !2413
  %362 = icmp ult i64 %361, %130, !dbg !2744
  br i1 %362, label %363, label %365, !dbg !2747

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2744
  store i8 36, ptr %364, align 1, !dbg !2744, !tbaa !1079
  br label %365, !dbg !2744

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %366, metadata !2361, metadata !DIExpression()), !dbg !2413
  %367 = icmp ult i64 %366, %130, !dbg !2748
  br i1 %367, label %368, label %370, !dbg !2751

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2748
  store i8 39, ptr %369, align 1, !dbg !2748, !tbaa !1079
  br label %370, !dbg !2748

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %371, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 1, metadata !2369, metadata !DIExpression()), !dbg !2413
  br label %372, !dbg !2752

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2413
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %373, metadata !2361, metadata !DIExpression()), !dbg !2413
  %375 = icmp ult i64 %373, %130, !dbg !2753
  br i1 %375, label %376, label %378, !dbg !2756

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2753
  store i8 92, ptr %377, align 1, !dbg !2753, !tbaa !1079
  br label %378, !dbg !2753

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %379, metadata !2361, metadata !DIExpression()), !dbg !2413
  %380 = icmp ult i64 %379, %130, !dbg !2757
  br i1 %380, label %381, label %385, !dbg !2760

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2757
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2757
  store i8 %383, ptr %384, align 1, !dbg !2757, !tbaa !1079
  br label %385, !dbg !2757

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %386, metadata !2361, metadata !DIExpression()), !dbg !2413
  %387 = icmp ult i64 %386, %130, !dbg !2761
  br i1 %387, label %388, label %393, !dbg !2764

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2761
  %391 = or i8 %390, 48, !dbg !2761
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2761
  store i8 %391, ptr %392, align 1, !dbg !2761, !tbaa !1079
  br label %393, !dbg !2761

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %394, metadata !2361, metadata !DIExpression()), !dbg !2413
  %395 = and i8 %352, 7, !dbg !2765
  %396 = or i8 %395, 48, !dbg !2766
  call void @llvm.dbg.value(metadata i8 %396, metadata !2382, metadata !DIExpression()), !dbg !2511
  br label %404, !dbg !2767

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2768

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2769
  br i1 %399, label %400, label %402, !dbg !2774

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2769
  store i8 92, ptr %401, align 1, !dbg !2769, !tbaa !1079
  br label %402, !dbg !2769

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %403, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2511
  br label %404, !dbg !2775

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2413
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2511
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2511
  call void @llvm.dbg.value(metadata i8 %409, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 %408, metadata !2380, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2377, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %405, metadata !2361, metadata !DIExpression()), !dbg !2413
  %410 = add i64 %349, 1, !dbg !2776
  %411 = icmp ugt i64 %345, %410, !dbg !2778
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2779

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2780
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2780
  br i1 %415, label %416, label %427, !dbg !2780

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2783
  br i1 %417, label %418, label %420, !dbg !2787

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2783
  store i8 39, ptr %419, align 1, !dbg !2783, !tbaa !1079
  br label %420, !dbg !2783

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %421, metadata !2361, metadata !DIExpression()), !dbg !2413
  %422 = icmp ult i64 %421, %130, !dbg !2788
  br i1 %422, label %423, label %425, !dbg !2791

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2788
  store i8 39, ptr %424, align 1, !dbg !2788, !tbaa !1079
  br label %425, !dbg !2788

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %426, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2413
  br label %427, !dbg !2792

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2793
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %428, metadata !2361, metadata !DIExpression()), !dbg !2413
  %430 = icmp ult i64 %428, %130, !dbg !2794
  br i1 %430, label %431, label %433, !dbg !2797

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2794
  store i8 %409, ptr %432, align 1, !dbg !2794, !tbaa !1079
  br label %433, !dbg !2794

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %434, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %410, metadata !2375, metadata !DIExpression()), !dbg !2502
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2798
  %436 = load i8, ptr %435, align 1, !dbg !2798, !tbaa !1079
  call void @llvm.dbg.value(metadata i8 %436, metadata !2382, metadata !DIExpression()), !dbg !2511
  br label %346, !dbg !2799, !llvm.loop !2800

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i1 %340, metadata !2381, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2511
  call void @llvm.dbg.value(metadata i8 %408, metadata !2380, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2377, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %349, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %405, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %338, metadata !2354, metadata !DIExpression()), !dbg !2413
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2803
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2413
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2417
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2502
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2511
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %448, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2381, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2380, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2377, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %445, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %442, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %441, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %440, metadata !2354, metadata !DIExpression()), !dbg !2413
  br i1 %112, label %461, label %450, !dbg !2804

450:                                              ; preds = %204, %251, %439
  %451 = phi i64 [ %449, %439 ], [ %130, %251 ], [ %130, %204 ]
  %452 = phi i8 [ %448, %439 ], [ %156, %251 ], [ 0, %204 ]
  %453 = phi i1 [ %447, %439 ], [ false, %251 ], [ false, %204 ]
  %454 = phi i1 [ %446, %439 ], [ false, %251 ], [ false, %204 ]
  %455 = phi i64 [ %445, %439 ], [ %129, %251 ], [ %129, %204 ]
  %456 = phi i1 [ %444, %439 ], [ %128, %251 ], [ %128, %204 ]
  %457 = phi i1 [ %443, %439 ], [ %126, %251 ], [ %126, %204 ]
  %458 = phi i64 [ %442, %439 ], [ %125, %251 ], [ %125, %204 ]
  %459 = phi i64 [ %441, %439 ], [ %124, %251 ], [ %124, %204 ]
  %460 = phi i64 [ %440, %439 ], [ %153, %251 ], [ %153, %204 ]
  br i1 %121, label %462, label %482, !dbg !2806

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2807

462:                                              ; preds = %450, %461
  %463 = phi i64 [ %451, %450 ], [ %449, %461 ]
  %464 = phi i8 [ %452, %450 ], [ %448, %461 ]
  %465 = phi i1 [ %453, %450 ], [ %447, %461 ]
  %466 = phi i1 [ %454, %450 ], [ %446, %461 ]
  %467 = phi i64 [ %455, %450 ], [ %445, %461 ]
  %468 = phi i1 [ %456, %450 ], [ %444, %461 ]
  %469 = phi i1 [ %457, %450 ], [ %443, %461 ]
  %470 = phi i64 [ %458, %450 ], [ %442, %461 ]
  %471 = phi i64 [ %459, %450 ], [ %441, %461 ]
  %472 = phi i64 [ %460, %450 ], [ %440, %461 ]
  %473 = lshr i8 %464, 5, !dbg !2808
  %474 = zext i8 %473 to i64, !dbg !2808
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2809
  %476 = load i32, ptr %475, align 4, !dbg !2809, !tbaa !1070
  %477 = and i8 %464, 31, !dbg !2810
  %478 = zext i8 %477 to i32, !dbg !2810
  %479 = shl nuw i32 1, %478, !dbg !2811
  %480 = and i32 %476, %479, !dbg !2811
  %481 = icmp eq i32 %480, 0, !dbg !2811
  br i1 %481, label %482, label %493, !dbg !2812

482:                                              ; preds = %183, %462, %461, %450
  %483 = phi i64 [ %463, %462 ], [ %449, %461 ], [ %451, %450 ], [ %130, %183 ]
  %484 = phi i8 [ %464, %462 ], [ %448, %461 ], [ %452, %450 ], [ 48, %183 ]
  %485 = phi i1 [ %465, %462 ], [ %447, %461 ], [ %453, %450 ], [ false, %183 ]
  %486 = phi i1 [ %466, %462 ], [ %446, %461 ], [ %454, %450 ], [ true, %183 ]
  %487 = phi i64 [ %467, %462 ], [ %445, %461 ], [ %455, %450 ], [ %129, %183 ]
  %488 = phi i1 [ %468, %462 ], [ %444, %461 ], [ %456, %450 ], [ %179, %183 ]
  %489 = phi i1 [ %469, %462 ], [ %443, %461 ], [ %457, %450 ], [ %126, %183 ]
  %490 = phi i64 [ %470, %462 ], [ %442, %461 ], [ %458, %450 ], [ %125, %183 ]
  %491 = phi i64 [ %471, %462 ], [ %441, %461 ], [ %459, %450 ], [ %184, %183 ]
  %492 = phi i64 [ %472, %462 ], [ %440, %461 ], [ %460, %450 ], [ %153, %183 ]
  br i1 %154, label %493, label %529, !dbg !2813

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2803
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2413
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2417
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2814
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2511
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %501, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2381, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %499, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %496, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %495, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %494, metadata !2354, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.label(metadata !2410), !dbg !2815
  br i1 %110, label %621, label %503, !dbg !2816

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2380, metadata !DIExpression()), !dbg !2511
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2818
  br i1 %504, label %521, label %505, !dbg !2818

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2820
  br i1 %506, label %507, label %509, !dbg !2824

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2820
  store i8 39, ptr %508, align 1, !dbg !2820, !tbaa !1079
  br label %509, !dbg !2820

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %510, metadata !2361, metadata !DIExpression()), !dbg !2413
  %511 = icmp ult i64 %510, %502, !dbg !2825
  br i1 %511, label %512, label %514, !dbg !2828

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2825
  store i8 36, ptr %513, align 1, !dbg !2825, !tbaa !1079
  br label %514, !dbg !2825

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %515, metadata !2361, metadata !DIExpression()), !dbg !2413
  %516 = icmp ult i64 %515, %502, !dbg !2829
  br i1 %516, label %517, label %519, !dbg !2832

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2829
  store i8 39, ptr %518, align 1, !dbg !2829, !tbaa !1079
  br label %519, !dbg !2829

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %520, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 1, metadata !2369, metadata !DIExpression()), !dbg !2413
  br label %521, !dbg !2833

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2511
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %522, metadata !2361, metadata !DIExpression()), !dbg !2413
  %524 = icmp ult i64 %522, %502, !dbg !2834
  br i1 %524, label %525, label %527, !dbg !2837

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2834
  store i8 92, ptr %526, align 1, !dbg !2834, !tbaa !1079
  br label %527, !dbg !2834

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %502, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %501, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2381, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2380, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %499, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %496, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %528, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %494, metadata !2354, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.label(metadata !2411), !dbg !2838
  br label %553, !dbg !2839

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2803
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2413
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2417
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2814
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2842
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %538, metadata !2382, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2381, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 poison, metadata !2380, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %535, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %532, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %531, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %530, metadata !2354, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.label(metadata !2411), !dbg !2838
  %540 = xor i1 %534, true, !dbg !2839
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2839
  br i1 %541, label %553, label %542, !dbg !2839

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2843
  br i1 %543, label %544, label %546, !dbg !2847

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2843
  store i8 39, ptr %545, align 1, !dbg !2843, !tbaa !1079
  br label %546, !dbg !2843

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %547, metadata !2361, metadata !DIExpression()), !dbg !2413
  %548 = icmp ult i64 %547, %539, !dbg !2848
  br i1 %548, label %549, label %551, !dbg !2851

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2848
  store i8 39, ptr %550, align 1, !dbg !2848, !tbaa !1079
  br label %551, !dbg !2848

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %552, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2413
  br label %553, !dbg !2852

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2511
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %561, metadata !2361, metadata !DIExpression()), !dbg !2413
  %563 = icmp ult i64 %561, %554, !dbg !2853
  br i1 %563, label %564, label %566, !dbg !2856

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2853
  store i8 %555, ptr %565, align 1, !dbg !2853, !tbaa !1079
  br label %566, !dbg !2853

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %567, metadata !2361, metadata !DIExpression()), !dbg !2413
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2413
  br label %569, !dbg !2858

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2803
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2413
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2417
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2814
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %576, metadata !2375, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 poison, metadata !2369, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %572, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %571, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %570, metadata !2354, metadata !DIExpression()), !dbg !2413
  %578 = add i64 %576, 1, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %578, metadata !2375, metadata !DIExpression()), !dbg !2502
  br label %122, !dbg !2860, !llvm.loop !2861

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2352, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2368, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 poison, metadata !2367, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %125, metadata !2362, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %124, metadata !2361, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %123, metadata !2354, metadata !DIExpression()), !dbg !2413
  %580 = icmp ne i64 %124, 0, !dbg !2863
  %581 = xor i1 %110, true, !dbg !2865
  %582 = or i1 %580, %581, !dbg !2865
  %583 = or i1 %582, %111, !dbg !2865
  br i1 %583, label %584, label %621, !dbg !2865

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2866
  %586 = xor i1 %126, true, !dbg !2866
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2866
  br i1 %587, label %595, label %588, !dbg !2866

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2868

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2870
  br label %636, !dbg !2872

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2873
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2875
  br i1 %594, label %27, label %595, !dbg !2875

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2876
  %598 = or i1 %597, %596, !dbg !2878
  br i1 %598, label %614, label %599, !dbg !2878

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2363, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %124, metadata !2361, metadata !DIExpression()), !dbg !2413
  %600 = load i8, ptr %107, align 1, !dbg !2879, !tbaa !1079
  %601 = icmp eq i8 %600, 0, !dbg !2882
  br i1 %601, label %614, label %602, !dbg !2882

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2363, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %605, metadata !2361, metadata !DIExpression()), !dbg !2413
  %606 = icmp ult i64 %605, %130, !dbg !2883
  br i1 %606, label %607, label %609, !dbg !2886

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2883
  store i8 %603, ptr %608, align 1, !dbg !2883, !tbaa !1079
  br label %609, !dbg !2883

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %610, metadata !2361, metadata !DIExpression()), !dbg !2413
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2887
  call void @llvm.dbg.value(metadata ptr %611, metadata !2363, metadata !DIExpression()), !dbg !2413
  %612 = load i8, ptr %611, align 1, !dbg !2879, !tbaa !1079
  %613 = icmp eq i8 %612, 0, !dbg !2882
  br i1 %613, label %614, label %602, !dbg !2882, !llvm.loop !2888

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2489
  call void @llvm.dbg.value(metadata i64 %615, metadata !2361, metadata !DIExpression()), !dbg !2413
  %616 = icmp ult i64 %615, %130, !dbg !2890
  br i1 %616, label %617, label %636, !dbg !2892

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2893
  store i8 0, ptr %618, align 1, !dbg !2894, !tbaa !1079
  br label %636, !dbg !2893

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2412), !dbg !2719
  %620 = icmp eq i32 %103, 2, !dbg !2895
  br i1 %620, label %626, label %630, !dbg !2720

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2412), !dbg !2719
  %624 = icmp eq i32 %103, 2, !dbg !2895
  %625 = select i1 %109, i32 4, i32 2, !dbg !2720
  br i1 %624, label %626, label %630, !dbg !2720

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2720

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2355, metadata !DIExpression()), !dbg !2413
  %634 = and i32 %5, -3, !dbg !2896
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2897
  br label %636, !dbg !2898

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2899
}

; Function Attrs: nounwind
declare !dbg !2900 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2903 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2906 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2908 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %2, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %0, metadata !2916, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %1, metadata !2921, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr null, metadata !2922, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %2, metadata !2923, metadata !DIExpression()), !dbg !2929
  %4 = icmp eq ptr %2, null, !dbg !2931
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2931
  call void @llvm.dbg.value(metadata ptr %5, metadata !2924, metadata !DIExpression()), !dbg !2929
  %6 = tail call ptr @__errno_location() #42, !dbg !2932
  %7 = load i32, ptr %6, align 4, !dbg !2932, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %7, metadata !2925, metadata !DIExpression()), !dbg !2929
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2933
  %9 = load i32, ptr %8, align 4, !dbg !2933, !tbaa !2295
  %10 = or i32 %9, 1, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %10, metadata !2926, metadata !DIExpression()), !dbg !2929
  %11 = load i32, ptr %5, align 8, !dbg !2935, !tbaa !2245
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2936
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2937
  %14 = load ptr, ptr %13, align 8, !dbg !2937, !tbaa !2316
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2938
  %16 = load ptr, ptr %15, align 8, !dbg !2938, !tbaa !2319
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2939
  %18 = add i64 %17, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %18, metadata !2927, metadata !DIExpression()), !dbg !2929
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2941
  call void @llvm.dbg.value(metadata ptr %19, metadata !2928, metadata !DIExpression()), !dbg !2929
  %20 = load i32, ptr %5, align 8, !dbg !2942, !tbaa !2245
  %21 = load ptr, ptr %13, align 8, !dbg !2943, !tbaa !2316
  %22 = load ptr, ptr %15, align 8, !dbg !2944, !tbaa !2319
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2945
  store i32 %7, ptr %6, align 4, !dbg !2946, !tbaa !1070
  ret ptr %19, !dbg !2947
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2917 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2916, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2921, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !2948
  %5 = icmp eq ptr %3, null, !dbg !2949
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %6, metadata !2924, metadata !DIExpression()), !dbg !2948
  %7 = tail call ptr @__errno_location() #42, !dbg !2950
  %8 = load i32, ptr %7, align 4, !dbg !2950, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %8, metadata !2925, metadata !DIExpression()), !dbg !2948
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2951
  %10 = load i32, ptr %9, align 4, !dbg !2951, !tbaa !2295
  %11 = icmp eq ptr %2, null, !dbg !2952
  %12 = zext i1 %11 to i32, !dbg !2952
  %13 = or i32 %10, %12, !dbg !2953
  call void @llvm.dbg.value(metadata i32 %13, metadata !2926, metadata !DIExpression()), !dbg !2948
  %14 = load i32, ptr %6, align 8, !dbg !2954, !tbaa !2245
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2955
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2956
  %17 = load ptr, ptr %16, align 8, !dbg !2956, !tbaa !2316
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2957
  %19 = load ptr, ptr %18, align 8, !dbg !2957, !tbaa !2319
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2958
  %21 = add i64 %20, 1, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %21, metadata !2927, metadata !DIExpression()), !dbg !2948
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2960
  call void @llvm.dbg.value(metadata ptr %22, metadata !2928, metadata !DIExpression()), !dbg !2948
  %23 = load i32, ptr %6, align 8, !dbg !2961, !tbaa !2245
  %24 = load ptr, ptr %16, align 8, !dbg !2962, !tbaa !2316
  %25 = load ptr, ptr %18, align 8, !dbg !2963, !tbaa !2319
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2964
  store i32 %8, ptr %7, align 4, !dbg !2965, !tbaa !1070
  br i1 %11, label %28, label %27, !dbg !2966

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2967, !tbaa !2969
  br label %28, !dbg !2970

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2971
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2972 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2977, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %1, metadata !2974, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 1, metadata !2975, metadata !DIExpression()), !dbg !2979
  %2 = load i32, ptr @nslots, align 4, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 1, metadata !2975, metadata !DIExpression()), !dbg !2979
  %3 = icmp sgt i32 %2, 1, !dbg !2980
  br i1 %3, label %4, label %6, !dbg !2982

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2980
  br label %10, !dbg !2982

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2983
  %8 = load ptr, ptr %7, align 8, !dbg !2983, !tbaa !2985
  %9 = icmp eq ptr %8, @slot0, !dbg !2987
  br i1 %9, label %17, label %16, !dbg !2988

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2975, metadata !DIExpression()), !dbg !2979
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2989
  %13 = load ptr, ptr %12, align 8, !dbg !2989, !tbaa !2985
  tail call void @free(ptr noundef %13) #39, !dbg !2990
  %14 = add nuw nsw i64 %11, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %14, metadata !2975, metadata !DIExpression()), !dbg !2979
  %15 = icmp eq i64 %14, %5, !dbg !2980
  br i1 %15, label %6, label %10, !dbg !2982, !llvm.loop !2992

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2994
  store i64 256, ptr @slotvec0, align 8, !dbg !2996, !tbaa !2997
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2998, !tbaa !2985
  br label %17, !dbg !2999

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3000
  br i1 %18, label %20, label %19, !dbg !3002

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3003
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3005, !tbaa !1001
  br label %20, !dbg !3006

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3007, !tbaa !1070
  ret void, !dbg !3008
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3011, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !3013
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3014
  ret ptr %3, !dbg !3015
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3016 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3020, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %1, metadata !3021, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i64 %2, metadata !3022, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %3, metadata !3023, metadata !DIExpression()), !dbg !3036
  %6 = tail call ptr @__errno_location() #42, !dbg !3037
  %7 = load i32, ptr %6, align 4, !dbg !3037, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %7, metadata !3024, metadata !DIExpression()), !dbg !3036
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3038, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %8, metadata !3025, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3026, metadata !DIExpression()), !dbg !3036
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3039
  br i1 %9, label %10, label %11, !dbg !3039

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3041
  unreachable, !dbg !3041

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3042, !tbaa !1070
  %13 = icmp sgt i32 %12, %0, !dbg !3043
  br i1 %13, label %32, label %14, !dbg !3044

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3045
  call void @llvm.dbg.value(metadata i1 %15, metadata !3027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3046
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3047
  %16 = sext i32 %12 to i64, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %16, metadata !3030, metadata !DIExpression()), !dbg !3046
  store i64 %16, ptr %5, align 8, !dbg !3049, !tbaa !2969
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3050
  %18 = add nuw nsw i32 %0, 1, !dbg !3051
  %19 = sub i32 %18, %12, !dbg !3052
  %20 = sext i32 %19 to i64, !dbg !3053
  call void @llvm.dbg.value(metadata ptr %5, metadata !3030, metadata !DIExpression(DW_OP_deref)), !dbg !3046
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %21, metadata !3025, metadata !DIExpression()), !dbg !3036
  store ptr %21, ptr @slotvec, align 8, !dbg !3055, !tbaa !1001
  br i1 %15, label %22, label %23, !dbg !3056

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3057, !tbaa.struct !3059
  br label %23, !dbg !3060

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3061, !tbaa !1070
  %25 = sext i32 %24 to i64, !dbg !3062
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3062
  %27 = load i64, ptr %5, align 8, !dbg !3063, !tbaa !2969
  call void @llvm.dbg.value(metadata i64 %27, metadata !3030, metadata !DIExpression()), !dbg !3046
  %28 = sub nsw i64 %27, %25, !dbg !3064
  %29 = shl i64 %28, 4, !dbg !3065
  call void @llvm.dbg.value(metadata ptr %26, metadata !2447, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %29, metadata !2451, metadata !DIExpression()), !dbg !3066
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3068
  %30 = load i64, ptr %5, align 8, !dbg !3069, !tbaa !2969
  call void @llvm.dbg.value(metadata i64 %30, metadata !3030, metadata !DIExpression()), !dbg !3046
  %31 = trunc i64 %30 to i32, !dbg !3069
  store i32 %31, ptr @nslots, align 4, !dbg !3070, !tbaa !1070
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3071
  br label %32, !dbg !3072

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3036
  call void @llvm.dbg.value(metadata ptr %33, metadata !3025, metadata !DIExpression()), !dbg !3036
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3073
  %36 = load i64, ptr %35, align 8, !dbg !3074, !tbaa !2997
  call void @llvm.dbg.value(metadata i64 %36, metadata !3031, metadata !DIExpression()), !dbg !3075
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3076
  %38 = load ptr, ptr %37, align 8, !dbg !3076, !tbaa !2985
  call void @llvm.dbg.value(metadata ptr %38, metadata !3033, metadata !DIExpression()), !dbg !3075
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3077
  %40 = load i32, ptr %39, align 4, !dbg !3077, !tbaa !2295
  %41 = or i32 %40, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %41, metadata !3034, metadata !DIExpression()), !dbg !3075
  %42 = load i32, ptr %3, align 8, !dbg !3079, !tbaa !2245
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3080
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3081
  %45 = load ptr, ptr %44, align 8, !dbg !3081, !tbaa !2316
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3082
  %47 = load ptr, ptr %46, align 8, !dbg !3082, !tbaa !2319
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %48, metadata !3035, metadata !DIExpression()), !dbg !3075
  %49 = icmp ugt i64 %36, %48, !dbg !3084
  br i1 %49, label %60, label %50, !dbg !3086

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %51, metadata !3031, metadata !DIExpression()), !dbg !3075
  store i64 %51, ptr %35, align 8, !dbg !3089, !tbaa !2997
  %52 = icmp eq ptr %38, @slot0, !dbg !3090
  br i1 %52, label %54, label %53, !dbg !3092

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3093
  br label %54, !dbg !3093

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3094
  call void @llvm.dbg.value(metadata ptr %55, metadata !3033, metadata !DIExpression()), !dbg !3075
  store ptr %55, ptr %37, align 8, !dbg !3095, !tbaa !2985
  %56 = load i32, ptr %3, align 8, !dbg !3096, !tbaa !2245
  %57 = load ptr, ptr %44, align 8, !dbg !3097, !tbaa !2316
  %58 = load ptr, ptr %46, align 8, !dbg !3098, !tbaa !2319
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3099
  br label %60, !dbg !3100

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3075
  call void @llvm.dbg.value(metadata ptr %61, metadata !3033, metadata !DIExpression()), !dbg !3075
  store i32 %7, ptr %6, align 4, !dbg !3101, !tbaa !1070
  ret ptr %61, !dbg !3102
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3107, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata ptr %1, metadata !3108, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %2, metadata !3109, metadata !DIExpression()), !dbg !3110
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3111
  ret ptr %4, !dbg !3112
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3113 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3115, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 0, metadata !3011, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !3117
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3119
  ret ptr %2, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3121 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3107, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %0, metadata !3108, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()), !dbg !3128
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3130
  ret ptr %3, !dbg !3131
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3132 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3136, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 %1, metadata !3137, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %2, metadata !3138, metadata !DIExpression()), !dbg !3140
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3141
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3139, metadata !DIExpression()), !dbg !3142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3143), !dbg !3146
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3152, metadata !DIExpression()), !dbg !3155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3155, !alias.scope !3143
  %5 = icmp eq i32 %1, 10, !dbg !3156
  br i1 %5, label %6, label %7, !dbg !3158

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3159, !noalias !3143
  unreachable, !dbg !3159

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3160, !tbaa !2245, !alias.scope !3143
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3161
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3162
  ret ptr %8, !dbg !3163
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3164 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %1, metadata !3169, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %2, metadata !3170, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %3, metadata !3171, metadata !DIExpression()), !dbg !3173
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3172, metadata !DIExpression()), !dbg !3175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3152, metadata !DIExpression()), !dbg !3182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3182, !alias.scope !3176
  %6 = icmp eq i32 %1, 10, !dbg !3183
  br i1 %6, label %7, label %8, !dbg !3184

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3185, !noalias !3176
  unreachable, !dbg !3185

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3186, !tbaa !2245, !alias.scope !3176
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3187
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3188
  ret ptr %9, !dbg !3189
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3190 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3136, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i32 %0, metadata !3137, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr %1, metadata !3138, metadata !DIExpression()), !dbg !3197
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3199
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3139, metadata !DIExpression()), !dbg !3200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3201), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3152, metadata !DIExpression()), !dbg !3207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3207, !alias.scope !3201
  %4 = icmp eq i32 %0, 10, !dbg !3208
  br i1 %4, label %5, label %6, !dbg !3209

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3210, !noalias !3201
  unreachable, !dbg !3210

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3211, !tbaa !2245, !alias.scope !3201
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3212
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3213
  ret ptr %7, !dbg !3214
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3215 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata ptr %1, metadata !3220, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %2, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %0, metadata !3169, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %1, metadata !3170, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %2, metadata !3171, metadata !DIExpression()), !dbg !3223
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3172, metadata !DIExpression()), !dbg !3226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3227), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3152, metadata !DIExpression()), !dbg !3233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3233, !alias.scope !3227
  %5 = icmp eq i32 %0, 10, !dbg !3234
  br i1 %5, label %6, label %7, !dbg !3235

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3236, !noalias !3227
  unreachable, !dbg !3236

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3237, !tbaa !2245, !alias.scope !3227
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3238
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3239
  ret ptr %8, !dbg !3240
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3241 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8 %2, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3250
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3252, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %4, metadata !2262, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 %2, metadata !2263, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 1, metadata !2264, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 %2, metadata !2265, metadata !DIExpression()), !dbg !3254
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3256
  %6 = lshr i8 %2, 5, !dbg !3257
  %7 = zext i8 %6 to i64, !dbg !3257
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %8, metadata !2266, metadata !DIExpression()), !dbg !3254
  %9 = and i8 %2, 31, !dbg !3259
  %10 = zext i8 %9 to i32, !dbg !3259
  call void @llvm.dbg.value(metadata i32 %10, metadata !2268, metadata !DIExpression()), !dbg !3254
  %11 = load i32, ptr %8, align 4, !dbg !3260, !tbaa !1070
  %12 = lshr i32 %11, %10, !dbg !3261
  call void @llvm.dbg.value(metadata i32 %12, metadata !2269, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3254
  %13 = and i32 %12, 1, !dbg !3262
  %14 = xor i32 %13, 1, !dbg !3262
  %15 = shl nuw i32 %14, %10, !dbg !3263
  %16 = xor i32 %15, %11, !dbg !3264
  store i32 %16, ptr %8, align 4, !dbg !3264, !tbaa !1070
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3265
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3266
  ret ptr %17, !dbg !3267
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3268 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 %1, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 -1, metadata !3246, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %1, metadata !3247, metadata !DIExpression()), !dbg !3275
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3277
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3279, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %3, metadata !2262, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %1, metadata !2263, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 1, metadata !2264, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 %1, metadata !2265, metadata !DIExpression()), !dbg !3280
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3282
  %5 = lshr i8 %1, 5, !dbg !3283
  %6 = zext i8 %5 to i64, !dbg !3283
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %7, metadata !2266, metadata !DIExpression()), !dbg !3280
  %8 = and i8 %1, 31, !dbg !3285
  %9 = zext i8 %8 to i32, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %9, metadata !2268, metadata !DIExpression()), !dbg !3280
  %10 = load i32, ptr %7, align 4, !dbg !3286, !tbaa !1070
  %11 = lshr i32 %10, %9, !dbg !3287
  call void @llvm.dbg.value(metadata i32 %11, metadata !2269, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3280
  %12 = and i32 %11, 1, !dbg !3288
  %13 = xor i32 %12, 1, !dbg !3288
  %14 = shl nuw i32 %13, %9, !dbg !3289
  %15 = xor i32 %14, %10, !dbg !3290
  store i32 %15, ptr %7, align 4, !dbg !3290, !tbaa !1070
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3291
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3292
  ret ptr %16, !dbg !3293
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3294 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 58, metadata !3273, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 -1, metadata !3246, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i8 58, metadata !3247, metadata !DIExpression()), !dbg !3300
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3302
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3248, metadata !DIExpression()), !dbg !3303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3304, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %2, metadata !2262, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 58, metadata !2263, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 1, metadata !2264, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8 58, metadata !2265, metadata !DIExpression()), !dbg !3305
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3307
  call void @llvm.dbg.value(metadata ptr %3, metadata !2266, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 26, metadata !2268, metadata !DIExpression()), !dbg !3305
  %4 = load i32, ptr %3, align 4, !dbg !3308, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %4, metadata !2269, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3305
  %5 = or i32 %4, 67108864, !dbg !3309
  store i32 %5, ptr %3, align 4, !dbg !3309, !tbaa !1070
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3310
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3311
  ret ptr %6, !dbg !3312
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3313 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %1, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3246, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i8 58, metadata !3247, metadata !DIExpression()), !dbg !3318
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3320
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3248, metadata !DIExpression()), !dbg !3321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3322, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %3, metadata !2262, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 58, metadata !2263, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 1, metadata !2264, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 58, metadata !2265, metadata !DIExpression()), !dbg !3323
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3325
  call void @llvm.dbg.value(metadata ptr %4, metadata !2266, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 26, metadata !2268, metadata !DIExpression()), !dbg !3323
  %5 = load i32, ptr %4, align 4, !dbg !3326, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %5, metadata !2269, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3323
  %6 = or i32 %5, 67108864, !dbg !3327
  store i32 %6, ptr %4, align 4, !dbg !3327, !tbaa !1070
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3328
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3329
  ret ptr %7, !dbg !3330
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3331 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3152, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %0, metadata !3333, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %1, metadata !3334, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3339
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3340
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3336, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3342
  %5 = icmp eq i32 %1, 10, !dbg !3343
  br i1 %5, label %6, label %7, !dbg !3344

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3345, !noalias !3346
  unreachable, !dbg !3345

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3342
  store i32 %1, ptr %4, align 8, !dbg !3349, !tbaa.struct !3253
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3349
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %4, metadata !2262, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 58, metadata !2263, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 1, metadata !2264, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 58, metadata !2265, metadata !DIExpression()), !dbg !3350
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3352
  call void @llvm.dbg.value(metadata ptr %9, metadata !2266, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 26, metadata !2268, metadata !DIExpression()), !dbg !3350
  %10 = load i32, ptr %9, align 4, !dbg !3353, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %10, metadata !2269, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3350
  %11 = or i32 %10, 67108864, !dbg !3354
  store i32 %11, ptr %9, align 4, !dbg !3354, !tbaa !1070
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3355
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3356
  ret ptr %12, !dbg !3357
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3358 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata ptr %1, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata ptr %2, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata ptr %3, metadata !3365, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %1, metadata !3372, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %3, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 -1, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3379
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3376, metadata !DIExpression()), !dbg !3380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3381, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %5, metadata !2302, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata ptr %1, metadata !2303, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata ptr %2, metadata !2304, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata ptr %5, metadata !2302, metadata !DIExpression()), !dbg !3382
  store i32 10, ptr %5, align 8, !dbg !3384, !tbaa !2245
  %6 = icmp ne ptr %1, null, !dbg !3385
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3386
  br i1 %8, label %10, label %9, !dbg !3386

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3387
  unreachable, !dbg !3387

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3388
  store ptr %1, ptr %11, align 8, !dbg !3389, !tbaa !2316
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3390
  store ptr %2, ptr %12, align 8, !dbg !3391, !tbaa !2319
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3392
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3393
  ret ptr %13, !dbg !3394
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3368 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %1, metadata !3372, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %3, metadata !3374, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %4, metadata !3375, metadata !DIExpression()), !dbg !3395
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3396
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3376, metadata !DIExpression()), !dbg !3397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3398, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %6, metadata !2302, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %1, metadata !2303, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %2, metadata !2304, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %6, metadata !2302, metadata !DIExpression()), !dbg !3399
  store i32 10, ptr %6, align 8, !dbg !3401, !tbaa !2245
  %7 = icmp ne ptr %1, null, !dbg !3402
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3403
  br i1 %9, label %11, label %10, !dbg !3403

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3404
  unreachable, !dbg !3404

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3405
  store ptr %1, ptr %12, align 8, !dbg !3406, !tbaa !2316
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3407
  store ptr %2, ptr %13, align 8, !dbg !3408, !tbaa !2319
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3409
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3410
  ret ptr %14, !dbg !3411
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3412 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3416, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata ptr %1, metadata !3417, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata ptr %2, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i32 0, metadata !3362, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %0, metadata !3363, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %1, metadata !3364, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata ptr %2, metadata !3365, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %0, metadata !3372, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %1, metadata !3373, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %2, metadata !3374, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 -1, metadata !3375, metadata !DIExpression()), !dbg !3422
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3424
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3376, metadata !DIExpression()), !dbg !3425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3426, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %4, metadata !2302, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %0, metadata !2303, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %1, metadata !2304, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %4, metadata !2302, metadata !DIExpression()), !dbg !3427
  store i32 10, ptr %4, align 8, !dbg !3429, !tbaa !2245
  %5 = icmp ne ptr %0, null, !dbg !3430
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3431
  br i1 %7, label %9, label %8, !dbg !3431

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3432
  unreachable, !dbg !3432

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3433
  store ptr %0, ptr %10, align 8, !dbg !3434, !tbaa !2316
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3435
  store ptr %1, ptr %11, align 8, !dbg !3436, !tbaa !2319
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3437
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3438
  ret ptr %12, !dbg !3439
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3440 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata ptr %1, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata ptr %2, metadata !3446, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 %3, metadata !3447, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %0, metadata !3372, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %1, metadata !3373, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %2, metadata !3374, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %3, metadata !3375, metadata !DIExpression()), !dbg !3449
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3451
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3376, metadata !DIExpression()), !dbg !3452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3453, !tbaa.struct !3253
  call void @llvm.dbg.value(metadata ptr %5, metadata !2302, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !2303, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %1, metadata !2304, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %5, metadata !2302, metadata !DIExpression()), !dbg !3454
  store i32 10, ptr %5, align 8, !dbg !3456, !tbaa !2245
  %6 = icmp ne ptr %0, null, !dbg !3457
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3458
  br i1 %8, label %10, label %9, !dbg !3458

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3459
  unreachable, !dbg !3459

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3460
  store ptr %0, ptr %11, align 8, !dbg !3461, !tbaa !2316
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3462
  store ptr %1, ptr %12, align 8, !dbg !3463, !tbaa !2319
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3464
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3465
  ret ptr %13, !dbg !3466
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3467 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %1, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %2, metadata !3473, metadata !DIExpression()), !dbg !3474
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3475
  ret ptr %4, !dbg !3476
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3481, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3484
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3486
  ret ptr %3, !dbg !3487
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3488 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %1, metadata !3493, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %0, metadata !3471, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %1, metadata !3472, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 -1, metadata !3473, metadata !DIExpression()), !dbg !3495
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3497
  ret ptr %3, !dbg !3498
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 0, metadata !3492, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %0, metadata !3493, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 -1, metadata !3473, metadata !DIExpression()), !dbg !3507
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3509
  ret ptr %2, !dbg !3510
}

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec_warn(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #10 !dbg !3511 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3517, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %1, metadata !3518, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %2, metadata !3519, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %3, metadata !3520, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %4, metadata !3521, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %5, metadata !3522, metadata !DIExpression()), !dbg !3529
  %7 = icmp eq ptr %2, null, !dbg !3530
  br i1 %7, label %10, label %8, !dbg !3530

8:                                                ; preds = %6
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #40, !dbg !3531
  br label %10, !dbg !3530

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %9, %8 ], [ null, %6 ], !dbg !3530
  call void @llvm.dbg.value(metadata ptr %11, metadata !3523, metadata !DIExpression()), !dbg !3529
  %12 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %12, metadata !3524, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i8 0, metadata !3525, metadata !DIExpression()), !dbg !3529
  %13 = icmp ne ptr %2, null, !dbg !3533
  %14 = icmp eq ptr %11, null
  %15 = and i1 %13, %14, !dbg !3534
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false, !dbg !3534
  br i1 %17, label %18, label %27, !dbg !3534

18:                                               ; preds = %10
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #40, !dbg !3535
  call void @llvm.dbg.value(metadata ptr %19, metadata !3526, metadata !DIExpression()), !dbg !3536
  %20 = icmp eq ptr %19, null, !dbg !3537
  br i1 %20, label %27, label %21, !dbg !3539

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3540
  %23 = icmp eq ptr %22, null, !dbg !3540
  br i1 %23, label %24, label %27, !dbg !3541

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8 1, metadata !3525, metadata !DIExpression()), !dbg !3529
  %25 = icmp eq ptr %5, null, !dbg !3542
  %26 = select i1 %25, ptr null, ptr @.str.112, !dbg !3542
  call void @llvm.dbg.value(metadata ptr %26, metadata !3524, metadata !DIExpression()), !dbg !3529
  br label %27, !dbg !3544

27:                                               ; preds = %18, %21, %24, %10
  %28 = phi i1 [ false, %10 ], [ false, %21 ], [ true, %24 ], [ false, %18 ]
  %29 = phi ptr [ %12, %10 ], [ %12, %21 ], [ %26, %24 ], [ %12, %18 ], !dbg !3545
  call void @llvm.dbg.value(metadata ptr %29, metadata !3524, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i8 poison, metadata !3525, metadata !DIExpression()), !dbg !3529
  %30 = icmp eq ptr %5, null, !dbg !3546
  br i1 %30, label %33, label %31, !dbg !3548

31:                                               ; preds = %27
  %32 = zext i1 %28 to i8, !dbg !3549
  store i8 %32, ptr %5, align 1, !dbg !3549, !tbaa !1306
  br label %33, !dbg !3550

33:                                               ; preds = %31, %27
  ret ptr %29, !dbg !3551
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #10 !dbg !3552 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 1
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %1, metadata !3557, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %2, metadata !3558, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %3, metadata !3559, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %4, metadata !3560, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %5, metadata !3561, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr null, metadata !3562, metadata !DIExpression()), !dbg !3608
  %10 = icmp eq ptr %4, null, !dbg !3609
  br i1 %10, label %12, label %11, !dbg !3611

11:                                               ; preds = %6
  store ptr null, ptr %4, align 8, !dbg !3612, !tbaa !1001
  br label %12, !dbg !3613

12:                                               ; preds = %11, %6
  %13 = icmp eq ptr %5, null, !dbg !3614
  br i1 %13, label %15, label %14, !dbg !3616

14:                                               ; preds = %12
  store ptr null, ptr %5, align 8, !dbg !3617, !tbaa !1001
  br label %15, !dbg !3618

15:                                               ; preds = %14, %12
  call void @llvm.dbg.value(metadata ptr null, metadata !3563, metadata !DIExpression()), !dbg !3608
  %16 = icmp eq ptr %1, null, !dbg !3619
  br i1 %16, label %17, label %22, !dbg !3620

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !dbg !3621, !tbaa !1079
  %19 = icmp eq i8 %18, 0, !dbg !3621
  br i1 %19, label %37, label %20, !dbg !3624

20:                                               ; preds = %17
  %21 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #39, !dbg !3625
  call void @llvm.dbg.value(metadata ptr %21, metadata !3563, metadata !DIExpression()), !dbg !3608
  br label %37, !dbg !3626

22:                                               ; preds = %15
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !3564, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3627
  %23 = icmp eq ptr %1, %0, !dbg !3628
  br i1 %23, label %31, label %24, !dbg !3630

24:                                               ; preds = %22
  %25 = ptrtoint ptr %0 to i64, !dbg !3631
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %25), metadata !3564, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3627
  %26 = ptrtoint ptr %1 to i64, !dbg !3631
  call void @llvm.dbg.value(metadata !DIArgList(i64 %26, ptr %0), metadata !3564, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3627
  %27 = sub i64 %26, %25, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %27, metadata !3564, metadata !DIExpression()), !dbg !3627
  %28 = add nsw i64 %27, 1, !dbg !3632
  %29 = tail call noalias nonnull ptr @ximemdup(ptr noundef %0, i64 noundef %28) #45, !dbg !3634
  call void @llvm.dbg.value(metadata ptr %29, metadata !3563, metadata !DIExpression()), !dbg !3608
  %30 = getelementptr inbounds i8, ptr %29, i64 %27, !dbg !3635
  store i8 0, ptr %30, align 1, !dbg !3636, !tbaa !1079
  br label %31, !dbg !3637

31:                                               ; preds = %24, %22
  %32 = phi ptr [ %29, %24 ], [ null, %22 ], !dbg !3608
  call void @llvm.dbg.value(metadata ptr %32, metadata !3563, metadata !DIExpression()), !dbg !3608
  %33 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !3638
  %34 = load i8, ptr %33, align 1, !dbg !3639, !tbaa !1079
  %35 = icmp eq i8 %34, 0, !dbg !3640
  %36 = select i1 %35, ptr null, ptr %33, !dbg !3641
  br label %37, !dbg !3641

37:                                               ; preds = %20, %17, %31
  %38 = phi ptr [ %32, %31 ], [ null, %17 ], [ %21, %20 ]
  %39 = phi ptr [ %36, %31 ], [ null, %17 ], [ null, %20 ], !dbg !3641
  call void @llvm.dbg.value(metadata ptr %39, metadata !3567, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr null, metadata !3568, metadata !DIExpression()), !dbg !3608
  %40 = load i32, ptr %2, align 4, !dbg !3642, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %40, metadata !3569, metadata !DIExpression()), !dbg !3608
  %41 = icmp eq ptr %3, null, !dbg !3643
  br i1 %41, label %44, label %42, !dbg !3643

42:                                               ; preds = %37
  %43 = load i32, ptr %3, align 4, !dbg !3644, !tbaa !1070
  br label %44, !dbg !3643

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %37 ], !dbg !3643
  call void @llvm.dbg.value(metadata i32 %45, metadata !3570, metadata !DIExpression()), !dbg !3608
  %46 = icmp eq ptr %38, null, !dbg !3645
  br i1 %46, label %93, label %47, !dbg !3646

47:                                               ; preds = %44
  %48 = load i8, ptr %38, align 1, !dbg !3647, !tbaa !1079
  %49 = icmp eq i8 %48, 43, !dbg !3648
  br i1 %49, label %53, label %50, !dbg !3647

50:                                               ; preds = %47
  %51 = tail call ptr @getpwnam(ptr noundef nonnull %38), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %51, metadata !3571, metadata !DIExpression()), !dbg !3650
  %52 = icmp eq ptr %51, null, !dbg !3651
  br i1 %52, label %53, label %68, !dbg !3652

53:                                               ; preds = %47, %50
  call void @llvm.dbg.value(metadata ptr null, metadata !3560, metadata !DIExpression()), !dbg !3608
  %54 = icmp ne ptr %1, null, !dbg !3653
  %55 = icmp eq ptr %39, null, !dbg !3654
  %56 = and i1 %54, %55, !dbg !3654
  call void @llvm.dbg.value(metadata i1 %56, metadata !3584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3655
  br i1 %56, label %87, label %57, !dbg !3656

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !3657
  call void @llvm.dbg.value(metadata ptr %7, metadata !3587, metadata !DIExpression(DW_OP_deref)), !dbg !3658
  %58 = call i32 @xstrtoul(ptr noundef nonnull %38, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef nonnull @.str.2.113) #39, !dbg !3659
  %59 = icmp eq i32 %58, 0, !dbg !3661
  %60 = load i64, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 %60, metadata !3587, metadata !DIExpression()), !dbg !3658
  %61 = icmp ult i64 %60, 4294967296
  %62 = select i1 %59, i1 %61, i1 false, !dbg !3662
  %63 = trunc i64 %60 to i32
  %64 = icmp ne i32 %63, -1
  %65 = select i1 %62, i1 %64, i1 false, !dbg !3662
  %66 = select i1 %65, i32 %63, i32 %40
  %67 = select i1 %65, ptr null, ptr @.str.3.114
  call void @llvm.dbg.value(metadata ptr %67, metadata !3562, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %66, metadata !3569, metadata !DIExpression()), !dbg !3608
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !3663
  br label %87

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 2, !dbg !3664
  %70 = load i32, ptr %69, align 8, !dbg !3664, !tbaa !1346
  call void @llvm.dbg.value(metadata i32 %70, metadata !3569, metadata !DIExpression()), !dbg !3608
  %71 = icmp eq ptr %39, null, !dbg !3665
  %72 = icmp ne ptr %1, null
  %73 = and i1 %72, %71, !dbg !3666
  br i1 %73, label %74, label %87, !dbg !3666

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #39, !dbg !3667
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3590, metadata !DIExpression()), !dbg !3668
  %75 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 3, !dbg !3669
  %76 = load i32, ptr %75, align 4, !dbg !3669, !tbaa !1350
  call void @llvm.dbg.value(metadata i32 %76, metadata !3570, metadata !DIExpression()), !dbg !3608
  %77 = tail call ptr @getgrgid(i32 noundef %76) #39, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %77, metadata !3594, metadata !DIExpression()), !dbg !3671
  %78 = icmp eq ptr %77, null, !dbg !3672
  br i1 %78, label %81, label %79, !dbg !3672

79:                                               ; preds = %74
  %80 = load ptr, ptr %77, align 8, !dbg !3673, !tbaa !1557
  br label %84, !dbg !3672

81:                                               ; preds = %74
  %82 = zext i32 %76 to i64, !dbg !3674
  %83 = call ptr @umaxtostr(i64 noundef %82, ptr noundef nonnull %8) #39, !dbg !3675
  br label %84, !dbg !3672

84:                                               ; preds = %81, %79
  %85 = phi ptr [ %80, %79 ], [ %83, %81 ], !dbg !3672
  %86 = call noalias nonnull ptr @xstrdup(ptr noundef %85) #39, !dbg !3676
  call void @llvm.dbg.value(metadata ptr %86, metadata !3568, metadata !DIExpression()), !dbg !3608
  call void @endgrent() #39, !dbg !3677
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #39, !dbg !3678
  br label %87, !dbg !3679

87:                                               ; preds = %57, %53, %68, %84
  %88 = phi ptr [ %86, %84 ], [ null, %68 ], [ null, %53 ], [ null, %57 ], !dbg !3608
  %89 = phi i32 [ %70, %84 ], [ %70, %68 ], [ %40, %53 ], [ %66, %57 ], !dbg !3608
  %90 = phi i32 [ %76, %84 ], [ %45, %68 ], [ %45, %53 ], [ %45, %57 ], !dbg !3608
  %91 = phi ptr [ null, %84 ], [ null, %68 ], [ @.str.1.115, %53 ], [ %67, %57 ], !dbg !3608
  %92 = phi ptr [ %4, %84 ], [ %4, %68 ], [ null, %53 ], [ null, %57 ]
  call void @llvm.dbg.value(metadata ptr %92, metadata !3560, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %91, metadata !3562, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %90, metadata !3570, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %89, metadata !3569, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %88, metadata !3568, metadata !DIExpression()), !dbg !3608
  call void @endpwent() #39, !dbg !3680
  br label %93, !dbg !3681

93:                                               ; preds = %87, %44
  %94 = phi ptr [ %88, %87 ], [ null, %44 ], !dbg !3682
  %95 = phi i32 [ %89, %87 ], [ %40, %44 ], !dbg !3683
  %96 = phi i32 [ %90, %87 ], [ %45, %44 ], !dbg !3684
  %97 = phi ptr [ %91, %87 ], [ null, %44 ], !dbg !3608
  %98 = phi ptr [ %92, %87 ], [ %4, %44 ]
  call void @llvm.dbg.value(metadata ptr %98, metadata !3560, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %97, metadata !3562, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %96, metadata !3570, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %95, metadata !3569, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %94, metadata !3568, metadata !DIExpression()), !dbg !3608
  %99 = icmp ne ptr %39, null, !dbg !3685
  %100 = icmp eq ptr %97, null
  %101 = and i1 %99, %100, !dbg !3686
  br i1 %101, label %102, label %127, !dbg !3686

102:                                              ; preds = %93
  %103 = load i8, ptr %39, align 1, !dbg !3687, !tbaa !1079
  %104 = icmp eq i8 %103, 43, !dbg !3688
  br i1 %104, label %108, label %105, !dbg !3687

105:                                              ; preds = %102
  %106 = call ptr @getgrnam(ptr noundef nonnull %39) #39, !dbg !3689
  call void @llvm.dbg.value(metadata ptr %106, metadata !3602, metadata !DIExpression()), !dbg !3690
  %107 = icmp eq ptr %106, null, !dbg !3691
  br i1 %107, label %108, label %119, !dbg !3692

108:                                              ; preds = %102, %105
  call void @llvm.dbg.value(metadata ptr null, metadata !3561, metadata !DIExpression()), !dbg !3608
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !3693
  call void @llvm.dbg.value(metadata ptr %9, metadata !3605, metadata !DIExpression(DW_OP_deref)), !dbg !3694
  %109 = call i32 @xstrtoul(ptr noundef nonnull %39, ptr noundef null, i32 noundef 10, ptr noundef nonnull %9, ptr noundef nonnull @.str.2.113) #39, !dbg !3695
  %110 = icmp eq i32 %109, 0, !dbg !3697
  %111 = load i64, ptr %9, align 8
  call void @llvm.dbg.value(metadata i64 %111, metadata !3605, metadata !DIExpression()), !dbg !3694
  %112 = icmp ult i64 %111, 4294967296
  %113 = select i1 %110, i1 %112, i1 false, !dbg !3698
  %114 = trunc i64 %111 to i32
  %115 = icmp ne i32 %114, -1
  %116 = select i1 %113, i1 %115, i1 false, !dbg !3698
  %117 = select i1 %116, i32 %114, i32 %96
  %118 = select i1 %116, ptr null, ptr @.str.4.116
  call void @llvm.dbg.value(metadata ptr %118, metadata !3562, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %117, metadata !3570, metadata !DIExpression()), !dbg !3608
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !3699
  br label %122, !dbg !3700

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.group, ptr %106, i64 0, i32 2, !dbg !3701
  %121 = load i32, ptr %120, align 8, !dbg !3701, !tbaa !3702
  call void @llvm.dbg.value(metadata i32 %121, metadata !3570, metadata !DIExpression()), !dbg !3608
  br label %122

122:                                              ; preds = %119, %108
  %123 = phi i32 [ %117, %108 ], [ %121, %119 ], !dbg !3703
  %124 = phi ptr [ %118, %108 ], [ null, %119 ], !dbg !3704
  %125 = phi ptr [ null, %108 ], [ %5, %119 ]
  call void @llvm.dbg.value(metadata ptr %125, metadata !3561, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %124, metadata !3562, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %123, metadata !3570, metadata !DIExpression()), !dbg !3608
  call void @endgrent() #39, !dbg !3706
  %126 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %39) #39, !dbg !3707
  call void @llvm.dbg.value(metadata ptr %126, metadata !3568, metadata !DIExpression()), !dbg !3608
  br label %127, !dbg !3708

127:                                              ; preds = %122, %93
  %128 = phi ptr [ %126, %122 ], [ %94, %93 ], !dbg !3608
  %129 = phi i32 [ %123, %122 ], [ %96, %93 ], !dbg !3608
  %130 = phi ptr [ %124, %122 ], [ %97, %93 ], !dbg !3704
  %131 = phi ptr [ %125, %122 ], [ %5, %93 ]
  call void @llvm.dbg.value(metadata ptr %131, metadata !3561, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %130, metadata !3562, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %129, metadata !3570, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %128, metadata !3568, metadata !DIExpression()), !dbg !3608
  %132 = icmp eq ptr %130, null, !dbg !3709
  br i1 %132, label %133, label %144, !dbg !3711

133:                                              ; preds = %127
  store i32 %95, ptr %2, align 4, !dbg !3712, !tbaa !1070
  br i1 %41, label %135, label %134, !dbg !3714

134:                                              ; preds = %133
  store i32 %129, ptr %3, align 4, !dbg !3715, !tbaa !1070
  br label %135, !dbg !3717

135:                                              ; preds = %134, %133
  %136 = icmp eq ptr %98, null, !dbg !3718
  br i1 %136, label %138, label %137, !dbg !3720

137:                                              ; preds = %135
  store ptr %38, ptr %98, align 8, !dbg !3721, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr null, metadata !3563, metadata !DIExpression()), !dbg !3608
  br label %138, !dbg !3723

138:                                              ; preds = %137, %135
  %139 = phi ptr [ null, %137 ], [ %38, %135 ], !dbg !3608
  call void @llvm.dbg.value(metadata ptr %139, metadata !3563, metadata !DIExpression()), !dbg !3608
  %140 = icmp eq ptr %131, null, !dbg !3724
  br i1 %140, label %142, label %141, !dbg !3726

141:                                              ; preds = %138
  store ptr %128, ptr %131, align 8, !dbg !3727, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr null, metadata !3568, metadata !DIExpression()), !dbg !3608
  br label %142, !dbg !3729

142:                                              ; preds = %138, %141
  %143 = phi ptr [ null, %141 ], [ %128, %138 ], !dbg !3608
  call void @llvm.dbg.value(metadata ptr %139, metadata !3563, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %143, metadata !3568, metadata !DIExpression()), !dbg !3608
  call void @free(ptr noundef %139) #39, !dbg !3730
  call void @free(ptr noundef %143) #39, !dbg !3731
  br label %146

144:                                              ; preds = %127
  call void @llvm.dbg.value(metadata ptr %139, metadata !3563, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %143, metadata !3568, metadata !DIExpression()), !dbg !3608
  call void @free(ptr noundef %38) #39, !dbg !3730
  call void @free(ptr noundef %128) #39, !dbg !3731
  %145 = call ptr @dcgettext(ptr noundef nonnull @.str.5.117, ptr noundef nonnull %130, i32 noundef 5) #39, !dbg !3732
  br label %146, !dbg !3733

146:                                              ; preds = %142, %144
  %147 = phi ptr [ %145, %144 ], [ null, %142 ], !dbg !3733
  ret ptr %147, !dbg !3734
}

declare !dbg !3735 void @endgrent() local_unnamed_addr #3

declare !dbg !3736 void @endpwent() local_unnamed_addr #3

declare !dbg !3737 ptr @getgrnam(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3740 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3744, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %1, metadata !3745, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %2, metadata !3746, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %3, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %4, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %0, metadata !3517, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %1, metadata !3518, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %2, metadata !3519, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %3, metadata !3520, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %4, metadata !3521, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr null, metadata !3522, metadata !DIExpression()), !dbg !3750
  %6 = icmp eq ptr %2, null, !dbg !3752
  br i1 %6, label %9, label %7, !dbg !3752

7:                                                ; preds = %5
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #40, !dbg !3753
  br label %9, !dbg !3752

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ null, %5 ], !dbg !3752
  call void @llvm.dbg.value(metadata ptr %10, metadata !3523, metadata !DIExpression()), !dbg !3750
  %11 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %11, metadata !3524, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8 0, metadata !3525, metadata !DIExpression()), !dbg !3750
  %12 = icmp ne ptr %2, null, !dbg !3755
  %13 = icmp eq ptr %10, null
  %14 = and i1 %12, %13, !dbg !3756
  %15 = icmp ne ptr %11, null
  %16 = select i1 %14, i1 %15, i1 false, !dbg !3756
  br i1 %16, label %17, label %24, !dbg !3756

17:                                               ; preds = %9
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #40, !dbg !3757
  call void @llvm.dbg.value(metadata ptr %18, metadata !3526, metadata !DIExpression()), !dbg !3758
  %19 = icmp eq ptr %18, null, !dbg !3759
  br i1 %19, label %24, label %20, !dbg !3760

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3761
  %22 = icmp eq ptr %21, null, !dbg !3761
  %23 = select i1 %22, ptr null, ptr %11, !dbg !3762
  br label %24, !dbg !3762

24:                                               ; preds = %20, %9, %17
  %25 = phi ptr [ %11, %9 ], [ %11, %17 ], [ %23, %20 ], !dbg !3763
  call void @llvm.dbg.value(metadata ptr %25, metadata !3524, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8 poison, metadata !3525, metadata !DIExpression()), !dbg !3750
  ret ptr %25, !dbg !3764
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3765 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3804, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %1, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %2, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %3, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %4, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %5, metadata !3809, metadata !DIExpression()), !dbg !3810
  %7 = icmp eq ptr %1, null, !dbg !3811
  br i1 %7, label %10, label %8, !dbg !3813

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3814
  br label %12, !dbg !3814

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.121, ptr noundef %2, ptr noundef %3) #39, !dbg !3815
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.3.123, i32 noundef 5) #39, !dbg !3816
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3816
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3817
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.5.125, i32 noundef 5) #39, !dbg !3818
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.126) #39, !dbg !3818
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3819
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
  ], !dbg !3820

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.7.127, i32 noundef 5) #39, !dbg !3821
  %21 = load ptr, ptr %4, align 8, !dbg !3821, !tbaa !1001
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3821
  br label %147, !dbg !3823

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.8.128, i32 noundef 5) #39, !dbg !3824
  %25 = load ptr, ptr %4, align 8, !dbg !3824, !tbaa !1001
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3824
  %27 = load ptr, ptr %26, align 8, !dbg !3824, !tbaa !1001
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3824
  br label %147, !dbg !3825

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.9.129, i32 noundef 5) #39, !dbg !3826
  %31 = load ptr, ptr %4, align 8, !dbg !3826, !tbaa !1001
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3826
  %33 = load ptr, ptr %32, align 8, !dbg !3826, !tbaa !1001
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3826
  %35 = load ptr, ptr %34, align 8, !dbg !3826, !tbaa !1001
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3826
  br label %147, !dbg !3827

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.10.130, i32 noundef 5) #39, !dbg !3828
  %39 = load ptr, ptr %4, align 8, !dbg !3828, !tbaa !1001
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3828
  %41 = load ptr, ptr %40, align 8, !dbg !3828, !tbaa !1001
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3828
  %43 = load ptr, ptr %42, align 8, !dbg !3828, !tbaa !1001
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3828
  %45 = load ptr, ptr %44, align 8, !dbg !3828, !tbaa !1001
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3828
  br label %147, !dbg !3829

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.11.131, i32 noundef 5) #39, !dbg !3830
  %49 = load ptr, ptr %4, align 8, !dbg !3830, !tbaa !1001
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3830
  %51 = load ptr, ptr %50, align 8, !dbg !3830, !tbaa !1001
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3830
  %53 = load ptr, ptr %52, align 8, !dbg !3830, !tbaa !1001
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3830
  %55 = load ptr, ptr %54, align 8, !dbg !3830, !tbaa !1001
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3830
  %57 = load ptr, ptr %56, align 8, !dbg !3830, !tbaa !1001
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3830
  br label %147, !dbg !3831

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.12.132, i32 noundef 5) #39, !dbg !3832
  %61 = load ptr, ptr %4, align 8, !dbg !3832, !tbaa !1001
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3832
  %63 = load ptr, ptr %62, align 8, !dbg !3832, !tbaa !1001
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3832
  %65 = load ptr, ptr %64, align 8, !dbg !3832, !tbaa !1001
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3832
  %67 = load ptr, ptr %66, align 8, !dbg !3832, !tbaa !1001
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3832
  %69 = load ptr, ptr %68, align 8, !dbg !3832, !tbaa !1001
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3832
  %71 = load ptr, ptr %70, align 8, !dbg !3832, !tbaa !1001
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3832
  br label %147, !dbg !3833

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.13.133, i32 noundef 5) #39, !dbg !3834
  %75 = load ptr, ptr %4, align 8, !dbg !3834, !tbaa !1001
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3834
  %77 = load ptr, ptr %76, align 8, !dbg !3834, !tbaa !1001
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3834
  %79 = load ptr, ptr %78, align 8, !dbg !3834, !tbaa !1001
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3834
  %81 = load ptr, ptr %80, align 8, !dbg !3834, !tbaa !1001
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3834
  %83 = load ptr, ptr %82, align 8, !dbg !3834, !tbaa !1001
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3834
  %85 = load ptr, ptr %84, align 8, !dbg !3834, !tbaa !1001
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3834
  %87 = load ptr, ptr %86, align 8, !dbg !3834, !tbaa !1001
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3834
  br label %147, !dbg !3835

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.14.134, i32 noundef 5) #39, !dbg !3836
  %91 = load ptr, ptr %4, align 8, !dbg !3836, !tbaa !1001
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3836
  %93 = load ptr, ptr %92, align 8, !dbg !3836, !tbaa !1001
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3836
  %95 = load ptr, ptr %94, align 8, !dbg !3836, !tbaa !1001
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3836
  %97 = load ptr, ptr %96, align 8, !dbg !3836, !tbaa !1001
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3836
  %99 = load ptr, ptr %98, align 8, !dbg !3836, !tbaa !1001
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3836
  %101 = load ptr, ptr %100, align 8, !dbg !3836, !tbaa !1001
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3836
  %103 = load ptr, ptr %102, align 8, !dbg !3836, !tbaa !1001
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3836
  %105 = load ptr, ptr %104, align 8, !dbg !3836, !tbaa !1001
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3836
  br label %147, !dbg !3837

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.15.135, i32 noundef 5) #39, !dbg !3838
  %109 = load ptr, ptr %4, align 8, !dbg !3838, !tbaa !1001
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3838
  %111 = load ptr, ptr %110, align 8, !dbg !3838, !tbaa !1001
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3838
  %113 = load ptr, ptr %112, align 8, !dbg !3838, !tbaa !1001
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3838
  %115 = load ptr, ptr %114, align 8, !dbg !3838, !tbaa !1001
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3838
  %117 = load ptr, ptr %116, align 8, !dbg !3838, !tbaa !1001
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3838
  %119 = load ptr, ptr %118, align 8, !dbg !3838, !tbaa !1001
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3838
  %121 = load ptr, ptr %120, align 8, !dbg !3838, !tbaa !1001
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3838
  %123 = load ptr, ptr %122, align 8, !dbg !3838, !tbaa !1001
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3838
  %125 = load ptr, ptr %124, align 8, !dbg !3838, !tbaa !1001
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3838
  br label %147, !dbg !3839

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.16.136, i32 noundef 5) #39, !dbg !3840
  %129 = load ptr, ptr %4, align 8, !dbg !3840, !tbaa !1001
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3840
  %131 = load ptr, ptr %130, align 8, !dbg !3840, !tbaa !1001
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3840
  %133 = load ptr, ptr %132, align 8, !dbg !3840, !tbaa !1001
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3840
  %135 = load ptr, ptr %134, align 8, !dbg !3840, !tbaa !1001
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3840
  %137 = load ptr, ptr %136, align 8, !dbg !3840, !tbaa !1001
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3840
  %139 = load ptr, ptr %138, align 8, !dbg !3840, !tbaa !1001
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3840
  %141 = load ptr, ptr %140, align 8, !dbg !3840, !tbaa !1001
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3840
  %143 = load ptr, ptr %142, align 8, !dbg !3840, !tbaa !1001
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3840
  %145 = load ptr, ptr %144, align 8, !dbg !3840, !tbaa !1001
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3840
  br label %147, !dbg !3841

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3842
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3843 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %1, metadata !3848, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %2, metadata !3849, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %3, metadata !3850, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %4, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 0, metadata !3852, metadata !DIExpression()), !dbg !3853
  br label %6, !dbg !3854

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3856
  call void @llvm.dbg.value(metadata i64 %7, metadata !3852, metadata !DIExpression()), !dbg !3853
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3857
  %9 = load ptr, ptr %8, align 8, !dbg !3857, !tbaa !1001
  %10 = icmp eq ptr %9, null, !dbg !3859
  %11 = add i64 %7, 1, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %11, metadata !3852, metadata !DIExpression()), !dbg !3853
  br i1 %10, label %12, label %6, !dbg !3859, !llvm.loop !3861

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3863
  ret void, !dbg !3864
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3865 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3880, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %1, metadata !3881, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %2, metadata !3882, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3884, metadata !DIExpression()), !dbg !3889
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3886, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 0, metadata !3885, metadata !DIExpression()), !dbg !3888
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3885, metadata !DIExpression()), !dbg !3888
  %10 = icmp sgt i32 %9, -1, !dbg !3892
  br i1 %10, label %18, label %11, !dbg !3892

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3892
  store i32 %12, ptr %7, align 8, !dbg !3892
  %13 = icmp ult i32 %9, -7, !dbg !3892
  br i1 %13, label %14, label %18, !dbg !3892

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3892
  %16 = sext i32 %9 to i64, !dbg !3892
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3892
  br label %22, !dbg !3892

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3892
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3892
  store ptr %21, ptr %4, align 8, !dbg !3892
  br label %22, !dbg !3892

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3892
  %25 = load ptr, ptr %24, align 8, !dbg !3892
  store ptr %25, ptr %6, align 8, !dbg !3895, !tbaa !1001
  %26 = icmp eq ptr %25, null, !dbg !3896
  br i1 %26, label %197, label %27, !dbg !3897

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 1, metadata !3885, metadata !DIExpression()), !dbg !3888
  %28 = icmp sgt i32 %23, -1, !dbg !3892
  br i1 %28, label %36, label %29, !dbg !3892

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3892
  store i32 %30, ptr %7, align 8, !dbg !3892
  %31 = icmp ult i32 %23, -7, !dbg !3892
  br i1 %31, label %32, label %36, !dbg !3892

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3892
  %34 = sext i32 %23 to i64, !dbg !3892
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3892
  br label %40, !dbg !3892

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3892
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3892
  store ptr %39, ptr %4, align 8, !dbg !3892
  br label %40, !dbg !3892

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3892
  %43 = load ptr, ptr %42, align 8, !dbg !3892
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3898
  store ptr %43, ptr %44, align 8, !dbg !3895, !tbaa !1001
  %45 = icmp eq ptr %43, null, !dbg !3896
  br i1 %45, label %197, label %46, !dbg !3897

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 2, metadata !3885, metadata !DIExpression()), !dbg !3888
  %47 = icmp sgt i32 %41, -1, !dbg !3892
  br i1 %47, label %55, label %48, !dbg !3892

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3892
  store i32 %49, ptr %7, align 8, !dbg !3892
  %50 = icmp ult i32 %41, -7, !dbg !3892
  br i1 %50, label %51, label %55, !dbg !3892

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3892
  %53 = sext i32 %41 to i64, !dbg !3892
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3892
  br label %59, !dbg !3892

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3892
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3892
  store ptr %58, ptr %4, align 8, !dbg !3892
  br label %59, !dbg !3892

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3892
  %62 = load ptr, ptr %61, align 8, !dbg !3892
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3898
  store ptr %62, ptr %63, align 8, !dbg !3895, !tbaa !1001
  %64 = icmp eq ptr %62, null, !dbg !3896
  br i1 %64, label %197, label %65, !dbg !3897

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 3, metadata !3885, metadata !DIExpression()), !dbg !3888
  %66 = icmp sgt i32 %60, -1, !dbg !3892
  br i1 %66, label %74, label %67, !dbg !3892

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3892
  store i32 %68, ptr %7, align 8, !dbg !3892
  %69 = icmp ult i32 %60, -7, !dbg !3892
  br i1 %69, label %70, label %74, !dbg !3892

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3892
  %72 = sext i32 %60 to i64, !dbg !3892
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3892
  br label %78, !dbg !3892

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3892
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3892
  store ptr %77, ptr %4, align 8, !dbg !3892
  br label %78, !dbg !3892

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3892
  %81 = load ptr, ptr %80, align 8, !dbg !3892
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3898
  store ptr %81, ptr %82, align 8, !dbg !3895, !tbaa !1001
  %83 = icmp eq ptr %81, null, !dbg !3896
  br i1 %83, label %197, label %84, !dbg !3897

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 4, metadata !3885, metadata !DIExpression()), !dbg !3888
  %85 = icmp sgt i32 %79, -1, !dbg !3892
  br i1 %85, label %93, label %86, !dbg !3892

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3892
  store i32 %87, ptr %7, align 8, !dbg !3892
  %88 = icmp ult i32 %79, -7, !dbg !3892
  br i1 %88, label %89, label %93, !dbg !3892

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3892
  %91 = sext i32 %79 to i64, !dbg !3892
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3892
  br label %97, !dbg !3892

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3892
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3892
  store ptr %96, ptr %4, align 8, !dbg !3892
  br label %97, !dbg !3892

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3892
  %100 = load ptr, ptr %99, align 8, !dbg !3892
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3898
  store ptr %100, ptr %101, align 8, !dbg !3895, !tbaa !1001
  %102 = icmp eq ptr %100, null, !dbg !3896
  br i1 %102, label %197, label %103, !dbg !3897

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 5, metadata !3885, metadata !DIExpression()), !dbg !3888
  %104 = icmp sgt i32 %98, -1, !dbg !3892
  br i1 %104, label %112, label %105, !dbg !3892

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3892
  store i32 %106, ptr %7, align 8, !dbg !3892
  %107 = icmp ult i32 %98, -7, !dbg !3892
  br i1 %107, label %108, label %112, !dbg !3892

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3892
  %110 = sext i32 %98 to i64, !dbg !3892
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3892
  br label %116, !dbg !3892

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3892
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3892
  store ptr %115, ptr %4, align 8, !dbg !3892
  br label %116, !dbg !3892

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3892
  %119 = load ptr, ptr %118, align 8, !dbg !3892
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3898
  store ptr %119, ptr %120, align 8, !dbg !3895, !tbaa !1001
  %121 = icmp eq ptr %119, null, !dbg !3896
  br i1 %121, label %197, label %122, !dbg !3897

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 6, metadata !3885, metadata !DIExpression()), !dbg !3888
  %123 = icmp sgt i32 %117, -1, !dbg !3892
  br i1 %123, label %131, label %124, !dbg !3892

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3892
  store i32 %125, ptr %7, align 8, !dbg !3892
  %126 = icmp ult i32 %117, -7, !dbg !3892
  br i1 %126, label %127, label %131, !dbg !3892

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3892
  %129 = sext i32 %117 to i64, !dbg !3892
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3892
  br label %135, !dbg !3892

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3892
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3892
  store ptr %134, ptr %4, align 8, !dbg !3892
  br label %135, !dbg !3892

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3892
  %138 = load ptr, ptr %137, align 8, !dbg !3892
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3898
  store ptr %138, ptr %139, align 8, !dbg !3895, !tbaa !1001
  %140 = icmp eq ptr %138, null, !dbg !3896
  br i1 %140, label %197, label %141, !dbg !3897

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 7, metadata !3885, metadata !DIExpression()), !dbg !3888
  %142 = icmp sgt i32 %136, -1, !dbg !3892
  br i1 %142, label %150, label %143, !dbg !3892

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3892
  store i32 %144, ptr %7, align 8, !dbg !3892
  %145 = icmp ult i32 %136, -7, !dbg !3892
  br i1 %145, label %146, label %150, !dbg !3892

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3892
  %148 = sext i32 %136 to i64, !dbg !3892
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3892
  br label %154, !dbg !3892

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3892
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3892
  store ptr %153, ptr %4, align 8, !dbg !3892
  br label %154, !dbg !3892

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3892
  %157 = load ptr, ptr %156, align 8, !dbg !3892
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3898
  store ptr %157, ptr %158, align 8, !dbg !3895, !tbaa !1001
  %159 = icmp eq ptr %157, null, !dbg !3896
  br i1 %159, label %197, label %160, !dbg !3897

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 8, metadata !3885, metadata !DIExpression()), !dbg !3888
  %161 = icmp sgt i32 %155, -1, !dbg !3892
  br i1 %161, label %169, label %162, !dbg !3892

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3892
  store i32 %163, ptr %7, align 8, !dbg !3892
  %164 = icmp ult i32 %155, -7, !dbg !3892
  br i1 %164, label %165, label %169, !dbg !3892

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3892
  %167 = sext i32 %155 to i64, !dbg !3892
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3892
  br label %173, !dbg !3892

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3892
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3892
  store ptr %172, ptr %4, align 8, !dbg !3892
  br label %173, !dbg !3892

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3892
  %176 = load ptr, ptr %175, align 8, !dbg !3892
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3898
  store ptr %176, ptr %177, align 8, !dbg !3895, !tbaa !1001
  %178 = icmp eq ptr %176, null, !dbg !3896
  br i1 %178, label %197, label %179, !dbg !3897

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 9, metadata !3885, metadata !DIExpression()), !dbg !3888
  %180 = icmp sgt i32 %174, -1, !dbg !3892
  br i1 %180, label %188, label %181, !dbg !3892

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3892
  store i32 %182, ptr %7, align 8, !dbg !3892
  %183 = icmp ult i32 %174, -7, !dbg !3892
  br i1 %183, label %184, label %188, !dbg !3892

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3892
  %186 = sext i32 %174 to i64, !dbg !3892
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3892
  br label %191, !dbg !3892

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3892
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3892
  store ptr %190, ptr %4, align 8, !dbg !3892
  br label %191, !dbg !3892

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3892
  %193 = load ptr, ptr %192, align 8, !dbg !3892
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3898
  store ptr %193, ptr %194, align 8, !dbg !3895, !tbaa !1001
  %195 = icmp eq ptr %193, null, !dbg !3896
  %196 = select i1 %195, i64 9, i64 10, !dbg !3897
  br label %197, !dbg !3897

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3899
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3900
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3901
  ret void, !dbg !3901
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3902 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3906, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %1, metadata !3907, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %2, metadata !3908, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %3, metadata !3909, metadata !DIExpression()), !dbg !3911
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3912
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3910, metadata !DIExpression()), !dbg !3913
  call void @llvm.va_start(ptr nonnull %5), !dbg !3914
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3915, !tbaa.struct !1905
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3915
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3915
  call void @llvm.va_end(ptr nonnull %5), !dbg !3916
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3917
  ret void, !dbg !3917
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3918 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3919, !tbaa !1001
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %1), !dbg !3919
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.17.141, i32 noundef 5) #39, !dbg !3920
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.142) #39, !dbg !3920
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.19.143, i32 noundef 5) #39, !dbg !3921
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.144, ptr noundef nonnull @.str.21.145) #39, !dbg !3921
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.22.146, i32 noundef 5) #39, !dbg !3922
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.147) #39, !dbg !3922
  ret void, !dbg !3923
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3924 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %1, metadata !3930, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %2, metadata !3931, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %0, metadata !3933, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %2, metadata !3937, metadata !DIExpression()), !dbg !3938
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3940
  call void @llvm.dbg.value(metadata ptr %4, metadata !3941, metadata !DIExpression()), !dbg !3946
  %5 = icmp eq ptr %4, null, !dbg !3948
  br i1 %5, label %6, label %7, !dbg !3950

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3951
  unreachable, !dbg !3951

7:                                                ; preds = %3
  ret ptr %4, !dbg !3952
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3934 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3933, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %2, metadata !3937, metadata !DIExpression()), !dbg !3953
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3954
  call void @llvm.dbg.value(metadata ptr %4, metadata !3941, metadata !DIExpression()), !dbg !3955
  %5 = icmp eq ptr %4, null, !dbg !3957
  br i1 %5, label %6, label %7, !dbg !3958

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3959
  unreachable, !dbg !3959

7:                                                ; preds = %3
  ret ptr %4, !dbg !3960
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3961 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3965, metadata !DIExpression()), !dbg !3966
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3967
  call void @llvm.dbg.value(metadata ptr %2, metadata !3941, metadata !DIExpression()), !dbg !3968
  %3 = icmp eq ptr %2, null, !dbg !3970
  br i1 %3, label %4, label %5, !dbg !3971

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3972
  unreachable, !dbg !3972

5:                                                ; preds = %1
  ret ptr %2, !dbg !3973
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3974 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3975 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %0, metadata !3981, metadata !DIExpression()), !dbg !3985
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3987
  call void @llvm.dbg.value(metadata ptr %2, metadata !3941, metadata !DIExpression()), !dbg !3988
  %3 = icmp eq ptr %2, null, !dbg !3990
  br i1 %3, label %4, label %5, !dbg !3991

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3992
  unreachable, !dbg !3992

5:                                                ; preds = %1
  ret ptr %2, !dbg !3993
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3994 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %0, metadata !3965, metadata !DIExpression()), !dbg !4000
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4002
  call void @llvm.dbg.value(metadata ptr %2, metadata !3941, metadata !DIExpression()), !dbg !4003
  %3 = icmp eq ptr %2, null, !dbg !4005
  br i1 %3, label %4, label %5, !dbg !4006

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4007
  unreachable, !dbg !4007

5:                                                ; preds = %1
  ret ptr %2, !dbg !4008
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4009 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4013, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %1, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4021
  %3 = icmp eq i64 %1, 0, !dbg !4023
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4023
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4024
  call void @llvm.dbg.value(metadata ptr %5, metadata !3941, metadata !DIExpression()), !dbg !4025
  %6 = icmp eq ptr %5, null, !dbg !4027
  br i1 %6, label %7, label %8, !dbg !4028

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4029
  unreachable, !dbg !4029

8:                                                ; preds = %2
  ret ptr %5, !dbg !4030
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4031 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4032 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %1, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4045
  %3 = icmp eq i64 %1, 0, !dbg !4047
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4047
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4048
  call void @llvm.dbg.value(metadata ptr %5, metadata !3941, metadata !DIExpression()), !dbg !4049
  %6 = icmp eq ptr %5, null, !dbg !4051
  br i1 %6, label %7, label %8, !dbg !4052

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4053
  unreachable, !dbg !4053

8:                                                ; preds = %2
  ret ptr %5, !dbg !4054
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4055 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4059, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64 %1, metadata !4060, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64 %2, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %0, metadata !4063, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %1, metadata !4066, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %2, metadata !4067, metadata !DIExpression()), !dbg !4068
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4070
  call void @llvm.dbg.value(metadata ptr %4, metadata !3941, metadata !DIExpression()), !dbg !4071
  %5 = icmp eq ptr %4, null, !dbg !4073
  br i1 %5, label %6, label %7, !dbg !4074

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4075
  unreachable, !dbg !4075

7:                                                ; preds = %3
  ret ptr %4, !dbg !4076
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4077 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4081, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %1, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr null, metadata !3933, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !4084
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4086
  call void @llvm.dbg.value(metadata ptr %3, metadata !3941, metadata !DIExpression()), !dbg !4087
  %4 = icmp eq ptr %3, null, !dbg !4089
  br i1 %4, label %5, label %6, !dbg !4090

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4091
  unreachable, !dbg !4091

6:                                                ; preds = %2
  ret ptr %3, !dbg !4092
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4093 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4097, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %1, metadata !4098, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr null, metadata !4059, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %0, metadata !4060, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %1, metadata !4061, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr null, metadata !4063, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %0, metadata !4066, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4102
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4104
  call void @llvm.dbg.value(metadata ptr %3, metadata !3941, metadata !DIExpression()), !dbg !4105
  %4 = icmp eq ptr %3, null, !dbg !4107
  br i1 %4, label %5, label %6, !dbg !4108

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4109
  unreachable, !dbg !4109

6:                                                ; preds = %2
  ret ptr %3, !dbg !4110
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4115, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %1, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %0, metadata !891, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr %1, metadata !892, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 1, metadata !893, metadata !DIExpression()), !dbg !4118
  %3 = load i64, ptr %1, align 8, !dbg !4120, !tbaa !2969
  call void @llvm.dbg.value(metadata i64 %3, metadata !894, metadata !DIExpression()), !dbg !4118
  %4 = icmp eq ptr %0, null, !dbg !4121
  br i1 %4, label %5, label %8, !dbg !4123

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4124
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4127
  br label %15, !dbg !4127

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4128
  %10 = add nuw i64 %9, 1, !dbg !4128
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4128
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4128
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %13, metadata !894, metadata !DIExpression()), !dbg !4118
  br i1 %12, label %14, label %15, !dbg !4131

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4132
  unreachable, !dbg !4132

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4118
  call void @llvm.dbg.value(metadata i64 %16, metadata !894, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr %0, metadata !3933, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %16, metadata !3936, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 1, metadata !3937, metadata !DIExpression()), !dbg !4133
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4135
  call void @llvm.dbg.value(metadata ptr %17, metadata !3941, metadata !DIExpression()), !dbg !4136
  %18 = icmp eq ptr %17, null, !dbg !4138
  br i1 %18, label %19, label %20, !dbg !4139

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4140
  unreachable, !dbg !4140

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !891, metadata !DIExpression()), !dbg !4118
  store i64 %16, ptr %1, align 8, !dbg !4141, !tbaa !2969
  ret ptr %17, !dbg !4142
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !886 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !891, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %1, metadata !892, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %2, metadata !893, metadata !DIExpression()), !dbg !4143
  %4 = load i64, ptr %1, align 8, !dbg !4144, !tbaa !2969
  call void @llvm.dbg.value(metadata i64 %4, metadata !894, metadata !DIExpression()), !dbg !4143
  %5 = icmp eq ptr %0, null, !dbg !4145
  br i1 %5, label %6, label %13, !dbg !4146

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4147
  br i1 %7, label %8, label %20, !dbg !4148

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %9, metadata !894, metadata !DIExpression()), !dbg !4143
  %10 = icmp ugt i64 %2, 128, !dbg !4151
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4152
  call void @llvm.dbg.value(metadata i64 %12, metadata !894, metadata !DIExpression()), !dbg !4143
  br label %20, !dbg !4153

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4154
  %15 = add nuw i64 %14, 1, !dbg !4154
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4154
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4154
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %18, metadata !894, metadata !DIExpression()), !dbg !4143
  br i1 %17, label %19, label %20, !dbg !4155

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4156
  unreachable, !dbg !4156

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4143
  call void @llvm.dbg.value(metadata i64 %21, metadata !894, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %0, metadata !3933, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %21, metadata !3936, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %2, metadata !3937, metadata !DIExpression()), !dbg !4157
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4159
  call void @llvm.dbg.value(metadata ptr %22, metadata !3941, metadata !DIExpression()), !dbg !4160
  %23 = icmp eq ptr %22, null, !dbg !4162
  br i1 %23, label %24, label %25, !dbg !4163

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4164
  unreachable, !dbg !4164

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !891, metadata !DIExpression()), !dbg !4143
  store i64 %21, ptr %1, align 8, !dbg !4165, !tbaa !2969
  ret ptr %22, !dbg !4166
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !898 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !906, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %1, metadata !907, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %2, metadata !908, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %3, metadata !909, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %4, metadata !910, metadata !DIExpression()), !dbg !4167
  %6 = load i64, ptr %1, align 8, !dbg !4168, !tbaa !2969
  call void @llvm.dbg.value(metadata i64 %6, metadata !911, metadata !DIExpression()), !dbg !4167
  %7 = ashr i64 %6, 1, !dbg !4169
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4169
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4169
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4169
  call void @llvm.dbg.value(metadata i64 %10, metadata !912, metadata !DIExpression()), !dbg !4167
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4171
  call void @llvm.dbg.value(metadata i64 %11, metadata !912, metadata !DIExpression()), !dbg !4167
  %12 = icmp sgt i64 %3, -1, !dbg !4172
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4174
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4174
  call void @llvm.dbg.value(metadata i64 %15, metadata !912, metadata !DIExpression()), !dbg !4167
  %16 = icmp slt i64 %4, 0, !dbg !4175
  br i1 %16, label %17, label %30, !dbg !4175

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4175
  br i1 %18, label %19, label %24, !dbg !4175

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4175
  %21 = udiv i64 9223372036854775807, %20, !dbg !4175
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4175
  br i1 %23, label %46, label %43, !dbg !4175

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4175
  br i1 %25, label %43, label %26, !dbg !4175

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4175
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4175
  %29 = icmp ult i64 %28, %15, !dbg !4175
  br i1 %29, label %46, label %43, !dbg !4175

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4175
  br i1 %31, label %43, label %32, !dbg !4175

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4175
  br i1 %33, label %34, label %40, !dbg !4175

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4175
  br i1 %35, label %43, label %36, !dbg !4175

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4175
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4175
  %39 = icmp ult i64 %38, %4, !dbg !4175
  br i1 %39, label %46, label %43, !dbg !4175

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4175
  br i1 %42, label %46, label %43, !dbg !4175

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !913, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4167
  %44 = mul i64 %15, %4, !dbg !4175
  call void @llvm.dbg.value(metadata i64 %44, metadata !913, metadata !DIExpression()), !dbg !4167
  %45 = icmp slt i64 %44, 128, !dbg !4175
  br i1 %45, label %46, label %52, !dbg !4175

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !914, metadata !DIExpression()), !dbg !4167
  %48 = sdiv i64 %47, %4, !dbg !4176
  call void @llvm.dbg.value(metadata i64 %48, metadata !912, metadata !DIExpression()), !dbg !4167
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4179
  call void @llvm.dbg.value(metadata i64 %51, metadata !913, metadata !DIExpression()), !dbg !4167
  br label %52, !dbg !4180

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4167
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4167
  call void @llvm.dbg.value(metadata i64 %54, metadata !913, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %53, metadata !912, metadata !DIExpression()), !dbg !4167
  %55 = icmp eq ptr %0, null, !dbg !4181
  br i1 %55, label %56, label %57, !dbg !4183

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4184, !tbaa !2969
  br label %57, !dbg !4185

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4186
  %59 = icmp slt i64 %58, %2, !dbg !4188
  br i1 %59, label %60, label %97, !dbg !4189

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4190
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4190
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4190
  call void @llvm.dbg.value(metadata i64 %63, metadata !912, metadata !DIExpression()), !dbg !4167
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4191
  br i1 %66, label %96, label %67, !dbg !4191

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4192

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4192
  br i1 %69, label %70, label %75, !dbg !4192

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4192
  %72 = udiv i64 9223372036854775807, %71, !dbg !4192
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4192
  br i1 %74, label %96, label %94, !dbg !4192

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4192
  br i1 %76, label %94, label %77, !dbg !4192

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4192
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4192
  %80 = icmp ult i64 %79, %63, !dbg !4192
  br i1 %80, label %96, label %94, !dbg !4192

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4192
  br i1 %82, label %94, label %83, !dbg !4192

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4192
  br i1 %84, label %85, label %91, !dbg !4192

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4192
  br i1 %86, label %94, label %87, !dbg !4192

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4192
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4192
  %90 = icmp ult i64 %89, %4, !dbg !4192
  br i1 %90, label %96, label %94, !dbg !4192

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4192
  br i1 %93, label %96, label %94, !dbg !4192

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !913, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4167
  %95 = mul i64 %63, %4, !dbg !4192
  call void @llvm.dbg.value(metadata i64 %95, metadata !913, metadata !DIExpression()), !dbg !4167
  br label %97, !dbg !4193

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !4194
  unreachable, !dbg !4194

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4167
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4167
  call void @llvm.dbg.value(metadata i64 %99, metadata !913, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %98, metadata !912, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %0, metadata !4013, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %99, metadata !4014, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %99, metadata !4020, metadata !DIExpression()), !dbg !4197
  %100 = icmp eq i64 %99, 0, !dbg !4199
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4199
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #45, !dbg !4200
  call void @llvm.dbg.value(metadata ptr %102, metadata !3941, metadata !DIExpression()), !dbg !4201
  %103 = icmp eq ptr %102, null, !dbg !4203
  br i1 %103, label %104, label %105, !dbg !4204

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !4205
  unreachable, !dbg !4205

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !906, metadata !DIExpression()), !dbg !4167
  store i64 %98, ptr %1, align 8, !dbg !4206, !tbaa !2969
  ret ptr %102, !dbg !4207
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4208 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4210, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i64 %0, metadata !4212, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 1, metadata !4215, metadata !DIExpression()), !dbg !4216
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4218
  call void @llvm.dbg.value(metadata ptr %2, metadata !3941, metadata !DIExpression()), !dbg !4219
  %3 = icmp eq ptr %2, null, !dbg !4221
  br i1 %3, label %4, label %5, !dbg !4222

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4223
  unreachable, !dbg !4223

5:                                                ; preds = %1
  ret ptr %2, !dbg !4224
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4225 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4213 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4212, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4215, metadata !DIExpression()), !dbg !4226
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4227
  call void @llvm.dbg.value(metadata ptr %3, metadata !3941, metadata !DIExpression()), !dbg !4228
  %4 = icmp eq ptr %3, null, !dbg !4230
  br i1 %4, label %5, label %6, !dbg !4231

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4232
  unreachable, !dbg !4232

6:                                                ; preds = %2
  ret ptr %3, !dbg !4233
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4234 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4236, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %0, metadata !4238, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i64 1, metadata !4241, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 1, metadata !4247, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 1, metadata !4247, metadata !DIExpression()), !dbg !4248
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4250
  call void @llvm.dbg.value(metadata ptr %2, metadata !3941, metadata !DIExpression()), !dbg !4251
  %3 = icmp eq ptr %2, null, !dbg !4253
  br i1 %3, label %4, label %5, !dbg !4254

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4255
  unreachable, !dbg !4255

5:                                                ; preds = %1
  ret ptr %2, !dbg !4256
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4239 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4238, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %1, metadata !4241, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4247, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %0, metadata !4244, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4247, metadata !DIExpression()), !dbg !4258
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %3, metadata !3941, metadata !DIExpression()), !dbg !4261
  %4 = icmp eq ptr %3, null, !dbg !4263
  br i1 %4, label %5, label %6, !dbg !4264

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4265
  unreachable, !dbg !4265

6:                                                ; preds = %2
  ret ptr %3, !dbg !4266
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4267 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4271, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !3965, metadata !DIExpression()), !dbg !4274
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %3, metadata !3941, metadata !DIExpression()), !dbg !4277
  %4 = icmp eq ptr %3, null, !dbg !4279
  br i1 %4, label %5, label %6, !dbg !4280

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4281
  unreachable, !dbg !4281

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4282, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4290
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4292
  ret ptr %3, !dbg !4293
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3979, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %1, metadata !3981, metadata !DIExpression()), !dbg !4303
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %3, metadata !3941, metadata !DIExpression()), !dbg !4306
  %4 = icmp eq ptr %3, null, !dbg !4308
  br i1 %4, label %5, label %6, !dbg !4309

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4310
  unreachable, !dbg !4310

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4282, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4313
  ret ptr %3, !dbg !4314
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4315 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4319, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i64 %1, metadata !4320, metadata !DIExpression()), !dbg !4322
  %3 = add nsw i64 %1, 1, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %3, metadata !3979, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i64 %3, metadata !3981, metadata !DIExpression()), !dbg !4326
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4328
  call void @llvm.dbg.value(metadata ptr %4, metadata !3941, metadata !DIExpression()), !dbg !4329
  %5 = icmp eq ptr %4, null, !dbg !4331
  br i1 %5, label %6, label %7, !dbg !4332

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4333
  unreachable, !dbg !4333

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4322
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4334
  store i8 0, ptr %8, align 1, !dbg !4335, !tbaa !1079
  call void @llvm.dbg.value(metadata ptr %4, metadata !4282, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4338
  ret ptr %4, !dbg !4339
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4340 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4342, metadata !DIExpression()), !dbg !4343
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4344
  %3 = add i64 %2, 1, !dbg !4345
  call void @llvm.dbg.value(metadata ptr %0, metadata !4271, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %3, metadata !4272, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %3, metadata !3965, metadata !DIExpression()), !dbg !4348
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4350
  call void @llvm.dbg.value(metadata ptr %4, metadata !3941, metadata !DIExpression()), !dbg !4351
  %5 = icmp eq ptr %4, null, !dbg !4353
  br i1 %5, label %6, label %7, !dbg !4354

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4355
  unreachable, !dbg !4355

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4282, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %3, metadata !4289, metadata !DIExpression()), !dbg !4356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4358
  ret ptr %4, !dbg !4359
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4360 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4365, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %1, metadata !4362, metadata !DIExpression()), !dbg !4366
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #39, !dbg !4365
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #39, !dbg !4365
  %3 = icmp eq i32 %1, 0, !dbg !4365
  tail call void @llvm.assume(i1 %3), !dbg !4365
  tail call void @abort() #41, !dbg !4367
  unreachable, !dbg !4367
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4368 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4370, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i32 %1, metadata !4371, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata ptr %2, metadata !4372, metadata !DIExpression()), !dbg !4374
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #39, !dbg !4375
  call void @llvm.dbg.value(metadata i32 %4, metadata !4373, metadata !DIExpression()), !dbg !4374
  %5 = icmp eq i32 %4, -1, !dbg !4376
  br i1 %5, label %6, label %11, !dbg !4378

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4379
  %8 = load i32, ptr %7, align 4, !dbg !4379, !tbaa !1070
  %9 = icmp eq i32 %8, 12, !dbg !4380
  br i1 %9, label %10, label %11, !dbg !4381

10:                                               ; preds = %6
  tail call void @xalloc_die() #41, !dbg !4382
  unreachable, !dbg !4382

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !4383
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtoul(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #34 !dbg !4384 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4391, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %1, metadata !4392, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 %2, metadata !4393, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %3, metadata !4394, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %4, metadata !4395, metadata !DIExpression()), !dbg !4409
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !4410
  %7 = icmp eq ptr %1, null, !dbg !4411
  call void @llvm.dbg.value(metadata ptr %20, metadata !4397, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %0, metadata !4398, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i8 poison, metadata !4401, metadata !DIExpression()), !dbg !4412
  %8 = tail call ptr @__ctype_b_loc() #42, !dbg !4409
  %9 = load ptr, ptr %8, align 8, !tbaa !1001
  br label %10, !dbg !4413

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4412
  %12 = load i8, ptr %11, align 1, !dbg !4412, !tbaa !1079
  call void @llvm.dbg.value(metadata i8 %12, metadata !4401, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %11, metadata !4398, metadata !DIExpression()), !dbg !4412
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4414
  %15 = load i16, ptr %14, align 2, !dbg !4414, !tbaa !1111
  %16 = and i16 %15, 8192, !dbg !4414
  %17 = icmp eq i16 %16, 0, !dbg !4413
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4415
  call void @llvm.dbg.value(metadata ptr %18, metadata !4398, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i8 poison, metadata !4401, metadata !DIExpression()), !dbg !4412
  br i1 %17, label %19, label %10, !dbg !4413, !llvm.loop !4416

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4411
  %21 = icmp eq i8 %12, 45, !dbg !4418
  br i1 %21, label %22, label %23, !dbg !4420

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4421, !tbaa !1001
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #42, !dbg !4423
  store i32 0, ptr %24, align 4, !dbg !4424, !tbaa !1070
  %25 = call i64 @strtoul(ptr noundef %0, ptr noundef %20, i32 noundef %2) #39, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %25, metadata !4402, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 0, metadata !4403, metadata !DIExpression()), !dbg !4409
  %26 = load ptr, ptr %20, align 8, !dbg !4426, !tbaa !1001
  %27 = icmp eq ptr %26, %0, !dbg !4428
  br i1 %27, label %28, label %37, !dbg !4429

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4430
  br i1 %29, label %386, label %30, !dbg !4433

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4434, !tbaa !1079
  %32 = icmp eq i8 %31, 0, !dbg !4434
  br i1 %32, label %386, label %33, !dbg !4435

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !4434
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #40, !dbg !4436
  %36 = icmp eq ptr %35, null, !dbg !4436
  br i1 %36, label %386, label %44, !dbg !4437

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4438, !tbaa !1070
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4440

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4403, metadata !DIExpression()), !dbg !4409
  br label %40, !dbg !4441

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4409
  call void @llvm.dbg.value(metadata i32 %41, metadata !4403, metadata !DIExpression()), !dbg !4409
  %42 = icmp eq ptr %4, null, !dbg !4443
  br i1 %42, label %43, label %44, !dbg !4445

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4402, metadata !DIExpression()), !dbg !4409
  store i64 %25, ptr %3, align 8, !dbg !4446, !tbaa !2969
  br label %386, !dbg !4448

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4449, !tbaa !1079
  %48 = icmp eq i8 %47, 0, !dbg !4450
  br i1 %48, label %383, label %49, !dbg !4451

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !4449
  %51 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #40, !dbg !4452
  %52 = icmp eq ptr %51, null, !dbg !4452
  br i1 %52, label %53, label %55, !dbg !4454

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %25, metadata !4402, metadata !DIExpression()), !dbg !4409
  store i64 %46, ptr %3, align 8, !dbg !4455, !tbaa !2969
  %54 = or i32 %45, 2, !dbg !4457
  br label %386, !dbg !4458

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 1024, metadata !4404, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4459
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
  ], !dbg !4460

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !4461
  %58 = icmp eq ptr %57, null, !dbg !4461
  br i1 %58, label %68, label %59, !dbg !4464

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4465
  %61 = load i8, ptr %60, align 1, !dbg !4465, !tbaa !1079
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4466

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4467
  %64 = load i8, ptr %63, align 1, !dbg !4467, !tbaa !1079
  %65 = icmp eq i8 %64, 66, !dbg !4470
  %66 = select i1 %65, i64 3, i64 1, !dbg !4471
  br label %68, !dbg !4471

67:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4404, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4459
  br label %68, !dbg !4472

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ]
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4407, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i32 poison, metadata !4404, metadata !DIExpression()), !dbg !4459
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
  ], !dbg !4473

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4492
  %72 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4494
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4494
  %74 = mul i64 %46, %69, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %74, metadata !4491, metadata !DIExpression()), !dbg !4492
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4492
  call void @llvm.dbg.value(metadata i1 %73, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i1 %73, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4492
  %76 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4494
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4494
  %78 = mul i64 %75, %69, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %78, metadata !4491, metadata !DIExpression()), !dbg !4492
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4492
  %80 = or i1 %73, %77, !dbg !4496
  call void @llvm.dbg.value(metadata i1 %80, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i1 %80, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4492
  %81 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4494
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4494
  %83 = mul i64 %79, %69, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %83, metadata !4491, metadata !DIExpression()), !dbg !4492
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4492
  %85 = or i1 %80, %82, !dbg !4496
  call void @llvm.dbg.value(metadata i1 %85, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i1 %85, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4492
  %86 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4494
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4494
  %88 = mul i64 %84, %69, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %88, metadata !4491, metadata !DIExpression()), !dbg !4492
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4492
  %90 = or i1 %85, %87, !dbg !4496
  call void @llvm.dbg.value(metadata i1 %90, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i1 %90, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4492
  %91 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4494
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4494
  %93 = mul i64 %89, %69, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %93, metadata !4491, metadata !DIExpression()), !dbg !4492
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4492
  %95 = or i1 %90, %92, !dbg !4496
  call void @llvm.dbg.value(metadata i1 %95, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i1 %95, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4492
  %96 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4494
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4494
  %98 = mul i64 %94, %69, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %98, metadata !4491, metadata !DIExpression()), !dbg !4492
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4492
  %100 = or i1 %95, %97, !dbg !4496
  call void @llvm.dbg.value(metadata i1 %100, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i1 %100, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4492
  %101 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4494
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4494
  %103 = mul i64 %99, %69, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %103, metadata !4491, metadata !DIExpression()), !dbg !4492
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4492
  %105 = or i1 %100, %102, !dbg !4496
  %106 = zext i1 %105 to i32, !dbg !4496
  call void @llvm.dbg.value(metadata i32 %106, metadata !4474, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4482
  br label %372, !dbg !4497

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 8, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %108 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4502
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4502
  %110 = mul i64 %46, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %110, metadata !4491, metadata !DIExpression()), !dbg !4500
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4500
  call void @llvm.dbg.value(metadata i1 %109, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i1 %109, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %112 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4502
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4502
  %114 = mul i64 %111, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %114, metadata !4491, metadata !DIExpression()), !dbg !4500
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4500
  %116 = or i1 %109, %113, !dbg !4503
  call void @llvm.dbg.value(metadata i1 %116, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i1 %116, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %117 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4502
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4502
  %119 = mul i64 %115, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %119, metadata !4491, metadata !DIExpression()), !dbg !4500
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4500
  %121 = or i1 %116, %118, !dbg !4503
  call void @llvm.dbg.value(metadata i1 %121, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i1 %121, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %122 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4502
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4502
  %124 = mul i64 %120, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %124, metadata !4491, metadata !DIExpression()), !dbg !4500
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4500
  %126 = or i1 %121, %123, !dbg !4503
  call void @llvm.dbg.value(metadata i1 %126, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i1 %126, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %127 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4502
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4502
  %129 = mul i64 %125, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %129, metadata !4491, metadata !DIExpression()), !dbg !4500
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4500
  %131 = or i1 %126, %128, !dbg !4503
  call void @llvm.dbg.value(metadata i1 %131, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i1 %131, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %132 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4502
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4502
  %134 = mul i64 %130, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %134, metadata !4491, metadata !DIExpression()), !dbg !4500
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4500
  %136 = or i1 %131, %133, !dbg !4503
  call void @llvm.dbg.value(metadata i1 %136, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i1 %136, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %137 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4502
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4502
  %139 = mul i64 %135, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %139, metadata !4491, metadata !DIExpression()), !dbg !4500
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4500
  %141 = or i1 %136, %138, !dbg !4503
  call void @llvm.dbg.value(metadata i1 %141, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i1 %141, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4498
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4500
  %142 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4502
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4502
  %144 = mul i64 %140, %69, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %144, metadata !4491, metadata !DIExpression()), !dbg !4500
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4500
  %146 = or i1 %141, %143, !dbg !4503
  %147 = zext i1 %146 to i32, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %147, metadata !4474, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4498
  br label %372, !dbg !4497

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 9, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 8, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %149 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4508
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4508
  %151 = mul i64 %46, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %151, metadata !4491, metadata !DIExpression()), !dbg !4506
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4506
  call void @llvm.dbg.value(metadata i1 %150, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 8, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %150, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 8, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %153 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4508
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4508
  %155 = mul i64 %152, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %155, metadata !4491, metadata !DIExpression()), !dbg !4506
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4506
  %157 = or i1 %150, %154, !dbg !4509
  call void @llvm.dbg.value(metadata i1 %157, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %157, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %158 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4508
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4508
  %160 = mul i64 %156, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %160, metadata !4491, metadata !DIExpression()), !dbg !4506
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4506
  %162 = or i1 %157, %159, !dbg !4509
  call void @llvm.dbg.value(metadata i1 %162, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %162, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %163 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4508
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4508
  %165 = mul i64 %161, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %165, metadata !4491, metadata !DIExpression()), !dbg !4506
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4506
  %167 = or i1 %162, %164, !dbg !4509
  call void @llvm.dbg.value(metadata i1 %167, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %167, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %168 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4508
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4508
  %170 = mul i64 %166, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %170, metadata !4491, metadata !DIExpression()), !dbg !4506
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4506
  %172 = or i1 %167, %169, !dbg !4509
  call void @llvm.dbg.value(metadata i1 %172, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %172, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %173 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4508
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4508
  %175 = mul i64 %171, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %175, metadata !4491, metadata !DIExpression()), !dbg !4506
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4506
  %177 = or i1 %172, %174, !dbg !4509
  call void @llvm.dbg.value(metadata i1 %177, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %177, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %178 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4508
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4508
  %180 = mul i64 %176, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %180, metadata !4491, metadata !DIExpression()), !dbg !4506
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4506
  %182 = or i1 %177, %179, !dbg !4509
  call void @llvm.dbg.value(metadata i1 %182, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %182, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %183 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4508
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4508
  %185 = mul i64 %181, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %185, metadata !4491, metadata !DIExpression()), !dbg !4506
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4506
  %187 = or i1 %182, %184, !dbg !4509
  call void @llvm.dbg.value(metadata i1 %187, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %187, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4506
  %188 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4508
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4508
  %190 = mul i64 %186, %69, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %190, metadata !4491, metadata !DIExpression()), !dbg !4506
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4506
  %192 = or i1 %187, %189, !dbg !4509
  %193 = zext i1 %192 to i32, !dbg !4509
  call void @llvm.dbg.value(metadata i32 %193, metadata !4474, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4504
  br label %372, !dbg !4497

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 10, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 9, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %195 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4514
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4514
  %197 = mul i64 %46, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %197, metadata !4491, metadata !DIExpression()), !dbg !4512
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4512
  call void @llvm.dbg.value(metadata i1 %196, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 9, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %196, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 9, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 8, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %199 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4514
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4514
  %201 = mul i64 %198, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %201, metadata !4491, metadata !DIExpression()), !dbg !4512
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4512
  %203 = or i1 %196, %200, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %203, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 8, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %203, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 8, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %204 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4514
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4514
  %206 = mul i64 %202, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %206, metadata !4491, metadata !DIExpression()), !dbg !4512
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4512
  %208 = or i1 %203, %205, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %208, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %208, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 7, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %209 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4514
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4514
  %211 = mul i64 %207, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %211, metadata !4491, metadata !DIExpression()), !dbg !4512
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4512
  %213 = or i1 %208, %210, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %213, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %213, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %214 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4514
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4514
  %216 = mul i64 %212, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %216, metadata !4491, metadata !DIExpression()), !dbg !4512
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4512
  %218 = or i1 %213, %215, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %218, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %218, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %219 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4514
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4514
  %221 = mul i64 %217, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %221, metadata !4491, metadata !DIExpression()), !dbg !4512
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4512
  %223 = or i1 %218, %220, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %223, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %223, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %224 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4514
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4514
  %226 = mul i64 %222, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %226, metadata !4491, metadata !DIExpression()), !dbg !4512
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4512
  %228 = or i1 %223, %225, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %228, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %228, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %229 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4514
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4514
  %231 = mul i64 %227, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %231, metadata !4491, metadata !DIExpression()), !dbg !4512
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4512
  %233 = or i1 %228, %230, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %233, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %233, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %234 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4514
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4514
  %236 = mul i64 %232, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %236, metadata !4491, metadata !DIExpression()), !dbg !4512
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4512
  %238 = or i1 %233, %235, !dbg !4515
  call void @llvm.dbg.value(metadata i1 %238, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i1 %238, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4512
  %239 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4514
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4514
  %241 = mul i64 %237, %69, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %241, metadata !4491, metadata !DIExpression()), !dbg !4512
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4512
  %243 = or i1 %238, %240, !dbg !4515
  %244 = zext i1 %243 to i32, !dbg !4515
  call void @llvm.dbg.value(metadata i32 %244, metadata !4474, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4510
  br label %372, !dbg !4497

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4518
  %246 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4520
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4520
  %248 = mul i64 %46, %69, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %248, metadata !4491, metadata !DIExpression()), !dbg !4518
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4518
  call void @llvm.dbg.value(metadata i1 %247, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i1 %247, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4518
  %250 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4520
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4520
  %252 = mul i64 %249, %69, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %252, metadata !4491, metadata !DIExpression()), !dbg !4518
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4518
  %254 = or i1 %247, %251, !dbg !4521
  call void @llvm.dbg.value(metadata i1 %254, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i1 %254, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4518
  %255 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4520
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4520
  %257 = mul i64 %253, %69, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %257, metadata !4491, metadata !DIExpression()), !dbg !4518
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4518
  %259 = or i1 %254, %256, !dbg !4521
  call void @llvm.dbg.value(metadata i1 %259, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i1 %259, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4518
  %260 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4520
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4520
  %262 = mul i64 %258, %69, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %262, metadata !4491, metadata !DIExpression()), !dbg !4518
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4518
  %264 = or i1 %259, %261, !dbg !4521
  call void @llvm.dbg.value(metadata i1 %264, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i1 %264, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4516
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4518
  %265 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4520
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4520
  %267 = mul i64 %263, %69, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %267, metadata !4491, metadata !DIExpression()), !dbg !4518
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4518
  %269 = or i1 %264, %266, !dbg !4521
  %270 = zext i1 %269 to i32, !dbg !4521
  call void @llvm.dbg.value(metadata i32 %270, metadata !4474, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4516
  br label %372, !dbg !4497

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 6, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4524
  %272 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4526
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4526
  %274 = mul i64 %46, %69, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %274, metadata !4491, metadata !DIExpression()), !dbg !4524
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4524
  call void @llvm.dbg.value(metadata i1 %273, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i1 %273, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 5, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4524
  %276 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4526
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4526
  %278 = mul i64 %275, %69, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %278, metadata !4491, metadata !DIExpression()), !dbg !4524
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4524
  %280 = or i1 %273, %277, !dbg !4527
  call void @llvm.dbg.value(metadata i1 %280, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i1 %280, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4524
  %281 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4526
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4526
  %283 = mul i64 %279, %69, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %283, metadata !4491, metadata !DIExpression()), !dbg !4524
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4524
  %285 = or i1 %280, %282, !dbg !4527
  call void @llvm.dbg.value(metadata i1 %285, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i1 %285, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4524
  %286 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4526
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4526
  %288 = mul i64 %284, %69, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %288, metadata !4491, metadata !DIExpression()), !dbg !4524
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4524
  %290 = or i1 %285, %287, !dbg !4527
  call void @llvm.dbg.value(metadata i1 %290, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i1 %290, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4524
  %291 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4526
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4526
  %293 = mul i64 %289, %69, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %293, metadata !4491, metadata !DIExpression()), !dbg !4524
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4524
  %295 = or i1 %290, %292, !dbg !4527
  call void @llvm.dbg.value(metadata i1 %295, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i1 %295, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4522
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4524
  %296 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4526
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4526
  %298 = mul i64 %294, %69, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %298, metadata !4491, metadata !DIExpression()), !dbg !4524
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4524
  %300 = or i1 %295, %297, !dbg !4527
  %301 = zext i1 %300 to i32, !dbg !4527
  call void @llvm.dbg.value(metadata i32 %301, metadata !4474, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4522
  br label %372, !dbg !4497

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 512, metadata !4490, metadata !DIExpression()), !dbg !4528
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4530
  %304 = shl i64 %46, 9, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %304, metadata !4491, metadata !DIExpression()), !dbg !4528
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4528
  %306 = zext i1 %303 to i32, !dbg !4528
  call void @llvm.dbg.value(metadata i32 %306, metadata !4408, metadata !DIExpression()), !dbg !4459
  br label %372, !dbg !4531

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 1024, metadata !4490, metadata !DIExpression()), !dbg !4532
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4534
  %309 = shl i64 %46, 10, !dbg !4534
  call void @llvm.dbg.value(metadata i64 %309, metadata !4491, metadata !DIExpression()), !dbg !4532
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4532
  %311 = zext i1 %308 to i32, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %311, metadata !4408, metadata !DIExpression()), !dbg !4459
  br label %372, !dbg !4535

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4479, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4536
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4538
  %313 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4540
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4540
  %315 = mul i64 %46, %69, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %315, metadata !4491, metadata !DIExpression()), !dbg !4538
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4538
  call void @llvm.dbg.value(metadata i1 %314, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4536
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4536
  call void @llvm.dbg.value(metadata i1 %314, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4536
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4538
  %317 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4540
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4540
  %319 = mul i64 %316, %69, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %319, metadata !4491, metadata !DIExpression()), !dbg !4538
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4538
  %321 = or i1 %314, %318, !dbg !4541
  call void @llvm.dbg.value(metadata i1 %321, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4536
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4536
  call void @llvm.dbg.value(metadata i1 %321, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4536
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4538
  %322 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4540
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4540
  %324 = mul i64 %320, %69, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %324, metadata !4491, metadata !DIExpression()), !dbg !4538
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4538
  %326 = or i1 %321, %323, !dbg !4541
  %327 = zext i1 %326 to i32, !dbg !4541
  call void @llvm.dbg.value(metadata i32 %327, metadata !4474, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4536
  br label %372, !dbg !4497

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4479, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4542
  %329 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4544
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4544
  %331 = mul i64 %46, %69, !dbg !4544
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4546
  %333 = zext i1 %330 to i32, !dbg !4546
  call void @llvm.dbg.value(metadata i32 poison, metadata !4474, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 poison, metadata !4481, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr poison, metadata !4485, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 poison, metadata !4491, metadata !DIExpression()), !dbg !4546
  br label %372, !dbg !4497

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4479, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4547
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4549
  %335 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4551
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4551
  %337 = mul i64 %46, %69, !dbg !4551
  call void @llvm.dbg.value(metadata i64 %337, metadata !4491, metadata !DIExpression()), !dbg !4549
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4549
  call void @llvm.dbg.value(metadata i1 %336, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4547
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4547
  call void @llvm.dbg.value(metadata i1 %336, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4547
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4549
  %339 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4551
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4551
  %341 = mul i64 %338, %69, !dbg !4551
  call void @llvm.dbg.value(metadata i64 %341, metadata !4491, metadata !DIExpression()), !dbg !4549
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4549
  %343 = or i1 %336, %340, !dbg !4552
  %344 = zext i1 %343 to i32, !dbg !4552
  call void @llvm.dbg.value(metadata i32 %344, metadata !4474, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4547
  br label %372, !dbg !4497

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4479, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 4, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4555
  %346 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4557
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4557
  %348 = mul i64 %46, %69, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %348, metadata !4491, metadata !DIExpression()), !dbg !4555
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %347, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i1 %347, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i32 3, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4555
  %350 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4557
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4557
  %352 = mul i64 %349, %69, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %352, metadata !4491, metadata !DIExpression()), !dbg !4555
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4555
  %354 = or i1 %347, %351, !dbg !4558
  call void @llvm.dbg.value(metadata i1 %354, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i1 %354, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i32 2, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4555
  %355 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4557
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4557
  %357 = mul i64 %353, %69, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %357, metadata !4491, metadata !DIExpression()), !dbg !4555
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4555
  %359 = or i1 %354, %356, !dbg !4558
  call void @llvm.dbg.value(metadata i1 %359, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i1 %359, metadata !4474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4553
  call void @llvm.dbg.value(metadata i32 1, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4555
  %360 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4557
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4557
  %362 = mul i64 %358, %69, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %362, metadata !4491, metadata !DIExpression()), !dbg !4555
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4555
  %364 = or i1 %359, %361, !dbg !4558
  %365 = zext i1 %364 to i32, !dbg !4558
  call void @llvm.dbg.value(metadata i32 %365, metadata !4474, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4553
  br label %372, !dbg !4497

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i32 2, metadata !4490, metadata !DIExpression()), !dbg !4559
  %367 = shl i64 %46, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 %367, metadata !4491, metadata !DIExpression()), !dbg !4559
  %368 = icmp sgt i64 %46, -1, !dbg !4559
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4559
  %370 = lshr i64 %46, 63, !dbg !4559
  %371 = trunc i64 %370 to i32, !dbg !4559
  call void @llvm.dbg.value(metadata i32 %371, metadata !4408, metadata !DIExpression()), !dbg !4459
  br label %372, !dbg !4562

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4409
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4563
  call void @llvm.dbg.value(metadata i32 %374, metadata !4408, metadata !DIExpression()), !dbg !4459
  %375 = or i32 %374, %45, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %375, metadata !4403, metadata !DIExpression()), !dbg !4409
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4564
  store ptr %376, ptr %20, align 8, !dbg !4564, !tbaa !1001
  %377 = load i8, ptr %376, align 1, !dbg !4565, !tbaa !1079
  %378 = icmp eq i8 %377, 0, !dbg !4565
  %379 = or i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4567
  call void @llvm.dbg.value(metadata i32 %380, metadata !4403, metadata !DIExpression()), !dbg !4409
  br label %383

381:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i64 %25, metadata !4402, metadata !DIExpression()), !dbg !4409
  store i64 %46, ptr %3, align 8, !dbg !4568, !tbaa !2969
  %382 = or i32 %45, 2, !dbg !4569
  call void @llvm.dbg.value(metadata i32 %45, metadata !4403, metadata !DIExpression()), !dbg !4409
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4570
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4571
  call void @llvm.dbg.value(metadata i32 %385, metadata !4403, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %384, metadata !4402, metadata !DIExpression()), !dbg !4409
  store i64 %384, ptr %3, align 8, !dbg !4572, !tbaa !2969
  br label %386, !dbg !4573

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4409
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !4574
  ret i32 %387, !dbg !4574
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4575 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4579 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4617, metadata !DIExpression()), !dbg !4622
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4623
  call void @llvm.dbg.value(metadata i1 poison, metadata !4618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata ptr %0, metadata !4624, metadata !DIExpression()), !dbg !4627
  %3 = load i32, ptr %0, align 8, !dbg !4629, !tbaa !1365
  %4 = and i32 %3, 32, !dbg !4630
  %5 = icmp eq i32 %4, 0, !dbg !4630
  call void @llvm.dbg.value(metadata i1 %5, metadata !4620, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4631
  %7 = icmp eq i32 %6, 0, !dbg !4632
  call void @llvm.dbg.value(metadata i1 %7, metadata !4621, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  br i1 %5, label %8, label %18, !dbg !4633

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4635
  call void @llvm.dbg.value(metadata i1 %9, metadata !4618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4636
  %11 = xor i1 %7, true, !dbg !4636
  %12 = sext i1 %11 to i32, !dbg !4636
  br i1 %10, label %21, label %13, !dbg !4636

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4637
  %15 = load i32, ptr %14, align 4, !dbg !4637, !tbaa !1070
  %16 = icmp ne i32 %15, 9, !dbg !4638
  %17 = sext i1 %16 to i32, !dbg !4639
  br label %21, !dbg !4639

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4640

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4642
  store i32 0, ptr %20, align 4, !dbg !4644, !tbaa !1070
  br label %21, !dbg !4642

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4622
  ret i32 %22, !dbg !4645
}

; Function Attrs: nounwind
declare !dbg !4646 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4649 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4687, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4688, metadata !DIExpression()), !dbg !4691
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4692
  call void @llvm.dbg.value(metadata i32 %2, metadata !4689, metadata !DIExpression()), !dbg !4691
  %3 = icmp slt i32 %2, 0, !dbg !4693
  br i1 %3, label %4, label %6, !dbg !4695

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4696
  br label %24, !dbg !4697

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4698
  %8 = icmp eq i32 %7, 0, !dbg !4698
  br i1 %8, label %13, label %9, !dbg !4700

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4701
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4702
  %12 = icmp eq i64 %11, -1, !dbg !4703
  br i1 %12, label %16, label %13, !dbg !4704

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4705
  %15 = icmp eq i32 %14, 0, !dbg !4705
  br i1 %15, label %16, label %18, !dbg !4706

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4688, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4690, metadata !DIExpression()), !dbg !4691
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4707
  call void @llvm.dbg.value(metadata i32 %17, metadata !4690, metadata !DIExpression()), !dbg !4691
  br label %24, !dbg !4708

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4709
  %20 = load i32, ptr %19, align 4, !dbg !4709, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %20, metadata !4688, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4690, metadata !DIExpression()), !dbg !4691
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4707
  call void @llvm.dbg.value(metadata i32 %21, metadata !4690, metadata !DIExpression()), !dbg !4691
  %22 = icmp eq i32 %20, 0, !dbg !4710
  br i1 %22, label %24, label %23, !dbg !4708

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4712, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 -1, metadata !4690, metadata !DIExpression()), !dbg !4691
  br label %24, !dbg !4714

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4691
  ret i32 %25, !dbg !4715
}

; Function Attrs: nofree nounwind
declare !dbg !4716 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4717 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4718 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4719 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4760, metadata !DIExpression()), !dbg !4761
  %2 = icmp eq ptr %0, null, !dbg !4762
  br i1 %2, label %6, label %3, !dbg !4764

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4765
  %5 = icmp eq i32 %4, 0, !dbg !4765
  br i1 %5, label %6, label %8, !dbg !4766

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4767
  br label %16, !dbg !4768

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4769, metadata !DIExpression()), !dbg !4774
  %9 = load i32, ptr %0, align 8, !dbg !4776, !tbaa !1365
  %10 = and i32 %9, 256, !dbg !4778
  %11 = icmp eq i32 %10, 0, !dbg !4778
  br i1 %11, label %14, label %12, !dbg !4779

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4780
  br label %14, !dbg !4780

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4781
  br label %16, !dbg !4782

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4761
  ret i32 %17, !dbg !4783
}

; Function Attrs: nofree nounwind
declare !dbg !4784 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4785 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4824, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i64 %1, metadata !4825, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32 %2, metadata !4826, metadata !DIExpression()), !dbg !4830
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4831
  %5 = load ptr, ptr %4, align 8, !dbg !4831, !tbaa !4832
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4833
  %7 = load ptr, ptr %6, align 8, !dbg !4833, !tbaa !4834
  %8 = icmp eq ptr %5, %7, !dbg !4835
  br i1 %8, label %9, label %27, !dbg !4836

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4837
  %11 = load ptr, ptr %10, align 8, !dbg !4837, !tbaa !1632
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4838
  %13 = load ptr, ptr %12, align 8, !dbg !4838, !tbaa !4839
  %14 = icmp eq ptr %11, %13, !dbg !4840
  br i1 %14, label %15, label %27, !dbg !4841

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4842
  %17 = load ptr, ptr %16, align 8, !dbg !4842, !tbaa !4843
  %18 = icmp eq ptr %17, null, !dbg !4844
  br i1 %18, label %19, label %27, !dbg !4845

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4846
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4847
  call void @llvm.dbg.value(metadata i64 %21, metadata !4827, metadata !DIExpression()), !dbg !4848
  %22 = icmp eq i64 %21, -1, !dbg !4849
  br i1 %22, label %29, label %23, !dbg !4851

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4852, !tbaa !1365
  %25 = and i32 %24, -17, !dbg !4852
  store i32 %25, ptr %0, align 8, !dbg !4852, !tbaa !1365
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4853
  store i64 %21, ptr %26, align 8, !dbg !4854, !tbaa !4855
  br label %29, !dbg !4856

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4857
  br label %29, !dbg !4858

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4830
  ret i32 %30, !dbg !4859
}

; Function Attrs: nofree nounwind
declare !dbg !4860 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #36 !dbg !4863 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4868, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata ptr %1, metadata !4869, metadata !DIExpression()), !dbg !4871
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !4872
  call void @llvm.dbg.value(metadata ptr %3, metadata !4870, metadata !DIExpression()), !dbg !4871
  store i8 0, ptr %3, align 1, !dbg !4873, !tbaa !1079
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %13, %4 ], !dbg !4871
  call void @llvm.dbg.value(metadata ptr %6, metadata !4870, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i64 %5, metadata !4868, metadata !DIExpression()), !dbg !4871
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !4874
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !4877
  %12 = or i8 %11, 48, !dbg !4877
  %13 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !4878
  call void @llvm.dbg.value(metadata ptr %13, metadata !4870, metadata !DIExpression()), !dbg !4871
  store i8 %12, ptr %13, align 1, !dbg !4879, !tbaa !1079
  call void @llvm.dbg.value(metadata i64 %8, metadata !4868, metadata !DIExpression()), !dbg !4871
  %14 = icmp ult i64 %5, 10, !dbg !4880
  br i1 %14, label %15, label %4, !dbg !4881, !llvm.loop !4882

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %13, metadata !4870, metadata !DIExpression()), !dbg !4871
  ret ptr %13, !dbg !4885
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4886 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4891, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata ptr %1, metadata !4892, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i64 %2, metadata !4893, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata ptr %3, metadata !4894, metadata !DIExpression()), !dbg !4896
  %5 = icmp eq ptr %1, null, !dbg !4897
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4899
  %7 = select i1 %5, ptr @.str.181, ptr %1, !dbg !4899
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4899
  call void @llvm.dbg.value(metadata i64 %8, metadata !4893, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata ptr %7, metadata !4892, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata ptr %6, metadata !4891, metadata !DIExpression()), !dbg !4896
  %9 = icmp eq ptr %3, null, !dbg !4900
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4902
  call void @llvm.dbg.value(metadata ptr %10, metadata !4894, metadata !DIExpression()), !dbg !4896
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %11, metadata !4895, metadata !DIExpression()), !dbg !4896
  %12 = icmp ult i64 %11, -3, !dbg !4904
  br i1 %12, label %13, label %17, !dbg !4906

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4907
  %15 = icmp eq i32 %14, 0, !dbg !4907
  br i1 %15, label %16, label %29, !dbg !4908

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4909, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata ptr %10, metadata !4916, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i32 0, metadata !4919, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 8, metadata !4920, metadata !DIExpression()), !dbg !4921
  store i64 0, ptr %10, align 1, !dbg !4923
  br label %29, !dbg !4924

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4925
  br i1 %18, label %19, label %20, !dbg !4927

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4928
  unreachable, !dbg !4928

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4929

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4931
  br i1 %23, label %29, label %24, !dbg !4932

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4933
  br i1 %25, label %29, label %26, !dbg !4936

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4937, !tbaa !1079
  %28 = zext i8 %27 to i32, !dbg !4938
  store i32 %28, ptr %6, align 4, !dbg !4939, !tbaa !1070
  br label %29, !dbg !4940

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4896
  ret i64 %30, !dbg !4941
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4942 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !939 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !945, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i32 %1, metadata !946, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata ptr %2, metadata !947, metadata !DIExpression()), !dbg !4948
  %5 = icmp eq ptr %0, null, !dbg !4949
  br i1 %5, label %37, label %6, !dbg !4950

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #39, !dbg !4951
  call void @llvm.dbg.value(metadata i32 10, metadata !948, metadata !DIExpression()), !dbg !4952
  store i32 10, ptr %4, align 4, !dbg !4953, !tbaa !1070
  call void @llvm.dbg.value(metadata ptr null, metadata !4954, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i64 10, metadata !4959, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr null, metadata !4962, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.value(metadata i64 40, metadata !4965, metadata !DIExpression()), !dbg !4966
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %7, metadata !951, metadata !DIExpression()), !dbg !4952
  %8 = icmp eq ptr %7, null, !dbg !4969
  br i1 %8, label %35, label %9, !dbg !4971

9:                                                ; preds = %6, %32
  %10 = phi i32 [ %20, %32 ], [ 10, %6 ], !dbg !4972
  %11 = phi ptr [ %29, %32 ], [ %7, %6 ], !dbg !4973
  call void @llvm.dbg.value(metadata ptr %11, metadata !951, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i32 %10, metadata !952, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata ptr %4, metadata !948, metadata !DIExpression(DW_OP_deref)), !dbg !4952
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #39, !dbg !4975
  call void @llvm.dbg.value(metadata i32 %12, metadata !954, metadata !DIExpression()), !dbg !4974
  %13 = icmp slt i32 %12, 0, !dbg !4976
  %14 = load i32, ptr %4, align 4, !dbg !4974, !tbaa !1070
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !4978
  call void @llvm.dbg.value(metadata i32 %14, metadata !948, metadata !DIExpression()), !dbg !4952
  br i1 %16, label %17, label %19, !dbg !4978

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !4979
  call void @llvm.dbg.value(metadata i32 %18, metadata !948, metadata !DIExpression()), !dbg !4952
  store i32 %18, ptr %4, align 4, !dbg !4979, !tbaa !1070
  br label %19, !dbg !4980

19:                                               ; preds = %9, %17
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !4981
  call void @llvm.dbg.value(metadata i32 %20, metadata !948, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata ptr %11, metadata !4954, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata i32 %20, metadata !4959, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4982
  %21 = icmp slt i32 %20, 0, !dbg !4984
  br i1 %21, label %22, label %24, !dbg !4986

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #42, !dbg !4987
  store i32 12, ptr %23, align 4, !dbg !4989, !tbaa !1070
  call void @llvm.dbg.value(metadata ptr null, metadata !955, metadata !DIExpression()), !dbg !4974
  br label %31, !dbg !4990

24:                                               ; preds = %19
  %25 = zext i32 %20 to i64, !dbg !4981
  call void @llvm.dbg.value(metadata i64 %25, metadata !4959, metadata !DIExpression()), !dbg !4982
  %26 = shl nuw nsw i64 %25, 2, !dbg !4991
  call void @llvm.dbg.value(metadata ptr %11, metadata !4962, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.value(metadata i64 %26, metadata !4965, metadata !DIExpression()), !dbg !4992
  %27 = icmp eq i32 %20, 0, !dbg !4994
  %28 = select i1 %27, i64 1, i64 %26, !dbg !4994
  %29 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %28) #45, !dbg !4995
  call void @llvm.dbg.value(metadata ptr %29, metadata !955, metadata !DIExpression()), !dbg !4974
  %30 = icmp eq ptr %29, null, !dbg !4996
  br i1 %30, label %31, label %32, !dbg !4990

31:                                               ; preds = %24, %22
  call void @free(ptr noundef nonnull %11) #39, !dbg !4998
  br label %35, !dbg !5000

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %29, metadata !951, metadata !DIExpression()), !dbg !4952
  %33 = icmp sgt i32 %12, -1, !dbg !5001
  br i1 %33, label %34, label %9, !dbg !5003, !llvm.loop !5004

34:                                               ; preds = %32
  store ptr %29, ptr %2, align 8, !dbg !5007, !tbaa !1001
  call void @llvm.dbg.value(metadata i32 %20, metadata !948, metadata !DIExpression()), !dbg !4952
  br label %35, !dbg !5009

35:                                               ; preds = %31, %34, %6
  %36 = phi i32 [ -1, %6 ], [ -1, %31 ], [ %20, %34 ], !dbg !4952
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #39, !dbg !5010
  br label %98

37:                                               ; preds = %3
  %38 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #39, !dbg !5011
  call void @llvm.dbg.value(metadata i32 %38, metadata !956, metadata !DIExpression()), !dbg !4948
  %39 = icmp slt i32 %38, 0, !dbg !5012
  br i1 %39, label %40, label %50, !dbg !5013

40:                                               ; preds = %37
  %41 = tail call ptr @__errno_location() #42, !dbg !5014
  %42 = load i32, ptr %41, align 4, !dbg !5014, !tbaa !1070
  %43 = icmp eq i32 %42, 38, !dbg !5015
  br i1 %43, label %44, label %98, !dbg !5016

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr null, metadata !4954, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i64 1, metadata !4959, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr null, metadata !4962, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 4, metadata !4965, metadata !DIExpression()), !dbg !5019
  %45 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !5021
  call void @llvm.dbg.value(metadata ptr %45, metadata !957, metadata !DIExpression()), !dbg !5022
  %46 = icmp eq ptr %45, null, !dbg !5023
  br i1 %46, label %98, label %47, !dbg !5025

47:                                               ; preds = %44
  store ptr %45, ptr %2, align 8, !dbg !5026, !tbaa !1001
  store i32 %1, ptr %45, align 4, !dbg !5028, !tbaa !1070
  %48 = icmp ne i32 %1, -1, !dbg !5029
  %49 = zext i1 %48 to i32, !dbg !5029
  br label %98

50:                                               ; preds = %37
  %51 = icmp eq i32 %38, 0, !dbg !5030
  %52 = icmp ne i32 %1, -1
  %53 = or i1 %52, %51, !dbg !5032
  %54 = zext i1 %53 to i32, !dbg !5032
  %55 = add nuw nsw i32 %38, %54, !dbg !5032
  call void @llvm.dbg.value(metadata i32 %55, metadata !956, metadata !DIExpression()), !dbg !4948
  %56 = zext i32 %55 to i64, !dbg !5033
  call void @llvm.dbg.value(metadata ptr null, metadata !4954, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 %56, metadata !4959, metadata !DIExpression()), !dbg !5034
  %57 = shl nuw nsw i64 %56, 2, !dbg !5036
  call void @llvm.dbg.value(metadata ptr null, metadata !4962, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i64 %57, metadata !4965, metadata !DIExpression()), !dbg !5037
  %58 = tail call ptr @malloc(i64 %57), !dbg !5039
  call void @llvm.dbg.value(metadata ptr %58, metadata !962, metadata !DIExpression()), !dbg !4948
  %59 = icmp eq ptr %58, null, !dbg !5040
  br i1 %59, label %98, label %60, !dbg !5042

60:                                               ; preds = %50
  %61 = sext i1 %52 to i32, !dbg !5043
  %62 = add nsw i32 %55, %61, !dbg !5044
  %63 = zext i1 %52 to i64
  %64 = getelementptr inbounds i32, ptr %58, i64 %63, !dbg !5045
  %65 = tail call i32 @getgroups(i32 noundef %62, ptr noundef nonnull %64) #39, !dbg !5046
  call void @llvm.dbg.value(metadata i32 %65, metadata !963, metadata !DIExpression()), !dbg !4948
  %66 = icmp slt i32 %65, 0, !dbg !5047
  br i1 %66, label %67, label %68, !dbg !5049

67:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %58) #39, !dbg !5050
  br label %98, !dbg !5052

68:                                               ; preds = %60
  br i1 %52, label %69, label %71, !dbg !5053

69:                                               ; preds = %68
  store i32 %1, ptr %58, align 4, !dbg !5055, !tbaa !1070
  %70 = add nuw nsw i32 %65, 1, !dbg !5057
  call void @llvm.dbg.value(metadata i32 %70, metadata !963, metadata !DIExpression()), !dbg !4948
  br label %71, !dbg !5058

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %70, %69 ], [ %65, %68 ], !dbg !4948
  call void @llvm.dbg.value(metadata i32 %72, metadata !963, metadata !DIExpression()), !dbg !4948
  store ptr %58, ptr %2, align 8, !dbg !5059, !tbaa !1001
  %73 = icmp ugt i32 %72, 1, !dbg !5060
  br i1 %73, label %74, label %98, !dbg !5061

74:                                               ; preds = %71
  %75 = load i32, ptr %58, align 4, !dbg !5062, !tbaa !1070
  call void @llvm.dbg.value(metadata i32 %75, metadata !964, metadata !DIExpression()), !dbg !5063
  %76 = zext i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %58, i64 %76, !dbg !5064
  call void @llvm.dbg.value(metadata ptr %77, metadata !967, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.value(metadata ptr %58, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 %72, metadata !963, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata ptr %58, metadata !962, metadata !DIExpression()), !dbg !4948
  %78 = getelementptr inbounds i32, ptr %58, i64 1, !dbg !5066
  call void @llvm.dbg.value(metadata ptr %78, metadata !968, metadata !DIExpression()), !dbg !5065
  br label %79, !dbg !5067

79:                                               ; preds = %74, %92
  %80 = phi i32 [ %93, %92 ], [ %75, %74 ]
  %81 = phi ptr [ %96, %92 ], [ %78, %74 ]
  %82 = phi i32 [ %95, %92 ], [ %72, %74 ]
  %83 = phi ptr [ %94, %92 ], [ %58, %74 ]
  call void @llvm.dbg.value(metadata i32 %82, metadata !963, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata ptr %83, metadata !962, metadata !DIExpression()), !dbg !4948
  %84 = load i32, ptr %81, align 4, !dbg !5068, !tbaa !1070
  %85 = icmp eq i32 %84, %75, !dbg !5072
  %86 = icmp eq i32 %84, %80
  %87 = select i1 %85, i1 true, i1 %86, !dbg !5073
  br i1 %87, label %88, label %90, !dbg !5073

88:                                               ; preds = %79
  %89 = add nsw i32 %82, -1, !dbg !5074
  call void @llvm.dbg.value(metadata i32 %89, metadata !963, metadata !DIExpression()), !dbg !4948
  br label %92, !dbg !5075

90:                                               ; preds = %79
  %91 = getelementptr inbounds i32, ptr %83, i64 1, !dbg !5076
  call void @llvm.dbg.value(metadata ptr %91, metadata !962, metadata !DIExpression()), !dbg !4948
  store i32 %84, ptr %91, align 4, !dbg !5077, !tbaa !1070
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i32 [ %80, %88 ], [ %84, %90 ]
  %94 = phi ptr [ %83, %88 ], [ %91, %90 ], !dbg !4948
  %95 = phi i32 [ %89, %88 ], [ %82, %90 ], !dbg !4948
  call void @llvm.dbg.value(metadata i32 %95, metadata !963, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata ptr %94, metadata !962, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata ptr %81, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5065
  %96 = getelementptr inbounds i32, ptr %81, i64 1, !dbg !5066
  call void @llvm.dbg.value(metadata ptr %96, metadata !968, metadata !DIExpression()), !dbg !5065
  %97 = icmp ult ptr %96, %77, !dbg !5078
  br i1 %97, label %79, label %98, !dbg !5067, !llvm.loop !5079

98:                                               ; preds = %92, %44, %40, %47, %67, %71, %50, %35
  %99 = phi i32 [ %36, %35 ], [ %49, %47 ], [ -1, %50 ], [ -1, %67 ], [ %72, %71 ], [ -1, %40 ], [ -1, %44 ], [ %95, %92 ], !dbg !4948
  ret i32 %99, !dbg !5081
}

declare !dbg !5082 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5086 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5088, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata i64 %1, metadata !5089, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata i64 %2, metadata !5090, metadata !DIExpression()), !dbg !5092
  %4 = icmp eq i64 %2, 0, !dbg !5093
  br i1 %4, label %8, label %5, !dbg !5093

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5093
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5093
  br i1 %7, label %13, label %8, !dbg !5093

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5091, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5092
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5091, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5092
  %9 = mul i64 %2, %1, !dbg !5093
  call void @llvm.dbg.value(metadata i64 %9, metadata !5091, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata ptr %0, metadata !5095, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i64 %9, metadata !5098, metadata !DIExpression()), !dbg !5099
  %10 = icmp eq i64 %9, 0, !dbg !5101
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5101
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !5102
  br label %15, !dbg !5103

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5091, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5092
  %14 = tail call ptr @__errno_location() #42, !dbg !5104
  store i32 12, ptr %14, align 4, !dbg !5106, !tbaa !1070
  br label %15, !dbg !5107

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5092
  ret ptr %16, !dbg !5108
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5109 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5113, metadata !DIExpression()), !dbg !5118
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5114, metadata !DIExpression()), !dbg !5120
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5121
  %4 = icmp eq i32 %3, 0, !dbg !5121
  br i1 %4, label %5, label %12, !dbg !5123

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5124, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata ptr @.str.188, metadata !5127, metadata !DIExpression()), !dbg !5128
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.188, i64 2), !dbg !5131
  %7 = icmp eq i32 %6, 0, !dbg !5132
  br i1 %7, label %11, label %8, !dbg !5133

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5124, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.value(metadata ptr @.str.1.189, metadata !5127, metadata !DIExpression()), !dbg !5134
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.189, i64 6), !dbg !5136
  %10 = icmp eq i32 %9, 0, !dbg !5137
  br i1 %10, label %11, label %12, !dbg !5138

11:                                               ; preds = %8, %5
  br label %12, !dbg !5139

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5118
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5140
  ret i1 %13, !dbg !5140
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5145, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata ptr %1, metadata !5146, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata i64 %2, metadata !5147, metadata !DIExpression()), !dbg !5148
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5149
  ret i32 %4, !dbg !5150
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5155, metadata !DIExpression()), !dbg !5156
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5157
  ret ptr %2, !dbg !5158
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5159 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5161, metadata !DIExpression()), !dbg !5163
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5164
  call void @llvm.dbg.value(metadata ptr %2, metadata !5162, metadata !DIExpression()), !dbg !5163
  ret ptr %2, !dbg !5165
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5168, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata ptr %1, metadata !5169, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i64 %2, metadata !5170, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i32 %0, metadata !5161, metadata !DIExpression()), !dbg !5176
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5178
  call void @llvm.dbg.value(metadata ptr %4, metadata !5162, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.value(metadata ptr %4, metadata !5171, metadata !DIExpression()), !dbg !5175
  %5 = icmp eq ptr %4, null, !dbg !5179
  br i1 %5, label %6, label %9, !dbg !5180

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5181
  br i1 %7, label %19, label %8, !dbg !5184

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5185, !tbaa !1079
  br label %19, !dbg !5186

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5187
  call void @llvm.dbg.value(metadata i64 %10, metadata !5172, metadata !DIExpression()), !dbg !5188
  %11 = icmp ult i64 %10, %2, !dbg !5189
  br i1 %11, label %12, label %14, !dbg !5191

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5192
  call void @llvm.dbg.value(metadata ptr %1, metadata !5194, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata ptr %4, metadata !5197, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i64 %13, metadata !5198, metadata !DIExpression()), !dbg !5199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5201
  br label %19, !dbg !5202

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5203
  br i1 %15, label %19, label %16, !dbg !5206

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5207
  call void @llvm.dbg.value(metadata ptr %1, metadata !5194, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata ptr %4, metadata !5197, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i64 %17, metadata !5198, metadata !DIExpression()), !dbg !5209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5211
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5212
  store i8 0, ptr %18, align 1, !dbg !5213, !tbaa !1079
  br label %19, !dbg !5214

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5215
  ret i32 %20, !dbg !5216
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
attributes #34 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!99, !856, !492, !496, !511, !822, !859, !861, !568, !582, !633, !863, !875, !814, !882, !916, !918, !920, !924, !926, !928, !930, !932, !838, !935, !973, !976, !978, !980}
!llvm.ident = !{!982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982, !982}
!llvm.module.flags = !{!983, !984, !985, !986, !987, !988, !989}

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
!99 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100, retainedTypes: !123, globals: !137, splitDebugInlining: false, nameTableKind: None)
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
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 46, baseType: !129)
!128 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
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
!492 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !493, splitDebugInlining: false, nameTableKind: None)
!493 = !{!487, !490}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "file_name", scope: !496, file: !497, line: 45, type: !130, isLocal: true, isDefinition: true)
!496 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !498, splitDebugInlining: false, nameTableKind: None)
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
!510 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !511, file: !512, line: 66, type: !563, isLocal: false, isDefinition: true)
!511 = distinct !DICompileUnit(language: DW_LANG_C11, file: !512, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !513, globals: !514, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!513 = !{!125, !132}
!514 = !{!515, !517, !542, !544, !546, !548, !509, !550, !552, !554, !556, !561}
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !512, line: 272, type: !292, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "old_file_name", scope: !519, file: !512, line: 304, type: !130, isLocal: true, isDefinition: true)
!519 = distinct !DISubprogram(name: "verror_at_line", scope: !512, file: !512, line: 298, type: !520, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !535)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !103, !103, !130, !109, !130, !522}
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !523, line: 52, baseType: !524)
!523 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !525, line: 14, baseType: !526)
!525 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !527, baseType: !528)
!527 = !DIFile(filename: "lib/error.c", directory: "/src")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !529)
!529 = !{!530, !531, !532, !533, !534}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !528, file: !527, baseType: !125, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !528, file: !527, baseType: !125, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !528, file: !527, baseType: !125, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !528, file: !527, baseType: !103, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !528, file: !527, baseType: !103, size: 32, offset: 224)
!535 = !{!536, !537, !538, !539, !540, !541}
!536 = !DILocalVariable(name: "status", arg: 1, scope: !519, file: !512, line: 298, type: !103)
!537 = !DILocalVariable(name: "errnum", arg: 2, scope: !519, file: !512, line: 298, type: !103)
!538 = !DILocalVariable(name: "file_name", arg: 3, scope: !519, file: !512, line: 298, type: !130)
!539 = !DILocalVariable(name: "line_number", arg: 4, scope: !519, file: !512, line: 298, type: !109)
!540 = !DILocalVariable(name: "message", arg: 5, scope: !519, file: !512, line: 298, type: !130)
!541 = !DILocalVariable(name: "args", arg: 6, scope: !519, file: !512, line: 298, type: !522)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "old_line_number", scope: !519, file: !512, line: 305, type: !109, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !512, line: 338, type: !299, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !331, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !309, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "error_message_count", scope: !511, file: !512, line: 69, type: !109, isLocal: false, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !511, file: !512, line: 295, type: !103, isLocal: false, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !326, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !558, isLocal: true, isDefinition: true)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 21)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !512, line: 214, type: !292, isLocal: true, isDefinition: true)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{null}
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "program_name", scope: !568, file: !569, line: 31, type: !130, isLocal: false, isDefinition: true)
!568 = distinct !DICompileUnit(language: DW_LANG_C11, file: !569, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !570, globals: !571, splitDebugInlining: false, nameTableKind: None)
!569 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!570 = !{!124}
!571 = !{!566, !572, !574}
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !569, line: 46, type: !331, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !569, line: 49, type: !299, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "utf07FF", scope: !578, file: !579, line: 46, type: !606, isLocal: true, isDefinition: true)
!578 = distinct !DISubprogram(name: "proper_name_lite", scope: !579, file: !579, line: 38, type: !580, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !584)
!579 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!580 = !DISubroutineType(types: !581)
!581 = !{!130, !130, !130}
!582 = distinct !DICompileUnit(language: DW_LANG_C11, file: !579, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !583, splitDebugInlining: false, nameTableKind: None)
!583 = !{!576}
!584 = !{!585, !586, !587, !588, !593}
!585 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !578, file: !579, line: 38, type: !130)
!586 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !578, file: !579, line: 38, type: !130)
!587 = !DILocalVariable(name: "translation", scope: !578, file: !579, line: 40, type: !130)
!588 = !DILocalVariable(name: "w", scope: !578, file: !579, line: 47, type: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !590, line: 37, baseType: !591)
!590 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !136, line: 57, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !136, line: 42, baseType: !109)
!593 = !DILocalVariable(name: "mbs", scope: !578, file: !579, line: 48, type: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !595, line: 6, baseType: !596)
!595 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !597, line: 21, baseType: !598)
!597 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 13, size: 64, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !598, file: !597, line: 15, baseType: !103, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !598, file: !597, line: 20, baseType: !602, size: 32, offset: 32)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !597, line: 16, size: 32, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !602, file: !597, line: 18, baseType: !109, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !602, file: !597, line: 19, baseType: !299, size: 32)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 16, elements: !310)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !609, line: 78, type: !331, isLocal: true, isDefinition: true)
!609 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !609, line: 79, type: !304, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !609, line: 80, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 13)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !609, line: 81, type: !614, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !609, line: 82, type: !191, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !609, line: 83, type: !309, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !609, line: 84, type: !331, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !609, line: 85, type: !326, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !609, line: 86, type: !326, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !609, line: 87, type: !331, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !633, file: !609, line: 76, type: !719, isLocal: false, isDefinition: true)
!633 = distinct !DICompileUnit(language: DW_LANG_C11, file: !609, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !634, retainedTypes: !654, globals: !655, splitDebugInlining: false, nameTableKind: None)
!634 = !{!635, !649, !107}
!635 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !636, line: 42, baseType: !109, size: 32, elements: !637)
!636 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!638 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!639 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!640 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!641 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!642 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!643 = !DIEnumerator(name: "c_quoting_style", value: 5)
!644 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!645 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!646 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!647 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!648 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!649 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !636, line: 254, baseType: !109, size: 32, elements: !650)
!650 = !{!651, !652, !653}
!651 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!652 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!653 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!654 = !{!103, !126, !127}
!655 = !{!607, !610, !612, !617, !619, !621, !623, !625, !627, !629, !631, !656, !660, !670, !672, !677, !679, !681, !683, !685, !708, !715, !717}
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !633, file: !609, line: 92, type: !658, isLocal: false, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 320, elements: !85)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !633, file: !609, line: 1040, type: !662, isLocal: false, isDefinition: true)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !609, line: 56, size: 448, elements: !663)
!663 = !{!664, !665, !666, !668, !669}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !662, file: !609, line: 59, baseType: !635, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !609, line: 62, baseType: !103, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !662, file: !609, line: 66, baseType: !667, size: 256, offset: 64)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !332)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !662, file: !609, line: 69, baseType: !130, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !662, file: !609, line: 72, baseType: !130, size: 64, offset: 384)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !633, file: !609, line: 107, type: !662, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "slot0", scope: !633, file: !609, line: 831, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 256)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !609, line: 321, type: !309, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !609, line: 357, type: !309, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !609, line: 358, type: !309, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !609, line: 199, type: !326, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "quote", scope: !687, file: !609, line: 228, type: !706, isLocal: true, isDefinition: true)
!687 = distinct !DISubprogram(name: "gettext_quote", scope: !609, file: !609, line: 197, type: !688, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!130, !130, !635}
!690 = !{!691, !692, !693, !694, !695}
!691 = !DILocalVariable(name: "msgid", arg: 1, scope: !687, file: !609, line: 197, type: !130)
!692 = !DILocalVariable(name: "s", arg: 2, scope: !687, file: !609, line: 197, type: !635)
!693 = !DILocalVariable(name: "translation", scope: !687, file: !609, line: 199, type: !130)
!694 = !DILocalVariable(name: "w", scope: !687, file: !609, line: 229, type: !589)
!695 = !DILocalVariable(name: "mbs", scope: !687, file: !609, line: 230, type: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !595, line: 6, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !597, line: 21, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 13, size: 64, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !698, file: !597, line: 15, baseType: !103, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !698, file: !597, line: 20, baseType: !702, size: 32, offset: 32)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !597, line: 16, size: 32, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !702, file: !597, line: 18, baseType: !109, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !702, file: !597, line: 19, baseType: !299, size: 32)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !707)
!707 = !{!311, !301}
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "slotvec", scope: !633, file: !609, line: 834, type: !710, isLocal: true, isDefinition: true)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !609, line: 823, size: 128, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !711, file: !609, line: 825, baseType: !127, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !711, file: !609, line: 826, baseType: !124, size: 64, offset: 64)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "nslots", scope: !633, file: !609, line: 832, type: !103, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "slotvec0", scope: !633, file: !609, line: 833, type: !711, isLocal: true, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 704, elements: !721)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!721 = !{!722}
!722 = !DISubrange(count: 11)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !725, line: 274, type: !380, isLocal: true, isDefinition: true)
!725 = !DIFile(filename: "lib/userspec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9b1d112c5d74602907b912457199dc83")
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !725, line: 160, type: !614, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !725, line: 165, type: !79, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !725, line: 169, type: !614, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !725, line: 202, type: !145, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !725, line: 229, type: !326, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !738, line: 67, type: !390, isLocal: true, isDefinition: true)
!738 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !738, line: 69, type: !326, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !738, line: 83, type: !326, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !738, line: 83, type: !299, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !738, line: 85, type: !309, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !738, line: 88, type: !749, isLocal: true, isDefinition: true)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 171)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !738, line: 88, type: !480, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !738, line: 105, type: !155, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !738, line: 109, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 23)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !738, line: 113, type: !763, isLocal: true, isDefinition: true)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 28)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !738, line: 120, type: !768, isLocal: true, isDefinition: true)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 32)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !738, line: 127, type: !773, isLocal: true, isDefinition: true)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 36)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !738, line: 134, type: !350, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !738, line: 142, type: !162, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !738, line: 150, type: !782, isLocal: true, isDefinition: true)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 48)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !738, line: 159, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 52)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !738, line: 170, type: !792, isLocal: true, isDefinition: true)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 60)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !738, line: 248, type: !191, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !738, line: 248, type: !369, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !738, line: 254, type: !191, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !738, line: 254, type: !145, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !738, line: 254, type: !350, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !738, line: 259, type: !3, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !738, line: 259, type: !809, isLocal: true, isDefinition: true)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 29)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !814, file: !815, line: 26, type: !817, isLocal: false, isDefinition: true)
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !816, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!816 = !{!812}
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 376, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 47)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "exit_failure", scope: !822, file: !823, line: 24, type: !825, isLocal: false, isDefinition: true)
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !824, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!824 = !{!820}
!825 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !828, line: 34, type: !19, isLocal: true, isDefinition: true)
!828 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !828, line: 34, type: !326, isLocal: true, isDefinition: true)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !828, line: 34, type: !181, isLocal: true, isDefinition: true)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !835, line: 108, type: !79, isLocal: true, isDefinition: true)
!835 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "internal_state", scope: !838, file: !835, line: 97, type: !841, isLocal: true, isDefinition: true)
!838 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !839, globals: !840, splitDebugInlining: false, nameTableKind: None)
!839 = !{!125, !127, !132}
!840 = !{!833, !836}
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !595, line: 6, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !597, line: 21, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 13, size: 64, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !843, file: !597, line: 15, baseType: !103, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !843, file: !597, line: 20, baseType: !847, size: 32, offset: 32)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !597, line: 16, size: 32, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !847, file: !597, line: 18, baseType: !109, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !847, file: !597, line: 19, baseType: !299, size: 32)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !853, line: 35, type: !309, isLocal: true, isDefinition: true)
!853 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !853, line: 35, type: !304, isLocal: true, isDefinition: true)
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !857, globals: !858, splitDebugInlining: false, nameTableKind: None)
!857 = !{!125, !133, !132}
!858 = !{!473, !476, !478, !483, !485}
!859 = distinct !DICompileUnit(language: DW_LANG_C11, file: !860, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!860 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!861 = distinct !DICompileUnit(language: DW_LANG_C11, file: !862, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!862 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!863 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !864, retainedTypes: !873, globals: !874, splitDebugInlining: false, nameTableKind: None)
!864 = !{!865}
!865 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !866, line: 30, baseType: !109, size: 32, elements: !867)
!866 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!867 = !{!868, !869, !870, !871, !872}
!868 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!869 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!870 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!871 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!872 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!873 = !{!125, !200, !207}
!874 = !{!723, !726, !728, !730, !732, !734}
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !876, retainedTypes: !880, globals: !881, splitDebugInlining: false, nameTableKind: None)
!876 = !{!877}
!877 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !738, line: 40, baseType: !109, size: 32, elements: !878)
!878 = !{!879}
!879 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!880 = !{!125}
!881 = !{!736, !739, !741, !743, !745, !747, !752, !754, !756, !761, !766, !771, !776, !778, !780, !785, !790, !795, !797, !799, !801, !803, !805, !807}
!882 = distinct !DICompileUnit(language: DW_LANG_C11, file: !883, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !884, retainedTypes: !915, splitDebugInlining: false, nameTableKind: None)
!883 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!884 = !{!885, !897}
!885 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !886, file: !883, line: 188, baseType: !109, size: 32, elements: !895)
!886 = distinct !DISubprogram(name: "x2nrealloc", scope: !883, file: !883, line: 176, type: !887, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !890)
!887 = !DISubroutineType(types: !888)
!888 = !{!125, !125, !889, !127}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!890 = !{!891, !892, !893, !894}
!891 = !DILocalVariable(name: "p", arg: 1, scope: !886, file: !883, line: 176, type: !125)
!892 = !DILocalVariable(name: "pn", arg: 2, scope: !886, file: !883, line: 176, type: !889)
!893 = !DILocalVariable(name: "s", arg: 3, scope: !886, file: !883, line: 176, type: !127)
!894 = !DILocalVariable(name: "n", scope: !886, file: !883, line: 178, type: !127)
!895 = !{!896}
!896 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!897 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !898, file: !883, line: 228, baseType: !109, size: 32, elements: !895)
!898 = distinct !DISubprogram(name: "xpalloc", scope: !883, file: !883, line: 223, type: !899, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !905)
!899 = !DISubroutineType(types: !900)
!900 = !{!125, !125, !901, !902, !904, !902}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !903, line: 130, baseType: !904)
!903 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !128, line: 35, baseType: !263)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913, !914}
!906 = !DILocalVariable(name: "pa", arg: 1, scope: !898, file: !883, line: 223, type: !125)
!907 = !DILocalVariable(name: "pn", arg: 2, scope: !898, file: !883, line: 223, type: !901)
!908 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !898, file: !883, line: 223, type: !902)
!909 = !DILocalVariable(name: "n_max", arg: 4, scope: !898, file: !883, line: 223, type: !904)
!910 = !DILocalVariable(name: "s", arg: 5, scope: !898, file: !883, line: 223, type: !902)
!911 = !DILocalVariable(name: "n0", scope: !898, file: !883, line: 230, type: !902)
!912 = !DILocalVariable(name: "n", scope: !898, file: !883, line: 237, type: !902)
!913 = !DILocalVariable(name: "nbytes", scope: !898, file: !883, line: 248, type: !902)
!914 = !DILocalVariable(name: "adjusted_nbytes", scope: !898, file: !883, line: 252, type: !902)
!915 = !{!124, !125, !223, !263, !129}
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !917, splitDebugInlining: false, nameTableKind: None)
!917 = !{!826, !829, !831}
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !922, retainedTypes: !923, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/xstrtoul.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b318e5928e8382cfa3ae094c8d00222")
!922 = !{!865, !107}
!923 = !{!103, !126, !124, !223, !129}
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!925 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !927, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !880, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !880, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !934, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!934 = !{!133}
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !937, retainedTypes: !972, splitDebugInlining: false, nameTableKind: None)
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
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!975 = !{!223, !129, !125}
!976 = distinct !DICompileUnit(language: DW_LANG_C11, file: !853, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !977, splitDebugInlining: false, nameTableKind: None)
!977 = !{!851, !854}
!978 = distinct !DICompileUnit(language: DW_LANG_C11, file: !979, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!979 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!980 = distinct !DICompileUnit(language: DW_LANG_C11, file: !981, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !880, splitDebugInlining: false, nameTableKind: None)
!981 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!982 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!983 = !{i32 7, !"Dwarf Version", i32 5}
!984 = !{i32 2, !"Debug Info Version", i32 3}
!985 = !{i32 1, !"wchar_size", i32 4}
!986 = !{i32 8, !"PIC Level", i32 2}
!987 = !{i32 7, !"PIE Level", i32 2}
!988 = !{i32 7, !"uwtable", i32 2}
!989 = !{i32 7, !"frame-pointer", i32 1}
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
!1038 = !DILocation(line: 857, column: 3, scope: !1020, inlinedAt: !1037)
!1039 = !DILocation(line: 861, column: 29, scope: !1020, inlinedAt: !1037)
!1040 = !DILocation(line: 862, column: 7, scope: !1041, inlinedAt: !1037)
!1041 = distinct !DILexicalBlock(scope: !1020, file: !102, line: 862, column: 7)
!1042 = !DILocation(line: 862, column: 19, scope: !1041, inlinedAt: !1037)
!1043 = !DILocation(line: 862, column: 22, scope: !1041, inlinedAt: !1037)
!1044 = !DILocation(line: 862, column: 7, scope: !1020, inlinedAt: !1037)
!1045 = !DILocation(line: 868, column: 7, scope: !1046, inlinedAt: !1037)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !102, line: 863, column: 5)
!1047 = !DILocation(line: 870, column: 5, scope: !1046, inlinedAt: !1037)
!1048 = !DILocation(line: 875, column: 3, scope: !1020, inlinedAt: !1037)
!1049 = !DILocation(line: 877, column: 3, scope: !1020, inlinedAt: !1037)
!1050 = !DILocation(line: 141, column: 3, scope: !990)
!1051 = !DISubprogram(name: "dcgettext", scope: !1052, file: !1052, line: 51, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1052 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!124, !130, !130, !103}
!1055 = !{}
!1056 = !DISubprogram(name: "__fprintf_chk", scope: !1057, file: !1057, line: 93, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1057 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!103, !1060, !103, !1061, null}
!1060 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!1061 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1062 = !DISubprogram(name: "__printf_chk", scope: !1057, file: !1057, line: 95, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!103, !103, !1061, null}
!1065 = !DISubprogram(name: "fputs_unlocked", scope: !523, file: !523, line: 691, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
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
!1182 = !DISubprogram(name: "setlocale", scope: !1183, file: !1183, line: 122, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1183 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!124, !103, !130}
!1186 = !DISubprogram(name: "strncmp", scope: !1187, file: !1187, line: 159, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1187 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!103, !130, !130, !127}
!1190 = !DISubprogram(name: "exit", scope: !1191, file: !1191, line: 624, type: !991, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1191 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1192 = !DISubprogram(name: "getenv", scope: !1191, file: !1191, line: 641, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!124, !130}
!1195 = !DISubprogram(name: "strcmp", scope: !1187, file: !1187, line: 156, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!103, !130, !130}
!1198 = !DISubprogram(name: "strspn", scope: !1187, file: !1187, line: 297, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!129, !130, !130}
!1201 = !DISubprogram(name: "strchr", scope: !1187, file: !1187, line: 246, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!124, !130, !103}
!1204 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1210 = !DISubprogram(name: "strcspn", scope: !1187, file: !1187, line: 293, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1211 = !DISubprogram(name: "fwrite_unlocked", scope: !523, file: !523, line: 704, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
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
!1251 = !DILocation(line: 0, scope: !1217)
!1252 = !DILocation(line: 152, column: 21, scope: !1217)
!1253 = !DILocation(line: 152, column: 3, scope: !1217)
!1254 = !DILocation(line: 153, column: 3, scope: !1217)
!1255 = !DILocation(line: 154, column: 3, scope: !1217)
!1256 = !DILocation(line: 155, column: 3, scope: !1217)
!1257 = !DILocation(line: 157, column: 3, scope: !1217)
!1258 = !DILocation(line: 159, column: 3, scope: !1217)
!1259 = !DILocation(line: 159, column: 18, scope: !1217)
!1260 = !DILocation(line: 176, column: 13, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 175, column: 15)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 162, column: 9)
!1263 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 160, column: 5)
!1264 = !DILocation(line: 187, column: 11, scope: !1262)
!1265 = !DILocation(line: 190, column: 11, scope: !1262)
!1266 = !DILocation(line: 193, column: 11, scope: !1262)
!1267 = !DILocation(line: 196, column: 11, scope: !1262)
!1268 = !DILocation(line: 199, column: 11, scope: !1262)
!1269 = !DILocation(line: 200, column: 9, scope: !1262)
!1270 = !DILocation(line: 201, column: 9, scope: !1262)
!1271 = !DILocation(line: 203, column: 11, scope: !1262)
!1272 = !DILocation(line: 0, scope: !1262)
!1273 = distinct !{!1273, !1258, !1274, !1117}
!1274 = !DILocation(line: 205, column: 5, scope: !1217)
!1275 = !DILocation(line: 207, column: 25, scope: !1217)
!1276 = !DILocation(line: 207, column: 23, scope: !1217)
!1277 = !DILocation(line: 207, column: 18, scope: !1217)
!1278 = !DILocation(line: 213, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 213, column: 7)
!1280 = !DILocation(line: 213, column: 19, scope: !1279)
!1281 = !DILocation(line: 213, column: 17, scope: !1279)
!1282 = !DILocation(line: 213, column: 32, scope: !1279)
!1283 = !DILocation(line: 213, column: 30, scope: !1279)
!1284 = !DILocation(line: 213, column: 63, scope: !1279)
!1285 = !DILocation(line: 213, column: 7, scope: !1217)
!1286 = !DILocation(line: 214, column: 5, scope: !1279)
!1287 = !DILocation(line: 217, column: 28, scope: !1217)
!1288 = !DILocation(line: 221, column: 22, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 221, column: 7)
!1290 = !DILocation(line: 234, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 234, column: 7)
!1292 = !DILocation(line: 246, column: 7, scope: !1217)
!1293 = !DILocation(line: 221, column: 26, scope: !1289)
!1294 = !DILocation(line: 221, column: 35, scope: !1289)
!1295 = !DILocation(line: 221, column: 38, scope: !1289)
!1296 = !DILocation(line: 221, column: 7, scope: !1217)
!1297 = !DILocation(line: 222, column: 5, scope: !1289)
!1298 = !DILocation(line: 225, column: 25, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 225, column: 7)
!1300 = !DILocation(line: 225, column: 7, scope: !1217)
!1301 = !DILocation(line: 226, column: 5, scope: !1299)
!1302 = !DILocation(line: 235, column: 7, scope: !1291)
!1303 = !DILocation(line: 236, column: 35, scope: !1291)
!1304 = !DILocation(line: 248, column: 30, scope: !1233)
!1305 = !DILocation(line: 248, column: 22, scope: !1233)
!1306 = !{!1307, !1307, i64 0}
!1307 = !{!"_Bool", !1003, i64 0}
!1308 = !DILocation(line: 253, column: 16, scope: !1233)
!1309 = !DILocation(line: 253, column: 13, scope: !1233)
!1310 = !DILocation(line: 255, column: 21, scope: !1231)
!1311 = !DILocation(line: 255, column: 7, scope: !1232)
!1312 = !DILocation(line: 257, column: 11, scope: !1230)
!1313 = !DILocation(line: 0, scope: !1230)
!1314 = !DILocation(line: 257, column: 17, scope: !1230)
!1315 = !DILocation(line: 259, column: 30, scope: !1230)
!1316 = !DILocation(line: 263, column: 15, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 263, column: 15)
!1318 = !DILocation(line: 263, column: 15, scope: !1230)
!1319 = !DILocation(line: 265, column: 21, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 265, column: 19)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 264, column: 13)
!1322 = !DILocation(line: 265, column: 19, scope: !1321)
!1323 = !DILocation(line: 266, column: 23, scope: !1320)
!1324 = !DILocation(line: 266, column: 33, scope: !1320)
!1325 = !DILocation(line: 266, column: 64, scope: !1320)
!1326 = !DILocation(line: 266, column: 54, scope: !1320)
!1327 = !DILocation(line: 268, column: 19, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 268, column: 15)
!1329 = !DILocation(line: 268, column: 15, scope: !1230)
!1330 = !DILocation(line: 270, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 269, column: 13)
!1332 = !DILocation(line: 271, column: 18, scope: !1331)
!1333 = !DILocation(line: 272, column: 13, scope: !1331)
!1334 = !DILocation(line: 275, column: 20, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 275, column: 19)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 274, column: 13)
!1337 = !DILocation(line: 275, column: 19, scope: !1336)
!1338 = !DILocation(line: 276, column: 41, scope: !1335)
!1339 = !{!1340, !1002, i64 0}
!1340 = !{!"passwd", !1002, i64 0, !1002, i64 8, !1071, i64 16, !1071, i64 20, !1002, i64 24, !1002, i64 32, !1002, i64 40}
!1341 = !DILocation(line: 276, column: 27, scope: !1335)
!1342 = !DILocation(line: 276, column: 25, scope: !1335)
!1343 = !DILocation(line: 276, column: 17, scope: !1335)
!1344 = !DILocation(line: 279, column: 28, scope: !1336)
!1345 = !DILocation(line: 277, column: 34, scope: !1336)
!1346 = !{!1340, !1071, i64 16}
!1347 = !DILocation(line: 277, column: 27, scope: !1336)
!1348 = !DILocation(line: 277, column: 20, scope: !1336)
!1349 = !DILocation(line: 278, column: 34, scope: !1336)
!1350 = !{!1340, !1071, i64 20}
!1351 = !DILocation(line: 278, column: 27, scope: !1336)
!1352 = !DILocation(line: 278, column: 20, scope: !1336)
!1353 = !DILocation(line: 279, column: 15, scope: !1336)
!1354 = !DILocation(line: 280, column: 19, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 280, column: 19)
!1356 = !DILocalVariable(name: "__stream", arg: 1, scope: !1357, file: !1358, line: 135, type: !236)
!1357 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1358, file: !1358, line: 135, type: !1359, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1361)
!1358 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!103, !236}
!1361 = !{!1356}
!1362 = !DILocation(line: 0, scope: !1357, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 280, column: 19, scope: !1355)
!1364 = !DILocation(line: 137, column: 10, scope: !1357, inlinedAt: !1363)
!1365 = !{!1366, !1071, i64 0}
!1366 = !{!"_IO_FILE", !1071, i64 0, !1002, i64 8, !1002, i64 16, !1002, i64 24, !1002, i64 32, !1002, i64 40, !1002, i64 48, !1002, i64 56, !1002, i64 64, !1002, i64 72, !1002, i64 80, !1002, i64 88, !1002, i64 96, !1002, i64 104, !1071, i64 112, !1071, i64 116, !1367, i64 120, !1112, i64 128, !1003, i64 130, !1003, i64 131, !1002, i64 136, !1367, i64 144, !1002, i64 152, !1002, i64 160, !1002, i64 168, !1002, i64 176, !1367, i64 184, !1071, i64 192, !1003, i64 196}
!1367 = !{!"long", !1003, i64 0}
!1368 = !DILocation(line: 280, column: 19, scope: !1336)
!1369 = !DILocation(line: 948, column: 21, scope: !1370, inlinedAt: !1373)
!1370 = distinct !DISubprogram(name: "write_error", scope: !102, file: !102, line: 946, type: !564, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1371)
!1371 = !{!1372}
!1372 = !DILocalVariable(name: "saved_errno", scope: !1370, file: !102, line: 948, type: !103)
!1373 = distinct !DILocation(line: 281, column: 17, scope: !1355)
!1374 = !DILocation(line: 0, scope: !1370, inlinedAt: !1373)
!1375 = !DILocation(line: 949, column: 3, scope: !1370, inlinedAt: !1373)
!1376 = !DILocation(line: 950, column: 11, scope: !1370, inlinedAt: !1373)
!1377 = !DILocation(line: 950, column: 3, scope: !1370, inlinedAt: !1373)
!1378 = !DILocation(line: 951, column: 3, scope: !1370, inlinedAt: !1373)
!1379 = !DILocation(line: 952, column: 3, scope: !1370, inlinedAt: !1373)
!1380 = !DILocation(line: 283, column: 17, scope: !1230)
!1381 = !DILocation(line: 283, column: 11, scope: !1230)
!1382 = !DILocation(line: 284, column: 9, scope: !1231)
!1383 = !DILocation(line: 255, column: 36, scope: !1231)
!1384 = !DILocation(line: 255, column: 14, scope: !1231)
!1385 = distinct !{!1385, !1311, !1386, !1117}
!1386 = !DILocation(line: 284, column: 9, scope: !1232)
!1387 = !DILocation(line: 0, scope: !1249)
!1388 = !DILocation(line: 294, column: 11, scope: !1249)
!1389 = !DILocation(line: 294, column: 24, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 294, column: 11)
!1391 = !DILocation(line: 294, column: 11, scope: !1390)
!1392 = !DILocation(line: 295, column: 25, scope: !1390)
!1393 = !DILocation(line: 297, column: 11, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 296, column: 9)
!1395 = !DILocation(line: 297, column: 17, scope: !1394)
!1396 = !DILocation(line: 298, column: 18, scope: !1394)
!1397 = !DILocation(line: 298, column: 16, scope: !1394)
!1398 = !DILocation(line: 299, column: 20, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 299, column: 15)
!1400 = !DILocation(line: 299, column: 30, scope: !1399)
!1401 = !DILocation(line: 299, column: 33, scope: !1399)
!1402 = !DILocation(line: 299, column: 15, scope: !1394)
!1403 = !DILocation(line: 300, column: 13, scope: !1399)
!1404 = !DILocation(line: 303, column: 11, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 303, column: 11)
!1406 = !DILocation(line: 303, column: 11, scope: !1249)
!1407 = !DILocation(line: 303, column: 23, scope: !1405)
!1408 = !DILocation(line: 304, column: 14, scope: !1405)
!1409 = !DILocation(line: 304, column: 25, scope: !1405)
!1410 = !DILocation(line: 314, column: 11, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 313, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 312, column: 11)
!1413 = !DILocation(line: 306, column: 11, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 305, column: 9)
!1415 = !DILocation(line: 306, column: 17, scope: !1414)
!1416 = !DILocation(line: 307, column: 18, scope: !1414)
!1417 = !DILocation(line: 307, column: 16, scope: !1414)
!1418 = !DILocation(line: 308, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 308, column: 15)
!1420 = !DILocation(line: 308, column: 30, scope: !1419)
!1421 = !DILocation(line: 308, column: 33, scope: !1419)
!1422 = !DILocation(line: 308, column: 15, scope: !1414)
!1423 = !DILocation(line: 309, column: 13, scope: !1419)
!1424 = !DILocation(line: 312, column: 12, scope: !1412)
!1425 = !DILocation(line: 312, column: 22, scope: !1412)
!1426 = !DILocation(line: 314, column: 17, scope: !1411)
!1427 = !DILocation(line: 315, column: 18, scope: !1411)
!1428 = !DILocation(line: 315, column: 16, scope: !1411)
!1429 = !DILocation(line: 316, column: 20, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 316, column: 15)
!1431 = !DILocation(line: 316, column: 30, scope: !1430)
!1432 = !DILocation(line: 316, column: 33, scope: !1430)
!1433 = !DILocation(line: 316, column: 15, scope: !1411)
!1434 = !DILocation(line: 317, column: 13, scope: !1430)
!1435 = !DILocation(line: 319, column: 17, scope: !1411)
!1436 = !DILocation(line: 320, column: 18, scope: !1411)
!1437 = !DILocation(line: 320, column: 16, scope: !1411)
!1438 = !DILocation(line: 321, column: 20, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 321, column: 15)
!1440 = !DILocation(line: 321, column: 30, scope: !1439)
!1441 = !DILocation(line: 321, column: 33, scope: !1439)
!1442 = !DILocation(line: 321, column: 15, scope: !1411)
!1443 = !DILocation(line: 322, column: 13, scope: !1439)
!1444 = !DILocation(line: 324, column: 9, scope: !1249)
!1445 = !DILocation(line: 327, column: 10, scope: !1217)
!1446 = !{i8 0, i8 2}
!1447 = !DILocation(line: 327, column: 3, scope: !1217)
!1448 = !DISubprogram(name: "bindtextdomain", scope: !1052, file: !1052, line: 86, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!124, !130, !130}
!1451 = !DISubprogram(name: "textdomain", scope: !1052, file: !1052, line: 82, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1452 = !DISubprogram(name: "atexit", scope: !1191, file: !1191, line: 602, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!103, !563}
!1455 = !DISubprogram(name: "getopt_long", scope: !460, file: !460, line: 66, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!103, !103, !1458, !130, !1460, !465}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1461 = !DISubprogram(name: "getpwnam", scope: !1238, file: !1238, line: 116, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1236, !130}
!1464 = !DISubprogram(name: "getpwuid", scope: !1238, file: !1238, line: 110, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1236, !202}
!1467 = !DISubprogram(name: "__errno_location", scope: !1468, file: !1468, line: 37, type: !1469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1468 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!465}
!1471 = distinct !DISubprogram(name: "print_stuff", scope: !2, file: !2, line: 431, type: !1021, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1472)
!1472 = !{!1473}
!1473 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1471, file: !2, line: 431, type: !130)
!1474 = !DILocation(line: 0, scope: !1471)
!1475 = !DILocation(line: 433, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 433, column: 7)
!1477 = !DILocation(line: 433, column: 7, scope: !1471)
!1478 = !DILocation(line: 434, column: 19, scope: !1476)
!1479 = !DILocalVariable(name: "uid", arg: 1, scope: !1480, file: !2, line: 333, type: !200)
!1480 = distinct !DISubprogram(name: "print_user", scope: !2, file: !2, line: 333, type: !1481, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !200}
!1483 = !{!1479, !1484}
!1484 = !DILocalVariable(name: "pwd", scope: !1480, file: !2, line: 335, type: !1236)
!1485 = !DILocation(line: 0, scope: !1480, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 434, column: 7, scope: !1476)
!1487 = !DILocation(line: 337, column: 7, scope: !1488, inlinedAt: !1486)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 337, column: 7)
!1489 = !DILocation(line: 337, column: 7, scope: !1480, inlinedAt: !1486)
!1490 = !DILocation(line: 350, column: 5, scope: !1491, inlinedAt: !1486)
!1491 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 347, column: 7)
!1492 = !DILocation(line: 339, column: 13, scope: !1493, inlinedAt: !1486)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 338, column: 5)
!1494 = !DILocation(line: 340, column: 15, scope: !1495, inlinedAt: !1486)
!1495 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 340, column: 11)
!1496 = !DILocation(line: 340, column: 11, scope: !1493, inlinedAt: !1486)
!1497 = !DILocation(line: 342, column: 11, scope: !1498, inlinedAt: !1486)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 341, column: 9)
!1499 = !DILocation(line: 343, column: 14, scope: !1498, inlinedAt: !1486)
!1500 = !DILocation(line: 344, column: 9, scope: !1498, inlinedAt: !1486)
!1501 = !DILocation(line: 348, column: 5, scope: !1491, inlinedAt: !1486)
!1502 = !DILocation(line: 441, column: 12, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 441, column: 12)
!1504 = !DILocation(line: 441, column: 12, scope: !1476)
!1505 = !DILocation(line: 442, column: 24, scope: !1503)
!1506 = !DILocation(line: 442, column: 48, scope: !1503)
!1507 = !DILocation(line: 442, column: 11, scope: !1503)
!1508 = !DILocation(line: 442, column: 8, scope: !1503)
!1509 = !DILocation(line: 442, column: 5, scope: !1503)
!1510 = !DILocation(line: 443, column: 12, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 443, column: 12)
!1512 = !DILocation(line: 443, column: 12, scope: !1503)
!1513 = !DILocation(line: 444, column: 38, scope: !1511)
!1514 = !DILocation(line: 444, column: 44, scope: !1511)
!1515 = !DILocation(line: 444, column: 50, scope: !1511)
!1516 = !DILocation(line: 445, column: 29, scope: !1511)
!1517 = !DILocation(line: 445, column: 39, scope: !1511)
!1518 = !DILocation(line: 444, column: 11, scope: !1511)
!1519 = !DILocation(line: 444, column: 8, scope: !1511)
!1520 = !DILocation(line: 444, column: 5, scope: !1511)
!1521 = !DILocalVariable(name: "username", arg: 1, scope: !1522, file: !2, line: 356, type: !130)
!1522 = distinct !DISubprogram(name: "print_full_info", scope: !2, file: !2, line: 356, type: !1021, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1523)
!1523 = !{!1521, !1524, !1525, !1534, !1536, !1537, !1538}
!1524 = !DILocalVariable(name: "pwd", scope: !1522, file: !2, line: 358, type: !1236)
!1525 = !DILocalVariable(name: "grp", scope: !1522, file: !2, line: 359, type: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1528, line: 42, size: 256, elements: !1529)
!1528 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1527, file: !1528, line: 44, baseType: !124, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1527, file: !1528, line: 45, baseType: !124, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1527, file: !1528, line: 46, baseType: !208, size: 32, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1527, file: !1528, line: 47, baseType: !1220, size: 64, offset: 192)
!1534 = !DILocalVariable(name: "groups", scope: !1535, file: !2, line: 388, type: !943)
!1535 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 387, column: 3)
!1536 = !DILocalVariable(name: "primary_group", scope: !1535, file: !2, line: 390, type: !207)
!1537 = !DILocalVariable(name: "n_groups", scope: !1535, file: !2, line: 396, type: !103)
!1538 = !DILocalVariable(name: "i", scope: !1539, file: !2, line: 410, type: !103)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 410, column: 5)
!1540 = !DILocation(line: 0, scope: !1522, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 449, column: 5, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 446, column: 12)
!1543 = !DILocation(line: 361, column: 3, scope: !1522, inlinedAt: !1541)
!1544 = !DILocation(line: 362, column: 19, scope: !1522, inlinedAt: !1541)
!1545 = !DILocation(line: 362, column: 9, scope: !1522, inlinedAt: !1541)
!1546 = !DILocation(line: 363, column: 7, scope: !1547, inlinedAt: !1541)
!1547 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 363, column: 7)
!1548 = !DILocation(line: 363, column: 7, scope: !1522, inlinedAt: !1541)
!1549 = !DILocation(line: 364, column: 5, scope: !1547, inlinedAt: !1541)
!1550 = !DILocation(line: 366, column: 3, scope: !1522, inlinedAt: !1541)
!1551 = !DILocation(line: 367, column: 19, scope: !1522, inlinedAt: !1541)
!1552 = !DILocation(line: 367, column: 9, scope: !1522, inlinedAt: !1541)
!1553 = !DILocation(line: 368, column: 7, scope: !1554, inlinedAt: !1541)
!1554 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 368, column: 7)
!1555 = !DILocation(line: 368, column: 7, scope: !1522, inlinedAt: !1541)
!1556 = !DILocation(line: 369, column: 5, scope: !1554, inlinedAt: !1541)
!1557 = !{!1558, !1002, i64 0}
!1558 = !{!"group", !1002, i64 0, !1002, i64 8, !1071, i64 16, !1002, i64 24}
!1559 = !DILocation(line: 371, column: 7, scope: !1560, inlinedAt: !1541)
!1560 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 371, column: 7)
!1561 = !DILocation(line: 371, column: 15, scope: !1560, inlinedAt: !1541)
!1562 = !DILocation(line: 371, column: 12, scope: !1560, inlinedAt: !1541)
!1563 = !DILocation(line: 371, column: 7, scope: !1522, inlinedAt: !1541)
!1564 = !DILocation(line: 373, column: 7, scope: !1565, inlinedAt: !1541)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 372, column: 5)
!1566 = !DILocation(line: 374, column: 23, scope: !1565, inlinedAt: !1541)
!1567 = !DILocation(line: 374, column: 13, scope: !1565, inlinedAt: !1541)
!1568 = !DILocation(line: 375, column: 11, scope: !1569, inlinedAt: !1541)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 375, column: 11)
!1570 = !DILocation(line: 375, column: 11, scope: !1565, inlinedAt: !1541)
!1571 = !DILocation(line: 376, column: 9, scope: !1569, inlinedAt: !1541)
!1572 = !DILocation(line: 379, column: 7, scope: !1573, inlinedAt: !1541)
!1573 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 379, column: 7)
!1574 = !DILocation(line: 379, column: 15, scope: !1573, inlinedAt: !1541)
!1575 = !DILocation(line: 379, column: 12, scope: !1573, inlinedAt: !1541)
!1576 = !DILocation(line: 379, column: 7, scope: !1522, inlinedAt: !1541)
!1577 = !DILocation(line: 381, column: 7, scope: !1578, inlinedAt: !1541)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !2, line: 380, column: 5)
!1579 = !DILocation(line: 382, column: 23, scope: !1578, inlinedAt: !1541)
!1580 = !DILocation(line: 382, column: 13, scope: !1578, inlinedAt: !1541)
!1581 = !DILocation(line: 383, column: 11, scope: !1582, inlinedAt: !1541)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 383, column: 11)
!1583 = !DILocation(line: 383, column: 11, scope: !1578, inlinedAt: !1541)
!1584 = !DILocation(line: 384, column: 9, scope: !1582, inlinedAt: !1541)
!1585 = !DILocation(line: 388, column: 5, scope: !1535, inlinedAt: !1541)
!1586 = !DILocation(line: 391, column: 9, scope: !1587, inlinedAt: !1541)
!1587 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 391, column: 9)
!1588 = !DILocation(line: 391, column: 9, scope: !1535, inlinedAt: !1541)
!1589 = !DILocation(line: 392, column: 23, scope: !1587, inlinedAt: !1541)
!1590 = !DILocation(line: 392, column: 34, scope: !1587, inlinedAt: !1541)
!1591 = !DILocation(line: 0, scope: !1587, inlinedAt: !1541)
!1592 = !DILocation(line: 0, scope: !1535, inlinedAt: !1541)
!1593 = !DILocation(line: 396, column: 20, scope: !1535, inlinedAt: !1541)
!1594 = !DILocation(line: 397, column: 18, scope: !1595, inlinedAt: !1541)
!1595 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 397, column: 9)
!1596 = !DILocation(line: 397, column: 9, scope: !1535, inlinedAt: !1541)
!1597 = !DILocation(line: 394, column: 23, scope: !1587, inlinedAt: !1541)
!1598 = !DILocation(line: 400, column: 11, scope: !1599, inlinedAt: !1541)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 399, column: 13)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 398, column: 7)
!1601 = !DILocation(line: 403, column: 11, scope: !1599, inlinedAt: !1541)
!1602 = !DILocation(line: 404, column: 12, scope: !1600, inlinedAt: !1541)
!1603 = !DILocation(line: 405, column: 9, scope: !1600, inlinedAt: !1541)
!1604 = !DILocation(line: 408, column: 18, scope: !1605, inlinedAt: !1541)
!1605 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 408, column: 9)
!1606 = !DILocation(line: 408, column: 9, scope: !1535, inlinedAt: !1541)
!1607 = !DILocation(line: 409, column: 7, scope: !1605, inlinedAt: !1541)
!1608 = !DILocation(line: 0, scope: !1539, inlinedAt: !1541)
!1609 = !DILocation(line: 410, column: 23, scope: !1610, inlinedAt: !1541)
!1610 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 410, column: 5)
!1611 = !DILocation(line: 414, column: 9, scope: !1612, inlinedAt: !1541)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 411, column: 7)
!1613 = !DILocation(line: 415, column: 25, scope: !1612, inlinedAt: !1541)
!1614 = !DILocation(line: 415, column: 15, scope: !1612, inlinedAt: !1541)
!1615 = !DILocation(line: 416, column: 13, scope: !1616, inlinedAt: !1541)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 416, column: 13)
!1617 = !DILocation(line: 416, column: 13, scope: !1612, inlinedAt: !1541)
!1618 = !DILocation(line: 417, column: 11, scope: !1616, inlinedAt: !1541)
!1619 = !DILocation(line: 410, column: 5, scope: !1539, inlinedAt: !1541)
!1620 = !DILocation(line: 419, column: 11, scope: !1535, inlinedAt: !1541)
!1621 = !DILocation(line: 419, column: 5, scope: !1535, inlinedAt: !1541)
!1622 = !DILocation(line: 420, column: 3, scope: !1522, inlinedAt: !1541)
!1623 = !DILocalVariable(name: "__c", arg: 1, scope: !1624, file: !1358, line: 108, type: !103)
!1624 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1358, file: !1358, line: 108, type: !1625, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!103, !103}
!1627 = !{!1623}
!1628 = !DILocation(line: 0, scope: !1624, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 413, column: 11, scope: !1630, inlinedAt: !1541)
!1630 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 412, column: 13)
!1631 = !DILocation(line: 110, column: 10, scope: !1624, inlinedAt: !1629)
!1632 = !{!1366, !1002, i64 40}
!1633 = !{!1366, !1002, i64 48}
!1634 = !{!"branch_weights", i32 2000, i32 1}
!1635 = !DILocation(line: 410, column: 36, scope: !1610, inlinedAt: !1541)
!1636 = distinct !{!1636, !1619, !1637, !1117, !1638}
!1637 = !DILocation(line: 418, column: 7, scope: !1539, inlinedAt: !1541)
!1638 = !{!"llvm.loop.peeled.count", i32 1}
!1639 = !DILocation(line: 454, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 454, column: 7)
!1641 = !DILocation(line: 454, column: 16, scope: !1640)
!1642 = !DILocation(line: 454, column: 19, scope: !1640)
!1643 = !DILocation(line: 454, column: 35, scope: !1640)
!1644 = !DILocation(line: 0, scope: !1624, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 456, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 455, column: 5)
!1647 = !DILocation(line: 110, column: 10, scope: !1624, inlinedAt: !1645)
!1648 = !DILocation(line: 0, scope: !1624, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 457, column: 7, scope: !1646)
!1650 = !DILocation(line: 110, column: 10, scope: !1624, inlinedAt: !1649)
!1651 = !DILocation(line: 461, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 460, column: 5)
!1653 = !DILocation(line: 0, scope: !1624, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 461, column: 7, scope: !1652)
!1655 = !DILocation(line: 110, column: 10, scope: !1624, inlinedAt: !1654)
!1656 = !DILocation(line: 463, column: 1, scope: !1471)
!1657 = !DISubprogram(name: "fflush_unlocked", scope: !523, file: !523, line: 239, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1658 = !DISubprogram(name: "clearerr_unlocked", scope: !523, file: !523, line: 794, type: !1659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !236}
!1661 = !DISubprogram(name: "free", scope: !1191, file: !1191, line: 555, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !125}
!1664 = !DISubprogram(name: "geteuid", scope: !1665, file: !1665, line: 700, type: !1666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1665 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!202}
!1668 = !DISubprogram(name: "getuid", scope: !1665, file: !1665, line: 697, type: !1666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1669 = !DISubprogram(name: "getegid", scope: !1665, file: !1665, line: 706, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!208}
!1672 = !DISubprogram(name: "getgid", scope: !1665, file: !1665, line: 703, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1673 = !DISubprogram(name: "getgrgid", scope: !1528, file: !1528, line: 101, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!1526, !208}
!1676 = !DISubprogram(name: "__overflow", scope: !523, file: !523, line: 886, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!103, !236, !103}
!1679 = distinct !DISubprogram(name: "print_group_list", scope: !475, file: !475, line: 35, type: !1680, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!223, !130, !200, !207, !207, !223, !4}
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1701, !1703, !1704}
!1683 = !DILocalVariable(name: "username", arg: 1, scope: !1679, file: !475, line: 35, type: !130)
!1684 = !DILocalVariable(name: "ruid", arg: 2, scope: !1679, file: !475, line: 36, type: !200)
!1685 = !DILocalVariable(name: "rgid", arg: 3, scope: !1679, file: !475, line: 36, type: !207)
!1686 = !DILocalVariable(name: "egid", arg: 4, scope: !1679, file: !475, line: 36, type: !207)
!1687 = !DILocalVariable(name: "use_names", arg: 5, scope: !1679, file: !475, line: 37, type: !223)
!1688 = !DILocalVariable(name: "delim", arg: 6, scope: !1679, file: !475, line: 37, type: !4)
!1689 = !DILocalVariable(name: "ok", scope: !1679, file: !475, line: 39, type: !223)
!1690 = !DILocalVariable(name: "pwd", scope: !1679, file: !475, line: 40, type: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1238, line: 49, size: 384, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1692, file: !1238, line: 51, baseType: !124, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1692, file: !1238, line: 52, baseType: !124, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1692, file: !1238, line: 54, baseType: !202, size: 32, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1692, file: !1238, line: 55, baseType: !208, size: 32, offset: 160)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1692, file: !1238, line: 56, baseType: !124, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1692, file: !1238, line: 57, baseType: !124, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1692, file: !1238, line: 58, baseType: !124, size: 64, offset: 320)
!1701 = !DILocalVariable(name: "groups", scope: !1702, file: !475, line: 60, type: !943)
!1702 = distinct !DILexicalBlock(scope: !1679, file: !475, line: 59, column: 3)
!1703 = !DILocalVariable(name: "n_groups", scope: !1702, file: !475, line: 62, type: !103)
!1704 = !DILocalVariable(name: "i", scope: !1705, file: !475, line: 77, type: !103)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 77, column: 5)
!1706 = !DILocation(line: 0, scope: !1679)
!1707 = !DILocation(line: 42, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1679, file: !475, line: 42, column: 7)
!1709 = !DILocation(line: 42, column: 7, scope: !1679)
!1710 = !DILocation(line: 44, column: 13, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !475, line: 43, column: 5)
!1712 = !DILocation(line: 45, column: 15, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1711, file: !475, line: 45, column: 11)
!1714 = !DILocation(line: 45, column: 11, scope: !1711)
!1715 = !DILocalVariable(name: "gid", arg: 1, scope: !1716, file: !475, line: 91, type: !207)
!1716 = distinct !DISubprogram(name: "print_group", scope: !475, file: !475, line: 91, type: !1717, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!223, !207, !223}
!1719 = !{!1715, !1720, !1721, !1729, !1730}
!1720 = !DILocalVariable(name: "use_name", arg: 2, scope: !1716, file: !475, line: 91, type: !223)
!1721 = !DILocalVariable(name: "grp", scope: !1716, file: !475, line: 93, type: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1528, line: 42, size: 256, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1723, file: !1528, line: 44, baseType: !124, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1723, file: !1528, line: 45, baseType: !124, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1723, file: !1528, line: 46, baseType: !208, size: 32, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1723, file: !1528, line: 47, baseType: !1220, size: 64, offset: 192)
!1729 = !DILocalVariable(name: "ok", scope: !1716, file: !475, line: 94, type: !223)
!1730 = !DILocalVariable(name: "g", scope: !1731, file: !475, line: 108, type: !133)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !475, line: 107, column: 13)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !475, line: 101, column: 15)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !475, line: 100, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !475, line: 99, column: 11)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !475, line: 97, column: 5)
!1736 = distinct !DILexicalBlock(scope: !1716, file: !475, line: 96, column: 7)
!1737 = !DILocation(line: 0, scope: !1716, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 49, column: 8, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1679, file: !475, line: 49, column: 7)
!1740 = !DILocation(line: 96, column: 7, scope: !1716, inlinedAt: !1738)
!1741 = !DILocation(line: 118, column: 5, scope: !1742, inlinedAt: !1738)
!1742 = distinct !DILexicalBlock(scope: !1716, file: !475, line: 115, column: 7)
!1743 = !DILocation(line: 98, column: 13, scope: !1735, inlinedAt: !1738)
!1744 = !DILocation(line: 99, column: 15, scope: !1734, inlinedAt: !1738)
!1745 = !DILocation(line: 99, column: 11, scope: !1735, inlinedAt: !1738)
!1746 = !DILocation(line: 108, column: 29, scope: !1731, inlinedAt: !1738)
!1747 = !DILocation(line: 0, scope: !1731, inlinedAt: !1738)
!1748 = !DILocation(line: 109, column: 15, scope: !1731, inlinedAt: !1738)
!1749 = !DILocation(line: 112, column: 9, scope: !1733, inlinedAt: !1738)
!1750 = !DILocation(line: 116, column: 5, scope: !1742, inlinedAt: !1738)
!1751 = !DILocation(line: 49, column: 7, scope: !1679)
!1752 = !DILocation(line: 52, column: 12, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1679, file: !475, line: 52, column: 7)
!1754 = !DILocation(line: 52, column: 7, scope: !1679)
!1755 = !DILocalVariable(name: "__c", arg: 1, scope: !1756, file: !1358, line: 108, type: !103)
!1756 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1358, file: !1358, line: 108, type: !1625, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1757)
!1757 = !{!1755}
!1758 = !DILocation(line: 0, scope: !1756, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 54, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1753, file: !475, line: 53, column: 5)
!1761 = !DILocation(line: 110, column: 10, scope: !1756, inlinedAt: !1759)
!1762 = !DILocation(line: 54, column: 7, scope: !1760)
!1763 = !DILocation(line: 0, scope: !1716, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 55, column: 12, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !475, line: 55, column: 11)
!1766 = !DILocation(line: 96, column: 7, scope: !1716, inlinedAt: !1764)
!1767 = !DILocation(line: 118, column: 5, scope: !1742, inlinedAt: !1764)
!1768 = !DILocation(line: 98, column: 13, scope: !1735, inlinedAt: !1764)
!1769 = !DILocation(line: 99, column: 15, scope: !1734, inlinedAt: !1764)
!1770 = !DILocation(line: 99, column: 11, scope: !1735, inlinedAt: !1764)
!1771 = !DILocation(line: 108, column: 29, scope: !1731, inlinedAt: !1764)
!1772 = !DILocation(line: 0, scope: !1731, inlinedAt: !1764)
!1773 = !DILocation(line: 109, column: 15, scope: !1731, inlinedAt: !1764)
!1774 = !DILocation(line: 112, column: 9, scope: !1733, inlinedAt: !1764)
!1775 = !DILocation(line: 116, column: 5, scope: !1742, inlinedAt: !1764)
!1776 = !DILocation(line: 55, column: 11, scope: !1760)
!1777 = !DILocation(line: 60, column: 5, scope: !1702)
!1778 = !DILocation(line: 62, column: 43, scope: !1702)
!1779 = !DILocation(line: 62, column: 54, scope: !1702)
!1780 = !DILocation(line: 0, scope: !1702)
!1781 = !DILocation(line: 62, column: 20, scope: !1702)
!1782 = !DILocation(line: 63, column: 18, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 63, column: 9)
!1784 = !DILocation(line: 63, column: 9, scope: !1702)
!1785 = !DILocation(line: 0, scope: !1705)
!1786 = !DILocation(line: 77, column: 23, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1705, file: !475, line: 77, column: 5)
!1788 = !DILocation(line: 77, column: 5, scope: !1705)
!1789 = !DILocation(line: 0, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !475, line: 65, column: 13)
!1791 = distinct !DILexicalBlock(scope: !1783, file: !475, line: 64, column: 7)
!1792 = !DILocation(line: 65, column: 13, scope: !1791)
!1793 = !DILocation(line: 67, column: 13, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !475, line: 66, column: 11)
!1795 = !DILocation(line: 69, column: 11, scope: !1794)
!1796 = !DILocation(line: 72, column: 13, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1790, file: !475, line: 71, column: 11)
!1798 = !DILocation(line: 84, column: 11, scope: !1702)
!1799 = !DILocation(line: 84, column: 5, scope: !1702)
!1800 = !DILocation(line: 85, column: 3, scope: !1679)
!1801 = !DILocation(line: 78, column: 11, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1787, file: !475, line: 78, column: 11)
!1803 = !DILocation(line: 78, column: 21, scope: !1802)
!1804 = !DILocation(line: 78, column: 29, scope: !1802)
!1805 = !DILocation(line: 0, scope: !1756, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 80, column: 11, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !475, line: 79, column: 9)
!1808 = !DILocation(line: 110, column: 10, scope: !1756, inlinedAt: !1806)
!1809 = !DILocation(line: 81, column: 29, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !475, line: 81, column: 15)
!1811 = !DILocation(line: 0, scope: !1716, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 81, column: 16, scope: !1810)
!1813 = !DILocation(line: 96, column: 7, scope: !1716, inlinedAt: !1812)
!1814 = !DILocation(line: 118, column: 5, scope: !1742, inlinedAt: !1812)
!1815 = !DILocation(line: 98, column: 13, scope: !1735, inlinedAt: !1812)
!1816 = !DILocation(line: 99, column: 15, scope: !1734, inlinedAt: !1812)
!1817 = !DILocation(line: 99, column: 11, scope: !1735, inlinedAt: !1812)
!1818 = !DILocation(line: 108, column: 29, scope: !1731, inlinedAt: !1812)
!1819 = !DILocation(line: 0, scope: !1731, inlinedAt: !1812)
!1820 = !DILocation(line: 109, column: 15, scope: !1731, inlinedAt: !1812)
!1821 = !DILocation(line: 112, column: 9, scope: !1733, inlinedAt: !1812)
!1822 = !DILocation(line: 116, column: 5, scope: !1742, inlinedAt: !1812)
!1823 = !DILocation(line: 81, column: 15, scope: !1807)
!1824 = !DILocation(line: 77, column: 36, scope: !1787)
!1825 = distinct !{!1825, !1788, !1826, !1117}
!1826 = !DILocation(line: 83, column: 9, scope: !1705)
!1827 = !DILocation(line: 87, column: 1, scope: !1679)
!1828 = !DILocation(line: 0, scope: !1716)
!1829 = !DILocation(line: 96, column: 7, scope: !1716)
!1830 = !DILocation(line: 118, column: 5, scope: !1742)
!1831 = !DILocation(line: 98, column: 13, scope: !1735)
!1832 = !DILocation(line: 99, column: 15, scope: !1734)
!1833 = !DILocation(line: 99, column: 11, scope: !1735)
!1834 = !DILocation(line: 108, column: 29, scope: !1731)
!1835 = !DILocation(line: 0, scope: !1731)
!1836 = !DILocation(line: 109, column: 15, scope: !1731)
!1837 = !DILocation(line: 112, column: 9, scope: !1733)
!1838 = !DILocation(line: 116, column: 5, scope: !1742)
!1839 = !DILocation(line: 119, column: 3, scope: !1716)
!1840 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !497, file: !497, line: 50, type: !1021, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1841)
!1841 = !{!1842}
!1842 = !DILocalVariable(name: "file", arg: 1, scope: !1840, file: !497, line: 50, type: !130)
!1843 = !DILocation(line: 0, scope: !1840)
!1844 = !DILocation(line: 52, column: 13, scope: !1840)
!1845 = !DILocation(line: 53, column: 1, scope: !1840)
!1846 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !497, file: !497, line: 87, type: !1847, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !223}
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "ignore", arg: 1, scope: !1846, file: !497, line: 87, type: !223)
!1851 = !DILocation(line: 0, scope: !1846)
!1852 = !DILocation(line: 89, column: 16, scope: !1846)
!1853 = !DILocation(line: 90, column: 1, scope: !1846)
!1854 = distinct !DISubprogram(name: "close_stdout", scope: !497, file: !497, line: 116, type: !564, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1855)
!1855 = !{!1856}
!1856 = !DILocalVariable(name: "write_error", scope: !1857, file: !497, line: 121, type: !130)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !497, line: 120, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !497, line: 118, column: 7)
!1859 = !DILocation(line: 118, column: 21, scope: !1858)
!1860 = !DILocation(line: 118, column: 7, scope: !1858)
!1861 = !DILocation(line: 118, column: 29, scope: !1858)
!1862 = !DILocation(line: 119, column: 7, scope: !1858)
!1863 = !DILocation(line: 119, column: 12, scope: !1858)
!1864 = !DILocation(line: 119, column: 25, scope: !1858)
!1865 = !DILocation(line: 119, column: 28, scope: !1858)
!1866 = !DILocation(line: 119, column: 34, scope: !1858)
!1867 = !DILocation(line: 118, column: 7, scope: !1854)
!1868 = !DILocation(line: 121, column: 33, scope: !1857)
!1869 = !DILocation(line: 0, scope: !1857)
!1870 = !DILocation(line: 122, column: 11, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1857, file: !497, line: 122, column: 11)
!1872 = !DILocation(line: 0, scope: !1871)
!1873 = !DILocation(line: 122, column: 11, scope: !1857)
!1874 = !DILocation(line: 123, column: 9, scope: !1871)
!1875 = !DILocation(line: 126, column: 9, scope: !1871)
!1876 = !DILocation(line: 128, column: 14, scope: !1857)
!1877 = !DILocation(line: 128, column: 7, scope: !1857)
!1878 = !DILocation(line: 133, column: 42, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1854, file: !497, line: 133, column: 7)
!1880 = !DILocation(line: 133, column: 28, scope: !1879)
!1881 = !DILocation(line: 133, column: 50, scope: !1879)
!1882 = !DILocation(line: 133, column: 7, scope: !1854)
!1883 = !DILocation(line: 134, column: 12, scope: !1879)
!1884 = !DILocation(line: 134, column: 5, scope: !1879)
!1885 = !DILocation(line: 135, column: 1, scope: !1854)
!1886 = !DISubprogram(name: "_exit", scope: !1665, file: !1665, line: 624, type: !991, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!1887 = distinct !DISubprogram(name: "verror", scope: !512, file: !512, line: 251, type: !1888, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !103, !103, !130, !522}
!1890 = !{!1891, !1892, !1893, !1894}
!1891 = !DILocalVariable(name: "status", arg: 1, scope: !1887, file: !512, line: 251, type: !103)
!1892 = !DILocalVariable(name: "errnum", arg: 2, scope: !1887, file: !512, line: 251, type: !103)
!1893 = !DILocalVariable(name: "message", arg: 3, scope: !1887, file: !512, line: 251, type: !130)
!1894 = !DILocalVariable(name: "args", arg: 4, scope: !1887, file: !512, line: 251, type: !522)
!1895 = !DILocation(line: 0, scope: !1887)
!1896 = !DILocation(line: 251, column: 1, scope: !1887)
!1897 = !DILocation(line: 261, column: 3, scope: !1887)
!1898 = !DILocation(line: 265, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1887, file: !512, line: 265, column: 7)
!1900 = !DILocation(line: 265, column: 7, scope: !1887)
!1901 = !DILocation(line: 266, column: 5, scope: !1899)
!1902 = !DILocation(line: 272, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !512, line: 268, column: 5)
!1904 = !DILocation(line: 276, column: 3, scope: !1887)
!1905 = !{i64 0, i64 8, !1001, i64 8, i64 8, !1001, i64 16, i64 8, !1001, i64 24, i64 4, !1070, i64 28, i64 4, !1070}
!1906 = !DILocation(line: 282, column: 1, scope: !1887)
!1907 = distinct !DISubprogram(name: "flush_stdout", scope: !512, file: !512, line: 163, type: !564, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1908)
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "stdout_fd", scope: !1907, file: !512, line: 166, type: !103)
!1910 = !DILocation(line: 0, scope: !1907)
!1911 = !DILocalVariable(name: "fd", arg: 1, scope: !1912, file: !512, line: 145, type: !103)
!1912 = distinct !DISubprogram(name: "is_open", scope: !512, file: !512, line: 145, type: !1625, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1913)
!1913 = !{!1911}
!1914 = !DILocation(line: 0, scope: !1912, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 182, column: 25, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1907, file: !512, line: 182, column: 7)
!1917 = !DILocation(line: 157, column: 15, scope: !1912, inlinedAt: !1915)
!1918 = !DILocation(line: 157, column: 12, scope: !1912, inlinedAt: !1915)
!1919 = !DILocation(line: 182, column: 7, scope: !1907)
!1920 = !DILocation(line: 184, column: 5, scope: !1916)
!1921 = !DILocation(line: 185, column: 1, scope: !1907)
!1922 = distinct !DISubprogram(name: "error_tail", scope: !512, file: !512, line: 219, type: !1888, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1923)
!1923 = !{!1924, !1925, !1926, !1927}
!1924 = !DILocalVariable(name: "status", arg: 1, scope: !1922, file: !512, line: 219, type: !103)
!1925 = !DILocalVariable(name: "errnum", arg: 2, scope: !1922, file: !512, line: 219, type: !103)
!1926 = !DILocalVariable(name: "message", arg: 3, scope: !1922, file: !512, line: 219, type: !130)
!1927 = !DILocalVariable(name: "args", arg: 4, scope: !1922, file: !512, line: 219, type: !522)
!1928 = !DILocation(line: 0, scope: !1922)
!1929 = !DILocation(line: 219, column: 1, scope: !1922)
!1930 = !DILocation(line: 229, column: 13, scope: !1922)
!1931 = !DILocation(line: 135, column: 10, scope: !1932, inlinedAt: !1974)
!1932 = distinct !DISubprogram(name: "vfprintf", scope: !1057, file: !1057, line: 132, type: !1933, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1970)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!103, !1935, !1061, !524}
!1935 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1938, file: !240, line: 51, baseType: !103, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1938, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1938, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1938, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1938, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1938, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1938, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1938, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1938, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1938, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1938, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1938, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1938, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1938, file: !240, line: 70, baseType: !1954, size: 64, offset: 832)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1938, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1938, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1938, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1938, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1938, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1938, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1938, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1938, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1938, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1938, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1938, file: !240, line: 93, baseType: !1954, size: 64, offset: 1344)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1938, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1938, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1938, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1938, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!1970 = !{!1971, !1972, !1973}
!1971 = !DILocalVariable(name: "__stream", arg: 1, scope: !1932, file: !1057, line: 132, type: !1935)
!1972 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1932, file: !1057, line: 133, type: !1061)
!1973 = !DILocalVariable(name: "__ap", arg: 3, scope: !1932, file: !1057, line: 133, type: !524)
!1974 = distinct !DILocation(line: 229, column: 3, scope: !1922)
!1975 = !{!1976, !1978}
!1976 = distinct !{!1976, !1977, !"vfprintf.inline: argument 0"}
!1977 = distinct !{!1977, !"vfprintf.inline"}
!1978 = distinct !{!1978, !1977, !"vfprintf.inline: argument 1"}
!1979 = !DILocation(line: 229, column: 3, scope: !1922)
!1980 = !DILocation(line: 0, scope: !1932, inlinedAt: !1974)
!1981 = !DILocation(line: 133, column: 49, scope: !1932, inlinedAt: !1974)
!1982 = !DILocation(line: 232, column: 3, scope: !1922)
!1983 = !DILocation(line: 233, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1922, file: !512, line: 233, column: 7)
!1985 = !DILocation(line: 233, column: 7, scope: !1922)
!1986 = !DILocalVariable(name: "errnum", arg: 1, scope: !1987, file: !512, line: 188, type: !103)
!1987 = distinct !DISubprogram(name: "print_errno_message", scope: !512, file: !512, line: 188, type: !991, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1988)
!1988 = !{!1986, !1989, !1990}
!1989 = !DILocalVariable(name: "s", scope: !1987, file: !512, line: 190, type: !130)
!1990 = !DILocalVariable(name: "errbuf", scope: !1987, file: !512, line: 193, type: !1991)
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1992)
!1992 = !{!1993}
!1993 = !DISubrange(count: 1024)
!1994 = !DILocation(line: 0, scope: !1987, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 234, column: 5, scope: !1984)
!1996 = !DILocation(line: 193, column: 3, scope: !1987, inlinedAt: !1995)
!1997 = !DILocation(line: 193, column: 8, scope: !1987, inlinedAt: !1995)
!1998 = !DILocation(line: 195, column: 7, scope: !1987, inlinedAt: !1995)
!1999 = !DILocation(line: 207, column: 9, scope: !2000, inlinedAt: !1995)
!2000 = distinct !DILexicalBlock(scope: !1987, file: !512, line: 207, column: 7)
!2001 = !DILocation(line: 207, column: 7, scope: !1987, inlinedAt: !1995)
!2002 = !DILocation(line: 208, column: 9, scope: !2000, inlinedAt: !1995)
!2003 = !DILocation(line: 208, column: 5, scope: !2000, inlinedAt: !1995)
!2004 = !DILocation(line: 214, column: 3, scope: !1987, inlinedAt: !1995)
!2005 = !DILocation(line: 216, column: 1, scope: !1987, inlinedAt: !1995)
!2006 = !DILocation(line: 234, column: 5, scope: !1984)
!2007 = !DILocation(line: 238, column: 3, scope: !1922)
!2008 = !DILocalVariable(name: "__c", arg: 1, scope: !2009, file: !1358, line: 101, type: !103)
!2009 = distinct !DISubprogram(name: "putc_unlocked", scope: !1358, file: !1358, line: 101, type: !2010, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!103, !103, !1936}
!2012 = !{!2008, !2013}
!2013 = !DILocalVariable(name: "__stream", arg: 2, scope: !2009, file: !1358, line: 101, type: !1936)
!2014 = !DILocation(line: 0, scope: !2009, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 238, column: 3, scope: !1922)
!2016 = !DILocation(line: 103, column: 10, scope: !2009, inlinedAt: !2015)
!2017 = !DILocation(line: 240, column: 3, scope: !1922)
!2018 = !DILocation(line: 241, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1922, file: !512, line: 241, column: 7)
!2020 = !DILocation(line: 241, column: 7, scope: !1922)
!2021 = !DILocation(line: 242, column: 5, scope: !2019)
!2022 = !DILocation(line: 243, column: 1, scope: !1922)
!2023 = !DISubprogram(name: "__vfprintf_chk", scope: !1057, file: !1057, line: 96, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!103, !1935, !103, !1061, !524}
!2026 = !DISubprogram(name: "strerror_r", scope: !1187, file: !1187, line: 444, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!124, !103, !124, !127}
!2029 = !DISubprogram(name: "fcntl", scope: !2030, file: !2030, line: 149, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2030 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!103, !103, !103, null}
!2033 = distinct !DISubprogram(name: "error", scope: !512, file: !512, line: 285, type: !2034, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !103, !103, !130, null}
!2036 = !{!2037, !2038, !2039, !2040}
!2037 = !DILocalVariable(name: "status", arg: 1, scope: !2033, file: !512, line: 285, type: !103)
!2038 = !DILocalVariable(name: "errnum", arg: 2, scope: !2033, file: !512, line: 285, type: !103)
!2039 = !DILocalVariable(name: "message", arg: 3, scope: !2033, file: !512, line: 285, type: !130)
!2040 = !DILocalVariable(name: "ap", scope: !2033, file: !512, line: 287, type: !522)
!2041 = !DILocation(line: 0, scope: !2033)
!2042 = !DILocation(line: 287, column: 3, scope: !2033)
!2043 = !DILocation(line: 287, column: 11, scope: !2033)
!2044 = !DILocation(line: 288, column: 3, scope: !2033)
!2045 = !DILocation(line: 289, column: 3, scope: !2033)
!2046 = !DILocation(line: 290, column: 3, scope: !2033)
!2047 = !DILocation(line: 291, column: 1, scope: !2033)
!2048 = !DILocation(line: 0, scope: !519)
!2049 = !DILocation(line: 298, column: 1, scope: !519)
!2050 = !DILocation(line: 302, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !519, file: !512, line: 302, column: 7)
!2052 = !DILocation(line: 302, column: 7, scope: !519)
!2053 = !DILocation(line: 307, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !512, line: 307, column: 11)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !512, line: 303, column: 5)
!2056 = !DILocation(line: 307, column: 27, scope: !2054)
!2057 = !DILocation(line: 308, column: 11, scope: !2054)
!2058 = !DILocation(line: 308, column: 28, scope: !2054)
!2059 = !DILocation(line: 308, column: 25, scope: !2054)
!2060 = !DILocation(line: 309, column: 15, scope: !2054)
!2061 = !DILocation(line: 309, column: 33, scope: !2054)
!2062 = !DILocation(line: 310, column: 19, scope: !2054)
!2063 = !DILocation(line: 311, column: 22, scope: !2054)
!2064 = !DILocation(line: 311, column: 56, scope: !2054)
!2065 = !DILocation(line: 307, column: 11, scope: !2055)
!2066 = !DILocation(line: 316, column: 21, scope: !2055)
!2067 = !DILocation(line: 317, column: 23, scope: !2055)
!2068 = !DILocation(line: 318, column: 5, scope: !2055)
!2069 = !DILocation(line: 327, column: 3, scope: !519)
!2070 = !DILocation(line: 331, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !519, file: !512, line: 331, column: 7)
!2072 = !DILocation(line: 331, column: 7, scope: !519)
!2073 = !DILocation(line: 332, column: 5, scope: !2071)
!2074 = !DILocation(line: 338, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !512, line: 334, column: 5)
!2076 = !DILocation(line: 346, column: 3, scope: !519)
!2077 = !DILocation(line: 350, column: 3, scope: !519)
!2078 = !DILocation(line: 356, column: 1, scope: !519)
!2079 = distinct !DISubprogram(name: "error_at_line", scope: !512, file: !512, line: 359, type: !2080, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !103, !103, !130, !109, !130, null}
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088}
!2083 = !DILocalVariable(name: "status", arg: 1, scope: !2079, file: !512, line: 359, type: !103)
!2084 = !DILocalVariable(name: "errnum", arg: 2, scope: !2079, file: !512, line: 359, type: !103)
!2085 = !DILocalVariable(name: "file_name", arg: 3, scope: !2079, file: !512, line: 359, type: !130)
!2086 = !DILocalVariable(name: "line_number", arg: 4, scope: !2079, file: !512, line: 360, type: !109)
!2087 = !DILocalVariable(name: "message", arg: 5, scope: !2079, file: !512, line: 360, type: !130)
!2088 = !DILocalVariable(name: "ap", scope: !2079, file: !512, line: 362, type: !522)
!2089 = !DILocation(line: 0, scope: !2079)
!2090 = !DILocation(line: 362, column: 3, scope: !2079)
!2091 = !DILocation(line: 362, column: 11, scope: !2079)
!2092 = !DILocation(line: 363, column: 3, scope: !2079)
!2093 = !DILocation(line: 364, column: 3, scope: !2079)
!2094 = !DILocation(line: 366, column: 3, scope: !2079)
!2095 = !DILocation(line: 367, column: 1, scope: !2079)
!2096 = distinct !DISubprogram(name: "fpurge", scope: !860, file: !860, line: 32, type: !2097, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2133)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!103, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2101, file: !240, line: 51, baseType: !103, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2101, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2101, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2101, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2101, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2101, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2101, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2101, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2101, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2101, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2101, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2101, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2101, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2101, file: !240, line: 70, baseType: !2117, size: 64, offset: 832)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2101, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2101, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2101, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2101, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2101, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2101, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2101, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2101, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2101, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2101, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2101, file: !240, line: 93, baseType: !2117, size: 64, offset: 1344)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2101, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2101, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2101, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2101, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!2133 = !{!2134}
!2134 = !DILocalVariable(name: "fp", arg: 1, scope: !2096, file: !860, line: 32, type: !2099)
!2135 = !DILocation(line: 0, scope: !2096)
!2136 = !DILocation(line: 36, column: 3, scope: !2096)
!2137 = !DILocation(line: 38, column: 3, scope: !2096)
!2138 = !DISubprogram(name: "__fpurge", scope: !2139, file: !2139, line: 72, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2139 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2099}
!2142 = distinct !DISubprogram(name: "getprogname", scope: !862, file: !862, line: 54, type: !2143, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !1055)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!130}
!2145 = !DILocation(line: 58, column: 10, scope: !2142)
!2146 = !DILocation(line: 58, column: 3, scope: !2142)
!2147 = distinct !DISubprogram(name: "set_program_name", scope: !569, file: !569, line: 37, type: !1021, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2148)
!2148 = !{!2149, !2150, !2151}
!2149 = !DILocalVariable(name: "argv0", arg: 1, scope: !2147, file: !569, line: 37, type: !130)
!2150 = !DILocalVariable(name: "slash", scope: !2147, file: !569, line: 44, type: !130)
!2151 = !DILocalVariable(name: "base", scope: !2147, file: !569, line: 45, type: !130)
!2152 = !DILocation(line: 0, scope: !2147)
!2153 = !DILocation(line: 44, column: 23, scope: !2147)
!2154 = !DILocation(line: 45, column: 22, scope: !2147)
!2155 = !DILocation(line: 46, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2147, file: !569, line: 46, column: 7)
!2157 = !DILocation(line: 46, column: 9, scope: !2156)
!2158 = !DILocation(line: 46, column: 25, scope: !2156)
!2159 = !DILocation(line: 46, column: 40, scope: !2156)
!2160 = !DILocalVariable(name: "__s1", arg: 1, scope: !2161, file: !1083, line: 974, type: !1215)
!2161 = distinct !DISubprogram(name: "memeq", scope: !1083, file: !1083, line: 974, type: !2162, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!223, !1215, !1215, !127}
!2164 = !{!2160, !2165, !2166}
!2165 = !DILocalVariable(name: "__s2", arg: 2, scope: !2161, file: !1083, line: 974, type: !1215)
!2166 = !DILocalVariable(name: "__n", arg: 3, scope: !2161, file: !1083, line: 974, type: !127)
!2167 = !DILocation(line: 0, scope: !2161, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 46, column: 28, scope: !2156)
!2169 = !DILocation(line: 976, column: 11, scope: !2161, inlinedAt: !2168)
!2170 = !DILocation(line: 976, column: 10, scope: !2161, inlinedAt: !2168)
!2171 = !DILocation(line: 46, column: 7, scope: !2147)
!2172 = !DILocation(line: 49, column: 11, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !569, line: 49, column: 11)
!2174 = distinct !DILexicalBlock(scope: !2156, file: !569, line: 47, column: 5)
!2175 = !DILocation(line: 49, column: 36, scope: !2173)
!2176 = !DILocation(line: 49, column: 11, scope: !2174)
!2177 = !DILocation(line: 65, column: 16, scope: !2147)
!2178 = !DILocation(line: 71, column: 27, scope: !2147)
!2179 = !DILocation(line: 74, column: 33, scope: !2147)
!2180 = !DILocation(line: 76, column: 1, scope: !2147)
!2181 = !DISubprogram(name: "strrchr", scope: !1187, file: !1187, line: 273, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2182 = !DILocation(line: 0, scope: !578)
!2183 = !DILocation(line: 40, column: 29, scope: !578)
!2184 = !DILocation(line: 41, column: 19, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !578, file: !579, line: 41, column: 7)
!2186 = !DILocation(line: 41, column: 7, scope: !578)
!2187 = !DILocation(line: 47, column: 3, scope: !578)
!2188 = !DILocation(line: 48, column: 3, scope: !578)
!2189 = !DILocation(line: 48, column: 13, scope: !578)
!2190 = !DILocalVariable(name: "ps", arg: 1, scope: !2191, file: !2192, line: 1135, type: !2195)
!2191 = distinct !DISubprogram(name: "mbszero", scope: !2192, file: !2192, line: 1135, type: !2193, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2196)
!2192 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!2196 = !{!2190}
!2197 = !DILocation(line: 0, scope: !2191, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 48, column: 18, scope: !578)
!2199 = !DILocalVariable(name: "__dest", arg: 1, scope: !2200, file: !2201, line: 57, type: !125)
!2200 = distinct !DISubprogram(name: "memset", scope: !2201, file: !2201, line: 57, type: !2202, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2204)
!2201 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!125, !125, !103, !127}
!2204 = !{!2199, !2205, !2206}
!2205 = !DILocalVariable(name: "__ch", arg: 2, scope: !2200, file: !2201, line: 57, type: !103)
!2206 = !DILocalVariable(name: "__len", arg: 3, scope: !2200, file: !2201, line: 57, type: !127)
!2207 = !DILocation(line: 0, scope: !2200, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 1137, column: 3, scope: !2191, inlinedAt: !2198)
!2209 = !DILocation(line: 59, column: 10, scope: !2200, inlinedAt: !2208)
!2210 = !DILocation(line: 49, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !578, file: !579, line: 49, column: 7)
!2212 = !DILocation(line: 49, column: 39, scope: !2211)
!2213 = !DILocation(line: 49, column: 44, scope: !2211)
!2214 = !DILocation(line: 54, column: 1, scope: !578)
!2215 = !DISubprogram(name: "mbrtoc32", scope: !590, file: !590, line: 57, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!127, !2218, !1061, !127, !2220}
!2218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2219)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2195)
!2221 = distinct !DISubprogram(name: "clone_quoting_options", scope: !609, file: !609, line: 113, type: !2222, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2225)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!2224, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!2225 = !{!2226, !2227, !2228}
!2226 = !DILocalVariable(name: "o", arg: 1, scope: !2221, file: !609, line: 113, type: !2224)
!2227 = !DILocalVariable(name: "saved_errno", scope: !2221, file: !609, line: 115, type: !103)
!2228 = !DILocalVariable(name: "p", scope: !2221, file: !609, line: 116, type: !2224)
!2229 = !DILocation(line: 0, scope: !2221)
!2230 = !DILocation(line: 115, column: 21, scope: !2221)
!2231 = !DILocation(line: 116, column: 40, scope: !2221)
!2232 = !DILocation(line: 116, column: 31, scope: !2221)
!2233 = !DILocation(line: 118, column: 9, scope: !2221)
!2234 = !DILocation(line: 119, column: 3, scope: !2221)
!2235 = distinct !DISubprogram(name: "get_quoting_style", scope: !609, file: !609, line: 124, type: !2236, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2240)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!635, !2238}
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!2240 = !{!2241}
!2241 = !DILocalVariable(name: "o", arg: 1, scope: !2235, file: !609, line: 124, type: !2238)
!2242 = !DILocation(line: 0, scope: !2235)
!2243 = !DILocation(line: 126, column: 11, scope: !2235)
!2244 = !DILocation(line: 126, column: 46, scope: !2235)
!2245 = !{!2246, !1003, i64 0}
!2246 = !{!"quoting_options", !1003, i64 0, !1071, i64 4, !1003, i64 8, !1002, i64 40, !1002, i64 48}
!2247 = !DILocation(line: 126, column: 3, scope: !2235)
!2248 = distinct !DISubprogram(name: "set_quoting_style", scope: !609, file: !609, line: 132, type: !2249, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2224, !635}
!2251 = !{!2252, !2253}
!2252 = !DILocalVariable(name: "o", arg: 1, scope: !2248, file: !609, line: 132, type: !2224)
!2253 = !DILocalVariable(name: "s", arg: 2, scope: !2248, file: !609, line: 132, type: !635)
!2254 = !DILocation(line: 0, scope: !2248)
!2255 = !DILocation(line: 134, column: 4, scope: !2248)
!2256 = !DILocation(line: 134, column: 45, scope: !2248)
!2257 = !DILocation(line: 135, column: 1, scope: !2248)
!2258 = distinct !DISubprogram(name: "set_char_quoting", scope: !609, file: !609, line: 143, type: !2259, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!103, !2224, !4, !103}
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2268, !2269}
!2262 = !DILocalVariable(name: "o", arg: 1, scope: !2258, file: !609, line: 143, type: !2224)
!2263 = !DILocalVariable(name: "c", arg: 2, scope: !2258, file: !609, line: 143, type: !4)
!2264 = !DILocalVariable(name: "i", arg: 3, scope: !2258, file: !609, line: 143, type: !103)
!2265 = !DILocalVariable(name: "uc", scope: !2258, file: !609, line: 145, type: !132)
!2266 = !DILocalVariable(name: "p", scope: !2258, file: !609, line: 146, type: !2267)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2268 = !DILocalVariable(name: "shift", scope: !2258, file: !609, line: 148, type: !103)
!2269 = !DILocalVariable(name: "r", scope: !2258, file: !609, line: 149, type: !109)
!2270 = !DILocation(line: 0, scope: !2258)
!2271 = !DILocation(line: 147, column: 6, scope: !2258)
!2272 = !DILocation(line: 147, column: 41, scope: !2258)
!2273 = !DILocation(line: 147, column: 62, scope: !2258)
!2274 = !DILocation(line: 147, column: 57, scope: !2258)
!2275 = !DILocation(line: 148, column: 15, scope: !2258)
!2276 = !DILocation(line: 149, column: 21, scope: !2258)
!2277 = !DILocation(line: 149, column: 24, scope: !2258)
!2278 = !DILocation(line: 149, column: 34, scope: !2258)
!2279 = !DILocation(line: 150, column: 19, scope: !2258)
!2280 = !DILocation(line: 150, column: 24, scope: !2258)
!2281 = !DILocation(line: 150, column: 6, scope: !2258)
!2282 = !DILocation(line: 151, column: 3, scope: !2258)
!2283 = distinct !DISubprogram(name: "set_quoting_flags", scope: !609, file: !609, line: 159, type: !2284, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!103, !2224, !103}
!2286 = !{!2287, !2288, !2289}
!2287 = !DILocalVariable(name: "o", arg: 1, scope: !2283, file: !609, line: 159, type: !2224)
!2288 = !DILocalVariable(name: "i", arg: 2, scope: !2283, file: !609, line: 159, type: !103)
!2289 = !DILocalVariable(name: "r", scope: !2283, file: !609, line: 163, type: !103)
!2290 = !DILocation(line: 0, scope: !2283)
!2291 = !DILocation(line: 161, column: 8, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2283, file: !609, line: 161, column: 7)
!2293 = !DILocation(line: 161, column: 7, scope: !2283)
!2294 = !DILocation(line: 163, column: 14, scope: !2283)
!2295 = !{!2246, !1071, i64 4}
!2296 = !DILocation(line: 164, column: 12, scope: !2283)
!2297 = !DILocation(line: 165, column: 3, scope: !2283)
!2298 = distinct !DISubprogram(name: "set_custom_quoting", scope: !609, file: !609, line: 169, type: !2299, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !2224, !130, !130}
!2301 = !{!2302, !2303, !2304}
!2302 = !DILocalVariable(name: "o", arg: 1, scope: !2298, file: !609, line: 169, type: !2224)
!2303 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2298, file: !609, line: 170, type: !130)
!2304 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2298, file: !609, line: 170, type: !130)
!2305 = !DILocation(line: 0, scope: !2298)
!2306 = !DILocation(line: 172, column: 8, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2298, file: !609, line: 172, column: 7)
!2308 = !DILocation(line: 172, column: 7, scope: !2298)
!2309 = !DILocation(line: 174, column: 12, scope: !2298)
!2310 = !DILocation(line: 175, column: 8, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2298, file: !609, line: 175, column: 7)
!2312 = !DILocation(line: 175, column: 19, scope: !2311)
!2313 = !DILocation(line: 176, column: 5, scope: !2311)
!2314 = !DILocation(line: 177, column: 6, scope: !2298)
!2315 = !DILocation(line: 177, column: 17, scope: !2298)
!2316 = !{!2246, !1002, i64 40}
!2317 = !DILocation(line: 178, column: 6, scope: !2298)
!2318 = !DILocation(line: 178, column: 18, scope: !2298)
!2319 = !{!2246, !1002, i64 48}
!2320 = !DILocation(line: 179, column: 1, scope: !2298)
!2321 = !DISubprogram(name: "abort", scope: !1191, file: !1191, line: 598, type: !564, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2322 = distinct !DISubprogram(name: "quotearg_buffer", scope: !609, file: !609, line: 774, type: !2323, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!127, !124, !127, !130, !127, !2238}
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333}
!2326 = !DILocalVariable(name: "buffer", arg: 1, scope: !2322, file: !609, line: 774, type: !124)
!2327 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2322, file: !609, line: 774, type: !127)
!2328 = !DILocalVariable(name: "arg", arg: 3, scope: !2322, file: !609, line: 775, type: !130)
!2329 = !DILocalVariable(name: "argsize", arg: 4, scope: !2322, file: !609, line: 775, type: !127)
!2330 = !DILocalVariable(name: "o", arg: 5, scope: !2322, file: !609, line: 776, type: !2238)
!2331 = !DILocalVariable(name: "p", scope: !2322, file: !609, line: 778, type: !2238)
!2332 = !DILocalVariable(name: "saved_errno", scope: !2322, file: !609, line: 779, type: !103)
!2333 = !DILocalVariable(name: "r", scope: !2322, file: !609, line: 780, type: !127)
!2334 = !DILocation(line: 0, scope: !2322)
!2335 = !DILocation(line: 778, column: 37, scope: !2322)
!2336 = !DILocation(line: 779, column: 21, scope: !2322)
!2337 = !DILocation(line: 781, column: 43, scope: !2322)
!2338 = !DILocation(line: 781, column: 53, scope: !2322)
!2339 = !DILocation(line: 781, column: 63, scope: !2322)
!2340 = !DILocation(line: 782, column: 43, scope: !2322)
!2341 = !DILocation(line: 782, column: 58, scope: !2322)
!2342 = !DILocation(line: 780, column: 14, scope: !2322)
!2343 = !DILocation(line: 783, column: 9, scope: !2322)
!2344 = !DILocation(line: 784, column: 3, scope: !2322)
!2345 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !609, file: !609, line: 251, type: !2346, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2350)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!127, !124, !127, !130, !127, !635, !103, !2348, !130, !130}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2375, !2377, !2380, !2381, !2382, !2383, !2386, !2387, !2390, !2394, !2395, !2403, !2406, !2407, !2409, !2410, !2411, !2412}
!2351 = !DILocalVariable(name: "buffer", arg: 1, scope: !2345, file: !609, line: 251, type: !124)
!2352 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2345, file: !609, line: 251, type: !127)
!2353 = !DILocalVariable(name: "arg", arg: 3, scope: !2345, file: !609, line: 252, type: !130)
!2354 = !DILocalVariable(name: "argsize", arg: 4, scope: !2345, file: !609, line: 252, type: !127)
!2355 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2345, file: !609, line: 253, type: !635)
!2356 = !DILocalVariable(name: "flags", arg: 6, scope: !2345, file: !609, line: 253, type: !103)
!2357 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2345, file: !609, line: 254, type: !2348)
!2358 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2345, file: !609, line: 255, type: !130)
!2359 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2345, file: !609, line: 256, type: !130)
!2360 = !DILocalVariable(name: "unibyte_locale", scope: !2345, file: !609, line: 258, type: !223)
!2361 = !DILocalVariable(name: "len", scope: !2345, file: !609, line: 260, type: !127)
!2362 = !DILocalVariable(name: "orig_buffersize", scope: !2345, file: !609, line: 261, type: !127)
!2363 = !DILocalVariable(name: "quote_string", scope: !2345, file: !609, line: 262, type: !130)
!2364 = !DILocalVariable(name: "quote_string_len", scope: !2345, file: !609, line: 263, type: !127)
!2365 = !DILocalVariable(name: "backslash_escapes", scope: !2345, file: !609, line: 264, type: !223)
!2366 = !DILocalVariable(name: "elide_outer_quotes", scope: !2345, file: !609, line: 265, type: !223)
!2367 = !DILocalVariable(name: "encountered_single_quote", scope: !2345, file: !609, line: 266, type: !223)
!2368 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2345, file: !609, line: 267, type: !223)
!2369 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2345, file: !609, line: 309, type: !223)
!2370 = !DILocalVariable(name: "lq", scope: !2371, file: !609, line: 361, type: !130)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !609, line: 361, column: 11)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !609, line: 360, column: 13)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !609, line: 333, column: 7)
!2374 = distinct !DILexicalBlock(scope: !2345, file: !609, line: 312, column: 5)
!2375 = !DILocalVariable(name: "i", scope: !2376, file: !609, line: 395, type: !127)
!2376 = distinct !DILexicalBlock(scope: !2345, file: !609, line: 395, column: 3)
!2377 = !DILocalVariable(name: "is_right_quote", scope: !2378, file: !609, line: 397, type: !223)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !609, line: 396, column: 5)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !609, line: 395, column: 3)
!2380 = !DILocalVariable(name: "escaping", scope: !2378, file: !609, line: 398, type: !223)
!2381 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2378, file: !609, line: 399, type: !223)
!2382 = !DILocalVariable(name: "c", scope: !2378, file: !609, line: 417, type: !132)
!2383 = !DILocalVariable(name: "m", scope: !2384, file: !609, line: 598, type: !127)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 596, column: 11)
!2385 = distinct !DILexicalBlock(scope: !2378, file: !609, line: 419, column: 9)
!2386 = !DILocalVariable(name: "printable", scope: !2384, file: !609, line: 600, type: !223)
!2387 = !DILocalVariable(name: "mbs", scope: !2388, file: !609, line: 609, type: !696)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !609, line: 608, column: 15)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !609, line: 602, column: 17)
!2390 = !DILocalVariable(name: "w", scope: !2391, file: !609, line: 618, type: !589)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !609, line: 617, column: 19)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !609, line: 616, column: 17)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !609, line: 616, column: 17)
!2394 = !DILocalVariable(name: "bytes", scope: !2391, file: !609, line: 619, type: !127)
!2395 = !DILocalVariable(name: "j", scope: !2396, file: !609, line: 648, type: !127)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !609, line: 648, column: 29)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !609, line: 647, column: 27)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !609, line: 645, column: 29)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !609, line: 636, column: 23)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !609, line: 628, column: 30)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !609, line: 623, column: 30)
!2402 = distinct !DILexicalBlock(scope: !2391, file: !609, line: 621, column: 25)
!2403 = !DILocalVariable(name: "ilim", scope: !2404, file: !609, line: 674, type: !127)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !609, line: 671, column: 15)
!2405 = distinct !DILexicalBlock(scope: !2384, file: !609, line: 670, column: 17)
!2406 = !DILabel(scope: !2345, name: "process_input", file: !609, line: 308)
!2407 = !DILabel(scope: !2408, name: "c_and_shell_escape", file: !609, line: 502)
!2408 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 478, column: 9)
!2409 = !DILabel(scope: !2408, name: "c_escape", file: !609, line: 507)
!2410 = !DILabel(scope: !2378, name: "store_escape", file: !609, line: 709)
!2411 = !DILabel(scope: !2378, name: "store_c", file: !609, line: 712)
!2412 = !DILabel(scope: !2345, name: "force_outer_quoting_style", file: !609, line: 753)
!2413 = !DILocation(line: 0, scope: !2345)
!2414 = !DILocation(line: 258, column: 25, scope: !2345)
!2415 = !DILocation(line: 258, column: 36, scope: !2345)
!2416 = !DILocation(line: 267, column: 3, scope: !2345)
!2417 = !DILocation(line: 261, column: 10, scope: !2345)
!2418 = !DILocation(line: 262, column: 15, scope: !2345)
!2419 = !DILocation(line: 263, column: 10, scope: !2345)
!2420 = !DILocation(line: 308, column: 2, scope: !2345)
!2421 = !DILocation(line: 311, column: 3, scope: !2345)
!2422 = !DILocation(line: 318, column: 11, scope: !2374)
!2423 = !DILocation(line: 319, column: 9, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !609, line: 319, column: 9)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !609, line: 319, column: 9)
!2426 = distinct !DILexicalBlock(scope: !2374, file: !609, line: 318, column: 11)
!2427 = !DILocation(line: 319, column: 9, scope: !2425)
!2428 = !DILocation(line: 0, scope: !687, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 357, column: 26, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !609, line: 335, column: 11)
!2431 = distinct !DILexicalBlock(scope: !2373, file: !609, line: 334, column: 13)
!2432 = !DILocation(line: 199, column: 29, scope: !687, inlinedAt: !2429)
!2433 = !DILocation(line: 201, column: 19, scope: !2434, inlinedAt: !2429)
!2434 = distinct !DILexicalBlock(scope: !687, file: !609, line: 201, column: 7)
!2435 = !DILocation(line: 201, column: 7, scope: !687, inlinedAt: !2429)
!2436 = !DILocation(line: 229, column: 3, scope: !687, inlinedAt: !2429)
!2437 = !DILocation(line: 230, column: 3, scope: !687, inlinedAt: !2429)
!2438 = !DILocation(line: 230, column: 13, scope: !687, inlinedAt: !2429)
!2439 = !DILocalVariable(name: "ps", arg: 1, scope: !2440, file: !2192, line: 1135, type: !2443)
!2440 = distinct !DISubprogram(name: "mbszero", scope: !2192, file: !2192, line: 1135, type: !2441, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2444)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!2444 = !{!2439}
!2445 = !DILocation(line: 0, scope: !2440, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 230, column: 18, scope: !687, inlinedAt: !2429)
!2447 = !DILocalVariable(name: "__dest", arg: 1, scope: !2448, file: !2201, line: 57, type: !125)
!2448 = distinct !DISubprogram(name: "memset", scope: !2201, file: !2201, line: 57, type: !2202, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2449)
!2449 = !{!2447, !2450, !2451}
!2450 = !DILocalVariable(name: "__ch", arg: 2, scope: !2448, file: !2201, line: 57, type: !103)
!2451 = !DILocalVariable(name: "__len", arg: 3, scope: !2448, file: !2201, line: 57, type: !127)
!2452 = !DILocation(line: 0, scope: !2448, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 1137, column: 3, scope: !2440, inlinedAt: !2446)
!2454 = !DILocation(line: 59, column: 10, scope: !2448, inlinedAt: !2453)
!2455 = !DILocation(line: 231, column: 7, scope: !2456, inlinedAt: !2429)
!2456 = distinct !DILexicalBlock(scope: !687, file: !609, line: 231, column: 7)
!2457 = !DILocation(line: 231, column: 40, scope: !2456, inlinedAt: !2429)
!2458 = !DILocation(line: 231, column: 45, scope: !2456, inlinedAt: !2429)
!2459 = !DILocation(line: 235, column: 1, scope: !687, inlinedAt: !2429)
!2460 = !DILocation(line: 0, scope: !687, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 358, column: 27, scope: !2430)
!2462 = !DILocation(line: 199, column: 29, scope: !687, inlinedAt: !2461)
!2463 = !DILocation(line: 201, column: 19, scope: !2434, inlinedAt: !2461)
!2464 = !DILocation(line: 201, column: 7, scope: !687, inlinedAt: !2461)
!2465 = !DILocation(line: 229, column: 3, scope: !687, inlinedAt: !2461)
!2466 = !DILocation(line: 230, column: 3, scope: !687, inlinedAt: !2461)
!2467 = !DILocation(line: 230, column: 13, scope: !687, inlinedAt: !2461)
!2468 = !DILocation(line: 0, scope: !2440, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 230, column: 18, scope: !687, inlinedAt: !2461)
!2470 = !DILocation(line: 0, scope: !2448, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1137, column: 3, scope: !2440, inlinedAt: !2469)
!2472 = !DILocation(line: 59, column: 10, scope: !2448, inlinedAt: !2471)
!2473 = !DILocation(line: 231, column: 7, scope: !2456, inlinedAt: !2461)
!2474 = !DILocation(line: 231, column: 40, scope: !2456, inlinedAt: !2461)
!2475 = !DILocation(line: 231, column: 45, scope: !2456, inlinedAt: !2461)
!2476 = !DILocation(line: 235, column: 1, scope: !687, inlinedAt: !2461)
!2477 = !DILocation(line: 360, column: 13, scope: !2373)
!2478 = !DILocation(line: 0, scope: !2371)
!2479 = !DILocation(line: 361, column: 45, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2371, file: !609, line: 361, column: 11)
!2481 = !DILocation(line: 361, column: 11, scope: !2371)
!2482 = !DILocation(line: 362, column: 13, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !609, line: 362, column: 13)
!2484 = distinct !DILexicalBlock(scope: !2480, file: !609, line: 362, column: 13)
!2485 = !DILocation(line: 362, column: 13, scope: !2484)
!2486 = !DILocation(line: 361, column: 52, scope: !2480)
!2487 = distinct !{!2487, !2481, !2488, !1117}
!2488 = !DILocation(line: 362, column: 13, scope: !2371)
!2489 = !DILocation(line: 260, column: 10, scope: !2345)
!2490 = !DILocation(line: 365, column: 28, scope: !2373)
!2491 = !DILocation(line: 367, column: 7, scope: !2374)
!2492 = !DILocation(line: 370, column: 7, scope: !2374)
!2493 = !DILocation(line: 376, column: 11, scope: !2374)
!2494 = !DILocation(line: 381, column: 11, scope: !2374)
!2495 = !DILocation(line: 382, column: 9, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !609, line: 382, column: 9)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !609, line: 382, column: 9)
!2498 = distinct !DILexicalBlock(scope: !2374, file: !609, line: 381, column: 11)
!2499 = !DILocation(line: 382, column: 9, scope: !2497)
!2500 = !DILocation(line: 389, column: 7, scope: !2374)
!2501 = !DILocation(line: 392, column: 7, scope: !2374)
!2502 = !DILocation(line: 0, scope: !2376)
!2503 = !DILocation(line: 395, column: 8, scope: !2376)
!2504 = !DILocation(line: 395, scope: !2376)
!2505 = !DILocation(line: 395, column: 34, scope: !2379)
!2506 = !DILocation(line: 395, column: 26, scope: !2379)
!2507 = !DILocation(line: 395, column: 48, scope: !2379)
!2508 = !DILocation(line: 395, column: 55, scope: !2379)
!2509 = !DILocation(line: 395, column: 3, scope: !2376)
!2510 = !DILocation(line: 395, column: 67, scope: !2379)
!2511 = !DILocation(line: 0, scope: !2378)
!2512 = !DILocation(line: 402, column: 11, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2378, file: !609, line: 401, column: 11)
!2514 = !DILocation(line: 404, column: 17, scope: !2513)
!2515 = !DILocation(line: 405, column: 39, scope: !2513)
!2516 = !DILocation(line: 409, column: 32, scope: !2513)
!2517 = !DILocation(line: 405, column: 19, scope: !2513)
!2518 = !DILocation(line: 405, column: 15, scope: !2513)
!2519 = !DILocation(line: 410, column: 11, scope: !2513)
!2520 = !DILocation(line: 410, column: 25, scope: !2513)
!2521 = !DILocalVariable(name: "__s1", arg: 1, scope: !2522, file: !1083, line: 974, type: !1215)
!2522 = distinct !DISubprogram(name: "memeq", scope: !1083, file: !1083, line: 974, type: !2162, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2523)
!2523 = !{!2521, !2524, !2525}
!2524 = !DILocalVariable(name: "__s2", arg: 2, scope: !2522, file: !1083, line: 974, type: !1215)
!2525 = !DILocalVariable(name: "__n", arg: 3, scope: !2522, file: !1083, line: 974, type: !127)
!2526 = !DILocation(line: 0, scope: !2522, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 410, column: 14, scope: !2513)
!2528 = !DILocation(line: 976, column: 11, scope: !2522, inlinedAt: !2527)
!2529 = !DILocation(line: 976, column: 10, scope: !2522, inlinedAt: !2527)
!2530 = !DILocation(line: 401, column: 11, scope: !2378)
!2531 = !DILocation(line: 417, column: 25, scope: !2378)
!2532 = !DILocation(line: 418, column: 7, scope: !2378)
!2533 = !DILocation(line: 421, column: 15, scope: !2385)
!2534 = !DILocation(line: 423, column: 15, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !609, line: 423, column: 15)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !609, line: 422, column: 13)
!2537 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 421, column: 15)
!2538 = !DILocation(line: 423, column: 15, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !609, line: 423, column: 15)
!2540 = !DILocation(line: 423, column: 15, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !609, line: 423, column: 15)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !609, line: 423, column: 15)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !609, line: 423, column: 15)
!2544 = !DILocation(line: 423, column: 15, scope: !2542)
!2545 = !DILocation(line: 423, column: 15, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !609, line: 423, column: 15)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !609, line: 423, column: 15)
!2548 = !DILocation(line: 423, column: 15, scope: !2547)
!2549 = !DILocation(line: 423, column: 15, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !609, line: 423, column: 15)
!2551 = distinct !DILexicalBlock(scope: !2543, file: !609, line: 423, column: 15)
!2552 = !DILocation(line: 423, column: 15, scope: !2551)
!2553 = !DILocation(line: 423, column: 15, scope: !2543)
!2554 = !DILocation(line: 423, column: 15, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !609, line: 423, column: 15)
!2556 = distinct !DILexicalBlock(scope: !2535, file: !609, line: 423, column: 15)
!2557 = !DILocation(line: 423, column: 15, scope: !2556)
!2558 = !DILocation(line: 431, column: 19, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2536, file: !609, line: 430, column: 19)
!2560 = !DILocation(line: 431, column: 24, scope: !2559)
!2561 = !DILocation(line: 431, column: 28, scope: !2559)
!2562 = !DILocation(line: 431, column: 38, scope: !2559)
!2563 = !DILocation(line: 431, column: 48, scope: !2559)
!2564 = !DILocation(line: 431, column: 59, scope: !2559)
!2565 = !DILocation(line: 433, column: 19, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !609, line: 433, column: 19)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !609, line: 433, column: 19)
!2568 = distinct !DILexicalBlock(scope: !2559, file: !609, line: 432, column: 17)
!2569 = !DILocation(line: 433, column: 19, scope: !2567)
!2570 = !DILocation(line: 434, column: 19, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !609, line: 434, column: 19)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !609, line: 434, column: 19)
!2573 = !DILocation(line: 434, column: 19, scope: !2572)
!2574 = !DILocation(line: 435, column: 17, scope: !2568)
!2575 = !DILocation(line: 442, column: 20, scope: !2537)
!2576 = !DILocation(line: 447, column: 11, scope: !2385)
!2577 = !DILocation(line: 450, column: 19, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 448, column: 13)
!2579 = !DILocation(line: 456, column: 19, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2578, file: !609, line: 455, column: 19)
!2581 = !DILocation(line: 456, column: 24, scope: !2580)
!2582 = !DILocation(line: 456, column: 28, scope: !2580)
!2583 = !DILocation(line: 456, column: 38, scope: !2580)
!2584 = !DILocation(line: 456, column: 47, scope: !2580)
!2585 = !DILocation(line: 456, column: 41, scope: !2580)
!2586 = !DILocation(line: 456, column: 52, scope: !2580)
!2587 = !DILocation(line: 455, column: 19, scope: !2578)
!2588 = !DILocation(line: 457, column: 25, scope: !2580)
!2589 = !DILocation(line: 457, column: 17, scope: !2580)
!2590 = !DILocation(line: 464, column: 25, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2580, file: !609, line: 458, column: 19)
!2592 = !DILocation(line: 468, column: 21, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !609, line: 468, column: 21)
!2594 = distinct !DILexicalBlock(scope: !2591, file: !609, line: 468, column: 21)
!2595 = !DILocation(line: 468, column: 21, scope: !2594)
!2596 = !DILocation(line: 469, column: 21, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !609, line: 469, column: 21)
!2598 = distinct !DILexicalBlock(scope: !2591, file: !609, line: 469, column: 21)
!2599 = !DILocation(line: 469, column: 21, scope: !2598)
!2600 = !DILocation(line: 470, column: 21, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !609, line: 470, column: 21)
!2602 = distinct !DILexicalBlock(scope: !2591, file: !609, line: 470, column: 21)
!2603 = !DILocation(line: 470, column: 21, scope: !2602)
!2604 = !DILocation(line: 471, column: 21, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !609, line: 471, column: 21)
!2606 = distinct !DILexicalBlock(scope: !2591, file: !609, line: 471, column: 21)
!2607 = !DILocation(line: 471, column: 21, scope: !2606)
!2608 = !DILocation(line: 472, column: 21, scope: !2591)
!2609 = !DILocation(line: 482, column: 33, scope: !2408)
!2610 = !DILocation(line: 483, column: 33, scope: !2408)
!2611 = !DILocation(line: 485, column: 33, scope: !2408)
!2612 = !DILocation(line: 486, column: 33, scope: !2408)
!2613 = !DILocation(line: 487, column: 33, scope: !2408)
!2614 = !DILocation(line: 490, column: 17, scope: !2408)
!2615 = !DILocation(line: 492, column: 21, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !609, line: 491, column: 15)
!2617 = distinct !DILexicalBlock(scope: !2408, file: !609, line: 490, column: 17)
!2618 = !DILocation(line: 499, column: 35, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2408, file: !609, line: 499, column: 17)
!2620 = !DILocation(line: 0, scope: !2408)
!2621 = !DILocation(line: 502, column: 11, scope: !2408)
!2622 = !DILocation(line: 504, column: 17, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2408, file: !609, line: 503, column: 17)
!2624 = !DILocation(line: 507, column: 11, scope: !2408)
!2625 = !DILocation(line: 508, column: 17, scope: !2408)
!2626 = !DILocation(line: 517, column: 15, scope: !2385)
!2627 = !DILocation(line: 517, column: 40, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 517, column: 15)
!2629 = !DILocation(line: 517, column: 47, scope: !2628)
!2630 = !DILocation(line: 517, column: 18, scope: !2628)
!2631 = !DILocation(line: 521, column: 17, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 521, column: 15)
!2633 = !DILocation(line: 521, column: 15, scope: !2385)
!2634 = !DILocation(line: 525, column: 11, scope: !2385)
!2635 = !DILocation(line: 537, column: 15, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 536, column: 15)
!2637 = !DILocation(line: 536, column: 15, scope: !2385)
!2638 = !DILocation(line: 544, column: 15, scope: !2385)
!2639 = !DILocation(line: 546, column: 19, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !609, line: 545, column: 13)
!2641 = distinct !DILexicalBlock(scope: !2385, file: !609, line: 544, column: 15)
!2642 = !DILocation(line: 549, column: 19, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !609, line: 549, column: 19)
!2644 = !DILocation(line: 549, column: 30, scope: !2643)
!2645 = !DILocation(line: 558, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !609, line: 558, column: 15)
!2647 = distinct !DILexicalBlock(scope: !2640, file: !609, line: 558, column: 15)
!2648 = !DILocation(line: 558, column: 15, scope: !2647)
!2649 = !DILocation(line: 559, column: 15, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !609, line: 559, column: 15)
!2651 = distinct !DILexicalBlock(scope: !2640, file: !609, line: 559, column: 15)
!2652 = !DILocation(line: 559, column: 15, scope: !2651)
!2653 = !DILocation(line: 560, column: 15, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !609, line: 560, column: 15)
!2655 = distinct !DILexicalBlock(scope: !2640, file: !609, line: 560, column: 15)
!2656 = !DILocation(line: 560, column: 15, scope: !2655)
!2657 = !DILocation(line: 562, column: 13, scope: !2640)
!2658 = !DILocation(line: 602, column: 17, scope: !2384)
!2659 = !DILocation(line: 0, scope: !2384)
!2660 = !DILocation(line: 605, column: 29, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2389, file: !609, line: 603, column: 15)
!2662 = !DILocation(line: 605, column: 41, scope: !2661)
!2663 = !DILocation(line: 606, column: 15, scope: !2661)
!2664 = !DILocation(line: 609, column: 17, scope: !2388)
!2665 = !DILocation(line: 609, column: 27, scope: !2388)
!2666 = !DILocation(line: 0, scope: !2440, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 609, column: 32, scope: !2388)
!2668 = !DILocation(line: 0, scope: !2448, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 1137, column: 3, scope: !2440, inlinedAt: !2667)
!2670 = !DILocation(line: 59, column: 10, scope: !2448, inlinedAt: !2669)
!2671 = !DILocation(line: 613, column: 29, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2388, file: !609, line: 613, column: 21)
!2673 = !DILocation(line: 613, column: 21, scope: !2388)
!2674 = !DILocation(line: 614, column: 29, scope: !2672)
!2675 = !DILocation(line: 614, column: 19, scope: !2672)
!2676 = !DILocation(line: 618, column: 21, scope: !2391)
!2677 = !DILocation(line: 620, column: 54, scope: !2391)
!2678 = !DILocation(line: 0, scope: !2391)
!2679 = !DILocation(line: 619, column: 36, scope: !2391)
!2680 = !DILocation(line: 621, column: 25, scope: !2391)
!2681 = !DILocation(line: 631, column: 38, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2400, file: !609, line: 629, column: 23)
!2683 = !DILocation(line: 631, column: 48, scope: !2682)
!2684 = !DILocation(line: 626, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2401, file: !609, line: 624, column: 23)
!2686 = !DILocation(line: 631, column: 51, scope: !2682)
!2687 = !DILocation(line: 631, column: 25, scope: !2682)
!2688 = !DILocation(line: 632, column: 28, scope: !2682)
!2689 = !DILocation(line: 631, column: 34, scope: !2682)
!2690 = distinct !{!2690, !2687, !2688, !1117}
!2691 = !DILocation(line: 646, column: 29, scope: !2398)
!2692 = !DILocation(line: 0, scope: !2396)
!2693 = !DILocation(line: 649, column: 49, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2396, file: !609, line: 648, column: 29)
!2695 = !DILocation(line: 649, column: 39, scope: !2694)
!2696 = !DILocation(line: 649, column: 31, scope: !2694)
!2697 = !DILocation(line: 648, column: 60, scope: !2694)
!2698 = !DILocation(line: 648, column: 50, scope: !2694)
!2699 = !DILocation(line: 648, column: 29, scope: !2396)
!2700 = distinct !{!2700, !2699, !2701, !1117}
!2701 = !DILocation(line: 654, column: 33, scope: !2396)
!2702 = !DILocation(line: 657, column: 43, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2399, file: !609, line: 657, column: 29)
!2704 = !DILocalVariable(name: "wc", arg: 1, scope: !2705, file: !2706, line: 865, type: !2709)
!2705 = distinct !DISubprogram(name: "c32isprint", scope: !2706, file: !2706, line: 865, type: !2707, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2711)
!2706 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!103, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2710, line: 20, baseType: !109)
!2710 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2711 = !{!2704}
!2712 = !DILocation(line: 0, scope: !2705, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 657, column: 31, scope: !2703)
!2714 = !DILocation(line: 871, column: 10, scope: !2705, inlinedAt: !2713)
!2715 = !DILocation(line: 657, column: 31, scope: !2703)
!2716 = !DILocation(line: 664, column: 23, scope: !2391)
!2717 = !DILocation(line: 665, column: 19, scope: !2392)
!2718 = !DILocation(line: 666, column: 15, scope: !2389)
!2719 = !DILocation(line: 753, column: 2, scope: !2345)
!2720 = !DILocation(line: 756, column: 51, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2345, file: !609, line: 756, column: 7)
!2722 = !DILocation(line: 0, scope: !2389)
!2723 = !DILocation(line: 670, column: 19, scope: !2405)
!2724 = !DILocation(line: 670, column: 23, scope: !2405)
!2725 = !DILocation(line: 674, column: 33, scope: !2404)
!2726 = !DILocation(line: 0, scope: !2404)
!2727 = !DILocation(line: 676, column: 17, scope: !2404)
!2728 = !DILocation(line: 398, column: 12, scope: !2378)
!2729 = !DILocation(line: 678, column: 43, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !609, line: 678, column: 25)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !609, line: 677, column: 19)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !609, line: 676, column: 17)
!2733 = distinct !DILexicalBlock(scope: !2404, file: !609, line: 676, column: 17)
!2734 = !DILocation(line: 680, column: 25, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !609, line: 680, column: 25)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !609, line: 679, column: 23)
!2737 = !DILocation(line: 680, column: 25, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !609, line: 680, column: 25)
!2739 = !DILocation(line: 680, column: 25, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !609, line: 680, column: 25)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !609, line: 680, column: 25)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !609, line: 680, column: 25)
!2743 = !DILocation(line: 680, column: 25, scope: !2741)
!2744 = !DILocation(line: 680, column: 25, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !609, line: 680, column: 25)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !609, line: 680, column: 25)
!2747 = !DILocation(line: 680, column: 25, scope: !2746)
!2748 = !DILocation(line: 680, column: 25, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !609, line: 680, column: 25)
!2750 = distinct !DILexicalBlock(scope: !2742, file: !609, line: 680, column: 25)
!2751 = !DILocation(line: 680, column: 25, scope: !2750)
!2752 = !DILocation(line: 680, column: 25, scope: !2742)
!2753 = !DILocation(line: 680, column: 25, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !609, line: 680, column: 25)
!2755 = distinct !DILexicalBlock(scope: !2735, file: !609, line: 680, column: 25)
!2756 = !DILocation(line: 680, column: 25, scope: !2755)
!2757 = !DILocation(line: 681, column: 25, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !609, line: 681, column: 25)
!2759 = distinct !DILexicalBlock(scope: !2736, file: !609, line: 681, column: 25)
!2760 = !DILocation(line: 681, column: 25, scope: !2759)
!2761 = !DILocation(line: 682, column: 25, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !609, line: 682, column: 25)
!2763 = distinct !DILexicalBlock(scope: !2736, file: !609, line: 682, column: 25)
!2764 = !DILocation(line: 682, column: 25, scope: !2763)
!2765 = !DILocation(line: 683, column: 38, scope: !2736)
!2766 = !DILocation(line: 683, column: 33, scope: !2736)
!2767 = !DILocation(line: 684, column: 23, scope: !2736)
!2768 = !DILocation(line: 685, column: 30, scope: !2730)
!2769 = !DILocation(line: 687, column: 25, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !609, line: 687, column: 25)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !609, line: 687, column: 25)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !609, line: 686, column: 23)
!2773 = distinct !DILexicalBlock(scope: !2730, file: !609, line: 685, column: 30)
!2774 = !DILocation(line: 687, column: 25, scope: !2771)
!2775 = !DILocation(line: 689, column: 23, scope: !2772)
!2776 = !DILocation(line: 690, column: 35, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2731, file: !609, line: 690, column: 25)
!2778 = !DILocation(line: 690, column: 30, scope: !2777)
!2779 = !DILocation(line: 690, column: 25, scope: !2731)
!2780 = !DILocation(line: 692, column: 21, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !609, line: 692, column: 21)
!2782 = distinct !DILexicalBlock(scope: !2731, file: !609, line: 692, column: 21)
!2783 = !DILocation(line: 692, column: 21, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !609, line: 692, column: 21)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !609, line: 692, column: 21)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !609, line: 692, column: 21)
!2787 = !DILocation(line: 692, column: 21, scope: !2785)
!2788 = !DILocation(line: 692, column: 21, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !609, line: 692, column: 21)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !609, line: 692, column: 21)
!2791 = !DILocation(line: 692, column: 21, scope: !2790)
!2792 = !DILocation(line: 692, column: 21, scope: !2786)
!2793 = !DILocation(line: 0, scope: !2731)
!2794 = !DILocation(line: 693, column: 21, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !609, line: 693, column: 21)
!2796 = distinct !DILexicalBlock(scope: !2731, file: !609, line: 693, column: 21)
!2797 = !DILocation(line: 693, column: 21, scope: !2796)
!2798 = !DILocation(line: 694, column: 25, scope: !2731)
!2799 = !DILocation(line: 676, column: 17, scope: !2732)
!2800 = distinct !{!2800, !2801, !2802}
!2801 = !DILocation(line: 676, column: 17, scope: !2733)
!2802 = !DILocation(line: 695, column: 19, scope: !2733)
!2803 = !DILocation(line: 409, column: 30, scope: !2513)
!2804 = !DILocation(line: 702, column: 34, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2378, file: !609, line: 702, column: 11)
!2806 = !DILocation(line: 704, column: 14, scope: !2805)
!2807 = !DILocation(line: 705, column: 14, scope: !2805)
!2808 = !DILocation(line: 705, column: 35, scope: !2805)
!2809 = !DILocation(line: 705, column: 17, scope: !2805)
!2810 = !DILocation(line: 705, column: 47, scope: !2805)
!2811 = !DILocation(line: 705, column: 65, scope: !2805)
!2812 = !DILocation(line: 706, column: 11, scope: !2805)
!2813 = !DILocation(line: 702, column: 11, scope: !2378)
!2814 = !DILocation(line: 395, column: 15, scope: !2376)
!2815 = !DILocation(line: 709, column: 5, scope: !2378)
!2816 = !DILocation(line: 710, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2378, file: !609, line: 710, column: 7)
!2818 = !DILocation(line: 710, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !609, line: 710, column: 7)
!2820 = !DILocation(line: 710, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !609, line: 710, column: 7)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !609, line: 710, column: 7)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !609, line: 710, column: 7)
!2824 = !DILocation(line: 710, column: 7, scope: !2822)
!2825 = !DILocation(line: 710, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !609, line: 710, column: 7)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !609, line: 710, column: 7)
!2828 = !DILocation(line: 710, column: 7, scope: !2827)
!2829 = !DILocation(line: 710, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !609, line: 710, column: 7)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !609, line: 710, column: 7)
!2832 = !DILocation(line: 710, column: 7, scope: !2831)
!2833 = !DILocation(line: 710, column: 7, scope: !2823)
!2834 = !DILocation(line: 710, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !609, line: 710, column: 7)
!2836 = distinct !DILexicalBlock(scope: !2817, file: !609, line: 710, column: 7)
!2837 = !DILocation(line: 710, column: 7, scope: !2836)
!2838 = !DILocation(line: 712, column: 5, scope: !2378)
!2839 = !DILocation(line: 713, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !609, line: 713, column: 7)
!2841 = distinct !DILexicalBlock(scope: !2378, file: !609, line: 713, column: 7)
!2842 = !DILocation(line: 417, column: 21, scope: !2378)
!2843 = !DILocation(line: 713, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !609, line: 713, column: 7)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !609, line: 713, column: 7)
!2846 = distinct !DILexicalBlock(scope: !2840, file: !609, line: 713, column: 7)
!2847 = !DILocation(line: 713, column: 7, scope: !2845)
!2848 = !DILocation(line: 713, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !609, line: 713, column: 7)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !609, line: 713, column: 7)
!2851 = !DILocation(line: 713, column: 7, scope: !2850)
!2852 = !DILocation(line: 713, column: 7, scope: !2846)
!2853 = !DILocation(line: 714, column: 7, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !609, line: 714, column: 7)
!2855 = distinct !DILexicalBlock(scope: !2378, file: !609, line: 714, column: 7)
!2856 = !DILocation(line: 714, column: 7, scope: !2855)
!2857 = !DILocation(line: 716, column: 11, scope: !2378)
!2858 = !DILocation(line: 718, column: 5, scope: !2379)
!2859 = !DILocation(line: 395, column: 82, scope: !2379)
!2860 = !DILocation(line: 395, column: 3, scope: !2379)
!2861 = distinct !{!2861, !2509, !2862, !1117}
!2862 = !DILocation(line: 718, column: 5, scope: !2376)
!2863 = !DILocation(line: 720, column: 11, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2345, file: !609, line: 720, column: 7)
!2865 = !DILocation(line: 720, column: 16, scope: !2864)
!2866 = !DILocation(line: 728, column: 51, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2345, file: !609, line: 728, column: 7)
!2868 = !DILocation(line: 731, column: 11, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2867, file: !609, line: 730, column: 5)
!2870 = !DILocation(line: 732, column: 16, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2869, file: !609, line: 731, column: 11)
!2872 = !DILocation(line: 732, column: 9, scope: !2871)
!2873 = !DILocation(line: 736, column: 18, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !609, line: 736, column: 16)
!2875 = !DILocation(line: 736, column: 29, scope: !2874)
!2876 = !DILocation(line: 745, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2345, file: !609, line: 745, column: 7)
!2878 = !DILocation(line: 745, column: 20, scope: !2877)
!2879 = !DILocation(line: 746, column: 12, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !609, line: 746, column: 5)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !609, line: 746, column: 5)
!2882 = !DILocation(line: 746, column: 5, scope: !2881)
!2883 = !DILocation(line: 747, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !609, line: 747, column: 7)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !609, line: 747, column: 7)
!2886 = !DILocation(line: 747, column: 7, scope: !2885)
!2887 = !DILocation(line: 746, column: 39, scope: !2880)
!2888 = distinct !{!2888, !2882, !2889, !1117}
!2889 = !DILocation(line: 747, column: 7, scope: !2881)
!2890 = !DILocation(line: 749, column: 11, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2345, file: !609, line: 749, column: 7)
!2892 = !DILocation(line: 749, column: 7, scope: !2345)
!2893 = !DILocation(line: 750, column: 5, scope: !2891)
!2894 = !DILocation(line: 750, column: 17, scope: !2891)
!2895 = !DILocation(line: 756, column: 21, scope: !2721)
!2896 = !DILocation(line: 760, column: 42, scope: !2345)
!2897 = !DILocation(line: 758, column: 10, scope: !2345)
!2898 = !DILocation(line: 758, column: 3, scope: !2345)
!2899 = !DILocation(line: 762, column: 1, scope: !2345)
!2900 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1191, file: !1191, line: 98, type: !2901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!127}
!2903 = !DISubprogram(name: "strlen", scope: !1187, file: !1187, line: 407, type: !2904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!129, !130}
!2906 = !DISubprogram(name: "iswprint", scope: !2907, file: !2907, line: 120, type: !2707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!2907 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2908 = distinct !DISubprogram(name: "quotearg_alloc", scope: !609, file: !609, line: 788, type: !2909, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!124, !130, !127, !2238}
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !609, line: 788, type: !130)
!2913 = !DILocalVariable(name: "argsize", arg: 2, scope: !2908, file: !609, line: 788, type: !127)
!2914 = !DILocalVariable(name: "o", arg: 3, scope: !2908, file: !609, line: 789, type: !2238)
!2915 = !DILocation(line: 0, scope: !2908)
!2916 = !DILocalVariable(name: "arg", arg: 1, scope: !2917, file: !609, line: 801, type: !130)
!2917 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !609, file: !609, line: 801, type: !2918, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!124, !130, !127, !889, !2238}
!2920 = !{!2916, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2921 = !DILocalVariable(name: "argsize", arg: 2, scope: !2917, file: !609, line: 801, type: !127)
!2922 = !DILocalVariable(name: "size", arg: 3, scope: !2917, file: !609, line: 801, type: !889)
!2923 = !DILocalVariable(name: "o", arg: 4, scope: !2917, file: !609, line: 802, type: !2238)
!2924 = !DILocalVariable(name: "p", scope: !2917, file: !609, line: 804, type: !2238)
!2925 = !DILocalVariable(name: "saved_errno", scope: !2917, file: !609, line: 805, type: !103)
!2926 = !DILocalVariable(name: "flags", scope: !2917, file: !609, line: 807, type: !103)
!2927 = !DILocalVariable(name: "bufsize", scope: !2917, file: !609, line: 808, type: !127)
!2928 = !DILocalVariable(name: "buf", scope: !2917, file: !609, line: 812, type: !124)
!2929 = !DILocation(line: 0, scope: !2917, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 791, column: 10, scope: !2908)
!2931 = !DILocation(line: 804, column: 37, scope: !2917, inlinedAt: !2930)
!2932 = !DILocation(line: 805, column: 21, scope: !2917, inlinedAt: !2930)
!2933 = !DILocation(line: 807, column: 18, scope: !2917, inlinedAt: !2930)
!2934 = !DILocation(line: 807, column: 24, scope: !2917, inlinedAt: !2930)
!2935 = !DILocation(line: 808, column: 72, scope: !2917, inlinedAt: !2930)
!2936 = !DILocation(line: 809, column: 56, scope: !2917, inlinedAt: !2930)
!2937 = !DILocation(line: 810, column: 49, scope: !2917, inlinedAt: !2930)
!2938 = !DILocation(line: 811, column: 49, scope: !2917, inlinedAt: !2930)
!2939 = !DILocation(line: 808, column: 20, scope: !2917, inlinedAt: !2930)
!2940 = !DILocation(line: 811, column: 62, scope: !2917, inlinedAt: !2930)
!2941 = !DILocation(line: 812, column: 15, scope: !2917, inlinedAt: !2930)
!2942 = !DILocation(line: 813, column: 60, scope: !2917, inlinedAt: !2930)
!2943 = !DILocation(line: 815, column: 32, scope: !2917, inlinedAt: !2930)
!2944 = !DILocation(line: 815, column: 47, scope: !2917, inlinedAt: !2930)
!2945 = !DILocation(line: 813, column: 3, scope: !2917, inlinedAt: !2930)
!2946 = !DILocation(line: 816, column: 9, scope: !2917, inlinedAt: !2930)
!2947 = !DILocation(line: 791, column: 3, scope: !2908)
!2948 = !DILocation(line: 0, scope: !2917)
!2949 = !DILocation(line: 804, column: 37, scope: !2917)
!2950 = !DILocation(line: 805, column: 21, scope: !2917)
!2951 = !DILocation(line: 807, column: 18, scope: !2917)
!2952 = !DILocation(line: 807, column: 27, scope: !2917)
!2953 = !DILocation(line: 807, column: 24, scope: !2917)
!2954 = !DILocation(line: 808, column: 72, scope: !2917)
!2955 = !DILocation(line: 809, column: 56, scope: !2917)
!2956 = !DILocation(line: 810, column: 49, scope: !2917)
!2957 = !DILocation(line: 811, column: 49, scope: !2917)
!2958 = !DILocation(line: 808, column: 20, scope: !2917)
!2959 = !DILocation(line: 811, column: 62, scope: !2917)
!2960 = !DILocation(line: 812, column: 15, scope: !2917)
!2961 = !DILocation(line: 813, column: 60, scope: !2917)
!2962 = !DILocation(line: 815, column: 32, scope: !2917)
!2963 = !DILocation(line: 815, column: 47, scope: !2917)
!2964 = !DILocation(line: 813, column: 3, scope: !2917)
!2965 = !DILocation(line: 816, column: 9, scope: !2917)
!2966 = !DILocation(line: 817, column: 7, scope: !2917)
!2967 = !DILocation(line: 818, column: 11, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2917, file: !609, line: 817, column: 7)
!2969 = !{!1367, !1367, i64 0}
!2970 = !DILocation(line: 818, column: 5, scope: !2968)
!2971 = !DILocation(line: 819, column: 3, scope: !2917)
!2972 = distinct !DISubprogram(name: "quotearg_free", scope: !609, file: !609, line: 837, type: !564, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2973)
!2973 = !{!2974, !2975}
!2974 = !DILocalVariable(name: "sv", scope: !2972, file: !609, line: 839, type: !710)
!2975 = !DILocalVariable(name: "i", scope: !2976, file: !609, line: 840, type: !103)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !609, line: 840, column: 3)
!2977 = !DILocation(line: 839, column: 24, scope: !2972)
!2978 = !DILocation(line: 0, scope: !2972)
!2979 = !DILocation(line: 0, scope: !2976)
!2980 = !DILocation(line: 840, column: 21, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !609, line: 840, column: 3)
!2982 = !DILocation(line: 840, column: 3, scope: !2976)
!2983 = !DILocation(line: 842, column: 13, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2972, file: !609, line: 842, column: 7)
!2985 = !{!2986, !1002, i64 8}
!2986 = !{!"slotvec", !1367, i64 0, !1002, i64 8}
!2987 = !DILocation(line: 842, column: 17, scope: !2984)
!2988 = !DILocation(line: 842, column: 7, scope: !2972)
!2989 = !DILocation(line: 841, column: 17, scope: !2981)
!2990 = !DILocation(line: 841, column: 5, scope: !2981)
!2991 = !DILocation(line: 840, column: 32, scope: !2981)
!2992 = distinct !{!2992, !2982, !2993, !1117}
!2993 = !DILocation(line: 841, column: 20, scope: !2976)
!2994 = !DILocation(line: 844, column: 7, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2984, file: !609, line: 843, column: 5)
!2996 = !DILocation(line: 845, column: 21, scope: !2995)
!2997 = !{!2986, !1367, i64 0}
!2998 = !DILocation(line: 846, column: 20, scope: !2995)
!2999 = !DILocation(line: 847, column: 5, scope: !2995)
!3000 = !DILocation(line: 848, column: 10, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2972, file: !609, line: 848, column: 7)
!3002 = !DILocation(line: 848, column: 7, scope: !2972)
!3003 = !DILocation(line: 850, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3001, file: !609, line: 849, column: 5)
!3005 = !DILocation(line: 851, column: 15, scope: !3004)
!3006 = !DILocation(line: 852, column: 5, scope: !3004)
!3007 = !DILocation(line: 853, column: 10, scope: !2972)
!3008 = !DILocation(line: 854, column: 1, scope: !2972)
!3009 = distinct !DISubprogram(name: "quotearg_n", scope: !609, file: !609, line: 919, type: !1184, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3010)
!3010 = !{!3011, !3012}
!3011 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !609, line: 919, type: !103)
!3012 = !DILocalVariable(name: "arg", arg: 2, scope: !3009, file: !609, line: 919, type: !130)
!3013 = !DILocation(line: 0, scope: !3009)
!3014 = !DILocation(line: 921, column: 10, scope: !3009)
!3015 = !DILocation(line: 921, column: 3, scope: !3009)
!3016 = distinct !DISubprogram(name: "quotearg_n_options", scope: !609, file: !609, line: 866, type: !3017, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!124, !103, !130, !127, !2238}
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3030, !3031, !3033, !3034, !3035}
!3020 = !DILocalVariable(name: "n", arg: 1, scope: !3016, file: !609, line: 866, type: !103)
!3021 = !DILocalVariable(name: "arg", arg: 2, scope: !3016, file: !609, line: 866, type: !130)
!3022 = !DILocalVariable(name: "argsize", arg: 3, scope: !3016, file: !609, line: 866, type: !127)
!3023 = !DILocalVariable(name: "options", arg: 4, scope: !3016, file: !609, line: 867, type: !2238)
!3024 = !DILocalVariable(name: "saved_errno", scope: !3016, file: !609, line: 869, type: !103)
!3025 = !DILocalVariable(name: "sv", scope: !3016, file: !609, line: 871, type: !710)
!3026 = !DILocalVariable(name: "nslots_max", scope: !3016, file: !609, line: 873, type: !103)
!3027 = !DILocalVariable(name: "preallocated", scope: !3028, file: !609, line: 879, type: !223)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !609, line: 878, column: 5)
!3029 = distinct !DILexicalBlock(scope: !3016, file: !609, line: 877, column: 7)
!3030 = !DILocalVariable(name: "new_nslots", scope: !3028, file: !609, line: 880, type: !902)
!3031 = !DILocalVariable(name: "size", scope: !3032, file: !609, line: 891, type: !127)
!3032 = distinct !DILexicalBlock(scope: !3016, file: !609, line: 890, column: 3)
!3033 = !DILocalVariable(name: "val", scope: !3032, file: !609, line: 892, type: !124)
!3034 = !DILocalVariable(name: "flags", scope: !3032, file: !609, line: 894, type: !103)
!3035 = !DILocalVariable(name: "qsize", scope: !3032, file: !609, line: 895, type: !127)
!3036 = !DILocation(line: 0, scope: !3016)
!3037 = !DILocation(line: 869, column: 21, scope: !3016)
!3038 = !DILocation(line: 871, column: 24, scope: !3016)
!3039 = !DILocation(line: 874, column: 17, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3016, file: !609, line: 874, column: 7)
!3041 = !DILocation(line: 875, column: 5, scope: !3040)
!3042 = !DILocation(line: 877, column: 7, scope: !3029)
!3043 = !DILocation(line: 877, column: 14, scope: !3029)
!3044 = !DILocation(line: 877, column: 7, scope: !3016)
!3045 = !DILocation(line: 879, column: 31, scope: !3028)
!3046 = !DILocation(line: 0, scope: !3028)
!3047 = !DILocation(line: 880, column: 7, scope: !3028)
!3048 = !DILocation(line: 880, column: 26, scope: !3028)
!3049 = !DILocation(line: 880, column: 13, scope: !3028)
!3050 = !DILocation(line: 882, column: 31, scope: !3028)
!3051 = !DILocation(line: 883, column: 33, scope: !3028)
!3052 = !DILocation(line: 883, column: 42, scope: !3028)
!3053 = !DILocation(line: 883, column: 31, scope: !3028)
!3054 = !DILocation(line: 882, column: 22, scope: !3028)
!3055 = !DILocation(line: 882, column: 15, scope: !3028)
!3056 = !DILocation(line: 884, column: 11, scope: !3028)
!3057 = !DILocation(line: 885, column: 15, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3028, file: !609, line: 884, column: 11)
!3059 = !{i64 0, i64 8, !2969, i64 8, i64 8, !1001}
!3060 = !DILocation(line: 885, column: 9, scope: !3058)
!3061 = !DILocation(line: 886, column: 20, scope: !3028)
!3062 = !DILocation(line: 886, column: 18, scope: !3028)
!3063 = !DILocation(line: 886, column: 32, scope: !3028)
!3064 = !DILocation(line: 886, column: 43, scope: !3028)
!3065 = !DILocation(line: 886, column: 53, scope: !3028)
!3066 = !DILocation(line: 0, scope: !2448, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 886, column: 7, scope: !3028)
!3068 = !DILocation(line: 59, column: 10, scope: !2448, inlinedAt: !3067)
!3069 = !DILocation(line: 887, column: 16, scope: !3028)
!3070 = !DILocation(line: 887, column: 14, scope: !3028)
!3071 = !DILocation(line: 888, column: 5, scope: !3029)
!3072 = !DILocation(line: 888, column: 5, scope: !3028)
!3073 = !DILocation(line: 891, column: 19, scope: !3032)
!3074 = !DILocation(line: 891, column: 25, scope: !3032)
!3075 = !DILocation(line: 0, scope: !3032)
!3076 = !DILocation(line: 892, column: 23, scope: !3032)
!3077 = !DILocation(line: 894, column: 26, scope: !3032)
!3078 = !DILocation(line: 894, column: 32, scope: !3032)
!3079 = !DILocation(line: 896, column: 55, scope: !3032)
!3080 = !DILocation(line: 897, column: 55, scope: !3032)
!3081 = !DILocation(line: 898, column: 55, scope: !3032)
!3082 = !DILocation(line: 899, column: 55, scope: !3032)
!3083 = !DILocation(line: 895, column: 20, scope: !3032)
!3084 = !DILocation(line: 901, column: 14, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3032, file: !609, line: 901, column: 9)
!3086 = !DILocation(line: 901, column: 9, scope: !3032)
!3087 = !DILocation(line: 903, column: 35, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !609, line: 902, column: 7)
!3089 = !DILocation(line: 903, column: 20, scope: !3088)
!3090 = !DILocation(line: 904, column: 17, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !609, line: 904, column: 13)
!3092 = !DILocation(line: 904, column: 13, scope: !3088)
!3093 = !DILocation(line: 905, column: 11, scope: !3091)
!3094 = !DILocation(line: 906, column: 27, scope: !3088)
!3095 = !DILocation(line: 906, column: 19, scope: !3088)
!3096 = !DILocation(line: 907, column: 69, scope: !3088)
!3097 = !DILocation(line: 909, column: 44, scope: !3088)
!3098 = !DILocation(line: 910, column: 44, scope: !3088)
!3099 = !DILocation(line: 907, column: 9, scope: !3088)
!3100 = !DILocation(line: 911, column: 7, scope: !3088)
!3101 = !DILocation(line: 913, column: 11, scope: !3032)
!3102 = !DILocation(line: 914, column: 5, scope: !3032)
!3103 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !609, file: !609, line: 925, type: !3104, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!124, !103, !130, !127}
!3106 = !{!3107, !3108, !3109}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !609, line: 925, type: !103)
!3108 = !DILocalVariable(name: "arg", arg: 2, scope: !3103, file: !609, line: 925, type: !130)
!3109 = !DILocalVariable(name: "argsize", arg: 3, scope: !3103, file: !609, line: 925, type: !127)
!3110 = !DILocation(line: 0, scope: !3103)
!3111 = !DILocation(line: 927, column: 10, scope: !3103)
!3112 = !DILocation(line: 927, column: 3, scope: !3103)
!3113 = distinct !DISubprogram(name: "quotearg", scope: !609, file: !609, line: 931, type: !1193, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3114)
!3114 = !{!3115}
!3115 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !609, line: 931, type: !130)
!3116 = !DILocation(line: 0, scope: !3113)
!3117 = !DILocation(line: 0, scope: !3009, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 933, column: 10, scope: !3113)
!3119 = !DILocation(line: 921, column: 10, scope: !3009, inlinedAt: !3118)
!3120 = !DILocation(line: 933, column: 3, scope: !3113)
!3121 = distinct !DISubprogram(name: "quotearg_mem", scope: !609, file: !609, line: 937, type: !3122, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!124, !130, !127}
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "arg", arg: 1, scope: !3121, file: !609, line: 937, type: !130)
!3126 = !DILocalVariable(name: "argsize", arg: 2, scope: !3121, file: !609, line: 937, type: !127)
!3127 = !DILocation(line: 0, scope: !3121)
!3128 = !DILocation(line: 0, scope: !3103, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 939, column: 10, scope: !3121)
!3130 = !DILocation(line: 927, column: 10, scope: !3103, inlinedAt: !3129)
!3131 = !DILocation(line: 939, column: 3, scope: !3121)
!3132 = distinct !DISubprogram(name: "quotearg_n_style", scope: !609, file: !609, line: 943, type: !3133, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!124, !103, !635, !130}
!3135 = !{!3136, !3137, !3138, !3139}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !609, line: 943, type: !103)
!3137 = !DILocalVariable(name: "s", arg: 2, scope: !3132, file: !609, line: 943, type: !635)
!3138 = !DILocalVariable(name: "arg", arg: 3, scope: !3132, file: !609, line: 943, type: !130)
!3139 = !DILocalVariable(name: "o", scope: !3132, file: !609, line: 945, type: !2239)
!3140 = !DILocation(line: 0, scope: !3132)
!3141 = !DILocation(line: 945, column: 3, scope: !3132)
!3142 = !DILocation(line: 945, column: 32, scope: !3132)
!3143 = !{!3144}
!3144 = distinct !{!3144, !3145, !"quoting_options_from_style: argument 0"}
!3145 = distinct !{!3145, !"quoting_options_from_style"}
!3146 = !DILocation(line: 945, column: 36, scope: !3132)
!3147 = !DILocalVariable(name: "style", arg: 1, scope: !3148, file: !609, line: 183, type: !635)
!3148 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !609, file: !609, line: 183, type: !3149, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!662, !635}
!3151 = !{!3147, !3152}
!3152 = !DILocalVariable(name: "o", scope: !3148, file: !609, line: 185, type: !662)
!3153 = !DILocation(line: 0, scope: !3148, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 945, column: 36, scope: !3132)
!3155 = !DILocation(line: 185, column: 26, scope: !3148, inlinedAt: !3154)
!3156 = !DILocation(line: 186, column: 13, scope: !3157, inlinedAt: !3154)
!3157 = distinct !DILexicalBlock(scope: !3148, file: !609, line: 186, column: 7)
!3158 = !DILocation(line: 186, column: 7, scope: !3148, inlinedAt: !3154)
!3159 = !DILocation(line: 187, column: 5, scope: !3157, inlinedAt: !3154)
!3160 = !DILocation(line: 188, column: 11, scope: !3148, inlinedAt: !3154)
!3161 = !DILocation(line: 946, column: 10, scope: !3132)
!3162 = !DILocation(line: 947, column: 1, scope: !3132)
!3163 = !DILocation(line: 946, column: 3, scope: !3132)
!3164 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !609, file: !609, line: 950, type: !3165, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!124, !103, !635, !130, !127}
!3167 = !{!3168, !3169, !3170, !3171, !3172}
!3168 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !609, line: 950, type: !103)
!3169 = !DILocalVariable(name: "s", arg: 2, scope: !3164, file: !609, line: 950, type: !635)
!3170 = !DILocalVariable(name: "arg", arg: 3, scope: !3164, file: !609, line: 951, type: !130)
!3171 = !DILocalVariable(name: "argsize", arg: 4, scope: !3164, file: !609, line: 951, type: !127)
!3172 = !DILocalVariable(name: "o", scope: !3164, file: !609, line: 953, type: !2239)
!3173 = !DILocation(line: 0, scope: !3164)
!3174 = !DILocation(line: 953, column: 3, scope: !3164)
!3175 = !DILocation(line: 953, column: 32, scope: !3164)
!3176 = !{!3177}
!3177 = distinct !{!3177, !3178, !"quoting_options_from_style: argument 0"}
!3178 = distinct !{!3178, !"quoting_options_from_style"}
!3179 = !DILocation(line: 953, column: 36, scope: !3164)
!3180 = !DILocation(line: 0, scope: !3148, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 953, column: 36, scope: !3164)
!3182 = !DILocation(line: 185, column: 26, scope: !3148, inlinedAt: !3181)
!3183 = !DILocation(line: 186, column: 13, scope: !3157, inlinedAt: !3181)
!3184 = !DILocation(line: 186, column: 7, scope: !3148, inlinedAt: !3181)
!3185 = !DILocation(line: 187, column: 5, scope: !3157, inlinedAt: !3181)
!3186 = !DILocation(line: 188, column: 11, scope: !3148, inlinedAt: !3181)
!3187 = !DILocation(line: 954, column: 10, scope: !3164)
!3188 = !DILocation(line: 955, column: 1, scope: !3164)
!3189 = !DILocation(line: 954, column: 3, scope: !3164)
!3190 = distinct !DISubprogram(name: "quotearg_style", scope: !609, file: !609, line: 958, type: !3191, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!124, !635, !130}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "s", arg: 1, scope: !3190, file: !609, line: 958, type: !635)
!3195 = !DILocalVariable(name: "arg", arg: 2, scope: !3190, file: !609, line: 958, type: !130)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocation(line: 0, scope: !3132, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 960, column: 10, scope: !3190)
!3199 = !DILocation(line: 945, column: 3, scope: !3132, inlinedAt: !3198)
!3200 = !DILocation(line: 945, column: 32, scope: !3132, inlinedAt: !3198)
!3201 = !{!3202}
!3202 = distinct !{!3202, !3203, !"quoting_options_from_style: argument 0"}
!3203 = distinct !{!3203, !"quoting_options_from_style"}
!3204 = !DILocation(line: 945, column: 36, scope: !3132, inlinedAt: !3198)
!3205 = !DILocation(line: 0, scope: !3148, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 945, column: 36, scope: !3132, inlinedAt: !3198)
!3207 = !DILocation(line: 185, column: 26, scope: !3148, inlinedAt: !3206)
!3208 = !DILocation(line: 186, column: 13, scope: !3157, inlinedAt: !3206)
!3209 = !DILocation(line: 186, column: 7, scope: !3148, inlinedAt: !3206)
!3210 = !DILocation(line: 187, column: 5, scope: !3157, inlinedAt: !3206)
!3211 = !DILocation(line: 188, column: 11, scope: !3148, inlinedAt: !3206)
!3212 = !DILocation(line: 946, column: 10, scope: !3132, inlinedAt: !3198)
!3213 = !DILocation(line: 947, column: 1, scope: !3132, inlinedAt: !3198)
!3214 = !DILocation(line: 960, column: 3, scope: !3190)
!3215 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !609, file: !609, line: 964, type: !3216, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!124, !635, !130, !127}
!3218 = !{!3219, !3220, !3221}
!3219 = !DILocalVariable(name: "s", arg: 1, scope: !3215, file: !609, line: 964, type: !635)
!3220 = !DILocalVariable(name: "arg", arg: 2, scope: !3215, file: !609, line: 964, type: !130)
!3221 = !DILocalVariable(name: "argsize", arg: 3, scope: !3215, file: !609, line: 964, type: !127)
!3222 = !DILocation(line: 0, scope: !3215)
!3223 = !DILocation(line: 0, scope: !3164, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 966, column: 10, scope: !3215)
!3225 = !DILocation(line: 953, column: 3, scope: !3164, inlinedAt: !3224)
!3226 = !DILocation(line: 953, column: 32, scope: !3164, inlinedAt: !3224)
!3227 = !{!3228}
!3228 = distinct !{!3228, !3229, !"quoting_options_from_style: argument 0"}
!3229 = distinct !{!3229, !"quoting_options_from_style"}
!3230 = !DILocation(line: 953, column: 36, scope: !3164, inlinedAt: !3224)
!3231 = !DILocation(line: 0, scope: !3148, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 953, column: 36, scope: !3164, inlinedAt: !3224)
!3233 = !DILocation(line: 185, column: 26, scope: !3148, inlinedAt: !3232)
!3234 = !DILocation(line: 186, column: 13, scope: !3157, inlinedAt: !3232)
!3235 = !DILocation(line: 186, column: 7, scope: !3148, inlinedAt: !3232)
!3236 = !DILocation(line: 187, column: 5, scope: !3157, inlinedAt: !3232)
!3237 = !DILocation(line: 188, column: 11, scope: !3148, inlinedAt: !3232)
!3238 = !DILocation(line: 954, column: 10, scope: !3164, inlinedAt: !3224)
!3239 = !DILocation(line: 955, column: 1, scope: !3164, inlinedAt: !3224)
!3240 = !DILocation(line: 966, column: 3, scope: !3215)
!3241 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !609, file: !609, line: 970, type: !3242, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!124, !130, !127, !4}
!3244 = !{!3245, !3246, !3247, !3248}
!3245 = !DILocalVariable(name: "arg", arg: 1, scope: !3241, file: !609, line: 970, type: !130)
!3246 = !DILocalVariable(name: "argsize", arg: 2, scope: !3241, file: !609, line: 970, type: !127)
!3247 = !DILocalVariable(name: "ch", arg: 3, scope: !3241, file: !609, line: 970, type: !4)
!3248 = !DILocalVariable(name: "options", scope: !3241, file: !609, line: 972, type: !662)
!3249 = !DILocation(line: 0, scope: !3241)
!3250 = !DILocation(line: 972, column: 3, scope: !3241)
!3251 = !DILocation(line: 972, column: 26, scope: !3241)
!3252 = !DILocation(line: 973, column: 13, scope: !3241)
!3253 = !{i64 0, i64 4, !1079, i64 4, i64 4, !1070, i64 8, i64 32, !1079, i64 40, i64 8, !1001, i64 48, i64 8, !1001}
!3254 = !DILocation(line: 0, scope: !2258, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 974, column: 3, scope: !3241)
!3256 = !DILocation(line: 147, column: 41, scope: !2258, inlinedAt: !3255)
!3257 = !DILocation(line: 147, column: 62, scope: !2258, inlinedAt: !3255)
!3258 = !DILocation(line: 147, column: 57, scope: !2258, inlinedAt: !3255)
!3259 = !DILocation(line: 148, column: 15, scope: !2258, inlinedAt: !3255)
!3260 = !DILocation(line: 149, column: 21, scope: !2258, inlinedAt: !3255)
!3261 = !DILocation(line: 149, column: 24, scope: !2258, inlinedAt: !3255)
!3262 = !DILocation(line: 150, column: 19, scope: !2258, inlinedAt: !3255)
!3263 = !DILocation(line: 150, column: 24, scope: !2258, inlinedAt: !3255)
!3264 = !DILocation(line: 150, column: 6, scope: !2258, inlinedAt: !3255)
!3265 = !DILocation(line: 975, column: 10, scope: !3241)
!3266 = !DILocation(line: 976, column: 1, scope: !3241)
!3267 = !DILocation(line: 975, column: 3, scope: !3241)
!3268 = distinct !DISubprogram(name: "quotearg_char", scope: !609, file: !609, line: 979, type: !3269, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!124, !130, !4}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "arg", arg: 1, scope: !3268, file: !609, line: 979, type: !130)
!3273 = !DILocalVariable(name: "ch", arg: 2, scope: !3268, file: !609, line: 979, type: !4)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocation(line: 0, scope: !3241, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 981, column: 10, scope: !3268)
!3277 = !DILocation(line: 972, column: 3, scope: !3241, inlinedAt: !3276)
!3278 = !DILocation(line: 972, column: 26, scope: !3241, inlinedAt: !3276)
!3279 = !DILocation(line: 973, column: 13, scope: !3241, inlinedAt: !3276)
!3280 = !DILocation(line: 0, scope: !2258, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 974, column: 3, scope: !3241, inlinedAt: !3276)
!3282 = !DILocation(line: 147, column: 41, scope: !2258, inlinedAt: !3281)
!3283 = !DILocation(line: 147, column: 62, scope: !2258, inlinedAt: !3281)
!3284 = !DILocation(line: 147, column: 57, scope: !2258, inlinedAt: !3281)
!3285 = !DILocation(line: 148, column: 15, scope: !2258, inlinedAt: !3281)
!3286 = !DILocation(line: 149, column: 21, scope: !2258, inlinedAt: !3281)
!3287 = !DILocation(line: 149, column: 24, scope: !2258, inlinedAt: !3281)
!3288 = !DILocation(line: 150, column: 19, scope: !2258, inlinedAt: !3281)
!3289 = !DILocation(line: 150, column: 24, scope: !2258, inlinedAt: !3281)
!3290 = !DILocation(line: 150, column: 6, scope: !2258, inlinedAt: !3281)
!3291 = !DILocation(line: 975, column: 10, scope: !3241, inlinedAt: !3276)
!3292 = !DILocation(line: 976, column: 1, scope: !3241, inlinedAt: !3276)
!3293 = !DILocation(line: 981, column: 3, scope: !3268)
!3294 = distinct !DISubprogram(name: "quotearg_colon", scope: !609, file: !609, line: 985, type: !1193, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3295)
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "arg", arg: 1, scope: !3294, file: !609, line: 985, type: !130)
!3297 = !DILocation(line: 0, scope: !3294)
!3298 = !DILocation(line: 0, scope: !3268, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 987, column: 10, scope: !3294)
!3300 = !DILocation(line: 0, scope: !3241, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 981, column: 10, scope: !3268, inlinedAt: !3299)
!3302 = !DILocation(line: 972, column: 3, scope: !3241, inlinedAt: !3301)
!3303 = !DILocation(line: 972, column: 26, scope: !3241, inlinedAt: !3301)
!3304 = !DILocation(line: 973, column: 13, scope: !3241, inlinedAt: !3301)
!3305 = !DILocation(line: 0, scope: !2258, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 974, column: 3, scope: !3241, inlinedAt: !3301)
!3307 = !DILocation(line: 147, column: 57, scope: !2258, inlinedAt: !3306)
!3308 = !DILocation(line: 149, column: 21, scope: !2258, inlinedAt: !3306)
!3309 = !DILocation(line: 150, column: 6, scope: !2258, inlinedAt: !3306)
!3310 = !DILocation(line: 975, column: 10, scope: !3241, inlinedAt: !3301)
!3311 = !DILocation(line: 976, column: 1, scope: !3241, inlinedAt: !3301)
!3312 = !DILocation(line: 987, column: 3, scope: !3294)
!3313 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !609, file: !609, line: 991, type: !3122, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3314)
!3314 = !{!3315, !3316}
!3315 = !DILocalVariable(name: "arg", arg: 1, scope: !3313, file: !609, line: 991, type: !130)
!3316 = !DILocalVariable(name: "argsize", arg: 2, scope: !3313, file: !609, line: 991, type: !127)
!3317 = !DILocation(line: 0, scope: !3313)
!3318 = !DILocation(line: 0, scope: !3241, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 993, column: 10, scope: !3313)
!3320 = !DILocation(line: 972, column: 3, scope: !3241, inlinedAt: !3319)
!3321 = !DILocation(line: 972, column: 26, scope: !3241, inlinedAt: !3319)
!3322 = !DILocation(line: 973, column: 13, scope: !3241, inlinedAt: !3319)
!3323 = !DILocation(line: 0, scope: !2258, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 974, column: 3, scope: !3241, inlinedAt: !3319)
!3325 = !DILocation(line: 147, column: 57, scope: !2258, inlinedAt: !3324)
!3326 = !DILocation(line: 149, column: 21, scope: !2258, inlinedAt: !3324)
!3327 = !DILocation(line: 150, column: 6, scope: !2258, inlinedAt: !3324)
!3328 = !DILocation(line: 975, column: 10, scope: !3241, inlinedAt: !3319)
!3329 = !DILocation(line: 976, column: 1, scope: !3241, inlinedAt: !3319)
!3330 = !DILocation(line: 993, column: 3, scope: !3313)
!3331 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !609, file: !609, line: 997, type: !3133, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3332)
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !609, line: 997, type: !103)
!3334 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !609, line: 997, type: !635)
!3335 = !DILocalVariable(name: "arg", arg: 3, scope: !3331, file: !609, line: 997, type: !130)
!3336 = !DILocalVariable(name: "options", scope: !3331, file: !609, line: 999, type: !662)
!3337 = !DILocation(line: 185, column: 26, scope: !3148, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 1000, column: 13, scope: !3331)
!3339 = !DILocation(line: 0, scope: !3331)
!3340 = !DILocation(line: 999, column: 3, scope: !3331)
!3341 = !DILocation(line: 999, column: 26, scope: !3331)
!3342 = !DILocation(line: 0, scope: !3148, inlinedAt: !3338)
!3343 = !DILocation(line: 186, column: 13, scope: !3157, inlinedAt: !3338)
!3344 = !DILocation(line: 186, column: 7, scope: !3148, inlinedAt: !3338)
!3345 = !DILocation(line: 187, column: 5, scope: !3157, inlinedAt: !3338)
!3346 = !{!3347}
!3347 = distinct !{!3347, !3348, !"quoting_options_from_style: argument 0"}
!3348 = distinct !{!3348, !"quoting_options_from_style"}
!3349 = !DILocation(line: 1000, column: 13, scope: !3331)
!3350 = !DILocation(line: 0, scope: !2258, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 1001, column: 3, scope: !3331)
!3352 = !DILocation(line: 147, column: 57, scope: !2258, inlinedAt: !3351)
!3353 = !DILocation(line: 149, column: 21, scope: !2258, inlinedAt: !3351)
!3354 = !DILocation(line: 150, column: 6, scope: !2258, inlinedAt: !3351)
!3355 = !DILocation(line: 1002, column: 10, scope: !3331)
!3356 = !DILocation(line: 1003, column: 1, scope: !3331)
!3357 = !DILocation(line: 1002, column: 3, scope: !3331)
!3358 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !609, file: !609, line: 1006, type: !3359, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!124, !103, !130, !130, !130}
!3361 = !{!3362, !3363, !3364, !3365}
!3362 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !609, line: 1006, type: !103)
!3363 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3358, file: !609, line: 1006, type: !130)
!3364 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3358, file: !609, line: 1007, type: !130)
!3365 = !DILocalVariable(name: "arg", arg: 4, scope: !3358, file: !609, line: 1007, type: !130)
!3366 = !DILocation(line: 0, scope: !3358)
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3368, file: !609, line: 1014, type: !103)
!3368 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !609, file: !609, line: 1014, type: !3369, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!124, !103, !130, !130, !130, !127}
!3371 = !{!3367, !3372, !3373, !3374, !3375, !3376}
!3372 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3368, file: !609, line: 1014, type: !130)
!3373 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3368, file: !609, line: 1015, type: !130)
!3374 = !DILocalVariable(name: "arg", arg: 4, scope: !3368, file: !609, line: 1016, type: !130)
!3375 = !DILocalVariable(name: "argsize", arg: 5, scope: !3368, file: !609, line: 1016, type: !127)
!3376 = !DILocalVariable(name: "o", scope: !3368, file: !609, line: 1018, type: !662)
!3377 = !DILocation(line: 0, scope: !3368, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 1009, column: 10, scope: !3358)
!3379 = !DILocation(line: 1018, column: 3, scope: !3368, inlinedAt: !3378)
!3380 = !DILocation(line: 1018, column: 26, scope: !3368, inlinedAt: !3378)
!3381 = !DILocation(line: 1018, column: 30, scope: !3368, inlinedAt: !3378)
!3382 = !DILocation(line: 0, scope: !2298, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 1019, column: 3, scope: !3368, inlinedAt: !3378)
!3384 = !DILocation(line: 174, column: 12, scope: !2298, inlinedAt: !3383)
!3385 = !DILocation(line: 175, column: 8, scope: !2311, inlinedAt: !3383)
!3386 = !DILocation(line: 175, column: 19, scope: !2311, inlinedAt: !3383)
!3387 = !DILocation(line: 176, column: 5, scope: !2311, inlinedAt: !3383)
!3388 = !DILocation(line: 177, column: 6, scope: !2298, inlinedAt: !3383)
!3389 = !DILocation(line: 177, column: 17, scope: !2298, inlinedAt: !3383)
!3390 = !DILocation(line: 178, column: 6, scope: !2298, inlinedAt: !3383)
!3391 = !DILocation(line: 178, column: 18, scope: !2298, inlinedAt: !3383)
!3392 = !DILocation(line: 1020, column: 10, scope: !3368, inlinedAt: !3378)
!3393 = !DILocation(line: 1021, column: 1, scope: !3368, inlinedAt: !3378)
!3394 = !DILocation(line: 1009, column: 3, scope: !3358)
!3395 = !DILocation(line: 0, scope: !3368)
!3396 = !DILocation(line: 1018, column: 3, scope: !3368)
!3397 = !DILocation(line: 1018, column: 26, scope: !3368)
!3398 = !DILocation(line: 1018, column: 30, scope: !3368)
!3399 = !DILocation(line: 0, scope: !2298, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 1019, column: 3, scope: !3368)
!3401 = !DILocation(line: 174, column: 12, scope: !2298, inlinedAt: !3400)
!3402 = !DILocation(line: 175, column: 8, scope: !2311, inlinedAt: !3400)
!3403 = !DILocation(line: 175, column: 19, scope: !2311, inlinedAt: !3400)
!3404 = !DILocation(line: 176, column: 5, scope: !2311, inlinedAt: !3400)
!3405 = !DILocation(line: 177, column: 6, scope: !2298, inlinedAt: !3400)
!3406 = !DILocation(line: 177, column: 17, scope: !2298, inlinedAt: !3400)
!3407 = !DILocation(line: 178, column: 6, scope: !2298, inlinedAt: !3400)
!3408 = !DILocation(line: 178, column: 18, scope: !2298, inlinedAt: !3400)
!3409 = !DILocation(line: 1020, column: 10, scope: !3368)
!3410 = !DILocation(line: 1021, column: 1, scope: !3368)
!3411 = !DILocation(line: 1020, column: 3, scope: !3368)
!3412 = distinct !DISubprogram(name: "quotearg_custom", scope: !609, file: !609, line: 1024, type: !3413, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!124, !130, !130, !130}
!3415 = !{!3416, !3417, !3418}
!3416 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3412, file: !609, line: 1024, type: !130)
!3417 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3412, file: !609, line: 1024, type: !130)
!3418 = !DILocalVariable(name: "arg", arg: 3, scope: !3412, file: !609, line: 1025, type: !130)
!3419 = !DILocation(line: 0, scope: !3412)
!3420 = !DILocation(line: 0, scope: !3358, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 1027, column: 10, scope: !3412)
!3422 = !DILocation(line: 0, scope: !3368, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 1009, column: 10, scope: !3358, inlinedAt: !3421)
!3424 = !DILocation(line: 1018, column: 3, scope: !3368, inlinedAt: !3423)
!3425 = !DILocation(line: 1018, column: 26, scope: !3368, inlinedAt: !3423)
!3426 = !DILocation(line: 1018, column: 30, scope: !3368, inlinedAt: !3423)
!3427 = !DILocation(line: 0, scope: !2298, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 1019, column: 3, scope: !3368, inlinedAt: !3423)
!3429 = !DILocation(line: 174, column: 12, scope: !2298, inlinedAt: !3428)
!3430 = !DILocation(line: 175, column: 8, scope: !2311, inlinedAt: !3428)
!3431 = !DILocation(line: 175, column: 19, scope: !2311, inlinedAt: !3428)
!3432 = !DILocation(line: 176, column: 5, scope: !2311, inlinedAt: !3428)
!3433 = !DILocation(line: 177, column: 6, scope: !2298, inlinedAt: !3428)
!3434 = !DILocation(line: 177, column: 17, scope: !2298, inlinedAt: !3428)
!3435 = !DILocation(line: 178, column: 6, scope: !2298, inlinedAt: !3428)
!3436 = !DILocation(line: 178, column: 18, scope: !2298, inlinedAt: !3428)
!3437 = !DILocation(line: 1020, column: 10, scope: !3368, inlinedAt: !3423)
!3438 = !DILocation(line: 1021, column: 1, scope: !3368, inlinedAt: !3423)
!3439 = !DILocation(line: 1027, column: 3, scope: !3412)
!3440 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !609, file: !609, line: 1031, type: !3441, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!124, !130, !130, !130, !127}
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3440, file: !609, line: 1031, type: !130)
!3445 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3440, file: !609, line: 1031, type: !130)
!3446 = !DILocalVariable(name: "arg", arg: 3, scope: !3440, file: !609, line: 1032, type: !130)
!3447 = !DILocalVariable(name: "argsize", arg: 4, scope: !3440, file: !609, line: 1032, type: !127)
!3448 = !DILocation(line: 0, scope: !3440)
!3449 = !DILocation(line: 0, scope: !3368, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 1034, column: 10, scope: !3440)
!3451 = !DILocation(line: 1018, column: 3, scope: !3368, inlinedAt: !3450)
!3452 = !DILocation(line: 1018, column: 26, scope: !3368, inlinedAt: !3450)
!3453 = !DILocation(line: 1018, column: 30, scope: !3368, inlinedAt: !3450)
!3454 = !DILocation(line: 0, scope: !2298, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1019, column: 3, scope: !3368, inlinedAt: !3450)
!3456 = !DILocation(line: 174, column: 12, scope: !2298, inlinedAt: !3455)
!3457 = !DILocation(line: 175, column: 8, scope: !2311, inlinedAt: !3455)
!3458 = !DILocation(line: 175, column: 19, scope: !2311, inlinedAt: !3455)
!3459 = !DILocation(line: 176, column: 5, scope: !2311, inlinedAt: !3455)
!3460 = !DILocation(line: 177, column: 6, scope: !2298, inlinedAt: !3455)
!3461 = !DILocation(line: 177, column: 17, scope: !2298, inlinedAt: !3455)
!3462 = !DILocation(line: 178, column: 6, scope: !2298, inlinedAt: !3455)
!3463 = !DILocation(line: 178, column: 18, scope: !2298, inlinedAt: !3455)
!3464 = !DILocation(line: 1020, column: 10, scope: !3368, inlinedAt: !3450)
!3465 = !DILocation(line: 1021, column: 1, scope: !3368, inlinedAt: !3450)
!3466 = !DILocation(line: 1034, column: 3, scope: !3440)
!3467 = distinct !DISubprogram(name: "quote_n_mem", scope: !609, file: !609, line: 1049, type: !3468, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!130, !103, !130, !127}
!3470 = !{!3471, !3472, !3473}
!3471 = !DILocalVariable(name: "n", arg: 1, scope: !3467, file: !609, line: 1049, type: !103)
!3472 = !DILocalVariable(name: "arg", arg: 2, scope: !3467, file: !609, line: 1049, type: !130)
!3473 = !DILocalVariable(name: "argsize", arg: 3, scope: !3467, file: !609, line: 1049, type: !127)
!3474 = !DILocation(line: 0, scope: !3467)
!3475 = !DILocation(line: 1051, column: 10, scope: !3467)
!3476 = !DILocation(line: 1051, column: 3, scope: !3467)
!3477 = distinct !DISubprogram(name: "quote_mem", scope: !609, file: !609, line: 1055, type: !3478, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!130, !130, !127}
!3480 = !{!3481, !3482}
!3481 = !DILocalVariable(name: "arg", arg: 1, scope: !3477, file: !609, line: 1055, type: !130)
!3482 = !DILocalVariable(name: "argsize", arg: 2, scope: !3477, file: !609, line: 1055, type: !127)
!3483 = !DILocation(line: 0, scope: !3477)
!3484 = !DILocation(line: 0, scope: !3467, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 1057, column: 10, scope: !3477)
!3486 = !DILocation(line: 1051, column: 10, scope: !3467, inlinedAt: !3485)
!3487 = !DILocation(line: 1057, column: 3, scope: !3477)
!3488 = distinct !DISubprogram(name: "quote_n", scope: !609, file: !609, line: 1061, type: !3489, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!130, !103, !130}
!3491 = !{!3492, !3493}
!3492 = !DILocalVariable(name: "n", arg: 1, scope: !3488, file: !609, line: 1061, type: !103)
!3493 = !DILocalVariable(name: "arg", arg: 2, scope: !3488, file: !609, line: 1061, type: !130)
!3494 = !DILocation(line: 0, scope: !3488)
!3495 = !DILocation(line: 0, scope: !3467, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 1063, column: 10, scope: !3488)
!3497 = !DILocation(line: 1051, column: 10, scope: !3467, inlinedAt: !3496)
!3498 = !DILocation(line: 1063, column: 3, scope: !3488)
!3499 = distinct !DISubprogram(name: "quote", scope: !609, file: !609, line: 1067, type: !3500, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3502)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!130, !130}
!3502 = !{!3503}
!3503 = !DILocalVariable(name: "arg", arg: 1, scope: !3499, file: !609, line: 1067, type: !130)
!3504 = !DILocation(line: 0, scope: !3499)
!3505 = !DILocation(line: 0, scope: !3488, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 1069, column: 10, scope: !3499)
!3507 = !DILocation(line: 0, scope: !3467, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 1063, column: 10, scope: !3488, inlinedAt: !3506)
!3509 = !DILocation(line: 1051, column: 10, scope: !3467, inlinedAt: !3508)
!3510 = !DILocation(line: 1069, column: 3, scope: !3499)
!3511 = distinct !DISubprogram(name: "parse_user_spec_warn", scope: !725, file: !725, line: 253, type: !3512, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !3516)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!130, !130, !3514, !943, !1220, !1220, !3515}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526}
!3517 = !DILocalVariable(name: "spec", arg: 1, scope: !3511, file: !725, line: 253, type: !130)
!3518 = !DILocalVariable(name: "uid", arg: 2, scope: !3511, file: !725, line: 253, type: !3514)
!3519 = !DILocalVariable(name: "gid", arg: 3, scope: !3511, file: !725, line: 253, type: !943)
!3520 = !DILocalVariable(name: "username", arg: 4, scope: !3511, file: !725, line: 254, type: !1220)
!3521 = !DILocalVariable(name: "groupname", arg: 5, scope: !3511, file: !725, line: 254, type: !1220)
!3522 = !DILocalVariable(name: "pwarn", arg: 6, scope: !3511, file: !725, line: 254, type: !3515)
!3523 = !DILocalVariable(name: "colon", scope: !3511, file: !725, line: 256, type: !130)
!3524 = !DILocalVariable(name: "error_msg", scope: !3511, file: !725, line: 257, type: !130)
!3525 = !DILocalVariable(name: "warn", scope: !3511, file: !725, line: 259, type: !223)
!3526 = !DILocalVariable(name: "dot", scope: !3527, file: !725, line: 269, type: !130)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !725, line: 262, column: 5)
!3528 = distinct !DILexicalBlock(scope: !3511, file: !725, line: 261, column: 7)
!3529 = !DILocation(line: 0, scope: !3511)
!3530 = !DILocation(line: 256, column: 23, scope: !3511)
!3531 = !DILocation(line: 256, column: 29, scope: !3511)
!3532 = !DILocation(line: 258, column: 5, scope: !3511)
!3533 = !DILocation(line: 261, column: 7, scope: !3528)
!3534 = !DILocation(line: 261, column: 11, scope: !3528)
!3535 = !DILocation(line: 269, column: 25, scope: !3527)
!3536 = !DILocation(line: 0, scope: !3527)
!3537 = !DILocation(line: 270, column: 11, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3527, file: !725, line: 270, column: 11)
!3539 = !DILocation(line: 271, column: 11, scope: !3538)
!3540 = !DILocation(line: 271, column: 16, scope: !3538)
!3541 = !DILocation(line: 270, column: 11, scope: !3527)
!3542 = !DILocation(line: 274, column: 23, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3538, file: !725, line: 272, column: 9)
!3544 = !DILocation(line: 275, column: 9, scope: !3543)
!3545 = !DILocation(line: 257, column: 15, scope: !3511)
!3546 = !DILocation(line: 278, column: 7, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3511, file: !725, line: 278, column: 7)
!3548 = !DILocation(line: 278, column: 7, scope: !3511)
!3549 = !DILocation(line: 279, column: 12, scope: !3547)
!3550 = !DILocation(line: 279, column: 5, scope: !3547)
!3551 = !DILocation(line: 280, column: 3, scope: !3511)
!3552 = distinct !DISubprogram(name: "parse_with_separator", scope: !725, file: !725, line: 101, type: !3553, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!130, !130, !130, !3514, !943, !1220, !1220}
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3567, !3568, !3569, !3570, !3571, !3584, !3587, !3590, !3594, !3602, !3605}
!3556 = !DILocalVariable(name: "spec", arg: 1, scope: !3552, file: !725, line: 101, type: !130)
!3557 = !DILocalVariable(name: "separator", arg: 2, scope: !3552, file: !725, line: 101, type: !130)
!3558 = !DILocalVariable(name: "uid", arg: 3, scope: !3552, file: !725, line: 102, type: !3514)
!3559 = !DILocalVariable(name: "gid", arg: 4, scope: !3552, file: !725, line: 102, type: !943)
!3560 = !DILocalVariable(name: "username", arg: 5, scope: !3552, file: !725, line: 103, type: !1220)
!3561 = !DILocalVariable(name: "groupname", arg: 6, scope: !3552, file: !725, line: 103, type: !1220)
!3562 = !DILocalVariable(name: "error_msg", scope: !3552, file: !725, line: 105, type: !130)
!3563 = !DILocalVariable(name: "u", scope: !3552, file: !725, line: 115, type: !124)
!3564 = !DILocalVariable(name: "ulen", scope: !3565, file: !725, line: 123, type: !902)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !725, line: 122, column: 5)
!3566 = distinct !DILexicalBlock(scope: !3552, file: !725, line: 116, column: 7)
!3567 = !DILocalVariable(name: "g", scope: !3552, file: !725, line: 131, type: !130)
!3568 = !DILocalVariable(name: "gname", scope: !3552, file: !725, line: 144, type: !124)
!3569 = !DILocalVariable(name: "unum", scope: !3552, file: !725, line: 145, type: !200)
!3570 = !DILocalVariable(name: "gnum", scope: !3552, file: !725, line: 146, type: !207)
!3571 = !DILocalVariable(name: "pwd", scope: !3572, file: !725, line: 151, type: !3574)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !725, line: 149, column: 5)
!3573 = distinct !DILexicalBlock(scope: !3552, file: !725, line: 148, column: 7)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1238, line: 49, size: 384, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582, !3583}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3575, file: !1238, line: 51, baseType: !124, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3575, file: !1238, line: 52, baseType: !124, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3575, file: !1238, line: 54, baseType: !202, size: 32, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3575, file: !1238, line: 55, baseType: !208, size: 32, offset: 160)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3575, file: !1238, line: 56, baseType: !124, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3575, file: !1238, line: 57, baseType: !124, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3575, file: !1238, line: 58, baseType: !124, size: 64, offset: 320)
!3584 = !DILocalVariable(name: "use_login_group", scope: !3585, file: !725, line: 155, type: !223)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !725, line: 153, column: 9)
!3586 = distinct !DILexicalBlock(scope: !3572, file: !725, line: 152, column: 11)
!3587 = !DILocalVariable(name: "tmp", scope: !3588, file: !725, line: 164, type: !129)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !725, line: 163, column: 13)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !725, line: 156, column: 15)
!3590 = !DILocalVariable(name: "buf", scope: !3591, file: !725, line: 179, type: !558)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !725, line: 176, column: 13)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !725, line: 175, column: 15)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !725, line: 173, column: 9)
!3594 = !DILocalVariable(name: "grp", scope: !3591, file: !725, line: 181, type: !3595)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1528, line: 42, size: 256, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3596, file: !1528, line: 44, baseType: !124, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3596, file: !1528, line: 45, baseType: !124, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3596, file: !1528, line: 46, baseType: !208, size: 32, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3596, file: !1528, line: 47, baseType: !1220, size: 64, offset: 192)
!3602 = !DILocalVariable(name: "grp", scope: !3603, file: !725, line: 193, type: !3595)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !725, line: 190, column: 5)
!3604 = distinct !DILexicalBlock(scope: !3552, file: !725, line: 189, column: 7)
!3605 = !DILocalVariable(name: "tmp", scope: !3606, file: !725, line: 197, type: !129)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !725, line: 195, column: 9)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !725, line: 194, column: 11)
!3608 = !DILocation(line: 0, scope: !3552)
!3609 = !DILocation(line: 106, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3552, file: !725, line: 106, column: 7)
!3611 = !DILocation(line: 106, column: 7, scope: !3552)
!3612 = !DILocation(line: 107, column: 15, scope: !3610)
!3613 = !DILocation(line: 107, column: 5, scope: !3610)
!3614 = !DILocation(line: 108, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3552, file: !725, line: 108, column: 7)
!3616 = !DILocation(line: 108, column: 7, scope: !3552)
!3617 = !DILocation(line: 109, column: 16, scope: !3615)
!3618 = !DILocation(line: 109, column: 5, scope: !3615)
!3619 = !DILocation(line: 116, column: 17, scope: !3566)
!3620 = !DILocation(line: 116, column: 7, scope: !3552)
!3621 = !DILocation(line: 118, column: 11, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !725, line: 118, column: 11)
!3623 = distinct !DILexicalBlock(scope: !3566, file: !725, line: 117, column: 5)
!3624 = !DILocation(line: 118, column: 11, scope: !3623)
!3625 = !DILocation(line: 119, column: 13, scope: !3622)
!3626 = !DILocation(line: 119, column: 9, scope: !3622)
!3627 = !DILocation(line: 0, scope: !3565)
!3628 = !DILocation(line: 124, column: 16, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3565, file: !725, line: 124, column: 11)
!3630 = !DILocation(line: 124, column: 11, scope: !3565)
!3631 = !DILocation(line: 123, column: 30, scope: !3565)
!3632 = !DILocation(line: 126, column: 36, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !725, line: 125, column: 9)
!3634 = !DILocation(line: 126, column: 15, scope: !3633)
!3635 = !DILocation(line: 127, column: 11, scope: !3633)
!3636 = !DILocation(line: 127, column: 19, scope: !3633)
!3637 = !DILocation(line: 128, column: 9, scope: !3633)
!3638 = !DILocation(line: 131, column: 53, scope: !3552)
!3639 = !DILocation(line: 131, column: 41, scope: !3552)
!3640 = !DILocation(line: 131, column: 58, scope: !3552)
!3641 = !DILocation(line: 131, column: 20, scope: !3552)
!3642 = !DILocation(line: 145, column: 16, scope: !3552)
!3643 = !DILocation(line: 146, column: 16, scope: !3552)
!3644 = !DILocation(line: 146, column: 22, scope: !3552)
!3645 = !DILocation(line: 148, column: 9, scope: !3573)
!3646 = !DILocation(line: 148, column: 7, scope: !3552)
!3647 = !DILocation(line: 151, column: 29, scope: !3572)
!3648 = !DILocation(line: 151, column: 32, scope: !3572)
!3649 = !DILocation(line: 151, column: 48, scope: !3572)
!3650 = !DILocation(line: 0, scope: !3572)
!3651 = !DILocation(line: 152, column: 15, scope: !3586)
!3652 = !DILocation(line: 152, column: 11, scope: !3572)
!3653 = !DILocation(line: 155, column: 45, scope: !3585)
!3654 = !DILocation(line: 155, column: 53, scope: !3585)
!3655 = !DILocation(line: 0, scope: !3585)
!3656 = !DILocation(line: 156, column: 15, scope: !3585)
!3657 = !DILocation(line: 164, column: 15, scope: !3588)
!3658 = !DILocation(line: 0, scope: !3588)
!3659 = !DILocation(line: 165, column: 19, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3588, file: !725, line: 165, column: 19)
!3661 = !DILocation(line: 165, column: 52, scope: !3660)
!3662 = !DILocation(line: 166, column: 19, scope: !3660)
!3663 = !DILocation(line: 170, column: 13, scope: !3589)
!3664 = !DILocation(line: 174, column: 23, scope: !3593)
!3665 = !DILocation(line: 175, column: 17, scope: !3592)
!3666 = !DILocation(line: 175, column: 25, scope: !3592)
!3667 = !DILocation(line: 179, column: 15, scope: !3591)
!3668 = !DILocation(line: 179, column: 20, scope: !3591)
!3669 = !DILocation(line: 180, column: 27, scope: !3591)
!3670 = !DILocation(line: 181, column: 35, scope: !3591)
!3671 = !DILocation(line: 0, scope: !3591)
!3672 = !DILocation(line: 182, column: 32, scope: !3591)
!3673 = !DILocation(line: 182, column: 43, scope: !3591)
!3674 = !DILocation(line: 182, column: 64, scope: !3591)
!3675 = !DILocation(line: 182, column: 53, scope: !3591)
!3676 = !DILocation(line: 182, column: 23, scope: !3591)
!3677 = !DILocation(line: 183, column: 15, scope: !3591)
!3678 = !DILocation(line: 184, column: 13, scope: !3592)
!3679 = !DILocation(line: 184, column: 13, scope: !3591)
!3680 = !DILocation(line: 186, column: 7, scope: !3572)
!3681 = !DILocation(line: 187, column: 5, scope: !3572)
!3682 = !DILocation(line: 144, column: 9, scope: !3552)
!3683 = !DILocation(line: 145, column: 9, scope: !3552)
!3684 = !DILocation(line: 146, column: 9, scope: !3552)
!3685 = !DILocation(line: 189, column: 9, scope: !3604)
!3686 = !DILocation(line: 189, column: 17, scope: !3604)
!3687 = !DILocation(line: 193, column: 28, scope: !3603)
!3688 = !DILocation(line: 193, column: 31, scope: !3603)
!3689 = !DILocation(line: 193, column: 47, scope: !3603)
!3690 = !DILocation(line: 0, scope: !3603)
!3691 = !DILocation(line: 194, column: 15, scope: !3607)
!3692 = !DILocation(line: 194, column: 11, scope: !3603)
!3693 = !DILocation(line: 197, column: 11, scope: !3606)
!3694 = !DILocation(line: 0, scope: !3606)
!3695 = !DILocation(line: 198, column: 15, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3606, file: !725, line: 198, column: 15)
!3697 = !DILocation(line: 198, column: 48, scope: !3696)
!3698 = !DILocation(line: 199, column: 15, scope: !3696)
!3699 = !DILocation(line: 203, column: 9, scope: !3607)
!3700 = !DILocation(line: 203, column: 9, scope: !3606)
!3701 = !DILocation(line: 205, column: 21, scope: !3607)
!3702 = !{!1558, !1071, i64 16}
!3703 = !DILocation(line: 0, scope: !3607)
!3704 = !DILocation(line: 160, column: 25, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3589, file: !725, line: 157, column: 13)
!3706 = !DILocation(line: 206, column: 7, scope: !3603)
!3707 = !DILocation(line: 207, column: 15, scope: !3603)
!3708 = !DILocation(line: 208, column: 5, scope: !3603)
!3709 = !DILocation(line: 210, column: 17, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3552, file: !725, line: 210, column: 7)
!3711 = !DILocation(line: 210, column: 7, scope: !3552)
!3712 = !DILocation(line: 212, column: 12, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !725, line: 211, column: 5)
!3714 = !DILocation(line: 213, column: 11, scope: !3713)
!3715 = !DILocation(line: 214, column: 14, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3713, file: !725, line: 213, column: 11)
!3717 = !DILocation(line: 214, column: 9, scope: !3716)
!3718 = !DILocation(line: 215, column: 11, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3713, file: !725, line: 215, column: 11)
!3720 = !DILocation(line: 215, column: 11, scope: !3713)
!3721 = !DILocation(line: 217, column: 21, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !725, line: 216, column: 9)
!3723 = !DILocation(line: 219, column: 9, scope: !3722)
!3724 = !DILocation(line: 220, column: 11, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3713, file: !725, line: 220, column: 11)
!3726 = !DILocation(line: 220, column: 11, scope: !3713)
!3727 = !DILocation(line: 222, column: 22, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3725, file: !725, line: 221, column: 9)
!3729 = !DILocation(line: 224, column: 9, scope: !3728)
!3730 = !DILocation(line: 227, column: 3, scope: !3552)
!3731 = !DILocation(line: 228, column: 3, scope: !3552)
!3732 = !DILocation(line: 229, column: 22, scope: !3552)
!3733 = !DILocation(line: 229, column: 10, scope: !3552)
!3734 = !DILocation(line: 229, column: 3, scope: !3552)
!3735 = !DISubprogram(name: "endgrent", scope: !1528, file: !1528, line: 67, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!3736 = !DISubprogram(name: "endpwent", scope: !1238, file: !1238, line: 78, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!3737 = !DISubprogram(name: "getgrnam", scope: !1528, file: !1528, line: 107, type: !3738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3595, !130}
!3740 = distinct !DISubprogram(name: "parse_user_spec", scope: !725, file: !725, line: 286, type: !3741, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!130, !130, !3514, !943, !1220, !1220}
!3743 = !{!3744, !3745, !3746, !3747, !3748}
!3744 = !DILocalVariable(name: "spec", arg: 1, scope: !3740, file: !725, line: 286, type: !130)
!3745 = !DILocalVariable(name: "uid", arg: 2, scope: !3740, file: !725, line: 286, type: !3514)
!3746 = !DILocalVariable(name: "gid", arg: 3, scope: !3740, file: !725, line: 286, type: !943)
!3747 = !DILocalVariable(name: "username", arg: 4, scope: !3740, file: !725, line: 287, type: !1220)
!3748 = !DILocalVariable(name: "groupname", arg: 5, scope: !3740, file: !725, line: 287, type: !1220)
!3749 = !DILocation(line: 0, scope: !3740)
!3750 = !DILocation(line: 0, scope: !3511, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 289, column: 10, scope: !3740)
!3752 = !DILocation(line: 256, column: 23, scope: !3511, inlinedAt: !3751)
!3753 = !DILocation(line: 256, column: 29, scope: !3511, inlinedAt: !3751)
!3754 = !DILocation(line: 258, column: 5, scope: !3511, inlinedAt: !3751)
!3755 = !DILocation(line: 261, column: 7, scope: !3528, inlinedAt: !3751)
!3756 = !DILocation(line: 261, column: 11, scope: !3528, inlinedAt: !3751)
!3757 = !DILocation(line: 269, column: 25, scope: !3527, inlinedAt: !3751)
!3758 = !DILocation(line: 0, scope: !3527, inlinedAt: !3751)
!3759 = !DILocation(line: 270, column: 11, scope: !3538, inlinedAt: !3751)
!3760 = !DILocation(line: 271, column: 11, scope: !3538, inlinedAt: !3751)
!3761 = !DILocation(line: 271, column: 16, scope: !3538, inlinedAt: !3751)
!3762 = !DILocation(line: 270, column: 11, scope: !3527, inlinedAt: !3751)
!3763 = !DILocation(line: 257, column: 15, scope: !3511, inlinedAt: !3751)
!3764 = !DILocation(line: 289, column: 3, scope: !3740)
!3765 = distinct !DISubprogram(name: "version_etc_arn", scope: !738, file: !738, line: 61, type: !3766, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3803)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !3768, !130, !130, !130, !3802, !127}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3770)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3771)
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3770, file: !240, line: 51, baseType: !103, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3770, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3770, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3770, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3770, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3770, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3770, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3770, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3770, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3770, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3770, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3770, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3770, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3770, file: !240, line: 70, baseType: !3786, size: 64, offset: 832)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3770, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3770, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3770, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3770, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3770, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3770, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3770, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3770, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3770, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3770, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3770, file: !240, line: 93, baseType: !3786, size: 64, offset: 1344)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3770, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3770, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3770, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3770, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809}
!3804 = !DILocalVariable(name: "stream", arg: 1, scope: !3765, file: !738, line: 61, type: !3768)
!3805 = !DILocalVariable(name: "command_name", arg: 2, scope: !3765, file: !738, line: 62, type: !130)
!3806 = !DILocalVariable(name: "package", arg: 3, scope: !3765, file: !738, line: 62, type: !130)
!3807 = !DILocalVariable(name: "version", arg: 4, scope: !3765, file: !738, line: 63, type: !130)
!3808 = !DILocalVariable(name: "authors", arg: 5, scope: !3765, file: !738, line: 64, type: !3802)
!3809 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3765, file: !738, line: 64, type: !127)
!3810 = !DILocation(line: 0, scope: !3765)
!3811 = !DILocation(line: 66, column: 7, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3765, file: !738, line: 66, column: 7)
!3813 = !DILocation(line: 66, column: 7, scope: !3765)
!3814 = !DILocation(line: 67, column: 5, scope: !3812)
!3815 = !DILocation(line: 69, column: 5, scope: !3812)
!3816 = !DILocation(line: 83, column: 3, scope: !3765)
!3817 = !DILocation(line: 85, column: 3, scope: !3765)
!3818 = !DILocation(line: 88, column: 3, scope: !3765)
!3819 = !DILocation(line: 95, column: 3, scope: !3765)
!3820 = !DILocation(line: 97, column: 3, scope: !3765)
!3821 = !DILocation(line: 105, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3765, file: !738, line: 98, column: 5)
!3823 = !DILocation(line: 106, column: 7, scope: !3822)
!3824 = !DILocation(line: 109, column: 7, scope: !3822)
!3825 = !DILocation(line: 110, column: 7, scope: !3822)
!3826 = !DILocation(line: 113, column: 7, scope: !3822)
!3827 = !DILocation(line: 115, column: 7, scope: !3822)
!3828 = !DILocation(line: 120, column: 7, scope: !3822)
!3829 = !DILocation(line: 122, column: 7, scope: !3822)
!3830 = !DILocation(line: 127, column: 7, scope: !3822)
!3831 = !DILocation(line: 129, column: 7, scope: !3822)
!3832 = !DILocation(line: 134, column: 7, scope: !3822)
!3833 = !DILocation(line: 137, column: 7, scope: !3822)
!3834 = !DILocation(line: 142, column: 7, scope: !3822)
!3835 = !DILocation(line: 145, column: 7, scope: !3822)
!3836 = !DILocation(line: 150, column: 7, scope: !3822)
!3837 = !DILocation(line: 154, column: 7, scope: !3822)
!3838 = !DILocation(line: 159, column: 7, scope: !3822)
!3839 = !DILocation(line: 163, column: 7, scope: !3822)
!3840 = !DILocation(line: 170, column: 7, scope: !3822)
!3841 = !DILocation(line: 174, column: 7, scope: !3822)
!3842 = !DILocation(line: 176, column: 1, scope: !3765)
!3843 = distinct !DISubprogram(name: "version_etc_ar", scope: !738, file: !738, line: 183, type: !3844, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !3768, !130, !130, !130, !3802}
!3846 = !{!3847, !3848, !3849, !3850, !3851, !3852}
!3847 = !DILocalVariable(name: "stream", arg: 1, scope: !3843, file: !738, line: 183, type: !3768)
!3848 = !DILocalVariable(name: "command_name", arg: 2, scope: !3843, file: !738, line: 184, type: !130)
!3849 = !DILocalVariable(name: "package", arg: 3, scope: !3843, file: !738, line: 184, type: !130)
!3850 = !DILocalVariable(name: "version", arg: 4, scope: !3843, file: !738, line: 185, type: !130)
!3851 = !DILocalVariable(name: "authors", arg: 5, scope: !3843, file: !738, line: 185, type: !3802)
!3852 = !DILocalVariable(name: "n_authors", scope: !3843, file: !738, line: 187, type: !127)
!3853 = !DILocation(line: 0, scope: !3843)
!3854 = !DILocation(line: 189, column: 8, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3843, file: !738, line: 189, column: 3)
!3856 = !DILocation(line: 189, scope: !3855)
!3857 = !DILocation(line: 189, column: 23, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3855, file: !738, line: 189, column: 3)
!3859 = !DILocation(line: 189, column: 3, scope: !3855)
!3860 = !DILocation(line: 189, column: 52, scope: !3858)
!3861 = distinct !{!3861, !3859, !3862, !1117}
!3862 = !DILocation(line: 190, column: 5, scope: !3855)
!3863 = !DILocation(line: 191, column: 3, scope: !3843)
!3864 = !DILocation(line: 192, column: 1, scope: !3843)
!3865 = distinct !DISubprogram(name: "version_etc_va", scope: !738, file: !738, line: 199, type: !3866, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3879)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3768, !130, !130, !130, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !523, line: 52, baseType: !3869)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !525, line: 14, baseType: !3870)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3871, baseType: !3872)
!3871 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3872, file: !3871, line: 192, baseType: !125, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3872, file: !3871, line: 192, baseType: !125, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3872, file: !3871, line: 192, baseType: !125, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3872, file: !3871, line: 192, baseType: !103, size: 32, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3872, file: !3871, line: 192, baseType: !103, size: 32, offset: 224)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3880 = !DILocalVariable(name: "stream", arg: 1, scope: !3865, file: !738, line: 199, type: !3768)
!3881 = !DILocalVariable(name: "command_name", arg: 2, scope: !3865, file: !738, line: 200, type: !130)
!3882 = !DILocalVariable(name: "package", arg: 3, scope: !3865, file: !738, line: 200, type: !130)
!3883 = !DILocalVariable(name: "version", arg: 4, scope: !3865, file: !738, line: 201, type: !130)
!3884 = !DILocalVariable(name: "authors", arg: 5, scope: !3865, file: !738, line: 201, type: !3868)
!3885 = !DILocalVariable(name: "n_authors", scope: !3865, file: !738, line: 203, type: !127)
!3886 = !DILocalVariable(name: "authtab", scope: !3865, file: !738, line: 204, type: !3887)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 640, elements: !85)
!3888 = !DILocation(line: 0, scope: !3865)
!3889 = !DILocation(line: 201, column: 46, scope: !3865)
!3890 = !DILocation(line: 204, column: 3, scope: !3865)
!3891 = !DILocation(line: 204, column: 15, scope: !3865)
!3892 = !DILocation(line: 208, column: 35, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !738, line: 206, column: 3)
!3894 = distinct !DILexicalBlock(scope: !3865, file: !738, line: 206, column: 3)
!3895 = !DILocation(line: 208, column: 33, scope: !3893)
!3896 = !DILocation(line: 208, column: 67, scope: !3893)
!3897 = !DILocation(line: 206, column: 3, scope: !3894)
!3898 = !DILocation(line: 208, column: 14, scope: !3893)
!3899 = !DILocation(line: 0, scope: !3894)
!3900 = !DILocation(line: 211, column: 3, scope: !3865)
!3901 = !DILocation(line: 213, column: 1, scope: !3865)
!3902 = distinct !DISubprogram(name: "version_etc", scope: !738, file: !738, line: 230, type: !3903, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3768, !130, !130, !130, null}
!3905 = !{!3906, !3907, !3908, !3909, !3910}
!3906 = !DILocalVariable(name: "stream", arg: 1, scope: !3902, file: !738, line: 230, type: !3768)
!3907 = !DILocalVariable(name: "command_name", arg: 2, scope: !3902, file: !738, line: 231, type: !130)
!3908 = !DILocalVariable(name: "package", arg: 3, scope: !3902, file: !738, line: 231, type: !130)
!3909 = !DILocalVariable(name: "version", arg: 4, scope: !3902, file: !738, line: 232, type: !130)
!3910 = !DILocalVariable(name: "authors", scope: !3902, file: !738, line: 234, type: !3868)
!3911 = !DILocation(line: 0, scope: !3902)
!3912 = !DILocation(line: 234, column: 3, scope: !3902)
!3913 = !DILocation(line: 234, column: 11, scope: !3902)
!3914 = !DILocation(line: 235, column: 3, scope: !3902)
!3915 = !DILocation(line: 236, column: 3, scope: !3902)
!3916 = !DILocation(line: 237, column: 3, scope: !3902)
!3917 = !DILocation(line: 238, column: 1, scope: !3902)
!3918 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !738, file: !738, line: 241, type: !564, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !1055)
!3919 = !DILocation(line: 243, column: 3, scope: !3918)
!3920 = !DILocation(line: 248, column: 3, scope: !3918)
!3921 = !DILocation(line: 254, column: 3, scope: !3918)
!3922 = !DILocation(line: 259, column: 3, scope: !3918)
!3923 = !DILocation(line: 261, column: 1, scope: !3918)
!3924 = distinct !DISubprogram(name: "xnrealloc", scope: !3925, file: !3925, line: 147, type: !3926, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3928)
!3925 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!125, !125, !127, !127}
!3928 = !{!3929, !3930, !3931}
!3929 = !DILocalVariable(name: "p", arg: 1, scope: !3924, file: !3925, line: 147, type: !125)
!3930 = !DILocalVariable(name: "n", arg: 2, scope: !3924, file: !3925, line: 147, type: !127)
!3931 = !DILocalVariable(name: "s", arg: 3, scope: !3924, file: !3925, line: 147, type: !127)
!3932 = !DILocation(line: 0, scope: !3924)
!3933 = !DILocalVariable(name: "p", arg: 1, scope: !3934, file: !883, line: 83, type: !125)
!3934 = distinct !DISubprogram(name: "xreallocarray", scope: !883, file: !883, line: 83, type: !3926, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3935)
!3935 = !{!3933, !3936, !3937}
!3936 = !DILocalVariable(name: "n", arg: 2, scope: !3934, file: !883, line: 83, type: !127)
!3937 = !DILocalVariable(name: "s", arg: 3, scope: !3934, file: !883, line: 83, type: !127)
!3938 = !DILocation(line: 0, scope: !3934, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 149, column: 10, scope: !3924)
!3940 = !DILocation(line: 85, column: 25, scope: !3934, inlinedAt: !3939)
!3941 = !DILocalVariable(name: "p", arg: 1, scope: !3942, file: !883, line: 37, type: !125)
!3942 = distinct !DISubprogram(name: "check_nonnull", scope: !883, file: !883, line: 37, type: !3943, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!125, !125}
!3945 = !{!3941}
!3946 = !DILocation(line: 0, scope: !3942, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 85, column: 10, scope: !3934, inlinedAt: !3939)
!3948 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !3947)
!3949 = distinct !DILexicalBlock(scope: !3942, file: !883, line: 39, column: 7)
!3950 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !3947)
!3951 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !3947)
!3952 = !DILocation(line: 149, column: 3, scope: !3924)
!3953 = !DILocation(line: 0, scope: !3934)
!3954 = !DILocation(line: 85, column: 25, scope: !3934)
!3955 = !DILocation(line: 0, scope: !3942, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 85, column: 10, scope: !3934)
!3957 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !3956)
!3958 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !3956)
!3959 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !3956)
!3960 = !DILocation(line: 85, column: 3, scope: !3934)
!3961 = distinct !DISubprogram(name: "xmalloc", scope: !883, file: !883, line: 47, type: !3962, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!125, !127}
!3964 = !{!3965}
!3965 = !DILocalVariable(name: "s", arg: 1, scope: !3961, file: !883, line: 47, type: !127)
!3966 = !DILocation(line: 0, scope: !3961)
!3967 = !DILocation(line: 49, column: 25, scope: !3961)
!3968 = !DILocation(line: 0, scope: !3942, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 49, column: 10, scope: !3961)
!3970 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !3969)
!3971 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !3969)
!3972 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !3969)
!3973 = !DILocation(line: 49, column: 3, scope: !3961)
!3974 = !DISubprogram(name: "malloc", scope: !1191, file: !1191, line: 540, type: !3962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!3975 = distinct !DISubprogram(name: "ximalloc", scope: !883, file: !883, line: 53, type: !3976, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!125, !902}
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "s", arg: 1, scope: !3975, file: !883, line: 53, type: !902)
!3980 = !DILocation(line: 0, scope: !3975)
!3981 = !DILocalVariable(name: "s", arg: 1, scope: !3982, file: !3983, line: 55, type: !902)
!3982 = distinct !DISubprogram(name: "imalloc", scope: !3983, file: !3983, line: 55, type: !3976, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3984)
!3983 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3984 = !{!3981}
!3985 = !DILocation(line: 0, scope: !3982, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 55, column: 25, scope: !3975)
!3987 = !DILocation(line: 57, column: 26, scope: !3982, inlinedAt: !3986)
!3988 = !DILocation(line: 0, scope: !3942, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 55, column: 10, scope: !3975)
!3990 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !3989)
!3991 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !3989)
!3992 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !3989)
!3993 = !DILocation(line: 55, column: 3, scope: !3975)
!3994 = distinct !DISubprogram(name: "xcharalloc", scope: !883, file: !883, line: 59, type: !3995, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!124, !127}
!3997 = !{!3998}
!3998 = !DILocalVariable(name: "n", arg: 1, scope: !3994, file: !883, line: 59, type: !127)
!3999 = !DILocation(line: 0, scope: !3994)
!4000 = !DILocation(line: 0, scope: !3961, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 61, column: 10, scope: !3994)
!4002 = !DILocation(line: 49, column: 25, scope: !3961, inlinedAt: !4001)
!4003 = !DILocation(line: 0, scope: !3942, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 49, column: 10, scope: !3961, inlinedAt: !4001)
!4005 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4004)
!4006 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4004)
!4007 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4004)
!4008 = !DILocation(line: 61, column: 3, scope: !3994)
!4009 = distinct !DISubprogram(name: "xrealloc", scope: !883, file: !883, line: 68, type: !4010, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!125, !125, !127}
!4012 = !{!4013, !4014}
!4013 = !DILocalVariable(name: "p", arg: 1, scope: !4009, file: !883, line: 68, type: !125)
!4014 = !DILocalVariable(name: "s", arg: 2, scope: !4009, file: !883, line: 68, type: !127)
!4015 = !DILocation(line: 0, scope: !4009)
!4016 = !DILocalVariable(name: "ptr", arg: 1, scope: !4017, file: !4018, line: 2057, type: !125)
!4017 = distinct !DISubprogram(name: "rpl_realloc", scope: !4018, file: !4018, line: 2057, type: !4010, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4019)
!4018 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4019 = !{!4016, !4020}
!4020 = !DILocalVariable(name: "size", arg: 2, scope: !4017, file: !4018, line: 2057, type: !127)
!4021 = !DILocation(line: 0, scope: !4017, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 70, column: 25, scope: !4009)
!4023 = !DILocation(line: 2059, column: 24, scope: !4017, inlinedAt: !4022)
!4024 = !DILocation(line: 2059, column: 10, scope: !4017, inlinedAt: !4022)
!4025 = !DILocation(line: 0, scope: !3942, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 70, column: 10, scope: !4009)
!4027 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4026)
!4028 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4026)
!4029 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4026)
!4030 = !DILocation(line: 70, column: 3, scope: !4009)
!4031 = !DISubprogram(name: "realloc", scope: !1191, file: !1191, line: 551, type: !4010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4032 = distinct !DISubprogram(name: "xirealloc", scope: !883, file: !883, line: 74, type: !4033, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!125, !125, !902}
!4035 = !{!4036, !4037}
!4036 = !DILocalVariable(name: "p", arg: 1, scope: !4032, file: !883, line: 74, type: !125)
!4037 = !DILocalVariable(name: "s", arg: 2, scope: !4032, file: !883, line: 74, type: !902)
!4038 = !DILocation(line: 0, scope: !4032)
!4039 = !DILocalVariable(name: "p", arg: 1, scope: !4040, file: !3983, line: 66, type: !125)
!4040 = distinct !DISubprogram(name: "irealloc", scope: !3983, file: !3983, line: 66, type: !4033, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4041)
!4041 = !{!4039, !4042}
!4042 = !DILocalVariable(name: "s", arg: 2, scope: !4040, file: !3983, line: 66, type: !902)
!4043 = !DILocation(line: 0, scope: !4040, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 76, column: 25, scope: !4032)
!4045 = !DILocation(line: 0, scope: !4017, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 68, column: 26, scope: !4040, inlinedAt: !4044)
!4047 = !DILocation(line: 2059, column: 24, scope: !4017, inlinedAt: !4046)
!4048 = !DILocation(line: 2059, column: 10, scope: !4017, inlinedAt: !4046)
!4049 = !DILocation(line: 0, scope: !3942, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 76, column: 10, scope: !4032)
!4051 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4050)
!4052 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4050)
!4053 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4050)
!4054 = !DILocation(line: 76, column: 3, scope: !4032)
!4055 = distinct !DISubprogram(name: "xireallocarray", scope: !883, file: !883, line: 89, type: !4056, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!125, !125, !902, !902}
!4058 = !{!4059, !4060, !4061}
!4059 = !DILocalVariable(name: "p", arg: 1, scope: !4055, file: !883, line: 89, type: !125)
!4060 = !DILocalVariable(name: "n", arg: 2, scope: !4055, file: !883, line: 89, type: !902)
!4061 = !DILocalVariable(name: "s", arg: 3, scope: !4055, file: !883, line: 89, type: !902)
!4062 = !DILocation(line: 0, scope: !4055)
!4063 = !DILocalVariable(name: "p", arg: 1, scope: !4064, file: !3983, line: 98, type: !125)
!4064 = distinct !DISubprogram(name: "ireallocarray", scope: !3983, file: !3983, line: 98, type: !4056, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4065)
!4065 = !{!4063, !4066, !4067}
!4066 = !DILocalVariable(name: "n", arg: 2, scope: !4064, file: !3983, line: 98, type: !902)
!4067 = !DILocalVariable(name: "s", arg: 3, scope: !4064, file: !3983, line: 98, type: !902)
!4068 = !DILocation(line: 0, scope: !4064, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 91, column: 25, scope: !4055)
!4070 = !DILocation(line: 101, column: 13, scope: !4064, inlinedAt: !4069)
!4071 = !DILocation(line: 0, scope: !3942, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 91, column: 10, scope: !4055)
!4073 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4072)
!4074 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4072)
!4075 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4072)
!4076 = !DILocation(line: 91, column: 3, scope: !4055)
!4077 = distinct !DISubprogram(name: "xnmalloc", scope: !883, file: !883, line: 98, type: !4078, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!125, !127, !127}
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "n", arg: 1, scope: !4077, file: !883, line: 98, type: !127)
!4082 = !DILocalVariable(name: "s", arg: 2, scope: !4077, file: !883, line: 98, type: !127)
!4083 = !DILocation(line: 0, scope: !4077)
!4084 = !DILocation(line: 0, scope: !3934, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 100, column: 10, scope: !4077)
!4086 = !DILocation(line: 85, column: 25, scope: !3934, inlinedAt: !4085)
!4087 = !DILocation(line: 0, scope: !3942, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 85, column: 10, scope: !3934, inlinedAt: !4085)
!4089 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4088)
!4090 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4088)
!4091 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4088)
!4092 = !DILocation(line: 100, column: 3, scope: !4077)
!4093 = distinct !DISubprogram(name: "xinmalloc", scope: !883, file: !883, line: 104, type: !4094, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4096)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!125, !902, !902}
!4096 = !{!4097, !4098}
!4097 = !DILocalVariable(name: "n", arg: 1, scope: !4093, file: !883, line: 104, type: !902)
!4098 = !DILocalVariable(name: "s", arg: 2, scope: !4093, file: !883, line: 104, type: !902)
!4099 = !DILocation(line: 0, scope: !4093)
!4100 = !DILocation(line: 0, scope: !4055, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 106, column: 10, scope: !4093)
!4102 = !DILocation(line: 0, scope: !4064, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 91, column: 25, scope: !4055, inlinedAt: !4101)
!4104 = !DILocation(line: 101, column: 13, scope: !4064, inlinedAt: !4103)
!4105 = !DILocation(line: 0, scope: !3942, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 91, column: 10, scope: !4055, inlinedAt: !4101)
!4107 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4106)
!4108 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4106)
!4109 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4106)
!4110 = !DILocation(line: 106, column: 3, scope: !4093)
!4111 = distinct !DISubprogram(name: "x2realloc", scope: !883, file: !883, line: 116, type: !4112, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!125, !125, !889}
!4114 = !{!4115, !4116}
!4115 = !DILocalVariable(name: "p", arg: 1, scope: !4111, file: !883, line: 116, type: !125)
!4116 = !DILocalVariable(name: "ps", arg: 2, scope: !4111, file: !883, line: 116, type: !889)
!4117 = !DILocation(line: 0, scope: !4111)
!4118 = !DILocation(line: 0, scope: !886, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 118, column: 10, scope: !4111)
!4120 = !DILocation(line: 178, column: 14, scope: !886, inlinedAt: !4119)
!4121 = !DILocation(line: 180, column: 9, scope: !4122, inlinedAt: !4119)
!4122 = distinct !DILexicalBlock(scope: !886, file: !883, line: 180, column: 7)
!4123 = !DILocation(line: 180, column: 7, scope: !886, inlinedAt: !4119)
!4124 = !DILocation(line: 182, column: 13, scope: !4125, inlinedAt: !4119)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !883, line: 182, column: 11)
!4126 = distinct !DILexicalBlock(scope: !4122, file: !883, line: 181, column: 5)
!4127 = !DILocation(line: 182, column: 11, scope: !4126, inlinedAt: !4119)
!4128 = !DILocation(line: 197, column: 11, scope: !4129, inlinedAt: !4119)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !883, line: 197, column: 11)
!4130 = distinct !DILexicalBlock(scope: !4122, file: !883, line: 195, column: 5)
!4131 = !DILocation(line: 197, column: 11, scope: !4130, inlinedAt: !4119)
!4132 = !DILocation(line: 198, column: 9, scope: !4129, inlinedAt: !4119)
!4133 = !DILocation(line: 0, scope: !3934, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 201, column: 7, scope: !886, inlinedAt: !4119)
!4135 = !DILocation(line: 85, column: 25, scope: !3934, inlinedAt: !4134)
!4136 = !DILocation(line: 0, scope: !3942, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 85, column: 10, scope: !3934, inlinedAt: !4134)
!4138 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4137)
!4139 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4137)
!4140 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4137)
!4141 = !DILocation(line: 202, column: 7, scope: !886, inlinedAt: !4119)
!4142 = !DILocation(line: 118, column: 3, scope: !4111)
!4143 = !DILocation(line: 0, scope: !886)
!4144 = !DILocation(line: 178, column: 14, scope: !886)
!4145 = !DILocation(line: 180, column: 9, scope: !4122)
!4146 = !DILocation(line: 180, column: 7, scope: !886)
!4147 = !DILocation(line: 182, column: 13, scope: !4125)
!4148 = !DILocation(line: 182, column: 11, scope: !4126)
!4149 = !DILocation(line: 190, column: 30, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4125, file: !883, line: 183, column: 9)
!4151 = !DILocation(line: 191, column: 16, scope: !4150)
!4152 = !DILocation(line: 191, column: 13, scope: !4150)
!4153 = !DILocation(line: 192, column: 9, scope: !4150)
!4154 = !DILocation(line: 197, column: 11, scope: !4129)
!4155 = !DILocation(line: 197, column: 11, scope: !4130)
!4156 = !DILocation(line: 198, column: 9, scope: !4129)
!4157 = !DILocation(line: 0, scope: !3934, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 201, column: 7, scope: !886)
!4159 = !DILocation(line: 85, column: 25, scope: !3934, inlinedAt: !4158)
!4160 = !DILocation(line: 0, scope: !3942, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 85, column: 10, scope: !3934, inlinedAt: !4158)
!4162 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4161)
!4163 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4161)
!4164 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4161)
!4165 = !DILocation(line: 202, column: 7, scope: !886)
!4166 = !DILocation(line: 203, column: 3, scope: !886)
!4167 = !DILocation(line: 0, scope: !898)
!4168 = !DILocation(line: 230, column: 14, scope: !898)
!4169 = !DILocation(line: 238, column: 7, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !898, file: !883, line: 238, column: 7)
!4171 = !DILocation(line: 238, column: 7, scope: !898)
!4172 = !DILocation(line: 240, column: 9, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !898, file: !883, line: 240, column: 7)
!4174 = !DILocation(line: 240, column: 18, scope: !4173)
!4175 = !DILocation(line: 253, column: 8, scope: !898)
!4176 = !DILocation(line: 258, column: 27, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !883, line: 257, column: 5)
!4178 = distinct !DILexicalBlock(scope: !898, file: !883, line: 256, column: 7)
!4179 = !DILocation(line: 259, column: 32, scope: !4177)
!4180 = !DILocation(line: 260, column: 5, scope: !4177)
!4181 = !DILocation(line: 262, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !898, file: !883, line: 262, column: 7)
!4183 = !DILocation(line: 262, column: 7, scope: !898)
!4184 = !DILocation(line: 263, column: 9, scope: !4182)
!4185 = !DILocation(line: 263, column: 5, scope: !4182)
!4186 = !DILocation(line: 264, column: 9, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !898, file: !883, line: 264, column: 7)
!4188 = !DILocation(line: 264, column: 14, scope: !4187)
!4189 = !DILocation(line: 265, column: 7, scope: !4187)
!4190 = !DILocation(line: 265, column: 11, scope: !4187)
!4191 = !DILocation(line: 266, column: 11, scope: !4187)
!4192 = !DILocation(line: 267, column: 14, scope: !4187)
!4193 = !DILocation(line: 264, column: 7, scope: !898)
!4194 = !DILocation(line: 268, column: 5, scope: !4187)
!4195 = !DILocation(line: 0, scope: !4009, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 269, column: 8, scope: !898)
!4197 = !DILocation(line: 0, scope: !4017, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 70, column: 25, scope: !4009, inlinedAt: !4196)
!4199 = !DILocation(line: 2059, column: 24, scope: !4017, inlinedAt: !4198)
!4200 = !DILocation(line: 2059, column: 10, scope: !4017, inlinedAt: !4198)
!4201 = !DILocation(line: 0, scope: !3942, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 70, column: 10, scope: !4009, inlinedAt: !4196)
!4203 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4202)
!4204 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4202)
!4205 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4202)
!4206 = !DILocation(line: 270, column: 7, scope: !898)
!4207 = !DILocation(line: 271, column: 3, scope: !898)
!4208 = distinct !DISubprogram(name: "xzalloc", scope: !883, file: !883, line: 279, type: !3962, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4209)
!4209 = !{!4210}
!4210 = !DILocalVariable(name: "s", arg: 1, scope: !4208, file: !883, line: 279, type: !127)
!4211 = !DILocation(line: 0, scope: !4208)
!4212 = !DILocalVariable(name: "n", arg: 1, scope: !4213, file: !883, line: 294, type: !127)
!4213 = distinct !DISubprogram(name: "xcalloc", scope: !883, file: !883, line: 294, type: !4078, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4214)
!4214 = !{!4212, !4215}
!4215 = !DILocalVariable(name: "s", arg: 2, scope: !4213, file: !883, line: 294, type: !127)
!4216 = !DILocation(line: 0, scope: !4213, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 281, column: 10, scope: !4208)
!4218 = !DILocation(line: 296, column: 25, scope: !4213, inlinedAt: !4217)
!4219 = !DILocation(line: 0, scope: !3942, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 296, column: 10, scope: !4213, inlinedAt: !4217)
!4221 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4220)
!4222 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4220)
!4223 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4220)
!4224 = !DILocation(line: 281, column: 3, scope: !4208)
!4225 = !DISubprogram(name: "calloc", scope: !1191, file: !1191, line: 543, type: !4078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4226 = !DILocation(line: 0, scope: !4213)
!4227 = !DILocation(line: 296, column: 25, scope: !4213)
!4228 = !DILocation(line: 0, scope: !3942, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 296, column: 10, scope: !4213)
!4230 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4229)
!4231 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4229)
!4232 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4229)
!4233 = !DILocation(line: 296, column: 3, scope: !4213)
!4234 = distinct !DISubprogram(name: "xizalloc", scope: !883, file: !883, line: 285, type: !3976, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4235)
!4235 = !{!4236}
!4236 = !DILocalVariable(name: "s", arg: 1, scope: !4234, file: !883, line: 285, type: !902)
!4237 = !DILocation(line: 0, scope: !4234)
!4238 = !DILocalVariable(name: "n", arg: 1, scope: !4239, file: !883, line: 300, type: !902)
!4239 = distinct !DISubprogram(name: "xicalloc", scope: !883, file: !883, line: 300, type: !4094, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4240)
!4240 = !{!4238, !4241}
!4241 = !DILocalVariable(name: "s", arg: 2, scope: !4239, file: !883, line: 300, type: !902)
!4242 = !DILocation(line: 0, scope: !4239, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 287, column: 10, scope: !4234)
!4244 = !DILocalVariable(name: "n", arg: 1, scope: !4245, file: !3983, line: 77, type: !902)
!4245 = distinct !DISubprogram(name: "icalloc", scope: !3983, file: !3983, line: 77, type: !4094, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4246)
!4246 = !{!4244, !4247}
!4247 = !DILocalVariable(name: "s", arg: 2, scope: !4245, file: !3983, line: 77, type: !902)
!4248 = !DILocation(line: 0, scope: !4245, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 302, column: 25, scope: !4239, inlinedAt: !4243)
!4250 = !DILocation(line: 91, column: 10, scope: !4245, inlinedAt: !4249)
!4251 = !DILocation(line: 0, scope: !3942, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 302, column: 10, scope: !4239, inlinedAt: !4243)
!4253 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4252)
!4254 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4252)
!4255 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4252)
!4256 = !DILocation(line: 287, column: 3, scope: !4234)
!4257 = !DILocation(line: 0, scope: !4239)
!4258 = !DILocation(line: 0, scope: !4245, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 302, column: 25, scope: !4239)
!4260 = !DILocation(line: 91, column: 10, scope: !4245, inlinedAt: !4259)
!4261 = !DILocation(line: 0, scope: !3942, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 302, column: 10, scope: !4239)
!4263 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4262)
!4264 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4262)
!4265 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4262)
!4266 = !DILocation(line: 302, column: 3, scope: !4239)
!4267 = distinct !DISubprogram(name: "xmemdup", scope: !883, file: !883, line: 310, type: !4268, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4270)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!125, !1215, !127}
!4270 = !{!4271, !4272}
!4271 = !DILocalVariable(name: "p", arg: 1, scope: !4267, file: !883, line: 310, type: !1215)
!4272 = !DILocalVariable(name: "s", arg: 2, scope: !4267, file: !883, line: 310, type: !127)
!4273 = !DILocation(line: 0, scope: !4267)
!4274 = !DILocation(line: 0, scope: !3961, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 312, column: 18, scope: !4267)
!4276 = !DILocation(line: 49, column: 25, scope: !3961, inlinedAt: !4275)
!4277 = !DILocation(line: 0, scope: !3942, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 49, column: 10, scope: !3961, inlinedAt: !4275)
!4279 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4278)
!4280 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4278)
!4281 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4278)
!4282 = !DILocalVariable(name: "__dest", arg: 1, scope: !4283, file: !2201, line: 26, type: !4286)
!4283 = distinct !DISubprogram(name: "memcpy", scope: !2201, file: !2201, line: 26, type: !4284, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4287)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!125, !4286, !1214, !127}
!4286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!4287 = !{!4282, !4288, !4289}
!4288 = !DILocalVariable(name: "__src", arg: 2, scope: !4283, file: !2201, line: 26, type: !1214)
!4289 = !DILocalVariable(name: "__len", arg: 3, scope: !4283, file: !2201, line: 26, type: !127)
!4290 = !DILocation(line: 0, scope: !4283, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 312, column: 10, scope: !4267)
!4292 = !DILocation(line: 29, column: 10, scope: !4283, inlinedAt: !4291)
!4293 = !DILocation(line: 312, column: 3, scope: !4267)
!4294 = distinct !DISubprogram(name: "ximemdup", scope: !883, file: !883, line: 316, type: !4295, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!125, !1215, !902}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4294, file: !883, line: 316, type: !1215)
!4299 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !883, line: 316, type: !902)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocation(line: 0, scope: !3975, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 318, column: 18, scope: !4294)
!4303 = !DILocation(line: 0, scope: !3982, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 55, column: 25, scope: !3975, inlinedAt: !4302)
!4305 = !DILocation(line: 57, column: 26, scope: !3982, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !3942, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 55, column: 10, scope: !3975, inlinedAt: !4302)
!4308 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4307)
!4311 = !DILocation(line: 0, scope: !4283, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 318, column: 10, scope: !4294)
!4313 = !DILocation(line: 29, column: 10, scope: !4283, inlinedAt: !4312)
!4314 = !DILocation(line: 318, column: 3, scope: !4294)
!4315 = distinct !DISubprogram(name: "ximemdup0", scope: !883, file: !883, line: 325, type: !4316, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!124, !1215, !902}
!4318 = !{!4319, !4320, !4321}
!4319 = !DILocalVariable(name: "p", arg: 1, scope: !4315, file: !883, line: 325, type: !1215)
!4320 = !DILocalVariable(name: "s", arg: 2, scope: !4315, file: !883, line: 325, type: !902)
!4321 = !DILocalVariable(name: "result", scope: !4315, file: !883, line: 327, type: !124)
!4322 = !DILocation(line: 0, scope: !4315)
!4323 = !DILocation(line: 327, column: 30, scope: !4315)
!4324 = !DILocation(line: 0, scope: !3975, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 327, column: 18, scope: !4315)
!4326 = !DILocation(line: 0, scope: !3982, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 55, column: 25, scope: !3975, inlinedAt: !4325)
!4328 = !DILocation(line: 57, column: 26, scope: !3982, inlinedAt: !4327)
!4329 = !DILocation(line: 0, scope: !3942, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 55, column: 10, scope: !3975, inlinedAt: !4325)
!4331 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4330)
!4332 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4330)
!4333 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4330)
!4334 = !DILocation(line: 328, column: 3, scope: !4315)
!4335 = !DILocation(line: 328, column: 13, scope: !4315)
!4336 = !DILocation(line: 0, scope: !4283, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 329, column: 10, scope: !4315)
!4338 = !DILocation(line: 29, column: 10, scope: !4283, inlinedAt: !4337)
!4339 = !DILocation(line: 329, column: 3, scope: !4315)
!4340 = distinct !DISubprogram(name: "xstrdup", scope: !883, file: !883, line: 335, type: !1193, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4341)
!4341 = !{!4342}
!4342 = !DILocalVariable(name: "string", arg: 1, scope: !4340, file: !883, line: 335, type: !130)
!4343 = !DILocation(line: 0, scope: !4340)
!4344 = !DILocation(line: 337, column: 27, scope: !4340)
!4345 = !DILocation(line: 337, column: 43, scope: !4340)
!4346 = !DILocation(line: 0, scope: !4267, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 337, column: 10, scope: !4340)
!4348 = !DILocation(line: 0, scope: !3961, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 312, column: 18, scope: !4267, inlinedAt: !4347)
!4350 = !DILocation(line: 49, column: 25, scope: !3961, inlinedAt: !4349)
!4351 = !DILocation(line: 0, scope: !3942, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 49, column: 10, scope: !3961, inlinedAt: !4349)
!4353 = !DILocation(line: 39, column: 8, scope: !3949, inlinedAt: !4352)
!4354 = !DILocation(line: 39, column: 7, scope: !3942, inlinedAt: !4352)
!4355 = !DILocation(line: 40, column: 5, scope: !3949, inlinedAt: !4352)
!4356 = !DILocation(line: 0, scope: !4283, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 312, column: 10, scope: !4267, inlinedAt: !4347)
!4358 = !DILocation(line: 29, column: 10, scope: !4283, inlinedAt: !4357)
!4359 = !DILocation(line: 337, column: 3, scope: !4340)
!4360 = distinct !DISubprogram(name: "xalloc_die", scope: !828, file: !828, line: 32, type: !564, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4361)
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "__errstatus", scope: !4363, file: !828, line: 34, type: !4364)
!4363 = distinct !DILexicalBlock(scope: !4360, file: !828, line: 34, column: 3)
!4364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!4365 = !DILocation(line: 34, column: 3, scope: !4363)
!4366 = !DILocation(line: 0, scope: !4363)
!4367 = !DILocation(line: 40, column: 3, scope: !4360)
!4368 = distinct !DISubprogram(name: "xgetgroups", scope: !919, file: !919, line: 31, type: !940, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4369)
!4369 = !{!4370, !4371, !4372, !4373}
!4370 = !DILocalVariable(name: "username", arg: 1, scope: !4368, file: !919, line: 31, type: !130)
!4371 = !DILocalVariable(name: "gid", arg: 2, scope: !4368, file: !919, line: 31, type: !207)
!4372 = !DILocalVariable(name: "groups", arg: 3, scope: !4368, file: !919, line: 31, type: !942)
!4373 = !DILocalVariable(name: "result", scope: !4368, file: !919, line: 33, type: !103)
!4374 = !DILocation(line: 0, scope: !4368)
!4375 = !DILocation(line: 33, column: 16, scope: !4368)
!4376 = !DILocation(line: 34, column: 14, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4368, file: !919, line: 34, column: 7)
!4378 = !DILocation(line: 34, column: 20, scope: !4377)
!4379 = !DILocation(line: 34, column: 23, scope: !4377)
!4380 = !DILocation(line: 34, column: 29, scope: !4377)
!4381 = !DILocation(line: 34, column: 7, scope: !4368)
!4382 = !DILocation(line: 35, column: 5, scope: !4377)
!4383 = !DILocation(line: 36, column: 3, scope: !4368)
!4384 = distinct !DISubprogram(name: "xstrtoul", scope: !4385, file: !4385, line: 71, type: !4386, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4390)
!4385 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4388, !130, !1220, !103, !4389, !130}
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !866, line: 43, baseType: !865)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4401, !4402, !4403, !4404, !4407, !4408}
!4391 = !DILocalVariable(name: "nptr", arg: 1, scope: !4384, file: !4385, line: 71, type: !130)
!4392 = !DILocalVariable(name: "endptr", arg: 2, scope: !4384, file: !4385, line: 71, type: !1220)
!4393 = !DILocalVariable(name: "base", arg: 3, scope: !4384, file: !4385, line: 71, type: !103)
!4394 = !DILocalVariable(name: "val", arg: 4, scope: !4384, file: !4385, line: 72, type: !4389)
!4395 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4384, file: !4385, line: 72, type: !130)
!4396 = !DILocalVariable(name: "t_ptr", scope: !4384, file: !4385, line: 74, type: !124)
!4397 = !DILocalVariable(name: "p", scope: !4384, file: !4385, line: 75, type: !1220)
!4398 = !DILocalVariable(name: "q", scope: !4399, file: !4385, line: 79, type: !130)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !4385, line: 78, column: 5)
!4400 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 77, column: 7)
!4401 = !DILocalVariable(name: "ch", scope: !4399, file: !4385, line: 80, type: !132)
!4402 = !DILocalVariable(name: "tmp", scope: !4384, file: !4385, line: 91, type: !129)
!4403 = !DILocalVariable(name: "err", scope: !4384, file: !4385, line: 92, type: !4388)
!4404 = !DILocalVariable(name: "xbase", scope: !4405, file: !4385, line: 126, type: !103)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !4385, line: 119, column: 5)
!4406 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 118, column: 7)
!4407 = !DILocalVariable(name: "suffixes", scope: !4405, file: !4385, line: 127, type: !103)
!4408 = !DILocalVariable(name: "overflow", scope: !4405, file: !4385, line: 156, type: !4388)
!4409 = !DILocation(line: 0, scope: !4384)
!4410 = !DILocation(line: 74, column: 3, scope: !4384)
!4411 = !DILocation(line: 75, column: 14, scope: !4384)
!4412 = !DILocation(line: 0, scope: !4399)
!4413 = !DILocation(line: 81, column: 7, scope: !4399)
!4414 = !DILocation(line: 81, column: 14, scope: !4399)
!4415 = !DILocation(line: 82, column: 15, scope: !4399)
!4416 = distinct !{!4416, !4413, !4417, !1117}
!4417 = !DILocation(line: 82, column: 17, scope: !4399)
!4418 = !DILocation(line: 83, column: 14, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4399, file: !4385, line: 83, column: 11)
!4420 = !DILocation(line: 83, column: 11, scope: !4399)
!4421 = !DILocation(line: 85, column: 14, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4419, file: !4385, line: 84, column: 9)
!4423 = !DILocation(line: 90, column: 3, scope: !4384)
!4424 = !DILocation(line: 90, column: 9, scope: !4384)
!4425 = !DILocation(line: 91, column: 20, scope: !4384)
!4426 = !DILocation(line: 94, column: 7, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 94, column: 7)
!4428 = !DILocation(line: 94, column: 10, scope: !4427)
!4429 = !DILocation(line: 94, column: 7, scope: !4384)
!4430 = !DILocation(line: 98, column: 14, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !4385, line: 98, column: 11)
!4432 = distinct !DILexicalBlock(scope: !4427, file: !4385, line: 95, column: 5)
!4433 = !DILocation(line: 98, column: 29, scope: !4431)
!4434 = !DILocation(line: 98, column: 32, scope: !4431)
!4435 = !DILocation(line: 98, column: 38, scope: !4431)
!4436 = !DILocation(line: 98, column: 41, scope: !4431)
!4437 = !DILocation(line: 98, column: 11, scope: !4432)
!4438 = !DILocation(line: 102, column: 12, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4427, file: !4385, line: 102, column: 12)
!4440 = !DILocation(line: 102, column: 12, scope: !4427)
!4441 = !DILocation(line: 107, column: 5, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !4385, line: 103, column: 5)
!4443 = !DILocation(line: 112, column: 8, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4384, file: !4385, line: 112, column: 7)
!4445 = !DILocation(line: 112, column: 7, scope: !4384)
!4446 = !DILocation(line: 114, column: 12, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4444, file: !4385, line: 113, column: 5)
!4448 = !DILocation(line: 115, column: 7, scope: !4447)
!4449 = !DILocation(line: 118, column: 7, scope: !4406)
!4450 = !DILocation(line: 118, column: 11, scope: !4406)
!4451 = !DILocation(line: 118, column: 7, scope: !4384)
!4452 = !DILocation(line: 120, column: 12, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4405, file: !4385, line: 120, column: 11)
!4454 = !DILocation(line: 120, column: 11, scope: !4405)
!4455 = !DILocation(line: 122, column: 16, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4453, file: !4385, line: 121, column: 9)
!4457 = !DILocation(line: 123, column: 22, scope: !4456)
!4458 = !DILocation(line: 123, column: 11, scope: !4456)
!4459 = !DILocation(line: 0, scope: !4405)
!4460 = !DILocation(line: 128, column: 7, scope: !4405)
!4461 = !DILocation(line: 140, column: 15, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !4385, line: 140, column: 15)
!4463 = distinct !DILexicalBlock(scope: !4405, file: !4385, line: 129, column: 9)
!4464 = !DILocation(line: 140, column: 15, scope: !4463)
!4465 = !DILocation(line: 141, column: 21, scope: !4462)
!4466 = !DILocation(line: 141, column: 13, scope: !4462)
!4467 = !DILocation(line: 144, column: 21, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !4385, line: 144, column: 21)
!4469 = distinct !DILexicalBlock(scope: !4462, file: !4385, line: 142, column: 15)
!4470 = !DILocation(line: 144, column: 29, scope: !4468)
!4471 = !DILocation(line: 144, column: 21, scope: !4469)
!4472 = !DILocation(line: 152, column: 17, scope: !4469)
!4473 = !DILocation(line: 157, column: 7, scope: !4405)
!4474 = !DILocalVariable(name: "err", scope: !4475, file: !4385, line: 64, type: !4388)
!4475 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4385, file: !4385, line: 62, type: !4476, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4478)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!4388, !4389, !103, !103}
!4478 = !{!4479, !4480, !4481, !4474}
!4479 = !DILocalVariable(name: "x", arg: 1, scope: !4475, file: !4385, line: 62, type: !4389)
!4480 = !DILocalVariable(name: "base", arg: 2, scope: !4475, file: !4385, line: 62, type: !103)
!4481 = !DILocalVariable(name: "power", arg: 3, scope: !4475, file: !4385, line: 62, type: !103)
!4482 = !DILocation(line: 0, scope: !4475, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 219, column: 22, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4405, file: !4385, line: 158, column: 9)
!4485 = !DILocalVariable(name: "x", arg: 1, scope: !4486, file: !4385, line: 47, type: !4389)
!4486 = distinct !DISubprogram(name: "bkm_scale", scope: !4385, file: !4385, line: 47, type: !4487, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4489)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!4388, !4389, !103}
!4489 = !{!4485, !4490, !4491}
!4490 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4486, file: !4385, line: 47, type: !103)
!4491 = !DILocalVariable(name: "scaled", scope: !4486, file: !4385, line: 49, type: !129)
!4492 = !DILocation(line: 0, scope: !4486, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4483)
!4494 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4493)
!4495 = distinct !DILexicalBlock(scope: !4486, file: !4385, line: 50, column: 7)
!4496 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4483)
!4497 = !DILocation(line: 227, column: 11, scope: !4405)
!4498 = !DILocation(line: 0, scope: !4475, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 215, column: 22, scope: !4484)
!4500 = !DILocation(line: 0, scope: !4486, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4499)
!4502 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4501)
!4503 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4499)
!4504 = !DILocation(line: 0, scope: !4475, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 202, column: 22, scope: !4484)
!4506 = !DILocation(line: 0, scope: !4486, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4505)
!4508 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4507)
!4509 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4505)
!4510 = !DILocation(line: 0, scope: !4475, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 198, column: 22, scope: !4484)
!4512 = !DILocation(line: 0, scope: !4486, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4511)
!4514 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4513)
!4515 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4511)
!4516 = !DILocation(line: 0, scope: !4475, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 194, column: 22, scope: !4484)
!4518 = !DILocation(line: 0, scope: !4486, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4517)
!4520 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4519)
!4521 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4517)
!4522 = !DILocation(line: 0, scope: !4475, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 175, column: 22, scope: !4484)
!4524 = !DILocation(line: 0, scope: !4486, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4523)
!4526 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4525)
!4527 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4523)
!4528 = !DILocation(line: 0, scope: !4486, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 160, column: 22, scope: !4484)
!4530 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4529)
!4531 = !DILocation(line: 161, column: 11, scope: !4484)
!4532 = !DILocation(line: 0, scope: !4486, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 167, column: 22, scope: !4484)
!4534 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4533)
!4535 = !DILocation(line: 168, column: 11, scope: !4484)
!4536 = !DILocation(line: 0, scope: !4475, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 180, column: 22, scope: !4484)
!4538 = !DILocation(line: 0, scope: !4486, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4537)
!4540 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4539)
!4541 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4537)
!4542 = !DILocation(line: 0, scope: !4475, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 185, column: 22, scope: !4484)
!4544 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4543)
!4546 = !DILocation(line: 0, scope: !4486, inlinedAt: !4545)
!4547 = !DILocation(line: 0, scope: !4475, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 190, column: 22, scope: !4484)
!4549 = !DILocation(line: 0, scope: !4486, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4548)
!4551 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4550)
!4552 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4548)
!4553 = !DILocation(line: 0, scope: !4475, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 207, column: 22, scope: !4484)
!4555 = !DILocation(line: 0, scope: !4486, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 66, column: 12, scope: !4475, inlinedAt: !4554)
!4557 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4556)
!4558 = !DILocation(line: 66, column: 9, scope: !4475, inlinedAt: !4554)
!4559 = !DILocation(line: 0, scope: !4486, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 211, column: 22, scope: !4484)
!4561 = !DILocation(line: 50, column: 7, scope: !4495, inlinedAt: !4560)
!4562 = !DILocation(line: 212, column: 11, scope: !4484)
!4563 = !DILocation(line: 0, scope: !4484)
!4564 = !DILocation(line: 228, column: 10, scope: !4405)
!4565 = !DILocation(line: 229, column: 11, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4405, file: !4385, line: 229, column: 11)
!4567 = !DILocation(line: 229, column: 11, scope: !4405)
!4568 = !DILocation(line: 223, column: 16, scope: !4484)
!4569 = !DILocation(line: 224, column: 22, scope: !4484)
!4570 = !DILocation(line: 100, column: 11, scope: !4432)
!4571 = !DILocation(line: 92, column: 16, scope: !4384)
!4572 = !DILocation(line: 233, column: 8, scope: !4384)
!4573 = !DILocation(line: 234, column: 3, scope: !4384)
!4574 = !DILocation(line: 235, column: 1, scope: !4384)
!4575 = !DISubprogram(name: "strtoul", scope: !1191, file: !1191, line: 181, type: !4576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!129, !1061, !4578, !103}
!4578 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1220)
!4579 = distinct !DISubprogram(name: "close_stream", scope: !925, file: !925, line: 55, type: !4580, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4616)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!103, !4582}
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4584)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4585)
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4584, file: !240, line: 51, baseType: !103, size: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4584, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4584, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4584, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4584, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4584, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4584, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4584, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4584, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4584, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4584, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4584, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4584, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4584, file: !240, line: 70, baseType: !4600, size: 64, offset: 832)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4584, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4584, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4584, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4584, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4584, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4584, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4584, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4584, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4584, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4584, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4584, file: !240, line: 93, baseType: !4600, size: 64, offset: 1344)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4584, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4584, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4584, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4584, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4616 = !{!4617, !4618, !4620, !4621}
!4617 = !DILocalVariable(name: "stream", arg: 1, scope: !4579, file: !925, line: 55, type: !4582)
!4618 = !DILocalVariable(name: "some_pending", scope: !4579, file: !925, line: 57, type: !4619)
!4619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!4620 = !DILocalVariable(name: "prev_fail", scope: !4579, file: !925, line: 58, type: !4619)
!4621 = !DILocalVariable(name: "fclose_fail", scope: !4579, file: !925, line: 59, type: !4619)
!4622 = !DILocation(line: 0, scope: !4579)
!4623 = !DILocation(line: 57, column: 30, scope: !4579)
!4624 = !DILocalVariable(name: "__stream", arg: 1, scope: !4625, file: !1358, line: 135, type: !4582)
!4625 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1358, file: !1358, line: 135, type: !4580, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4626)
!4626 = !{!4624}
!4627 = !DILocation(line: 0, scope: !4625, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 58, column: 27, scope: !4579)
!4629 = !DILocation(line: 137, column: 10, scope: !4625, inlinedAt: !4628)
!4630 = !DILocation(line: 58, column: 43, scope: !4579)
!4631 = !DILocation(line: 59, column: 29, scope: !4579)
!4632 = !DILocation(line: 59, column: 45, scope: !4579)
!4633 = !DILocation(line: 69, column: 17, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4579, file: !925, line: 69, column: 7)
!4635 = !DILocation(line: 57, column: 50, scope: !4579)
!4636 = !DILocation(line: 69, column: 33, scope: !4634)
!4637 = !DILocation(line: 69, column: 53, scope: !4634)
!4638 = !DILocation(line: 69, column: 59, scope: !4634)
!4639 = !DILocation(line: 69, column: 7, scope: !4579)
!4640 = !DILocation(line: 71, column: 11, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4634, file: !925, line: 70, column: 5)
!4642 = !DILocation(line: 72, column: 9, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4641, file: !925, line: 71, column: 11)
!4644 = !DILocation(line: 72, column: 15, scope: !4643)
!4645 = !DILocation(line: 77, column: 1, scope: !4579)
!4646 = !DISubprogram(name: "__fpending", scope: !2139, file: !2139, line: 75, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!127, !4582}
!4649 = distinct !DISubprogram(name: "rpl_fclose", scope: !927, file: !927, line: 58, type: !4650, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4686)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!103, !4652}
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4654)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4654, file: !240, line: 51, baseType: !103, size: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4654, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4654, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4654, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4654, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4654, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4654, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4654, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4654, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4654, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4654, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4654, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4654, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4654, file: !240, line: 70, baseType: !4670, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4654, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4654, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4654, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4654, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4654, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4654, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4654, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4654, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4654, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4654, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4654, file: !240, line: 93, baseType: !4670, size: 64, offset: 1344)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4654, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4654, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4654, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4654, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4686 = !{!4687, !4688, !4689, !4690}
!4687 = !DILocalVariable(name: "fp", arg: 1, scope: !4649, file: !927, line: 58, type: !4652)
!4688 = !DILocalVariable(name: "saved_errno", scope: !4649, file: !927, line: 60, type: !103)
!4689 = !DILocalVariable(name: "fd", scope: !4649, file: !927, line: 63, type: !103)
!4690 = !DILocalVariable(name: "result", scope: !4649, file: !927, line: 74, type: !103)
!4691 = !DILocation(line: 0, scope: !4649)
!4692 = !DILocation(line: 63, column: 12, scope: !4649)
!4693 = !DILocation(line: 64, column: 10, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4649, file: !927, line: 64, column: 7)
!4695 = !DILocation(line: 64, column: 7, scope: !4649)
!4696 = !DILocation(line: 65, column: 12, scope: !4694)
!4697 = !DILocation(line: 65, column: 5, scope: !4694)
!4698 = !DILocation(line: 70, column: 9, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4649, file: !927, line: 70, column: 7)
!4700 = !DILocation(line: 70, column: 23, scope: !4699)
!4701 = !DILocation(line: 70, column: 33, scope: !4699)
!4702 = !DILocation(line: 70, column: 26, scope: !4699)
!4703 = !DILocation(line: 70, column: 59, scope: !4699)
!4704 = !DILocation(line: 71, column: 7, scope: !4699)
!4705 = !DILocation(line: 71, column: 10, scope: !4699)
!4706 = !DILocation(line: 70, column: 7, scope: !4649)
!4707 = !DILocation(line: 100, column: 12, scope: !4649)
!4708 = !DILocation(line: 105, column: 7, scope: !4649)
!4709 = !DILocation(line: 72, column: 19, scope: !4699)
!4710 = !DILocation(line: 105, column: 19, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4649, file: !927, line: 105, column: 7)
!4712 = !DILocation(line: 107, column: 13, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4711, file: !927, line: 106, column: 5)
!4714 = !DILocation(line: 109, column: 5, scope: !4713)
!4715 = !DILocation(line: 112, column: 1, scope: !4649)
!4716 = !DISubprogram(name: "fileno", scope: !523, file: !523, line: 809, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4717 = !DISubprogram(name: "fclose", scope: !523, file: !523, line: 178, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4718 = !DISubprogram(name: "__freading", scope: !2139, file: !2139, line: 51, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4719 = !DISubprogram(name: "lseek", scope: !1665, file: !1665, line: 339, type: !4720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!262, !103, !262, !103}
!4722 = distinct !DISubprogram(name: "rpl_fflush", scope: !929, file: !929, line: 130, type: !4723, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4759)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!103, !4725}
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4727)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4727, file: !240, line: 51, baseType: !103, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4727, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4727, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4727, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4727, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4727, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4727, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4727, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4727, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4727, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4727, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4727, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4727, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4727, file: !240, line: 70, baseType: !4743, size: 64, offset: 832)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4727, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4727, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4727, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4727, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4727, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4727, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4727, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4727, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4727, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4727, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4727, file: !240, line: 93, baseType: !4743, size: 64, offset: 1344)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4727, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4727, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4727, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4727, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4759 = !{!4760}
!4760 = !DILocalVariable(name: "stream", arg: 1, scope: !4722, file: !929, line: 130, type: !4725)
!4761 = !DILocation(line: 0, scope: !4722)
!4762 = !DILocation(line: 151, column: 14, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4722, file: !929, line: 151, column: 7)
!4764 = !DILocation(line: 151, column: 22, scope: !4763)
!4765 = !DILocation(line: 151, column: 27, scope: !4763)
!4766 = !DILocation(line: 151, column: 7, scope: !4722)
!4767 = !DILocation(line: 152, column: 12, scope: !4763)
!4768 = !DILocation(line: 152, column: 5, scope: !4763)
!4769 = !DILocalVariable(name: "fp", arg: 1, scope: !4770, file: !929, line: 42, type: !4725)
!4770 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !929, file: !929, line: 42, type: !4771, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{null, !4725}
!4773 = !{!4769}
!4774 = !DILocation(line: 0, scope: !4770, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 157, column: 3, scope: !4722)
!4776 = !DILocation(line: 44, column: 12, scope: !4777, inlinedAt: !4775)
!4777 = distinct !DILexicalBlock(scope: !4770, file: !929, line: 44, column: 7)
!4778 = !DILocation(line: 44, column: 19, scope: !4777, inlinedAt: !4775)
!4779 = !DILocation(line: 44, column: 7, scope: !4770, inlinedAt: !4775)
!4780 = !DILocation(line: 46, column: 5, scope: !4777, inlinedAt: !4775)
!4781 = !DILocation(line: 159, column: 10, scope: !4722)
!4782 = !DILocation(line: 159, column: 3, scope: !4722)
!4783 = !DILocation(line: 236, column: 1, scope: !4722)
!4784 = !DISubprogram(name: "fflush", scope: !523, file: !523, line: 230, type: !4723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4785 = distinct !DISubprogram(name: "rpl_fseeko", scope: !931, file: !931, line: 28, type: !4786, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !4823)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!103, !4788, !4822, !103}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4790)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4791)
!4791 = !{!4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4790, file: !240, line: 51, baseType: !103, size: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4790, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4790, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4790, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4790, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4790, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4790, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4790, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4790, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4790, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4790, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4790, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4790, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4790, file: !240, line: 70, baseType: !4806, size: 64, offset: 832)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4790, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4790, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4790, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4790, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4790, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4790, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4790, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4790, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4790, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4790, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4790, file: !240, line: 93, baseType: !4806, size: 64, offset: 1344)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4790, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4790, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4790, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4790, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4822 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !523, line: 63, baseType: !262)
!4823 = !{!4824, !4825, !4826, !4827}
!4824 = !DILocalVariable(name: "fp", arg: 1, scope: !4785, file: !931, line: 28, type: !4788)
!4825 = !DILocalVariable(name: "offset", arg: 2, scope: !4785, file: !931, line: 28, type: !4822)
!4826 = !DILocalVariable(name: "whence", arg: 3, scope: !4785, file: !931, line: 28, type: !103)
!4827 = !DILocalVariable(name: "pos", scope: !4828, file: !931, line: 123, type: !4822)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !931, line: 119, column: 5)
!4829 = distinct !DILexicalBlock(scope: !4785, file: !931, line: 55, column: 7)
!4830 = !DILocation(line: 0, scope: !4785)
!4831 = !DILocation(line: 55, column: 12, scope: !4829)
!4832 = !{!1366, !1002, i64 16}
!4833 = !DILocation(line: 55, column: 33, scope: !4829)
!4834 = !{!1366, !1002, i64 8}
!4835 = !DILocation(line: 55, column: 25, scope: !4829)
!4836 = !DILocation(line: 56, column: 7, scope: !4829)
!4837 = !DILocation(line: 56, column: 15, scope: !4829)
!4838 = !DILocation(line: 56, column: 37, scope: !4829)
!4839 = !{!1366, !1002, i64 32}
!4840 = !DILocation(line: 56, column: 29, scope: !4829)
!4841 = !DILocation(line: 57, column: 7, scope: !4829)
!4842 = !DILocation(line: 57, column: 15, scope: !4829)
!4843 = !{!1366, !1002, i64 72}
!4844 = !DILocation(line: 57, column: 29, scope: !4829)
!4845 = !DILocation(line: 55, column: 7, scope: !4785)
!4846 = !DILocation(line: 123, column: 26, scope: !4828)
!4847 = !DILocation(line: 123, column: 19, scope: !4828)
!4848 = !DILocation(line: 0, scope: !4828)
!4849 = !DILocation(line: 124, column: 15, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4828, file: !931, line: 124, column: 11)
!4851 = !DILocation(line: 124, column: 11, scope: !4828)
!4852 = !DILocation(line: 135, column: 19, scope: !4828)
!4853 = !DILocation(line: 136, column: 12, scope: !4828)
!4854 = !DILocation(line: 136, column: 20, scope: !4828)
!4855 = !{!1366, !1367, i64 144}
!4856 = !DILocation(line: 167, column: 7, scope: !4828)
!4857 = !DILocation(line: 169, column: 10, scope: !4785)
!4858 = !DILocation(line: 169, column: 3, scope: !4785)
!4859 = !DILocation(line: 170, column: 1, scope: !4785)
!4860 = !DISubprogram(name: "fseeko", scope: !523, file: !523, line: 736, type: !4861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!103, !4788, !262, !103}
!4863 = distinct !DISubprogram(name: "umaxtostr", scope: !4864, file: !4864, line: 29, type: !4865, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !4867)
!4864 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!124, !133, !124}
!4867 = !{!4868, !4869, !4870}
!4868 = !DILocalVariable(name: "i", arg: 1, scope: !4863, file: !4864, line: 29, type: !133)
!4869 = !DILocalVariable(name: "buf", arg: 2, scope: !4863, file: !4864, line: 29, type: !124)
!4870 = !DILocalVariable(name: "p", scope: !4863, file: !4864, line: 31, type: !124)
!4871 = !DILocation(line: 0, scope: !4863)
!4872 = !DILocation(line: 31, column: 17, scope: !4863)
!4873 = !DILocation(line: 32, column: 6, scope: !4863)
!4874 = !DILocation(line: 46, column: 17, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4876, file: !4864, line: 43, column: 5)
!4876 = distinct !DILexicalBlock(scope: !4863, file: !4864, line: 34, column: 7)
!4877 = !DILocation(line: 45, column: 16, scope: !4875)
!4878 = !DILocation(line: 45, column: 10, scope: !4875)
!4879 = !DILocation(line: 45, column: 14, scope: !4875)
!4880 = !DILocation(line: 46, column: 24, scope: !4875)
!4881 = !DILocation(line: 45, column: 9, scope: !4875)
!4882 = distinct !{!4882, !4883, !4884, !1117}
!4883 = !DILocation(line: 44, column: 7, scope: !4875)
!4884 = !DILocation(line: 46, column: 28, scope: !4875)
!4885 = !DILocation(line: 49, column: 3, scope: !4863)
!4886 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !835, file: !835, line: 100, type: !4887, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !4890)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!127, !2219, !130, !127, !4889}
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!4890 = !{!4891, !4892, !4893, !4894, !4895}
!4891 = !DILocalVariable(name: "pwc", arg: 1, scope: !4886, file: !835, line: 100, type: !2219)
!4892 = !DILocalVariable(name: "s", arg: 2, scope: !4886, file: !835, line: 100, type: !130)
!4893 = !DILocalVariable(name: "n", arg: 3, scope: !4886, file: !835, line: 100, type: !127)
!4894 = !DILocalVariable(name: "ps", arg: 4, scope: !4886, file: !835, line: 100, type: !4889)
!4895 = !DILocalVariable(name: "ret", scope: !4886, file: !835, line: 130, type: !127)
!4896 = !DILocation(line: 0, scope: !4886)
!4897 = !DILocation(line: 105, column: 9, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4886, file: !835, line: 105, column: 7)
!4899 = !DILocation(line: 105, column: 7, scope: !4886)
!4900 = !DILocation(line: 117, column: 10, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4886, file: !835, line: 117, column: 7)
!4902 = !DILocation(line: 117, column: 7, scope: !4886)
!4903 = !DILocation(line: 130, column: 16, scope: !4886)
!4904 = !DILocation(line: 135, column: 11, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4886, file: !835, line: 135, column: 7)
!4906 = !DILocation(line: 135, column: 25, scope: !4905)
!4907 = !DILocation(line: 135, column: 30, scope: !4905)
!4908 = !DILocation(line: 135, column: 7, scope: !4886)
!4909 = !DILocalVariable(name: "ps", arg: 1, scope: !4910, file: !2192, line: 1135, type: !4889)
!4910 = distinct !DISubprogram(name: "mbszero", scope: !2192, file: !2192, line: 1135, type: !4911, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !4913)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{null, !4889}
!4913 = !{!4909}
!4914 = !DILocation(line: 0, scope: !4910, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 137, column: 5, scope: !4905)
!4916 = !DILocalVariable(name: "__dest", arg: 1, scope: !4917, file: !2201, line: 57, type: !125)
!4917 = distinct !DISubprogram(name: "memset", scope: !2201, file: !2201, line: 57, type: !2202, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !4918)
!4918 = !{!4916, !4919, !4920}
!4919 = !DILocalVariable(name: "__ch", arg: 2, scope: !4917, file: !2201, line: 57, type: !103)
!4920 = !DILocalVariable(name: "__len", arg: 3, scope: !4917, file: !2201, line: 57, type: !127)
!4921 = !DILocation(line: 0, scope: !4917, inlinedAt: !4922)
!4922 = distinct !DILocation(line: 1137, column: 3, scope: !4910, inlinedAt: !4915)
!4923 = !DILocation(line: 59, column: 10, scope: !4917, inlinedAt: !4922)
!4924 = !DILocation(line: 137, column: 5, scope: !4905)
!4925 = !DILocation(line: 138, column: 11, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4886, file: !835, line: 138, column: 7)
!4927 = !DILocation(line: 138, column: 7, scope: !4886)
!4928 = !DILocation(line: 139, column: 5, scope: !4926)
!4929 = !DILocation(line: 143, column: 26, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4886, file: !835, line: 143, column: 7)
!4931 = !DILocation(line: 143, column: 41, scope: !4930)
!4932 = !DILocation(line: 143, column: 7, scope: !4886)
!4933 = !DILocation(line: 145, column: 15, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !835, line: 145, column: 11)
!4935 = distinct !DILexicalBlock(scope: !4930, file: !835, line: 144, column: 5)
!4936 = !DILocation(line: 145, column: 11, scope: !4935)
!4937 = !DILocation(line: 146, column: 32, scope: !4934)
!4938 = !DILocation(line: 146, column: 16, scope: !4934)
!4939 = !DILocation(line: 146, column: 14, scope: !4934)
!4940 = !DILocation(line: 146, column: 9, scope: !4934)
!4941 = !DILocation(line: 286, column: 1, scope: !4886)
!4942 = !DISubprogram(name: "mbsinit", scope: !4943, file: !4943, line: 293, type: !4944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!4943 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!103, !4946}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!4948 = !DILocation(line: 0, scope: !939)
!4949 = !DILocation(line: 77, column: 7, scope: !950)
!4950 = !DILocation(line: 77, column: 7, scope: !939)
!4951 = !DILocation(line: 80, column: 7, scope: !949)
!4952 = !DILocation(line: 0, scope: !949)
!4953 = !DILocation(line: 80, column: 11, scope: !949)
!4954 = !DILocalVariable(name: "g", arg: 1, scope: !4955, file: !936, line: 43, type: !943)
!4955 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !936, file: !936, line: 43, type: !4956, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !4958)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!943, !943, !127}
!4958 = !{!4954, !4959}
!4959 = !DILocalVariable(name: "num", arg: 2, scope: !4955, file: !936, line: 43, type: !127)
!4960 = !DILocation(line: 0, scope: !4955, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 82, column: 18, scope: !949)
!4962 = !DILocalVariable(name: "ptr", arg: 1, scope: !4963, file: !4018, line: 2057, type: !125)
!4963 = distinct !DISubprogram(name: "rpl_realloc", scope: !4018, file: !4018, line: 2057, type: !4010, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !4964)
!4964 = !{!4962, !4965}
!4965 = !DILocalVariable(name: "size", arg: 2, scope: !4963, file: !4018, line: 2057, type: !127)
!4966 = !DILocation(line: 0, scope: !4963, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 51, column: 10, scope: !4955, inlinedAt: !4961)
!4968 = !DILocation(line: 2059, column: 10, scope: !4963, inlinedAt: !4967)
!4969 = !DILocation(line: 83, column: 13, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !949, file: !936, line: 83, column: 11)
!4971 = !DILocation(line: 83, column: 11, scope: !949)
!4972 = !DILocation(line: 88, column: 31, scope: !953)
!4973 = !DILocation(line: 82, column: 14, scope: !949)
!4974 = !DILocation(line: 0, scope: !953)
!4975 = !DILocation(line: 91, column: 20, scope: !953)
!4976 = !DILocation(line: 95, column: 18, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !953, file: !936, line: 95, column: 15)
!4978 = !DILocation(line: 95, column: 22, scope: !4977)
!4979 = !DILocation(line: 96, column: 26, scope: !4977)
!4980 = !DILocation(line: 96, column: 13, scope: !4977)
!4981 = !DILocation(line: 98, column: 43, scope: !953)
!4982 = !DILocation(line: 0, scope: !4955, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 98, column: 22, scope: !953)
!4984 = !DILocation(line: 45, column: 7, scope: !4985, inlinedAt: !4983)
!4985 = distinct !DILexicalBlock(scope: !4955, file: !936, line: 45, column: 7)
!4986 = !DILocation(line: 45, column: 7, scope: !4955, inlinedAt: !4983)
!4987 = !DILocation(line: 47, column: 7, scope: !4988, inlinedAt: !4983)
!4988 = distinct !DILexicalBlock(scope: !4985, file: !936, line: 46, column: 5)
!4989 = !DILocation(line: 47, column: 13, scope: !4988, inlinedAt: !4983)
!4990 = !DILocation(line: 99, column: 15, scope: !953)
!4991 = !DILocation(line: 51, column: 26, scope: !4955, inlinedAt: !4983)
!4992 = !DILocation(line: 0, scope: !4963, inlinedAt: !4993)
!4993 = distinct !DILocation(line: 51, column: 10, scope: !4955, inlinedAt: !4983)
!4994 = !DILocation(line: 2059, column: 24, scope: !4963, inlinedAt: !4993)
!4995 = !DILocation(line: 2059, column: 10, scope: !4963, inlinedAt: !4993)
!4996 = !DILocation(line: 99, column: 17, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !953, file: !936, line: 99, column: 15)
!4998 = !DILocation(line: 101, column: 15, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4997, file: !936, line: 100, column: 13)
!5000 = !DILocation(line: 102, column: 15, scope: !4999)
!5001 = !DILocation(line: 106, column: 17, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !953, file: !936, line: 106, column: 15)
!5003 = !DILocation(line: 106, column: 15, scope: !953)
!5004 = distinct !{!5004, !5005, !5006}
!5005 = !DILocation(line: 86, column: 7, scope: !949)
!5006 = !DILocation(line: 113, column: 9, scope: !949)
!5007 = !DILocation(line: 108, column: 23, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5002, file: !936, line: 107, column: 13)
!5009 = !DILocation(line: 111, column: 15, scope: !5008)
!5010 = !DILocation(line: 114, column: 5, scope: !950)
!5011 = !DILocation(line: 120, column: 25, scope: !939)
!5012 = !DILocation(line: 125, column: 20, scope: !961)
!5013 = !DILocation(line: 125, column: 7, scope: !939)
!5014 = !DILocation(line: 127, column: 11, scope: !959)
!5015 = !DILocation(line: 127, column: 17, scope: !959)
!5016 = !DILocation(line: 127, column: 11, scope: !960)
!5017 = !DILocation(line: 0, scope: !4955, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 129, column: 22, scope: !958)
!5019 = !DILocation(line: 0, scope: !4963, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 51, column: 10, scope: !4955, inlinedAt: !5018)
!5021 = !DILocation(line: 2059, column: 10, scope: !4963, inlinedAt: !5020)
!5022 = !DILocation(line: 0, scope: !958)
!5023 = !DILocation(line: 130, column: 15, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !958, file: !936, line: 130, column: 15)
!5025 = !DILocation(line: 130, column: 15, scope: !958)
!5026 = !DILocation(line: 132, column: 23, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5024, file: !936, line: 131, column: 13)
!5028 = !DILocation(line: 133, column: 18, scope: !5027)
!5029 = !DILocation(line: 134, column: 26, scope: !5027)
!5030 = !DILocation(line: 140, column: 20, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !939, file: !936, line: 140, column: 7)
!5032 = !DILocation(line: 140, column: 25, scope: !5031)
!5033 = !DILocation(line: 142, column: 38, scope: !939)
!5034 = !DILocation(line: 0, scope: !4955, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 142, column: 14, scope: !939)
!5036 = !DILocation(line: 51, column: 26, scope: !4955, inlinedAt: !5035)
!5037 = !DILocation(line: 0, scope: !4963, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 51, column: 10, scope: !4955, inlinedAt: !5035)
!5039 = !DILocation(line: 2059, column: 10, scope: !4963, inlinedAt: !5038)
!5040 = !DILocation(line: 143, column: 9, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !939, file: !936, line: 143, column: 7)
!5042 = !DILocation(line: 143, column: 7, scope: !939)
!5043 = !DILocation(line: 148, column: 46, scope: !939)
!5044 = !DILocation(line: 148, column: 39, scope: !939)
!5045 = !DILocation(line: 149, column: 39, scope: !939)
!5046 = !DILocation(line: 148, column: 15, scope: !939)
!5047 = !DILocation(line: 151, column: 10, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !939, file: !936, line: 151, column: 7)
!5049 = !DILocation(line: 151, column: 7, scope: !939)
!5050 = !DILocation(line: 154, column: 7, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5048, file: !936, line: 152, column: 5)
!5052 = !DILocation(line: 155, column: 7, scope: !5051)
!5053 = !DILocation(line: 158, column: 17, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !939, file: !936, line: 158, column: 7)
!5055 = !DILocation(line: 160, column: 10, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5054, file: !936, line: 159, column: 5)
!5057 = !DILocation(line: 161, column: 9, scope: !5056)
!5058 = !DILocation(line: 162, column: 5, scope: !5056)
!5059 = !DILocation(line: 163, column: 11, scope: !939)
!5060 = !DILocation(line: 181, column: 9, scope: !966)
!5061 = !DILocation(line: 181, column: 7, scope: !939)
!5062 = !DILocation(line: 183, column: 21, scope: !965)
!5063 = !DILocation(line: 0, scope: !965)
!5064 = !DILocation(line: 184, column: 29, scope: !965)
!5065 = !DILocation(line: 0, scope: !969)
!5066 = !DILocation(line: 186, scope: !969)
!5067 = !DILocation(line: 186, column: 7, scope: !969)
!5068 = !DILocation(line: 188, column: 15, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !936, line: 188, column: 15)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !936, line: 187, column: 9)
!5071 = distinct !DILexicalBlock(scope: !969, file: !936, line: 186, column: 7)
!5072 = !DILocation(line: 188, column: 21, scope: !5069)
!5073 = !DILocation(line: 188, column: 30, scope: !5069)
!5074 = !DILocation(line: 189, column: 15, scope: !5069)
!5075 = !DILocation(line: 189, column: 13, scope: !5069)
!5076 = !DILocation(line: 191, column: 14, scope: !5069)
!5077 = !DILocation(line: 191, column: 18, scope: !5069)
!5078 = !DILocation(line: 186, column: 38, scope: !5071)
!5079 = distinct !{!5079, !5067, !5080, !1117}
!5080 = !DILocation(line: 192, column: 9, scope: !969)
!5081 = !DILocation(line: 196, column: 1, scope: !939)
!5082 = !DISubprogram(name: "getgrouplist", scope: !1528, file: !1528, line: 186, type: !5083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1055)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!103, !130, !208, !5085, !465}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!5086 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !974, file: !974, line: 27, type: !3926, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5087)
!5087 = !{!5088, !5089, !5090, !5091}
!5088 = !DILocalVariable(name: "ptr", arg: 1, scope: !5086, file: !974, line: 27, type: !125)
!5089 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5086, file: !974, line: 27, type: !127)
!5090 = !DILocalVariable(name: "size", arg: 3, scope: !5086, file: !974, line: 27, type: !127)
!5091 = !DILocalVariable(name: "nbytes", scope: !5086, file: !974, line: 29, type: !127)
!5092 = !DILocation(line: 0, scope: !5086)
!5093 = !DILocation(line: 30, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5086, file: !974, line: 30, column: 7)
!5095 = !DILocalVariable(name: "ptr", arg: 1, scope: !5096, file: !4018, line: 2057, type: !125)
!5096 = distinct !DISubprogram(name: "rpl_realloc", scope: !4018, file: !4018, line: 2057, type: !4010, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5097)
!5097 = !{!5095, !5098}
!5098 = !DILocalVariable(name: "size", arg: 2, scope: !5096, file: !4018, line: 2057, type: !127)
!5099 = !DILocation(line: 0, scope: !5096, inlinedAt: !5100)
!5100 = distinct !DILocation(line: 37, column: 10, scope: !5086)
!5101 = !DILocation(line: 2059, column: 24, scope: !5096, inlinedAt: !5100)
!5102 = !DILocation(line: 2059, column: 10, scope: !5096, inlinedAt: !5100)
!5103 = !DILocation(line: 37, column: 3, scope: !5086)
!5104 = !DILocation(line: 32, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5094, file: !974, line: 31, column: 5)
!5106 = !DILocation(line: 32, column: 13, scope: !5105)
!5107 = !DILocation(line: 33, column: 7, scope: !5105)
!5108 = !DILocation(line: 38, column: 1, scope: !5086)
!5109 = distinct !DISubprogram(name: "hard_locale", scope: !853, file: !853, line: 28, type: !5110, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !5112)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!223, !103}
!5112 = !{!5113, !5114}
!5113 = !DILocalVariable(name: "category", arg: 1, scope: !5109, file: !853, line: 28, type: !103)
!5114 = !DILocalVariable(name: "locale", scope: !5109, file: !853, line: 30, type: !5115)
!5115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5116)
!5116 = !{!5117}
!5117 = !DISubrange(count: 257)
!5118 = !DILocation(line: 0, scope: !5109)
!5119 = !DILocation(line: 30, column: 3, scope: !5109)
!5120 = !DILocation(line: 30, column: 8, scope: !5109)
!5121 = !DILocation(line: 32, column: 7, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5109, file: !853, line: 32, column: 7)
!5123 = !DILocation(line: 32, column: 7, scope: !5109)
!5124 = !DILocalVariable(name: "__s1", arg: 1, scope: !5125, file: !1083, line: 1359, type: !130)
!5125 = distinct !DISubprogram(name: "streq", scope: !1083, file: !1083, line: 1359, type: !1084, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !5126)
!5126 = !{!5124, !5127}
!5127 = !DILocalVariable(name: "__s2", arg: 2, scope: !5125, file: !1083, line: 1359, type: !130)
!5128 = !DILocation(line: 0, scope: !5125, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 35, column: 9, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5109, file: !853, line: 35, column: 7)
!5131 = !DILocation(line: 1361, column: 11, scope: !5125, inlinedAt: !5129)
!5132 = !DILocation(line: 1361, column: 10, scope: !5125, inlinedAt: !5129)
!5133 = !DILocation(line: 35, column: 29, scope: !5130)
!5134 = !DILocation(line: 0, scope: !5125, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 35, column: 32, scope: !5130)
!5136 = !DILocation(line: 1361, column: 11, scope: !5125, inlinedAt: !5135)
!5137 = !DILocation(line: 1361, column: 10, scope: !5125, inlinedAt: !5135)
!5138 = !DILocation(line: 35, column: 7, scope: !5109)
!5139 = !DILocation(line: 46, column: 3, scope: !5109)
!5140 = !DILocation(line: 47, column: 1, scope: !5109)
!5141 = distinct !DISubprogram(name: "setlocale_null_r", scope: !979, file: !979, line: 154, type: !5142, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !5144)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!103, !103, !124, !127}
!5144 = !{!5145, !5146, !5147}
!5145 = !DILocalVariable(name: "category", arg: 1, scope: !5141, file: !979, line: 154, type: !103)
!5146 = !DILocalVariable(name: "buf", arg: 2, scope: !5141, file: !979, line: 154, type: !124)
!5147 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5141, file: !979, line: 154, type: !127)
!5148 = !DILocation(line: 0, scope: !5141)
!5149 = !DILocation(line: 159, column: 10, scope: !5141)
!5150 = !DILocation(line: 159, column: 3, scope: !5141)
!5151 = distinct !DISubprogram(name: "setlocale_null", scope: !979, file: !979, line: 186, type: !5152, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !5154)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!130, !103}
!5154 = !{!5155}
!5155 = !DILocalVariable(name: "category", arg: 1, scope: !5151, file: !979, line: 186, type: !103)
!5156 = !DILocation(line: 0, scope: !5151)
!5157 = !DILocation(line: 189, column: 10, scope: !5151)
!5158 = !DILocation(line: 189, column: 3, scope: !5151)
!5159 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !981, file: !981, line: 35, type: !5152, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !5160)
!5160 = !{!5161, !5162}
!5161 = !DILocalVariable(name: "category", arg: 1, scope: !5159, file: !981, line: 35, type: !103)
!5162 = !DILocalVariable(name: "result", scope: !5159, file: !981, line: 37, type: !130)
!5163 = !DILocation(line: 0, scope: !5159)
!5164 = !DILocation(line: 37, column: 24, scope: !5159)
!5165 = !DILocation(line: 62, column: 3, scope: !5159)
!5166 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !981, file: !981, line: 66, type: !5142, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !5167)
!5167 = !{!5168, !5169, !5170, !5171, !5172}
!5168 = !DILocalVariable(name: "category", arg: 1, scope: !5166, file: !981, line: 66, type: !103)
!5169 = !DILocalVariable(name: "buf", arg: 2, scope: !5166, file: !981, line: 66, type: !124)
!5170 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5166, file: !981, line: 66, type: !127)
!5171 = !DILocalVariable(name: "result", scope: !5166, file: !981, line: 111, type: !130)
!5172 = !DILocalVariable(name: "length", scope: !5173, file: !981, line: 125, type: !127)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !981, line: 124, column: 5)
!5174 = distinct !DILexicalBlock(scope: !5166, file: !981, line: 113, column: 7)
!5175 = !DILocation(line: 0, scope: !5166)
!5176 = !DILocation(line: 0, scope: !5159, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 111, column: 24, scope: !5166)
!5178 = !DILocation(line: 37, column: 24, scope: !5159, inlinedAt: !5177)
!5179 = !DILocation(line: 113, column: 14, scope: !5174)
!5180 = !DILocation(line: 113, column: 7, scope: !5166)
!5181 = !DILocation(line: 116, column: 19, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !981, line: 116, column: 11)
!5183 = distinct !DILexicalBlock(scope: !5174, file: !981, line: 114, column: 5)
!5184 = !DILocation(line: 116, column: 11, scope: !5183)
!5185 = !DILocation(line: 120, column: 16, scope: !5182)
!5186 = !DILocation(line: 120, column: 9, scope: !5182)
!5187 = !DILocation(line: 125, column: 23, scope: !5173)
!5188 = !DILocation(line: 0, scope: !5173)
!5189 = !DILocation(line: 126, column: 18, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5173, file: !981, line: 126, column: 11)
!5191 = !DILocation(line: 126, column: 11, scope: !5173)
!5192 = !DILocation(line: 128, column: 39, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5190, file: !981, line: 127, column: 9)
!5194 = !DILocalVariable(name: "__dest", arg: 1, scope: !5195, file: !2201, line: 26, type: !4286)
!5195 = distinct !DISubprogram(name: "memcpy", scope: !2201, file: !2201, line: 26, type: !4284, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !5196)
!5196 = !{!5194, !5197, !5198}
!5197 = !DILocalVariable(name: "__src", arg: 2, scope: !5195, file: !2201, line: 26, type: !1214)
!5198 = !DILocalVariable(name: "__len", arg: 3, scope: !5195, file: !2201, line: 26, type: !127)
!5199 = !DILocation(line: 0, scope: !5195, inlinedAt: !5200)
!5200 = distinct !DILocation(line: 128, column: 11, scope: !5193)
!5201 = !DILocation(line: 29, column: 10, scope: !5195, inlinedAt: !5200)
!5202 = !DILocation(line: 129, column: 11, scope: !5193)
!5203 = !DILocation(line: 133, column: 23, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !981, line: 133, column: 15)
!5205 = distinct !DILexicalBlock(scope: !5190, file: !981, line: 132, column: 9)
!5206 = !DILocation(line: 133, column: 15, scope: !5205)
!5207 = !DILocation(line: 138, column: 44, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5204, file: !981, line: 134, column: 13)
!5209 = !DILocation(line: 0, scope: !5195, inlinedAt: !5210)
!5210 = distinct !DILocation(line: 138, column: 15, scope: !5208)
!5211 = !DILocation(line: 29, column: 10, scope: !5195, inlinedAt: !5210)
!5212 = !DILocation(line: 139, column: 15, scope: !5208)
!5213 = !DILocation(line: 139, column: 32, scope: !5208)
!5214 = !DILocation(line: 140, column: 13, scope: !5208)
!5215 = !DILocation(line: 0, scope: !5174)
!5216 = !DILocation(line: 145, column: 1, scope: !5166)
