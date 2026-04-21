; ModuleID = 'src/id.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !547
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !517
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !537
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !539
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !541
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !543
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !545
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !549
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !551
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !556
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !561
@.str.90 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !567
@.str.1.91 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !569
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !571
@.str.94 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !602
@.str.1.95 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !605
@.str.2.96 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !607
@.str.3.97 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !612
@.str.4.98 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !614
@.str.5.99 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !616
@.str.6.100 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !618
@.str.7.101 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !620
@.str.8.102 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !622
@.str.9.103 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !624
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.94, ptr @.str.1.95, ptr @.str.2.96, ptr @.str.3.97, ptr @.str.4.98, ptr @.str.5.99, ptr @.str.6.100, ptr @.str.7.101, ptr @.str.8.102, ptr @.str.9.103, ptr null], align 16, !dbg !626
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !651
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !665
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !703
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !710
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !667
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !712
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !655
@.str.10.106 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !672
@.str.11.104 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !674
@.str.12.107 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !676
@.str.13.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !678
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !680
@.str.112 = private unnamed_addr constant [27 x i8] c"warning: '.' should be ':'\00", align 1, !dbg !718
@.str.1.115 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1, !dbg !721
@.str.2.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !723
@.str.3.114 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1, !dbg !725
@.str.4.116 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1, !dbg !727
@.str.5.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !729
@.str.120 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !731
@.str.1.121 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !734
@.str.2.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !736
@.str.3.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !738
@.str.4.124 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !740
@.str.5.125 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !742
@.str.6.126 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !747
@.str.7.127 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !749
@.str.8.128 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !751
@.str.9.129 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !756
@.str.10.130 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !761
@.str.11.131 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !766
@.str.12.132 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !771
@.str.13.133 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !773
@.str.14.134 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !775
@.str.15.135 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !780
@.str.16.136 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !785
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.141 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !790
@.str.18.142 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !792
@.str.19.143 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !794
@.str.20.144 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !796
@.str.21.145 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !798
@.str.22.146 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !800
@.str.23.147 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !802
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !807
@exit_failure = dso_local global i32 1, align 4, !dbg !815
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !821
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !824
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !826
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !828
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !831
@.str.1.188 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !846

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !984 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !988, metadata !DIExpression()), !dbg !989
  %2 = icmp eq i32 %0, 0, !dbg !990
  br i1 %2, label %8, label %3, !dbg !992

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !993, !tbaa !995
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !993
  %6 = load ptr, ptr @program_name, align 8, !dbg !993, !tbaa !995
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !993
  br label %42, !dbg !993

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !999
  %10 = load ptr, ptr @program_name, align 8, !dbg !999, !tbaa !995
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !999
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1001
  %13 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !995
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1001
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1002
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1003
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1003
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1004
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1004
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1005
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1005
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1006
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1006
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1007
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1007
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1008
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !1009
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1009
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1010
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1010
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1011
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1012
  %26 = load ptr, ptr @stdout, align 8, !dbg !1012, !tbaa !995
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1013, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1025, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr poison, metadata !1025, metadata !DIExpression()), !dbg !1030
  tail call void @emit_bug_reporting_address() #39, !dbg !1032
  %28 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1033
  call void @llvm.dbg.value(metadata ptr %28, metadata !1028, metadata !DIExpression()), !dbg !1030
  %29 = icmp eq ptr %28, null, !dbg !1034
  br i1 %29, label %37, label %30, !dbg !1036

30:                                               ; preds = %8
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.64, i64 noundef 3) #40, !dbg !1037
  %32 = icmp eq i32 %31, 0, !dbg !1037
  br i1 %32, label %37, label %33, !dbg !1038

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1039
  %35 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !995
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1039
  br label %37, !dbg !1041

37:                                               ; preds = %8, %30, %33
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1025, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1029, metadata !DIExpression()), !dbg !1030
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #39, !dbg !1042
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #39, !dbg !1042
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1043
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #39, !dbg !1043
  br label %42

42:                                               ; preds = %37, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1044
  unreachable, !dbg !1044
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1045 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1050 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1056 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1059 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !213 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !217, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !1063
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1064, !tbaa !1065
  %3 = icmp eq i32 %2, -1, !dbg !1067
  br i1 %3, label %4, label %16, !dbg !1068

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #39, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !1070
  %6 = icmp eq ptr %5, null, !dbg !1071
  br i1 %6, label %14, label %7, !dbg !1072

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1073, !tbaa !1074
  %9 = icmp eq i8 %8, 0, !dbg !1073
  br i1 %9, label %14, label %10, !dbg !1075

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1076, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1082, metadata !DIExpression()), !dbg !1083
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #40, !dbg !1085
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
  br label %128, !dbg !1094

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !1063
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #40, !dbg !1095
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %24, metadata !224, metadata !DIExpression()), !dbg !1063
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1097
  call void @llvm.dbg.value(metadata ptr %25, metadata !225, metadata !DIExpression()), !dbg !1063
  %26 = icmp eq ptr %25, null, !dbg !1098
  br i1 %26, label %58, label %27, !dbg !1099

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1100
  br i1 %28, label %58, label %29, !dbg !1101

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !1102
  %30 = icmp ult ptr %24, %25, !dbg !1103
  br i1 %30, label %31, label %52, !dbg !1104

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1063
  %33 = load ptr, ptr %32, align 8, !tbaa !995
  br label %34, !dbg !1104

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !226, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %36, metadata !230, metadata !DIExpression()), !dbg !1102
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %37, metadata !226, metadata !DIExpression()), !dbg !1102
  %38 = load i8, ptr %35, align 1, !dbg !1105, !tbaa !1074
  %39 = sext i8 %38 to i64, !dbg !1105
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1105
  %41 = load i16, ptr %40, align 2, !dbg !1105, !tbaa !1106
  %42 = freeze i16 %41, !dbg !1108
  %43 = lshr i16 %42, 13, !dbg !1108
  %44 = and i16 %43, 1, !dbg !1108
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !1102
  %47 = icmp ult ptr %37, %25, !dbg !1103
  %48 = icmp ult i64 %46, 2, !dbg !1110
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1110
  br i1 %49, label %34, label %50, !dbg !1104, !llvm.loop !1111

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1113
  br i1 %51, label %52, label %54, !dbg !1115

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1115

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1115
  call void @llvm.dbg.value(metadata i8 %57, metadata !222, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr %56, metadata !225, metadata !DIExpression()), !dbg !1063
  br label %58, !dbg !1116

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1063
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1063
  call void @llvm.dbg.value(metadata i8 %60, metadata !222, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr %59, metadata !225, metadata !DIExpression()), !dbg !1063
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.37) #40, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %61, metadata !231, metadata !DIExpression()), !dbg !1063
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %62, metadata !232, metadata !DIExpression()), !dbg !1063
  br label %63, !dbg !1119

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1063
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1063
  call void @llvm.dbg.value(metadata i8 %65, metadata !222, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr %64, metadata !232, metadata !DIExpression()), !dbg !1063
  %66 = load i8, ptr %64, align 1, !dbg !1120, !tbaa !1074
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1121

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1122
  %69 = load i8, ptr %68, align 1, !dbg !1125, !tbaa !1074
  %70 = icmp eq i8 %69, 45, !dbg !1126
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1127
  br label %72, !dbg !1127

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1063
  call void @llvm.dbg.value(metadata i8 %73, metadata !222, metadata !DIExpression()), !dbg !1063
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !1128
  %75 = load ptr, ptr %74, align 8, !dbg !1128, !tbaa !995
  %76 = sext i8 %66 to i64, !dbg !1128
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1128
  %78 = load i16, ptr %77, align 2, !dbg !1128, !tbaa !1106
  %79 = and i16 %78, 8192, !dbg !1128
  %80 = icmp eq i16 %79, 0, !dbg !1128
  br i1 %80, label %96, label %81, !dbg !1130

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1131
  br i1 %82, label %98, label %83, !dbg !1134

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1135
  %85 = load i8, ptr %84, align 1, !dbg !1135, !tbaa !1074
  %86 = sext i8 %85 to i64, !dbg !1135
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1135
  %88 = load i16, ptr %87, align 2, !dbg !1135, !tbaa !1106
  %89 = and i16 %88, 8192, !dbg !1135
  %90 = icmp eq i16 %89, 0, !dbg !1135
  br i1 %90, label %91, label %98, !dbg !1136

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1137
  %93 = icmp ne i8 %92, 0, !dbg !1137
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1139
  br i1 %95, label %96, label %98, !dbg !1139

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %97, metadata !232, metadata !DIExpression()), !dbg !1063
  br label %63, !dbg !1119, !llvm.loop !1141

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1143
  %100 = load ptr, ptr @stdout, align 8, !dbg !1143, !tbaa !995
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1143
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !1063
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #40, !dbg !1164
  %103 = icmp eq i32 %102, 0, !dbg !1164
  br i1 %103, label %107, label %104, !dbg !1166

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #40, !dbg !1167
  %106 = icmp eq i32 %105, 0, !dbg !1167
  br i1 %106, label %107, label %110, !dbg !1168

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1169
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !1169
  br label %113, !dbg !1171

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1172
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !1172
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !995
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %114), !dbg !1174
  %116 = load ptr, ptr @stdout, align 8, !dbg !1175, !tbaa !995
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %116), !dbg !1175
  %118 = ptrtoint ptr %64 to i64, !dbg !1176
  %119 = sub i64 %118, %99, !dbg !1176
  %120 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !995
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1176
  %122 = load ptr, ptr @stdout, align 8, !dbg !1177, !tbaa !995
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %122), !dbg !1177
  %124 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !995
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %124), !dbg !1178
  %126 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !995
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1179
  br label %128, !dbg !1180

128:                                              ; preds = %113, %19
  ret void, !dbg !1180
}

; Function Attrs: nounwind
declare !dbg !1181 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1185 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1189 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1191 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1194 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1197 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1200 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1203 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1209 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1210 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1216 {
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1221, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata ptr %1, metadata !1222, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 0, metadata !1224, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1225, metadata !DIExpression()), !dbg !1250
  %4 = load ptr, ptr %1, align 8, !dbg !1251, !tbaa !995
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1252
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.15) #39, !dbg !1253
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #39, !dbg !1254
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.16) #39, !dbg !1255
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1256
  br label %9, !dbg !1257

9:                                                ; preds = %27, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %10, metadata !1223, metadata !DIExpression()), !dbg !1250
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
  ], !dbg !1257

11:                                               ; preds = %9
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1259
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %12) #39, !dbg !1259
  unreachable, !dbg !1259

13:                                               ; preds = %9
  br label %25, !dbg !1263

14:                                               ; preds = %9
  br label %25, !dbg !1264

15:                                               ; preds = %9
  br label %25, !dbg !1265

16:                                               ; preds = %9
  br label %25, !dbg !1266

17:                                               ; preds = %9
  br label %25, !dbg !1267

18:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #43, !dbg !1268
  unreachable, !dbg !1268

19:                                               ; preds = %9
  %20 = load ptr, ptr @stdout, align 8, !dbg !1269, !tbaa !995
  %21 = load ptr, ptr @Version, align 8, !dbg !1269, !tbaa !995
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #39, !dbg !1269
  %23 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22) #39, !dbg !1269
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef null) #39, !dbg !1269
  tail call void @exit(i32 noundef 0) #41, !dbg !1269
  unreachable, !dbg !1269

24:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #43, !dbg !1270
  unreachable, !dbg !1270

25:                                               ; preds = %9, %13, %14, %15, %16, %17
  %26 = phi ptr [ @just_group_list, %17 ], [ @opt_zero, %16 ], [ @just_user, %15 ], [ @use_real, %14 ], [ @use_name, %13 ], [ @just_group, %9 ]
  store i1 true, ptr %26, align 1, !dbg !1271
  br label %27, !dbg !1257

27:                                               ; preds = %25, %9
  br label %9, !dbg !1258, !llvm.loop !1272

28:                                               ; preds = %9
  %29 = load i32, ptr @optind, align 4, !dbg !1274, !tbaa !1065
  %30 = sub nsw i32 %0, %29, !dbg !1275
  %31 = sext i32 %30 to i64, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %31, metadata !1226, metadata !DIExpression()), !dbg !1250
  %32 = load i1, ptr @just_user, align 1, !dbg !1277
  %33 = zext i1 %32 to i32, !dbg !1277
  %34 = load i1, ptr @just_group, align 1, !dbg !1279
  %35 = zext i1 %34 to i32, !dbg !1279
  %36 = add nuw nsw i32 %35, %33, !dbg !1280
  %37 = load i1, ptr @just_group_list, align 1, !dbg !1281
  %38 = zext i1 %37 to i32, !dbg !1281
  %39 = add nuw nsw i32 %36, %38, !dbg !1282
  %40 = icmp ugt i32 %39, 1, !dbg !1283
  br i1 %40, label %41, label %43, !dbg !1284

41:                                               ; preds = %28
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !1285
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %42) #39, !dbg !1285
  unreachable, !dbg !1285

43:                                               ; preds = %28
  %44 = select i1 %32, i1 true, i1 %34, !dbg !1286
  %45 = select i1 %44, i1 true, i1 %37, !dbg !1286
  call void @llvm.dbg.value(metadata i1 %45, metadata !1227, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1250
  br i1 %45, label %46, label %48, !dbg !1287

46:                                               ; preds = %43
  %47 = icmp eq i32 %29, %0, !dbg !1289
  br i1 %47, label %123, label %62, !dbg !1291

48:                                               ; preds = %43
  %49 = load i1, ptr @use_real, align 1, !dbg !1292
  br i1 %49, label %52, label %50, !dbg !1293

50:                                               ; preds = %48
  %51 = load i1, ptr @use_name, align 1, !dbg !1294
  br i1 %51, label %52, label %54, !dbg !1295

52:                                               ; preds = %50, %48
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !1296
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %53) #39, !dbg !1296
  unreachable, !dbg !1296

54:                                               ; preds = %50
  %55 = load i1, ptr @opt_zero, align 1, !dbg !1297
  br i1 %55, label %56, label %58, !dbg !1299

56:                                               ; preds = %54
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1300
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %57) #39, !dbg !1300
  unreachable, !dbg !1300

58:                                               ; preds = %54
  %59 = icmp eq i32 %29, %0, !dbg !1289
  br i1 %59, label %60, label %62, !dbg !1301

60:                                               ; preds = %58
  %61 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !1302
  br label %123, !dbg !1291

62:                                               ; preds = %58, %46
  %63 = icmp ugt i32 %30, 1, !dbg !1303
  %64 = zext i1 %63 to i8, !dbg !1304
  store i8 %64, ptr @multiple_users, align 1, !dbg !1304, !tbaa !1305
  %65 = sext i32 %29 to i64, !dbg !1307
  %66 = add nsw i64 %31, %65, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %66, metadata !1226, metadata !DIExpression()), !dbg !1250
  %67 = icmp ugt i64 %66, %65, !dbg !1309
  br i1 %67, label %68, label %174, !dbg !1310

68:                                               ; preds = %62, %117
  %69 = phi i64 [ %121, %117 ], [ %65, %62 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1311
  call void @llvm.dbg.value(metadata ptr null, metadata !1228, metadata !DIExpression()), !dbg !1312
  store ptr null, ptr %3, align 8, !dbg !1313, !tbaa !995
  call void @llvm.dbg.value(metadata ptr null, metadata !1234, metadata !DIExpression()), !dbg !1312
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69, !dbg !1314
  %71 = load ptr, ptr %70, align 8, !dbg !1314, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %71, metadata !1246, metadata !DIExpression()), !dbg !1312
  %72 = load i8, ptr %71, align 1, !dbg !1315, !tbaa !1074
  %73 = icmp eq i8 %72, 0, !dbg !1315
  br i1 %73, label %88, label %74, !dbg !1317

74:                                               ; preds = %68
  call void @llvm.dbg.value(metadata ptr %3, metadata !1228, metadata !DIExpression(DW_OP_deref)), !dbg !1312
  %75 = call ptr @parse_user_spec(ptr noundef nonnull %71, ptr noundef nonnull @euid, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #39, !dbg !1318
  %76 = icmp eq ptr %75, null, !dbg !1318
  br i1 %76, label %77, label %88, !dbg !1321

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 8, !dbg !1322, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %78, metadata !1228, metadata !DIExpression()), !dbg !1312
  %79 = icmp eq ptr %78, null, !dbg !1322
  br i1 %79, label %82, label %80, !dbg !1322

80:                                               ; preds = %77
  %81 = call ptr @getpwnam(ptr noundef nonnull %78), !dbg !1323
  br label %85, !dbg !1322

82:                                               ; preds = %77
  %83 = load i32, ptr @euid, align 4, !dbg !1324, !tbaa !1065
  %84 = call ptr @getpwuid(i32 noundef %83) #39, !dbg !1325
  br label %85, !dbg !1322

85:                                               ; preds = %80, %82
  %86 = phi ptr [ %81, %80 ], [ %84, %82 ], !dbg !1312
  call void @llvm.dbg.value(metadata ptr %86, metadata !1234, metadata !DIExpression()), !dbg !1312
  %87 = icmp eq ptr %86, null, !dbg !1326
  br i1 %87, label %88, label %93, !dbg !1328

88:                                               ; preds = %68, %74, %85
  %89 = tail call ptr @__errno_location() #42, !dbg !1329
  %90 = load i32, ptr %89, align 4, !dbg !1329, !tbaa !1065
  %91 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !1329
  %92 = call ptr @quote(ptr noundef nonnull %71) #39, !dbg !1329
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %90, ptr noundef %91, ptr noundef %92) #39, !dbg !1329
  store i8 0, ptr @ok, align 1, !dbg !1331, !tbaa !1305
  br label %117, !dbg !1332

93:                                               ; preds = %85
  %94 = load ptr, ptr %3, align 8, !dbg !1333, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %94, metadata !1228, metadata !DIExpression()), !dbg !1312
  %95 = icmp eq ptr %94, null, !dbg !1333
  br i1 %95, label %96, label %99, !dbg !1336

96:                                               ; preds = %93
  %97 = load ptr, ptr %86, align 8, !dbg !1337, !tbaa !1338
  %98 = call noalias nonnull ptr @xstrdup(ptr noundef %97) #39, !dbg !1340
  call void @llvm.dbg.value(metadata ptr %98, metadata !1228, metadata !DIExpression()), !dbg !1312
  store ptr %98, ptr %3, align 8, !dbg !1341, !tbaa !995
  br label %99, !dbg !1342

99:                                               ; preds = %96, %93
  %100 = phi ptr [ %98, %96 ], [ %94, %93 ], !dbg !1343
  %101 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 2, !dbg !1344
  %102 = load i32, ptr %101, align 8, !dbg !1344, !tbaa !1345
  store i32 %102, ptr @euid, align 4, !dbg !1346, !tbaa !1065
  store i32 %102, ptr @ruid, align 4, !dbg !1347, !tbaa !1065
  %103 = getelementptr inbounds %struct.passwd, ptr %86, i64 0, i32 3, !dbg !1348
  %104 = load i32, ptr %103, align 4, !dbg !1348, !tbaa !1349
  store i32 %104, ptr @egid, align 4, !dbg !1350, !tbaa !1065
  store i32 %104, ptr @rgid, align 4, !dbg !1351, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %100, metadata !1228, metadata !DIExpression()), !dbg !1312
  call fastcc void @print_stuff(ptr noundef nonnull %100), !dbg !1352
  %105 = load ptr, ptr @stdout, align 8, !dbg !1353, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %105, metadata !1355, metadata !DIExpression()), !dbg !1361
  %106 = load i32, ptr %105, align 8, !dbg !1363, !tbaa !1364
  %107 = and i32 %106, 32, !dbg !1353
  %108 = icmp eq i32 %107, 0, !dbg !1353
  br i1 %108, label %117, label %109, !dbg !1367

109:                                              ; preds = %99
  %110 = tail call ptr @__errno_location() #42, !dbg !1368
  %111 = load i32, ptr %110, align 4, !dbg !1368, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %111, metadata !1371, metadata !DIExpression()), !dbg !1373
  %112 = call i32 @fflush_unlocked(ptr noundef nonnull %105) #39, !dbg !1374
  %113 = load ptr, ptr @stdout, align 8, !dbg !1375, !tbaa !995
  %114 = call i32 @fpurge(ptr noundef %113) #39, !dbg !1376
  %115 = load ptr, ptr @stdout, align 8, !dbg !1377, !tbaa !995
  call void @clearerr_unlocked(ptr noundef %115) #39, !dbg !1377
  %116 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #39, !dbg !1378
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %111, ptr noundef %116) #39, !dbg !1378
  unreachable, !dbg !1378

117:                                              ; preds = %99, %88
  %118 = load ptr, ptr %3, align 8, !dbg !1379, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %118, metadata !1228, metadata !DIExpression()), !dbg !1312
  call void @free(ptr noundef %118) #39, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1381
  %119 = load i32, ptr @optind, align 4, !dbg !1382, !tbaa !1065
  %120 = add nsw i32 %119, 1, !dbg !1382
  store i32 %120, ptr @optind, align 4, !dbg !1382, !tbaa !1065
  %121 = sext i32 %120 to i64, !dbg !1383
  %122 = icmp ugt i64 %66, %121, !dbg !1309
  br i1 %122, label %68, label %174, !dbg !1310, !llvm.loop !1384

123:                                              ; preds = %60, %46
  call void @llvm.dbg.value(metadata i32 -1, metadata !1247, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 -1, metadata !1249, metadata !DIExpression()), !dbg !1386
  br i1 %32, label %124, label %126, !dbg !1387

124:                                              ; preds = %123
  %125 = load i1, ptr @use_real, align 1, !dbg !1388
  br i1 %125, label %137, label %128, !dbg !1390

126:                                              ; preds = %123
  %127 = select i1 %34, i1 true, i1 %37, !dbg !1391
  br i1 %127, label %137, label %128, !dbg !1391

128:                                              ; preds = %126, %124
  %129 = tail call ptr @__errno_location() #42, !dbg !1392
  store i32 0, ptr %129, align 4, !dbg !1394, !tbaa !1065
  %130 = tail call i32 @geteuid() #39, !dbg !1395
  store i32 %130, ptr @euid, align 4, !dbg !1396, !tbaa !1065
  %131 = icmp eq i32 %130, -1, !dbg !1397
  br i1 %131, label %132, label %137, !dbg !1399

132:                                              ; preds = %128
  %133 = load i32, ptr %129, align 4, !dbg !1400, !tbaa !1065
  %134 = icmp eq i32 %133, 0, !dbg !1400
  br i1 %134, label %137, label %135, !dbg !1401

135:                                              ; preds = %132
  %136 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !1402
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %133, ptr noundef %136) #39, !dbg !1402
  unreachable, !dbg !1402

137:                                              ; preds = %126, %128, %132, %124
  %138 = load i1, ptr @just_user, align 1, !dbg !1403
  br i1 %138, label %139, label %141, !dbg !1405

139:                                              ; preds = %137
  %140 = load i1, ptr @use_real, align 1, !dbg !1406
  br i1 %140, label %145, label %173, !dbg !1403

141:                                              ; preds = %137
  %142 = load i1, ptr @just_group, align 1, !dbg !1407
  br i1 %142, label %143, label %145, !dbg !1408

143:                                              ; preds = %141
  %144 = tail call ptr @__errno_location() #42, !dbg !1409
  br label %156, !dbg !1408

145:                                              ; preds = %141, %139
  %146 = tail call ptr @__errno_location() #42, !dbg !1412
  store i32 0, ptr %146, align 4, !dbg !1414, !tbaa !1065
  %147 = tail call i32 @getuid() #39, !dbg !1415
  store i32 %147, ptr @ruid, align 4, !dbg !1416, !tbaa !1065
  %148 = icmp eq i32 %147, -1, !dbg !1417
  br i1 %148, label %149, label %154, !dbg !1419

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 4, !dbg !1420, !tbaa !1065
  %151 = icmp eq i32 %150, 0, !dbg !1420
  br i1 %151, label %154, label %152, !dbg !1421

152:                                              ; preds = %149
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !1422
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %150, ptr noundef %153) #39, !dbg !1422
  unreachable, !dbg !1422

154:                                              ; preds = %145, %149
  %155 = load i1, ptr @just_user, align 1, !dbg !1423
  br i1 %155, label %173, label %156, !dbg !1424

156:                                              ; preds = %143, %154
  %157 = phi ptr [ %144, %143 ], [ %146, %154 ], !dbg !1409
  store i32 0, ptr %157, align 4, !dbg !1425, !tbaa !1065
  %158 = tail call i32 @getegid() #39, !dbg !1426
  store i32 %158, ptr @egid, align 4, !dbg !1427, !tbaa !1065
  %159 = icmp eq i32 %158, -1, !dbg !1428
  br i1 %159, label %160, label %165, !dbg !1430

160:                                              ; preds = %156
  %161 = load i32, ptr %157, align 4, !dbg !1431, !tbaa !1065
  %162 = icmp eq i32 %161, 0, !dbg !1431
  br i1 %162, label %165, label %163, !dbg !1432

163:                                              ; preds = %160
  %164 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #39, !dbg !1433
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %161, ptr noundef %164) #39, !dbg !1433
  unreachable, !dbg !1433

165:                                              ; preds = %160, %156
  store i32 0, ptr %157, align 4, !dbg !1434, !tbaa !1065
  %166 = tail call i32 @getgid() #39, !dbg !1435
  store i32 %166, ptr @rgid, align 4, !dbg !1436, !tbaa !1065
  %167 = icmp eq i32 %166, -1, !dbg !1437
  br i1 %167, label %168, label %173, !dbg !1439

168:                                              ; preds = %165
  %169 = load i32, ptr %157, align 4, !dbg !1440, !tbaa !1065
  %170 = icmp eq i32 %169, 0, !dbg !1440
  br i1 %170, label %173, label %171, !dbg !1441

171:                                              ; preds = %168
  %172 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #39, !dbg !1442
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %169, ptr noundef %172) #39, !dbg !1442
  unreachable, !dbg !1442

173:                                              ; preds = %139, %165, %168, %154
  tail call fastcc void @print_stuff(ptr noundef null), !dbg !1443
  br label %174

174:                                              ; preds = %117, %62, %173
  %175 = load i8, ptr @ok, align 1, !dbg !1444, !tbaa !1305, !range !1445, !noundef !1049
  %176 = icmp eq i8 %175, 0, !dbg !1444
  %177 = zext i1 %176 to i32, !dbg !1444
  ret i32 %177, !dbg !1446
}

; Function Attrs: nounwind
declare !dbg !1447 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1450 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1451 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1454 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1460 noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1463 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1466 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @print_stuff(ptr noundef %0) unnamed_addr #10 !dbg !1470 {
  %2 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1472, metadata !DIExpression()), !dbg !1473
  %3 = load i1, ptr @just_user, align 1, !dbg !1474
  br i1 %3, label %4, label %24, !dbg !1476

4:                                                ; preds = %1
  %5 = load i1, ptr @use_real, align 1, !dbg !1477
  %6 = load i32, ptr @ruid, align 4, !dbg !1477
  %7 = load i32, ptr @euid, align 4, !dbg !1477
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %8, metadata !1478, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata ptr null, metadata !1483, metadata !DIExpression()), !dbg !1484
  %9 = load i1, ptr @use_name, align 1, !dbg !1486
  br i1 %9, label %12, label %10, !dbg !1488

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64, !dbg !1489
  br label %21, !dbg !1488

12:                                               ; preds = %4
  %13 = tail call ptr @getpwuid(i32 noundef %8) #39, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %13, metadata !1483, metadata !DIExpression()), !dbg !1484
  %14 = icmp eq ptr %13, null, !dbg !1493
  br i1 %14, label %15, label %18, !dbg !1495

15:                                               ; preds = %12
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #39, !dbg !1496
  %17 = zext i32 %8 to i64, !dbg !1496
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16, i64 noundef %17) #39, !dbg !1496
  store i8 0, ptr @ok, align 1, !dbg !1498, !tbaa !1305
  br label %21, !dbg !1499

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %13, metadata !1483, metadata !DIExpression()), !dbg !1484
  %19 = load ptr, ptr %13, align 8, !dbg !1500, !tbaa !1338
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %19) #39, !dbg !1500
  br label %182, !dbg !1500

21:                                               ; preds = %15, %10
  %22 = phi i64 [ %11, %10 ], [ %17, %15 ], !dbg !1489
  call void @llvm.dbg.value(metadata ptr null, metadata !1483, metadata !DIExpression()), !dbg !1484
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %22) #39, !dbg !1489
  br label %182

24:                                               ; preds = %1
  %25 = load i1, ptr @just_group, align 1, !dbg !1501
  br i1 %25, label %26, label %37, !dbg !1503

26:                                               ; preds = %24
  %27 = load i1, ptr @use_real, align 1, !dbg !1504
  %28 = load i32, ptr @rgid, align 4, !dbg !1504
  %29 = load i32, ptr @egid, align 4, !dbg !1504
  %30 = select i1 %27, i32 %28, i32 %29, !dbg !1504
  %31 = load i1, ptr @use_name, align 1, !dbg !1505
  %32 = tail call zeroext i1 @print_group(i32 noundef %30, i1 noundef zeroext %31) #39, !dbg !1506
  %33 = load i8, ptr @ok, align 1, !dbg !1507, !tbaa !1305, !range !1445, !noundef !1049
  %34 = icmp ne i8 %33, 0, !dbg !1507
  %35 = and i1 %32, %34, !dbg !1507
  %36 = zext i1 %35 to i8, !dbg !1507
  store i8 %36, ptr @ok, align 1, !dbg !1507, !tbaa !1305
  br label %182, !dbg !1508

37:                                               ; preds = %24
  %38 = load i1, ptr @just_group_list, align 1, !dbg !1509
  br i1 %38, label %39, label %51, !dbg !1511

39:                                               ; preds = %37
  %40 = load i32, ptr @ruid, align 4, !dbg !1512, !tbaa !1065
  %41 = load i32, ptr @rgid, align 4, !dbg !1513, !tbaa !1065
  %42 = load i32, ptr @egid, align 4, !dbg !1514, !tbaa !1065
  %43 = load i1, ptr @use_name, align 1, !dbg !1515
  %44 = load i1, ptr @opt_zero, align 1, !dbg !1516
  %45 = select i1 %44, i8 0, i8 32, !dbg !1516
  %46 = tail call zeroext i1 @print_group_list(ptr noundef %0, i32 noundef %40, i32 noundef %41, i32 noundef %42, i1 noundef zeroext %43, i8 noundef signext %45) #39, !dbg !1517
  %47 = load i8, ptr @ok, align 1, !dbg !1518, !tbaa !1305, !range !1445, !noundef !1049
  %48 = icmp ne i8 %47, 0, !dbg !1518
  %49 = and i1 %46, %48, !dbg !1518
  %50 = zext i1 %49 to i8, !dbg !1518
  store i8 %50, ptr @ok, align 1, !dbg !1518, !tbaa !1305
  br label %182, !dbg !1519

51:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1520, metadata !DIExpression()), !dbg !1539
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #39, !dbg !1542
  %53 = load i32, ptr @ruid, align 4, !dbg !1542, !tbaa !1065
  %54 = zext i32 %53 to i64, !dbg !1542
  %55 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %52, i64 noundef %54) #39, !dbg !1542
  %56 = load i32, ptr @ruid, align 4, !dbg !1543, !tbaa !1065
  %57 = tail call ptr @getpwuid(i32 noundef %56) #39, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %57, metadata !1523, metadata !DIExpression()), !dbg !1539
  %58 = icmp eq ptr %57, null, !dbg !1545
  br i1 %58, label %62, label %59, !dbg !1547

59:                                               ; preds = %51
  %60 = load ptr, ptr %57, align 8, !dbg !1548, !tbaa !1338
  %61 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %60) #39, !dbg !1548
  br label %62, !dbg !1548

62:                                               ; preds = %59, %51
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #39, !dbg !1549
  %64 = load i32, ptr @rgid, align 4, !dbg !1549, !tbaa !1065
  %65 = zext i32 %64 to i64, !dbg !1549
  %66 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %63, i64 noundef %65) #39, !dbg !1549
  %67 = load i32, ptr @rgid, align 4, !dbg !1550, !tbaa !1065
  %68 = tail call ptr @getgrgid(i32 noundef %67) #39, !dbg !1551
  call void @llvm.dbg.value(metadata ptr %68, metadata !1524, metadata !DIExpression()), !dbg !1539
  %69 = icmp eq ptr %68, null, !dbg !1552
  br i1 %69, label %73, label %70, !dbg !1554

70:                                               ; preds = %62
  %71 = load ptr, ptr %68, align 8, !dbg !1555, !tbaa !1556
  %72 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %71) #39, !dbg !1555
  br label %73, !dbg !1555

73:                                               ; preds = %70, %62
  %74 = load i32, ptr @euid, align 4, !dbg !1558, !tbaa !1065
  %75 = load i32, ptr @ruid, align 4, !dbg !1560, !tbaa !1065
  %76 = icmp eq i32 %74, %75, !dbg !1561
  br i1 %76, label %88, label %77, !dbg !1562

77:                                               ; preds = %73
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #39, !dbg !1563
  %79 = load i32, ptr @euid, align 4, !dbg !1563, !tbaa !1065
  %80 = zext i32 %79 to i64, !dbg !1563
  %81 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %78, i64 noundef %80) #39, !dbg !1563
  %82 = load i32, ptr @euid, align 4, !dbg !1565, !tbaa !1065
  %83 = tail call ptr @getpwuid(i32 noundef %82) #39, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %83, metadata !1523, metadata !DIExpression()), !dbg !1539
  %84 = icmp eq ptr %83, null, !dbg !1567
  br i1 %84, label %88, label %85, !dbg !1569

85:                                               ; preds = %77
  %86 = load ptr, ptr %83, align 8, !dbg !1570, !tbaa !1338
  %87 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %86) #39, !dbg !1570
  br label %88, !dbg !1570

88:                                               ; preds = %85, %77, %73
  %89 = phi ptr [ %83, %85 ], [ null, %77 ], [ %57, %73 ], !dbg !1539
  call void @llvm.dbg.value(metadata ptr %89, metadata !1523, metadata !DIExpression()), !dbg !1539
  %90 = load i32, ptr @egid, align 4, !dbg !1571, !tbaa !1065
  %91 = load i32, ptr @rgid, align 4, !dbg !1573, !tbaa !1065
  %92 = icmp eq i32 %90, %91, !dbg !1574
  br i1 %92, label %104, label %93, !dbg !1575

93:                                               ; preds = %88
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #39, !dbg !1576
  %95 = load i32, ptr @egid, align 4, !dbg !1576, !tbaa !1065
  %96 = zext i32 %95 to i64, !dbg !1576
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, i64 noundef %96) #39, !dbg !1576
  %98 = load i32, ptr @egid, align 4, !dbg !1578, !tbaa !1065
  %99 = tail call ptr @getgrgid(i32 noundef %98) #39, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %99, metadata !1524, metadata !DIExpression()), !dbg !1539
  %100 = icmp eq ptr %99, null, !dbg !1580
  br i1 %100, label %104, label %101, !dbg !1582

101:                                              ; preds = %93
  %102 = load ptr, ptr %99, align 8, !dbg !1583, !tbaa !1556
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %102) #39, !dbg !1583
  br label %104, !dbg !1583

104:                                              ; preds = %101, %93, %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #39, !dbg !1584
  %105 = icmp eq ptr %0, null, !dbg !1585
  br i1 %105, label %115, label %106, !dbg !1587

106:                                              ; preds = %104
  %107 = icmp eq ptr %89, null, !dbg !1588
  br i1 %107, label %111, label %108, !dbg !1588

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.passwd, ptr %89, i64 0, i32 3, !dbg !1589
  %110 = load i32, ptr %109, align 4, !dbg !1589, !tbaa !1349
  br label %111, !dbg !1588

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %110, %108 ], [ -1, %106 ], !dbg !1590
  call void @llvm.dbg.value(metadata i32 %112, metadata !1535, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr %2, metadata !1533, metadata !DIExpression(DW_OP_deref)), !dbg !1591
  %113 = call i32 @xgetgroups(ptr noundef nonnull %0, i32 noundef %112, ptr noundef nonnull %2) #39, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %113, metadata !1536, metadata !DIExpression()), !dbg !1591
  %114 = icmp sgt i32 %113, -1, !dbg !1593
  br i1 %114, label %129, label %119, !dbg !1595

115:                                              ; preds = %104
  %116 = load i32, ptr @egid, align 4, !dbg !1596, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %116, metadata !1535, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr %2, metadata !1533, metadata !DIExpression(DW_OP_deref)), !dbg !1591
  %117 = call i32 @xgetgroups(ptr noundef null, i32 noundef %116, ptr noundef nonnull %2) #39, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %117, metadata !1536, metadata !DIExpression()), !dbg !1591
  %118 = icmp sgt i32 %117, -1, !dbg !1593
  br i1 %118, label %129, label %124, !dbg !1595

119:                                              ; preds = %111
  %120 = tail call ptr @__errno_location() #42, !dbg !1597
  %121 = load i32, ptr %120, align 4, !dbg !1597, !tbaa !1065
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #39, !dbg !1597
  %123 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !1597
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %121, ptr noundef %122, ptr noundef %123) #39, !dbg !1597
  br label %128, !dbg !1597

124:                                              ; preds = %115
  %125 = tail call ptr @__errno_location() #42, !dbg !1600
  %126 = load i32, ptr %125, align 4, !dbg !1600, !tbaa !1065
  %127 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #39, !dbg !1600
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %126, ptr noundef %127) #39, !dbg !1600
  br label %128

128:                                              ; preds = %124, %119
  store i8 0, ptr @ok, align 1, !dbg !1601, !tbaa !1305
  br label %181, !dbg !1602

129:                                              ; preds = %115, %111
  %130 = phi i32 [ %117, %115 ], [ %113, %111 ]
  %131 = icmp eq i32 %130, 0, !dbg !1603
  br i1 %131, label %150, label %132, !dbg !1605

132:                                              ; preds = %129
  %133 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.89, i32 noundef 5) #39, !dbg !1606
  %134 = load ptr, ptr @stdout, align 8, !dbg !1606, !tbaa !995
  %135 = call i32 @fputs_unlocked(ptr noundef %133, ptr noundef %134), !dbg !1606
  call void @llvm.dbg.value(metadata i32 0, metadata !1537, metadata !DIExpression()), !dbg !1607
  %136 = zext i32 %130 to i64, !dbg !1608
  call void @llvm.dbg.value(metadata i64 0, metadata !1537, metadata !DIExpression()), !dbg !1607
  %137 = load ptr, ptr %2, align 8, !dbg !1610, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %137, metadata !1533, metadata !DIExpression()), !dbg !1591
  %138 = load i32, ptr %137, align 4, !dbg !1610, !tbaa !1065
  %139 = zext i32 %138 to i64, !dbg !1610
  %140 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %139) #39, !dbg !1610
  %141 = load ptr, ptr %2, align 8, !dbg !1612, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %141, metadata !1533, metadata !DIExpression()), !dbg !1591
  %142 = load i32, ptr %141, align 4, !dbg !1612, !tbaa !1065
  %143 = call ptr @getgrgid(i32 noundef %142) #39, !dbg !1613
  call void @llvm.dbg.value(metadata ptr %143, metadata !1524, metadata !DIExpression()), !dbg !1539
  %144 = icmp eq ptr %143, null, !dbg !1614
  br i1 %144, label %148, label %145, !dbg !1616

145:                                              ; preds = %132
  %146 = load ptr, ptr %143, align 8, !dbg !1617, !tbaa !1556
  %147 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %146) #39, !dbg !1617
  br label %148, !dbg !1617

148:                                              ; preds = %145, %132
  call void @llvm.dbg.value(metadata i64 1, metadata !1537, metadata !DIExpression()), !dbg !1607
  %149 = icmp eq i32 %130, 1, !dbg !1608
  br i1 %149, label %150, label %152, !dbg !1618

150:                                              ; preds = %178, %148, %129
  %151 = load ptr, ptr %2, align 8, !dbg !1619, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %151, metadata !1533, metadata !DIExpression()), !dbg !1591
  call void @free(ptr noundef %151) #39, !dbg !1620
  br label %181, !dbg !1621

152:                                              ; preds = %148, %178
  %153 = phi i64 [ %179, %178 ], [ 1, %148 ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !1537, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 44, metadata !1622, metadata !DIExpression()), !dbg !1627
  %154 = load ptr, ptr @stdout, align 8, !dbg !1630, !tbaa !995
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 5, !dbg !1630
  %156 = load ptr, ptr %155, align 8, !dbg !1630, !tbaa !1631
  %157 = getelementptr inbounds %struct._IO_FILE, ptr %154, i64 0, i32 6, !dbg !1630
  %158 = load ptr, ptr %157, align 8, !dbg !1630, !tbaa !1632
  %159 = icmp ult ptr %156, %158, !dbg !1630
  br i1 %159, label %162, label %160, !dbg !1630, !prof !1633

160:                                              ; preds = %152
  %161 = call i32 @__overflow(ptr noundef nonnull %154, i32 noundef 44) #39, !dbg !1630
  br label %164, !dbg !1630

162:                                              ; preds = %152
  %163 = getelementptr inbounds i8, ptr %156, i64 1, !dbg !1630
  store ptr %163, ptr %155, align 8, !dbg !1630, !tbaa !1631
  store i8 44, ptr %156, align 1, !dbg !1630, !tbaa !1074
  br label %164, !dbg !1630

164:                                              ; preds = %162, %160
  %165 = load ptr, ptr %2, align 8, !dbg !1610, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %165, metadata !1533, metadata !DIExpression()), !dbg !1591
  %166 = getelementptr inbounds i32, ptr %165, i64 %153, !dbg !1610
  %167 = load i32, ptr %166, align 4, !dbg !1610, !tbaa !1065
  %168 = zext i32 %167 to i64, !dbg !1610
  %169 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.81, i64 noundef %168) #39, !dbg !1610
  %170 = load ptr, ptr %2, align 8, !dbg !1612, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %170, metadata !1533, metadata !DIExpression()), !dbg !1591
  %171 = getelementptr inbounds i32, ptr %170, i64 %153, !dbg !1612
  %172 = load i32, ptr %171, align 4, !dbg !1612, !tbaa !1065
  %173 = call ptr @getgrgid(i32 noundef %172) #39, !dbg !1613
  call void @llvm.dbg.value(metadata ptr %173, metadata !1524, metadata !DIExpression()), !dbg !1539
  %174 = icmp eq ptr %173, null, !dbg !1614
  br i1 %174, label %178, label %175, !dbg !1616

175:                                              ; preds = %164
  %176 = load ptr, ptr %173, align 8, !dbg !1617, !tbaa !1556
  %177 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef %176) #39, !dbg !1617
  br label %178, !dbg !1617

178:                                              ; preds = %175, %164
  %179 = add nuw nsw i64 %153, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %179, metadata !1537, metadata !DIExpression()), !dbg !1607
  %180 = icmp eq i64 %179, %136, !dbg !1608
  br i1 %180, label %150, label %152, !dbg !1618, !llvm.loop !1635

181:                                              ; preds = %128, %150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #39, !dbg !1621
  br label %182

182:                                              ; preds = %21, %18, %26, %181, %39
  %183 = load i1, ptr @opt_zero, align 1, !dbg !1638
  br i1 %183, label %184, label %211, !dbg !1640

184:                                              ; preds = %182
  %185 = load i1, ptr @just_group_list, align 1, !dbg !1641
  %186 = load i8, ptr @multiple_users, align 1
  %187 = icmp ne i8 %186, 0
  %188 = select i1 %185, i1 %187, i1 false, !dbg !1642
  br i1 %188, label %189, label %211, !dbg !1642

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 0, metadata !1622, metadata !DIExpression()), !dbg !1643
  %190 = load ptr, ptr @stdout, align 8, !dbg !1646, !tbaa !995
  %191 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 5, !dbg !1646
  %192 = load ptr, ptr %191, align 8, !dbg !1646, !tbaa !1631
  %193 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 6, !dbg !1646
  %194 = load ptr, ptr %193, align 8, !dbg !1646, !tbaa !1632
  %195 = icmp ult ptr %192, %194, !dbg !1646
  br i1 %195, label %198, label %196, !dbg !1646, !prof !1633

196:                                              ; preds = %189
  %197 = call i32 @__overflow(ptr noundef nonnull %190, i32 noundef 0) #39, !dbg !1646
  br label %200, !dbg !1646

198:                                              ; preds = %189
  %199 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !1646
  store ptr %199, ptr %191, align 8, !dbg !1646, !tbaa !1631
  store i8 0, ptr %192, align 1, !dbg !1646, !tbaa !1074
  br label %200, !dbg !1646

200:                                              ; preds = %196, %198
  call void @llvm.dbg.value(metadata i32 0, metadata !1622, metadata !DIExpression()), !dbg !1647
  %201 = load ptr, ptr @stdout, align 8, !dbg !1649, !tbaa !995
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1649
  %203 = load ptr, ptr %202, align 8, !dbg !1649, !tbaa !1631
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1649
  %205 = load ptr, ptr %204, align 8, !dbg !1649, !tbaa !1632
  %206 = icmp ult ptr %203, %205, !dbg !1649
  br i1 %206, label %209, label %207, !dbg !1649, !prof !1633

207:                                              ; preds = %200
  %208 = call i32 @__overflow(ptr noundef nonnull %201, i32 noundef 0) #39, !dbg !1649
  br label %224, !dbg !1649

209:                                              ; preds = %200
  %210 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1649
  store ptr %210, ptr %202, align 8, !dbg !1649, !tbaa !1631
  store i8 0, ptr %203, align 1, !dbg !1649, !tbaa !1074
  br label %224, !dbg !1649

211:                                              ; preds = %184, %182
  %212 = phi i32 [ 0, %184 ], [ 10, %182 ], !dbg !1650
  call void @llvm.dbg.value(metadata i32 %212, metadata !1622, metadata !DIExpression()), !dbg !1652
  %213 = load ptr, ptr @stdout, align 8, !dbg !1654, !tbaa !995
  %214 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 5, !dbg !1654
  %215 = load ptr, ptr %214, align 8, !dbg !1654, !tbaa !1631
  %216 = getelementptr inbounds %struct._IO_FILE, ptr %213, i64 0, i32 6, !dbg !1654
  %217 = load ptr, ptr %216, align 8, !dbg !1654, !tbaa !1632
  %218 = icmp ult ptr %215, %217, !dbg !1654
  br i1 %218, label %221, label %219, !dbg !1654, !prof !1633

219:                                              ; preds = %211
  %220 = call i32 @__overflow(ptr noundef nonnull %213, i32 noundef %212) #39, !dbg !1654
  br label %224, !dbg !1654

221:                                              ; preds = %211
  %222 = trunc i32 %212 to i8, !dbg !1654
  %223 = getelementptr inbounds i8, ptr %215, i64 1, !dbg !1654
  store ptr %223, ptr %214, align 8, !dbg !1654, !tbaa !1631
  store i8 %222, ptr %215, align 1, !dbg !1654, !tbaa !1074
  br label %224, !dbg !1654

224:                                              ; preds = %221, %219, %209, %207
  ret void, !dbg !1655
}

declare !dbg !1656 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1657 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1660 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1663 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1667 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1668 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1671 i32 @getgid() local_unnamed_addr #2

declare !dbg !1672 ptr @getgrgid(i32 noundef) local_unnamed_addr #3

declare !dbg !1675 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @print_group_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i8 noundef signext %5) local_unnamed_addr #10 !dbg !1678 {
  %7 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1682, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %1, metadata !1683, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %2, metadata !1684, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %3, metadata !1685, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i1 %4, metadata !1686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %5, metadata !1687, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 1, metadata !1688, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata ptr null, metadata !1689, metadata !DIExpression()), !dbg !1705
  %8 = icmp eq ptr %0, null, !dbg !1706
  br i1 %8, label %13, label %9, !dbg !1708

9:                                                ; preds = %6
  %10 = tail call ptr @getpwuid(i32 noundef %1) #39, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %10, metadata !1689, metadata !DIExpression()), !dbg !1705
  %11 = icmp ne ptr %10, null, !dbg !1711
  %12 = zext i1 %11 to i8, !dbg !1713
  br label %13, !dbg !1713

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1705
  %15 = phi ptr [ null, %6 ], [ %10, %9 ], !dbg !1705
  call void @llvm.dbg.value(metadata ptr %15, metadata !1689, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %14, metadata !1688, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %2, metadata !1714, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i1 %4, metadata !1719, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1736
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8 1, metadata !1728, metadata !DIExpression()), !dbg !1736
  br i1 %4, label %19, label %16, !dbg !1739

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1740
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1736
  %18 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %17) #39, !dbg !1740
  br label %29, !dbg !1742

19:                                               ; preds = %13
  %20 = tail call ptr @getgrgid(i32 noundef %2) #39, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %20, metadata !1720, metadata !DIExpression()), !dbg !1736
  %21 = icmp eq ptr %20, null, !dbg !1744
  br i1 %21, label %25, label %22, !dbg !1745

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !1720, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1736
  %23 = load ptr, ptr %20, align 8, !dbg !1746, !tbaa !1556
  %24 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %23) #39, !dbg !1746
  br label %29, !dbg !1742

25:                                               ; preds = %19
  %26 = zext i32 %2 to i64, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %26, metadata !1729, metadata !DIExpression()), !dbg !1748
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #39, !dbg !1749
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %27, i64 noundef %26) #39, !dbg !1749
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1736
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %26) #39, !dbg !1740
  br label %29

29:                                               ; preds = %22, %16, %25
  %30 = phi i8 [ 0, %25 ], [ %14, %16 ], [ %14, %22 ]
  call void @llvm.dbg.value(metadata i8 %30, metadata !1688, metadata !DIExpression()), !dbg !1705
  %31 = icmp eq i32 %3, %2, !dbg !1750
  br i1 %31, label %58, label %32, !dbg !1752

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 %5, metadata !1753, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1756
  %33 = load ptr, ptr @stdout, align 8, !dbg !1759, !tbaa !995
  %34 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 5, !dbg !1759
  %35 = load ptr, ptr %34, align 8, !dbg !1759, !tbaa !1631
  %36 = getelementptr inbounds %struct._IO_FILE, ptr %33, i64 0, i32 6, !dbg !1759
  %37 = load ptr, ptr %36, align 8, !dbg !1759, !tbaa !1632
  %38 = icmp ult ptr %35, %37, !dbg !1759
  br i1 %38, label %42, label %39, !dbg !1759, !prof !1633

39:                                               ; preds = %32
  %40 = zext i8 %5 to i32, !dbg !1760
  call void @llvm.dbg.value(metadata i8 %5, metadata !1753, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1756
  %41 = tail call i32 @__overflow(ptr noundef nonnull %33, i32 noundef %40) #39, !dbg !1759
  br label %44, !dbg !1759

42:                                               ; preds = %32
  %43 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1759
  store ptr %43, ptr %34, align 8, !dbg !1759, !tbaa !1631
  store i8 %5, ptr %35, align 1, !dbg !1759, !tbaa !1074
  br label %44, !dbg !1759

44:                                               ; preds = %39, %42
  call void @llvm.dbg.value(metadata i32 %3, metadata !1714, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i1 %4, metadata !1719, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1761
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 1, metadata !1728, metadata !DIExpression()), !dbg !1761
  br i1 %4, label %48, label %45, !dbg !1764

45:                                               ; preds = %44
  %46 = zext i32 %3 to i64, !dbg !1765
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1761
  %47 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %46) #39, !dbg !1765
  br label %58, !dbg !1766

48:                                               ; preds = %44
  %49 = tail call ptr @getgrgid(i32 noundef %3) #39, !dbg !1767
  call void @llvm.dbg.value(metadata ptr %49, metadata !1720, metadata !DIExpression()), !dbg !1761
  %50 = icmp eq ptr %49, null, !dbg !1768
  br i1 %50, label %54, label %51, !dbg !1769

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata ptr %49, metadata !1720, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1761
  %52 = load ptr, ptr %49, align 8, !dbg !1770, !tbaa !1556
  %53 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %52) #39, !dbg !1770
  br label %58, !dbg !1766

54:                                               ; preds = %48
  %55 = zext i32 %3 to i64, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %55, metadata !1729, metadata !DIExpression()), !dbg !1772
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #39, !dbg !1773
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, i64 noundef %55) #39, !dbg !1773
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1761
  %57 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %55) #39, !dbg !1765
  br label %58

58:                                               ; preds = %54, %45, %51, %29
  %59 = phi i8 [ %30, %29 ], [ 0, %54 ], [ %30, %45 ], [ %30, %51 ], !dbg !1705
  call void @llvm.dbg.value(metadata i8 %59, metadata !1688, metadata !DIExpression()), !dbg !1705
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !1774
  %60 = icmp eq ptr %15, null, !dbg !1775
  br i1 %60, label %64, label %61, !dbg !1775

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.passwd, ptr %15, i64 0, i32 3, !dbg !1776
  %63 = load i32, ptr %62, align 4, !dbg !1776, !tbaa !1349
  br label %64, !dbg !1775

64:                                               ; preds = %58, %61
  %65 = phi i32 [ %63, %61 ], [ %3, %58 ], !dbg !1775
  call void @llvm.dbg.value(metadata ptr %7, metadata !1700, metadata !DIExpression(DW_OP_deref)), !dbg !1777
  %66 = call i32 @xgetgroups(ptr noundef %0, i32 noundef %65, ptr noundef nonnull %7) #39, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %66, metadata !1702, metadata !DIExpression()), !dbg !1777
  %67 = icmp sgt i32 %66, -1, !dbg !1779
  br i1 %67, label %68, label %73, !dbg !1781

68:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 0, metadata !1703, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %59, metadata !1688, metadata !DIExpression()), !dbg !1705
  %69 = icmp eq i32 %66, 0, !dbg !1783
  br i1 %69, label %81, label %70, !dbg !1785

70:                                               ; preds = %68
  %71 = zext i8 %5 to i32
  %72 = zext i32 %66 to i64, !dbg !1783
  br label %84, !dbg !1785

73:                                               ; preds = %64
  %74 = tail call ptr @__errno_location() #42, !dbg !1786
  %75 = load i32, ptr %74, align 4, !dbg !1786, !tbaa !1065
  br i1 %8, label %79, label %76, !dbg !1789

76:                                               ; preds = %73
  %77 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !1790
  %78 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !1790
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %77, ptr noundef %78) #39, !dbg !1790
  br label %125, !dbg !1792

79:                                               ; preds = %73
  %80 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1793
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %80) #39, !dbg !1793
  br label %125

81:                                               ; preds = %121, %68
  %82 = phi i8 [ %59, %68 ], [ %122, %121 ], !dbg !1795
  %83 = load ptr, ptr %7, align 8, !dbg !1796, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %83, metadata !1700, metadata !DIExpression()), !dbg !1777
  call void @free(ptr noundef %83) #39, !dbg !1797
  br label %125, !dbg !1798

84:                                               ; preds = %70, %121
  %85 = phi i64 [ 0, %70 ], [ %123, %121 ]
  %86 = phi i8 [ %59, %70 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !1703, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %86, metadata !1688, metadata !DIExpression()), !dbg !1705
  %87 = load ptr, ptr %7, align 8, !dbg !1799, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %87, metadata !1700, metadata !DIExpression()), !dbg !1777
  %88 = getelementptr inbounds i32, ptr %87, i64 %85, !dbg !1799
  %89 = load i32, ptr %88, align 4, !dbg !1799, !tbaa !1065
  %90 = icmp eq i32 %89, %2, !dbg !1801
  %91 = icmp eq i32 %89, %3
  %92 = or i1 %90, %91, !dbg !1802
  br i1 %92, label %121, label %93, !dbg !1802

93:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8 %5, metadata !1753, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1803
  %94 = load ptr, ptr @stdout, align 8, !dbg !1806, !tbaa !995
  %95 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 5, !dbg !1806
  %96 = load ptr, ptr %95, align 8, !dbg !1806, !tbaa !1631
  %97 = getelementptr inbounds %struct._IO_FILE, ptr %94, i64 0, i32 6, !dbg !1806
  %98 = load ptr, ptr %97, align 8, !dbg !1806, !tbaa !1632
  %99 = icmp ult ptr %96, %98, !dbg !1806
  br i1 %99, label %102, label %100, !dbg !1806, !prof !1633

100:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i8 %5, metadata !1753, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1803
  %101 = call i32 @__overflow(ptr noundef nonnull %94, i32 noundef %71) #39, !dbg !1806
  br label %104, !dbg !1806

102:                                              ; preds = %93
  %103 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1806
  store ptr %103, ptr %95, align 8, !dbg !1806, !tbaa !1631
  store i8 %5, ptr %96, align 1, !dbg !1806, !tbaa !1074
  br label %104, !dbg !1806

104:                                              ; preds = %100, %102
  %105 = load ptr, ptr %7, align 8, !dbg !1807, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %105, metadata !1700, metadata !DIExpression()), !dbg !1777
  %106 = getelementptr inbounds i32, ptr %105, i64 %85, !dbg !1807
  %107 = load i32, ptr %106, align 4, !dbg !1807, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %107, metadata !1714, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i1 %4, metadata !1719, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1809
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 1, metadata !1728, metadata !DIExpression()), !dbg !1809
  br i1 %4, label %111, label %108, !dbg !1811

108:                                              ; preds = %104
  %109 = zext i32 %107 to i64, !dbg !1812
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1809
  %110 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %109) #39, !dbg !1812
  br label %121, !dbg !1813

111:                                              ; preds = %104
  %112 = call ptr @getgrgid(i32 noundef %107) #39, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %112, metadata !1720, metadata !DIExpression()), !dbg !1809
  %113 = icmp eq ptr %112, null, !dbg !1815
  br i1 %113, label %117, label %114, !dbg !1816

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %112, metadata !1720, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1809
  %115 = load ptr, ptr %112, align 8, !dbg !1817, !tbaa !1556
  %116 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %115) #39, !dbg !1817
  br label %121, !dbg !1813

117:                                              ; preds = %111
  %118 = zext i32 %107 to i64, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %118, metadata !1729, metadata !DIExpression()), !dbg !1819
  %119 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #39, !dbg !1820
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %119, i64 noundef %118) #39, !dbg !1820
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1809
  %120 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %118) #39, !dbg !1812
  br label %121

121:                                              ; preds = %117, %108, %114, %84
  %122 = phi i8 [ %86, %84 ], [ 0, %117 ], [ %86, %108 ], [ %86, %114 ], !dbg !1705
  call void @llvm.dbg.value(metadata i8 %122, metadata !1688, metadata !DIExpression()), !dbg !1705
  %123 = add nuw nsw i64 %85, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %123, metadata !1703, metadata !DIExpression()), !dbg !1782
  %124 = icmp eq i64 %123, %72, !dbg !1783
  br i1 %124, label %81, label %84, !dbg !1785, !llvm.loop !1822

125:                                              ; preds = %76, %79, %81
  %126 = phi i8 [ %82, %81 ], [ %59, %79 ], [ %59, %76 ], !dbg !1795
  call void @llvm.dbg.value(metadata i8 %126, metadata !1688, metadata !DIExpression()), !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !1798
  %127 = and i8 %126, 1
  %128 = icmp ne i8 %127, 0
  %129 = select i1 %67, i1 %128, i1 false
  ret i1 %129, !dbg !1824
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @print_group(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #10 !dbg !1715 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1714, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i1 %1, metadata !1719, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1825
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 1, metadata !1728, metadata !DIExpression()), !dbg !1825
  br i1 %1, label %5, label %3, !dbg !1826

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1827
  br label %14, !dbg !1826

5:                                                ; preds = %2
  %6 = tail call ptr @getgrgid(i32 noundef %0) #39, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %6, metadata !1720, metadata !DIExpression()), !dbg !1825
  %7 = icmp eq ptr %6, null, !dbg !1829
  br i1 %7, label %8, label %11, !dbg !1830

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %9, metadata !1729, metadata !DIExpression()), !dbg !1832
  %10 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.5, i32 noundef 5) #39, !dbg !1833
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %10, i64 noundef %9) #39, !dbg !1833
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1825
  br label %14, !dbg !1834

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !1720, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1825
  %12 = load ptr, ptr %6, align 8, !dbg !1835, !tbaa !1556
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.3.4, ptr noundef %12) #39, !dbg !1835
  br label %18, !dbg !1835

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1827
  %16 = xor i1 %1, true, !dbg !1825
  call void @llvm.dbg.value(metadata ptr null, metadata !1720, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 poison, metadata !1728, metadata !DIExpression()), !dbg !1825
  %17 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4.3, i64 noundef %15) #39, !dbg !1827
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ %16, %14 ], [ true, %11 ]
  ret i1 %19, !dbg !1836
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1837 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1839, metadata !DIExpression()), !dbg !1840
  store ptr %0, ptr @file_name, align 8, !dbg !1841, !tbaa !995
  ret void, !dbg !1842
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1843 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1847, metadata !DIExpression()), !dbg !1848
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1849, !tbaa !1305
  ret void, !dbg !1850
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1851 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1856, !tbaa !995
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1857
  %3 = icmp eq i32 %2, 0, !dbg !1858
  br i1 %3, label %22, label %4, !dbg !1859

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1860, !tbaa !1305, !range !1445, !noundef !1049
  %6 = icmp eq i8 %5, 0, !dbg !1860
  br i1 %6, label %11, label %7, !dbg !1861

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1862
  %9 = load i32, ptr %8, align 4, !dbg !1862, !tbaa !1065
  %10 = icmp eq i32 %9, 32, !dbg !1863
  br i1 %10, label %22, label %11, !dbg !1864

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #39, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %12, metadata !1853, metadata !DIExpression()), !dbg !1866
  %13 = load ptr, ptr @file_name, align 8, !dbg !1867, !tbaa !995
  %14 = icmp eq ptr %13, null, !dbg !1867
  %15 = tail call ptr @__errno_location() #42, !dbg !1869
  %16 = load i32, ptr %15, align 4, !dbg !1869, !tbaa !1065
  br i1 %14, label %19, label %17, !dbg !1870

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1871
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #39, !dbg !1871
  br label %20, !dbg !1871

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #39, !dbg !1872
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1873, !tbaa !1065
  tail call void @_exit(i32 noundef %21) #41, !dbg !1874
  unreachable, !dbg !1874

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1875, !tbaa !995
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1877
  %25 = icmp eq i32 %24, 0, !dbg !1878
  br i1 %25, label %28, label %26, !dbg !1879

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1880, !tbaa !1065
  tail call void @_exit(i32 noundef %27) #41, !dbg !1881
  unreachable, !dbg !1881

28:                                               ; preds = %22
  ret void, !dbg !1882
}

; Function Attrs: noreturn
declare !dbg !1883 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1888, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 %1, metadata !1889, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr %2, metadata !1890, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr %3, metadata !1891, metadata !DIExpression()), !dbg !1892
  tail call fastcc void @flush_stdout(), !dbg !1893
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1894, !tbaa !995
  %6 = icmp eq ptr %5, null, !dbg !1894
  br i1 %6, label %8, label %7, !dbg !1896

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1897
  br label %12, !dbg !1897

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1898, !tbaa !995
  %10 = tail call ptr @getprogname() #40, !dbg !1898
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %10) #39, !dbg !1898
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1900
  ret void, !dbg !1901
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1902 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1904, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 1, metadata !1906, metadata !DIExpression()), !dbg !1909
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1912
  %2 = icmp slt i32 %1, 0, !dbg !1913
  br i1 %2, label %6, label %3, !dbg !1914

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1915, !tbaa !995
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1915
  br label %6, !dbg !1915

6:                                                ; preds = %3, %0
  ret void, !dbg !1916
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1917 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1919, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %1, metadata !1920, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %2, metadata !1921, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %3, metadata !1922, metadata !DIExpression()), !dbg !1923
  %6 = load ptr, ptr @stderr, align 8, !dbg !1924, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %6, metadata !1925, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata ptr %2, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata ptr %3, metadata !1966, metadata !DIExpression()), !dbg !1967
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1969
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1970, !tbaa !1065
  %9 = add i32 %8, 1, !dbg !1970
  store i32 %9, ptr @error_message_count, align 4, !dbg !1970, !tbaa !1065
  %10 = icmp eq i32 %1, 0, !dbg !1971
  br i1 %10, label %20, label %11, !dbg !1973

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1974, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1984
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1978, metadata !DIExpression()), !dbg !1985
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1986
  call void @llvm.dbg.value(metadata ptr %12, metadata !1977, metadata !DIExpression()), !dbg !1982
  %13 = icmp eq ptr %12, null, !dbg !1987
  br i1 %13, label %14, label %16, !dbg !1989

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #39, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %15, metadata !1977, metadata !DIExpression()), !dbg !1982
  br label %16, !dbg !1991

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1982
  call void @llvm.dbg.value(metadata ptr %17, metadata !1977, metadata !DIExpression()), !dbg !1982
  %18 = load ptr, ptr @stderr, align 8, !dbg !1992, !tbaa !995
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %17) #39, !dbg !1992
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1993
  br label %20, !dbg !1994

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1995, !tbaa !995
  call void @llvm.dbg.value(metadata i32 10, metadata !1996, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata ptr %21, metadata !2001, metadata !DIExpression()), !dbg !2002
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2004
  %23 = load ptr, ptr %22, align 8, !dbg !2004, !tbaa !1631
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2004
  %25 = load ptr, ptr %24, align 8, !dbg !2004, !tbaa !1632
  %26 = icmp ult ptr %23, %25, !dbg !2004
  br i1 %26, label %29, label %27, !dbg !2004, !prof !1633

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !2004
  br label %31, !dbg !2004

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2004
  store ptr %30, ptr %22, align 8, !dbg !2004, !tbaa !1631
  store i8 10, ptr %23, align 1, !dbg !2004, !tbaa !1074
  br label %31, !dbg !2004

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2005, !tbaa !995
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !2005
  %34 = icmp eq i32 %0, 0, !dbg !2006
  br i1 %34, label %36, label %35, !dbg !2008

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !2009
  unreachable, !dbg !2009

36:                                               ; preds = %31
  ret void, !dbg !2010
}

declare !dbg !2011 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !2014 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2017 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2021 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2025, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 %1, metadata !2026, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata ptr %2, metadata !2027, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !2035
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2028, metadata !DIExpression()), !dbg !2036
  call void @llvm.va_start(ptr nonnull %4), !dbg !2037
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !2038
  call void @llvm.va_end(ptr nonnull %4), !dbg !2039
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !2040
  ret void, !dbg !2040
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !519 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !531, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %1, metadata !532, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %2, metadata !533, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %3, metadata !534, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %4, metadata !535, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %5, metadata !536, metadata !DIExpression()), !dbg !2041
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2042, !tbaa !1065
  %8 = icmp eq i32 %7, 0, !dbg !2042
  br i1 %8, label %23, label %9, !dbg !2044

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2045, !tbaa !1065
  %11 = icmp eq i32 %10, %3, !dbg !2048
  br i1 %11, label %12, label %22, !dbg !2049

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2050, !tbaa !995
  %14 = icmp eq ptr %13, %2, !dbg !2051
  br i1 %14, label %36, label %15, !dbg !2052

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2053
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2054
  br i1 %18, label %19, label %22, !dbg !2054

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2055
  %21 = icmp eq i32 %20, 0, !dbg !2056
  br i1 %21, label %36, label %22, !dbg !2057

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2058, !tbaa !995
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2059, !tbaa !1065
  br label %23, !dbg !2060

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2061
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2062, !tbaa !995
  %25 = icmp eq ptr %24, null, !dbg !2062
  br i1 %25, label %27, label %26, !dbg !2064

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !2065
  br label %31, !dbg !2065

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2066, !tbaa !995
  %29 = tail call ptr @getprogname() #40, !dbg !2066
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %29) #39, !dbg !2066
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2068, !tbaa !995
  %33 = icmp eq ptr %2, null, !dbg !2068
  %34 = select i1 %33, ptr @.str.3.52, ptr @.str.2.53, !dbg !2068
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !2068
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2069
  br label %36, !dbg !2070

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2070
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2071 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2075, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %1, metadata !2076, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata ptr %2, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %3, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata ptr %4, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !2082
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2080, metadata !DIExpression()), !dbg !2083
  call void @llvm.va_start(ptr nonnull %6), !dbg !2084
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !2085
  call void @llvm.va_end(ptr nonnull %6), !dbg !2086
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !2087
  ret void, !dbg !2087
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2088 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2127
  tail call void @__fpurge(ptr noundef nonnull %0) #39, !dbg !2128
  ret i32 0, !dbg !2129
}

; Function Attrs: nounwind
declare !dbg !2130 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !2134 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2137, !tbaa !995
  ret ptr %1, !dbg !2138
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !2139 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2141, metadata !DIExpression()), !dbg !2144
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2145
  call void @llvm.dbg.value(metadata ptr %2, metadata !2142, metadata !DIExpression()), !dbg !2144
  %3 = icmp eq ptr %2, null, !dbg !2146
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2146
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2146
  call void @llvm.dbg.value(metadata ptr %5, metadata !2143, metadata !DIExpression()), !dbg !2144
  %6 = ptrtoint ptr %5 to i64, !dbg !2147
  %7 = ptrtoint ptr %0 to i64, !dbg !2147
  %8 = sub i64 %6, %7, !dbg !2147
  %9 = icmp sgt i64 %8, 6, !dbg !2149
  br i1 %9, label %10, label %19, !dbg !2150

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %11, metadata !2152, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i64 7, metadata !2158, metadata !DIExpression()), !dbg !2159
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.90, i64 7), !dbg !2161
  %13 = icmp eq i32 %12, 0, !dbg !2162
  br i1 %13, label %14, label %19, !dbg !2163

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2141, metadata !DIExpression()), !dbg !2144
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.91, i64 noundef 3) #40, !dbg !2164
  %16 = icmp eq i32 %15, 0, !dbg !2167
  %17 = select i1 %16, i64 3, i64 0, !dbg !2168
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2168
  br label %19, !dbg !2168

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2144
  call void @llvm.dbg.value(metadata ptr %21, metadata !2143, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata ptr %20, metadata !2141, metadata !DIExpression()), !dbg !2144
  store ptr %20, ptr @program_name, align 8, !dbg !2169, !tbaa !995
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2170, !tbaa !995
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2171, !tbaa !995
  ret void, !dbg !2172
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2173 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !573 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !580, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata ptr %1, metadata !581, metadata !DIExpression()), !dbg !2174
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2175
  call void @llvm.dbg.value(metadata ptr %5, metadata !582, metadata !DIExpression()), !dbg !2174
  %6 = icmp eq ptr %5, %0, !dbg !2176
  br i1 %6, label %7, label %14, !dbg !2178

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2180
  call void @llvm.dbg.declare(metadata ptr %4, metadata !588, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr %4, metadata !2182, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %4, metadata !2191, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 0, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 8, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i64 0, ptr %4, align 8, !dbg !2201
  call void @llvm.dbg.value(metadata ptr %3, metadata !583, metadata !DIExpression(DW_OP_deref)), !dbg !2174
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2202
  %9 = icmp eq i64 %8, 2, !dbg !2204
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !583, metadata !DIExpression()), !dbg !2174
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2205
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2206
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2174
  ret ptr %15, !dbg !2206
}

; Function Attrs: nounwind
declare !dbg !2207 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2213 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2218, metadata !DIExpression()), !dbg !2221
  %2 = tail call ptr @__errno_location() #42, !dbg !2222
  %3 = load i32, ptr %2, align 4, !dbg !2222, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %3, metadata !2219, metadata !DIExpression()), !dbg !2221
  %4 = icmp eq ptr %0, null, !dbg !2223
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2223
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2224
  call void @llvm.dbg.value(metadata ptr %6, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i32 %3, ptr %2, align 4, !dbg !2225, !tbaa !1065
  ret ptr %6, !dbg !2226
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !2227 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2233, metadata !DIExpression()), !dbg !2234
  %2 = icmp eq ptr %0, null, !dbg !2235
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2235
  %4 = load i32, ptr %3, align 8, !dbg !2236, !tbaa !2237
  ret i32 %4, !dbg !2239
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2240 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %1, metadata !2245, metadata !DIExpression()), !dbg !2246
  %3 = icmp eq ptr %0, null, !dbg !2247
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2247
  store i32 %1, ptr %4, align 8, !dbg !2248, !tbaa !2237
  ret void, !dbg !2249
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2250 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8 %1, metadata !2255, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %2, metadata !2256, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8 %1, metadata !2257, metadata !DIExpression()), !dbg !2262
  %4 = icmp eq ptr %0, null, !dbg !2263
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2263
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2264
  %7 = lshr i8 %1, 5, !dbg !2265
  %8 = zext i8 %7 to i64, !dbg !2265
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2266
  call void @llvm.dbg.value(metadata ptr %9, metadata !2258, metadata !DIExpression()), !dbg !2262
  %10 = and i8 %1, 31, !dbg !2267
  %11 = zext i8 %10 to i32, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %11, metadata !2260, metadata !DIExpression()), !dbg !2262
  %12 = load i32, ptr %9, align 4, !dbg !2268, !tbaa !1065
  %13 = lshr i32 %12, %11, !dbg !2269
  %14 = and i32 %13, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %14, metadata !2261, metadata !DIExpression()), !dbg !2262
  %15 = xor i32 %13, %2, !dbg !2271
  %16 = and i32 %15, 1, !dbg !2271
  %17 = shl nuw i32 %16, %11, !dbg !2272
  %18 = xor i32 %17, %12, !dbg !2273
  store i32 %18, ptr %9, align 4, !dbg !2273, !tbaa !1065
  ret i32 %14, !dbg !2274
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2275 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %1, metadata !2280, metadata !DIExpression()), !dbg !2282
  %3 = icmp eq ptr %0, null, !dbg !2283
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2285
  call void @llvm.dbg.value(metadata ptr %4, metadata !2279, metadata !DIExpression()), !dbg !2282
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2286
  %6 = load i32, ptr %5, align 4, !dbg !2286, !tbaa !2287
  call void @llvm.dbg.value(metadata i32 %6, metadata !2281, metadata !DIExpression()), !dbg !2282
  store i32 %1, ptr %5, align 4, !dbg !2288, !tbaa !2287
  ret i32 %6, !dbg !2289
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2290 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2294, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr %1, metadata !2295, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr %2, metadata !2296, metadata !DIExpression()), !dbg !2297
  %4 = icmp eq ptr %0, null, !dbg !2298
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2300
  call void @llvm.dbg.value(metadata ptr %5, metadata !2294, metadata !DIExpression()), !dbg !2297
  store i32 10, ptr %5, align 8, !dbg !2301, !tbaa !2237
  %6 = icmp ne ptr %1, null, !dbg !2302
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2304
  br i1 %8, label %10, label %9, !dbg !2304

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2305
  unreachable, !dbg !2305

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2306
  store ptr %1, ptr %11, align 8, !dbg !2307, !tbaa !2308
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2309
  store ptr %2, ptr %12, align 8, !dbg !2310, !tbaa !2311
  ret void, !dbg !2312
}

; Function Attrs: noreturn nounwind
declare !dbg !2313 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2314 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2318, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %1, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata ptr %2, metadata !2320, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %3, metadata !2321, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata ptr %4, metadata !2322, metadata !DIExpression()), !dbg !2326
  %6 = icmp eq ptr %4, null, !dbg !2327
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2327
  call void @llvm.dbg.value(metadata ptr %7, metadata !2323, metadata !DIExpression()), !dbg !2326
  %8 = tail call ptr @__errno_location() #42, !dbg !2328
  %9 = load i32, ptr %8, align 4, !dbg !2328, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %9, metadata !2324, metadata !DIExpression()), !dbg !2326
  %10 = load i32, ptr %7, align 8, !dbg !2329, !tbaa !2237
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2330
  %12 = load i32, ptr %11, align 4, !dbg !2330, !tbaa !2287
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2331
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2332
  %15 = load ptr, ptr %14, align 8, !dbg !2332, !tbaa !2308
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2333
  %17 = load ptr, ptr %16, align 8, !dbg !2333, !tbaa !2311
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2334
  call void @llvm.dbg.value(metadata i64 %18, metadata !2325, metadata !DIExpression()), !dbg !2326
  store i32 %9, ptr %8, align 4, !dbg !2335, !tbaa !1065
  ret i64 %18, !dbg !2336
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2337 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2343, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %2, metadata !2345, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %3, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %4, metadata !2347, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %5, metadata !2348, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %6, metadata !2349, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %7, metadata !2350, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %8, metadata !2351, metadata !DIExpression()), !dbg !2405
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2406
  %17 = icmp eq i64 %16, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i1 %17, metadata !2352, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr null, metadata !2355, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2356, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2357, metadata !DIExpression()), !dbg !2405
  %18 = trunc i32 %5 to i8, !dbg !2408
  %19 = lshr i8 %18, 1, !dbg !2408
  %20 = and i8 %19, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i8 %20, metadata !2358, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 1, metadata !2360, metadata !DIExpression()), !dbg !2405
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2409

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2410
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2411
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2412
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2413
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2405
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2414
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2415
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %39, metadata !2360, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %38, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %37, metadata !2358, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %36, metadata !2357, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %35, metadata !2356, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %34, metadata !2355, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %33, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %32, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %31, metadata !2351, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %30, metadata !2350, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %29, metadata !2347, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.label(metadata !2398), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2405
  switch i32 %29, label %114 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %115
    i32 0, label %113
    i32 2, label %105
    i32 4, label %99
    i32 3, label %96
    i32 1, label %97
    i32 10, label %73
    i32 8, label %48
    i32 9, label %48
  ], !dbg !2417

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2358, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 5, metadata !2347, metadata !DIExpression()), !dbg !2405
  br label %115, !dbg !2418

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2358, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 5, metadata !2347, metadata !DIExpression()), !dbg !2405
  %43 = and i8 %37, 1, !dbg !2419
  %44 = icmp eq i8 %43, 0, !dbg !2419
  br i1 %44, label %45, label %115, !dbg !2418

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2421
  br i1 %46, label %115, label %47, !dbg !2424

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2421, !tbaa !1074
  br label %115, !dbg !2421

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.104, metadata !686, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %29, metadata !687, metadata !DIExpression()), !dbg !2425
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.11.104, i32 noundef 5) #39, !dbg !2429
  call void @llvm.dbg.value(metadata ptr %49, metadata !688, metadata !DIExpression()), !dbg !2425
  %50 = icmp eq ptr %49, @.str.11.104, !dbg !2430
  br i1 %50, label %51, label %60, !dbg !2432

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %13, metadata !690, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata ptr %13, metadata !2436, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata ptr %13, metadata !2444, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 8, metadata !2448, metadata !DIExpression()), !dbg !2449
  store i64 0, ptr %13, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %12, metadata !689, metadata !DIExpression(DW_OP_deref)), !dbg !2425
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2452
  %53 = icmp eq i64 %52, 3, !dbg !2454
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !689, metadata !DIExpression()), !dbg !2425
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2455
  %57 = icmp eq i32 %29, 9, !dbg !2455
  %58 = select i1 %57, ptr @.str.10.106, ptr @.str.12.107, !dbg !2455
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2456
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2425
  call void @llvm.dbg.value(metadata ptr %61, metadata !2350, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr @.str.12.107, metadata !686, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %29, metadata !687, metadata !DIExpression()), !dbg !2457
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.105, ptr noundef nonnull @.str.12.107, i32 noundef 5) #39, !dbg !2459
  call void @llvm.dbg.value(metadata ptr %62, metadata !688, metadata !DIExpression()), !dbg !2457
  %63 = icmp eq ptr %62, @.str.12.107, !dbg !2460
  br i1 %63, label %64, label %73, !dbg !2461

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2462
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %11, metadata !690, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata ptr %11, metadata !2436, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata ptr %11, metadata !2444, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 8, metadata !2448, metadata !DIExpression()), !dbg !2467
  store i64 0, ptr %11, align 8, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %10, metadata !689, metadata !DIExpression(DW_OP_deref)), !dbg !2457
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2470
  %66 = icmp eq i64 %65, 3, !dbg !2471
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !689, metadata !DIExpression()), !dbg !2457
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2472
  %70 = icmp eq i32 %29, 9, !dbg !2472
  %71 = select i1 %70, ptr @.str.10.106, ptr @.str.12.107, !dbg !2472
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2472
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2473
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2473
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2351, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %74, metadata !2350, metadata !DIExpression()), !dbg !2405
  %76 = and i8 %37, 1, !dbg !2474
  %77 = icmp eq i8 %76, 0, !dbg !2474
  br i1 %77, label %78, label %93, !dbg !2475

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2362, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2405
  %79 = load i8, ptr %74, align 1, !dbg !2477, !tbaa !1074
  %80 = icmp eq i8 %79, 0, !dbg !2479
  br i1 %80, label %93, label %81, !dbg !2479

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2362, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %84, metadata !2353, metadata !DIExpression()), !dbg !2405
  %85 = icmp ult i64 %84, %40, !dbg !2480
  br i1 %85, label %86, label %88, !dbg !2483

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2480
  store i8 %82, ptr %87, align 1, !dbg !2480, !tbaa !1074
  br label %88, !dbg !2480

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %89, metadata !2353, metadata !DIExpression()), !dbg !2405
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2484
  call void @llvm.dbg.value(metadata ptr %90, metadata !2362, metadata !DIExpression()), !dbg !2476
  %91 = load i8, ptr %90, align 1, !dbg !2477, !tbaa !1074
  %92 = icmp eq i8 %91, 0, !dbg !2479
  br i1 %92, label %93, label %81, !dbg !2479, !llvm.loop !2485

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2487
  call void @llvm.dbg.value(metadata i64 %94, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 1, metadata !2357, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %75, metadata !2355, metadata !DIExpression()), !dbg !2405
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %95, metadata !2356, metadata !DIExpression()), !dbg !2405
  br label %115, !dbg !2489

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2357, metadata !DIExpression()), !dbg !2405
  br label %97, !dbg !2490

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %98, metadata !2357, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 1, metadata !2358, metadata !DIExpression()), !dbg !2405
  br label %99, !dbg !2491

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2413
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %101, metadata !2358, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %100, metadata !2357, metadata !DIExpression()), !dbg !2405
  %102 = and i8 %101, 1, !dbg !2492
  %103 = icmp eq i8 %102, 0, !dbg !2492
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2494
  br label %105, !dbg !2494

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2405
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %107, metadata !2358, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %106, metadata !2357, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 2, metadata !2347, metadata !DIExpression()), !dbg !2405
  %108 = and i8 %107, 1, !dbg !2495
  %109 = icmp eq i8 %108, 0, !dbg !2495
  br i1 %109, label %110, label %115, !dbg !2497

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2498
  br i1 %111, label %115, label %112, !dbg !2501

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2498, !tbaa !1074
  br label %115, !dbg !2498

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2358, metadata !DIExpression()), !dbg !2405
  br label %115, !dbg !2502

114:                                              ; preds = %28
  call void @abort() #41, !dbg !2503
  unreachable, !dbg !2503

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2487
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.106, %45 ], [ @.str.10.106, %47 ], [ @.str.10.106, %42 ], [ %34, %28 ], [ @.str.12.107, %110 ], [ @.str.12.107, %112 ], [ @.str.12.107, %105 ], [ @.str.10.106, %41 ], !dbg !2405
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2405
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2405
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %123, metadata !2358, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %122, metadata !2357, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %121, metadata !2356, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %120, metadata !2355, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %119, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %118, metadata !2351, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %117, metadata !2350, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %116, metadata !2347, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 0, metadata !2367, metadata !DIExpression()), !dbg !2504
  %124 = and i8 %122, 1
  %125 = icmp ne i8 %124, 0
  %126 = icmp ne i32 %116, 2
  %127 = and i1 %126, %125
  %128 = icmp ne i64 %121, 0
  %129 = select i1 %127, i1 %128, i1 false
  %130 = icmp ugt i64 %121, 1
  %131 = and i8 %123, 1
  %132 = icmp eq i8 %131, 0
  %133 = icmp eq i32 %116, 2
  %134 = select i1 %126, i1 true, i1 %132
  %135 = icmp ne i8 %131, 0
  %136 = select i1 %135, i1 %128, i1 false
  %137 = and i1 %26, %135
  br label %138, !dbg !2505

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2487
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2410
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2414
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2415
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2506
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2507
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %145, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %144, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %143, metadata !2360, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %142, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %141, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %140, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %139, metadata !2346, metadata !DIExpression()), !dbg !2405
  %147 = icmp eq i64 %139, -1, !dbg !2508
  br i1 %147, label %148, label %152, !dbg !2509

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2510
  %150 = load i8, ptr %149, align 1, !dbg !2510, !tbaa !1074
  %151 = icmp eq i8 %150, 0, !dbg !2511
  br i1 %151, label %627, label %154, !dbg !2512

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2513
  br i1 %153, label %627, label %154, !dbg !2512

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2373, metadata !DIExpression()), !dbg !2514
  br i1 %129, label %155, label %170, !dbg !2515

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2517
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2518
  br i1 %157, label %158, label %160, !dbg !2518

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %159, metadata !2346, metadata !DIExpression()), !dbg !2405
  br label %160, !dbg !2520

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2520
  call void @llvm.dbg.value(metadata i64 %161, metadata !2346, metadata !DIExpression()), !dbg !2405
  %162 = icmp ugt i64 %156, %161, !dbg !2521
  br i1 %162, label %170, label %163, !dbg !2522

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2523
  call void @llvm.dbg.value(metadata ptr %164, metadata !2524, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %120, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i64 %121, metadata !2528, metadata !DIExpression()), !dbg !2529
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2531
  %166 = icmp ne i32 %165, 0, !dbg !2532
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2533
  %168 = xor i1 %166, true, !dbg !2533
  %169 = zext i1 %168 to i8, !dbg !2533
  br i1 %167, label %170, label %688, !dbg !2533

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2514
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2514
  call void @llvm.dbg.value(metadata i8 %173, metadata !2369, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %171, metadata !2346, metadata !DIExpression()), !dbg !2405
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2534
  %175 = load i8, ptr %174, align 1, !dbg !2534, !tbaa !1074
  call void @llvm.dbg.value(metadata i8 %175, metadata !2374, metadata !DIExpression()), !dbg !2514
  switch i8 %175, label %308 [
    i8 0, label %176
    i8 63, label %226
    i8 7, label %274
    i8 8, label %263
    i8 12, label %264
    i8 10, label %272
    i8 13, label %265
    i8 9, label %266
    i8 11, label %267
    i8 92, label %268
    i8 123, label %276
    i8 125, label %276
    i8 35, label %280
    i8 126, label %280
    i8 32, label %282
    i8 33, label %283
    i8 34, label %283
    i8 36, label %283
    i8 38, label %283
    i8 40, label %283
    i8 41, label %283
    i8 42, label %283
    i8 59, label %283
    i8 60, label %283
    i8 61, label %283
    i8 62, label %283
    i8 91, label %283
    i8 94, label %283
    i8 96, label %283
    i8 124, label %283
    i8 39, label %285
    i8 37, label %480
    i8 43, label %480
    i8 44, label %480
    i8 45, label %480
    i8 46, label %480
    i8 47, label %480
    i8 48, label %480
    i8 49, label %480
    i8 50, label %480
    i8 51, label %480
    i8 52, label %480
    i8 53, label %480
    i8 54, label %480
    i8 55, label %480
    i8 56, label %480
    i8 57, label %480
    i8 58, label %480
    i8 65, label %480
    i8 66, label %480
    i8 67, label %480
    i8 68, label %480
    i8 69, label %480
    i8 70, label %480
    i8 71, label %480
    i8 72, label %480
    i8 73, label %480
    i8 74, label %480
    i8 75, label %480
    i8 76, label %480
    i8 77, label %480
    i8 78, label %480
    i8 79, label %480
    i8 80, label %480
    i8 81, label %480
    i8 82, label %480
    i8 83, label %480
    i8 84, label %480
    i8 85, label %480
    i8 86, label %480
    i8 87, label %480
    i8 88, label %480
    i8 89, label %480
    i8 90, label %480
    i8 93, label %480
    i8 95, label %480
    i8 97, label %480
    i8 98, label %480
    i8 99, label %480
    i8 100, label %480
    i8 101, label %480
    i8 102, label %480
    i8 103, label %480
    i8 104, label %480
    i8 105, label %480
    i8 106, label %480
    i8 107, label %480
    i8 108, label %480
    i8 109, label %480
    i8 110, label %480
    i8 111, label %480
    i8 112, label %480
    i8 113, label %480
    i8 114, label %480
    i8 115, label %480
    i8 116, label %480
    i8 117, label %480
    i8 118, label %480
    i8 119, label %480
    i8 120, label %480
    i8 121, label %480
    i8 122, label %480
  ], !dbg !2535

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2536

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2537

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2372, metadata !DIExpression()), !dbg !2514
  %179 = and i8 %144, 1, !dbg !2541
  %180 = icmp eq i8 %179, 0, !dbg !2541
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2541
  br i1 %181, label %182, label %198, !dbg !2541

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2543
  br i1 %183, label %184, label %186, !dbg !2547

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2543
  store i8 39, ptr %185, align 1, !dbg !2543, !tbaa !1074
  br label %186, !dbg !2543

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2547
  call void @llvm.dbg.value(metadata i64 %187, metadata !2353, metadata !DIExpression()), !dbg !2405
  %188 = icmp ult i64 %187, %146, !dbg !2548
  br i1 %188, label %189, label %191, !dbg !2551

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2548
  store i8 36, ptr %190, align 1, !dbg !2548, !tbaa !1074
  br label %191, !dbg !2548

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %192, metadata !2353, metadata !DIExpression()), !dbg !2405
  %193 = icmp ult i64 %192, %146, !dbg !2552
  br i1 %193, label %194, label %196, !dbg !2555

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2552
  store i8 39, ptr %195, align 1, !dbg !2552, !tbaa !1074
  br label %196, !dbg !2552

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %197, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2405
  br label %198, !dbg !2556

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2405
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %200, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %199, metadata !2353, metadata !DIExpression()), !dbg !2405
  %201 = icmp ult i64 %199, %146, !dbg !2557
  br i1 %201, label %202, label %204, !dbg !2560

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2557
  store i8 92, ptr %203, align 1, !dbg !2557, !tbaa !1074
  br label %204, !dbg !2557

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %205, metadata !2353, metadata !DIExpression()), !dbg !2405
  br i1 %126, label %206, label %491, !dbg !2561

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2563
  %208 = icmp ult i64 %207, %171, !dbg !2564
  br i1 %208, label %209, label %480, !dbg !2565

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2566
  %211 = load i8, ptr %210, align 1, !dbg !2566, !tbaa !1074
  %212 = add i8 %211, -48, !dbg !2567
  %213 = icmp ult i8 %212, 10, !dbg !2567
  br i1 %213, label %214, label %480, !dbg !2567

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2568
  br i1 %215, label %216, label %218, !dbg !2572

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2568
  store i8 48, ptr %217, align 1, !dbg !2568, !tbaa !1074
  br label %218, !dbg !2568

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %219, metadata !2353, metadata !DIExpression()), !dbg !2405
  %220 = icmp ult i64 %219, %146, !dbg !2573
  br i1 %220, label %221, label %223, !dbg !2576

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2573
  store i8 48, ptr %222, align 1, !dbg !2573, !tbaa !1074
  br label %223, !dbg !2573

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %224, metadata !2353, metadata !DIExpression()), !dbg !2405
  br label %480, !dbg !2577

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2578

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2579

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2580

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2582

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2584
  %231 = icmp ult i64 %230, %171, !dbg !2585
  br i1 %231, label %232, label %480, !dbg !2586

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2587
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2588
  %235 = load i8, ptr %234, align 1, !dbg !2588, !tbaa !1074
  %236 = icmp eq i8 %235, 63, !dbg !2589
  br i1 %236, label %237, label %480, !dbg !2590

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2591
  %239 = load i8, ptr %238, align 1, !dbg !2591, !tbaa !1074
  %240 = sext i8 %239 to i32, !dbg !2591
  switch i32 %240, label %480 [
    i32 33, label %241
    i32 39, label %241
    i32 40, label %241
    i32 41, label %241
    i32 45, label %241
    i32 47, label %241
    i32 60, label %241
    i32 61, label %241
    i32 62, label %241
  ], !dbg !2592

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2593

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %230, metadata !2367, metadata !DIExpression()), !dbg !2504
  %243 = icmp ult i64 %140, %146, !dbg !2595
  br i1 %243, label %244, label %246, !dbg !2598

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2595
  store i8 63, ptr %245, align 1, !dbg !2595, !tbaa !1074
  br label %246, !dbg !2595

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %247, metadata !2353, metadata !DIExpression()), !dbg !2405
  %248 = icmp ult i64 %247, %146, !dbg !2599
  br i1 %248, label %249, label %251, !dbg !2602

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2599
  store i8 34, ptr %250, align 1, !dbg !2599, !tbaa !1074
  br label %251, !dbg !2599

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %252, metadata !2353, metadata !DIExpression()), !dbg !2405
  %253 = icmp ult i64 %252, %146, !dbg !2603
  br i1 %253, label %254, label %256, !dbg !2606

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2603
  store i8 34, ptr %255, align 1, !dbg !2603, !tbaa !1074
  br label %256, !dbg !2603

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %257, metadata !2353, metadata !DIExpression()), !dbg !2405
  %258 = icmp ult i64 %257, %146, !dbg !2607
  br i1 %258, label %259, label %261, !dbg !2610

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2607
  store i8 63, ptr %260, align 1, !dbg !2607, !tbaa !1074
  br label %261, !dbg !2607

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %262, metadata !2353, metadata !DIExpression()), !dbg !2405
  br label %480, !dbg !2611

263:                                              ; preds = %170
  br label %274, !dbg !2612

264:                                              ; preds = %170
  br label %274, !dbg !2613

265:                                              ; preds = %170
  br label %272, !dbg !2614

266:                                              ; preds = %170
  br label %272, !dbg !2615

267:                                              ; preds = %170
  br label %274, !dbg !2616

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2617

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2618

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2621

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2623

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2624
  call void @llvm.dbg.label(metadata !2399), !dbg !2625
  br i1 %134, label %274, label %670, !dbg !2626

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2624
  call void @llvm.dbg.label(metadata !2401), !dbg !2628
  br i1 %125, label %535, label %491, !dbg !2629

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2630

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2631, !tbaa !1074
  %279 = icmp eq i8 %278, 0, !dbg !2633
  br i1 %279, label %280, label %480, !dbg !2634

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2635
  br i1 %281, label %282, label %480, !dbg !2637

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2373, metadata !DIExpression()), !dbg !2514
  br label %283, !dbg !2638

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2514
  call void @llvm.dbg.value(metadata i8 %284, metadata !2373, metadata !DIExpression()), !dbg !2514
  br i1 %134, label %480, label %670, !dbg !2639

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 1, metadata !2373, metadata !DIExpression()), !dbg !2514
  br i1 %133, label %286, label %480, !dbg !2641

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2642

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2645
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2647
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2647
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %292, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %291, metadata !2354, metadata !DIExpression()), !dbg !2405
  %293 = icmp ult i64 %140, %292, !dbg !2648
  br i1 %293, label %294, label %296, !dbg !2651

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2648
  store i8 39, ptr %295, align 1, !dbg !2648, !tbaa !1074
  br label %296, !dbg !2648

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %297, metadata !2353, metadata !DIExpression()), !dbg !2405
  %298 = icmp ult i64 %297, %292, !dbg !2652
  br i1 %298, label %299, label %301, !dbg !2655

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2652
  store i8 92, ptr %300, align 1, !dbg !2652, !tbaa !1074
  br label %301, !dbg !2652

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %302, metadata !2353, metadata !DIExpression()), !dbg !2405
  %303 = icmp ult i64 %302, %292, !dbg !2656
  br i1 %303, label %304, label %306, !dbg !2659

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2656
  store i8 39, ptr %305, align 1, !dbg !2656, !tbaa !1074
  br label %306, !dbg !2656

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %307, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2405
  br label %480, !dbg !2660

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2661

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2375, metadata !DIExpression()), !dbg !2662
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !2663
  %311 = load ptr, ptr %310, align 8, !dbg !2663, !tbaa !995
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2663
  %314 = load i16, ptr %313, align 2, !dbg !2663, !tbaa !1106
  %315 = lshr i16 %314, 14, !dbg !2665
  %316 = trunc i16 %315 to i8, !dbg !2665
  %317 = and i8 %316, 1, !dbg !2665
  call void @llvm.dbg.value(metadata i8 %317, metadata !2378, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %171, metadata !2346, metadata !DIExpression()), !dbg !2405
  %318 = icmp eq i8 %317, 0, !dbg !2666
  call void @llvm.dbg.value(metadata i1 %318, metadata !2373, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2514
  br label %368, !dbg !2667

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2379, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %14, metadata !2436, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %14, metadata !2444, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 8, metadata !2448, metadata !DIExpression()), !dbg !2672
  store i64 0, ptr %14, align 8, !dbg !2674
  call void @llvm.dbg.value(metadata i64 0, metadata !2375, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 1, metadata !2378, metadata !DIExpression()), !dbg !2662
  %320 = icmp eq i64 %171, -1, !dbg !2675
  br i1 %320, label %321, label %323, !dbg !2677

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %322, metadata !2346, metadata !DIExpression()), !dbg !2405
  br label %323, !dbg !2679

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2514
  call void @llvm.dbg.value(metadata i64 %324, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2680
  %325 = sub i64 %324, %145, !dbg !2681
  call void @llvm.dbg.value(metadata ptr %15, metadata !2382, metadata !DIExpression(DW_OP_deref)), !dbg !2682
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %326, metadata !2386, metadata !DIExpression()), !dbg !2682
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2684

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2375, metadata !DIExpression()), !dbg !2662
  %328 = icmp ugt i64 %324, %145, !dbg !2685
  br i1 %328, label %331, label %329, !dbg !2687

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 0, metadata !2375, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2688
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %324, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i1 true, metadata !2373, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2514
  br label %368, !dbg !2667

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2662
  br label %360, !dbg !2690

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2375, metadata !DIExpression()), !dbg !2662
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2692
  %335 = load i8, ptr %334, align 1, !dbg !2692, !tbaa !1074
  %336 = icmp eq i8 %335, 0, !dbg !2687
  br i1 %336, label %363, label %337, !dbg !2693

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %338, metadata !2375, metadata !DIExpression()), !dbg !2662
  %339 = add i64 %338, %145, !dbg !2695
  %340 = icmp eq i64 %338, %325, !dbg !2685
  br i1 %340, label %363, label %331, !dbg !2687, !llvm.loop !2696

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2697
  %344 = and i1 %343, %133, !dbg !2697
  call void @llvm.dbg.value(metadata i64 1, metadata !2387, metadata !DIExpression()), !dbg !2698
  br i1 %344, label %345, label %354, !dbg !2697

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2387, metadata !DIExpression()), !dbg !2698
  %347 = add i64 %346, %145, !dbg !2699
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2701
  %349 = load i8, ptr %348, align 1, !dbg !2701, !tbaa !1074
  %350 = sext i8 %349 to i32, !dbg !2701
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2702

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %352, metadata !2387, metadata !DIExpression()), !dbg !2698
  %353 = icmp eq i64 %352, %326, !dbg !2704
  br i1 %353, label %354, label %345, !dbg !2705, !llvm.loop !2706

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2708, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %355, metadata !2382, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %355, metadata !2710, metadata !DIExpression()), !dbg !2718
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !2720
  %357 = icmp ne i32 %356, 0, !dbg !2721
  %358 = zext i1 %357 to i8, !dbg !2722
  call void @llvm.dbg.value(metadata i8 %358, metadata !2378, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %326, metadata !2375, metadata !DIExpression()), !dbg !2662
  br label %363, !dbg !2723

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2378, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 0, metadata !2375, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2688
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2689
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2378, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 0, metadata !2375, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2688
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %324, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i1 %361, metadata !2373, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2514
  br label %368, !dbg !2667

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2378, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %364, metadata !2375, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2688
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %324, metadata !2346, metadata !DIExpression()), !dbg !2405
  %366 = icmp eq i8 %365, 0, !dbg !2666
  call void @llvm.dbg.value(metadata i1 %366, metadata !2373, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2514
  %367 = icmp ugt i64 %364, 1, !dbg !2724
  br i1 %367, label %374, label %368, !dbg !2667

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2725
  br i1 %373, label %374, label %480, !dbg !2725

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %379, metadata !2395, metadata !DIExpression()), !dbg !2727
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2728

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2405
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2506
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2504
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2514
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2729
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2514
  call void @llvm.dbg.value(metadata i8 %387, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %386, metadata !2372, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %385, metadata !2369, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %384, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %383, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %382, metadata !2353, metadata !DIExpression()), !dbg !2405
  br i1 %380, label %388, label %434, !dbg !2730

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2735

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2372, metadata !DIExpression()), !dbg !2514
  %390 = and i8 %383, 1, !dbg !2738
  %391 = icmp eq i8 %390, 0, !dbg !2738
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2738
  br i1 %392, label %393, label %409, !dbg !2738

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2740
  br i1 %394, label %395, label %397, !dbg !2744

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2740
  store i8 39, ptr %396, align 1, !dbg !2740, !tbaa !1074
  br label %397, !dbg !2740

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %398, metadata !2353, metadata !DIExpression()), !dbg !2405
  %399 = icmp ult i64 %398, %146, !dbg !2745
  br i1 %399, label %400, label %402, !dbg !2748

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2745
  store i8 36, ptr %401, align 1, !dbg !2745, !tbaa !1074
  br label %402, !dbg !2745

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %403, metadata !2353, metadata !DIExpression()), !dbg !2405
  %404 = icmp ult i64 %403, %146, !dbg !2749
  br i1 %404, label %405, label %407, !dbg !2752

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2749
  store i8 39, ptr %406, align 1, !dbg !2749, !tbaa !1074
  br label %407, !dbg !2749

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %408, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2405
  br label %409, !dbg !2753

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2405
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %411, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %410, metadata !2353, metadata !DIExpression()), !dbg !2405
  %412 = icmp ult i64 %410, %146, !dbg !2754
  br i1 %412, label %413, label %415, !dbg !2757

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2754
  store i8 92, ptr %414, align 1, !dbg !2754, !tbaa !1074
  br label %415, !dbg !2754

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %416, metadata !2353, metadata !DIExpression()), !dbg !2405
  %417 = icmp ult i64 %416, %146, !dbg !2758
  br i1 %417, label %418, label %422, !dbg !2761

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2758
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2758
  store i8 %420, ptr %421, align 1, !dbg !2758, !tbaa !1074
  br label %422, !dbg !2758

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %423, metadata !2353, metadata !DIExpression()), !dbg !2405
  %424 = icmp ult i64 %423, %146, !dbg !2762
  br i1 %424, label %425, label %430, !dbg !2765

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2762
  %428 = or i8 %427, 48, !dbg !2762
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2762
  store i8 %428, ptr %429, align 1, !dbg !2762, !tbaa !1074
  br label %430, !dbg !2762

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %431, metadata !2353, metadata !DIExpression()), !dbg !2405
  %432 = and i8 %387, 7, !dbg !2766
  %433 = or i8 %432, 48, !dbg !2767
  call void @llvm.dbg.value(metadata i8 %433, metadata !2374, metadata !DIExpression()), !dbg !2514
  br label %443, !dbg !2768

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2769
  %436 = icmp eq i8 %435, 0, !dbg !2769
  br i1 %436, label %443, label %437, !dbg !2771

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2772
  br i1 %438, label %439, label %441, !dbg !2776

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2772
  store i8 92, ptr %440, align 1, !dbg !2772, !tbaa !1074
  br label %441, !dbg !2772

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %442, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2514
  br label %443, !dbg !2777

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2405
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2506
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2514
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2514
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2514
  call void @llvm.dbg.value(metadata i8 %448, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %447, metadata !2372, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %446, metadata !2369, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %445, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %444, metadata !2353, metadata !DIExpression()), !dbg !2405
  %449 = add i64 %384, 1, !dbg !2778
  %450 = icmp ugt i64 %379, %449, !dbg !2780
  br i1 %450, label %451, label %478, !dbg !2781

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2782
  %453 = icmp ne i8 %452, 0, !dbg !2782
  %454 = and i8 %447, 1, !dbg !2782
  %455 = icmp eq i8 %454, 0, !dbg !2782
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2782
  br i1 %456, label %457, label %468, !dbg !2782

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2785
  br i1 %458, label %459, label %461, !dbg !2789

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2785
  store i8 39, ptr %460, align 1, !dbg !2785, !tbaa !1074
  br label %461, !dbg !2785

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %462, metadata !2353, metadata !DIExpression()), !dbg !2405
  %463 = icmp ult i64 %462, %146, !dbg !2790
  br i1 %463, label %464, label %466, !dbg !2793

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2790
  store i8 39, ptr %465, align 1, !dbg !2790, !tbaa !1074
  br label %466, !dbg !2790

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %467, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2405
  br label %468, !dbg !2794

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2795
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %470, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %469, metadata !2353, metadata !DIExpression()), !dbg !2405
  %471 = icmp ult i64 %469, %146, !dbg !2796
  br i1 %471, label %472, label %474, !dbg !2799

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2796
  store i8 %448, ptr %473, align 1, !dbg !2796, !tbaa !1074
  br label %474, !dbg !2796

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %475, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %449, metadata !2367, metadata !DIExpression()), !dbg !2504
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2800
  %477 = load i8, ptr %476, align 1, !dbg !2800, !tbaa !1074
  call void @llvm.dbg.value(metadata i8 %477, metadata !2374, metadata !DIExpression()), !dbg !2514
  br label %381, !dbg !2801, !llvm.loop !2802

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2514
  call void @llvm.dbg.value(metadata i8 %448, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %479, metadata !2373, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %447, metadata !2372, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %446, metadata !2369, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %384, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %445, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %444, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %378, metadata !2346, metadata !DIExpression()), !dbg !2405
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2805
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2405
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2410
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2405
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2405
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2504
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2514
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2514
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2514
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %489, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %488, metadata !2373, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %487, metadata !2372, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %173, metadata !2369, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %486, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %485, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %484, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %483, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %482, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %481, metadata !2346, metadata !DIExpression()), !dbg !2405
  br i1 %127, label %502, label %491, !dbg !2806

491:                                              ; preds = %270, %225, %274, %204, %480
  %492 = phi i64 [ %490, %480 ], [ %146, %204 ], [ %146, %274 ], [ %146, %225 ], [ %146, %270 ]
  %493 = phi i8 [ %489, %480 ], [ 48, %204 ], [ %175, %274 ], [ 0, %225 ], [ 92, %270 ]
  %494 = phi i8 [ %488, %480 ], [ 0, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %495 = phi i8 [ %487, %480 ], [ 1, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %496 = phi i64 [ %486, %480 ], [ %145, %204 ], [ %145, %274 ], [ %145, %225 ], [ %145, %270 ]
  %497 = phi i8 [ %485, %480 ], [ %200, %204 ], [ %144, %274 ], [ %144, %225 ], [ %144, %270 ]
  %498 = phi i8 [ %484, %480 ], [ %142, %204 ], [ %142, %274 ], [ %142, %225 ], [ %142, %270 ]
  %499 = phi i64 [ %483, %480 ], [ %141, %204 ], [ %141, %274 ], [ %141, %225 ], [ %141, %270 ]
  %500 = phi i64 [ %482, %480 ], [ %205, %204 ], [ %140, %274 ], [ %140, %225 ], [ %140, %270 ]
  %501 = phi i64 [ %481, %480 ], [ %171, %204 ], [ %171, %274 ], [ %171, %225 ], [ %171, %270 ]
  br i1 %137, label %503, label %524, !dbg !2808

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2809

503:                                              ; preds = %491, %502
  %504 = phi i64 [ %492, %491 ], [ %490, %502 ]
  %505 = phi i8 [ %493, %491 ], [ %489, %502 ]
  %506 = phi i8 [ %494, %491 ], [ %488, %502 ]
  %507 = phi i8 [ %495, %491 ], [ %487, %502 ]
  %508 = phi i64 [ %496, %491 ], [ %486, %502 ]
  %509 = phi i8 [ %497, %491 ], [ %485, %502 ]
  %510 = phi i8 [ %498, %491 ], [ %484, %502 ]
  %511 = phi i64 [ %499, %491 ], [ %483, %502 ]
  %512 = phi i64 [ %500, %491 ], [ %482, %502 ]
  %513 = phi i64 [ %501, %491 ], [ %481, %502 ]
  %514 = lshr i8 %505, 5, !dbg !2810
  %515 = zext i8 %514 to i64, !dbg !2810
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2811
  %517 = load i32, ptr %516, align 4, !dbg !2811, !tbaa !1065
  %518 = and i8 %505, 31, !dbg !2812
  %519 = zext i8 %518 to i32, !dbg !2812
  %520 = shl nuw i32 1, %519, !dbg !2813
  %521 = and i32 %517, %520, !dbg !2813
  %522 = icmp eq i32 %521, 0, !dbg !2813
  %523 = and i1 %172, %522, !dbg !2814
  br i1 %523, label %573, label %535, !dbg !2814

524:                                              ; preds = %502, %491
  %525 = phi i64 [ %490, %502 ], [ %492, %491 ]
  %526 = phi i8 [ %489, %502 ], [ %493, %491 ]
  %527 = phi i8 [ %488, %502 ], [ %494, %491 ]
  %528 = phi i8 [ %487, %502 ], [ %495, %491 ]
  %529 = phi i64 [ %486, %502 ], [ %496, %491 ]
  %530 = phi i8 [ %485, %502 ], [ %497, %491 ]
  %531 = phi i8 [ %484, %502 ], [ %498, %491 ]
  %532 = phi i64 [ %483, %502 ], [ %499, %491 ]
  %533 = phi i64 [ %482, %502 ], [ %500, %491 ]
  %534 = phi i64 [ %481, %502 ], [ %501, %491 ]
  br i1 %172, label %573, label %535, !dbg !2815

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2805
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2405
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2410
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2414
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2506
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2816
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2514
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2514
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %543, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %542, metadata !2373, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %541, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %540, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %539, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %538, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %537, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %536, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.label(metadata !2402), !dbg !2817
  br i1 %132, label %545, label %674, !dbg !2818

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2372, metadata !DIExpression()), !dbg !2514
  %546 = and i8 %540, 1, !dbg !2820
  %547 = icmp eq i8 %546, 0, !dbg !2820
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2820
  br i1 %548, label %549, label %565, !dbg !2820

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2822
  br i1 %550, label %551, label %553, !dbg !2826

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2822
  store i8 39, ptr %552, align 1, !dbg !2822, !tbaa !1074
  br label %553, !dbg !2822

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %554, metadata !2353, metadata !DIExpression()), !dbg !2405
  %555 = icmp ult i64 %554, %544, !dbg !2827
  br i1 %555, label %556, label %558, !dbg !2830

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2827
  store i8 36, ptr %557, align 1, !dbg !2827, !tbaa !1074
  br label %558, !dbg !2827

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %559, metadata !2353, metadata !DIExpression()), !dbg !2405
  %560 = icmp ult i64 %559, %544, !dbg !2831
  br i1 %560, label %561, label %563, !dbg !2834

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2831
  store i8 39, ptr %562, align 1, !dbg !2831, !tbaa !1074
  br label %563, !dbg !2831

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %564, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2405
  br label %565, !dbg !2835

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2514
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %567, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %566, metadata !2353, metadata !DIExpression()), !dbg !2405
  %568 = icmp ult i64 %566, %544, !dbg !2836
  br i1 %568, label %569, label %571, !dbg !2839

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2836
  store i8 92, ptr %570, align 1, !dbg !2836, !tbaa !1074
  br label %571, !dbg !2836

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %544, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %543, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %542, metadata !2373, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 1, metadata !2372, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %541, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %567, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %539, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %538, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %572, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %536, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.label(metadata !2403), !dbg !2840
  br label %600, !dbg !2841

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2805
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2405
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2410
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2414
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2506
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2816
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2514
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2514
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2844
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %582, metadata !2374, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %581, metadata !2373, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %580, metadata !2372, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %579, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %578, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %577, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %576, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %575, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %574, metadata !2346, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.label(metadata !2403), !dbg !2840
  %584 = and i8 %578, 1, !dbg !2841
  %585 = icmp ne i8 %584, 0, !dbg !2841
  %586 = and i8 %580, 1, !dbg !2841
  %587 = icmp eq i8 %586, 0, !dbg !2841
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2841
  br i1 %588, label %589, label %600, !dbg !2841

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2845
  br i1 %590, label %591, label %593, !dbg !2849

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2845
  store i8 39, ptr %592, align 1, !dbg !2845, !tbaa !1074
  br label %593, !dbg !2845

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %594, metadata !2353, metadata !DIExpression()), !dbg !2405
  %595 = icmp ult i64 %594, %583, !dbg !2850
  br i1 %595, label %596, label %598, !dbg !2853

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2850
  store i8 39, ptr %597, align 1, !dbg !2850, !tbaa !1074
  br label %598, !dbg !2850

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %599, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2405
  br label %600, !dbg !2854

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2514
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2405
  call void @llvm.dbg.value(metadata i8 %609, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %608, metadata !2353, metadata !DIExpression()), !dbg !2405
  %610 = icmp ult i64 %608, %601, !dbg !2855
  br i1 %610, label %611, label %613, !dbg !2858

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2855
  store i8 %602, ptr %612, align 1, !dbg !2855, !tbaa !1074
  br label %613, !dbg !2855

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %614, metadata !2353, metadata !DIExpression()), !dbg !2405
  %615 = icmp eq i8 %603, 0, !dbg !2859
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2861
  call void @llvm.dbg.value(metadata i8 %616, metadata !2360, metadata !DIExpression()), !dbg !2405
  br label %617, !dbg !2862

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2805
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2405
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2410
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2414
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2415
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2506
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2816
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %624, metadata !2367, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %623, metadata !2361, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %622, metadata !2360, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %621, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %620, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %619, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %618, metadata !2346, metadata !DIExpression()), !dbg !2405
  %626 = add i64 %624, 1, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %626, metadata !2367, metadata !DIExpression()), !dbg !2504
  br label %138, !dbg !2864, !llvm.loop !2865

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2344, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %143, metadata !2360, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %142, metadata !2359, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %141, metadata !2354, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %140, metadata !2353, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %139, metadata !2346, metadata !DIExpression()), !dbg !2405
  %628 = icmp eq i64 %140, 0, !dbg !2867
  %629 = and i1 %133, %628, !dbg !2869
  %630 = xor i1 %629, true, !dbg !2869
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2869
  br i1 %631, label %632, label %670, !dbg !2869

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2870
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2870
  br i1 %636, label %637, label %646, !dbg !2870

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2872
  %639 = icmp eq i8 %638, 0, !dbg !2872
  br i1 %639, label %642, label %640, !dbg !2875

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2876
  br label %694, !dbg !2877

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2878
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2880
  br i1 %645, label %28, label %646, !dbg !2880

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2881
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2883
  br i1 %649, label %650, label %665, !dbg !2883

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2355, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %140, metadata !2353, metadata !DIExpression()), !dbg !2405
  %651 = load i8, ptr %120, align 1, !dbg !2884, !tbaa !1074
  %652 = icmp eq i8 %651, 0, !dbg !2887
  br i1 %652, label %665, label %653, !dbg !2887

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2355, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %656, metadata !2353, metadata !DIExpression()), !dbg !2405
  %657 = icmp ult i64 %656, %146, !dbg !2888
  br i1 %657, label %658, label %660, !dbg !2891

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2888
  store i8 %654, ptr %659, align 1, !dbg !2888, !tbaa !1074
  br label %660, !dbg !2888

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %661, metadata !2353, metadata !DIExpression()), !dbg !2405
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2892
  call void @llvm.dbg.value(metadata ptr %662, metadata !2355, metadata !DIExpression()), !dbg !2405
  %663 = load i8, ptr %662, align 1, !dbg !2884, !tbaa !1074
  %664 = icmp eq i8 %663, 0, !dbg !2887
  br i1 %664, label %665, label %653, !dbg !2887, !llvm.loop !2893

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2487
  call void @llvm.dbg.value(metadata i64 %666, metadata !2353, metadata !DIExpression()), !dbg !2405
  %667 = icmp ult i64 %666, %146, !dbg !2895
  br i1 %667, label %668, label %694, !dbg !2897

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2898
  store i8 0, ptr %669, align 1, !dbg !2899, !tbaa !1074
  br label %694, !dbg !2898

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2404), !dbg !2900
  %672 = icmp eq i8 %124, 0, !dbg !2901
  %673 = select i1 %672, i32 2, i32 4, !dbg !2901
  br label %684, !dbg !2901

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2901
  %678 = select i1 %677, i32 2, i32 4, !dbg !2901
  br label %679, !dbg !2903

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2404), !dbg !2900
  %683 = icmp eq i32 %116, 2, !dbg !2903
  br i1 %683, label %684, label %688, !dbg !2901

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2901

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2347, metadata !DIExpression()), !dbg !2405
  %692 = and i32 %5, -3, !dbg !2904
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2905
  br label %694, !dbg !2906

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2907
}

; Function Attrs: nounwind
declare !dbg !2908 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2911 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2914 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2916 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %1, metadata !2921, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata ptr null, metadata !2930, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !2937
  %4 = icmp eq ptr %2, null, !dbg !2939
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2939
  call void @llvm.dbg.value(metadata ptr %5, metadata !2932, metadata !DIExpression()), !dbg !2937
  %6 = tail call ptr @__errno_location() #42, !dbg !2940
  %7 = load i32, ptr %6, align 4, !dbg !2940, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %7, metadata !2933, metadata !DIExpression()), !dbg !2937
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2941
  %9 = load i32, ptr %8, align 4, !dbg !2941, !tbaa !2287
  %10 = or i32 %9, 1, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %10, metadata !2934, metadata !DIExpression()), !dbg !2937
  %11 = load i32, ptr %5, align 8, !dbg !2943, !tbaa !2237
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2944
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2945
  %14 = load ptr, ptr %13, align 8, !dbg !2945, !tbaa !2308
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2946
  %16 = load ptr, ptr %15, align 8, !dbg !2946, !tbaa !2311
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2947
  %18 = add i64 %17, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %18, metadata !2935, metadata !DIExpression()), !dbg !2937
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %19, metadata !2936, metadata !DIExpression()), !dbg !2937
  %20 = load i32, ptr %5, align 8, !dbg !2950, !tbaa !2237
  %21 = load ptr, ptr %13, align 8, !dbg !2951, !tbaa !2308
  %22 = load ptr, ptr %15, align 8, !dbg !2952, !tbaa !2311
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2953
  store i32 %7, ptr %6, align 4, !dbg !2954, !tbaa !1065
  ret ptr %19, !dbg !2955
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2925 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !2956
  %5 = icmp eq ptr %3, null, !dbg !2957
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2957
  call void @llvm.dbg.value(metadata ptr %6, metadata !2932, metadata !DIExpression()), !dbg !2956
  %7 = tail call ptr @__errno_location() #42, !dbg !2958
  %8 = load i32, ptr %7, align 4, !dbg !2958, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %8, metadata !2933, metadata !DIExpression()), !dbg !2956
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2959
  %10 = load i32, ptr %9, align 4, !dbg !2959, !tbaa !2287
  %11 = icmp eq ptr %2, null, !dbg !2960
  %12 = zext i1 %11 to i32, !dbg !2960
  %13 = or i32 %10, %12, !dbg !2961
  call void @llvm.dbg.value(metadata i32 %13, metadata !2934, metadata !DIExpression()), !dbg !2956
  %14 = load i32, ptr %6, align 8, !dbg !2962, !tbaa !2237
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2963
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2964
  %17 = load ptr, ptr %16, align 8, !dbg !2964, !tbaa !2308
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2965
  %19 = load ptr, ptr %18, align 8, !dbg !2965, !tbaa !2311
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2966
  %21 = add i64 %20, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %21, metadata !2935, metadata !DIExpression()), !dbg !2956
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2968
  call void @llvm.dbg.value(metadata ptr %22, metadata !2936, metadata !DIExpression()), !dbg !2956
  %23 = load i32, ptr %6, align 8, !dbg !2969, !tbaa !2237
  %24 = load ptr, ptr %16, align 8, !dbg !2970, !tbaa !2308
  %25 = load ptr, ptr %18, align 8, !dbg !2971, !tbaa !2311
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2972
  store i32 %8, ptr %7, align 4, !dbg !2973, !tbaa !1065
  br i1 %11, label %28, label %27, !dbg !2974

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2975, !tbaa !2977
  br label %28, !dbg !2978

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2979
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2980 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2985, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %1, metadata !2982, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 1, metadata !2983, metadata !DIExpression()), !dbg !2987
  %2 = load i32, ptr @nslots, align 4, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 1, metadata !2983, metadata !DIExpression()), !dbg !2987
  %3 = icmp sgt i32 %2, 1, !dbg !2988
  br i1 %3, label %4, label %6, !dbg !2990

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2988
  br label %10, !dbg !2990

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2991
  %8 = load ptr, ptr %7, align 8, !dbg !2991, !tbaa !2993
  %9 = icmp eq ptr %8, @slot0, !dbg !2995
  br i1 %9, label %17, label %16, !dbg !2996

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2983, metadata !DIExpression()), !dbg !2987
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2997
  %13 = load ptr, ptr %12, align 8, !dbg !2997, !tbaa !2993
  tail call void @free(ptr noundef %13) #39, !dbg !2998
  %14 = add nuw nsw i64 %11, 1, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %14, metadata !2983, metadata !DIExpression()), !dbg !2987
  %15 = icmp eq i64 %14, %5, !dbg !2988
  br i1 %15, label %6, label %10, !dbg !2990, !llvm.loop !3000

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3002
  store i64 256, ptr @slotvec0, align 8, !dbg !3004, !tbaa !3005
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3006, !tbaa !2993
  br label %17, !dbg !3007

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3008
  br i1 %18, label %20, label %19, !dbg !3010

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3011
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3013, !tbaa !995
  br label %20, !dbg !3014

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3015, !tbaa !1065
  ret void, !dbg !3016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3017 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %1, metadata !3020, metadata !DIExpression()), !dbg !3021
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3022
  ret ptr %3, !dbg !3023
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3024 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3028, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %1, metadata !3029, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %2, metadata !3030, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %3, metadata !3031, metadata !DIExpression()), !dbg !3044
  %6 = tail call ptr @__errno_location() #42, !dbg !3045
  %7 = load i32, ptr %6, align 4, !dbg !3045, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %7, metadata !3032, metadata !DIExpression()), !dbg !3044
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3046, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %8, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3034, metadata !DIExpression()), !dbg !3044
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3047
  br i1 %9, label %10, label %11, !dbg !3047

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3049
  unreachable, !dbg !3049

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3050, !tbaa !1065
  %13 = icmp sgt i32 %12, %0, !dbg !3051
  br i1 %13, label %32, label %14, !dbg !3052

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3053
  call void @llvm.dbg.value(metadata i1 %15, metadata !3035, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3055
  %16 = sext i32 %12 to i64, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %16, metadata !3038, metadata !DIExpression()), !dbg !3054
  store i64 %16, ptr %5, align 8, !dbg !3057, !tbaa !2977
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3058
  %18 = add nuw nsw i32 %0, 1, !dbg !3059
  %19 = sub i32 %18, %12, !dbg !3060
  %20 = sext i32 %19 to i64, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %5, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3054
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3062
  call void @llvm.dbg.value(metadata ptr %21, metadata !3033, metadata !DIExpression()), !dbg !3044
  store ptr %21, ptr @slotvec, align 8, !dbg !3063, !tbaa !995
  br i1 %15, label %22, label %23, !dbg !3064

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3065, !tbaa.struct !3067
  br label %23, !dbg !3068

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3069, !tbaa !1065
  %25 = sext i32 %24 to i64, !dbg !3070
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3070
  %27 = load i64, ptr %5, align 8, !dbg !3071, !tbaa !2977
  call void @llvm.dbg.value(metadata i64 %27, metadata !3038, metadata !DIExpression()), !dbg !3054
  %28 = sub nsw i64 %27, %25, !dbg !3072
  %29 = shl i64 %28, 4, !dbg !3073
  call void @llvm.dbg.value(metadata ptr %26, metadata !2444, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %29, metadata !2448, metadata !DIExpression()), !dbg !3074
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3076
  %30 = load i64, ptr %5, align 8, !dbg !3077, !tbaa !2977
  call void @llvm.dbg.value(metadata i64 %30, metadata !3038, metadata !DIExpression()), !dbg !3054
  %31 = trunc i64 %30 to i32, !dbg !3077
  store i32 %31, ptr @nslots, align 4, !dbg !3078, !tbaa !1065
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3079
  br label %32, !dbg !3080

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3044
  call void @llvm.dbg.value(metadata ptr %33, metadata !3033, metadata !DIExpression()), !dbg !3044
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3081
  %36 = load i64, ptr %35, align 8, !dbg !3082, !tbaa !3005
  call void @llvm.dbg.value(metadata i64 %36, metadata !3039, metadata !DIExpression()), !dbg !3083
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3084
  %38 = load ptr, ptr %37, align 8, !dbg !3084, !tbaa !2993
  call void @llvm.dbg.value(metadata ptr %38, metadata !3041, metadata !DIExpression()), !dbg !3083
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3085
  %40 = load i32, ptr %39, align 4, !dbg !3085, !tbaa !2287
  %41 = or i32 %40, 1, !dbg !3086
  call void @llvm.dbg.value(metadata i32 %41, metadata !3042, metadata !DIExpression()), !dbg !3083
  %42 = load i32, ptr %3, align 8, !dbg !3087, !tbaa !2237
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3088
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3089
  %45 = load ptr, ptr %44, align 8, !dbg !3089, !tbaa !2308
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3090
  %47 = load ptr, ptr %46, align 8, !dbg !3090, !tbaa !2311
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %48, metadata !3043, metadata !DIExpression()), !dbg !3083
  %49 = icmp ugt i64 %36, %48, !dbg !3092
  br i1 %49, label %60, label %50, !dbg !3094

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %51, metadata !3039, metadata !DIExpression()), !dbg !3083
  store i64 %51, ptr %35, align 8, !dbg !3097, !tbaa !3005
  %52 = icmp eq ptr %38, @slot0, !dbg !3098
  br i1 %52, label %54, label %53, !dbg !3100

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3101
  br label %54, !dbg !3101

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3102
  call void @llvm.dbg.value(metadata ptr %55, metadata !3041, metadata !DIExpression()), !dbg !3083
  store ptr %55, ptr %37, align 8, !dbg !3103, !tbaa !2993
  %56 = load i32, ptr %3, align 8, !dbg !3104, !tbaa !2237
  %57 = load ptr, ptr %44, align 8, !dbg !3105, !tbaa !2308
  %58 = load ptr, ptr %46, align 8, !dbg !3106, !tbaa !2311
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3107
  br label %60, !dbg !3108

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3083
  call void @llvm.dbg.value(metadata ptr %61, metadata !3041, metadata !DIExpression()), !dbg !3083
  store i32 %7, ptr %6, align 4, !dbg !3109, !tbaa !1065
  ret ptr %61, !dbg !3110
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3115, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %1, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %2, metadata !3117, metadata !DIExpression()), !dbg !3118
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3119
  ret ptr %4, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3121 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3123, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3125
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3127
  ret ptr %2, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3133, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 0, metadata !3115, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3136
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3138
  ret ptr %3, !dbg !3139
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3140 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %1, metadata !3145, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3149
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3151), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %1, metadata !3155, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3163, !alias.scope !3151
  %5 = icmp eq i32 %1, 10, !dbg !3164
  br i1 %5, label %6, label %7, !dbg !3166

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3167, !noalias !3151
  unreachable, !dbg !3167

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3168, !tbaa !2237, !alias.scope !3151
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3169
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3170
  ret ptr %8, !dbg !3171
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3172 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3176, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %1, metadata !3177, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %2, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %3, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3182
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3180, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3184), !dbg !3187
  call void @llvm.dbg.value(metadata i32 %1, metadata !3155, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3160, metadata !DIExpression()), !dbg !3190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3190, !alias.scope !3184
  %6 = icmp eq i32 %1, 10, !dbg !3191
  br i1 %6, label %7, label %8, !dbg !3192

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3193, !noalias !3184
  unreachable, !dbg !3193

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3194, !tbaa !2237, !alias.scope !3184
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3195
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3196
  ret ptr %9, !dbg !3197
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3198 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %1, metadata !3203, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 0, metadata !3144, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %1, metadata !3146, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3207
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3147, metadata !DIExpression()), !dbg !3208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209), !dbg !3212
  call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3215, !alias.scope !3209
  %4 = icmp eq i32 %0, 10, !dbg !3216
  br i1 %4, label %5, label %6, !dbg !3217

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3218, !noalias !3209
  unreachable, !dbg !3218

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3219, !tbaa !2237, !alias.scope !3209
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3220
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3221
  ret ptr %7, !dbg !3222
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3223 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3227, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %1, metadata !3228, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %2, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3176, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 %0, metadata !3177, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr %1, metadata !3178, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %2, metadata !3179, metadata !DIExpression()), !dbg !3231
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235), !dbg !3238
  call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3160, metadata !DIExpression()), !dbg !3241
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3241, !alias.scope !3235
  %5 = icmp eq i32 %0, 10, !dbg !3242
  br i1 %5, label %6, label %7, !dbg !3243

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3244, !noalias !3235
  unreachable, !dbg !3244

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3245, !tbaa !2237, !alias.scope !3235
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3246
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3247
  ret ptr %8, !dbg !3248
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3249 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 %2, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3256, metadata !DIExpression()), !dbg !3259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3260, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %4, metadata !2254, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %2, metadata !2255, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32 1, metadata !2256, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %2, metadata !2257, metadata !DIExpression()), !dbg !3262
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3264
  %6 = lshr i8 %2, 5, !dbg !3265
  %7 = zext i8 %6 to i64, !dbg !3265
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %8, metadata !2258, metadata !DIExpression()), !dbg !3262
  %9 = and i8 %2, 31, !dbg !3267
  %10 = zext i8 %9 to i32, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %10, metadata !2260, metadata !DIExpression()), !dbg !3262
  %11 = load i32, ptr %8, align 4, !dbg !3268, !tbaa !1065
  %12 = lshr i32 %11, %10, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %12, metadata !2261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3262
  %13 = and i32 %12, 1, !dbg !3270
  %14 = xor i32 %13, 1, !dbg !3270
  %15 = shl nuw i32 %14, %10, !dbg !3271
  %16 = xor i32 %15, %11, !dbg !3272
  store i32 %16, ptr %8, align 4, !dbg !3272, !tbaa !1065
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3273
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3274
  ret ptr %17, !dbg !3275
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3276 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 %1, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 -1, metadata !3254, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8 %1, metadata !3255, metadata !DIExpression()), !dbg !3283
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3285
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3256, metadata !DIExpression()), !dbg !3286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3287, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %3, metadata !2254, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 %1, metadata !2255, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 1, metadata !2256, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 %1, metadata !2257, metadata !DIExpression()), !dbg !3288
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3290
  %5 = lshr i8 %1, 5, !dbg !3291
  %6 = zext i8 %5 to i64, !dbg !3291
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %7, metadata !2258, metadata !DIExpression()), !dbg !3288
  %8 = and i8 %1, 31, !dbg !3293
  %9 = zext i8 %8 to i32, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %9, metadata !2260, metadata !DIExpression()), !dbg !3288
  %10 = load i32, ptr %7, align 4, !dbg !3294, !tbaa !1065
  %11 = lshr i32 %10, %9, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %11, metadata !2261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3288
  %12 = and i32 %11, 1, !dbg !3296
  %13 = xor i32 %12, 1, !dbg !3296
  %14 = shl nuw i32 %13, %9, !dbg !3297
  %15 = xor i32 %14, %10, !dbg !3298
  store i32 %15, ptr %7, align 4, !dbg !3298, !tbaa !1065
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3299
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3300
  ret ptr %16, !dbg !3301
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3302 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i8 58, metadata !3281, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 -1, metadata !3254, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 58, metadata !3255, metadata !DIExpression()), !dbg !3308
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3310
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3256, metadata !DIExpression()), !dbg !3311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3312, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %2, metadata !2254, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 58, metadata !2255, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 1, metadata !2256, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8 58, metadata !2257, metadata !DIExpression()), !dbg !3313
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3315
  call void @llvm.dbg.value(metadata ptr %3, metadata !2258, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 26, metadata !2260, metadata !DIExpression()), !dbg !3313
  %4 = load i32, ptr %3, align 4, !dbg !3316, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %4, metadata !2261, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3313
  %5 = or i32 %4, 67108864, !dbg !3317
  store i32 %5, ptr %3, align 4, !dbg !3317, !tbaa !1065
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3318
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3319
  ret ptr %6, !dbg !3320
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3321 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata ptr %0, metadata !3253, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i8 58, metadata !3255, metadata !DIExpression()), !dbg !3326
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3328
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3256, metadata !DIExpression()), !dbg !3329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3330, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %3, metadata !2254, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i8 58, metadata !2255, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 1, metadata !2256, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i8 58, metadata !2257, metadata !DIExpression()), !dbg !3331
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %4, metadata !2258, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 26, metadata !2260, metadata !DIExpression()), !dbg !3331
  %5 = load i32, ptr %4, align 4, !dbg !3334, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %5, metadata !2261, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3331
  %6 = or i32 %5, 67108864, !dbg !3335
  store i32 %6, ptr %4, align 4, !dbg !3335, !tbaa !1065
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3336
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3337
  ret ptr %7, !dbg !3338
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3339 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3160, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %0, metadata !3341, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 %1, metadata !3342, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata ptr %2, metadata !3343, metadata !DIExpression()), !dbg !3347
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3348
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 %1, metadata !3155, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 0, metadata !3160, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3350
  %5 = icmp eq i32 %1, 10, !dbg !3351
  br i1 %5, label %6, label %7, !dbg !3352

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3353, !noalias !3354
  unreachable, !dbg !3353

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3160, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3350
  store i32 %1, ptr %4, align 8, !dbg !3357, !tbaa.struct !3261
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3357
  call void @llvm.dbg.value(metadata ptr %4, metadata !2254, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 58, metadata !2255, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 1, metadata !2256, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8 58, metadata !2257, metadata !DIExpression()), !dbg !3358
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3360
  call void @llvm.dbg.value(metadata ptr %9, metadata !2258, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 26, metadata !2260, metadata !DIExpression()), !dbg !3358
  %10 = load i32, ptr %9, align 4, !dbg !3361, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %10, metadata !2261, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3358
  %11 = or i32 %10, 67108864, !dbg !3362
  store i32 %11, ptr %9, align 4, !dbg !3362, !tbaa !1065
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3363
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3364
  ret ptr %12, !dbg !3365
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3366 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3370, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata ptr %1, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata ptr %2, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata ptr %3, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 %0, metadata !3375, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %1, metadata !3380, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %2, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %3, metadata !3382, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 -1, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3384, metadata !DIExpression()), !dbg !3388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3389, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %5, metadata !2294, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %1, metadata !2295, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %2, metadata !2296, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %5, metadata !2294, metadata !DIExpression()), !dbg !3390
  store i32 10, ptr %5, align 8, !dbg !3392, !tbaa !2237
  %6 = icmp ne ptr %1, null, !dbg !3393
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3394
  br i1 %8, label %10, label %9, !dbg !3394

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3395
  unreachable, !dbg !3395

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3396
  store ptr %1, ptr %11, align 8, !dbg !3397, !tbaa !2308
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3398
  store ptr %2, ptr %12, align 8, !dbg !3399, !tbaa !2311
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3400
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3401
  ret ptr %13, !dbg !3402
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3376 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3375, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %1, metadata !3380, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %2, metadata !3381, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %3, metadata !3382, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %4, metadata !3383, metadata !DIExpression()), !dbg !3403
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3404
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3384, metadata !DIExpression()), !dbg !3405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3406, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %6, metadata !2294, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata ptr %1, metadata !2295, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata ptr %2, metadata !2296, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata ptr %6, metadata !2294, metadata !DIExpression()), !dbg !3407
  store i32 10, ptr %6, align 8, !dbg !3409, !tbaa !2237
  %7 = icmp ne ptr %1, null, !dbg !3410
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3411
  br i1 %9, label %11, label %10, !dbg !3411

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3412
  unreachable, !dbg !3412

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3413
  store ptr %1, ptr %12, align 8, !dbg !3414, !tbaa !2308
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3415
  store ptr %2, ptr %13, align 8, !dbg !3416, !tbaa !2311
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3417
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3418
  ret ptr %14, !dbg !3419
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3420 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %1, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %2, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 0, metadata !3370, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata ptr %1, metadata !3372, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 0, metadata !3375, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %1, metadata !3381, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %2, metadata !3382, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 -1, metadata !3383, metadata !DIExpression()), !dbg !3430
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3432
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3384, metadata !DIExpression()), !dbg !3433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3434, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %4, metadata !2294, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %0, metadata !2295, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %1, metadata !2296, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %4, metadata !2294, metadata !DIExpression()), !dbg !3435
  store i32 10, ptr %4, align 8, !dbg !3437, !tbaa !2237
  %5 = icmp ne ptr %0, null, !dbg !3438
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3439
  br i1 %7, label %9, label %8, !dbg !3439

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3440
  unreachable, !dbg !3440

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3441
  store ptr %0, ptr %10, align 8, !dbg !3442, !tbaa !2308
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3443
  store ptr %1, ptr %11, align 8, !dbg !3444, !tbaa !2311
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3445
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3446
  ret ptr %12, !dbg !3447
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3448 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3452, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %1, metadata !3453, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %2, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %3, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 0, metadata !3375, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %0, metadata !3380, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %1, metadata !3381, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %2, metadata !3382, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %3, metadata !3383, metadata !DIExpression()), !dbg !3457
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3459
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3384, metadata !DIExpression()), !dbg !3460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3461, !tbaa.struct !3261
  call void @llvm.dbg.value(metadata ptr %5, metadata !2294, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %0, metadata !2295, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %1, metadata !2296, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %5, metadata !2294, metadata !DIExpression()), !dbg !3462
  store i32 10, ptr %5, align 8, !dbg !3464, !tbaa !2237
  %6 = icmp ne ptr %0, null, !dbg !3465
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3466
  br i1 %8, label %10, label %9, !dbg !3466

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3467
  unreachable, !dbg !3467

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3468
  store ptr %0, ptr %11, align 8, !dbg !3469, !tbaa !2308
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3470
  store ptr %1, ptr %12, align 8, !dbg !3471, !tbaa !2311
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3472
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3473
  ret ptr %13, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3479, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %1, metadata !3480, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %2, metadata !3481, metadata !DIExpression()), !dbg !3482
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3483
  ret ptr %4, !dbg !3484
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3485 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3489, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %1, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i32 0, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3481, metadata !DIExpression()), !dbg !3492
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3494
  ret ptr %3, !dbg !3495
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3496 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %1, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %0, metadata !3479, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %1, metadata !3480, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 -1, metadata !3481, metadata !DIExpression()), !dbg !3503
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3505
  ret ptr %3, !dbg !3506
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3507 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i32 0, metadata !3500, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 0, metadata !3479, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 -1, metadata !3481, metadata !DIExpression()), !dbg !3515
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3517
  ret ptr %2, !dbg !3518
}

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec_warn(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #10 !dbg !3519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3525, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %1, metadata !3526, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %2, metadata !3527, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %4, metadata !3529, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %5, metadata !3530, metadata !DIExpression()), !dbg !3537
  %7 = icmp eq ptr %2, null, !dbg !3538
  br i1 %7, label %10, label %8, !dbg !3538

8:                                                ; preds = %6
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #40, !dbg !3539
  br label %10, !dbg !3538

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %9, %8 ], [ null, %6 ], !dbg !3538
  call void @llvm.dbg.value(metadata ptr %11, metadata !3531, metadata !DIExpression()), !dbg !3537
  %12 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3540
  call void @llvm.dbg.value(metadata ptr %12, metadata !3532, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8 0, metadata !3533, metadata !DIExpression()), !dbg !3537
  %13 = icmp ne ptr %2, null, !dbg !3541
  %14 = icmp eq ptr %11, null
  %15 = and i1 %13, %14, !dbg !3542
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false, !dbg !3542
  br i1 %17, label %18, label %27, !dbg !3542

18:                                               ; preds = %10
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #40, !dbg !3543
  call void @llvm.dbg.value(metadata ptr %19, metadata !3534, metadata !DIExpression()), !dbg !3544
  %20 = icmp eq ptr %19, null, !dbg !3545
  br i1 %20, label %27, label %21, !dbg !3547

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3548
  %23 = icmp eq ptr %22, null, !dbg !3548
  br i1 %23, label %24, label %27, !dbg !3549

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8 1, metadata !3533, metadata !DIExpression()), !dbg !3537
  %25 = icmp eq ptr %5, null, !dbg !3550
  %26 = select i1 %25, ptr null, ptr @.str.112, !dbg !3550
  call void @llvm.dbg.value(metadata ptr %26, metadata !3532, metadata !DIExpression()), !dbg !3537
  br label %27, !dbg !3552

27:                                               ; preds = %18, %21, %24, %10
  %28 = phi i8 [ 0, %10 ], [ 0, %21 ], [ 1, %24 ], [ 0, %18 ], !dbg !3553
  %29 = phi ptr [ %12, %10 ], [ %12, %21 ], [ %26, %24 ], [ %12, %18 ], !dbg !3554
  call void @llvm.dbg.value(metadata ptr %29, metadata !3532, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8 poison, metadata !3533, metadata !DIExpression()), !dbg !3537
  %30 = icmp eq ptr %5, null, !dbg !3555
  br i1 %30, label %32, label %31, !dbg !3557

31:                                               ; preds = %27
  store i8 %28, ptr %5, align 1, !dbg !3558, !tbaa !1305
  br label %32, !dbg !3559

32:                                               ; preds = %31, %27
  ret ptr %29, !dbg !3560
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #10 !dbg !3561 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %1, metadata !3566, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %2, metadata !3567, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %3, metadata !3568, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %4, metadata !3569, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %5, metadata !3570, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr null, metadata !3571, metadata !DIExpression()), !dbg !3617
  %10 = icmp eq ptr %4, null, !dbg !3618
  br i1 %10, label %12, label %11, !dbg !3620

11:                                               ; preds = %6
  store ptr null, ptr %4, align 8, !dbg !3621, !tbaa !995
  br label %12, !dbg !3622

12:                                               ; preds = %11, %6
  %13 = icmp eq ptr %5, null, !dbg !3623
  br i1 %13, label %15, label %14, !dbg !3625

14:                                               ; preds = %12
  store ptr null, ptr %5, align 8, !dbg !3626, !tbaa !995
  br label %15, !dbg !3627

15:                                               ; preds = %14, %12
  call void @llvm.dbg.value(metadata ptr null, metadata !3572, metadata !DIExpression()), !dbg !3617
  %16 = icmp eq ptr %1, null, !dbg !3628
  br i1 %16, label %17, label %22, !dbg !3629

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !dbg !3630, !tbaa !1074
  %19 = icmp eq i8 %18, 0, !dbg !3630
  br i1 %19, label %37, label %20, !dbg !3633

20:                                               ; preds = %17
  %21 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #39, !dbg !3634
  call void @llvm.dbg.value(metadata ptr %21, metadata !3572, metadata !DIExpression()), !dbg !3617
  br label %37, !dbg !3635

22:                                               ; preds = %15
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !3573, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  %23 = icmp eq ptr %1, %0, !dbg !3637
  br i1 %23, label %31, label %24, !dbg !3639

24:                                               ; preds = %22
  %25 = ptrtoint ptr %0 to i64, !dbg !3640
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %25), metadata !3573, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  %26 = ptrtoint ptr %1 to i64, !dbg !3640
  call void @llvm.dbg.value(metadata !DIArgList(i64 %26, ptr %0), metadata !3573, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3636
  %27 = sub i64 %26, %25, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %27, metadata !3573, metadata !DIExpression()), !dbg !3636
  %28 = add nsw i64 %27, 1, !dbg !3641
  %29 = tail call noalias nonnull ptr @ximemdup(ptr noundef %0, i64 noundef %28) #45, !dbg !3643
  call void @llvm.dbg.value(metadata ptr %29, metadata !3572, metadata !DIExpression()), !dbg !3617
  %30 = getelementptr inbounds i8, ptr %29, i64 %27, !dbg !3644
  store i8 0, ptr %30, align 1, !dbg !3645, !tbaa !1074
  br label %31, !dbg !3646

31:                                               ; preds = %24, %22
  %32 = phi ptr [ %29, %24 ], [ null, %22 ], !dbg !3617
  call void @llvm.dbg.value(metadata ptr %32, metadata !3572, metadata !DIExpression()), !dbg !3617
  %33 = getelementptr inbounds i8, ptr %1, i64 1, !dbg !3647
  %34 = load i8, ptr %33, align 1, !dbg !3648, !tbaa !1074
  %35 = icmp eq i8 %34, 0, !dbg !3649
  %36 = select i1 %35, ptr null, ptr %33, !dbg !3650
  br label %37, !dbg !3650

37:                                               ; preds = %20, %17, %31
  %38 = phi ptr [ %32, %31 ], [ null, %17 ], [ %21, %20 ]
  %39 = phi ptr [ %36, %31 ], [ null, %17 ], [ null, %20 ], !dbg !3650
  call void @llvm.dbg.value(metadata ptr %39, metadata !3576, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr null, metadata !3577, metadata !DIExpression()), !dbg !3617
  %40 = load i32, ptr %2, align 4, !dbg !3651, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %40, metadata !3578, metadata !DIExpression()), !dbg !3617
  %41 = icmp eq ptr %3, null, !dbg !3652
  br i1 %41, label %44, label %42, !dbg !3652

42:                                               ; preds = %37
  %43 = load i32, ptr %3, align 4, !dbg !3653, !tbaa !1065
  br label %44, !dbg !3652

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %37 ], !dbg !3652
  call void @llvm.dbg.value(metadata i32 %45, metadata !3579, metadata !DIExpression()), !dbg !3617
  %46 = icmp eq ptr %38, null, !dbg !3654
  br i1 %46, label %93, label %47, !dbg !3655

47:                                               ; preds = %44
  %48 = load i8, ptr %38, align 1, !dbg !3656, !tbaa !1074
  %49 = icmp eq i8 %48, 43, !dbg !3657
  br i1 %49, label %53, label %50, !dbg !3656

50:                                               ; preds = %47
  %51 = tail call ptr @getpwnam(ptr noundef nonnull %38), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %51, metadata !3580, metadata !DIExpression()), !dbg !3659
  %52 = icmp eq ptr %51, null, !dbg !3660
  br i1 %52, label %53, label %68, !dbg !3661

53:                                               ; preds = %47, %50
  call void @llvm.dbg.value(metadata ptr null, metadata !3569, metadata !DIExpression()), !dbg !3617
  %54 = icmp ne ptr %1, null, !dbg !3662
  %55 = icmp eq ptr %39, null, !dbg !3663
  %56 = and i1 %54, %55, !dbg !3663
  call void @llvm.dbg.value(metadata i1 %56, metadata !3593, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3664
  br i1 %56, label %87, label %57, !dbg !3665

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %7, metadata !3596, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  %58 = call i32 @xstrtoul(ptr noundef nonnull %38, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef nonnull @.str.2.113) #39, !dbg !3668
  %59 = icmp eq i32 %58, 0, !dbg !3670
  %60 = load i64, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 %60, metadata !3596, metadata !DIExpression()), !dbg !3667
  %61 = icmp ult i64 %60, 4294967296
  %62 = select i1 %59, i1 %61, i1 false, !dbg !3671
  %63 = trunc i64 %60 to i32
  %64 = icmp ne i32 %63, -1
  %65 = select i1 %62, i1 %64, i1 false, !dbg !3671
  %66 = select i1 %65, i32 %63, i32 %40
  %67 = select i1 %65, ptr null, ptr @.str.3.114
  call void @llvm.dbg.value(metadata ptr %67, metadata !3571, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %66, metadata !3578, metadata !DIExpression()), !dbg !3617
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !3672
  br label %87

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 2, !dbg !3673
  %70 = load i32, ptr %69, align 8, !dbg !3673, !tbaa !1345
  call void @llvm.dbg.value(metadata i32 %70, metadata !3578, metadata !DIExpression()), !dbg !3617
  %71 = icmp eq ptr %39, null, !dbg !3674
  %72 = icmp ne ptr %1, null
  %73 = and i1 %72, %71, !dbg !3675
  br i1 %73, label %74, label %87, !dbg !3675

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #39, !dbg !3676
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3599, metadata !DIExpression()), !dbg !3677
  %75 = getelementptr inbounds %struct.passwd, ptr %51, i64 0, i32 3, !dbg !3678
  %76 = load i32, ptr %75, align 4, !dbg !3678, !tbaa !1349
  call void @llvm.dbg.value(metadata i32 %76, metadata !3579, metadata !DIExpression()), !dbg !3617
  %77 = tail call ptr @getgrgid(i32 noundef %76) #39, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %77, metadata !3603, metadata !DIExpression()), !dbg !3680
  %78 = icmp eq ptr %77, null, !dbg !3681
  br i1 %78, label %81, label %79, !dbg !3681

79:                                               ; preds = %74
  %80 = load ptr, ptr %77, align 8, !dbg !3682, !tbaa !1556
  br label %84, !dbg !3681

81:                                               ; preds = %74
  %82 = zext i32 %76 to i64, !dbg !3683
  %83 = call ptr @umaxtostr(i64 noundef %82, ptr noundef nonnull %8) #39, !dbg !3684
  br label %84, !dbg !3681

84:                                               ; preds = %81, %79
  %85 = phi ptr [ %80, %79 ], [ %83, %81 ], !dbg !3681
  %86 = call noalias nonnull ptr @xstrdup(ptr noundef %85) #39, !dbg !3685
  call void @llvm.dbg.value(metadata ptr %86, metadata !3577, metadata !DIExpression()), !dbg !3617
  call void @endgrent() #39, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #39, !dbg !3687
  br label %87, !dbg !3688

87:                                               ; preds = %57, %53, %68, %84
  %88 = phi ptr [ %86, %84 ], [ null, %68 ], [ null, %53 ], [ null, %57 ], !dbg !3617
  %89 = phi i32 [ %70, %84 ], [ %70, %68 ], [ %40, %53 ], [ %66, %57 ], !dbg !3617
  %90 = phi i32 [ %76, %84 ], [ %45, %68 ], [ %45, %53 ], [ %45, %57 ], !dbg !3617
  %91 = phi ptr [ null, %84 ], [ null, %68 ], [ @.str.1.115, %53 ], [ %67, %57 ], !dbg !3617
  %92 = phi ptr [ %4, %84 ], [ %4, %68 ], [ null, %53 ], [ null, %57 ]
  call void @llvm.dbg.value(metadata ptr %92, metadata !3569, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %91, metadata !3571, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %90, metadata !3579, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %89, metadata !3578, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %88, metadata !3577, metadata !DIExpression()), !dbg !3617
  call void @endpwent() #39, !dbg !3689
  br label %93, !dbg !3690

93:                                               ; preds = %87, %44
  %94 = phi ptr [ %88, %87 ], [ null, %44 ], !dbg !3691
  %95 = phi i32 [ %89, %87 ], [ %40, %44 ], !dbg !3692
  %96 = phi i32 [ %90, %87 ], [ %45, %44 ], !dbg !3693
  %97 = phi ptr [ %91, %87 ], [ null, %44 ], !dbg !3617
  %98 = phi ptr [ %92, %87 ], [ %4, %44 ]
  call void @llvm.dbg.value(metadata ptr %98, metadata !3569, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %97, metadata !3571, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %96, metadata !3579, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %95, metadata !3578, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %94, metadata !3577, metadata !DIExpression()), !dbg !3617
  %99 = icmp ne ptr %39, null, !dbg !3694
  %100 = icmp eq ptr %97, null
  %101 = and i1 %99, %100, !dbg !3695
  br i1 %101, label %102, label %127, !dbg !3695

102:                                              ; preds = %93
  %103 = load i8, ptr %39, align 1, !dbg !3696, !tbaa !1074
  %104 = icmp eq i8 %103, 43, !dbg !3697
  br i1 %104, label %108, label %105, !dbg !3696

105:                                              ; preds = %102
  %106 = call ptr @getgrnam(ptr noundef nonnull %39) #39, !dbg !3698
  call void @llvm.dbg.value(metadata ptr %106, metadata !3611, metadata !DIExpression()), !dbg !3699
  %107 = icmp eq ptr %106, null, !dbg !3700
  br i1 %107, label %108, label %119, !dbg !3701

108:                                              ; preds = %102, %105
  call void @llvm.dbg.value(metadata ptr null, metadata !3570, metadata !DIExpression()), !dbg !3617
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !3702
  call void @llvm.dbg.value(metadata ptr %9, metadata !3614, metadata !DIExpression(DW_OP_deref)), !dbg !3703
  %109 = call i32 @xstrtoul(ptr noundef nonnull %39, ptr noundef null, i32 noundef 10, ptr noundef nonnull %9, ptr noundef nonnull @.str.2.113) #39, !dbg !3704
  %110 = icmp eq i32 %109, 0, !dbg !3706
  %111 = load i64, ptr %9, align 8
  call void @llvm.dbg.value(metadata i64 %111, metadata !3614, metadata !DIExpression()), !dbg !3703
  %112 = icmp ult i64 %111, 4294967296
  %113 = select i1 %110, i1 %112, i1 false, !dbg !3707
  %114 = trunc i64 %111 to i32
  %115 = icmp ne i32 %114, -1
  %116 = select i1 %113, i1 %115, i1 false, !dbg !3707
  %117 = select i1 %116, i32 %114, i32 %96
  %118 = select i1 %116, ptr null, ptr @.str.4.116
  call void @llvm.dbg.value(metadata ptr %118, metadata !3571, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %117, metadata !3579, metadata !DIExpression()), !dbg !3617
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !3708
  br label %122, !dbg !3709

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.group, ptr %106, i64 0, i32 2, !dbg !3710
  %121 = load i32, ptr %120, align 8, !dbg !3710, !tbaa !3711
  call void @llvm.dbg.value(metadata i32 %121, metadata !3579, metadata !DIExpression()), !dbg !3617
  br label %122

122:                                              ; preds = %119, %108
  %123 = phi i32 [ %117, %108 ], [ %121, %119 ], !dbg !3712
  %124 = phi ptr [ %118, %108 ], [ null, %119 ], !dbg !3713
  %125 = phi ptr [ null, %108 ], [ %5, %119 ]
  call void @llvm.dbg.value(metadata ptr %125, metadata !3570, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %124, metadata !3571, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %123, metadata !3579, metadata !DIExpression()), !dbg !3617
  call void @endgrent() #39, !dbg !3715
  %126 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %39) #39, !dbg !3716
  call void @llvm.dbg.value(metadata ptr %126, metadata !3577, metadata !DIExpression()), !dbg !3617
  br label %127, !dbg !3717

127:                                              ; preds = %122, %93
  %128 = phi ptr [ %126, %122 ], [ %94, %93 ], !dbg !3617
  %129 = phi i32 [ %123, %122 ], [ %96, %93 ], !dbg !3617
  %130 = phi ptr [ %124, %122 ], [ %97, %93 ], !dbg !3713
  %131 = phi ptr [ %125, %122 ], [ %5, %93 ]
  call void @llvm.dbg.value(metadata ptr %131, metadata !3570, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %130, metadata !3571, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %129, metadata !3579, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %128, metadata !3577, metadata !DIExpression()), !dbg !3617
  %132 = icmp eq ptr %130, null, !dbg !3718
  br i1 %132, label %133, label %144, !dbg !3720

133:                                              ; preds = %127
  store i32 %95, ptr %2, align 4, !dbg !3721, !tbaa !1065
  br i1 %41, label %135, label %134, !dbg !3723

134:                                              ; preds = %133
  store i32 %129, ptr %3, align 4, !dbg !3724, !tbaa !1065
  br label %135, !dbg !3726

135:                                              ; preds = %134, %133
  %136 = icmp eq ptr %98, null, !dbg !3727
  br i1 %136, label %138, label %137, !dbg !3729

137:                                              ; preds = %135
  store ptr %38, ptr %98, align 8, !dbg !3730, !tbaa !995
  call void @llvm.dbg.value(metadata ptr null, metadata !3572, metadata !DIExpression()), !dbg !3617
  br label %138, !dbg !3732

138:                                              ; preds = %137, %135
  %139 = phi ptr [ null, %137 ], [ %38, %135 ], !dbg !3617
  call void @llvm.dbg.value(metadata ptr %139, metadata !3572, metadata !DIExpression()), !dbg !3617
  %140 = icmp eq ptr %131, null, !dbg !3733
  br i1 %140, label %142, label %141, !dbg !3735

141:                                              ; preds = %138
  store ptr %128, ptr %131, align 8, !dbg !3736, !tbaa !995
  call void @llvm.dbg.value(metadata ptr null, metadata !3577, metadata !DIExpression()), !dbg !3617
  br label %142, !dbg !3738

142:                                              ; preds = %138, %141
  %143 = phi ptr [ null, %141 ], [ %128, %138 ], !dbg !3617
  call void @llvm.dbg.value(metadata ptr %139, metadata !3572, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %143, metadata !3577, metadata !DIExpression()), !dbg !3617
  call void @free(ptr noundef %139) #39, !dbg !3739
  call void @free(ptr noundef %143) #39, !dbg !3740
  br label %146

144:                                              ; preds = %127
  call void @llvm.dbg.value(metadata ptr %139, metadata !3572, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata ptr %143, metadata !3577, metadata !DIExpression()), !dbg !3617
  call void @free(ptr noundef %38) #39, !dbg !3739
  call void @free(ptr noundef %128) #39, !dbg !3740
  %145 = call ptr @dcgettext(ptr noundef nonnull @.str.5.117, ptr noundef nonnull %130, i32 noundef 5) #39, !dbg !3741
  br label %146, !dbg !3742

146:                                              ; preds = %142, %144
  %147 = phi ptr [ %145, %144 ], [ null, %142 ], !dbg !3742
  ret ptr %147, !dbg !3743
}

declare !dbg !3744 void @endgrent() local_unnamed_addr #3

declare !dbg !3745 void @endpwent() local_unnamed_addr #3

declare !dbg !3746 ptr @getgrnam(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_user_spec(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3749 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %1, metadata !3754, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %2, metadata !3755, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %3, metadata !3756, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %4, metadata !3757, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %0, metadata !3525, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %1, metadata !3526, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %2, metadata !3527, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %4, metadata !3529, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr null, metadata !3530, metadata !DIExpression()), !dbg !3759
  %6 = icmp eq ptr %2, null, !dbg !3761
  br i1 %6, label %9, label %7, !dbg !3761

7:                                                ; preds = %5
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #40, !dbg !3762
  br label %9, !dbg !3761

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ null, %5 ], !dbg !3761
  call void @llvm.dbg.value(metadata ptr %10, metadata !3531, metadata !DIExpression()), !dbg !3759
  %11 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %11, metadata !3532, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i8 0, metadata !3533, metadata !DIExpression()), !dbg !3759
  %12 = icmp ne ptr %2, null, !dbg !3764
  %13 = icmp eq ptr %10, null
  %14 = and i1 %12, %13, !dbg !3765
  %15 = icmp ne ptr %11, null
  %16 = select i1 %14, i1 %15, i1 false, !dbg !3765
  br i1 %16, label %17, label %24, !dbg !3765

17:                                               ; preds = %9
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #40, !dbg !3766
  call void @llvm.dbg.value(metadata ptr %18, metadata !3534, metadata !DIExpression()), !dbg !3767
  %19 = icmp eq ptr %18, null, !dbg !3768
  br i1 %19, label %24, label %20, !dbg !3769

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @parse_with_separator(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4), !dbg !3770
  %22 = icmp eq ptr %21, null, !dbg !3770
  %23 = select i1 %22, ptr null, ptr %11, !dbg !3771
  br label %24, !dbg !3771

24:                                               ; preds = %20, %9, %17
  %25 = phi ptr [ %11, %9 ], [ %11, %17 ], [ %23, %20 ], !dbg !3772
  call void @llvm.dbg.value(metadata ptr %25, metadata !3532, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i8 poison, metadata !3533, metadata !DIExpression()), !dbg !3759
  ret ptr %25, !dbg !3773
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3774 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %1, metadata !3814, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %2, metadata !3815, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %3, metadata !3816, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %4, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %5, metadata !3818, metadata !DIExpression()), !dbg !3819
  %7 = icmp eq ptr %1, null, !dbg !3820
  br i1 %7, label %10, label %8, !dbg !3822

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3823
  br label %12, !dbg !3823

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.121, ptr noundef %2, ptr noundef %3) #39, !dbg !3824
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.3.123, i32 noundef 5) #39, !dbg !3825
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3825
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3826
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.5.125, i32 noundef 5) #39, !dbg !3827
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.126) #39, !dbg !3827
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %0), !dbg !3828
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
  ], !dbg !3829

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.7.127, i32 noundef 5) #39, !dbg !3830
  %21 = load ptr, ptr %4, align 8, !dbg !3830, !tbaa !995
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3830
  br label %147, !dbg !3832

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.8.128, i32 noundef 5) #39, !dbg !3833
  %25 = load ptr, ptr %4, align 8, !dbg !3833, !tbaa !995
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3833
  %27 = load ptr, ptr %26, align 8, !dbg !3833, !tbaa !995
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3833
  br label %147, !dbg !3834

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.9.129, i32 noundef 5) #39, !dbg !3835
  %31 = load ptr, ptr %4, align 8, !dbg !3835, !tbaa !995
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3835
  %33 = load ptr, ptr %32, align 8, !dbg !3835, !tbaa !995
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3835
  %35 = load ptr, ptr %34, align 8, !dbg !3835, !tbaa !995
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3835
  br label %147, !dbg !3836

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.10.130, i32 noundef 5) #39, !dbg !3837
  %39 = load ptr, ptr %4, align 8, !dbg !3837, !tbaa !995
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3837
  %41 = load ptr, ptr %40, align 8, !dbg !3837, !tbaa !995
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3837
  %43 = load ptr, ptr %42, align 8, !dbg !3837, !tbaa !995
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3837
  %45 = load ptr, ptr %44, align 8, !dbg !3837, !tbaa !995
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3837
  br label %147, !dbg !3838

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.11.131, i32 noundef 5) #39, !dbg !3839
  %49 = load ptr, ptr %4, align 8, !dbg !3839, !tbaa !995
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3839
  %51 = load ptr, ptr %50, align 8, !dbg !3839, !tbaa !995
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3839
  %53 = load ptr, ptr %52, align 8, !dbg !3839, !tbaa !995
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3839
  %55 = load ptr, ptr %54, align 8, !dbg !3839, !tbaa !995
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3839
  %57 = load ptr, ptr %56, align 8, !dbg !3839, !tbaa !995
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3839
  br label %147, !dbg !3840

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.12.132, i32 noundef 5) #39, !dbg !3841
  %61 = load ptr, ptr %4, align 8, !dbg !3841, !tbaa !995
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3841
  %63 = load ptr, ptr %62, align 8, !dbg !3841, !tbaa !995
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3841
  %65 = load ptr, ptr %64, align 8, !dbg !3841, !tbaa !995
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3841
  %67 = load ptr, ptr %66, align 8, !dbg !3841, !tbaa !995
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3841
  %69 = load ptr, ptr %68, align 8, !dbg !3841, !tbaa !995
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3841
  %71 = load ptr, ptr %70, align 8, !dbg !3841, !tbaa !995
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3841
  br label %147, !dbg !3842

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.13.133, i32 noundef 5) #39, !dbg !3843
  %75 = load ptr, ptr %4, align 8, !dbg !3843, !tbaa !995
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3843
  %77 = load ptr, ptr %76, align 8, !dbg !3843, !tbaa !995
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3843
  %79 = load ptr, ptr %78, align 8, !dbg !3843, !tbaa !995
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3843
  %81 = load ptr, ptr %80, align 8, !dbg !3843, !tbaa !995
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3843
  %83 = load ptr, ptr %82, align 8, !dbg !3843, !tbaa !995
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3843
  %85 = load ptr, ptr %84, align 8, !dbg !3843, !tbaa !995
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3843
  %87 = load ptr, ptr %86, align 8, !dbg !3843, !tbaa !995
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3843
  br label %147, !dbg !3844

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.14.134, i32 noundef 5) #39, !dbg !3845
  %91 = load ptr, ptr %4, align 8, !dbg !3845, !tbaa !995
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3845
  %93 = load ptr, ptr %92, align 8, !dbg !3845, !tbaa !995
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3845
  %95 = load ptr, ptr %94, align 8, !dbg !3845, !tbaa !995
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3845
  %97 = load ptr, ptr %96, align 8, !dbg !3845, !tbaa !995
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3845
  %99 = load ptr, ptr %98, align 8, !dbg !3845, !tbaa !995
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3845
  %101 = load ptr, ptr %100, align 8, !dbg !3845, !tbaa !995
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3845
  %103 = load ptr, ptr %102, align 8, !dbg !3845, !tbaa !995
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3845
  %105 = load ptr, ptr %104, align 8, !dbg !3845, !tbaa !995
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3845
  br label %147, !dbg !3846

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.15.135, i32 noundef 5) #39, !dbg !3847
  %109 = load ptr, ptr %4, align 8, !dbg !3847, !tbaa !995
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3847
  %111 = load ptr, ptr %110, align 8, !dbg !3847, !tbaa !995
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3847
  %113 = load ptr, ptr %112, align 8, !dbg !3847, !tbaa !995
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3847
  %115 = load ptr, ptr %114, align 8, !dbg !3847, !tbaa !995
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3847
  %117 = load ptr, ptr %116, align 8, !dbg !3847, !tbaa !995
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3847
  %119 = load ptr, ptr %118, align 8, !dbg !3847, !tbaa !995
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3847
  %121 = load ptr, ptr %120, align 8, !dbg !3847, !tbaa !995
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3847
  %123 = load ptr, ptr %122, align 8, !dbg !3847, !tbaa !995
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3847
  %125 = load ptr, ptr %124, align 8, !dbg !3847, !tbaa !995
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3847
  br label %147, !dbg !3848

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.16.136, i32 noundef 5) #39, !dbg !3849
  %129 = load ptr, ptr %4, align 8, !dbg !3849, !tbaa !995
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3849
  %131 = load ptr, ptr %130, align 8, !dbg !3849, !tbaa !995
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3849
  %133 = load ptr, ptr %132, align 8, !dbg !3849, !tbaa !995
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3849
  %135 = load ptr, ptr %134, align 8, !dbg !3849, !tbaa !995
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3849
  %137 = load ptr, ptr %136, align 8, !dbg !3849, !tbaa !995
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3849
  %139 = load ptr, ptr %138, align 8, !dbg !3849, !tbaa !995
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3849
  %141 = load ptr, ptr %140, align 8, !dbg !3849, !tbaa !995
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3849
  %143 = load ptr, ptr %142, align 8, !dbg !3849, !tbaa !995
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3849
  %145 = load ptr, ptr %144, align 8, !dbg !3849, !tbaa !995
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3849
  br label %147, !dbg !3850

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3851
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3852 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3856, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %1, metadata !3857, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %2, metadata !3858, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %3, metadata !3859, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %4, metadata !3860, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 0, metadata !3861, metadata !DIExpression()), !dbg !3862
  br label %6, !dbg !3863

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3865
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3862
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3866
  %9 = load ptr, ptr %8, align 8, !dbg !3866, !tbaa !995
  %10 = icmp eq ptr %9, null, !dbg !3868
  %11 = add i64 %7, 1, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %11, metadata !3861, metadata !DIExpression()), !dbg !3862
  br i1 %10, label %12, label %6, !dbg !3868, !llvm.loop !3870

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3872
  ret void, !dbg !3873
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3874 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3886, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %1, metadata !3887, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %2, metadata !3888, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %3, metadata !3889, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %4, metadata !3890, metadata !DIExpression()), !dbg !3894
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3895
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3892, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 0, metadata !3891, metadata !DIExpression()), !dbg !3894
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3891, metadata !DIExpression()), !dbg !3894
  %10 = icmp ult i32 %9, 41, !dbg !3897
  br i1 %10, label %11, label %16, !dbg !3897

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3897
  %13 = zext i32 %9 to i64, !dbg !3897
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3897
  %15 = add nuw nsw i32 %9, 8, !dbg !3897
  store i32 %15, ptr %4, align 8, !dbg !3897
  br label %19, !dbg !3897

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3897
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3897
  store ptr %18, ptr %7, align 8, !dbg !3897
  br label %19, !dbg !3897

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3897
  %22 = load ptr, ptr %21, align 8, !dbg !3897
  store ptr %22, ptr %6, align 16, !dbg !3900, !tbaa !995
  %23 = icmp eq ptr %22, null, !dbg !3901
  br i1 %23, label %128, label %24, !dbg !3902

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3891, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 1, metadata !3891, metadata !DIExpression()), !dbg !3894
  %25 = icmp ult i32 %20, 41, !dbg !3897
  br i1 %25, label %29, label %26, !dbg !3897

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3897
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3897
  store ptr %28, ptr %7, align 8, !dbg !3897
  br label %34, !dbg !3897

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3897
  %31 = zext i32 %20 to i64, !dbg !3897
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3897
  %33 = add nuw nsw i32 %20, 8, !dbg !3897
  store i32 %33, ptr %4, align 8, !dbg !3897
  br label %34, !dbg !3897

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3897
  %37 = load ptr, ptr %36, align 8, !dbg !3897
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3903
  store ptr %37, ptr %38, align 8, !dbg !3900, !tbaa !995
  %39 = icmp eq ptr %37, null, !dbg !3901
  br i1 %39, label %128, label %40, !dbg !3902

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3891, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 2, metadata !3891, metadata !DIExpression()), !dbg !3894
  %41 = icmp ult i32 %35, 41, !dbg !3897
  br i1 %41, label %45, label %42, !dbg !3897

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3897
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3897
  store ptr %44, ptr %7, align 8, !dbg !3897
  br label %50, !dbg !3897

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3897
  %47 = zext i32 %35 to i64, !dbg !3897
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3897
  %49 = add nuw nsw i32 %35, 8, !dbg !3897
  store i32 %49, ptr %4, align 8, !dbg !3897
  br label %50, !dbg !3897

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3897
  %53 = load ptr, ptr %52, align 8, !dbg !3897
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3903
  store ptr %53, ptr %54, align 16, !dbg !3900, !tbaa !995
  %55 = icmp eq ptr %53, null, !dbg !3901
  br i1 %55, label %128, label %56, !dbg !3902

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3891, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 3, metadata !3891, metadata !DIExpression()), !dbg !3894
  %57 = icmp ult i32 %51, 41, !dbg !3897
  br i1 %57, label %61, label %58, !dbg !3897

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3897
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3897
  store ptr %60, ptr %7, align 8, !dbg !3897
  br label %66, !dbg !3897

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3897
  %63 = zext i32 %51 to i64, !dbg !3897
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3897
  %65 = add nuw nsw i32 %51, 8, !dbg !3897
  store i32 %65, ptr %4, align 8, !dbg !3897
  br label %66, !dbg !3897

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3897
  %69 = load ptr, ptr %68, align 8, !dbg !3897
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3903
  store ptr %69, ptr %70, align 8, !dbg !3900, !tbaa !995
  %71 = icmp eq ptr %69, null, !dbg !3901
  br i1 %71, label %128, label %72, !dbg !3902

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3891, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 4, metadata !3891, metadata !DIExpression()), !dbg !3894
  %73 = icmp ult i32 %67, 41, !dbg !3897
  br i1 %73, label %77, label %74, !dbg !3897

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3897
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3897
  store ptr %76, ptr %7, align 8, !dbg !3897
  br label %82, !dbg !3897

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3897
  %79 = zext i32 %67 to i64, !dbg !3897
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3897
  %81 = add nuw nsw i32 %67, 8, !dbg !3897
  store i32 %81, ptr %4, align 8, !dbg !3897
  br label %82, !dbg !3897

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3897
  %85 = load ptr, ptr %84, align 8, !dbg !3897
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3903
  store ptr %85, ptr %86, align 16, !dbg !3900, !tbaa !995
  %87 = icmp eq ptr %85, null, !dbg !3901
  br i1 %87, label %128, label %88, !dbg !3902

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3891, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 5, metadata !3891, metadata !DIExpression()), !dbg !3894
  %89 = icmp ult i32 %83, 41, !dbg !3897
  br i1 %89, label %93, label %90, !dbg !3897

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3897
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3897
  store ptr %92, ptr %7, align 8, !dbg !3897
  br label %98, !dbg !3897

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3897
  %95 = zext i32 %83 to i64, !dbg !3897
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3897
  %97 = add nuw nsw i32 %83, 8, !dbg !3897
  store i32 %97, ptr %4, align 8, !dbg !3897
  br label %98, !dbg !3897

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3897
  %100 = load ptr, ptr %99, align 8, !dbg !3897
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3903
  store ptr %100, ptr %101, align 8, !dbg !3900, !tbaa !995
  %102 = icmp eq ptr %100, null, !dbg !3901
  br i1 %102, label %128, label %103, !dbg !3902

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3891, metadata !DIExpression()), !dbg !3894
  %104 = load ptr, ptr %7, align 8, !dbg !3897
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3897
  store ptr %105, ptr %7, align 8, !dbg !3897
  %106 = load ptr, ptr %104, align 8, !dbg !3897
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3903
  store ptr %106, ptr %107, align 16, !dbg !3900, !tbaa !995
  %108 = icmp eq ptr %106, null, !dbg !3901
  br i1 %108, label %128, label %109, !dbg !3902

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3891, metadata !DIExpression()), !dbg !3894
  %110 = load ptr, ptr %7, align 8, !dbg !3897
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3897
  store ptr %111, ptr %7, align 8, !dbg !3897
  %112 = load ptr, ptr %110, align 8, !dbg !3897
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3903
  store ptr %112, ptr %113, align 8, !dbg !3900, !tbaa !995
  %114 = icmp eq ptr %112, null, !dbg !3901
  br i1 %114, label %128, label %115, !dbg !3902

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3891, metadata !DIExpression()), !dbg !3894
  %116 = load ptr, ptr %7, align 8, !dbg !3897
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3897
  store ptr %117, ptr %7, align 8, !dbg !3897
  %118 = load ptr, ptr %116, align 8, !dbg !3897
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3903
  store ptr %118, ptr %119, align 16, !dbg !3900, !tbaa !995
  %120 = icmp eq ptr %118, null, !dbg !3901
  br i1 %120, label %128, label %121, !dbg !3902

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3891, metadata !DIExpression()), !dbg !3894
  %122 = load ptr, ptr %7, align 8, !dbg !3897
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3897
  store ptr %123, ptr %7, align 8, !dbg !3897
  %124 = load ptr, ptr %122, align 8, !dbg !3897
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3903
  store ptr %124, ptr %125, align 8, !dbg !3900, !tbaa !995
  %126 = icmp eq ptr %124, null, !dbg !3901
  %127 = select i1 %126, i64 9, i64 10, !dbg !3902
  br label %128, !dbg !3902

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3904
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3905
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3906
  ret void, !dbg !3906
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3907 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3911, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %1, metadata !3912, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %2, metadata !3913, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %3, metadata !3914, metadata !DIExpression()), !dbg !3920
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3921
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3915, metadata !DIExpression()), !dbg !3922
  call void @llvm.va_start(ptr nonnull %5), !dbg !3923
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3924
  call void @llvm.va_end(ptr nonnull %5), !dbg !3925
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3926
  ret void, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3927 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3928, !tbaa !995
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.124, ptr noundef %1), !dbg !3928
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.17.141, i32 noundef 5) #39, !dbg !3929
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.142) #39, !dbg !3929
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.19.143, i32 noundef 5) #39, !dbg !3930
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.144, ptr noundef nonnull @.str.21.145) #39, !dbg !3930
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.122, ptr noundef nonnull @.str.22.146, i32 noundef 5) #39, !dbg !3931
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.147) #39, !dbg !3931
  ret void, !dbg !3932
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3933 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3938, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %1, metadata !3939, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %2, metadata !3940, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !3947
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3955
  %5 = icmp eq ptr %4, null, !dbg !3957
  br i1 %5, label %6, label %7, !dbg !3959

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3960
  unreachable, !dbg !3960

7:                                                ; preds = %3
  ret ptr %4, !dbg !3961
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3943 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !3962
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3963
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3964
  %5 = icmp eq ptr %4, null, !dbg !3966
  br i1 %5, label %6, label %7, !dbg !3967

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3968
  unreachable, !dbg !3968

7:                                                ; preds = %3
  ret ptr %4, !dbg !3969
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3970 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !3975
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3976
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !3977
  %3 = icmp eq ptr %2, null, !dbg !3979
  br i1 %3, label %4, label %5, !dbg !3980

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3981
  unreachable, !dbg !3981

5:                                                ; preds = %1
  ret ptr %2, !dbg !3982
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3983 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3984 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i64 %0, metadata !3990, metadata !DIExpression()), !dbg !3994
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3996
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !3997
  %3 = icmp eq ptr %2, null, !dbg !3999
  br i1 %3, label %4, label %5, !dbg !4000

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4001
  unreachable, !dbg !4001

5:                                                ; preds = %1
  ret ptr %2, !dbg !4002
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4003 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !4009
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4011
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !4012
  %3 = icmp eq ptr %2, null, !dbg !4014
  br i1 %3, label %4, label %5, !dbg !4015

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4016
  unreachable, !dbg !4016

5:                                                ; preds = %1
  ret ptr %2, !dbg !4017
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4018 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  %3 = icmp eq i64 %1, 0, !dbg !4032
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4032
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4033
  call void @llvm.dbg.value(metadata ptr %5, metadata !3950, metadata !DIExpression()), !dbg !4034
  %6 = icmp eq ptr %5, null, !dbg !4036
  br i1 %6, label %7, label %8, !dbg !4037

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4038
  unreachable, !dbg !4038

8:                                                ; preds = %2
  ret ptr %5, !dbg !4039
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4040 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4041 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4045, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %0, metadata !4048, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %1, metadata !4051, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4054
  %3 = icmp eq i64 %1, 0, !dbg !4056
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4056
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4057
  call void @llvm.dbg.value(metadata ptr %5, metadata !3950, metadata !DIExpression()), !dbg !4058
  %6 = icmp eq ptr %5, null, !dbg !4060
  br i1 %6, label %7, label %8, !dbg !4061

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4062
  unreachable, !dbg !4062

8:                                                ; preds = %2
  ret ptr %5, !dbg !4063
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4064 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4068, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr %0, metadata !4072, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %2, metadata !4076, metadata !DIExpression()), !dbg !4077
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4079
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4080
  %5 = icmp eq ptr %4, null, !dbg !4082
  br i1 %5, label %6, label %7, !dbg !4083

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4084
  unreachable, !dbg !4084

7:                                                ; preds = %3
  ret ptr %4, !dbg !4085
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4086 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr null, metadata !3942, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %0, metadata !3945, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3946, metadata !DIExpression()), !dbg !4093
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4095
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4096
  %4 = icmp eq ptr %3, null, !dbg !4098
  br i1 %4, label %5, label %6, !dbg !4099

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4100
  unreachable, !dbg !4100

6:                                                ; preds = %2
  ret ptr %3, !dbg !4101
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4102 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %1, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr null, metadata !4068, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %0, metadata !4069, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr null, metadata !4072, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %0, metadata !4075, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %1, metadata !4076, metadata !DIExpression()), !dbg !4111
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4113
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4114
  %4 = icmp eq ptr %3, null, !dbg !4116
  br i1 %4, label %5, label %6, !dbg !4117

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4118
  unreachable, !dbg !4118

6:                                                ; preds = %2
  ret ptr %3, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4120 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4124, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr %1, metadata !4125, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr %0, metadata !884, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %1, metadata !885, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 1, metadata !886, metadata !DIExpression()), !dbg !4127
  %3 = load i64, ptr %1, align 8, !dbg !4129, !tbaa !2977
  call void @llvm.dbg.value(metadata i64 %3, metadata !887, metadata !DIExpression()), !dbg !4127
  %4 = icmp eq ptr %0, null, !dbg !4130
  br i1 %4, label %5, label %8, !dbg !4132

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4133
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4136
  br label %15, !dbg !4136

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4137
  %10 = add nuw i64 %9, 1, !dbg !4137
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4137
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4137
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %13, metadata !887, metadata !DIExpression()), !dbg !4127
  br i1 %12, label %14, label %15, !dbg !4140

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4141
  unreachable, !dbg !4141

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4127
  call void @llvm.dbg.value(metadata i64 %16, metadata !887, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %16, metadata !3945, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 1, metadata !3946, metadata !DIExpression()), !dbg !4142
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4144
  call void @llvm.dbg.value(metadata ptr %17, metadata !3950, metadata !DIExpression()), !dbg !4145
  %18 = icmp eq ptr %17, null, !dbg !4147
  br i1 %18, label %19, label %20, !dbg !4148

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4149
  unreachable, !dbg !4149

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !884, metadata !DIExpression()), !dbg !4127
  store i64 %16, ptr %1, align 8, !dbg !4150, !tbaa !2977
  ret ptr %17, !dbg !4151
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !879 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !884, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr %1, metadata !885, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %2, metadata !886, metadata !DIExpression()), !dbg !4152
  %4 = load i64, ptr %1, align 8, !dbg !4153, !tbaa !2977
  call void @llvm.dbg.value(metadata i64 %4, metadata !887, metadata !DIExpression()), !dbg !4152
  %5 = icmp eq ptr %0, null, !dbg !4154
  br i1 %5, label %6, label %13, !dbg !4155

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4156
  br i1 %7, label %8, label %20, !dbg !4157

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %9, metadata !887, metadata !DIExpression()), !dbg !4152
  %10 = icmp ugt i64 %2, 128, !dbg !4160
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %12, metadata !887, metadata !DIExpression()), !dbg !4152
  br label %20, !dbg !4162

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4163
  %15 = add nuw i64 %14, 1, !dbg !4163
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4163
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4163
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %18, metadata !887, metadata !DIExpression()), !dbg !4152
  br i1 %17, label %19, label %20, !dbg !4164

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4165
  unreachable, !dbg !4165

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4152
  call void @llvm.dbg.value(metadata i64 %21, metadata !887, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %21, metadata !3945, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !4166
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %22, metadata !3950, metadata !DIExpression()), !dbg !4169
  %23 = icmp eq ptr %22, null, !dbg !4171
  br i1 %23, label %24, label %25, !dbg !4172

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4173
  unreachable, !dbg !4173

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !884, metadata !DIExpression()), !dbg !4152
  store i64 %21, ptr %1, align 8, !dbg !4174, !tbaa !2977
  ret ptr %22, !dbg !4175
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !891 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !899, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %1, metadata !900, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %2, metadata !901, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %3, metadata !902, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %4, metadata !903, metadata !DIExpression()), !dbg !4176
  %6 = load i64, ptr %1, align 8, !dbg !4177, !tbaa !2977
  call void @llvm.dbg.value(metadata i64 %6, metadata !904, metadata !DIExpression()), !dbg !4176
  %7 = ashr i64 %6, 1, !dbg !4178
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4178
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4178
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %10, metadata !905, metadata !DIExpression()), !dbg !4176
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %11, metadata !905, metadata !DIExpression()), !dbg !4176
  %12 = icmp sgt i64 %3, -1, !dbg !4181
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4183
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %15, metadata !905, metadata !DIExpression()), !dbg !4176
  %16 = icmp slt i64 %4, 0, !dbg !4184
  br i1 %16, label %17, label %30, !dbg !4184

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4184
  br i1 %18, label %19, label %24, !dbg !4184

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4184
  %21 = udiv i64 9223372036854775807, %20, !dbg !4184
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4184
  br i1 %23, label %46, label %43, !dbg !4184

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4184
  br i1 %25, label %43, label %26, !dbg !4184

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4184
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4184
  %29 = icmp ult i64 %28, %15, !dbg !4184
  br i1 %29, label %46, label %43, !dbg !4184

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4184
  br i1 %31, label %43, label %32, !dbg !4184

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4184
  br i1 %33, label %34, label %40, !dbg !4184

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4184
  br i1 %35, label %43, label %36, !dbg !4184

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4184
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4184
  %39 = icmp ult i64 %38, %4, !dbg !4184
  br i1 %39, label %46, label %43, !dbg !4184

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4184
  br i1 %42, label %46, label %43, !dbg !4184

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !906, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4176
  %44 = mul i64 %15, %4, !dbg !4184
  call void @llvm.dbg.value(metadata i64 %44, metadata !906, metadata !DIExpression()), !dbg !4176
  %45 = icmp slt i64 %44, 128, !dbg !4184
  br i1 %45, label %46, label %51, !dbg !4184

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !907, metadata !DIExpression()), !dbg !4176
  %48 = sdiv i64 %47, %4, !dbg !4185
  call void @llvm.dbg.value(metadata i64 %48, metadata !905, metadata !DIExpression()), !dbg !4176
  %49 = srem i64 %47, %4, !dbg !4188
  %50 = sub nsw i64 %47, %49, !dbg !4189
  call void @llvm.dbg.value(metadata i64 %50, metadata !906, metadata !DIExpression()), !dbg !4176
  br label %51, !dbg !4190

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4176
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4176
  call void @llvm.dbg.value(metadata i64 %53, metadata !906, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %52, metadata !905, metadata !DIExpression()), !dbg !4176
  %54 = icmp eq ptr %0, null, !dbg !4191
  br i1 %54, label %55, label %56, !dbg !4193

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4194, !tbaa !2977
  br label %56, !dbg !4195

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4196
  %58 = icmp slt i64 %57, %2, !dbg !4198
  br i1 %58, label %59, label %96, !dbg !4199

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4200
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4200
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4200
  call void @llvm.dbg.value(metadata i64 %62, metadata !905, metadata !DIExpression()), !dbg !4176
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4201
  br i1 %65, label %95, label %66, !dbg !4201

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4202

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4202
  br i1 %68, label %69, label %74, !dbg !4202

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4202
  %71 = udiv i64 9223372036854775807, %70, !dbg !4202
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4202
  br i1 %73, label %95, label %93, !dbg !4202

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4202
  br i1 %75, label %93, label %76, !dbg !4202

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4202
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4202
  %79 = icmp ult i64 %78, %62, !dbg !4202
  br i1 %79, label %95, label %93, !dbg !4202

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4202
  br i1 %81, label %93, label %82, !dbg !4202

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4202
  br i1 %83, label %84, label %90, !dbg !4202

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4202
  br i1 %85, label %93, label %86, !dbg !4202

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4202
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4202
  %89 = icmp ult i64 %88, %4, !dbg !4202
  br i1 %89, label %95, label %93, !dbg !4202

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4202
  br i1 %92, label %95, label %93, !dbg !4202

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !906, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4176
  %94 = mul i64 %62, %4, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %94, metadata !906, metadata !DIExpression()), !dbg !4176
  br label %96, !dbg !4203

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !4204
  unreachable, !dbg !4204

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4176
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4176
  call void @llvm.dbg.value(metadata i64 %98, metadata !906, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %97, metadata !905, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %98, metadata !4023, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %98, metadata !4029, metadata !DIExpression()), !dbg !4207
  %99 = icmp eq i64 %98, 0, !dbg !4209
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4209
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #45, !dbg !4210
  call void @llvm.dbg.value(metadata ptr %101, metadata !3950, metadata !DIExpression()), !dbg !4211
  %102 = icmp eq ptr %101, null, !dbg !4213
  br i1 %102, label %103, label %104, !dbg !4214

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !4215
  unreachable, !dbg !4215

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !899, metadata !DIExpression()), !dbg !4176
  store i64 %97, ptr %1, align 8, !dbg !4216, !tbaa !2977
  ret ptr %101, !dbg !4217
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4218 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %0, metadata !4222, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 1, metadata !4225, metadata !DIExpression()), !dbg !4226
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4228
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !4229
  %3 = icmp eq ptr %2, null, !dbg !4231
  br i1 %3, label %4, label %5, !dbg !4232

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4233
  unreachable, !dbg !4233

5:                                                ; preds = %1
  ret ptr %2, !dbg !4234
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4235 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4223 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4222, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4236
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4238
  %4 = icmp eq ptr %3, null, !dbg !4240
  br i1 %4, label %5, label %6, !dbg !4241

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4242
  unreachable, !dbg !4242

6:                                                ; preds = %2
  ret ptr %3, !dbg !4243
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4244 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %0, metadata !4248, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 1, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 1, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 1, metadata !4257, metadata !DIExpression()), !dbg !4258
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !4261
  %3 = icmp eq ptr %2, null, !dbg !4263
  br i1 %3, label %4, label %5, !dbg !4264

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4265
  unreachable, !dbg !4265

5:                                                ; preds = %1
  ret ptr %2, !dbg !4266
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4249 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4248, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4251, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4268
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4270
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4271
  %4 = icmp eq ptr %3, null, !dbg !4273
  br i1 %4, label %5, label %6, !dbg !4274

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4275
  unreachable, !dbg !4275

6:                                                ; preds = %2
  ret ptr %3, !dbg !4276
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4277 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4281, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %1, metadata !4282, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3974, metadata !DIExpression()), !dbg !4284
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4286
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4287
  %4 = icmp eq ptr %3, null, !dbg !4289
  br i1 %4, label %5, label %6, !dbg !4290

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4291
  unreachable, !dbg !4291

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4292, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4302
  ret ptr %3, !dbg !4303
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4304 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4308, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i64 %1, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3990, metadata !DIExpression()), !dbg !4313
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4315
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4316
  %4 = icmp eq ptr %3, null, !dbg !4318
  br i1 %4, label %5, label %6, !dbg !4319

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4320
  unreachable, !dbg !4320

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4292, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4323
  ret ptr %3, !dbg !4324
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4325 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4329, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %1, metadata !4330, metadata !DIExpression()), !dbg !4332
  %3 = add nsw i64 %1, 1, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %3, metadata !3988, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 %3, metadata !3990, metadata !DIExpression()), !dbg !4336
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4338
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4339
  %5 = icmp eq ptr %4, null, !dbg !4341
  br i1 %5, label %6, label %7, !dbg !4342

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4343
  unreachable, !dbg !4343

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4331, metadata !DIExpression()), !dbg !4332
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4344
  store i8 0, ptr %8, align 1, !dbg !4345, !tbaa !1074
  call void @llvm.dbg.value(metadata ptr %4, metadata !4292, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4348
  ret ptr %4, !dbg !4349
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4350 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4352, metadata !DIExpression()), !dbg !4353
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4354
  %3 = add i64 %2, 1, !dbg !4355
  call void @llvm.dbg.value(metadata ptr %0, metadata !4281, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %3, metadata !4282, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3974, metadata !DIExpression()), !dbg !4358
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4360
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4361
  %5 = icmp eq ptr %4, null, !dbg !4363
  br i1 %5, label %6, label %7, !dbg !4364

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4365
  unreachable, !dbg !4365

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4292, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %3, metadata !4299, metadata !DIExpression()), !dbg !4366
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4368
  ret ptr %4, !dbg !4369
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4370 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4375, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %1, metadata !4372, metadata !DIExpression()), !dbg !4376
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #39, !dbg !4375
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #39, !dbg !4375
  %3 = icmp eq i32 %1, 0, !dbg !4375
  tail call void @llvm.assume(i1 %3), !dbg !4375
  tail call void @abort() #41, !dbg !4377
  unreachable, !dbg !4377
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4378 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4380, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 %1, metadata !4381, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %2, metadata !4382, metadata !DIExpression()), !dbg !4384
  %4 = tail call i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr noundef %2) #39, !dbg !4385
  call void @llvm.dbg.value(metadata i32 %4, metadata !4383, metadata !DIExpression()), !dbg !4384
  %5 = icmp eq i32 %4, -1, !dbg !4386
  br i1 %5, label %6, label %11, !dbg !4388

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4389
  %8 = load i32, ptr %7, align 4, !dbg !4389, !tbaa !1065
  %9 = icmp eq i32 %8, 12, !dbg !4390
  br i1 %9, label %10, label %11, !dbg !4391

10:                                               ; preds = %6
  tail call void @xalloc_die() #41, !dbg !4392
  unreachable, !dbg !4392

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !4393
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtoul(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #34 !dbg !4394 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4401, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata ptr %1, metadata !4402, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i32 %2, metadata !4403, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata ptr %3, metadata !4404, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata ptr %4, metadata !4405, metadata !DIExpression()), !dbg !4419
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !4420
  %7 = icmp eq ptr %1, null, !dbg !4421
  call void @llvm.dbg.value(metadata ptr %20, metadata !4407, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata ptr %0, metadata !4408, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i8 poison, metadata !4411, metadata !DIExpression()), !dbg !4422
  %8 = tail call ptr @__ctype_b_loc() #42, !dbg !4419
  %9 = load ptr, ptr %8, align 8, !tbaa !995
  br label %10, !dbg !4423

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4422
  %12 = load i8, ptr %11, align 1, !dbg !4422, !tbaa !1074
  call void @llvm.dbg.value(metadata i8 %12, metadata !4411, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata ptr %11, metadata !4408, metadata !DIExpression()), !dbg !4422
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4424
  %15 = load i16, ptr %14, align 2, !dbg !4424, !tbaa !1106
  %16 = and i16 %15, 8192, !dbg !4424
  %17 = icmp eq i16 %16, 0, !dbg !4423
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4425
  call void @llvm.dbg.value(metadata ptr %18, metadata !4408, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i8 poison, metadata !4411, metadata !DIExpression()), !dbg !4422
  br i1 %17, label %19, label %10, !dbg !4423, !llvm.loop !4426

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4421
  %21 = icmp eq i8 %12, 45, !dbg !4428
  br i1 %21, label %22, label %23, !dbg !4430

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4431, !tbaa !995
  br label %387

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #42, !dbg !4433
  store i32 0, ptr %24, align 4, !dbg !4434, !tbaa !1065
  %25 = call i64 @strtoul(ptr noundef %0, ptr noundef %20, i32 noundef %2) #39, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %25, metadata !4412, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i32 0, metadata !4413, metadata !DIExpression()), !dbg !4419
  %26 = load ptr, ptr %20, align 8, !dbg !4436, !tbaa !995
  %27 = icmp eq ptr %26, %0, !dbg !4438
  br i1 %27, label %28, label %37, !dbg !4439

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4440
  br i1 %29, label %387, label %30, !dbg !4443

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4444, !tbaa !1074
  %32 = icmp eq i8 %31, 0, !dbg !4444
  br i1 %32, label %387, label %33, !dbg !4445

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !4444
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #40, !dbg !4446
  %36 = icmp eq ptr %35, null, !dbg !4446
  br i1 %36, label %387, label %44, !dbg !4447

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4448, !tbaa !1065
  switch i32 %38, label %387 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4450

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4413, metadata !DIExpression()), !dbg !4419
  br label %40, !dbg !4451

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4419
  call void @llvm.dbg.value(metadata i32 %41, metadata !4413, metadata !DIExpression()), !dbg !4419
  %42 = icmp eq ptr %4, null, !dbg !4453
  br i1 %42, label %43, label %44, !dbg !4455

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4412, metadata !DIExpression()), !dbg !4419
  store i64 %25, ptr %3, align 8, !dbg !4456, !tbaa !2977
  br label %387, !dbg !4458

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4459, !tbaa !1074
  %48 = sext i8 %47 to i32, !dbg !4459
  %49 = icmp eq i8 %47, 0, !dbg !4460
  br i1 %49, label %384, label %50, !dbg !4461

50:                                               ; preds = %44
  %51 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %48) #40, !dbg !4462
  %52 = icmp eq ptr %51, null, !dbg !4462
  br i1 %52, label %53, label %55, !dbg !4464

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %25, metadata !4412, metadata !DIExpression()), !dbg !4419
  store i64 %46, ptr %3, align 8, !dbg !4465, !tbaa !2977
  %54 = or i32 %45, 2, !dbg !4467
  br label %387, !dbg !4468

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !4414, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32 1, metadata !4417, metadata !DIExpression()), !dbg !4469
  switch i32 %48, label %69 [
    i32 69, label %56
    i32 71, label %56
    i32 103, label %56
    i32 107, label %56
    i32 75, label %56
    i32 77, label %56
    i32 109, label %56
    i32 80, label %56
    i32 81, label %56
    i32 82, label %56
    i32 84, label %56
    i32 116, label %56
    i32 89, label %56
    i32 90, label %56
  ], !dbg !4470

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !4471
  %58 = icmp eq ptr %57, null, !dbg !4471
  br i1 %58, label %69, label %59, !dbg !4474

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4475
  %61 = load i8, ptr %60, align 1, !dbg !4475, !tbaa !1074
  %62 = sext i8 %61 to i32, !dbg !4475
  switch i32 %62, label %69 [
    i32 105, label %63
    i32 66, label %68
    i32 68, label %68
  ], !dbg !4476

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4477
  %65 = load i8, ptr %64, align 1, !dbg !4477, !tbaa !1074
  %66 = icmp eq i8 %65, 66, !dbg !4480
  %67 = select i1 %66, i64 3, i64 1, !dbg !4481
  br label %69, !dbg !4481

68:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4414, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32 2, metadata !4417, metadata !DIExpression()), !dbg !4469
  br label %69, !dbg !4482

69:                                               ; preds = %63, %56, %59, %68, %55
  %70 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %68 ], [ 1024, %56 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %68 ], [ 1, %56 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4417, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32 poison, metadata !4414, metadata !DIExpression()), !dbg !4469
  switch i32 %48, label %382 [
    i32 98, label %303
    i32 66, label %308
    i32 99, label %373
    i32 69, label %272
    i32 71, label %313
    i32 103, label %313
    i32 107, label %329
    i32 75, label %329
    i32 77, label %335
    i32 109, label %335
    i32 80, label %246
    i32 81, label %195
    i32 82, label %149
    i32 84, label %346
    i32 116, label %346
    i32 119, label %367
    i32 89, label %108
    i32 90, label %72
  ], !dbg !4483

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4502
  %73 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4504
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !4504
  %75 = mul i64 %46, %70, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %75, metadata !4501, metadata !DIExpression()), !dbg !4502
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !4502
  call void @llvm.dbg.value(metadata i1 %74, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i1 %74, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4502
  %77 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76), !dbg !4504
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4504
  %79 = mul i64 %76, %70, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %79, metadata !4501, metadata !DIExpression()), !dbg !4502
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !4502
  %81 = or i1 %74, %78, !dbg !4506
  call void @llvm.dbg.value(metadata i1 %81, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i1 %81, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4502
  %82 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80), !dbg !4504
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !4504
  %84 = mul i64 %80, %70, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %84, metadata !4501, metadata !DIExpression()), !dbg !4502
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !4502
  %86 = or i1 %81, %83, !dbg !4506
  call void @llvm.dbg.value(metadata i1 %86, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i1 %86, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4502
  %87 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85), !dbg !4504
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !4504
  %89 = mul i64 %85, %70, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %89, metadata !4501, metadata !DIExpression()), !dbg !4502
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !4502
  %91 = or i1 %86, %88, !dbg !4506
  call void @llvm.dbg.value(metadata i1 %91, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i1 %91, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4502
  %92 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90), !dbg !4504
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !4504
  %94 = mul i64 %90, %70, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %94, metadata !4501, metadata !DIExpression()), !dbg !4502
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !4502
  %96 = or i1 %91, %93, !dbg !4506
  call void @llvm.dbg.value(metadata i1 %96, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i1 %96, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4502
  %97 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95), !dbg !4504
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !4504
  %99 = mul i64 %95, %70, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %99, metadata !4501, metadata !DIExpression()), !dbg !4502
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4502
  %101 = or i1 %96, %98, !dbg !4506
  call void @llvm.dbg.value(metadata i1 %101, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i1 %101, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4502
  %102 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100), !dbg !4504
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !4504
  %104 = mul i64 %100, %70, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %104, metadata !4501, metadata !DIExpression()), !dbg !4502
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !4502
  %106 = or i1 %101, %103, !dbg !4506
  %107 = zext i1 %106 to i32, !dbg !4506
  call void @llvm.dbg.value(metadata i32 %107, metadata !4484, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  br label %373, !dbg !4507

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 8, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %109 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4512
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4512
  %111 = mul i64 %46, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %111, metadata !4501, metadata !DIExpression()), !dbg !4510
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %110, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i1 %110, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %113 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112), !dbg !4512
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4512
  %115 = mul i64 %112, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %115, metadata !4501, metadata !DIExpression()), !dbg !4510
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4510
  %117 = or i1 %110, %114, !dbg !4513
  call void @llvm.dbg.value(metadata i1 %117, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i1 %117, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %118 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116), !dbg !4512
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4512
  %120 = mul i64 %116, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %120, metadata !4501, metadata !DIExpression()), !dbg !4510
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4510
  %122 = or i1 %117, %119, !dbg !4513
  call void @llvm.dbg.value(metadata i1 %122, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i1 %122, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %123 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121), !dbg !4512
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4512
  %125 = mul i64 %121, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %125, metadata !4501, metadata !DIExpression()), !dbg !4510
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4510
  %127 = or i1 %122, %124, !dbg !4513
  call void @llvm.dbg.value(metadata i1 %127, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i1 %127, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %128 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126), !dbg !4512
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4512
  %130 = mul i64 %126, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %130, metadata !4501, metadata !DIExpression()), !dbg !4510
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4510
  %132 = or i1 %127, %129, !dbg !4513
  call void @llvm.dbg.value(metadata i1 %132, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i1 %132, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %133 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131), !dbg !4512
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4512
  %135 = mul i64 %131, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %135, metadata !4501, metadata !DIExpression()), !dbg !4510
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4510
  %137 = or i1 %132, %134, !dbg !4513
  call void @llvm.dbg.value(metadata i1 %137, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i1 %137, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %138 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136), !dbg !4512
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4512
  %140 = mul i64 %136, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %140, metadata !4501, metadata !DIExpression()), !dbg !4510
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4510
  %142 = or i1 %137, %139, !dbg !4513
  call void @llvm.dbg.value(metadata i1 %142, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i1 %142, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4508
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4510
  %143 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141), !dbg !4512
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4512
  %145 = mul i64 %141, %70, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %145, metadata !4501, metadata !DIExpression()), !dbg !4510
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4510
  %147 = or i1 %142, %144, !dbg !4513
  %148 = zext i1 %147 to i32, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %148, metadata !4484, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4508
  br label %373, !dbg !4507

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 9, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 8, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %150 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4518
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4518
  %152 = mul i64 %46, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %152, metadata !4501, metadata !DIExpression()), !dbg !4516
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %151, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 8, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %151, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 8, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %154 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153), !dbg !4518
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4518
  %156 = mul i64 %153, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %156, metadata !4501, metadata !DIExpression()), !dbg !4516
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4516
  %158 = or i1 %151, %155, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %158, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %158, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %159 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157), !dbg !4518
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4518
  %161 = mul i64 %157, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %161, metadata !4501, metadata !DIExpression()), !dbg !4516
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4516
  %163 = or i1 %158, %160, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %163, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %163, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %164 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162), !dbg !4518
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4518
  %166 = mul i64 %162, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %166, metadata !4501, metadata !DIExpression()), !dbg !4516
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4516
  %168 = or i1 %163, %165, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %168, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %168, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %169 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167), !dbg !4518
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4518
  %171 = mul i64 %167, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %171, metadata !4501, metadata !DIExpression()), !dbg !4516
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4516
  %173 = or i1 %168, %170, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %173, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %173, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %174 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172), !dbg !4518
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4518
  %176 = mul i64 %172, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %176, metadata !4501, metadata !DIExpression()), !dbg !4516
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4516
  %178 = or i1 %173, %175, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %178, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %178, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %179 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177), !dbg !4518
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4518
  %181 = mul i64 %177, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %181, metadata !4501, metadata !DIExpression()), !dbg !4516
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4516
  %183 = or i1 %178, %180, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %183, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %183, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %184 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182), !dbg !4518
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4518
  %186 = mul i64 %182, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %186, metadata !4501, metadata !DIExpression()), !dbg !4516
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4516
  %188 = or i1 %183, %185, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %188, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i1 %188, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4514
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4516
  %189 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187), !dbg !4518
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4518
  %191 = mul i64 %187, %70, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %191, metadata !4501, metadata !DIExpression()), !dbg !4516
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4516
  %193 = or i1 %188, %190, !dbg !4519
  %194 = zext i1 %193 to i32, !dbg !4519
  call void @llvm.dbg.value(metadata i32 %194, metadata !4484, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4514
  br label %373, !dbg !4507

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 10, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 9, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %196 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4524
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4524
  %198 = mul i64 %46, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %198, metadata !4501, metadata !DIExpression()), !dbg !4522
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4522
  call void @llvm.dbg.value(metadata i1 %197, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 9, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %197, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 9, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 8, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %200 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199), !dbg !4524
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4524
  %202 = mul i64 %199, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %202, metadata !4501, metadata !DIExpression()), !dbg !4522
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4522
  %204 = or i1 %197, %201, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %204, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 8, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %204, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 8, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %205 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203), !dbg !4524
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4524
  %207 = mul i64 %203, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %207, metadata !4501, metadata !DIExpression()), !dbg !4522
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4522
  %209 = or i1 %204, %206, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %209, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %209, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 7, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %210 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208), !dbg !4524
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4524
  %212 = mul i64 %208, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %212, metadata !4501, metadata !DIExpression()), !dbg !4522
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4522
  %214 = or i1 %209, %211, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %214, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %214, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %215 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213), !dbg !4524
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4524
  %217 = mul i64 %213, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %217, metadata !4501, metadata !DIExpression()), !dbg !4522
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4522
  %219 = or i1 %214, %216, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %219, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %219, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %220 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218), !dbg !4524
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4524
  %222 = mul i64 %218, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %222, metadata !4501, metadata !DIExpression()), !dbg !4522
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4522
  %224 = or i1 %219, %221, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %224, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %224, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %225 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223), !dbg !4524
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4524
  %227 = mul i64 %223, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %227, metadata !4501, metadata !DIExpression()), !dbg !4522
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4522
  %229 = or i1 %224, %226, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %229, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %229, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %230 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228), !dbg !4524
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4524
  %232 = mul i64 %228, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %232, metadata !4501, metadata !DIExpression()), !dbg !4522
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4522
  %234 = or i1 %229, %231, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %234, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %234, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %235 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233), !dbg !4524
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4524
  %237 = mul i64 %233, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %237, metadata !4501, metadata !DIExpression()), !dbg !4522
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4522
  %239 = or i1 %234, %236, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %239, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i1 %239, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4520
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4522
  %240 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238), !dbg !4524
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4524
  %242 = mul i64 %238, %70, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %242, metadata !4501, metadata !DIExpression()), !dbg !4522
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4522
  %244 = or i1 %239, %241, !dbg !4525
  %245 = zext i1 %244 to i32, !dbg !4525
  call void @llvm.dbg.value(metadata i32 %245, metadata !4484, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4520
  br label %373, !dbg !4507

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4528
  %247 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4530
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4530
  %249 = mul i64 %46, %70, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %249, metadata !4501, metadata !DIExpression()), !dbg !4528
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4528
  call void @llvm.dbg.value(metadata i1 %248, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i1 %248, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4528
  %251 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250), !dbg !4530
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4530
  %253 = mul i64 %250, %70, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %253, metadata !4501, metadata !DIExpression()), !dbg !4528
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4528
  %255 = or i1 %248, %252, !dbg !4531
  call void @llvm.dbg.value(metadata i1 %255, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i1 %255, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4528
  %256 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254), !dbg !4530
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4530
  %258 = mul i64 %254, %70, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %258, metadata !4501, metadata !DIExpression()), !dbg !4528
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4528
  %260 = or i1 %255, %257, !dbg !4531
  call void @llvm.dbg.value(metadata i1 %260, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i1 %260, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4528
  %261 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259), !dbg !4530
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4530
  %263 = mul i64 %259, %70, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %263, metadata !4501, metadata !DIExpression()), !dbg !4528
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4528
  %265 = or i1 %260, %262, !dbg !4531
  call void @llvm.dbg.value(metadata i1 %265, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i1 %265, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4528
  %266 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264), !dbg !4530
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4530
  %268 = mul i64 %264, %70, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %268, metadata !4501, metadata !DIExpression()), !dbg !4528
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4528
  %270 = or i1 %265, %267, !dbg !4531
  %271 = zext i1 %270 to i32, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %271, metadata !4484, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  br label %373, !dbg !4507

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 6, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4534
  %273 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4536
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4536
  %275 = mul i64 %46, %70, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %275, metadata !4501, metadata !DIExpression()), !dbg !4534
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4534
  call void @llvm.dbg.value(metadata i1 %274, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i1 %274, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 5, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4534
  %277 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276), !dbg !4536
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4536
  %279 = mul i64 %276, %70, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %279, metadata !4501, metadata !DIExpression()), !dbg !4534
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4534
  %281 = or i1 %274, %278, !dbg !4537
  call void @llvm.dbg.value(metadata i1 %281, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i1 %281, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4534
  %282 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280), !dbg !4536
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4536
  %284 = mul i64 %280, %70, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %284, metadata !4501, metadata !DIExpression()), !dbg !4534
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4534
  %286 = or i1 %281, %283, !dbg !4537
  call void @llvm.dbg.value(metadata i1 %286, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i1 %286, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4534
  %287 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285), !dbg !4536
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4536
  %289 = mul i64 %285, %70, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %289, metadata !4501, metadata !DIExpression()), !dbg !4534
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4534
  %291 = or i1 %286, %288, !dbg !4537
  call void @llvm.dbg.value(metadata i1 %291, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i1 %291, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4534
  %292 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290), !dbg !4536
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4536
  %294 = mul i64 %290, %70, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %294, metadata !4501, metadata !DIExpression()), !dbg !4534
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4534
  %296 = or i1 %291, %293, !dbg !4537
  call void @llvm.dbg.value(metadata i1 %296, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i1 %296, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4532
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4534
  %297 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295), !dbg !4536
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4536
  %299 = mul i64 %295, %70, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %299, metadata !4501, metadata !DIExpression()), !dbg !4534
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4534
  %301 = or i1 %296, %298, !dbg !4537
  %302 = zext i1 %301 to i32, !dbg !4537
  call void @llvm.dbg.value(metadata i32 %302, metadata !4484, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4532
  br label %373, !dbg !4507

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i32 512, metadata !4500, metadata !DIExpression()), !dbg !4538
  %304 = icmp ugt i64 %46, 36028797018963967, !dbg !4540
  %305 = shl i64 %46, 9, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %305, metadata !4501, metadata !DIExpression()), !dbg !4538
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4538
  %307 = zext i1 %304 to i32, !dbg !4538
  call void @llvm.dbg.value(metadata i32 %307, metadata !4418, metadata !DIExpression()), !dbg !4469
  br label %373, !dbg !4541

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 1024, metadata !4500, metadata !DIExpression()), !dbg !4542
  %309 = icmp ugt i64 %46, 18014398509481983, !dbg !4544
  %310 = shl i64 %46, 10, !dbg !4544
  call void @llvm.dbg.value(metadata i64 %310, metadata !4501, metadata !DIExpression()), !dbg !4542
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4542
  %312 = zext i1 %309 to i32, !dbg !4542
  call void @llvm.dbg.value(metadata i32 %312, metadata !4418, metadata !DIExpression()), !dbg !4469
  br label %373, !dbg !4545

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4489, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4546
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4548
  %314 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4550
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4550
  %316 = mul i64 %46, %70, !dbg !4550
  call void @llvm.dbg.value(metadata i64 %316, metadata !4501, metadata !DIExpression()), !dbg !4548
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %315, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4546
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4546
  call void @llvm.dbg.value(metadata i1 %315, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4546
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4548
  %318 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317), !dbg !4550
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4550
  %320 = mul i64 %317, %70, !dbg !4550
  call void @llvm.dbg.value(metadata i64 %320, metadata !4501, metadata !DIExpression()), !dbg !4548
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4548
  %322 = or i1 %315, %319, !dbg !4551
  call void @llvm.dbg.value(metadata i1 %322, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4546
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4546
  call void @llvm.dbg.value(metadata i1 %322, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4546
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4548
  %323 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321), !dbg !4550
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4550
  %325 = mul i64 %321, %70, !dbg !4550
  call void @llvm.dbg.value(metadata i64 %325, metadata !4501, metadata !DIExpression()), !dbg !4548
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4548
  %327 = or i1 %322, %324, !dbg !4551
  %328 = zext i1 %327 to i32, !dbg !4551
  call void @llvm.dbg.value(metadata i32 %328, metadata !4484, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4546
  br label %373, !dbg !4507

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4489, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4552
  %330 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4554
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4554
  %332 = mul i64 %46, %70, !dbg !4554
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4556
  %334 = zext i1 %331 to i32, !dbg !4556
  call void @llvm.dbg.value(metadata i32 poison, metadata !4484, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata ptr poison, metadata !4495, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i64 poison, metadata !4501, metadata !DIExpression()), !dbg !4556
  br label %373, !dbg !4507

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4489, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4559
  %336 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4561
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4561
  %338 = mul i64 %46, %70, !dbg !4561
  call void @llvm.dbg.value(metadata i64 %338, metadata !4501, metadata !DIExpression()), !dbg !4559
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4559
  call void @llvm.dbg.value(metadata i1 %337, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %337, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4559
  %340 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339), !dbg !4561
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4561
  %342 = mul i64 %339, %70, !dbg !4561
  call void @llvm.dbg.value(metadata i64 %342, metadata !4501, metadata !DIExpression()), !dbg !4559
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4559
  %344 = or i1 %337, %341, !dbg !4562
  %345 = zext i1 %344 to i32, !dbg !4562
  call void @llvm.dbg.value(metadata i32 %345, metadata !4484, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  br label %373, !dbg !4507

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4489, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 poison, metadata !4490, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 4, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4565
  %347 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4567
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4567
  %349 = mul i64 %46, %70, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %349, metadata !4501, metadata !DIExpression()), !dbg !4565
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4565
  call void @llvm.dbg.value(metadata i1 %348, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %348, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 3, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4565
  %351 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350), !dbg !4567
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4567
  %353 = mul i64 %350, %70, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %353, metadata !4501, metadata !DIExpression()), !dbg !4565
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4565
  %355 = or i1 %348, %352, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %355, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %355, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4565
  %356 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354), !dbg !4567
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4567
  %358 = mul i64 %354, %70, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %358, metadata !4501, metadata !DIExpression()), !dbg !4565
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4565
  %360 = or i1 %355, %357, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %360, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i1 %360, metadata !4484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 1, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 poison, metadata !4500, metadata !DIExpression()), !dbg !4565
  %361 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359), !dbg !4567
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4567
  %363 = mul i64 %359, %70, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %363, metadata !4501, metadata !DIExpression()), !dbg !4565
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4565
  %365 = or i1 %360, %362, !dbg !4568
  %366 = zext i1 %365 to i32, !dbg !4568
  call void @llvm.dbg.value(metadata i32 %366, metadata !4484, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4563
  br label %373, !dbg !4507

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4495, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 2, metadata !4500, metadata !DIExpression()), !dbg !4569
  %368 = shl i64 %46, 1, !dbg !4571
  call void @llvm.dbg.value(metadata i64 %368, metadata !4501, metadata !DIExpression()), !dbg !4569
  %369 = icmp sgt i64 %46, -1, !dbg !4569
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4569
  %371 = lshr i64 %46, 63, !dbg !4569
  %372 = trunc i64 %371 to i32, !dbg !4569
  call void @llvm.dbg.value(metadata i32 %372, metadata !4418, metadata !DIExpression()), !dbg !4469
  br label %373, !dbg !4572

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %46, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !4419
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4573
  call void @llvm.dbg.value(metadata i32 %375, metadata !4418, metadata !DIExpression()), !dbg !4469
  %376 = or i32 %375, %45, !dbg !4507
  call void @llvm.dbg.value(metadata i32 %376, metadata !4413, metadata !DIExpression()), !dbg !4419
  %377 = getelementptr inbounds i8, ptr %26, i64 %71, !dbg !4574
  store ptr %377, ptr %20, align 8, !dbg !4574, !tbaa !995
  %378 = load i8, ptr %377, align 1, !dbg !4575, !tbaa !1074
  %379 = icmp eq i8 %378, 0, !dbg !4575
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4577
  call void @llvm.dbg.value(metadata i32 %381, metadata !4413, metadata !DIExpression()), !dbg !4419
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %25, metadata !4412, metadata !DIExpression()), !dbg !4419
  store i64 %46, ptr %3, align 8, !dbg !4578, !tbaa !2977
  %383 = or i32 %45, 2, !dbg !4579
  call void @llvm.dbg.value(metadata i32 %45, metadata !4413, metadata !DIExpression()), !dbg !4419
  br label %387

384:                                              ; preds = %373, %44
  %385 = phi i64 [ %46, %44 ], [ %374, %373 ], !dbg !4580
  %386 = phi i32 [ %45, %44 ], [ %381, %373 ], !dbg !4581
  call void @llvm.dbg.value(metadata i32 %386, metadata !4413, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %385, metadata !4412, metadata !DIExpression()), !dbg !4419
  store i64 %385, ptr %3, align 8, !dbg !4582, !tbaa !2977
  br label %387, !dbg !4583

387:                                              ; preds = %43, %53, %384, %33, %30, %28, %37, %382, %22
  %388 = phi i32 [ 4, %22 ], [ %386, %384 ], [ %383, %382 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4419
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !4584
  ret i32 %388, !dbg !4584
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4585 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4589 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4627, metadata !DIExpression()), !dbg !4632
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4633
  call void @llvm.dbg.value(metadata i1 poison, metadata !4628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4632
  call void @llvm.dbg.value(metadata ptr %0, metadata !4634, metadata !DIExpression()), !dbg !4637
  %3 = load i32, ptr %0, align 8, !dbg !4639, !tbaa !1364
  %4 = and i32 %3, 32, !dbg !4640
  %5 = icmp eq i32 %4, 0, !dbg !4640
  call void @llvm.dbg.value(metadata i1 %5, metadata !4630, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4632
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4641
  %7 = icmp eq i32 %6, 0, !dbg !4642
  call void @llvm.dbg.value(metadata i1 %7, metadata !4631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4632
  br i1 %5, label %8, label %18, !dbg !4643

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4645
  call void @llvm.dbg.value(metadata i1 %9, metadata !4628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4632
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4646
  %11 = xor i1 %7, true, !dbg !4646
  %12 = sext i1 %11 to i32, !dbg !4646
  br i1 %10, label %21, label %13, !dbg !4646

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4647
  %15 = load i32, ptr %14, align 4, !dbg !4647, !tbaa !1065
  %16 = icmp ne i32 %15, 9, !dbg !4648
  %17 = sext i1 %16 to i32, !dbg !4649
  br label %21, !dbg !4649

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4650

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4652
  store i32 0, ptr %20, align 4, !dbg !4654, !tbaa !1065
  br label %21, !dbg !4652

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4632
  ret i32 %22, !dbg !4655
}

; Function Attrs: nounwind
declare !dbg !4656 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4697, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 0, metadata !4698, metadata !DIExpression()), !dbg !4701
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4702
  call void @llvm.dbg.value(metadata i32 %2, metadata !4699, metadata !DIExpression()), !dbg !4701
  %3 = icmp slt i32 %2, 0, !dbg !4703
  br i1 %3, label %4, label %6, !dbg !4705

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4706
  br label %24, !dbg !4707

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4708
  %8 = icmp eq i32 %7, 0, !dbg !4708
  br i1 %8, label %13, label %9, !dbg !4710

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4711
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4712
  %12 = icmp eq i64 %11, -1, !dbg !4713
  br i1 %12, label %16, label %13, !dbg !4714

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4715
  %15 = icmp eq i32 %14, 0, !dbg !4715
  br i1 %15, label %16, label %18, !dbg !4716

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4698, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 0, metadata !4700, metadata !DIExpression()), !dbg !4701
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4717
  call void @llvm.dbg.value(metadata i32 %17, metadata !4700, metadata !DIExpression()), !dbg !4701
  br label %24, !dbg !4718

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4719
  %20 = load i32, ptr %19, align 4, !dbg !4719, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %20, metadata !4698, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 0, metadata !4700, metadata !DIExpression()), !dbg !4701
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4717
  call void @llvm.dbg.value(metadata i32 %21, metadata !4700, metadata !DIExpression()), !dbg !4701
  %22 = icmp eq i32 %20, 0, !dbg !4720
  br i1 %22, label %24, label %23, !dbg !4718

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4722, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 -1, metadata !4700, metadata !DIExpression()), !dbg !4701
  br label %24, !dbg !4724

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4701
  ret i32 %25, !dbg !4725
}

; Function Attrs: nofree nounwind
declare !dbg !4726 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4727 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4728 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4729 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4732 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4770, metadata !DIExpression()), !dbg !4771
  %2 = icmp eq ptr %0, null, !dbg !4772
  br i1 %2, label %6, label %3, !dbg !4774

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4775
  %5 = icmp eq i32 %4, 0, !dbg !4775
  br i1 %5, label %6, label %8, !dbg !4776

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4777
  br label %16, !dbg !4778

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4779, metadata !DIExpression()), !dbg !4784
  %9 = load i32, ptr %0, align 8, !dbg !4786, !tbaa !1364
  %10 = and i32 %9, 256, !dbg !4788
  %11 = icmp eq i32 %10, 0, !dbg !4788
  br i1 %11, label %14, label %12, !dbg !4789

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4790
  br label %14, !dbg !4790

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4791
  br label %16, !dbg !4792

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4771
  ret i32 %17, !dbg !4793
}

; Function Attrs: nofree nounwind
declare !dbg !4794 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4795 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4834, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %1, metadata !4835, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 %2, metadata !4836, metadata !DIExpression()), !dbg !4840
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4841
  %5 = load ptr, ptr %4, align 8, !dbg !4841, !tbaa !4842
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4843
  %7 = load ptr, ptr %6, align 8, !dbg !4843, !tbaa !4844
  %8 = icmp eq ptr %5, %7, !dbg !4845
  br i1 %8, label %9, label %27, !dbg !4846

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4847
  %11 = load ptr, ptr %10, align 8, !dbg !4847, !tbaa !1631
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4848
  %13 = load ptr, ptr %12, align 8, !dbg !4848, !tbaa !4849
  %14 = icmp eq ptr %11, %13, !dbg !4850
  br i1 %14, label %15, label %27, !dbg !4851

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4852
  %17 = load ptr, ptr %16, align 8, !dbg !4852, !tbaa !4853
  %18 = icmp eq ptr %17, null, !dbg !4854
  br i1 %18, label %19, label %27, !dbg !4855

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4856
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4857
  call void @llvm.dbg.value(metadata i64 %21, metadata !4837, metadata !DIExpression()), !dbg !4858
  %22 = icmp eq i64 %21, -1, !dbg !4859
  br i1 %22, label %29, label %23, !dbg !4861

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4862, !tbaa !1364
  %25 = and i32 %24, -17, !dbg !4862
  store i32 %25, ptr %0, align 8, !dbg !4862, !tbaa !1364
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4863
  store i64 %21, ptr %26, align 8, !dbg !4864, !tbaa !4865
  br label %29, !dbg !4866

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4867
  br label %29, !dbg !4868

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4840
  ret i32 %30, !dbg !4869
}

; Function Attrs: nofree nounwind
declare !dbg !4870 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #36 !dbg !4873 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4878, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata ptr %1, metadata !4879, metadata !DIExpression()), !dbg !4881
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !4882
  call void @llvm.dbg.value(metadata ptr %3, metadata !4880, metadata !DIExpression()), !dbg !4881
  store i8 0, ptr %3, align 1, !dbg !4883, !tbaa !1074
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %10, %4 ], !dbg !4881
  call void @llvm.dbg.value(metadata ptr %6, metadata !4880, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %5, metadata !4878, metadata !DIExpression()), !dbg !4881
  %7 = urem i64 %5, 10, !dbg !4884
  %8 = trunc i64 %7 to i8, !dbg !4887
  %9 = or i8 %8, 48, !dbg !4887
  %10 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !4888
  call void @llvm.dbg.value(metadata ptr %10, metadata !4880, metadata !DIExpression()), !dbg !4881
  store i8 %9, ptr %10, align 1, !dbg !4889, !tbaa !1074
  %11 = udiv i64 %5, 10, !dbg !4890
  call void @llvm.dbg.value(metadata i64 %11, metadata !4878, metadata !DIExpression()), !dbg !4881
  %12 = icmp ult i64 %5, 10, !dbg !4891
  br i1 %12, label %13, label %4, !dbg !4892, !llvm.loop !4893

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %10, metadata !4880, metadata !DIExpression()), !dbg !4881
  ret ptr %10, !dbg !4896
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4897 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4902, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata ptr %1, metadata !4903, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i64 %2, metadata !4904, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata ptr %3, metadata !4905, metadata !DIExpression()), !dbg !4907
  %5 = icmp eq ptr %1, null, !dbg !4908
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4910
  %7 = select i1 %5, ptr @.str.181, ptr %1, !dbg !4910
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4910
  call void @llvm.dbg.value(metadata i64 %8, metadata !4904, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata ptr %7, metadata !4903, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata ptr %6, metadata !4902, metadata !DIExpression()), !dbg !4907
  %9 = icmp eq ptr %3, null, !dbg !4911
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4913
  call void @llvm.dbg.value(metadata ptr %10, metadata !4905, metadata !DIExpression()), !dbg !4907
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4914
  call void @llvm.dbg.value(metadata i64 %11, metadata !4906, metadata !DIExpression()), !dbg !4907
  %12 = icmp ult i64 %11, -3, !dbg !4915
  br i1 %12, label %13, label %17, !dbg !4917

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4918
  %15 = icmp eq i32 %14, 0, !dbg !4918
  br i1 %15, label %16, label %29, !dbg !4919

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4920, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr %10, metadata !4927, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 0, metadata !4930, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 8, metadata !4931, metadata !DIExpression()), !dbg !4932
  store i64 0, ptr %10, align 1, !dbg !4934
  br label %29, !dbg !4935

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4936
  br i1 %18, label %19, label %20, !dbg !4938

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4939
  unreachable, !dbg !4939

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4940

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4942
  br i1 %23, label %29, label %24, !dbg !4943

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4944
  br i1 %25, label %29, label %26, !dbg !4947

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4948, !tbaa !1074
  %28 = zext i8 %27 to i32, !dbg !4949
  store i32 %28, ptr %6, align 4, !dbg !4950, !tbaa !1065
  br label %29, !dbg !4951

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4907
  ret i64 %30, !dbg !4952
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4953 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !dbg !932 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !938, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata i32 %1, metadata !939, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata ptr %2, metadata !940, metadata !DIExpression()), !dbg !4959
  %5 = icmp eq ptr %0, null, !dbg !4960
  br i1 %5, label %37, label %6, !dbg !4961

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #39, !dbg !4962
  call void @llvm.dbg.value(metadata i32 10, metadata !941, metadata !DIExpression()), !dbg !4963
  store i32 10, ptr %4, align 4, !dbg !4964, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !4965, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 10, metadata !4970, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata ptr null, metadata !4973, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 40, metadata !4976, metadata !DIExpression()), !dbg !4977
  %7 = tail call dereferenceable_or_null(40) ptr @malloc(i64 40), !dbg !4979
  call void @llvm.dbg.value(metadata ptr %7, metadata !944, metadata !DIExpression()), !dbg !4963
  %8 = icmp eq ptr %7, null, !dbg !4980
  br i1 %8, label %35, label %9, !dbg !4982

9:                                                ; preds = %6, %32
  %10 = phi i32 [ %20, %32 ], [ 10, %6 ], !dbg !4983
  %11 = phi ptr [ %29, %32 ], [ %7, %6 ], !dbg !4984
  call void @llvm.dbg.value(metadata ptr %11, metadata !944, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.value(metadata i32 %10, metadata !945, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata ptr %4, metadata !941, metadata !DIExpression(DW_OP_deref)), !dbg !4963
  %12 = call i32 @getgrouplist(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4) #39, !dbg !4986
  call void @llvm.dbg.value(metadata i32 %12, metadata !947, metadata !DIExpression()), !dbg !4985
  %13 = icmp slt i32 %12, 0, !dbg !4987
  %14 = load i32, ptr %4, align 4, !dbg !4985, !tbaa !1065
  %15 = icmp eq i32 %10, %14
  %16 = select i1 %13, i1 %15, i1 false, !dbg !4989
  call void @llvm.dbg.value(metadata i32 %14, metadata !941, metadata !DIExpression()), !dbg !4963
  br i1 %16, label %17, label %19, !dbg !4989

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %10, 1, !dbg !4990
  call void @llvm.dbg.value(metadata i32 %18, metadata !941, metadata !DIExpression()), !dbg !4963
  store i32 %18, ptr %4, align 4, !dbg !4990, !tbaa !1065
  br label %19, !dbg !4991

19:                                               ; preds = %9, %17
  %20 = phi i32 [ %18, %17 ], [ %14, %9 ], !dbg !4992
  call void @llvm.dbg.value(metadata i32 %20, metadata !941, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.value(metadata ptr %11, metadata !4965, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata i32 %20, metadata !4970, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !4993
  %21 = icmp slt i32 %20, 0, !dbg !4995
  br i1 %21, label %22, label %24, !dbg !4997

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #42, !dbg !4998
  store i32 12, ptr %23, align 4, !dbg !5000, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !948, metadata !DIExpression()), !dbg !4985
  br label %31, !dbg !5001

24:                                               ; preds = %19
  %25 = zext i32 %20 to i64, !dbg !4992
  call void @llvm.dbg.value(metadata i64 %25, metadata !4970, metadata !DIExpression()), !dbg !4993
  %26 = shl nuw nsw i64 %25, 2, !dbg !5002
  call void @llvm.dbg.value(metadata ptr %11, metadata !4973, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.value(metadata i64 %26, metadata !4976, metadata !DIExpression()), !dbg !5003
  %27 = icmp eq i32 %20, 0, !dbg !5005
  %28 = select i1 %27, i64 1, i64 %26, !dbg !5005
  %29 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %28) #45, !dbg !5006
  call void @llvm.dbg.value(metadata ptr %29, metadata !948, metadata !DIExpression()), !dbg !4985
  %30 = icmp eq ptr %29, null, !dbg !5007
  br i1 %30, label %31, label %32, !dbg !5001

31:                                               ; preds = %24, %22
  call void @free(ptr noundef nonnull %11) #39, !dbg !5009
  br label %35, !dbg !5011

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %29, metadata !944, metadata !DIExpression()), !dbg !4963
  %33 = icmp sgt i32 %12, -1, !dbg !5012
  br i1 %33, label %34, label %9, !dbg !5014, !llvm.loop !5015

34:                                               ; preds = %32
  store ptr %29, ptr %2, align 8, !dbg !5018, !tbaa !995
  call void @llvm.dbg.value(metadata i32 %20, metadata !941, metadata !DIExpression()), !dbg !4963
  br label %35, !dbg !5020

35:                                               ; preds = %31, %34, %6
  %36 = phi i32 [ -1, %6 ], [ -1, %31 ], [ %20, %34 ], !dbg !4963
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #39, !dbg !5021
  br label %98

37:                                               ; preds = %3
  %38 = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #39, !dbg !5022
  call void @llvm.dbg.value(metadata i32 %38, metadata !949, metadata !DIExpression()), !dbg !4959
  %39 = icmp slt i32 %38, 0, !dbg !5023
  br i1 %39, label %40, label %50, !dbg !5024

40:                                               ; preds = %37
  %41 = tail call ptr @__errno_location() #42, !dbg !5025
  %42 = load i32, ptr %41, align 4, !dbg !5025, !tbaa !1065
  %43 = icmp eq i32 %42, 38, !dbg !5026
  br i1 %43, label %44, label %98, !dbg !5027

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr null, metadata !4965, metadata !DIExpression()), !dbg !5028
  call void @llvm.dbg.value(metadata i64 1, metadata !4970, metadata !DIExpression()), !dbg !5028
  call void @llvm.dbg.value(metadata ptr null, metadata !4973, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.value(metadata i64 4, metadata !4976, metadata !DIExpression()), !dbg !5030
  %45 = tail call dereferenceable_or_null(4) ptr @malloc(i64 4), !dbg !5032
  call void @llvm.dbg.value(metadata ptr %45, metadata !950, metadata !DIExpression()), !dbg !5033
  %46 = icmp eq ptr %45, null, !dbg !5034
  br i1 %46, label %98, label %47, !dbg !5036

47:                                               ; preds = %44
  store ptr %45, ptr %2, align 8, !dbg !5037, !tbaa !995
  store i32 %1, ptr %45, align 4, !dbg !5039, !tbaa !1065
  %48 = icmp ne i32 %1, -1, !dbg !5040
  %49 = zext i1 %48 to i32, !dbg !5040
  br label %98

50:                                               ; preds = %37
  %51 = icmp eq i32 %38, 0, !dbg !5041
  %52 = icmp ne i32 %1, -1
  %53 = or i1 %52, %51, !dbg !5043
  %54 = zext i1 %53 to i32, !dbg !5043
  %55 = add nuw nsw i32 %38, %54, !dbg !5043
  call void @llvm.dbg.value(metadata i32 %55, metadata !949, metadata !DIExpression()), !dbg !4959
  %56 = zext i32 %55 to i64, !dbg !5044
  call void @llvm.dbg.value(metadata ptr null, metadata !4965, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i64 %56, metadata !4970, metadata !DIExpression()), !dbg !5045
  %57 = shl nuw nsw i64 %56, 2, !dbg !5047
  call void @llvm.dbg.value(metadata ptr null, metadata !4973, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i64 %57, metadata !4976, metadata !DIExpression()), !dbg !5048
  %58 = tail call ptr @malloc(i64 %57), !dbg !5050
  call void @llvm.dbg.value(metadata ptr %58, metadata !955, metadata !DIExpression()), !dbg !4959
  %59 = icmp eq ptr %58, null, !dbg !5051
  br i1 %59, label %98, label %60, !dbg !5053

60:                                               ; preds = %50
  %61 = sext i1 %52 to i32, !dbg !5054
  %62 = add nsw i32 %55, %61, !dbg !5055
  %63 = zext i1 %52 to i64
  %64 = getelementptr inbounds i32, ptr %58, i64 %63, !dbg !5056
  %65 = tail call i32 @getgroups(i32 noundef %62, ptr noundef nonnull %64) #39, !dbg !5057
  call void @llvm.dbg.value(metadata i32 %65, metadata !956, metadata !DIExpression()), !dbg !4959
  %66 = icmp slt i32 %65, 0, !dbg !5058
  br i1 %66, label %67, label %68, !dbg !5060

67:                                               ; preds = %60
  tail call void @free(ptr noundef nonnull %58) #39, !dbg !5061
  br label %98, !dbg !5063

68:                                               ; preds = %60
  br i1 %52, label %69, label %71, !dbg !5064

69:                                               ; preds = %68
  store i32 %1, ptr %58, align 4, !dbg !5066, !tbaa !1065
  %70 = add nuw nsw i32 %65, 1, !dbg !5068
  call void @llvm.dbg.value(metadata i32 %70, metadata !956, metadata !DIExpression()), !dbg !4959
  br label %71, !dbg !5069

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %70, %69 ], [ %65, %68 ], !dbg !4959
  call void @llvm.dbg.value(metadata i32 %72, metadata !956, metadata !DIExpression()), !dbg !4959
  store ptr %58, ptr %2, align 8, !dbg !5070, !tbaa !995
  %73 = icmp ugt i32 %72, 1, !dbg !5071
  br i1 %73, label %74, label %98, !dbg !5072

74:                                               ; preds = %71
  %75 = load i32, ptr %58, align 4, !dbg !5073, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %75, metadata !957, metadata !DIExpression()), !dbg !5074
  %76 = zext i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %58, i64 %76, !dbg !5075
  call void @llvm.dbg.value(metadata ptr %77, metadata !960, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %58, metadata !961, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 %72, metadata !956, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata ptr %58, metadata !955, metadata !DIExpression()), !dbg !4959
  %78 = getelementptr inbounds i32, ptr %58, i64 1, !dbg !5077
  call void @llvm.dbg.value(metadata ptr %78, metadata !961, metadata !DIExpression()), !dbg !5076
  br label %79, !dbg !5078

79:                                               ; preds = %74, %92
  %80 = phi i32 [ %93, %92 ], [ %75, %74 ]
  %81 = phi ptr [ %96, %92 ], [ %78, %74 ]
  %82 = phi i32 [ %95, %92 ], [ %72, %74 ]
  %83 = phi ptr [ %94, %92 ], [ %58, %74 ]
  call void @llvm.dbg.value(metadata i32 %82, metadata !956, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata ptr %83, metadata !955, metadata !DIExpression()), !dbg !4959
  %84 = load i32, ptr %81, align 4, !dbg !5079, !tbaa !1065
  %85 = icmp eq i32 %84, %75, !dbg !5083
  %86 = icmp eq i32 %84, %80
  %87 = select i1 %85, i1 true, i1 %86, !dbg !5084
  br i1 %87, label %88, label %90, !dbg !5084

88:                                               ; preds = %79
  %89 = add nsw i32 %82, -1, !dbg !5085
  call void @llvm.dbg.value(metadata i32 %89, metadata !956, metadata !DIExpression()), !dbg !4959
  br label %92, !dbg !5086

90:                                               ; preds = %79
  %91 = getelementptr inbounds i32, ptr %83, i64 1, !dbg !5087
  call void @llvm.dbg.value(metadata ptr %91, metadata !955, metadata !DIExpression()), !dbg !4959
  store i32 %84, ptr %91, align 4, !dbg !5088, !tbaa !1065
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i32 [ %80, %88 ], [ %84, %90 ]
  %94 = phi ptr [ %83, %88 ], [ %91, %90 ], !dbg !4959
  %95 = phi i32 [ %89, %88 ], [ %82, %90 ], !dbg !4959
  call void @llvm.dbg.value(metadata i32 %95, metadata !956, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata ptr %94, metadata !955, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata ptr %81, metadata !961, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !5076
  %96 = getelementptr inbounds i32, ptr %81, i64 1, !dbg !5077
  call void @llvm.dbg.value(metadata ptr %96, metadata !961, metadata !DIExpression()), !dbg !5076
  %97 = icmp ult ptr %96, %77, !dbg !5089
  br i1 %97, label %79, label %98, !dbg !5078, !llvm.loop !5090

98:                                               ; preds = %92, %44, %40, %47, %67, %71, %50, %35
  %99 = phi i32 [ %36, %35 ], [ %49, %47 ], [ -1, %50 ], [ -1, %67 ], [ %72, %71 ], [ -1, %40 ], [ -1, %44 ], [ %95, %92 ], !dbg !4959
  ret i32 %99, !dbg !5092
}

declare !dbg !5093 i32 @getgrouplist(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5097 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5099, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i64 %1, metadata !5100, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i64 %2, metadata !5101, metadata !DIExpression()), !dbg !5103
  %4 = icmp eq i64 %2, 0, !dbg !5104
  br i1 %4, label %8, label %5, !dbg !5104

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5104
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5104
  br i1 %7, label %13, label %8, !dbg !5104

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5102, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5102, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5103
  %9 = mul i64 %2, %1, !dbg !5104
  call void @llvm.dbg.value(metadata i64 %9, metadata !5102, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata ptr %0, metadata !5106, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.value(metadata i64 %9, metadata !5109, metadata !DIExpression()), !dbg !5110
  %10 = icmp eq i64 %9, 0, !dbg !5112
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5112
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !5113
  br label %15, !dbg !5114

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5102, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5103
  %14 = tail call ptr @__errno_location() #42, !dbg !5115
  store i32 12, ptr %14, align 4, !dbg !5117, !tbaa !1065
  br label %15, !dbg !5118

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5103
  ret ptr %16, !dbg !5119
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5120 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5124, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5125, metadata !DIExpression()), !dbg !5131
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5132
  %4 = icmp eq i32 %3, 0, !dbg !5132
  br i1 %4, label %5, label %12, !dbg !5134

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5135, metadata !DIExpression()), !dbg !5139
  %6 = load i16, ptr %2, align 16, !dbg !5142
  %7 = icmp eq i16 %6, 67, !dbg !5142
  br i1 %7, label %11, label %8, !dbg !5143

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5135, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.value(metadata ptr @.str.1.188, metadata !5138, metadata !DIExpression()), !dbg !5144
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.188, i64 6), !dbg !5146
  %10 = icmp eq i32 %9, 0, !dbg !5147
  br i1 %10, label %11, label %12, !dbg !5148

11:                                               ; preds = %8, %5
  br label %12, !dbg !5149

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5129
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5150
  ret i1 %13, !dbg !5150
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5155, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.value(metadata ptr %1, metadata !5156, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.value(metadata i64 %2, metadata !5157, metadata !DIExpression()), !dbg !5158
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5159
  ret i32 %4, !dbg !5160
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5161 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5165, metadata !DIExpression()), !dbg !5166
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5167
  ret ptr %2, !dbg !5168
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5171, metadata !DIExpression()), !dbg !5173
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5174
  call void @llvm.dbg.value(metadata ptr %2, metadata !5172, metadata !DIExpression()), !dbg !5173
  ret ptr %2, !dbg !5175
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5178, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata ptr %1, metadata !5179, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata i64 %2, metadata !5180, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.value(metadata i32 %0, metadata !5171, metadata !DIExpression()), !dbg !5186
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5188
  call void @llvm.dbg.value(metadata ptr %4, metadata !5172, metadata !DIExpression()), !dbg !5186
  call void @llvm.dbg.value(metadata ptr %4, metadata !5181, metadata !DIExpression()), !dbg !5185
  %5 = icmp eq ptr %4, null, !dbg !5189
  br i1 %5, label %6, label %9, !dbg !5190

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5191
  br i1 %7, label %19, label %8, !dbg !5194

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5195, !tbaa !1074
  br label %19, !dbg !5196

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5197
  call void @llvm.dbg.value(metadata i64 %10, metadata !5182, metadata !DIExpression()), !dbg !5198
  %11 = icmp ult i64 %10, %2, !dbg !5199
  br i1 %11, label %12, label %14, !dbg !5201

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5202
  call void @llvm.dbg.value(metadata ptr %1, metadata !5204, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata ptr %4, metadata !5207, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i64 %13, metadata !5208, metadata !DIExpression()), !dbg !5209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5211
  br label %19, !dbg !5212

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5213
  br i1 %15, label %19, label %16, !dbg !5216

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5217
  call void @llvm.dbg.value(metadata ptr %1, metadata !5204, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata ptr %4, metadata !5207, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata i64 %17, metadata !5208, metadata !DIExpression()), !dbg !5219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5221
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5222
  store i8 0, ptr %18, align 1, !dbg !5223, !tbaa !1074
  br label %19, !dbg !5224

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5225
  ret i32 %20, !dbg !5226
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!99, !849, !492, !496, !511, !817, !852, !854, !563, !577, !628, !856, !868, !809, !875, !909, !911, !913, !917, !919, !921, !923, !925, !833, !928, !966, !969, !973, !975}
!llvm.ident = !{!977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977}
!llvm.module.flags = !{!978, !979, !980, !981, !982, !983}

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
!99 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100, retainedTypes: !123, globals: !137, splitDebugInlining: false, nameTableKind: None)
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
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 46, baseType: !129)
!128 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!510 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !511, file: !512, line: 66, type: !558, isLocal: false, isDefinition: true)
!511 = distinct !DICompileUnit(language: DW_LANG_C11, file: !512, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !513, globals: !514, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!513 = !{!125, !132}
!514 = !{!515, !517, !537, !539, !541, !543, !509, !545, !547, !549, !551, !556}
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !512, line: 272, type: !292, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "old_file_name", scope: !519, file: !512, line: 304, type: !130, isLocal: true, isDefinition: true)
!519 = distinct !DISubprogram(name: "verror_at_line", scope: !512, file: !512, line: 298, type: !520, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !530)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !103, !103, !130, !109, !130, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !524)
!524 = !{!525, !527, !528, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !523, file: !526, baseType: !109, size: 32)
!526 = !DIFile(filename: "lib/error.c", directory: "/src")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !523, file: !526, baseType: !109, size: 32, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !523, file: !526, baseType: !125, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !523, file: !526, baseType: !125, size: 64, offset: 128)
!530 = !{!531, !532, !533, !534, !535, !536}
!531 = !DILocalVariable(name: "status", arg: 1, scope: !519, file: !512, line: 298, type: !103)
!532 = !DILocalVariable(name: "errnum", arg: 2, scope: !519, file: !512, line: 298, type: !103)
!533 = !DILocalVariable(name: "file_name", arg: 3, scope: !519, file: !512, line: 298, type: !130)
!534 = !DILocalVariable(name: "line_number", arg: 4, scope: !519, file: !512, line: 298, type: !109)
!535 = !DILocalVariable(name: "message", arg: 5, scope: !519, file: !512, line: 298, type: !130)
!536 = !DILocalVariable(name: "args", arg: 6, scope: !519, file: !512, line: 298, type: !522)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "old_line_number", scope: !519, file: !512, line: 305, type: !109, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !512, line: 338, type: !299, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !331, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !512, line: 346, type: !309, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "error_message_count", scope: !511, file: !512, line: 69, type: !109, isLocal: false, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !511, file: !512, line: 295, type: !103, isLocal: false, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !326, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !512, line: 208, type: !553, isLocal: true, isDefinition: true)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 21)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !512, line: 214, type: !292, isLocal: true, isDefinition: true)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null}
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "program_name", scope: !563, file: !564, line: 31, type: !130, isLocal: false, isDefinition: true)
!563 = distinct !DICompileUnit(language: DW_LANG_C11, file: !564, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !565, globals: !566, splitDebugInlining: false, nameTableKind: None)
!564 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!565 = !{!124}
!566 = !{!561, !567, !569}
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !564, line: 46, type: !331, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !564, line: 49, type: !299, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "utf07FF", scope: !573, file: !574, line: 46, type: !601, isLocal: true, isDefinition: true)
!573 = distinct !DISubprogram(name: "proper_name_lite", scope: !574, file: !574, line: 38, type: !575, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !579)
!574 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!575 = !DISubroutineType(types: !576)
!576 = !{!130, !130, !130}
!577 = distinct !DICompileUnit(language: DW_LANG_C11, file: !574, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !578, splitDebugInlining: false, nameTableKind: None)
!578 = !{!571}
!579 = !{!580, !581, !582, !583, !588}
!580 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !573, file: !574, line: 38, type: !130)
!581 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !573, file: !574, line: 38, type: !130)
!582 = !DILocalVariable(name: "translation", scope: !573, file: !574, line: 40, type: !130)
!583 = !DILocalVariable(name: "w", scope: !573, file: !574, line: 47, type: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !585, line: 37, baseType: !586)
!585 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !136, line: 57, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !136, line: 42, baseType: !109)
!588 = !DILocalVariable(name: "mbs", scope: !573, file: !574, line: 48, type: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !590, line: 6, baseType: !591)
!590 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !592, line: 21, baseType: !593)
!592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 13, size: 64, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !593, file: !592, line: 15, baseType: !103, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !593, file: !592, line: 20, baseType: !597, size: 32, offset: 32)
!597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !592, line: 16, size: 32, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !597, file: !592, line: 18, baseType: !109, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !597, file: !592, line: 19, baseType: !299, size: 32)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 16, elements: !310)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !604, line: 78, type: !331, isLocal: true, isDefinition: true)
!604 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !604, line: 79, type: !304, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !604, line: 80, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 13)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !604, line: 81, type: !609, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !604, line: 82, type: !191, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !604, line: 83, type: !309, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !604, line: 84, type: !331, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !604, line: 85, type: !326, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !604, line: 86, type: !326, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !604, line: 87, type: !331, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !628, file: !604, line: 76, type: !714, isLocal: false, isDefinition: true)
!628 = distinct !DICompileUnit(language: DW_LANG_C11, file: !604, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !629, retainedTypes: !649, globals: !650, splitDebugInlining: false, nameTableKind: None)
!629 = !{!630, !644, !107}
!630 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !631, line: 42, baseType: !109, size: 32, elements: !632)
!631 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!633 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!634 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!635 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!636 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!637 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!638 = !DIEnumerator(name: "c_quoting_style", value: 5)
!639 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!640 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!641 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!642 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!643 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!644 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !631, line: 254, baseType: !109, size: 32, elements: !645)
!645 = !{!646, !647, !648}
!646 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!647 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!648 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!649 = !{!103, !126, !127}
!650 = !{!602, !605, !607, !612, !614, !616, !618, !620, !622, !624, !626, !651, !655, !665, !667, !672, !674, !676, !678, !680, !703, !710, !712}
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !628, file: !604, line: 92, type: !653, isLocal: false, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 320, elements: !85)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !628, file: !604, line: 1040, type: !657, isLocal: false, isDefinition: true)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !604, line: 56, size: 448, elements: !658)
!658 = !{!659, !660, !661, !663, !664}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !657, file: !604, line: 59, baseType: !630, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !604, line: 62, baseType: !103, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !657, file: !604, line: 66, baseType: !662, size: 256, offset: 64)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !332)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !657, file: !604, line: 69, baseType: !130, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !657, file: !604, line: 72, baseType: !130, size: 64, offset: 384)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !628, file: !604, line: 107, type: !657, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "slot0", scope: !628, file: !604, line: 831, type: !669, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 256)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !604, line: 321, type: !309, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !604, line: 357, type: !309, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !604, line: 358, type: !309, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !604, line: 199, type: !326, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "quote", scope: !682, file: !604, line: 228, type: !701, isLocal: true, isDefinition: true)
!682 = distinct !DISubprogram(name: "gettext_quote", scope: !604, file: !604, line: 197, type: !683, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!130, !130, !630}
!685 = !{!686, !687, !688, !689, !690}
!686 = !DILocalVariable(name: "msgid", arg: 1, scope: !682, file: !604, line: 197, type: !130)
!687 = !DILocalVariable(name: "s", arg: 2, scope: !682, file: !604, line: 197, type: !630)
!688 = !DILocalVariable(name: "translation", scope: !682, file: !604, line: 199, type: !130)
!689 = !DILocalVariable(name: "w", scope: !682, file: !604, line: 229, type: !584)
!690 = !DILocalVariable(name: "mbs", scope: !682, file: !604, line: 230, type: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !590, line: 6, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !592, line: 21, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 13, size: 64, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !693, file: !592, line: 15, baseType: !103, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !693, file: !592, line: 20, baseType: !697, size: 32, offset: 32)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !592, line: 16, size: 32, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !697, file: !592, line: 18, baseType: !109, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !697, file: !592, line: 19, baseType: !299, size: 32)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !702)
!702 = !{!311, !301}
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "slotvec", scope: !628, file: !604, line: 834, type: !705, isLocal: true, isDefinition: true)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !604, line: 823, size: 128, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !706, file: !604, line: 825, baseType: !127, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !706, file: !604, line: 826, baseType: !124, size: 64, offset: 64)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "nslots", scope: !628, file: !604, line: 832, type: !103, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "slotvec0", scope: !628, file: !604, line: 833, type: !706, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 704, elements: !716)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!716 = !{!717}
!717 = !DISubrange(count: 11)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !720, line: 274, type: !380, isLocal: true, isDefinition: true)
!720 = !DIFile(filename: "lib/userspec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9b1d112c5d74602907b912457199dc83")
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !720, line: 160, type: !609, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !720, line: 165, type: !79, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !720, line: 169, type: !609, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !720, line: 202, type: !145, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !720, line: 229, type: !326, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !733, line: 67, type: !390, isLocal: true, isDefinition: true)
!733 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !733, line: 69, type: !326, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !733, line: 83, type: !326, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !733, line: 83, type: !299, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !733, line: 85, type: !309, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !733, line: 88, type: !744, isLocal: true, isDefinition: true)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 171)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !733, line: 88, type: !480, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !733, line: 105, type: !155, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !733, line: 109, type: !753, isLocal: true, isDefinition: true)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 23)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !733, line: 113, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 28)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !733, line: 120, type: !763, isLocal: true, isDefinition: true)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 32)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !733, line: 127, type: !768, isLocal: true, isDefinition: true)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 36)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !733, line: 134, type: !350, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !733, line: 142, type: !162, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !733, line: 150, type: !777, isLocal: true, isDefinition: true)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 48)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !733, line: 159, type: !782, isLocal: true, isDefinition: true)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 52)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !733, line: 170, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 60)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !733, line: 248, type: !191, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !733, line: 248, type: !369, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !733, line: 254, type: !191, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !733, line: 254, type: !145, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !733, line: 254, type: !350, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !733, line: 259, type: !3, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !733, line: 259, type: !804, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 29)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !809, file: !810, line: 26, type: !812, isLocal: false, isDefinition: true)
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !811, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!811 = !{!807}
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 376, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 47)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "exit_failure", scope: !817, file: !818, line: 24, type: !820, isLocal: false, isDefinition: true)
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !819, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!819 = !{!815}
!820 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !823, line: 34, type: !19, isLocal: true, isDefinition: true)
!823 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !823, line: 34, type: !326, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !823, line: 34, type: !181, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !830, line: 108, type: !79, isLocal: true, isDefinition: true)
!830 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "internal_state", scope: !833, file: !830, line: 97, type: !836, isLocal: true, isDefinition: true)
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !834, globals: !835, splitDebugInlining: false, nameTableKind: None)
!834 = !{!125, !127, !132}
!835 = !{!828, !831}
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !590, line: 6, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !592, line: 21, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 13, size: 64, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !838, file: !592, line: 15, baseType: !103, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !838, file: !592, line: 20, baseType: !842, size: 32, offset: 32)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !592, line: 16, size: 32, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !842, file: !592, line: 18, baseType: !109, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !842, file: !592, line: 19, baseType: !299, size: 32)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !848, line: 35, type: !304, isLocal: true, isDefinition: true)
!848 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !850, globals: !851, splitDebugInlining: false, nameTableKind: None)
!850 = !{!125, !133, !132}
!851 = !{!473, !476, !478, !483, !485}
!852 = distinct !DICompileUnit(language: DW_LANG_C11, file: !853, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!853 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!854 = distinct !DICompileUnit(language: DW_LANG_C11, file: !855, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!855 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !857, retainedTypes: !866, globals: !867, splitDebugInlining: false, nameTableKind: None)
!857 = !{!858}
!858 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !859, line: 30, baseType: !109, size: 32, elements: !860)
!859 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!860 = !{!861, !862, !863, !864, !865}
!861 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!862 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!863 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!864 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!865 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!866 = !{!125, !200, !207}
!867 = !{!718, !721, !723, !725, !727, !729}
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !869, retainedTypes: !873, globals: !874, splitDebugInlining: false, nameTableKind: None)
!869 = !{!870}
!870 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !733, line: 40, baseType: !109, size: 32, elements: !871)
!871 = !{!872}
!872 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!873 = !{!125}
!874 = !{!731, !734, !736, !738, !740, !742, !747, !749, !751, !756, !761, !766, !771, !773, !775, !780, !785, !790, !792, !794, !796, !798, !800, !802}
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !877, retainedTypes: !908, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!877 = !{!878, !890}
!878 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !879, file: !876, line: 188, baseType: !109, size: 32, elements: !888)
!879 = distinct !DISubprogram(name: "x2nrealloc", scope: !876, file: !876, line: 176, type: !880, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !883)
!880 = !DISubroutineType(types: !881)
!881 = !{!125, !125, !882, !127}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!883 = !{!884, !885, !886, !887}
!884 = !DILocalVariable(name: "p", arg: 1, scope: !879, file: !876, line: 176, type: !125)
!885 = !DILocalVariable(name: "pn", arg: 2, scope: !879, file: !876, line: 176, type: !882)
!886 = !DILocalVariable(name: "s", arg: 3, scope: !879, file: !876, line: 176, type: !127)
!887 = !DILocalVariable(name: "n", scope: !879, file: !876, line: 178, type: !127)
!888 = !{!889}
!889 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!890 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !891, file: !876, line: 228, baseType: !109, size: 32, elements: !888)
!891 = distinct !DISubprogram(name: "xpalloc", scope: !876, file: !876, line: 223, type: !892, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !898)
!892 = !DISubroutineType(types: !893)
!893 = !{!125, !125, !894, !895, !897, !895}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !896, line: 130, baseType: !897)
!896 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !128, line: 35, baseType: !263)
!898 = !{!899, !900, !901, !902, !903, !904, !905, !906, !907}
!899 = !DILocalVariable(name: "pa", arg: 1, scope: !891, file: !876, line: 223, type: !125)
!900 = !DILocalVariable(name: "pn", arg: 2, scope: !891, file: !876, line: 223, type: !894)
!901 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !891, file: !876, line: 223, type: !895)
!902 = !DILocalVariable(name: "n_max", arg: 4, scope: !891, file: !876, line: 223, type: !897)
!903 = !DILocalVariable(name: "s", arg: 5, scope: !891, file: !876, line: 223, type: !895)
!904 = !DILocalVariable(name: "n0", scope: !891, file: !876, line: 230, type: !895)
!905 = !DILocalVariable(name: "n", scope: !891, file: !876, line: 237, type: !895)
!906 = !DILocalVariable(name: "nbytes", scope: !891, file: !876, line: 248, type: !895)
!907 = !DILocalVariable(name: "adjusted_nbytes", scope: !891, file: !876, line: 252, type: !895)
!908 = !{!124, !125, !223, !263, !129}
!909 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !910, splitDebugInlining: false, nameTableKind: None)
!910 = !{!821, !824, !826}
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !914, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !915, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "lib/xstrtoul.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b318e5928e8382cfa3ae094c8d00222")
!915 = !{!858, !107}
!916 = !{!103, !126, !124, !223, !129}
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !873, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !873, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !927, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!927 = !{!133}
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !930, retainedTypes: !965, splitDebugInlining: false, nameTableKind: None)
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
!966 = distinct !DICompileUnit(language: DW_LANG_C11, file: !967, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !968, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!968 = !{!223, !129, !125}
!969 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !970, splitDebugInlining: false, nameTableKind: None)
!970 = !{!971, !846}
!971 = !DIGlobalVariableExpression(var: !972, expr: !DIExpression())
!972 = distinct !DIGlobalVariable(scope: null, file: !848, line: 35, type: !309, isLocal: true, isDefinition: true)
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!975 = distinct !DICompileUnit(language: DW_LANG_C11, file: !976, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !873, splitDebugInlining: false, nameTableKind: None)
!976 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!977 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!978 = !{i32 7, !"Dwarf Version", i32 5}
!979 = !{i32 2, !"Debug Info Version", i32 3}
!980 = !{i32 1, !"wchar_size", i32 4}
!981 = !{i32 8, !"PIC Level", i32 2}
!982 = !{i32 7, !"PIE Level", i32 2}
!983 = !{i32 7, !"uwtable", i32 2}
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
!1032 = !DILocation(line: 857, column: 3, scope: !1014, inlinedAt: !1031)
!1033 = !DILocation(line: 861, column: 29, scope: !1014, inlinedAt: !1031)
!1034 = !DILocation(line: 862, column: 7, scope: !1035, inlinedAt: !1031)
!1035 = distinct !DILexicalBlock(scope: !1014, file: !102, line: 862, column: 7)
!1036 = !DILocation(line: 862, column: 19, scope: !1035, inlinedAt: !1031)
!1037 = !DILocation(line: 862, column: 22, scope: !1035, inlinedAt: !1031)
!1038 = !DILocation(line: 862, column: 7, scope: !1014, inlinedAt: !1031)
!1039 = !DILocation(line: 868, column: 7, scope: !1040, inlinedAt: !1031)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !102, line: 863, column: 5)
!1041 = !DILocation(line: 870, column: 5, scope: !1040, inlinedAt: !1031)
!1042 = !DILocation(line: 875, column: 3, scope: !1014, inlinedAt: !1031)
!1043 = !DILocation(line: 877, column: 3, scope: !1014, inlinedAt: !1031)
!1044 = !DILocation(line: 141, column: 3, scope: !984)
!1045 = !DISubprogram(name: "dcgettext", scope: !1046, file: !1046, line: 51, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1046 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!124, !130, !130, !103}
!1049 = !{}
!1050 = !DISubprogram(name: "__fprintf_chk", scope: !1051, file: !1051, line: 93, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1051 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!103, !1054, !103, !1055, null}
!1054 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!1055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1056 = !DISubprogram(name: "__printf_chk", scope: !1051, file: !1051, line: 95, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!103, !103, !1055, null}
!1059 = !DISubprogram(name: "fputs_unlocked", scope: !1060, file: !1060, line: 691, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
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
!1116 = !DILocation(line: 618, column: 5, scope: !227)
!1117 = !DILocation(line: 620, column: 23, scope: !213)
!1118 = !DILocation(line: 625, column: 39, scope: !213)
!1119 = !DILocation(line: 626, column: 3, scope: !213)
!1120 = !DILocation(line: 626, column: 10, scope: !213)
!1121 = !DILocation(line: 626, column: 21, scope: !213)
!1122 = !DILocation(line: 628, column: 44, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !102, line: 628, column: 11)
!1124 = distinct !DILexicalBlock(scope: !213, file: !102, line: 627, column: 5)
!1125 = !DILocation(line: 628, column: 32, scope: !1123)
!1126 = !DILocation(line: 628, column: 49, scope: !1123)
!1127 = !DILocation(line: 628, column: 11, scope: !1124)
!1128 = !DILocation(line: 630, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !102, line: 630, column: 11)
!1130 = !DILocation(line: 630, column: 11, scope: !1124)
!1131 = !DILocation(line: 632, column: 26, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !102, line: 632, column: 15)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !102, line: 631, column: 9)
!1134 = !DILocation(line: 632, column: 34, scope: !1132)
!1135 = !DILocation(line: 632, column: 37, scope: !1132)
!1136 = !DILocation(line: 632, column: 15, scope: !1133)
!1137 = !DILocation(line: 636, column: 16, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !102, line: 636, column: 15)
!1139 = !DILocation(line: 636, column: 29, scope: !1138)
!1140 = !DILocation(line: 640, column: 16, scope: !1124)
!1141 = distinct !{!1141, !1119, !1142, !1112}
!1142 = !DILocation(line: 641, column: 5, scope: !213)
!1143 = !DILocation(line: 644, column: 3, scope: !213)
!1144 = !DILocation(line: 0, scope: !1077, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 648, column: 31, scope: !213)
!1146 = !DILocation(line: 0, scope: !1077, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 649, column: 31, scope: !213)
!1148 = !DILocation(line: 0, scope: !1077, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 650, column: 31, scope: !213)
!1150 = !DILocation(line: 0, scope: !1077, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 651, column: 31, scope: !213)
!1152 = !DILocation(line: 0, scope: !1077, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 652, column: 31, scope: !213)
!1154 = !DILocation(line: 0, scope: !1077, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 653, column: 31, scope: !213)
!1156 = !DILocation(line: 0, scope: !1077, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 654, column: 31, scope: !213)
!1158 = !DILocation(line: 0, scope: !1077, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 655, column: 31, scope: !213)
!1160 = !DILocation(line: 0, scope: !1077, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 656, column: 31, scope: !213)
!1162 = !DILocation(line: 0, scope: !1077, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 657, column: 31, scope: !213)
!1164 = !DILocation(line: 663, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !213, file: !102, line: 663, column: 7)
!1166 = !DILocation(line: 664, column: 7, scope: !1165)
!1167 = !DILocation(line: 664, column: 10, scope: !1165)
!1168 = !DILocation(line: 663, column: 7, scope: !213)
!1169 = !DILocation(line: 669, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !102, line: 665, column: 5)
!1171 = !DILocation(line: 671, column: 5, scope: !1170)
!1172 = !DILocation(line: 676, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1165, file: !102, line: 673, column: 5)
!1174 = !DILocation(line: 679, column: 3, scope: !213)
!1175 = !DILocation(line: 683, column: 3, scope: !213)
!1176 = !DILocation(line: 686, column: 3, scope: !213)
!1177 = !DILocation(line: 688, column: 3, scope: !213)
!1178 = !DILocation(line: 691, column: 3, scope: !213)
!1179 = !DILocation(line: 695, column: 3, scope: !213)
!1180 = !DILocation(line: 696, column: 1, scope: !213)
!1181 = !DISubprogram(name: "setlocale", scope: !1182, file: !1182, line: 122, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1182 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!124, !103, !130}
!1185 = !DISubprogram(name: "strncmp", scope: !1186, file: !1186, line: 159, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1186 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!103, !130, !130, !127}
!1189 = !DISubprogram(name: "exit", scope: !1190, file: !1190, line: 624, type: !985, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1190 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1191 = !DISubprogram(name: "getenv", scope: !1190, file: !1190, line: 641, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!124, !130}
!1194 = !DISubprogram(name: "strcmp", scope: !1186, file: !1186, line: 156, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!103, !130, !130}
!1197 = !DISubprogram(name: "strspn", scope: !1186, file: !1186, line: 297, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!129, !130, !130}
!1200 = !DISubprogram(name: "strchr", scope: !1186, file: !1186, line: 246, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!124, !130, !103}
!1203 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1209 = !DISubprogram(name: "strcspn", scope: !1186, file: !1186, line: 293, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1210 = !DISubprogram(name: "fwrite_unlocked", scope: !1060, file: !1060, line: 704, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!127, !1213, !127, !127, !1054}
!1213 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1216 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 145, type: !1217, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1220)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!103, !103, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1234, !1246, !1247, !1249}
!1221 = !DILocalVariable(name: "argc", arg: 1, scope: !1216, file: !2, line: 145, type: !103)
!1222 = !DILocalVariable(name: "argv", arg: 2, scope: !1216, file: !2, line: 145, type: !1219)
!1223 = !DILocalVariable(name: "optc", scope: !1216, file: !2, line: 147, type: !103)
!1224 = !DILocalVariable(name: "selinux_enabled", scope: !1216, file: !2, line: 148, type: !103)
!1225 = !DILocalVariable(name: "smack_enabled", scope: !1216, file: !2, line: 149, type: !223)
!1226 = !DILocalVariable(name: "n_ids", scope: !1216, file: !2, line: 207, type: !127)
!1227 = !DILocalVariable(name: "default_format", scope: !1216, file: !2, line: 216, type: !223)
!1228 = !DILocalVariable(name: "pw_name", scope: !1229, file: !2, line: 257, type: !124)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 256, column: 9)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 255, column: 7)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 255, column: 7)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 247, column: 5)
!1233 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 246, column: 7)
!1234 = !DILocalVariable(name: "pwd", scope: !1229, file: !2, line: 258, type: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1237, line: 49, size: 384, elements: !1238)
!1237 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1236, file: !1237, line: 51, baseType: !124, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1236, file: !1237, line: 52, baseType: !124, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1236, file: !1237, line: 54, baseType: !202, size: 32, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1236, file: !1237, line: 55, baseType: !208, size: 32, offset: 160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1236, file: !1237, line: 56, baseType: !124, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1236, file: !1237, line: 57, baseType: !124, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1236, file: !1237, line: 58, baseType: !124, size: 64, offset: 320)
!1246 = !DILocalVariable(name: "spec", scope: !1229, file: !2, line: 259, type: !130)
!1247 = !DILocalVariable(name: "NO_UID", scope: !1248, file: !2, line: 291, type: !200)
!1248 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 287, column: 5)
!1249 = !DILocalVariable(name: "NO_GID", scope: !1248, file: !2, line: 292, type: !207)
!1250 = !DILocation(line: 0, scope: !1216)
!1251 = !DILocation(line: 152, column: 21, scope: !1216)
!1252 = !DILocation(line: 152, column: 3, scope: !1216)
!1253 = !DILocation(line: 153, column: 3, scope: !1216)
!1254 = !DILocation(line: 154, column: 3, scope: !1216)
!1255 = !DILocation(line: 155, column: 3, scope: !1216)
!1256 = !DILocation(line: 157, column: 3, scope: !1216)
!1257 = !DILocation(line: 159, column: 3, scope: !1216)
!1258 = !DILocation(line: 159, column: 18, scope: !1216)
!1259 = !DILocation(line: 176, column: 13, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 175, column: 15)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 162, column: 9)
!1262 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 160, column: 5)
!1263 = !DILocation(line: 187, column: 11, scope: !1261)
!1264 = !DILocation(line: 190, column: 11, scope: !1261)
!1265 = !DILocation(line: 193, column: 11, scope: !1261)
!1266 = !DILocation(line: 196, column: 11, scope: !1261)
!1267 = !DILocation(line: 199, column: 11, scope: !1261)
!1268 = !DILocation(line: 200, column: 9, scope: !1261)
!1269 = !DILocation(line: 201, column: 9, scope: !1261)
!1270 = !DILocation(line: 203, column: 11, scope: !1261)
!1271 = !DILocation(line: 0, scope: !1261)
!1272 = distinct !{!1272, !1257, !1273, !1112}
!1273 = !DILocation(line: 205, column: 5, scope: !1216)
!1274 = !DILocation(line: 207, column: 25, scope: !1216)
!1275 = !DILocation(line: 207, column: 23, scope: !1216)
!1276 = !DILocation(line: 207, column: 18, scope: !1216)
!1277 = !DILocation(line: 213, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 213, column: 7)
!1279 = !DILocation(line: 213, column: 19, scope: !1278)
!1280 = !DILocation(line: 213, column: 17, scope: !1278)
!1281 = !DILocation(line: 213, column: 32, scope: !1278)
!1282 = !DILocation(line: 213, column: 30, scope: !1278)
!1283 = !DILocation(line: 213, column: 63, scope: !1278)
!1284 = !DILocation(line: 213, column: 7, scope: !1216)
!1285 = !DILocation(line: 214, column: 5, scope: !1278)
!1286 = !DILocation(line: 217, column: 28, scope: !1216)
!1287 = !DILocation(line: 221, column: 22, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 221, column: 7)
!1289 = !DILocation(line: 234, column: 13, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 234, column: 7)
!1291 = !DILocation(line: 246, column: 7, scope: !1216)
!1292 = !DILocation(line: 221, column: 26, scope: !1288)
!1293 = !DILocation(line: 221, column: 35, scope: !1288)
!1294 = !DILocation(line: 221, column: 38, scope: !1288)
!1295 = !DILocation(line: 221, column: 7, scope: !1216)
!1296 = !DILocation(line: 222, column: 5, scope: !1288)
!1297 = !DILocation(line: 225, column: 25, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 225, column: 7)
!1299 = !DILocation(line: 225, column: 7, scope: !1216)
!1300 = !DILocation(line: 226, column: 5, scope: !1298)
!1301 = !DILocation(line: 235, column: 7, scope: !1290)
!1302 = !DILocation(line: 236, column: 35, scope: !1290)
!1303 = !DILocation(line: 248, column: 30, scope: !1232)
!1304 = !DILocation(line: 248, column: 22, scope: !1232)
!1305 = !{!1306, !1306, i64 0}
!1306 = !{!"_Bool", !997, i64 0}
!1307 = !DILocation(line: 253, column: 16, scope: !1232)
!1308 = !DILocation(line: 253, column: 13, scope: !1232)
!1309 = !DILocation(line: 255, column: 21, scope: !1230)
!1310 = !DILocation(line: 255, column: 7, scope: !1231)
!1311 = !DILocation(line: 257, column: 11, scope: !1229)
!1312 = !DILocation(line: 0, scope: !1229)
!1313 = !DILocation(line: 257, column: 17, scope: !1229)
!1314 = !DILocation(line: 259, column: 30, scope: !1229)
!1315 = !DILocation(line: 263, column: 15, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 263, column: 15)
!1317 = !DILocation(line: 263, column: 15, scope: !1229)
!1318 = !DILocation(line: 265, column: 21, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 265, column: 19)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 264, column: 13)
!1321 = !DILocation(line: 265, column: 19, scope: !1320)
!1322 = !DILocation(line: 266, column: 23, scope: !1319)
!1323 = !DILocation(line: 266, column: 33, scope: !1319)
!1324 = !DILocation(line: 266, column: 64, scope: !1319)
!1325 = !DILocation(line: 266, column: 54, scope: !1319)
!1326 = !DILocation(line: 268, column: 19, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 268, column: 15)
!1328 = !DILocation(line: 268, column: 15, scope: !1229)
!1329 = !DILocation(line: 270, column: 15, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 269, column: 13)
!1331 = !DILocation(line: 271, column: 18, scope: !1330)
!1332 = !DILocation(line: 272, column: 13, scope: !1330)
!1333 = !DILocation(line: 275, column: 20, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 275, column: 19)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 274, column: 13)
!1336 = !DILocation(line: 275, column: 19, scope: !1335)
!1337 = !DILocation(line: 276, column: 41, scope: !1334)
!1338 = !{!1339, !996, i64 0}
!1339 = !{!"passwd", !996, i64 0, !996, i64 8, !1066, i64 16, !1066, i64 20, !996, i64 24, !996, i64 32, !996, i64 40}
!1340 = !DILocation(line: 276, column: 27, scope: !1334)
!1341 = !DILocation(line: 276, column: 25, scope: !1334)
!1342 = !DILocation(line: 276, column: 17, scope: !1334)
!1343 = !DILocation(line: 279, column: 28, scope: !1335)
!1344 = !DILocation(line: 277, column: 34, scope: !1335)
!1345 = !{!1339, !1066, i64 16}
!1346 = !DILocation(line: 277, column: 27, scope: !1335)
!1347 = !DILocation(line: 277, column: 20, scope: !1335)
!1348 = !DILocation(line: 278, column: 34, scope: !1335)
!1349 = !{!1339, !1066, i64 20}
!1350 = !DILocation(line: 278, column: 27, scope: !1335)
!1351 = !DILocation(line: 278, column: 20, scope: !1335)
!1352 = !DILocation(line: 279, column: 15, scope: !1335)
!1353 = !DILocation(line: 280, column: 19, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 280, column: 19)
!1355 = !DILocalVariable(name: "__stream", arg: 1, scope: !1356, file: !1357, line: 135, type: !236)
!1356 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1357, file: !1357, line: 135, type: !1358, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1360)
!1357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!103, !236}
!1360 = !{!1355}
!1361 = !DILocation(line: 0, scope: !1356, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 280, column: 19, scope: !1354)
!1363 = !DILocation(line: 137, column: 10, scope: !1356, inlinedAt: !1362)
!1364 = !{!1365, !1066, i64 0}
!1365 = !{!"_IO_FILE", !1066, i64 0, !996, i64 8, !996, i64 16, !996, i64 24, !996, i64 32, !996, i64 40, !996, i64 48, !996, i64 56, !996, i64 64, !996, i64 72, !996, i64 80, !996, i64 88, !996, i64 96, !996, i64 104, !1066, i64 112, !1066, i64 116, !1366, i64 120, !1107, i64 128, !997, i64 130, !997, i64 131, !996, i64 136, !1366, i64 144, !996, i64 152, !996, i64 160, !996, i64 168, !996, i64 176, !1366, i64 184, !1066, i64 192, !997, i64 196}
!1366 = !{!"long", !997, i64 0}
!1367 = !DILocation(line: 280, column: 19, scope: !1335)
!1368 = !DILocation(line: 948, column: 21, scope: !1369, inlinedAt: !1372)
!1369 = distinct !DISubprogram(name: "write_error", scope: !102, file: !102, line: 946, type: !559, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1370)
!1370 = !{!1371}
!1371 = !DILocalVariable(name: "saved_errno", scope: !1369, file: !102, line: 948, type: !103)
!1372 = distinct !DILocation(line: 281, column: 17, scope: !1354)
!1373 = !DILocation(line: 0, scope: !1369, inlinedAt: !1372)
!1374 = !DILocation(line: 949, column: 3, scope: !1369, inlinedAt: !1372)
!1375 = !DILocation(line: 950, column: 11, scope: !1369, inlinedAt: !1372)
!1376 = !DILocation(line: 950, column: 3, scope: !1369, inlinedAt: !1372)
!1377 = !DILocation(line: 951, column: 3, scope: !1369, inlinedAt: !1372)
!1378 = !DILocation(line: 952, column: 3, scope: !1369, inlinedAt: !1372)
!1379 = !DILocation(line: 283, column: 17, scope: !1229)
!1380 = !DILocation(line: 283, column: 11, scope: !1229)
!1381 = !DILocation(line: 284, column: 9, scope: !1230)
!1382 = !DILocation(line: 255, column: 36, scope: !1230)
!1383 = !DILocation(line: 255, column: 14, scope: !1230)
!1384 = distinct !{!1384, !1310, !1385, !1112}
!1385 = !DILocation(line: 284, column: 9, scope: !1231)
!1386 = !DILocation(line: 0, scope: !1248)
!1387 = !DILocation(line: 294, column: 11, scope: !1248)
!1388 = !DILocation(line: 294, column: 24, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 294, column: 11)
!1390 = !DILocation(line: 294, column: 11, scope: !1389)
!1391 = !DILocation(line: 295, column: 25, scope: !1389)
!1392 = !DILocation(line: 297, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 296, column: 9)
!1394 = !DILocation(line: 297, column: 17, scope: !1393)
!1395 = !DILocation(line: 298, column: 18, scope: !1393)
!1396 = !DILocation(line: 298, column: 16, scope: !1393)
!1397 = !DILocation(line: 299, column: 20, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 299, column: 15)
!1399 = !DILocation(line: 299, column: 30, scope: !1398)
!1400 = !DILocation(line: 299, column: 33, scope: !1398)
!1401 = !DILocation(line: 299, column: 15, scope: !1393)
!1402 = !DILocation(line: 300, column: 13, scope: !1398)
!1403 = !DILocation(line: 303, column: 11, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 303, column: 11)
!1405 = !DILocation(line: 303, column: 11, scope: !1248)
!1406 = !DILocation(line: 303, column: 23, scope: !1404)
!1407 = !DILocation(line: 304, column: 14, scope: !1404)
!1408 = !DILocation(line: 304, column: 25, scope: !1404)
!1409 = !DILocation(line: 314, column: 11, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 313, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 312, column: 11)
!1412 = !DILocation(line: 306, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 305, column: 9)
!1414 = !DILocation(line: 306, column: 17, scope: !1413)
!1415 = !DILocation(line: 307, column: 18, scope: !1413)
!1416 = !DILocation(line: 307, column: 16, scope: !1413)
!1417 = !DILocation(line: 308, column: 20, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 308, column: 15)
!1419 = !DILocation(line: 308, column: 30, scope: !1418)
!1420 = !DILocation(line: 308, column: 33, scope: !1418)
!1421 = !DILocation(line: 308, column: 15, scope: !1413)
!1422 = !DILocation(line: 309, column: 13, scope: !1418)
!1423 = !DILocation(line: 312, column: 12, scope: !1411)
!1424 = !DILocation(line: 312, column: 22, scope: !1411)
!1425 = !DILocation(line: 314, column: 17, scope: !1410)
!1426 = !DILocation(line: 315, column: 18, scope: !1410)
!1427 = !DILocation(line: 315, column: 16, scope: !1410)
!1428 = !DILocation(line: 316, column: 20, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 316, column: 15)
!1430 = !DILocation(line: 316, column: 30, scope: !1429)
!1431 = !DILocation(line: 316, column: 33, scope: !1429)
!1432 = !DILocation(line: 316, column: 15, scope: !1410)
!1433 = !DILocation(line: 317, column: 13, scope: !1429)
!1434 = !DILocation(line: 319, column: 17, scope: !1410)
!1435 = !DILocation(line: 320, column: 18, scope: !1410)
!1436 = !DILocation(line: 320, column: 16, scope: !1410)
!1437 = !DILocation(line: 321, column: 20, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 321, column: 15)
!1439 = !DILocation(line: 321, column: 30, scope: !1438)
!1440 = !DILocation(line: 321, column: 33, scope: !1438)
!1441 = !DILocation(line: 321, column: 15, scope: !1410)
!1442 = !DILocation(line: 322, column: 13, scope: !1438)
!1443 = !DILocation(line: 324, column: 9, scope: !1248)
!1444 = !DILocation(line: 327, column: 10, scope: !1216)
!1445 = !{i8 0, i8 2}
!1446 = !DILocation(line: 327, column: 3, scope: !1216)
!1447 = !DISubprogram(name: "bindtextdomain", scope: !1046, file: !1046, line: 86, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!124, !130, !130}
!1450 = !DISubprogram(name: "textdomain", scope: !1046, file: !1046, line: 82, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1451 = !DISubprogram(name: "atexit", scope: !1190, file: !1190, line: 602, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!103, !558}
!1454 = !DISubprogram(name: "getopt_long", scope: !460, file: !460, line: 66, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!103, !103, !1457, !130, !1459, !465}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1460 = !DISubprogram(name: "getpwnam", scope: !1237, file: !1237, line: 116, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!1235, !130}
!1463 = !DISubprogram(name: "getpwuid", scope: !1237, file: !1237, line: 110, type: !1464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1235, !202}
!1466 = !DISubprogram(name: "__errno_location", scope: !1467, file: !1467, line: 37, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1467 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!465}
!1470 = distinct !DISubprogram(name: "print_stuff", scope: !2, file: !2, line: 431, type: !1015, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1471)
!1471 = !{!1472}
!1472 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1470, file: !2, line: 431, type: !130)
!1473 = !DILocation(line: 0, scope: !1470)
!1474 = !DILocation(line: 433, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 433, column: 7)
!1476 = !DILocation(line: 433, column: 7, scope: !1470)
!1477 = !DILocation(line: 434, column: 19, scope: !1475)
!1478 = !DILocalVariable(name: "uid", arg: 1, scope: !1479, file: !2, line: 333, type: !200)
!1479 = distinct !DISubprogram(name: "print_user", scope: !2, file: !2, line: 333, type: !1480, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !200}
!1482 = !{!1478, !1483}
!1483 = !DILocalVariable(name: "pwd", scope: !1479, file: !2, line: 335, type: !1235)
!1484 = !DILocation(line: 0, scope: !1479, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 434, column: 7, scope: !1475)
!1486 = !DILocation(line: 337, column: 7, scope: !1487, inlinedAt: !1485)
!1487 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 337, column: 7)
!1488 = !DILocation(line: 337, column: 7, scope: !1479, inlinedAt: !1485)
!1489 = !DILocation(line: 350, column: 5, scope: !1490, inlinedAt: !1485)
!1490 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 347, column: 7)
!1491 = !DILocation(line: 339, column: 13, scope: !1492, inlinedAt: !1485)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 338, column: 5)
!1493 = !DILocation(line: 340, column: 15, scope: !1494, inlinedAt: !1485)
!1494 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 340, column: 11)
!1495 = !DILocation(line: 340, column: 11, scope: !1492, inlinedAt: !1485)
!1496 = !DILocation(line: 342, column: 11, scope: !1497, inlinedAt: !1485)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 341, column: 9)
!1498 = !DILocation(line: 343, column: 14, scope: !1497, inlinedAt: !1485)
!1499 = !DILocation(line: 344, column: 9, scope: !1497, inlinedAt: !1485)
!1500 = !DILocation(line: 348, column: 5, scope: !1490, inlinedAt: !1485)
!1501 = !DILocation(line: 441, column: 12, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 441, column: 12)
!1503 = !DILocation(line: 441, column: 12, scope: !1475)
!1504 = !DILocation(line: 442, column: 24, scope: !1502)
!1505 = !DILocation(line: 442, column: 48, scope: !1502)
!1506 = !DILocation(line: 442, column: 11, scope: !1502)
!1507 = !DILocation(line: 442, column: 8, scope: !1502)
!1508 = !DILocation(line: 442, column: 5, scope: !1502)
!1509 = !DILocation(line: 443, column: 12, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 443, column: 12)
!1511 = !DILocation(line: 443, column: 12, scope: !1502)
!1512 = !DILocation(line: 444, column: 38, scope: !1510)
!1513 = !DILocation(line: 444, column: 44, scope: !1510)
!1514 = !DILocation(line: 444, column: 50, scope: !1510)
!1515 = !DILocation(line: 445, column: 29, scope: !1510)
!1516 = !DILocation(line: 445, column: 39, scope: !1510)
!1517 = !DILocation(line: 444, column: 11, scope: !1510)
!1518 = !DILocation(line: 444, column: 8, scope: !1510)
!1519 = !DILocation(line: 444, column: 5, scope: !1510)
!1520 = !DILocalVariable(name: "username", arg: 1, scope: !1521, file: !2, line: 356, type: !130)
!1521 = distinct !DISubprogram(name: "print_full_info", scope: !2, file: !2, line: 356, type: !1015, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1522)
!1522 = !{!1520, !1523, !1524, !1533, !1535, !1536, !1537}
!1523 = !DILocalVariable(name: "pwd", scope: !1521, file: !2, line: 358, type: !1235)
!1524 = !DILocalVariable(name: "grp", scope: !1521, file: !2, line: 359, type: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1527, line: 42, size: 256, elements: !1528)
!1527 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1526, file: !1527, line: 44, baseType: !124, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1526, file: !1527, line: 45, baseType: !124, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1526, file: !1527, line: 46, baseType: !208, size: 32, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1526, file: !1527, line: 47, baseType: !1219, size: 64, offset: 192)
!1533 = !DILocalVariable(name: "groups", scope: !1534, file: !2, line: 388, type: !936)
!1534 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 387, column: 3)
!1535 = !DILocalVariable(name: "primary_group", scope: !1534, file: !2, line: 390, type: !207)
!1536 = !DILocalVariable(name: "n_groups", scope: !1534, file: !2, line: 396, type: !103)
!1537 = !DILocalVariable(name: "i", scope: !1538, file: !2, line: 410, type: !103)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 410, column: 5)
!1539 = !DILocation(line: 0, scope: !1521, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 449, column: 5, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 446, column: 12)
!1542 = !DILocation(line: 361, column: 3, scope: !1521, inlinedAt: !1540)
!1543 = !DILocation(line: 362, column: 19, scope: !1521, inlinedAt: !1540)
!1544 = !DILocation(line: 362, column: 9, scope: !1521, inlinedAt: !1540)
!1545 = !DILocation(line: 363, column: 7, scope: !1546, inlinedAt: !1540)
!1546 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 363, column: 7)
!1547 = !DILocation(line: 363, column: 7, scope: !1521, inlinedAt: !1540)
!1548 = !DILocation(line: 364, column: 5, scope: !1546, inlinedAt: !1540)
!1549 = !DILocation(line: 366, column: 3, scope: !1521, inlinedAt: !1540)
!1550 = !DILocation(line: 367, column: 19, scope: !1521, inlinedAt: !1540)
!1551 = !DILocation(line: 367, column: 9, scope: !1521, inlinedAt: !1540)
!1552 = !DILocation(line: 368, column: 7, scope: !1553, inlinedAt: !1540)
!1553 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 368, column: 7)
!1554 = !DILocation(line: 368, column: 7, scope: !1521, inlinedAt: !1540)
!1555 = !DILocation(line: 369, column: 5, scope: !1553, inlinedAt: !1540)
!1556 = !{!1557, !996, i64 0}
!1557 = !{!"group", !996, i64 0, !996, i64 8, !1066, i64 16, !996, i64 24}
!1558 = !DILocation(line: 371, column: 7, scope: !1559, inlinedAt: !1540)
!1559 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 371, column: 7)
!1560 = !DILocation(line: 371, column: 15, scope: !1559, inlinedAt: !1540)
!1561 = !DILocation(line: 371, column: 12, scope: !1559, inlinedAt: !1540)
!1562 = !DILocation(line: 371, column: 7, scope: !1521, inlinedAt: !1540)
!1563 = !DILocation(line: 373, column: 7, scope: !1564, inlinedAt: !1540)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 372, column: 5)
!1565 = !DILocation(line: 374, column: 23, scope: !1564, inlinedAt: !1540)
!1566 = !DILocation(line: 374, column: 13, scope: !1564, inlinedAt: !1540)
!1567 = !DILocation(line: 375, column: 11, scope: !1568, inlinedAt: !1540)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 375, column: 11)
!1569 = !DILocation(line: 375, column: 11, scope: !1564, inlinedAt: !1540)
!1570 = !DILocation(line: 376, column: 9, scope: !1568, inlinedAt: !1540)
!1571 = !DILocation(line: 379, column: 7, scope: !1572, inlinedAt: !1540)
!1572 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 379, column: 7)
!1573 = !DILocation(line: 379, column: 15, scope: !1572, inlinedAt: !1540)
!1574 = !DILocation(line: 379, column: 12, scope: !1572, inlinedAt: !1540)
!1575 = !DILocation(line: 379, column: 7, scope: !1521, inlinedAt: !1540)
!1576 = !DILocation(line: 381, column: 7, scope: !1577, inlinedAt: !1540)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !2, line: 380, column: 5)
!1578 = !DILocation(line: 382, column: 23, scope: !1577, inlinedAt: !1540)
!1579 = !DILocation(line: 382, column: 13, scope: !1577, inlinedAt: !1540)
!1580 = !DILocation(line: 383, column: 11, scope: !1581, inlinedAt: !1540)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 383, column: 11)
!1582 = !DILocation(line: 383, column: 11, scope: !1577, inlinedAt: !1540)
!1583 = !DILocation(line: 384, column: 9, scope: !1581, inlinedAt: !1540)
!1584 = !DILocation(line: 388, column: 5, scope: !1534, inlinedAt: !1540)
!1585 = !DILocation(line: 391, column: 9, scope: !1586, inlinedAt: !1540)
!1586 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 391, column: 9)
!1587 = !DILocation(line: 391, column: 9, scope: !1534, inlinedAt: !1540)
!1588 = !DILocation(line: 392, column: 23, scope: !1586, inlinedAt: !1540)
!1589 = !DILocation(line: 392, column: 34, scope: !1586, inlinedAt: !1540)
!1590 = !DILocation(line: 0, scope: !1586, inlinedAt: !1540)
!1591 = !DILocation(line: 0, scope: !1534, inlinedAt: !1540)
!1592 = !DILocation(line: 396, column: 20, scope: !1534, inlinedAt: !1540)
!1593 = !DILocation(line: 397, column: 18, scope: !1594, inlinedAt: !1540)
!1594 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 397, column: 9)
!1595 = !DILocation(line: 397, column: 9, scope: !1534, inlinedAt: !1540)
!1596 = !DILocation(line: 394, column: 23, scope: !1586, inlinedAt: !1540)
!1597 = !DILocation(line: 400, column: 11, scope: !1598, inlinedAt: !1540)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 399, column: 13)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 398, column: 7)
!1600 = !DILocation(line: 403, column: 11, scope: !1598, inlinedAt: !1540)
!1601 = !DILocation(line: 404, column: 12, scope: !1599, inlinedAt: !1540)
!1602 = !DILocation(line: 405, column: 9, scope: !1599, inlinedAt: !1540)
!1603 = !DILocation(line: 408, column: 18, scope: !1604, inlinedAt: !1540)
!1604 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 408, column: 9)
!1605 = !DILocation(line: 408, column: 9, scope: !1534, inlinedAt: !1540)
!1606 = !DILocation(line: 409, column: 7, scope: !1604, inlinedAt: !1540)
!1607 = !DILocation(line: 0, scope: !1538, inlinedAt: !1540)
!1608 = !DILocation(line: 410, column: 23, scope: !1609, inlinedAt: !1540)
!1609 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 410, column: 5)
!1610 = !DILocation(line: 414, column: 9, scope: !1611, inlinedAt: !1540)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 411, column: 7)
!1612 = !DILocation(line: 415, column: 25, scope: !1611, inlinedAt: !1540)
!1613 = !DILocation(line: 415, column: 15, scope: !1611, inlinedAt: !1540)
!1614 = !DILocation(line: 416, column: 13, scope: !1615, inlinedAt: !1540)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 416, column: 13)
!1616 = !DILocation(line: 416, column: 13, scope: !1611, inlinedAt: !1540)
!1617 = !DILocation(line: 417, column: 11, scope: !1615, inlinedAt: !1540)
!1618 = !DILocation(line: 410, column: 5, scope: !1538, inlinedAt: !1540)
!1619 = !DILocation(line: 419, column: 11, scope: !1534, inlinedAt: !1540)
!1620 = !DILocation(line: 419, column: 5, scope: !1534, inlinedAt: !1540)
!1621 = !DILocation(line: 420, column: 3, scope: !1521, inlinedAt: !1540)
!1622 = !DILocalVariable(name: "__c", arg: 1, scope: !1623, file: !1357, line: 108, type: !103)
!1623 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1357, file: !1357, line: 108, type: !1624, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !99, retainedNodes: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!103, !103}
!1626 = !{!1622}
!1627 = !DILocation(line: 0, scope: !1623, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 413, column: 11, scope: !1629, inlinedAt: !1540)
!1629 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 412, column: 13)
!1630 = !DILocation(line: 110, column: 10, scope: !1623, inlinedAt: !1628)
!1631 = !{!1365, !996, i64 40}
!1632 = !{!1365, !996, i64 48}
!1633 = !{!"branch_weights", i32 2000, i32 1}
!1634 = !DILocation(line: 410, column: 36, scope: !1609, inlinedAt: !1540)
!1635 = distinct !{!1635, !1618, !1636, !1112, !1637}
!1636 = !DILocation(line: 418, column: 7, scope: !1538, inlinedAt: !1540)
!1637 = !{!"llvm.loop.peeled.count", i32 1}
!1638 = !DILocation(line: 454, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 454, column: 7)
!1640 = !DILocation(line: 454, column: 16, scope: !1639)
!1641 = !DILocation(line: 454, column: 19, scope: !1639)
!1642 = !DILocation(line: 454, column: 35, scope: !1639)
!1643 = !DILocation(line: 0, scope: !1623, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 456, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 455, column: 5)
!1646 = !DILocation(line: 110, column: 10, scope: !1623, inlinedAt: !1644)
!1647 = !DILocation(line: 0, scope: !1623, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 457, column: 7, scope: !1645)
!1649 = !DILocation(line: 110, column: 10, scope: !1623, inlinedAt: !1648)
!1650 = !DILocation(line: 461, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 460, column: 5)
!1652 = !DILocation(line: 0, scope: !1623, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 461, column: 7, scope: !1651)
!1654 = !DILocation(line: 110, column: 10, scope: !1623, inlinedAt: !1653)
!1655 = !DILocation(line: 463, column: 1, scope: !1470)
!1656 = !DISubprogram(name: "fflush_unlocked", scope: !1060, file: !1060, line: 239, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1657 = !DISubprogram(name: "clearerr_unlocked", scope: !1060, file: !1060, line: 794, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !236}
!1660 = !DISubprogram(name: "free", scope: !1190, file: !1190, line: 555, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !125}
!1663 = !DISubprogram(name: "geteuid", scope: !1664, file: !1664, line: 700, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1664 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!202}
!1667 = !DISubprogram(name: "getuid", scope: !1664, file: !1664, line: 697, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1668 = !DISubprogram(name: "getegid", scope: !1664, file: !1664, line: 706, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!208}
!1671 = !DISubprogram(name: "getgid", scope: !1664, file: !1664, line: 703, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1672 = !DISubprogram(name: "getgrgid", scope: !1527, file: !1527, line: 101, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!1525, !208}
!1675 = !DISubprogram(name: "__overflow", scope: !1060, file: !1060, line: 886, type: !1676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!103, !236, !103}
!1678 = distinct !DISubprogram(name: "print_group_list", scope: !475, file: !475, line: 35, type: !1679, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!223, !130, !200, !207, !207, !223, !4}
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1700, !1702, !1703}
!1682 = !DILocalVariable(name: "username", arg: 1, scope: !1678, file: !475, line: 35, type: !130)
!1683 = !DILocalVariable(name: "ruid", arg: 2, scope: !1678, file: !475, line: 36, type: !200)
!1684 = !DILocalVariable(name: "rgid", arg: 3, scope: !1678, file: !475, line: 36, type: !207)
!1685 = !DILocalVariable(name: "egid", arg: 4, scope: !1678, file: !475, line: 36, type: !207)
!1686 = !DILocalVariable(name: "use_names", arg: 5, scope: !1678, file: !475, line: 37, type: !223)
!1687 = !DILocalVariable(name: "delim", arg: 6, scope: !1678, file: !475, line: 37, type: !4)
!1688 = !DILocalVariable(name: "ok", scope: !1678, file: !475, line: 39, type: !223)
!1689 = !DILocalVariable(name: "pwd", scope: !1678, file: !475, line: 40, type: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1237, line: 49, size: 384, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1691, file: !1237, line: 51, baseType: !124, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1691, file: !1237, line: 52, baseType: !124, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1691, file: !1237, line: 54, baseType: !202, size: 32, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1691, file: !1237, line: 55, baseType: !208, size: 32, offset: 160)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1691, file: !1237, line: 56, baseType: !124, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1691, file: !1237, line: 57, baseType: !124, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1691, file: !1237, line: 58, baseType: !124, size: 64, offset: 320)
!1700 = !DILocalVariable(name: "groups", scope: !1701, file: !475, line: 60, type: !936)
!1701 = distinct !DILexicalBlock(scope: !1678, file: !475, line: 59, column: 3)
!1702 = !DILocalVariable(name: "n_groups", scope: !1701, file: !475, line: 62, type: !103)
!1703 = !DILocalVariable(name: "i", scope: !1704, file: !475, line: 77, type: !103)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !475, line: 77, column: 5)
!1705 = !DILocation(line: 0, scope: !1678)
!1706 = !DILocation(line: 42, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1678, file: !475, line: 42, column: 7)
!1708 = !DILocation(line: 42, column: 7, scope: !1678)
!1709 = !DILocation(line: 44, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !475, line: 43, column: 5)
!1711 = !DILocation(line: 45, column: 15, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1710, file: !475, line: 45, column: 11)
!1713 = !DILocation(line: 45, column: 11, scope: !1710)
!1714 = !DILocalVariable(name: "gid", arg: 1, scope: !1715, file: !475, line: 91, type: !207)
!1715 = distinct !DISubprogram(name: "print_group", scope: !475, file: !475, line: 91, type: !1716, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!223, !207, !223}
!1718 = !{!1714, !1719, !1720, !1728, !1729}
!1719 = !DILocalVariable(name: "use_name", arg: 2, scope: !1715, file: !475, line: 91, type: !223)
!1720 = !DILocalVariable(name: "grp", scope: !1715, file: !475, line: 93, type: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1527, line: 42, size: 256, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1722, file: !1527, line: 44, baseType: !124, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1722, file: !1527, line: 45, baseType: !124, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1722, file: !1527, line: 46, baseType: !208, size: 32, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1722, file: !1527, line: 47, baseType: !1219, size: 64, offset: 192)
!1728 = !DILocalVariable(name: "ok", scope: !1715, file: !475, line: 94, type: !223)
!1729 = !DILocalVariable(name: "g", scope: !1730, file: !475, line: 108, type: !133)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !475, line: 107, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !475, line: 101, column: 15)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !475, line: 100, column: 9)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !475, line: 99, column: 11)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !475, line: 97, column: 5)
!1735 = distinct !DILexicalBlock(scope: !1715, file: !475, line: 96, column: 7)
!1736 = !DILocation(line: 0, scope: !1715, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 49, column: 8, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1678, file: !475, line: 49, column: 7)
!1739 = !DILocation(line: 96, column: 7, scope: !1715, inlinedAt: !1737)
!1740 = !DILocation(line: 118, column: 5, scope: !1741, inlinedAt: !1737)
!1741 = distinct !DILexicalBlock(scope: !1715, file: !475, line: 115, column: 7)
!1742 = !DILocation(line: 49, column: 7, scope: !1678)
!1743 = !DILocation(line: 98, column: 13, scope: !1734, inlinedAt: !1737)
!1744 = !DILocation(line: 99, column: 15, scope: !1733, inlinedAt: !1737)
!1745 = !DILocation(line: 99, column: 11, scope: !1734, inlinedAt: !1737)
!1746 = !DILocation(line: 116, column: 5, scope: !1741, inlinedAt: !1737)
!1747 = !DILocation(line: 108, column: 29, scope: !1730, inlinedAt: !1737)
!1748 = !DILocation(line: 0, scope: !1730, inlinedAt: !1737)
!1749 = !DILocation(line: 109, column: 15, scope: !1730, inlinedAt: !1737)
!1750 = !DILocation(line: 52, column: 12, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1678, file: !475, line: 52, column: 7)
!1752 = !DILocation(line: 52, column: 7, scope: !1678)
!1753 = !DILocalVariable(name: "__c", arg: 1, scope: !1754, file: !1357, line: 108, type: !103)
!1754 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1357, file: !1357, line: 108, type: !1624, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !1755)
!1755 = !{!1753}
!1756 = !DILocation(line: 0, scope: !1754, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 54, column: 7, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1751, file: !475, line: 53, column: 5)
!1759 = !DILocation(line: 110, column: 10, scope: !1754, inlinedAt: !1757)
!1760 = !DILocation(line: 54, column: 7, scope: !1758)
!1761 = !DILocation(line: 0, scope: !1715, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 55, column: 12, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !475, line: 55, column: 11)
!1764 = !DILocation(line: 96, column: 7, scope: !1715, inlinedAt: !1762)
!1765 = !DILocation(line: 118, column: 5, scope: !1741, inlinedAt: !1762)
!1766 = !DILocation(line: 55, column: 11, scope: !1758)
!1767 = !DILocation(line: 98, column: 13, scope: !1734, inlinedAt: !1762)
!1768 = !DILocation(line: 99, column: 15, scope: !1733, inlinedAt: !1762)
!1769 = !DILocation(line: 99, column: 11, scope: !1734, inlinedAt: !1762)
!1770 = !DILocation(line: 116, column: 5, scope: !1741, inlinedAt: !1762)
!1771 = !DILocation(line: 108, column: 29, scope: !1730, inlinedAt: !1762)
!1772 = !DILocation(line: 0, scope: !1730, inlinedAt: !1762)
!1773 = !DILocation(line: 109, column: 15, scope: !1730, inlinedAt: !1762)
!1774 = !DILocation(line: 60, column: 5, scope: !1701)
!1775 = !DILocation(line: 62, column: 43, scope: !1701)
!1776 = !DILocation(line: 62, column: 54, scope: !1701)
!1777 = !DILocation(line: 0, scope: !1701)
!1778 = !DILocation(line: 62, column: 20, scope: !1701)
!1779 = !DILocation(line: 63, column: 18, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1701, file: !475, line: 63, column: 9)
!1781 = !DILocation(line: 63, column: 9, scope: !1701)
!1782 = !DILocation(line: 0, scope: !1704)
!1783 = !DILocation(line: 77, column: 23, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1704, file: !475, line: 77, column: 5)
!1785 = !DILocation(line: 77, column: 5, scope: !1704)
!1786 = !DILocation(line: 0, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !475, line: 65, column: 13)
!1788 = distinct !DILexicalBlock(scope: !1780, file: !475, line: 64, column: 7)
!1789 = !DILocation(line: 65, column: 13, scope: !1788)
!1790 = !DILocation(line: 67, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !475, line: 66, column: 11)
!1792 = !DILocation(line: 69, column: 11, scope: !1791)
!1793 = !DILocation(line: 72, column: 13, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1787, file: !475, line: 71, column: 11)
!1795 = !DILocation(line: 46, column: 12, scope: !1712)
!1796 = !DILocation(line: 84, column: 11, scope: !1701)
!1797 = !DILocation(line: 84, column: 5, scope: !1701)
!1798 = !DILocation(line: 85, column: 3, scope: !1678)
!1799 = !DILocation(line: 78, column: 11, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1784, file: !475, line: 78, column: 11)
!1801 = !DILocation(line: 78, column: 21, scope: !1800)
!1802 = !DILocation(line: 78, column: 29, scope: !1800)
!1803 = !DILocation(line: 0, scope: !1754, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 80, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1800, file: !475, line: 79, column: 9)
!1806 = !DILocation(line: 110, column: 10, scope: !1754, inlinedAt: !1804)
!1807 = !DILocation(line: 81, column: 29, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !475, line: 81, column: 15)
!1809 = !DILocation(line: 0, scope: !1715, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 81, column: 16, scope: !1808)
!1811 = !DILocation(line: 96, column: 7, scope: !1715, inlinedAt: !1810)
!1812 = !DILocation(line: 118, column: 5, scope: !1741, inlinedAt: !1810)
!1813 = !DILocation(line: 81, column: 15, scope: !1805)
!1814 = !DILocation(line: 98, column: 13, scope: !1734, inlinedAt: !1810)
!1815 = !DILocation(line: 99, column: 15, scope: !1733, inlinedAt: !1810)
!1816 = !DILocation(line: 99, column: 11, scope: !1734, inlinedAt: !1810)
!1817 = !DILocation(line: 116, column: 5, scope: !1741, inlinedAt: !1810)
!1818 = !DILocation(line: 108, column: 29, scope: !1730, inlinedAt: !1810)
!1819 = !DILocation(line: 0, scope: !1730, inlinedAt: !1810)
!1820 = !DILocation(line: 109, column: 15, scope: !1730, inlinedAt: !1810)
!1821 = !DILocation(line: 77, column: 36, scope: !1784)
!1822 = distinct !{!1822, !1785, !1823, !1112}
!1823 = !DILocation(line: 83, column: 9, scope: !1704)
!1824 = !DILocation(line: 87, column: 1, scope: !1678)
!1825 = !DILocation(line: 0, scope: !1715)
!1826 = !DILocation(line: 96, column: 7, scope: !1715)
!1827 = !DILocation(line: 118, column: 5, scope: !1741)
!1828 = !DILocation(line: 98, column: 13, scope: !1734)
!1829 = !DILocation(line: 99, column: 15, scope: !1733)
!1830 = !DILocation(line: 99, column: 11, scope: !1734)
!1831 = !DILocation(line: 108, column: 29, scope: !1730)
!1832 = !DILocation(line: 0, scope: !1730)
!1833 = !DILocation(line: 109, column: 15, scope: !1730)
!1834 = !DILocation(line: 112, column: 9, scope: !1732)
!1835 = !DILocation(line: 116, column: 5, scope: !1741)
!1836 = !DILocation(line: 119, column: 3, scope: !1715)
!1837 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !497, file: !497, line: 50, type: !1015, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "file", arg: 1, scope: !1837, file: !497, line: 50, type: !130)
!1840 = !DILocation(line: 0, scope: !1837)
!1841 = !DILocation(line: 52, column: 13, scope: !1837)
!1842 = !DILocation(line: 53, column: 1, scope: !1837)
!1843 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !497, file: !497, line: 87, type: !1844, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !223}
!1846 = !{!1847}
!1847 = !DILocalVariable(name: "ignore", arg: 1, scope: !1843, file: !497, line: 87, type: !223)
!1848 = !DILocation(line: 0, scope: !1843)
!1849 = !DILocation(line: 89, column: 16, scope: !1843)
!1850 = !DILocation(line: 90, column: 1, scope: !1843)
!1851 = distinct !DISubprogram(name: "close_stdout", scope: !497, file: !497, line: 116, type: !559, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1852)
!1852 = !{!1853}
!1853 = !DILocalVariable(name: "write_error", scope: !1854, file: !497, line: 121, type: !130)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !497, line: 120, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !497, line: 118, column: 7)
!1856 = !DILocation(line: 118, column: 21, scope: !1855)
!1857 = !DILocation(line: 118, column: 7, scope: !1855)
!1858 = !DILocation(line: 118, column: 29, scope: !1855)
!1859 = !DILocation(line: 119, column: 7, scope: !1855)
!1860 = !DILocation(line: 119, column: 12, scope: !1855)
!1861 = !DILocation(line: 119, column: 25, scope: !1855)
!1862 = !DILocation(line: 119, column: 28, scope: !1855)
!1863 = !DILocation(line: 119, column: 34, scope: !1855)
!1864 = !DILocation(line: 118, column: 7, scope: !1851)
!1865 = !DILocation(line: 121, column: 33, scope: !1854)
!1866 = !DILocation(line: 0, scope: !1854)
!1867 = !DILocation(line: 122, column: 11, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1854, file: !497, line: 122, column: 11)
!1869 = !DILocation(line: 0, scope: !1868)
!1870 = !DILocation(line: 122, column: 11, scope: !1854)
!1871 = !DILocation(line: 123, column: 9, scope: !1868)
!1872 = !DILocation(line: 126, column: 9, scope: !1868)
!1873 = !DILocation(line: 128, column: 14, scope: !1854)
!1874 = !DILocation(line: 128, column: 7, scope: !1854)
!1875 = !DILocation(line: 133, column: 42, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1851, file: !497, line: 133, column: 7)
!1877 = !DILocation(line: 133, column: 28, scope: !1876)
!1878 = !DILocation(line: 133, column: 50, scope: !1876)
!1879 = !DILocation(line: 133, column: 7, scope: !1851)
!1880 = !DILocation(line: 134, column: 12, scope: !1876)
!1881 = !DILocation(line: 134, column: 5, scope: !1876)
!1882 = !DILocation(line: 135, column: 1, scope: !1851)
!1883 = !DISubprogram(name: "_exit", scope: !1664, file: !1664, line: 624, type: !985, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!1884 = distinct !DISubprogram(name: "verror", scope: !512, file: !512, line: 251, type: !1885, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1887)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !103, !103, !130, !522}
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DILocalVariable(name: "status", arg: 1, scope: !1884, file: !512, line: 251, type: !103)
!1889 = !DILocalVariable(name: "errnum", arg: 2, scope: !1884, file: !512, line: 251, type: !103)
!1890 = !DILocalVariable(name: "message", arg: 3, scope: !1884, file: !512, line: 251, type: !130)
!1891 = !DILocalVariable(name: "args", arg: 4, scope: !1884, file: !512, line: 251, type: !522)
!1892 = !DILocation(line: 0, scope: !1884)
!1893 = !DILocation(line: 261, column: 3, scope: !1884)
!1894 = !DILocation(line: 265, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1884, file: !512, line: 265, column: 7)
!1896 = !DILocation(line: 265, column: 7, scope: !1884)
!1897 = !DILocation(line: 266, column: 5, scope: !1895)
!1898 = !DILocation(line: 272, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !512, line: 268, column: 5)
!1900 = !DILocation(line: 276, column: 3, scope: !1884)
!1901 = !DILocation(line: 282, column: 1, scope: !1884)
!1902 = distinct !DISubprogram(name: "flush_stdout", scope: !512, file: !512, line: 163, type: !559, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1903)
!1903 = !{!1904}
!1904 = !DILocalVariable(name: "stdout_fd", scope: !1902, file: !512, line: 166, type: !103)
!1905 = !DILocation(line: 0, scope: !1902)
!1906 = !DILocalVariable(name: "fd", arg: 1, scope: !1907, file: !512, line: 145, type: !103)
!1907 = distinct !DISubprogram(name: "is_open", scope: !512, file: !512, line: 145, type: !1624, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1908)
!1908 = !{!1906}
!1909 = !DILocation(line: 0, scope: !1907, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 182, column: 25, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1902, file: !512, line: 182, column: 7)
!1912 = !DILocation(line: 157, column: 15, scope: !1907, inlinedAt: !1910)
!1913 = !DILocation(line: 157, column: 12, scope: !1907, inlinedAt: !1910)
!1914 = !DILocation(line: 182, column: 7, scope: !1902)
!1915 = !DILocation(line: 184, column: 5, scope: !1911)
!1916 = !DILocation(line: 185, column: 1, scope: !1902)
!1917 = distinct !DISubprogram(name: "error_tail", scope: !512, file: !512, line: 219, type: !1885, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1918)
!1918 = !{!1919, !1920, !1921, !1922}
!1919 = !DILocalVariable(name: "status", arg: 1, scope: !1917, file: !512, line: 219, type: !103)
!1920 = !DILocalVariable(name: "errnum", arg: 2, scope: !1917, file: !512, line: 219, type: !103)
!1921 = !DILocalVariable(name: "message", arg: 3, scope: !1917, file: !512, line: 219, type: !130)
!1922 = !DILocalVariable(name: "args", arg: 4, scope: !1917, file: !512, line: 219, type: !522)
!1923 = !DILocation(line: 0, scope: !1917)
!1924 = !DILocation(line: 229, column: 13, scope: !1917)
!1925 = !DILocalVariable(name: "__stream", arg: 1, scope: !1926, file: !1051, line: 132, type: !1929)
!1926 = distinct !DISubprogram(name: "vfprintf", scope: !1051, file: !1051, line: 132, type: !1927, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1964)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!103, !1929, !1055, !522}
!1929 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1930)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1932, file: !240, line: 51, baseType: !103, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1932, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1932, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1932, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1932, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1932, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1932, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1932, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1932, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1932, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1932, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1932, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1932, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1932, file: !240, line: 70, baseType: !1948, size: 64, offset: 832)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1932, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1932, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1932, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1932, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1932, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1932, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1932, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1932, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1932, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1932, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1932, file: !240, line: 93, baseType: !1948, size: 64, offset: 1344)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1932, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1932, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1932, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1932, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!1964 = !{!1925, !1965, !1966}
!1965 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1926, file: !1051, line: 133, type: !1055)
!1966 = !DILocalVariable(name: "__ap", arg: 3, scope: !1926, file: !1051, line: 133, type: !522)
!1967 = !DILocation(line: 0, scope: !1926, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 229, column: 3, scope: !1917)
!1969 = !DILocation(line: 135, column: 10, scope: !1926, inlinedAt: !1968)
!1970 = !DILocation(line: 232, column: 3, scope: !1917)
!1971 = !DILocation(line: 233, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1917, file: !512, line: 233, column: 7)
!1973 = !DILocation(line: 233, column: 7, scope: !1917)
!1974 = !DILocalVariable(name: "errnum", arg: 1, scope: !1975, file: !512, line: 188, type: !103)
!1975 = distinct !DISubprogram(name: "print_errno_message", scope: !512, file: !512, line: 188, type: !985, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !1976)
!1976 = !{!1974, !1977, !1978}
!1977 = !DILocalVariable(name: "s", scope: !1975, file: !512, line: 190, type: !130)
!1978 = !DILocalVariable(name: "errbuf", scope: !1975, file: !512, line: 193, type: !1979)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 1024)
!1982 = !DILocation(line: 0, scope: !1975, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 234, column: 5, scope: !1972)
!1984 = !DILocation(line: 193, column: 3, scope: !1975, inlinedAt: !1983)
!1985 = !DILocation(line: 193, column: 8, scope: !1975, inlinedAt: !1983)
!1986 = !DILocation(line: 195, column: 7, scope: !1975, inlinedAt: !1983)
!1987 = !DILocation(line: 207, column: 9, scope: !1988, inlinedAt: !1983)
!1988 = distinct !DILexicalBlock(scope: !1975, file: !512, line: 207, column: 7)
!1989 = !DILocation(line: 207, column: 7, scope: !1975, inlinedAt: !1983)
!1990 = !DILocation(line: 208, column: 9, scope: !1988, inlinedAt: !1983)
!1991 = !DILocation(line: 208, column: 5, scope: !1988, inlinedAt: !1983)
!1992 = !DILocation(line: 214, column: 3, scope: !1975, inlinedAt: !1983)
!1993 = !DILocation(line: 216, column: 1, scope: !1975, inlinedAt: !1983)
!1994 = !DILocation(line: 234, column: 5, scope: !1972)
!1995 = !DILocation(line: 238, column: 3, scope: !1917)
!1996 = !DILocalVariable(name: "__c", arg: 1, scope: !1997, file: !1357, line: 101, type: !103)
!1997 = distinct !DISubprogram(name: "putc_unlocked", scope: !1357, file: !1357, line: 101, type: !1998, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2000)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!103, !103, !1930}
!2000 = !{!1996, !2001}
!2001 = !DILocalVariable(name: "__stream", arg: 2, scope: !1997, file: !1357, line: 101, type: !1930)
!2002 = !DILocation(line: 0, scope: !1997, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 238, column: 3, scope: !1917)
!2004 = !DILocation(line: 103, column: 10, scope: !1997, inlinedAt: !2003)
!2005 = !DILocation(line: 240, column: 3, scope: !1917)
!2006 = !DILocation(line: 241, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1917, file: !512, line: 241, column: 7)
!2008 = !DILocation(line: 241, column: 7, scope: !1917)
!2009 = !DILocation(line: 242, column: 5, scope: !2007)
!2010 = !DILocation(line: 243, column: 1, scope: !1917)
!2011 = !DISubprogram(name: "__vfprintf_chk", scope: !1051, file: !1051, line: 96, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!103, !1929, !103, !1055, !522}
!2014 = !DISubprogram(name: "strerror_r", scope: !1186, file: !1186, line: 444, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!124, !103, !124, !127}
!2017 = !DISubprogram(name: "fcntl", scope: !2018, file: !2018, line: 149, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2018 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!103, !103, !103, null}
!2021 = distinct !DISubprogram(name: "error", scope: !512, file: !512, line: 285, type: !2022, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !103, !103, !130, null}
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DILocalVariable(name: "status", arg: 1, scope: !2021, file: !512, line: 285, type: !103)
!2026 = !DILocalVariable(name: "errnum", arg: 2, scope: !2021, file: !512, line: 285, type: !103)
!2027 = !DILocalVariable(name: "message", arg: 3, scope: !2021, file: !512, line: 285, type: !130)
!2028 = !DILocalVariable(name: "ap", scope: !2021, file: !512, line: 287, type: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1060, line: 52, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2031, line: 14, baseType: !2032)
!2031 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !526, baseType: !2033)
!2033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 192, elements: !80)
!2034 = !DILocation(line: 0, scope: !2021)
!2035 = !DILocation(line: 287, column: 3, scope: !2021)
!2036 = !DILocation(line: 287, column: 11, scope: !2021)
!2037 = !DILocation(line: 288, column: 3, scope: !2021)
!2038 = !DILocation(line: 289, column: 3, scope: !2021)
!2039 = !DILocation(line: 290, column: 3, scope: !2021)
!2040 = !DILocation(line: 291, column: 1, scope: !2021)
!2041 = !DILocation(line: 0, scope: !519)
!2042 = !DILocation(line: 302, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !519, file: !512, line: 302, column: 7)
!2044 = !DILocation(line: 302, column: 7, scope: !519)
!2045 = !DILocation(line: 307, column: 11, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !512, line: 307, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !512, line: 303, column: 5)
!2048 = !DILocation(line: 307, column: 27, scope: !2046)
!2049 = !DILocation(line: 308, column: 11, scope: !2046)
!2050 = !DILocation(line: 308, column: 28, scope: !2046)
!2051 = !DILocation(line: 308, column: 25, scope: !2046)
!2052 = !DILocation(line: 309, column: 15, scope: !2046)
!2053 = !DILocation(line: 309, column: 33, scope: !2046)
!2054 = !DILocation(line: 310, column: 19, scope: !2046)
!2055 = !DILocation(line: 311, column: 22, scope: !2046)
!2056 = !DILocation(line: 311, column: 56, scope: !2046)
!2057 = !DILocation(line: 307, column: 11, scope: !2047)
!2058 = !DILocation(line: 316, column: 21, scope: !2047)
!2059 = !DILocation(line: 317, column: 23, scope: !2047)
!2060 = !DILocation(line: 318, column: 5, scope: !2047)
!2061 = !DILocation(line: 327, column: 3, scope: !519)
!2062 = !DILocation(line: 331, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !519, file: !512, line: 331, column: 7)
!2064 = !DILocation(line: 331, column: 7, scope: !519)
!2065 = !DILocation(line: 332, column: 5, scope: !2063)
!2066 = !DILocation(line: 338, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !512, line: 334, column: 5)
!2068 = !DILocation(line: 346, column: 3, scope: !519)
!2069 = !DILocation(line: 350, column: 3, scope: !519)
!2070 = !DILocation(line: 356, column: 1, scope: !519)
!2071 = distinct !DISubprogram(name: "error_at_line", scope: !512, file: !512, line: 359, type: !2072, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !103, !103, !130, !109, !130, null}
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080}
!2075 = !DILocalVariable(name: "status", arg: 1, scope: !2071, file: !512, line: 359, type: !103)
!2076 = !DILocalVariable(name: "errnum", arg: 2, scope: !2071, file: !512, line: 359, type: !103)
!2077 = !DILocalVariable(name: "file_name", arg: 3, scope: !2071, file: !512, line: 359, type: !130)
!2078 = !DILocalVariable(name: "line_number", arg: 4, scope: !2071, file: !512, line: 360, type: !109)
!2079 = !DILocalVariable(name: "message", arg: 5, scope: !2071, file: !512, line: 360, type: !130)
!2080 = !DILocalVariable(name: "ap", scope: !2071, file: !512, line: 362, type: !2029)
!2081 = !DILocation(line: 0, scope: !2071)
!2082 = !DILocation(line: 362, column: 3, scope: !2071)
!2083 = !DILocation(line: 362, column: 11, scope: !2071)
!2084 = !DILocation(line: 363, column: 3, scope: !2071)
!2085 = !DILocation(line: 364, column: 3, scope: !2071)
!2086 = !DILocation(line: 366, column: 3, scope: !2071)
!2087 = !DILocation(line: 367, column: 1, scope: !2071)
!2088 = distinct !DISubprogram(name: "fpurge", scope: !853, file: !853, line: 32, type: !2089, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !2125)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!103, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2093, file: !240, line: 51, baseType: !103, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2093, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2093, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2093, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2093, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2093, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2093, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2093, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2093, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2093, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2093, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2093, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2093, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2093, file: !240, line: 70, baseType: !2109, size: 64, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2093, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2093, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2093, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2093, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2093, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2093, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2093, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2093, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2093, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2093, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2093, file: !240, line: 93, baseType: !2109, size: 64, offset: 1344)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2093, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2093, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2093, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2093, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "fp", arg: 1, scope: !2088, file: !853, line: 32, type: !2091)
!2127 = !DILocation(line: 0, scope: !2088)
!2128 = !DILocation(line: 36, column: 3, scope: !2088)
!2129 = !DILocation(line: 38, column: 3, scope: !2088)
!2130 = !DISubprogram(name: "__fpurge", scope: !2131, file: !2131, line: 72, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2131 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2091}
!2134 = distinct !DISubprogram(name: "getprogname", scope: !855, file: !855, line: 54, type: !2135, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !1049)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!130}
!2137 = !DILocation(line: 58, column: 10, scope: !2134)
!2138 = !DILocation(line: 58, column: 3, scope: !2134)
!2139 = distinct !DISubprogram(name: "set_program_name", scope: !564, file: !564, line: 37, type: !1015, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2140)
!2140 = !{!2141, !2142, !2143}
!2141 = !DILocalVariable(name: "argv0", arg: 1, scope: !2139, file: !564, line: 37, type: !130)
!2142 = !DILocalVariable(name: "slash", scope: !2139, file: !564, line: 44, type: !130)
!2143 = !DILocalVariable(name: "base", scope: !2139, file: !564, line: 45, type: !130)
!2144 = !DILocation(line: 0, scope: !2139)
!2145 = !DILocation(line: 44, column: 23, scope: !2139)
!2146 = !DILocation(line: 45, column: 22, scope: !2139)
!2147 = !DILocation(line: 46, column: 17, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2139, file: !564, line: 46, column: 7)
!2149 = !DILocation(line: 46, column: 9, scope: !2148)
!2150 = !DILocation(line: 46, column: 25, scope: !2148)
!2151 = !DILocation(line: 46, column: 40, scope: !2148)
!2152 = !DILocalVariable(name: "__s1", arg: 1, scope: !2153, file: !1078, line: 974, type: !1214)
!2153 = distinct !DISubprogram(name: "memeq", scope: !1078, file: !1078, line: 974, type: !2154, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!223, !1214, !1214, !127}
!2156 = !{!2152, !2157, !2158}
!2157 = !DILocalVariable(name: "__s2", arg: 2, scope: !2153, file: !1078, line: 974, type: !1214)
!2158 = !DILocalVariable(name: "__n", arg: 3, scope: !2153, file: !1078, line: 974, type: !127)
!2159 = !DILocation(line: 0, scope: !2153, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 46, column: 28, scope: !2148)
!2161 = !DILocation(line: 976, column: 11, scope: !2153, inlinedAt: !2160)
!2162 = !DILocation(line: 976, column: 10, scope: !2153, inlinedAt: !2160)
!2163 = !DILocation(line: 46, column: 7, scope: !2139)
!2164 = !DILocation(line: 49, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !564, line: 49, column: 11)
!2166 = distinct !DILexicalBlock(scope: !2148, file: !564, line: 47, column: 5)
!2167 = !DILocation(line: 49, column: 36, scope: !2165)
!2168 = !DILocation(line: 49, column: 11, scope: !2166)
!2169 = !DILocation(line: 65, column: 16, scope: !2139)
!2170 = !DILocation(line: 71, column: 27, scope: !2139)
!2171 = !DILocation(line: 74, column: 33, scope: !2139)
!2172 = !DILocation(line: 76, column: 1, scope: !2139)
!2173 = !DISubprogram(name: "strrchr", scope: !1186, file: !1186, line: 273, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2174 = !DILocation(line: 0, scope: !573)
!2175 = !DILocation(line: 40, column: 29, scope: !573)
!2176 = !DILocation(line: 41, column: 19, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !573, file: !574, line: 41, column: 7)
!2178 = !DILocation(line: 41, column: 7, scope: !573)
!2179 = !DILocation(line: 47, column: 3, scope: !573)
!2180 = !DILocation(line: 48, column: 3, scope: !573)
!2181 = !DILocation(line: 48, column: 13, scope: !573)
!2182 = !DILocalVariable(name: "ps", arg: 1, scope: !2183, file: !2184, line: 1135, type: !2187)
!2183 = distinct !DISubprogram(name: "mbszero", scope: !2184, file: !2184, line: 1135, type: !2185, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2188)
!2184 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2188 = !{!2182}
!2189 = !DILocation(line: 0, scope: !2183, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 48, column: 18, scope: !573)
!2191 = !DILocalVariable(name: "__dest", arg: 1, scope: !2192, file: !2193, line: 57, type: !125)
!2192 = distinct !DISubprogram(name: "memset", scope: !2193, file: !2193, line: 57, type: !2194, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !2196)
!2193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!125, !125, !103, !127}
!2196 = !{!2191, !2197, !2198}
!2197 = !DILocalVariable(name: "__ch", arg: 2, scope: !2192, file: !2193, line: 57, type: !103)
!2198 = !DILocalVariable(name: "__len", arg: 3, scope: !2192, file: !2193, line: 57, type: !127)
!2199 = !DILocation(line: 0, scope: !2192, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 1137, column: 3, scope: !2183, inlinedAt: !2190)
!2201 = !DILocation(line: 59, column: 10, scope: !2192, inlinedAt: !2200)
!2202 = !DILocation(line: 49, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !573, file: !574, line: 49, column: 7)
!2204 = !DILocation(line: 49, column: 39, scope: !2203)
!2205 = !DILocation(line: 49, column: 44, scope: !2203)
!2206 = !DILocation(line: 54, column: 1, scope: !573)
!2207 = !DISubprogram(name: "mbrtoc32", scope: !585, file: !585, line: 57, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!127, !2210, !1055, !127, !2212}
!2210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2187)
!2213 = distinct !DISubprogram(name: "clone_quoting_options", scope: !604, file: !604, line: 113, type: !2214, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2217)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2216, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!2217 = !{!2218, !2219, !2220}
!2218 = !DILocalVariable(name: "o", arg: 1, scope: !2213, file: !604, line: 113, type: !2216)
!2219 = !DILocalVariable(name: "saved_errno", scope: !2213, file: !604, line: 115, type: !103)
!2220 = !DILocalVariable(name: "p", scope: !2213, file: !604, line: 116, type: !2216)
!2221 = !DILocation(line: 0, scope: !2213)
!2222 = !DILocation(line: 115, column: 21, scope: !2213)
!2223 = !DILocation(line: 116, column: 40, scope: !2213)
!2224 = !DILocation(line: 116, column: 31, scope: !2213)
!2225 = !DILocation(line: 118, column: 9, scope: !2213)
!2226 = !DILocation(line: 119, column: 3, scope: !2213)
!2227 = distinct !DISubprogram(name: "get_quoting_style", scope: !604, file: !604, line: 124, type: !2228, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2232)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!630, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "o", arg: 1, scope: !2227, file: !604, line: 124, type: !2230)
!2234 = !DILocation(line: 0, scope: !2227)
!2235 = !DILocation(line: 126, column: 11, scope: !2227)
!2236 = !DILocation(line: 126, column: 46, scope: !2227)
!2237 = !{!2238, !997, i64 0}
!2238 = !{!"quoting_options", !997, i64 0, !1066, i64 4, !997, i64 8, !996, i64 40, !996, i64 48}
!2239 = !DILocation(line: 126, column: 3, scope: !2227)
!2240 = distinct !DISubprogram(name: "set_quoting_style", scope: !604, file: !604, line: 132, type: !2241, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !2216, !630}
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "o", arg: 1, scope: !2240, file: !604, line: 132, type: !2216)
!2245 = !DILocalVariable(name: "s", arg: 2, scope: !2240, file: !604, line: 132, type: !630)
!2246 = !DILocation(line: 0, scope: !2240)
!2247 = !DILocation(line: 134, column: 4, scope: !2240)
!2248 = !DILocation(line: 134, column: 45, scope: !2240)
!2249 = !DILocation(line: 135, column: 1, scope: !2240)
!2250 = distinct !DISubprogram(name: "set_char_quoting", scope: !604, file: !604, line: 143, type: !2251, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!103, !2216, !4, !103}
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2260, !2261}
!2254 = !DILocalVariable(name: "o", arg: 1, scope: !2250, file: !604, line: 143, type: !2216)
!2255 = !DILocalVariable(name: "c", arg: 2, scope: !2250, file: !604, line: 143, type: !4)
!2256 = !DILocalVariable(name: "i", arg: 3, scope: !2250, file: !604, line: 143, type: !103)
!2257 = !DILocalVariable(name: "uc", scope: !2250, file: !604, line: 145, type: !132)
!2258 = !DILocalVariable(name: "p", scope: !2250, file: !604, line: 146, type: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2260 = !DILocalVariable(name: "shift", scope: !2250, file: !604, line: 148, type: !103)
!2261 = !DILocalVariable(name: "r", scope: !2250, file: !604, line: 149, type: !109)
!2262 = !DILocation(line: 0, scope: !2250)
!2263 = !DILocation(line: 147, column: 6, scope: !2250)
!2264 = !DILocation(line: 147, column: 41, scope: !2250)
!2265 = !DILocation(line: 147, column: 62, scope: !2250)
!2266 = !DILocation(line: 147, column: 57, scope: !2250)
!2267 = !DILocation(line: 148, column: 15, scope: !2250)
!2268 = !DILocation(line: 149, column: 21, scope: !2250)
!2269 = !DILocation(line: 149, column: 24, scope: !2250)
!2270 = !DILocation(line: 149, column: 34, scope: !2250)
!2271 = !DILocation(line: 150, column: 19, scope: !2250)
!2272 = !DILocation(line: 150, column: 24, scope: !2250)
!2273 = !DILocation(line: 150, column: 6, scope: !2250)
!2274 = !DILocation(line: 151, column: 3, scope: !2250)
!2275 = distinct !DISubprogram(name: "set_quoting_flags", scope: !604, file: !604, line: 159, type: !2276, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!103, !2216, !103}
!2278 = !{!2279, !2280, !2281}
!2279 = !DILocalVariable(name: "o", arg: 1, scope: !2275, file: !604, line: 159, type: !2216)
!2280 = !DILocalVariable(name: "i", arg: 2, scope: !2275, file: !604, line: 159, type: !103)
!2281 = !DILocalVariable(name: "r", scope: !2275, file: !604, line: 163, type: !103)
!2282 = !DILocation(line: 0, scope: !2275)
!2283 = !DILocation(line: 161, column: 8, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2275, file: !604, line: 161, column: 7)
!2285 = !DILocation(line: 161, column: 7, scope: !2275)
!2286 = !DILocation(line: 163, column: 14, scope: !2275)
!2287 = !{!2238, !1066, i64 4}
!2288 = !DILocation(line: 164, column: 12, scope: !2275)
!2289 = !DILocation(line: 165, column: 3, scope: !2275)
!2290 = distinct !DISubprogram(name: "set_custom_quoting", scope: !604, file: !604, line: 169, type: !2291, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null, !2216, !130, !130}
!2293 = !{!2294, !2295, !2296}
!2294 = !DILocalVariable(name: "o", arg: 1, scope: !2290, file: !604, line: 169, type: !2216)
!2295 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2290, file: !604, line: 170, type: !130)
!2296 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2290, file: !604, line: 170, type: !130)
!2297 = !DILocation(line: 0, scope: !2290)
!2298 = !DILocation(line: 172, column: 8, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2290, file: !604, line: 172, column: 7)
!2300 = !DILocation(line: 172, column: 7, scope: !2290)
!2301 = !DILocation(line: 174, column: 12, scope: !2290)
!2302 = !DILocation(line: 175, column: 8, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2290, file: !604, line: 175, column: 7)
!2304 = !DILocation(line: 175, column: 19, scope: !2303)
!2305 = !DILocation(line: 176, column: 5, scope: !2303)
!2306 = !DILocation(line: 177, column: 6, scope: !2290)
!2307 = !DILocation(line: 177, column: 17, scope: !2290)
!2308 = !{!2238, !996, i64 40}
!2309 = !DILocation(line: 178, column: 6, scope: !2290)
!2310 = !DILocation(line: 178, column: 18, scope: !2290)
!2311 = !{!2238, !996, i64 48}
!2312 = !DILocation(line: 179, column: 1, scope: !2290)
!2313 = !DISubprogram(name: "abort", scope: !1190, file: !1190, line: 598, type: !559, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2314 = distinct !DISubprogram(name: "quotearg_buffer", scope: !604, file: !604, line: 774, type: !2315, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!127, !124, !127, !130, !127, !2230}
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2318 = !DILocalVariable(name: "buffer", arg: 1, scope: !2314, file: !604, line: 774, type: !124)
!2319 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2314, file: !604, line: 774, type: !127)
!2320 = !DILocalVariable(name: "arg", arg: 3, scope: !2314, file: !604, line: 775, type: !130)
!2321 = !DILocalVariable(name: "argsize", arg: 4, scope: !2314, file: !604, line: 775, type: !127)
!2322 = !DILocalVariable(name: "o", arg: 5, scope: !2314, file: !604, line: 776, type: !2230)
!2323 = !DILocalVariable(name: "p", scope: !2314, file: !604, line: 778, type: !2230)
!2324 = !DILocalVariable(name: "saved_errno", scope: !2314, file: !604, line: 779, type: !103)
!2325 = !DILocalVariable(name: "r", scope: !2314, file: !604, line: 780, type: !127)
!2326 = !DILocation(line: 0, scope: !2314)
!2327 = !DILocation(line: 778, column: 37, scope: !2314)
!2328 = !DILocation(line: 779, column: 21, scope: !2314)
!2329 = !DILocation(line: 781, column: 43, scope: !2314)
!2330 = !DILocation(line: 781, column: 53, scope: !2314)
!2331 = !DILocation(line: 781, column: 63, scope: !2314)
!2332 = !DILocation(line: 782, column: 43, scope: !2314)
!2333 = !DILocation(line: 782, column: 58, scope: !2314)
!2334 = !DILocation(line: 780, column: 14, scope: !2314)
!2335 = !DILocation(line: 783, column: 9, scope: !2314)
!2336 = !DILocation(line: 784, column: 3, scope: !2314)
!2337 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !604, file: !604, line: 251, type: !2338, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2342)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!127, !124, !127, !130, !127, !630, !103, !2340, !130, !130}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2367, !2369, !2372, !2373, !2374, !2375, !2378, !2379, !2382, !2386, !2387, !2395, !2398, !2399, !2401, !2402, !2403, !2404}
!2343 = !DILocalVariable(name: "buffer", arg: 1, scope: !2337, file: !604, line: 251, type: !124)
!2344 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2337, file: !604, line: 251, type: !127)
!2345 = !DILocalVariable(name: "arg", arg: 3, scope: !2337, file: !604, line: 252, type: !130)
!2346 = !DILocalVariable(name: "argsize", arg: 4, scope: !2337, file: !604, line: 252, type: !127)
!2347 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2337, file: !604, line: 253, type: !630)
!2348 = !DILocalVariable(name: "flags", arg: 6, scope: !2337, file: !604, line: 253, type: !103)
!2349 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2337, file: !604, line: 254, type: !2340)
!2350 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2337, file: !604, line: 255, type: !130)
!2351 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2337, file: !604, line: 256, type: !130)
!2352 = !DILocalVariable(name: "unibyte_locale", scope: !2337, file: !604, line: 258, type: !223)
!2353 = !DILocalVariable(name: "len", scope: !2337, file: !604, line: 260, type: !127)
!2354 = !DILocalVariable(name: "orig_buffersize", scope: !2337, file: !604, line: 261, type: !127)
!2355 = !DILocalVariable(name: "quote_string", scope: !2337, file: !604, line: 262, type: !130)
!2356 = !DILocalVariable(name: "quote_string_len", scope: !2337, file: !604, line: 263, type: !127)
!2357 = !DILocalVariable(name: "backslash_escapes", scope: !2337, file: !604, line: 264, type: !223)
!2358 = !DILocalVariable(name: "elide_outer_quotes", scope: !2337, file: !604, line: 265, type: !223)
!2359 = !DILocalVariable(name: "encountered_single_quote", scope: !2337, file: !604, line: 266, type: !223)
!2360 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2337, file: !604, line: 267, type: !223)
!2361 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2337, file: !604, line: 309, type: !223)
!2362 = !DILocalVariable(name: "lq", scope: !2363, file: !604, line: 361, type: !130)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !604, line: 361, column: 11)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !604, line: 360, column: 13)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !604, line: 333, column: 7)
!2366 = distinct !DILexicalBlock(scope: !2337, file: !604, line: 312, column: 5)
!2367 = !DILocalVariable(name: "i", scope: !2368, file: !604, line: 395, type: !127)
!2368 = distinct !DILexicalBlock(scope: !2337, file: !604, line: 395, column: 3)
!2369 = !DILocalVariable(name: "is_right_quote", scope: !2370, file: !604, line: 397, type: !223)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !604, line: 396, column: 5)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !604, line: 395, column: 3)
!2372 = !DILocalVariable(name: "escaping", scope: !2370, file: !604, line: 398, type: !223)
!2373 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2370, file: !604, line: 399, type: !223)
!2374 = !DILocalVariable(name: "c", scope: !2370, file: !604, line: 417, type: !132)
!2375 = !DILocalVariable(name: "m", scope: !2376, file: !604, line: 598, type: !127)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 596, column: 11)
!2377 = distinct !DILexicalBlock(scope: !2370, file: !604, line: 419, column: 9)
!2378 = !DILocalVariable(name: "printable", scope: !2376, file: !604, line: 600, type: !223)
!2379 = !DILocalVariable(name: "mbs", scope: !2380, file: !604, line: 609, type: !691)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !604, line: 608, column: 15)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !604, line: 602, column: 17)
!2382 = !DILocalVariable(name: "w", scope: !2383, file: !604, line: 618, type: !584)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !604, line: 617, column: 19)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !604, line: 616, column: 17)
!2385 = distinct !DILexicalBlock(scope: !2380, file: !604, line: 616, column: 17)
!2386 = !DILocalVariable(name: "bytes", scope: !2383, file: !604, line: 619, type: !127)
!2387 = !DILocalVariable(name: "j", scope: !2388, file: !604, line: 648, type: !127)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !604, line: 648, column: 29)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !604, line: 647, column: 27)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !604, line: 645, column: 29)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !604, line: 636, column: 23)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !604, line: 628, column: 30)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !604, line: 623, column: 30)
!2394 = distinct !DILexicalBlock(scope: !2383, file: !604, line: 621, column: 25)
!2395 = !DILocalVariable(name: "ilim", scope: !2396, file: !604, line: 674, type: !127)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !604, line: 671, column: 15)
!2397 = distinct !DILexicalBlock(scope: !2376, file: !604, line: 670, column: 17)
!2398 = !DILabel(scope: !2337, name: "process_input", file: !604, line: 308)
!2399 = !DILabel(scope: !2400, name: "c_and_shell_escape", file: !604, line: 502)
!2400 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 478, column: 9)
!2401 = !DILabel(scope: !2400, name: "c_escape", file: !604, line: 507)
!2402 = !DILabel(scope: !2370, name: "store_escape", file: !604, line: 709)
!2403 = !DILabel(scope: !2370, name: "store_c", file: !604, line: 712)
!2404 = !DILabel(scope: !2337, name: "force_outer_quoting_style", file: !604, line: 753)
!2405 = !DILocation(line: 0, scope: !2337)
!2406 = !DILocation(line: 258, column: 25, scope: !2337)
!2407 = !DILocation(line: 258, column: 36, scope: !2337)
!2408 = !DILocation(line: 265, column: 8, scope: !2337)
!2409 = !DILocation(line: 267, column: 3, scope: !2337)
!2410 = !DILocation(line: 261, column: 10, scope: !2337)
!2411 = !DILocation(line: 262, column: 15, scope: !2337)
!2412 = !DILocation(line: 263, column: 10, scope: !2337)
!2413 = !DILocation(line: 264, column: 8, scope: !2337)
!2414 = !DILocation(line: 266, column: 8, scope: !2337)
!2415 = !DILocation(line: 267, column: 8, scope: !2337)
!2416 = !DILocation(line: 308, column: 2, scope: !2337)
!2417 = !DILocation(line: 311, column: 3, scope: !2337)
!2418 = !DILocation(line: 318, column: 11, scope: !2366)
!2419 = !DILocation(line: 318, column: 12, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2366, file: !604, line: 318, column: 11)
!2421 = !DILocation(line: 319, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !604, line: 319, column: 9)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !604, line: 319, column: 9)
!2424 = !DILocation(line: 319, column: 9, scope: !2423)
!2425 = !DILocation(line: 0, scope: !682, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 357, column: 26, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !604, line: 335, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2365, file: !604, line: 334, column: 13)
!2429 = !DILocation(line: 199, column: 29, scope: !682, inlinedAt: !2426)
!2430 = !DILocation(line: 201, column: 19, scope: !2431, inlinedAt: !2426)
!2431 = distinct !DILexicalBlock(scope: !682, file: !604, line: 201, column: 7)
!2432 = !DILocation(line: 201, column: 7, scope: !682, inlinedAt: !2426)
!2433 = !DILocation(line: 229, column: 3, scope: !682, inlinedAt: !2426)
!2434 = !DILocation(line: 230, column: 3, scope: !682, inlinedAt: !2426)
!2435 = !DILocation(line: 230, column: 13, scope: !682, inlinedAt: !2426)
!2436 = !DILocalVariable(name: "ps", arg: 1, scope: !2437, file: !2184, line: 1135, type: !2440)
!2437 = distinct !DISubprogram(name: "mbszero", scope: !2184, file: !2184, line: 1135, type: !2438, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2441)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!2441 = !{!2436}
!2442 = !DILocation(line: 0, scope: !2437, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 230, column: 18, scope: !682, inlinedAt: !2426)
!2444 = !DILocalVariable(name: "__dest", arg: 1, scope: !2445, file: !2193, line: 57, type: !125)
!2445 = distinct !DISubprogram(name: "memset", scope: !2193, file: !2193, line: 57, type: !2194, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2446)
!2446 = !{!2444, !2447, !2448}
!2447 = !DILocalVariable(name: "__ch", arg: 2, scope: !2445, file: !2193, line: 57, type: !103)
!2448 = !DILocalVariable(name: "__len", arg: 3, scope: !2445, file: !2193, line: 57, type: !127)
!2449 = !DILocation(line: 0, scope: !2445, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 1137, column: 3, scope: !2437, inlinedAt: !2443)
!2451 = !DILocation(line: 59, column: 10, scope: !2445, inlinedAt: !2450)
!2452 = !DILocation(line: 231, column: 7, scope: !2453, inlinedAt: !2426)
!2453 = distinct !DILexicalBlock(scope: !682, file: !604, line: 231, column: 7)
!2454 = !DILocation(line: 231, column: 40, scope: !2453, inlinedAt: !2426)
!2455 = !DILocation(line: 231, column: 45, scope: !2453, inlinedAt: !2426)
!2456 = !DILocation(line: 235, column: 1, scope: !682, inlinedAt: !2426)
!2457 = !DILocation(line: 0, scope: !682, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 358, column: 27, scope: !2427)
!2459 = !DILocation(line: 199, column: 29, scope: !682, inlinedAt: !2458)
!2460 = !DILocation(line: 201, column: 19, scope: !2431, inlinedAt: !2458)
!2461 = !DILocation(line: 201, column: 7, scope: !682, inlinedAt: !2458)
!2462 = !DILocation(line: 229, column: 3, scope: !682, inlinedAt: !2458)
!2463 = !DILocation(line: 230, column: 3, scope: !682, inlinedAt: !2458)
!2464 = !DILocation(line: 230, column: 13, scope: !682, inlinedAt: !2458)
!2465 = !DILocation(line: 0, scope: !2437, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 230, column: 18, scope: !682, inlinedAt: !2458)
!2467 = !DILocation(line: 0, scope: !2445, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1137, column: 3, scope: !2437, inlinedAt: !2466)
!2469 = !DILocation(line: 59, column: 10, scope: !2445, inlinedAt: !2468)
!2470 = !DILocation(line: 231, column: 7, scope: !2453, inlinedAt: !2458)
!2471 = !DILocation(line: 231, column: 40, scope: !2453, inlinedAt: !2458)
!2472 = !DILocation(line: 231, column: 45, scope: !2453, inlinedAt: !2458)
!2473 = !DILocation(line: 235, column: 1, scope: !682, inlinedAt: !2458)
!2474 = !DILocation(line: 360, column: 14, scope: !2364)
!2475 = !DILocation(line: 360, column: 13, scope: !2365)
!2476 = !DILocation(line: 0, scope: !2363)
!2477 = !DILocation(line: 361, column: 45, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2363, file: !604, line: 361, column: 11)
!2479 = !DILocation(line: 361, column: 11, scope: !2363)
!2480 = !DILocation(line: 362, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !604, line: 362, column: 13)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !604, line: 362, column: 13)
!2483 = !DILocation(line: 362, column: 13, scope: !2482)
!2484 = !DILocation(line: 361, column: 52, scope: !2478)
!2485 = distinct !{!2485, !2479, !2486, !1112}
!2486 = !DILocation(line: 362, column: 13, scope: !2363)
!2487 = !DILocation(line: 260, column: 10, scope: !2337)
!2488 = !DILocation(line: 365, column: 28, scope: !2365)
!2489 = !DILocation(line: 367, column: 7, scope: !2366)
!2490 = !DILocation(line: 370, column: 7, scope: !2366)
!2491 = !DILocation(line: 373, column: 7, scope: !2366)
!2492 = !DILocation(line: 376, column: 12, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2366, file: !604, line: 376, column: 11)
!2494 = !DILocation(line: 376, column: 11, scope: !2366)
!2495 = !DILocation(line: 381, column: 12, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2366, file: !604, line: 381, column: 11)
!2497 = !DILocation(line: 381, column: 11, scope: !2366)
!2498 = !DILocation(line: 382, column: 9, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !604, line: 382, column: 9)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !604, line: 382, column: 9)
!2501 = !DILocation(line: 382, column: 9, scope: !2500)
!2502 = !DILocation(line: 389, column: 7, scope: !2366)
!2503 = !DILocation(line: 392, column: 7, scope: !2366)
!2504 = !DILocation(line: 0, scope: !2368)
!2505 = !DILocation(line: 395, column: 8, scope: !2368)
!2506 = !DILocation(line: 309, column: 8, scope: !2337)
!2507 = !DILocation(line: 395, scope: !2368)
!2508 = !DILocation(line: 395, column: 34, scope: !2371)
!2509 = !DILocation(line: 395, column: 26, scope: !2371)
!2510 = !DILocation(line: 395, column: 48, scope: !2371)
!2511 = !DILocation(line: 395, column: 55, scope: !2371)
!2512 = !DILocation(line: 395, column: 3, scope: !2368)
!2513 = !DILocation(line: 395, column: 67, scope: !2371)
!2514 = !DILocation(line: 0, scope: !2370)
!2515 = !DILocation(line: 402, column: 11, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2370, file: !604, line: 401, column: 11)
!2517 = !DILocation(line: 404, column: 17, scope: !2516)
!2518 = !DILocation(line: 405, column: 39, scope: !2516)
!2519 = !DILocation(line: 409, column: 32, scope: !2516)
!2520 = !DILocation(line: 405, column: 19, scope: !2516)
!2521 = !DILocation(line: 405, column: 15, scope: !2516)
!2522 = !DILocation(line: 410, column: 11, scope: !2516)
!2523 = !DILocation(line: 410, column: 25, scope: !2516)
!2524 = !DILocalVariable(name: "__s1", arg: 1, scope: !2525, file: !1078, line: 974, type: !1214)
!2525 = distinct !DISubprogram(name: "memeq", scope: !1078, file: !1078, line: 974, type: !2154, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2526)
!2526 = !{!2524, !2527, !2528}
!2527 = !DILocalVariable(name: "__s2", arg: 2, scope: !2525, file: !1078, line: 974, type: !1214)
!2528 = !DILocalVariable(name: "__n", arg: 3, scope: !2525, file: !1078, line: 974, type: !127)
!2529 = !DILocation(line: 0, scope: !2525, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 410, column: 14, scope: !2516)
!2531 = !DILocation(line: 976, column: 11, scope: !2525, inlinedAt: !2530)
!2532 = !DILocation(line: 976, column: 10, scope: !2525, inlinedAt: !2530)
!2533 = !DILocation(line: 401, column: 11, scope: !2370)
!2534 = !DILocation(line: 417, column: 25, scope: !2370)
!2535 = !DILocation(line: 418, column: 7, scope: !2370)
!2536 = !DILocation(line: 421, column: 15, scope: !2377)
!2537 = !DILocation(line: 423, column: 15, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !604, line: 423, column: 15)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !604, line: 422, column: 13)
!2540 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 421, column: 15)
!2541 = !DILocation(line: 423, column: 15, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2538, file: !604, line: 423, column: 15)
!2543 = !DILocation(line: 423, column: 15, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !604, line: 423, column: 15)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !604, line: 423, column: 15)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !604, line: 423, column: 15)
!2547 = !DILocation(line: 423, column: 15, scope: !2545)
!2548 = !DILocation(line: 423, column: 15, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !604, line: 423, column: 15)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !604, line: 423, column: 15)
!2551 = !DILocation(line: 423, column: 15, scope: !2550)
!2552 = !DILocation(line: 423, column: 15, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !604, line: 423, column: 15)
!2554 = distinct !DILexicalBlock(scope: !2546, file: !604, line: 423, column: 15)
!2555 = !DILocation(line: 423, column: 15, scope: !2554)
!2556 = !DILocation(line: 423, column: 15, scope: !2546)
!2557 = !DILocation(line: 423, column: 15, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !604, line: 423, column: 15)
!2559 = distinct !DILexicalBlock(scope: !2538, file: !604, line: 423, column: 15)
!2560 = !DILocation(line: 423, column: 15, scope: !2559)
!2561 = !DILocation(line: 431, column: 19, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2539, file: !604, line: 430, column: 19)
!2563 = !DILocation(line: 431, column: 24, scope: !2562)
!2564 = !DILocation(line: 431, column: 28, scope: !2562)
!2565 = !DILocation(line: 431, column: 38, scope: !2562)
!2566 = !DILocation(line: 431, column: 48, scope: !2562)
!2567 = !DILocation(line: 431, column: 59, scope: !2562)
!2568 = !DILocation(line: 433, column: 19, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !604, line: 433, column: 19)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !604, line: 433, column: 19)
!2571 = distinct !DILexicalBlock(scope: !2562, file: !604, line: 432, column: 17)
!2572 = !DILocation(line: 433, column: 19, scope: !2570)
!2573 = !DILocation(line: 434, column: 19, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !604, line: 434, column: 19)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !604, line: 434, column: 19)
!2576 = !DILocation(line: 434, column: 19, scope: !2575)
!2577 = !DILocation(line: 435, column: 17, scope: !2571)
!2578 = !DILocation(line: 442, column: 20, scope: !2540)
!2579 = !DILocation(line: 447, column: 11, scope: !2377)
!2580 = !DILocation(line: 450, column: 19, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 448, column: 13)
!2582 = !DILocation(line: 456, column: 19, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2581, file: !604, line: 455, column: 19)
!2584 = !DILocation(line: 456, column: 24, scope: !2583)
!2585 = !DILocation(line: 456, column: 28, scope: !2583)
!2586 = !DILocation(line: 456, column: 38, scope: !2583)
!2587 = !DILocation(line: 456, column: 47, scope: !2583)
!2588 = !DILocation(line: 456, column: 41, scope: !2583)
!2589 = !DILocation(line: 456, column: 52, scope: !2583)
!2590 = !DILocation(line: 455, column: 19, scope: !2581)
!2591 = !DILocation(line: 457, column: 25, scope: !2583)
!2592 = !DILocation(line: 457, column: 17, scope: !2583)
!2593 = !DILocation(line: 464, column: 25, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2583, file: !604, line: 458, column: 19)
!2595 = !DILocation(line: 468, column: 21, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !604, line: 468, column: 21)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !604, line: 468, column: 21)
!2598 = !DILocation(line: 468, column: 21, scope: !2597)
!2599 = !DILocation(line: 469, column: 21, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !604, line: 469, column: 21)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !604, line: 469, column: 21)
!2602 = !DILocation(line: 469, column: 21, scope: !2601)
!2603 = !DILocation(line: 470, column: 21, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !604, line: 470, column: 21)
!2605 = distinct !DILexicalBlock(scope: !2594, file: !604, line: 470, column: 21)
!2606 = !DILocation(line: 470, column: 21, scope: !2605)
!2607 = !DILocation(line: 471, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !604, line: 471, column: 21)
!2609 = distinct !DILexicalBlock(scope: !2594, file: !604, line: 471, column: 21)
!2610 = !DILocation(line: 471, column: 21, scope: !2609)
!2611 = !DILocation(line: 472, column: 21, scope: !2594)
!2612 = !DILocation(line: 482, column: 33, scope: !2400)
!2613 = !DILocation(line: 483, column: 33, scope: !2400)
!2614 = !DILocation(line: 485, column: 33, scope: !2400)
!2615 = !DILocation(line: 486, column: 33, scope: !2400)
!2616 = !DILocation(line: 487, column: 33, scope: !2400)
!2617 = !DILocation(line: 490, column: 17, scope: !2400)
!2618 = !DILocation(line: 492, column: 21, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !604, line: 491, column: 15)
!2620 = distinct !DILexicalBlock(scope: !2400, file: !604, line: 490, column: 17)
!2621 = !DILocation(line: 499, column: 35, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2400, file: !604, line: 499, column: 17)
!2623 = !DILocation(line: 499, column: 57, scope: !2622)
!2624 = !DILocation(line: 0, scope: !2400)
!2625 = !DILocation(line: 502, column: 11, scope: !2400)
!2626 = !DILocation(line: 504, column: 17, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2400, file: !604, line: 503, column: 17)
!2628 = !DILocation(line: 507, column: 11, scope: !2400)
!2629 = !DILocation(line: 508, column: 17, scope: !2400)
!2630 = !DILocation(line: 517, column: 15, scope: !2377)
!2631 = !DILocation(line: 517, column: 40, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 517, column: 15)
!2633 = !DILocation(line: 517, column: 47, scope: !2632)
!2634 = !DILocation(line: 517, column: 18, scope: !2632)
!2635 = !DILocation(line: 521, column: 17, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 521, column: 15)
!2637 = !DILocation(line: 521, column: 15, scope: !2377)
!2638 = !DILocation(line: 525, column: 11, scope: !2377)
!2639 = !DILocation(line: 537, column: 15, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 536, column: 15)
!2641 = !DILocation(line: 544, column: 15, scope: !2377)
!2642 = !DILocation(line: 546, column: 19, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !604, line: 545, column: 13)
!2644 = distinct !DILexicalBlock(scope: !2377, file: !604, line: 544, column: 15)
!2645 = !DILocation(line: 549, column: 19, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !604, line: 549, column: 19)
!2647 = !DILocation(line: 549, column: 30, scope: !2646)
!2648 = !DILocation(line: 558, column: 15, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !604, line: 558, column: 15)
!2650 = distinct !DILexicalBlock(scope: !2643, file: !604, line: 558, column: 15)
!2651 = !DILocation(line: 558, column: 15, scope: !2650)
!2652 = !DILocation(line: 559, column: 15, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !604, line: 559, column: 15)
!2654 = distinct !DILexicalBlock(scope: !2643, file: !604, line: 559, column: 15)
!2655 = !DILocation(line: 559, column: 15, scope: !2654)
!2656 = !DILocation(line: 560, column: 15, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !604, line: 560, column: 15)
!2658 = distinct !DILexicalBlock(scope: !2643, file: !604, line: 560, column: 15)
!2659 = !DILocation(line: 560, column: 15, scope: !2658)
!2660 = !DILocation(line: 562, column: 13, scope: !2643)
!2661 = !DILocation(line: 602, column: 17, scope: !2376)
!2662 = !DILocation(line: 0, scope: !2376)
!2663 = !DILocation(line: 605, column: 29, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2381, file: !604, line: 603, column: 15)
!2665 = !DILocation(line: 605, column: 27, scope: !2664)
!2666 = !DILocation(line: 668, column: 40, scope: !2376)
!2667 = !DILocation(line: 670, column: 23, scope: !2397)
!2668 = !DILocation(line: 609, column: 17, scope: !2380)
!2669 = !DILocation(line: 609, column: 27, scope: !2380)
!2670 = !DILocation(line: 0, scope: !2437, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 609, column: 32, scope: !2380)
!2672 = !DILocation(line: 0, scope: !2445, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1137, column: 3, scope: !2437, inlinedAt: !2671)
!2674 = !DILocation(line: 59, column: 10, scope: !2445, inlinedAt: !2673)
!2675 = !DILocation(line: 613, column: 29, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2380, file: !604, line: 613, column: 21)
!2677 = !DILocation(line: 613, column: 21, scope: !2380)
!2678 = !DILocation(line: 614, column: 29, scope: !2676)
!2679 = !DILocation(line: 614, column: 19, scope: !2676)
!2680 = !DILocation(line: 618, column: 21, scope: !2383)
!2681 = !DILocation(line: 620, column: 54, scope: !2383)
!2682 = !DILocation(line: 0, scope: !2383)
!2683 = !DILocation(line: 619, column: 36, scope: !2383)
!2684 = !DILocation(line: 621, column: 25, scope: !2383)
!2685 = !DILocation(line: 631, column: 38, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2392, file: !604, line: 629, column: 23)
!2687 = !DILocation(line: 631, column: 48, scope: !2686)
!2688 = !DILocation(line: 665, column: 19, scope: !2384)
!2689 = !DILocation(line: 666, column: 15, scope: !2381)
!2690 = !DILocation(line: 626, column: 25, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2393, file: !604, line: 624, column: 23)
!2692 = !DILocation(line: 631, column: 51, scope: !2686)
!2693 = !DILocation(line: 631, column: 25, scope: !2686)
!2694 = !DILocation(line: 632, column: 28, scope: !2686)
!2695 = !DILocation(line: 631, column: 34, scope: !2686)
!2696 = distinct !{!2696, !2693, !2694, !1112}
!2697 = !DILocation(line: 646, column: 29, scope: !2390)
!2698 = !DILocation(line: 0, scope: !2388)
!2699 = !DILocation(line: 649, column: 49, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2388, file: !604, line: 648, column: 29)
!2701 = !DILocation(line: 649, column: 39, scope: !2700)
!2702 = !DILocation(line: 649, column: 31, scope: !2700)
!2703 = !DILocation(line: 648, column: 60, scope: !2700)
!2704 = !DILocation(line: 648, column: 50, scope: !2700)
!2705 = !DILocation(line: 648, column: 29, scope: !2388)
!2706 = distinct !{!2706, !2705, !2707, !1112}
!2707 = !DILocation(line: 654, column: 33, scope: !2388)
!2708 = !DILocation(line: 657, column: 43, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2391, file: !604, line: 657, column: 29)
!2710 = !DILocalVariable(name: "wc", arg: 1, scope: !2711, file: !2712, line: 865, type: !2715)
!2711 = distinct !DISubprogram(name: "c32isprint", scope: !2712, file: !2712, line: 865, type: !2713, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2717)
!2712 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!103, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2716, line: 20, baseType: !109)
!2716 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2717 = !{!2710}
!2718 = !DILocation(line: 0, scope: !2711, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 657, column: 31, scope: !2709)
!2720 = !DILocation(line: 871, column: 10, scope: !2711, inlinedAt: !2719)
!2721 = !DILocation(line: 657, column: 31, scope: !2709)
!2722 = !DILocation(line: 657, column: 29, scope: !2391)
!2723 = !DILocation(line: 664, column: 23, scope: !2383)
!2724 = !DILocation(line: 670, column: 19, scope: !2397)
!2725 = !DILocation(line: 670, column: 45, scope: !2397)
!2726 = !DILocation(line: 674, column: 33, scope: !2396)
!2727 = !DILocation(line: 0, scope: !2396)
!2728 = !DILocation(line: 676, column: 17, scope: !2396)
!2729 = !DILocation(line: 398, column: 12, scope: !2370)
!2730 = !DILocation(line: 678, column: 43, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !604, line: 678, column: 25)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !604, line: 677, column: 19)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !604, line: 676, column: 17)
!2734 = distinct !DILexicalBlock(scope: !2396, file: !604, line: 676, column: 17)
!2735 = !DILocation(line: 680, column: 25, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !604, line: 680, column: 25)
!2737 = distinct !DILexicalBlock(scope: !2731, file: !604, line: 679, column: 23)
!2738 = !DILocation(line: 680, column: 25, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !604, line: 680, column: 25)
!2740 = !DILocation(line: 680, column: 25, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !604, line: 680, column: 25)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !604, line: 680, column: 25)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !604, line: 680, column: 25)
!2744 = !DILocation(line: 680, column: 25, scope: !2742)
!2745 = !DILocation(line: 680, column: 25, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !604, line: 680, column: 25)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !604, line: 680, column: 25)
!2748 = !DILocation(line: 680, column: 25, scope: !2747)
!2749 = !DILocation(line: 680, column: 25, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !604, line: 680, column: 25)
!2751 = distinct !DILexicalBlock(scope: !2743, file: !604, line: 680, column: 25)
!2752 = !DILocation(line: 680, column: 25, scope: !2751)
!2753 = !DILocation(line: 680, column: 25, scope: !2743)
!2754 = !DILocation(line: 680, column: 25, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !604, line: 680, column: 25)
!2756 = distinct !DILexicalBlock(scope: !2736, file: !604, line: 680, column: 25)
!2757 = !DILocation(line: 680, column: 25, scope: !2756)
!2758 = !DILocation(line: 681, column: 25, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !604, line: 681, column: 25)
!2760 = distinct !DILexicalBlock(scope: !2737, file: !604, line: 681, column: 25)
!2761 = !DILocation(line: 681, column: 25, scope: !2760)
!2762 = !DILocation(line: 682, column: 25, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !604, line: 682, column: 25)
!2764 = distinct !DILexicalBlock(scope: !2737, file: !604, line: 682, column: 25)
!2765 = !DILocation(line: 682, column: 25, scope: !2764)
!2766 = !DILocation(line: 683, column: 38, scope: !2737)
!2767 = !DILocation(line: 683, column: 33, scope: !2737)
!2768 = !DILocation(line: 684, column: 23, scope: !2737)
!2769 = !DILocation(line: 685, column: 30, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2731, file: !604, line: 685, column: 30)
!2771 = !DILocation(line: 685, column: 30, scope: !2731)
!2772 = !DILocation(line: 687, column: 25, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !604, line: 687, column: 25)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !604, line: 687, column: 25)
!2775 = distinct !DILexicalBlock(scope: !2770, file: !604, line: 686, column: 23)
!2776 = !DILocation(line: 687, column: 25, scope: !2774)
!2777 = !DILocation(line: 689, column: 23, scope: !2775)
!2778 = !DILocation(line: 690, column: 35, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2732, file: !604, line: 690, column: 25)
!2780 = !DILocation(line: 690, column: 30, scope: !2779)
!2781 = !DILocation(line: 690, column: 25, scope: !2732)
!2782 = !DILocation(line: 692, column: 21, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !604, line: 692, column: 21)
!2784 = distinct !DILexicalBlock(scope: !2732, file: !604, line: 692, column: 21)
!2785 = !DILocation(line: 692, column: 21, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !604, line: 692, column: 21)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !604, line: 692, column: 21)
!2788 = distinct !DILexicalBlock(scope: !2783, file: !604, line: 692, column: 21)
!2789 = !DILocation(line: 692, column: 21, scope: !2787)
!2790 = !DILocation(line: 692, column: 21, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !604, line: 692, column: 21)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !604, line: 692, column: 21)
!2793 = !DILocation(line: 692, column: 21, scope: !2792)
!2794 = !DILocation(line: 692, column: 21, scope: !2788)
!2795 = !DILocation(line: 0, scope: !2732)
!2796 = !DILocation(line: 693, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !604, line: 693, column: 21)
!2798 = distinct !DILexicalBlock(scope: !2732, file: !604, line: 693, column: 21)
!2799 = !DILocation(line: 693, column: 21, scope: !2798)
!2800 = !DILocation(line: 694, column: 25, scope: !2732)
!2801 = !DILocation(line: 676, column: 17, scope: !2733)
!2802 = distinct !{!2802, !2803, !2804}
!2803 = !DILocation(line: 676, column: 17, scope: !2734)
!2804 = !DILocation(line: 695, column: 19, scope: !2734)
!2805 = !DILocation(line: 409, column: 30, scope: !2516)
!2806 = !DILocation(line: 702, column: 34, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2370, file: !604, line: 702, column: 11)
!2808 = !DILocation(line: 704, column: 14, scope: !2807)
!2809 = !DILocation(line: 705, column: 14, scope: !2807)
!2810 = !DILocation(line: 705, column: 35, scope: !2807)
!2811 = !DILocation(line: 705, column: 17, scope: !2807)
!2812 = !DILocation(line: 705, column: 47, scope: !2807)
!2813 = !DILocation(line: 705, column: 65, scope: !2807)
!2814 = !DILocation(line: 706, column: 11, scope: !2807)
!2815 = !DILocation(line: 702, column: 11, scope: !2370)
!2816 = !DILocation(line: 395, column: 15, scope: !2368)
!2817 = !DILocation(line: 709, column: 5, scope: !2370)
!2818 = !DILocation(line: 710, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2370, file: !604, line: 710, column: 7)
!2820 = !DILocation(line: 710, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2819, file: !604, line: 710, column: 7)
!2822 = !DILocation(line: 710, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !604, line: 710, column: 7)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !604, line: 710, column: 7)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !604, line: 710, column: 7)
!2826 = !DILocation(line: 710, column: 7, scope: !2824)
!2827 = !DILocation(line: 710, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !604, line: 710, column: 7)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !604, line: 710, column: 7)
!2830 = !DILocation(line: 710, column: 7, scope: !2829)
!2831 = !DILocation(line: 710, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !604, line: 710, column: 7)
!2833 = distinct !DILexicalBlock(scope: !2825, file: !604, line: 710, column: 7)
!2834 = !DILocation(line: 710, column: 7, scope: !2833)
!2835 = !DILocation(line: 710, column: 7, scope: !2825)
!2836 = !DILocation(line: 710, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !604, line: 710, column: 7)
!2838 = distinct !DILexicalBlock(scope: !2819, file: !604, line: 710, column: 7)
!2839 = !DILocation(line: 710, column: 7, scope: !2838)
!2840 = !DILocation(line: 712, column: 5, scope: !2370)
!2841 = !DILocation(line: 713, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !604, line: 713, column: 7)
!2843 = distinct !DILexicalBlock(scope: !2370, file: !604, line: 713, column: 7)
!2844 = !DILocation(line: 417, column: 21, scope: !2370)
!2845 = !DILocation(line: 713, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !604, line: 713, column: 7)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !604, line: 713, column: 7)
!2848 = distinct !DILexicalBlock(scope: !2842, file: !604, line: 713, column: 7)
!2849 = !DILocation(line: 713, column: 7, scope: !2847)
!2850 = !DILocation(line: 713, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !604, line: 713, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !604, line: 713, column: 7)
!2853 = !DILocation(line: 713, column: 7, scope: !2852)
!2854 = !DILocation(line: 713, column: 7, scope: !2848)
!2855 = !DILocation(line: 714, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !604, line: 714, column: 7)
!2857 = distinct !DILexicalBlock(scope: !2370, file: !604, line: 714, column: 7)
!2858 = !DILocation(line: 714, column: 7, scope: !2857)
!2859 = !DILocation(line: 716, column: 13, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2370, file: !604, line: 716, column: 11)
!2861 = !DILocation(line: 716, column: 11, scope: !2370)
!2862 = !DILocation(line: 718, column: 5, scope: !2371)
!2863 = !DILocation(line: 395, column: 82, scope: !2371)
!2864 = !DILocation(line: 395, column: 3, scope: !2371)
!2865 = distinct !{!2865, !2512, !2866, !1112}
!2866 = !DILocation(line: 718, column: 5, scope: !2368)
!2867 = !DILocation(line: 720, column: 11, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2337, file: !604, line: 720, column: 7)
!2869 = !DILocation(line: 720, column: 16, scope: !2868)
!2870 = !DILocation(line: 728, column: 51, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2337, file: !604, line: 728, column: 7)
!2872 = !DILocation(line: 731, column: 11, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !604, line: 731, column: 11)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !604, line: 730, column: 5)
!2875 = !DILocation(line: 731, column: 11, scope: !2874)
!2876 = !DILocation(line: 732, column: 16, scope: !2873)
!2877 = !DILocation(line: 732, column: 9, scope: !2873)
!2878 = !DILocation(line: 736, column: 18, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2873, file: !604, line: 736, column: 16)
!2880 = !DILocation(line: 736, column: 29, scope: !2879)
!2881 = !DILocation(line: 745, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2337, file: !604, line: 745, column: 7)
!2883 = !DILocation(line: 745, column: 20, scope: !2882)
!2884 = !DILocation(line: 746, column: 12, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !604, line: 746, column: 5)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !604, line: 746, column: 5)
!2887 = !DILocation(line: 746, column: 5, scope: !2886)
!2888 = !DILocation(line: 747, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !604, line: 747, column: 7)
!2890 = distinct !DILexicalBlock(scope: !2885, file: !604, line: 747, column: 7)
!2891 = !DILocation(line: 747, column: 7, scope: !2890)
!2892 = !DILocation(line: 746, column: 39, scope: !2885)
!2893 = distinct !{!2893, !2887, !2894, !1112}
!2894 = !DILocation(line: 747, column: 7, scope: !2886)
!2895 = !DILocation(line: 749, column: 11, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2337, file: !604, line: 749, column: 7)
!2897 = !DILocation(line: 749, column: 7, scope: !2337)
!2898 = !DILocation(line: 750, column: 5, scope: !2896)
!2899 = !DILocation(line: 750, column: 17, scope: !2896)
!2900 = !DILocation(line: 753, column: 2, scope: !2337)
!2901 = !DILocation(line: 756, column: 51, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2337, file: !604, line: 756, column: 7)
!2903 = !DILocation(line: 756, column: 21, scope: !2902)
!2904 = !DILocation(line: 760, column: 42, scope: !2337)
!2905 = !DILocation(line: 758, column: 10, scope: !2337)
!2906 = !DILocation(line: 758, column: 3, scope: !2337)
!2907 = !DILocation(line: 762, column: 1, scope: !2337)
!2908 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1190, file: !1190, line: 98, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!127}
!2911 = !DISubprogram(name: "strlen", scope: !1186, file: !1186, line: 407, type: !2912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!129, !130}
!2914 = !DISubprogram(name: "iswprint", scope: !2915, file: !2915, line: 120, type: !2713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!2915 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2916 = distinct !DISubprogram(name: "quotearg_alloc", scope: !604, file: !604, line: 788, type: !2917, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!124, !130, !127, !2230}
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2916, file: !604, line: 788, type: !130)
!2921 = !DILocalVariable(name: "argsize", arg: 2, scope: !2916, file: !604, line: 788, type: !127)
!2922 = !DILocalVariable(name: "o", arg: 3, scope: !2916, file: !604, line: 789, type: !2230)
!2923 = !DILocation(line: 0, scope: !2916)
!2924 = !DILocalVariable(name: "arg", arg: 1, scope: !2925, file: !604, line: 801, type: !130)
!2925 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !604, file: !604, line: 801, type: !2926, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!124, !130, !127, !882, !2230}
!2928 = !{!2924, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2929 = !DILocalVariable(name: "argsize", arg: 2, scope: !2925, file: !604, line: 801, type: !127)
!2930 = !DILocalVariable(name: "size", arg: 3, scope: !2925, file: !604, line: 801, type: !882)
!2931 = !DILocalVariable(name: "o", arg: 4, scope: !2925, file: !604, line: 802, type: !2230)
!2932 = !DILocalVariable(name: "p", scope: !2925, file: !604, line: 804, type: !2230)
!2933 = !DILocalVariable(name: "saved_errno", scope: !2925, file: !604, line: 805, type: !103)
!2934 = !DILocalVariable(name: "flags", scope: !2925, file: !604, line: 807, type: !103)
!2935 = !DILocalVariable(name: "bufsize", scope: !2925, file: !604, line: 808, type: !127)
!2936 = !DILocalVariable(name: "buf", scope: !2925, file: !604, line: 812, type: !124)
!2937 = !DILocation(line: 0, scope: !2925, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 791, column: 10, scope: !2916)
!2939 = !DILocation(line: 804, column: 37, scope: !2925, inlinedAt: !2938)
!2940 = !DILocation(line: 805, column: 21, scope: !2925, inlinedAt: !2938)
!2941 = !DILocation(line: 807, column: 18, scope: !2925, inlinedAt: !2938)
!2942 = !DILocation(line: 807, column: 24, scope: !2925, inlinedAt: !2938)
!2943 = !DILocation(line: 808, column: 72, scope: !2925, inlinedAt: !2938)
!2944 = !DILocation(line: 809, column: 56, scope: !2925, inlinedAt: !2938)
!2945 = !DILocation(line: 810, column: 49, scope: !2925, inlinedAt: !2938)
!2946 = !DILocation(line: 811, column: 49, scope: !2925, inlinedAt: !2938)
!2947 = !DILocation(line: 808, column: 20, scope: !2925, inlinedAt: !2938)
!2948 = !DILocation(line: 811, column: 62, scope: !2925, inlinedAt: !2938)
!2949 = !DILocation(line: 812, column: 15, scope: !2925, inlinedAt: !2938)
!2950 = !DILocation(line: 813, column: 60, scope: !2925, inlinedAt: !2938)
!2951 = !DILocation(line: 815, column: 32, scope: !2925, inlinedAt: !2938)
!2952 = !DILocation(line: 815, column: 47, scope: !2925, inlinedAt: !2938)
!2953 = !DILocation(line: 813, column: 3, scope: !2925, inlinedAt: !2938)
!2954 = !DILocation(line: 816, column: 9, scope: !2925, inlinedAt: !2938)
!2955 = !DILocation(line: 791, column: 3, scope: !2916)
!2956 = !DILocation(line: 0, scope: !2925)
!2957 = !DILocation(line: 804, column: 37, scope: !2925)
!2958 = !DILocation(line: 805, column: 21, scope: !2925)
!2959 = !DILocation(line: 807, column: 18, scope: !2925)
!2960 = !DILocation(line: 807, column: 27, scope: !2925)
!2961 = !DILocation(line: 807, column: 24, scope: !2925)
!2962 = !DILocation(line: 808, column: 72, scope: !2925)
!2963 = !DILocation(line: 809, column: 56, scope: !2925)
!2964 = !DILocation(line: 810, column: 49, scope: !2925)
!2965 = !DILocation(line: 811, column: 49, scope: !2925)
!2966 = !DILocation(line: 808, column: 20, scope: !2925)
!2967 = !DILocation(line: 811, column: 62, scope: !2925)
!2968 = !DILocation(line: 812, column: 15, scope: !2925)
!2969 = !DILocation(line: 813, column: 60, scope: !2925)
!2970 = !DILocation(line: 815, column: 32, scope: !2925)
!2971 = !DILocation(line: 815, column: 47, scope: !2925)
!2972 = !DILocation(line: 813, column: 3, scope: !2925)
!2973 = !DILocation(line: 816, column: 9, scope: !2925)
!2974 = !DILocation(line: 817, column: 7, scope: !2925)
!2975 = !DILocation(line: 818, column: 11, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2925, file: !604, line: 817, column: 7)
!2977 = !{!1366, !1366, i64 0}
!2978 = !DILocation(line: 818, column: 5, scope: !2976)
!2979 = !DILocation(line: 819, column: 3, scope: !2925)
!2980 = distinct !DISubprogram(name: "quotearg_free", scope: !604, file: !604, line: 837, type: !559, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2981)
!2981 = !{!2982, !2983}
!2982 = !DILocalVariable(name: "sv", scope: !2980, file: !604, line: 839, type: !705)
!2983 = !DILocalVariable(name: "i", scope: !2984, file: !604, line: 840, type: !103)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !604, line: 840, column: 3)
!2985 = !DILocation(line: 839, column: 24, scope: !2980)
!2986 = !DILocation(line: 0, scope: !2980)
!2987 = !DILocation(line: 0, scope: !2984)
!2988 = !DILocation(line: 840, column: 21, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !604, line: 840, column: 3)
!2990 = !DILocation(line: 840, column: 3, scope: !2984)
!2991 = !DILocation(line: 842, column: 13, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2980, file: !604, line: 842, column: 7)
!2993 = !{!2994, !996, i64 8}
!2994 = !{!"slotvec", !1366, i64 0, !996, i64 8}
!2995 = !DILocation(line: 842, column: 17, scope: !2992)
!2996 = !DILocation(line: 842, column: 7, scope: !2980)
!2997 = !DILocation(line: 841, column: 17, scope: !2989)
!2998 = !DILocation(line: 841, column: 5, scope: !2989)
!2999 = !DILocation(line: 840, column: 32, scope: !2989)
!3000 = distinct !{!3000, !2990, !3001, !1112}
!3001 = !DILocation(line: 841, column: 20, scope: !2984)
!3002 = !DILocation(line: 844, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2992, file: !604, line: 843, column: 5)
!3004 = !DILocation(line: 845, column: 21, scope: !3003)
!3005 = !{!2994, !1366, i64 0}
!3006 = !DILocation(line: 846, column: 20, scope: !3003)
!3007 = !DILocation(line: 847, column: 5, scope: !3003)
!3008 = !DILocation(line: 848, column: 10, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2980, file: !604, line: 848, column: 7)
!3010 = !DILocation(line: 848, column: 7, scope: !2980)
!3011 = !DILocation(line: 850, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !604, line: 849, column: 5)
!3013 = !DILocation(line: 851, column: 15, scope: !3012)
!3014 = !DILocation(line: 852, column: 5, scope: !3012)
!3015 = !DILocation(line: 853, column: 10, scope: !2980)
!3016 = !DILocation(line: 854, column: 1, scope: !2980)
!3017 = distinct !DISubprogram(name: "quotearg_n", scope: !604, file: !604, line: 919, type: !1183, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3018)
!3018 = !{!3019, !3020}
!3019 = !DILocalVariable(name: "n", arg: 1, scope: !3017, file: !604, line: 919, type: !103)
!3020 = !DILocalVariable(name: "arg", arg: 2, scope: !3017, file: !604, line: 919, type: !130)
!3021 = !DILocation(line: 0, scope: !3017)
!3022 = !DILocation(line: 921, column: 10, scope: !3017)
!3023 = !DILocation(line: 921, column: 3, scope: !3017)
!3024 = distinct !DISubprogram(name: "quotearg_n_options", scope: !604, file: !604, line: 866, type: !3025, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!124, !103, !130, !127, !2230}
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3038, !3039, !3041, !3042, !3043}
!3028 = !DILocalVariable(name: "n", arg: 1, scope: !3024, file: !604, line: 866, type: !103)
!3029 = !DILocalVariable(name: "arg", arg: 2, scope: !3024, file: !604, line: 866, type: !130)
!3030 = !DILocalVariable(name: "argsize", arg: 3, scope: !3024, file: !604, line: 866, type: !127)
!3031 = !DILocalVariable(name: "options", arg: 4, scope: !3024, file: !604, line: 867, type: !2230)
!3032 = !DILocalVariable(name: "saved_errno", scope: !3024, file: !604, line: 869, type: !103)
!3033 = !DILocalVariable(name: "sv", scope: !3024, file: !604, line: 871, type: !705)
!3034 = !DILocalVariable(name: "nslots_max", scope: !3024, file: !604, line: 873, type: !103)
!3035 = !DILocalVariable(name: "preallocated", scope: !3036, file: !604, line: 879, type: !223)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !604, line: 878, column: 5)
!3037 = distinct !DILexicalBlock(scope: !3024, file: !604, line: 877, column: 7)
!3038 = !DILocalVariable(name: "new_nslots", scope: !3036, file: !604, line: 880, type: !895)
!3039 = !DILocalVariable(name: "size", scope: !3040, file: !604, line: 891, type: !127)
!3040 = distinct !DILexicalBlock(scope: !3024, file: !604, line: 890, column: 3)
!3041 = !DILocalVariable(name: "val", scope: !3040, file: !604, line: 892, type: !124)
!3042 = !DILocalVariable(name: "flags", scope: !3040, file: !604, line: 894, type: !103)
!3043 = !DILocalVariable(name: "qsize", scope: !3040, file: !604, line: 895, type: !127)
!3044 = !DILocation(line: 0, scope: !3024)
!3045 = !DILocation(line: 869, column: 21, scope: !3024)
!3046 = !DILocation(line: 871, column: 24, scope: !3024)
!3047 = !DILocation(line: 874, column: 17, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3024, file: !604, line: 874, column: 7)
!3049 = !DILocation(line: 875, column: 5, scope: !3048)
!3050 = !DILocation(line: 877, column: 7, scope: !3037)
!3051 = !DILocation(line: 877, column: 14, scope: !3037)
!3052 = !DILocation(line: 877, column: 7, scope: !3024)
!3053 = !DILocation(line: 879, column: 31, scope: !3036)
!3054 = !DILocation(line: 0, scope: !3036)
!3055 = !DILocation(line: 880, column: 7, scope: !3036)
!3056 = !DILocation(line: 880, column: 26, scope: !3036)
!3057 = !DILocation(line: 880, column: 13, scope: !3036)
!3058 = !DILocation(line: 882, column: 31, scope: !3036)
!3059 = !DILocation(line: 883, column: 33, scope: !3036)
!3060 = !DILocation(line: 883, column: 42, scope: !3036)
!3061 = !DILocation(line: 883, column: 31, scope: !3036)
!3062 = !DILocation(line: 882, column: 22, scope: !3036)
!3063 = !DILocation(line: 882, column: 15, scope: !3036)
!3064 = !DILocation(line: 884, column: 11, scope: !3036)
!3065 = !DILocation(line: 885, column: 15, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3036, file: !604, line: 884, column: 11)
!3067 = !{i64 0, i64 8, !2977, i64 8, i64 8, !995}
!3068 = !DILocation(line: 885, column: 9, scope: !3066)
!3069 = !DILocation(line: 886, column: 20, scope: !3036)
!3070 = !DILocation(line: 886, column: 18, scope: !3036)
!3071 = !DILocation(line: 886, column: 32, scope: !3036)
!3072 = !DILocation(line: 886, column: 43, scope: !3036)
!3073 = !DILocation(line: 886, column: 53, scope: !3036)
!3074 = !DILocation(line: 0, scope: !2445, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 886, column: 7, scope: !3036)
!3076 = !DILocation(line: 59, column: 10, scope: !2445, inlinedAt: !3075)
!3077 = !DILocation(line: 887, column: 16, scope: !3036)
!3078 = !DILocation(line: 887, column: 14, scope: !3036)
!3079 = !DILocation(line: 888, column: 5, scope: !3037)
!3080 = !DILocation(line: 888, column: 5, scope: !3036)
!3081 = !DILocation(line: 891, column: 19, scope: !3040)
!3082 = !DILocation(line: 891, column: 25, scope: !3040)
!3083 = !DILocation(line: 0, scope: !3040)
!3084 = !DILocation(line: 892, column: 23, scope: !3040)
!3085 = !DILocation(line: 894, column: 26, scope: !3040)
!3086 = !DILocation(line: 894, column: 32, scope: !3040)
!3087 = !DILocation(line: 896, column: 55, scope: !3040)
!3088 = !DILocation(line: 897, column: 55, scope: !3040)
!3089 = !DILocation(line: 898, column: 55, scope: !3040)
!3090 = !DILocation(line: 899, column: 55, scope: !3040)
!3091 = !DILocation(line: 895, column: 20, scope: !3040)
!3092 = !DILocation(line: 901, column: 14, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3040, file: !604, line: 901, column: 9)
!3094 = !DILocation(line: 901, column: 9, scope: !3040)
!3095 = !DILocation(line: 903, column: 35, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !604, line: 902, column: 7)
!3097 = !DILocation(line: 903, column: 20, scope: !3096)
!3098 = !DILocation(line: 904, column: 17, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3096, file: !604, line: 904, column: 13)
!3100 = !DILocation(line: 904, column: 13, scope: !3096)
!3101 = !DILocation(line: 905, column: 11, scope: !3099)
!3102 = !DILocation(line: 906, column: 27, scope: !3096)
!3103 = !DILocation(line: 906, column: 19, scope: !3096)
!3104 = !DILocation(line: 907, column: 69, scope: !3096)
!3105 = !DILocation(line: 909, column: 44, scope: !3096)
!3106 = !DILocation(line: 910, column: 44, scope: !3096)
!3107 = !DILocation(line: 907, column: 9, scope: !3096)
!3108 = !DILocation(line: 911, column: 7, scope: !3096)
!3109 = !DILocation(line: 913, column: 11, scope: !3040)
!3110 = !DILocation(line: 914, column: 5, scope: !3040)
!3111 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !604, file: !604, line: 925, type: !3112, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!124, !103, !130, !127}
!3114 = !{!3115, !3116, !3117}
!3115 = !DILocalVariable(name: "n", arg: 1, scope: !3111, file: !604, line: 925, type: !103)
!3116 = !DILocalVariable(name: "arg", arg: 2, scope: !3111, file: !604, line: 925, type: !130)
!3117 = !DILocalVariable(name: "argsize", arg: 3, scope: !3111, file: !604, line: 925, type: !127)
!3118 = !DILocation(line: 0, scope: !3111)
!3119 = !DILocation(line: 927, column: 10, scope: !3111)
!3120 = !DILocation(line: 927, column: 3, scope: !3111)
!3121 = distinct !DISubprogram(name: "quotearg", scope: !604, file: !604, line: 931, type: !1192, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3122)
!3122 = !{!3123}
!3123 = !DILocalVariable(name: "arg", arg: 1, scope: !3121, file: !604, line: 931, type: !130)
!3124 = !DILocation(line: 0, scope: !3121)
!3125 = !DILocation(line: 0, scope: !3017, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 933, column: 10, scope: !3121)
!3127 = !DILocation(line: 921, column: 10, scope: !3017, inlinedAt: !3126)
!3128 = !DILocation(line: 933, column: 3, scope: !3121)
!3129 = distinct !DISubprogram(name: "quotearg_mem", scope: !604, file: !604, line: 937, type: !3130, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!124, !130, !127}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "arg", arg: 1, scope: !3129, file: !604, line: 937, type: !130)
!3134 = !DILocalVariable(name: "argsize", arg: 2, scope: !3129, file: !604, line: 937, type: !127)
!3135 = !DILocation(line: 0, scope: !3129)
!3136 = !DILocation(line: 0, scope: !3111, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 939, column: 10, scope: !3129)
!3138 = !DILocation(line: 927, column: 10, scope: !3111, inlinedAt: !3137)
!3139 = !DILocation(line: 939, column: 3, scope: !3129)
!3140 = distinct !DISubprogram(name: "quotearg_n_style", scope: !604, file: !604, line: 943, type: !3141, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!124, !103, !630, !130}
!3143 = !{!3144, !3145, !3146, !3147}
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !604, line: 943, type: !103)
!3145 = !DILocalVariable(name: "s", arg: 2, scope: !3140, file: !604, line: 943, type: !630)
!3146 = !DILocalVariable(name: "arg", arg: 3, scope: !3140, file: !604, line: 943, type: !130)
!3147 = !DILocalVariable(name: "o", scope: !3140, file: !604, line: 945, type: !2231)
!3148 = !DILocation(line: 0, scope: !3140)
!3149 = !DILocation(line: 945, column: 3, scope: !3140)
!3150 = !DILocation(line: 945, column: 32, scope: !3140)
!3151 = !{!3152}
!3152 = distinct !{!3152, !3153, !"quoting_options_from_style: argument 0"}
!3153 = distinct !{!3153, !"quoting_options_from_style"}
!3154 = !DILocation(line: 945, column: 36, scope: !3140)
!3155 = !DILocalVariable(name: "style", arg: 1, scope: !3156, file: !604, line: 183, type: !630)
!3156 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !604, file: !604, line: 183, type: !3157, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!657, !630}
!3159 = !{!3155, !3160}
!3160 = !DILocalVariable(name: "o", scope: !3156, file: !604, line: 185, type: !657)
!3161 = !DILocation(line: 0, scope: !3156, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 945, column: 36, scope: !3140)
!3163 = !DILocation(line: 185, column: 26, scope: !3156, inlinedAt: !3162)
!3164 = !DILocation(line: 186, column: 13, scope: !3165, inlinedAt: !3162)
!3165 = distinct !DILexicalBlock(scope: !3156, file: !604, line: 186, column: 7)
!3166 = !DILocation(line: 186, column: 7, scope: !3156, inlinedAt: !3162)
!3167 = !DILocation(line: 187, column: 5, scope: !3165, inlinedAt: !3162)
!3168 = !DILocation(line: 188, column: 11, scope: !3156, inlinedAt: !3162)
!3169 = !DILocation(line: 946, column: 10, scope: !3140)
!3170 = !DILocation(line: 947, column: 1, scope: !3140)
!3171 = !DILocation(line: 946, column: 3, scope: !3140)
!3172 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !604, file: !604, line: 950, type: !3173, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!124, !103, !630, !130, !127}
!3175 = !{!3176, !3177, !3178, !3179, !3180}
!3176 = !DILocalVariable(name: "n", arg: 1, scope: !3172, file: !604, line: 950, type: !103)
!3177 = !DILocalVariable(name: "s", arg: 2, scope: !3172, file: !604, line: 950, type: !630)
!3178 = !DILocalVariable(name: "arg", arg: 3, scope: !3172, file: !604, line: 951, type: !130)
!3179 = !DILocalVariable(name: "argsize", arg: 4, scope: !3172, file: !604, line: 951, type: !127)
!3180 = !DILocalVariable(name: "o", scope: !3172, file: !604, line: 953, type: !2231)
!3181 = !DILocation(line: 0, scope: !3172)
!3182 = !DILocation(line: 953, column: 3, scope: !3172)
!3183 = !DILocation(line: 953, column: 32, scope: !3172)
!3184 = !{!3185}
!3185 = distinct !{!3185, !3186, !"quoting_options_from_style: argument 0"}
!3186 = distinct !{!3186, !"quoting_options_from_style"}
!3187 = !DILocation(line: 953, column: 36, scope: !3172)
!3188 = !DILocation(line: 0, scope: !3156, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 953, column: 36, scope: !3172)
!3190 = !DILocation(line: 185, column: 26, scope: !3156, inlinedAt: !3189)
!3191 = !DILocation(line: 186, column: 13, scope: !3165, inlinedAt: !3189)
!3192 = !DILocation(line: 186, column: 7, scope: !3156, inlinedAt: !3189)
!3193 = !DILocation(line: 187, column: 5, scope: !3165, inlinedAt: !3189)
!3194 = !DILocation(line: 188, column: 11, scope: !3156, inlinedAt: !3189)
!3195 = !DILocation(line: 954, column: 10, scope: !3172)
!3196 = !DILocation(line: 955, column: 1, scope: !3172)
!3197 = !DILocation(line: 954, column: 3, scope: !3172)
!3198 = distinct !DISubprogram(name: "quotearg_style", scope: !604, file: !604, line: 958, type: !3199, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!124, !630, !130}
!3201 = !{!3202, !3203}
!3202 = !DILocalVariable(name: "s", arg: 1, scope: !3198, file: !604, line: 958, type: !630)
!3203 = !DILocalVariable(name: "arg", arg: 2, scope: !3198, file: !604, line: 958, type: !130)
!3204 = !DILocation(line: 0, scope: !3198)
!3205 = !DILocation(line: 0, scope: !3140, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 960, column: 10, scope: !3198)
!3207 = !DILocation(line: 945, column: 3, scope: !3140, inlinedAt: !3206)
!3208 = !DILocation(line: 945, column: 32, scope: !3140, inlinedAt: !3206)
!3209 = !{!3210}
!3210 = distinct !{!3210, !3211, !"quoting_options_from_style: argument 0"}
!3211 = distinct !{!3211, !"quoting_options_from_style"}
!3212 = !DILocation(line: 945, column: 36, scope: !3140, inlinedAt: !3206)
!3213 = !DILocation(line: 0, scope: !3156, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 945, column: 36, scope: !3140, inlinedAt: !3206)
!3215 = !DILocation(line: 185, column: 26, scope: !3156, inlinedAt: !3214)
!3216 = !DILocation(line: 186, column: 13, scope: !3165, inlinedAt: !3214)
!3217 = !DILocation(line: 186, column: 7, scope: !3156, inlinedAt: !3214)
!3218 = !DILocation(line: 187, column: 5, scope: !3165, inlinedAt: !3214)
!3219 = !DILocation(line: 188, column: 11, scope: !3156, inlinedAt: !3214)
!3220 = !DILocation(line: 946, column: 10, scope: !3140, inlinedAt: !3206)
!3221 = !DILocation(line: 947, column: 1, scope: !3140, inlinedAt: !3206)
!3222 = !DILocation(line: 960, column: 3, scope: !3198)
!3223 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !604, file: !604, line: 964, type: !3224, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3226)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!124, !630, !130, !127}
!3226 = !{!3227, !3228, !3229}
!3227 = !DILocalVariable(name: "s", arg: 1, scope: !3223, file: !604, line: 964, type: !630)
!3228 = !DILocalVariable(name: "arg", arg: 2, scope: !3223, file: !604, line: 964, type: !130)
!3229 = !DILocalVariable(name: "argsize", arg: 3, scope: !3223, file: !604, line: 964, type: !127)
!3230 = !DILocation(line: 0, scope: !3223)
!3231 = !DILocation(line: 0, scope: !3172, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 966, column: 10, scope: !3223)
!3233 = !DILocation(line: 953, column: 3, scope: !3172, inlinedAt: !3232)
!3234 = !DILocation(line: 953, column: 32, scope: !3172, inlinedAt: !3232)
!3235 = !{!3236}
!3236 = distinct !{!3236, !3237, !"quoting_options_from_style: argument 0"}
!3237 = distinct !{!3237, !"quoting_options_from_style"}
!3238 = !DILocation(line: 953, column: 36, scope: !3172, inlinedAt: !3232)
!3239 = !DILocation(line: 0, scope: !3156, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 953, column: 36, scope: !3172, inlinedAt: !3232)
!3241 = !DILocation(line: 185, column: 26, scope: !3156, inlinedAt: !3240)
!3242 = !DILocation(line: 186, column: 13, scope: !3165, inlinedAt: !3240)
!3243 = !DILocation(line: 186, column: 7, scope: !3156, inlinedAt: !3240)
!3244 = !DILocation(line: 187, column: 5, scope: !3165, inlinedAt: !3240)
!3245 = !DILocation(line: 188, column: 11, scope: !3156, inlinedAt: !3240)
!3246 = !DILocation(line: 954, column: 10, scope: !3172, inlinedAt: !3232)
!3247 = !DILocation(line: 955, column: 1, scope: !3172, inlinedAt: !3232)
!3248 = !DILocation(line: 966, column: 3, scope: !3223)
!3249 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !604, file: !604, line: 970, type: !3250, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!124, !130, !127, !4}
!3252 = !{!3253, !3254, !3255, !3256}
!3253 = !DILocalVariable(name: "arg", arg: 1, scope: !3249, file: !604, line: 970, type: !130)
!3254 = !DILocalVariable(name: "argsize", arg: 2, scope: !3249, file: !604, line: 970, type: !127)
!3255 = !DILocalVariable(name: "ch", arg: 3, scope: !3249, file: !604, line: 970, type: !4)
!3256 = !DILocalVariable(name: "options", scope: !3249, file: !604, line: 972, type: !657)
!3257 = !DILocation(line: 0, scope: !3249)
!3258 = !DILocation(line: 972, column: 3, scope: !3249)
!3259 = !DILocation(line: 972, column: 26, scope: !3249)
!3260 = !DILocation(line: 973, column: 13, scope: !3249)
!3261 = !{i64 0, i64 4, !1074, i64 4, i64 4, !1065, i64 8, i64 32, !1074, i64 40, i64 8, !995, i64 48, i64 8, !995}
!3262 = !DILocation(line: 0, scope: !2250, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 974, column: 3, scope: !3249)
!3264 = !DILocation(line: 147, column: 41, scope: !2250, inlinedAt: !3263)
!3265 = !DILocation(line: 147, column: 62, scope: !2250, inlinedAt: !3263)
!3266 = !DILocation(line: 147, column: 57, scope: !2250, inlinedAt: !3263)
!3267 = !DILocation(line: 148, column: 15, scope: !2250, inlinedAt: !3263)
!3268 = !DILocation(line: 149, column: 21, scope: !2250, inlinedAt: !3263)
!3269 = !DILocation(line: 149, column: 24, scope: !2250, inlinedAt: !3263)
!3270 = !DILocation(line: 150, column: 19, scope: !2250, inlinedAt: !3263)
!3271 = !DILocation(line: 150, column: 24, scope: !2250, inlinedAt: !3263)
!3272 = !DILocation(line: 150, column: 6, scope: !2250, inlinedAt: !3263)
!3273 = !DILocation(line: 975, column: 10, scope: !3249)
!3274 = !DILocation(line: 976, column: 1, scope: !3249)
!3275 = !DILocation(line: 975, column: 3, scope: !3249)
!3276 = distinct !DISubprogram(name: "quotearg_char", scope: !604, file: !604, line: 979, type: !3277, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!124, !130, !4}
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "arg", arg: 1, scope: !3276, file: !604, line: 979, type: !130)
!3281 = !DILocalVariable(name: "ch", arg: 2, scope: !3276, file: !604, line: 979, type: !4)
!3282 = !DILocation(line: 0, scope: !3276)
!3283 = !DILocation(line: 0, scope: !3249, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 981, column: 10, scope: !3276)
!3285 = !DILocation(line: 972, column: 3, scope: !3249, inlinedAt: !3284)
!3286 = !DILocation(line: 972, column: 26, scope: !3249, inlinedAt: !3284)
!3287 = !DILocation(line: 973, column: 13, scope: !3249, inlinedAt: !3284)
!3288 = !DILocation(line: 0, scope: !2250, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 974, column: 3, scope: !3249, inlinedAt: !3284)
!3290 = !DILocation(line: 147, column: 41, scope: !2250, inlinedAt: !3289)
!3291 = !DILocation(line: 147, column: 62, scope: !2250, inlinedAt: !3289)
!3292 = !DILocation(line: 147, column: 57, scope: !2250, inlinedAt: !3289)
!3293 = !DILocation(line: 148, column: 15, scope: !2250, inlinedAt: !3289)
!3294 = !DILocation(line: 149, column: 21, scope: !2250, inlinedAt: !3289)
!3295 = !DILocation(line: 149, column: 24, scope: !2250, inlinedAt: !3289)
!3296 = !DILocation(line: 150, column: 19, scope: !2250, inlinedAt: !3289)
!3297 = !DILocation(line: 150, column: 24, scope: !2250, inlinedAt: !3289)
!3298 = !DILocation(line: 150, column: 6, scope: !2250, inlinedAt: !3289)
!3299 = !DILocation(line: 975, column: 10, scope: !3249, inlinedAt: !3284)
!3300 = !DILocation(line: 976, column: 1, scope: !3249, inlinedAt: !3284)
!3301 = !DILocation(line: 981, column: 3, scope: !3276)
!3302 = distinct !DISubprogram(name: "quotearg_colon", scope: !604, file: !604, line: 985, type: !1192, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3303)
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "arg", arg: 1, scope: !3302, file: !604, line: 985, type: !130)
!3305 = !DILocation(line: 0, scope: !3302)
!3306 = !DILocation(line: 0, scope: !3276, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 987, column: 10, scope: !3302)
!3308 = !DILocation(line: 0, scope: !3249, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 981, column: 10, scope: !3276, inlinedAt: !3307)
!3310 = !DILocation(line: 972, column: 3, scope: !3249, inlinedAt: !3309)
!3311 = !DILocation(line: 972, column: 26, scope: !3249, inlinedAt: !3309)
!3312 = !DILocation(line: 973, column: 13, scope: !3249, inlinedAt: !3309)
!3313 = !DILocation(line: 0, scope: !2250, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 974, column: 3, scope: !3249, inlinedAt: !3309)
!3315 = !DILocation(line: 147, column: 57, scope: !2250, inlinedAt: !3314)
!3316 = !DILocation(line: 149, column: 21, scope: !2250, inlinedAt: !3314)
!3317 = !DILocation(line: 150, column: 6, scope: !2250, inlinedAt: !3314)
!3318 = !DILocation(line: 975, column: 10, scope: !3249, inlinedAt: !3309)
!3319 = !DILocation(line: 976, column: 1, scope: !3249, inlinedAt: !3309)
!3320 = !DILocation(line: 987, column: 3, scope: !3302)
!3321 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !604, file: !604, line: 991, type: !3130, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3322)
!3322 = !{!3323, !3324}
!3323 = !DILocalVariable(name: "arg", arg: 1, scope: !3321, file: !604, line: 991, type: !130)
!3324 = !DILocalVariable(name: "argsize", arg: 2, scope: !3321, file: !604, line: 991, type: !127)
!3325 = !DILocation(line: 0, scope: !3321)
!3326 = !DILocation(line: 0, scope: !3249, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 993, column: 10, scope: !3321)
!3328 = !DILocation(line: 972, column: 3, scope: !3249, inlinedAt: !3327)
!3329 = !DILocation(line: 972, column: 26, scope: !3249, inlinedAt: !3327)
!3330 = !DILocation(line: 973, column: 13, scope: !3249, inlinedAt: !3327)
!3331 = !DILocation(line: 0, scope: !2250, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 974, column: 3, scope: !3249, inlinedAt: !3327)
!3333 = !DILocation(line: 147, column: 57, scope: !2250, inlinedAt: !3332)
!3334 = !DILocation(line: 149, column: 21, scope: !2250, inlinedAt: !3332)
!3335 = !DILocation(line: 150, column: 6, scope: !2250, inlinedAt: !3332)
!3336 = !DILocation(line: 975, column: 10, scope: !3249, inlinedAt: !3327)
!3337 = !DILocation(line: 976, column: 1, scope: !3249, inlinedAt: !3327)
!3338 = !DILocation(line: 993, column: 3, scope: !3321)
!3339 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !604, file: !604, line: 997, type: !3141, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3340)
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DILocalVariable(name: "n", arg: 1, scope: !3339, file: !604, line: 997, type: !103)
!3342 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !604, line: 997, type: !630)
!3343 = !DILocalVariable(name: "arg", arg: 3, scope: !3339, file: !604, line: 997, type: !130)
!3344 = !DILocalVariable(name: "options", scope: !3339, file: !604, line: 999, type: !657)
!3345 = !DILocation(line: 185, column: 26, scope: !3156, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 1000, column: 13, scope: !3339)
!3347 = !DILocation(line: 0, scope: !3339)
!3348 = !DILocation(line: 999, column: 3, scope: !3339)
!3349 = !DILocation(line: 999, column: 26, scope: !3339)
!3350 = !DILocation(line: 0, scope: !3156, inlinedAt: !3346)
!3351 = !DILocation(line: 186, column: 13, scope: !3165, inlinedAt: !3346)
!3352 = !DILocation(line: 186, column: 7, scope: !3156, inlinedAt: !3346)
!3353 = !DILocation(line: 187, column: 5, scope: !3165, inlinedAt: !3346)
!3354 = !{!3355}
!3355 = distinct !{!3355, !3356, !"quoting_options_from_style: argument 0"}
!3356 = distinct !{!3356, !"quoting_options_from_style"}
!3357 = !DILocation(line: 1000, column: 13, scope: !3339)
!3358 = !DILocation(line: 0, scope: !2250, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 1001, column: 3, scope: !3339)
!3360 = !DILocation(line: 147, column: 57, scope: !2250, inlinedAt: !3359)
!3361 = !DILocation(line: 149, column: 21, scope: !2250, inlinedAt: !3359)
!3362 = !DILocation(line: 150, column: 6, scope: !2250, inlinedAt: !3359)
!3363 = !DILocation(line: 1002, column: 10, scope: !3339)
!3364 = !DILocation(line: 1003, column: 1, scope: !3339)
!3365 = !DILocation(line: 1002, column: 3, scope: !3339)
!3366 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !604, file: !604, line: 1006, type: !3367, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!124, !103, !130, !130, !130}
!3369 = !{!3370, !3371, !3372, !3373}
!3370 = !DILocalVariable(name: "n", arg: 1, scope: !3366, file: !604, line: 1006, type: !103)
!3371 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3366, file: !604, line: 1006, type: !130)
!3372 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3366, file: !604, line: 1007, type: !130)
!3373 = !DILocalVariable(name: "arg", arg: 4, scope: !3366, file: !604, line: 1007, type: !130)
!3374 = !DILocation(line: 0, scope: !3366)
!3375 = !DILocalVariable(name: "n", arg: 1, scope: !3376, file: !604, line: 1014, type: !103)
!3376 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !604, file: !604, line: 1014, type: !3377, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!124, !103, !130, !130, !130, !127}
!3379 = !{!3375, !3380, !3381, !3382, !3383, !3384}
!3380 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3376, file: !604, line: 1014, type: !130)
!3381 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3376, file: !604, line: 1015, type: !130)
!3382 = !DILocalVariable(name: "arg", arg: 4, scope: !3376, file: !604, line: 1016, type: !130)
!3383 = !DILocalVariable(name: "argsize", arg: 5, scope: !3376, file: !604, line: 1016, type: !127)
!3384 = !DILocalVariable(name: "o", scope: !3376, file: !604, line: 1018, type: !657)
!3385 = !DILocation(line: 0, scope: !3376, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 1009, column: 10, scope: !3366)
!3387 = !DILocation(line: 1018, column: 3, scope: !3376, inlinedAt: !3386)
!3388 = !DILocation(line: 1018, column: 26, scope: !3376, inlinedAt: !3386)
!3389 = !DILocation(line: 1018, column: 30, scope: !3376, inlinedAt: !3386)
!3390 = !DILocation(line: 0, scope: !2290, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 1019, column: 3, scope: !3376, inlinedAt: !3386)
!3392 = !DILocation(line: 174, column: 12, scope: !2290, inlinedAt: !3391)
!3393 = !DILocation(line: 175, column: 8, scope: !2303, inlinedAt: !3391)
!3394 = !DILocation(line: 175, column: 19, scope: !2303, inlinedAt: !3391)
!3395 = !DILocation(line: 176, column: 5, scope: !2303, inlinedAt: !3391)
!3396 = !DILocation(line: 177, column: 6, scope: !2290, inlinedAt: !3391)
!3397 = !DILocation(line: 177, column: 17, scope: !2290, inlinedAt: !3391)
!3398 = !DILocation(line: 178, column: 6, scope: !2290, inlinedAt: !3391)
!3399 = !DILocation(line: 178, column: 18, scope: !2290, inlinedAt: !3391)
!3400 = !DILocation(line: 1020, column: 10, scope: !3376, inlinedAt: !3386)
!3401 = !DILocation(line: 1021, column: 1, scope: !3376, inlinedAt: !3386)
!3402 = !DILocation(line: 1009, column: 3, scope: !3366)
!3403 = !DILocation(line: 0, scope: !3376)
!3404 = !DILocation(line: 1018, column: 3, scope: !3376)
!3405 = !DILocation(line: 1018, column: 26, scope: !3376)
!3406 = !DILocation(line: 1018, column: 30, scope: !3376)
!3407 = !DILocation(line: 0, scope: !2290, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 1019, column: 3, scope: !3376)
!3409 = !DILocation(line: 174, column: 12, scope: !2290, inlinedAt: !3408)
!3410 = !DILocation(line: 175, column: 8, scope: !2303, inlinedAt: !3408)
!3411 = !DILocation(line: 175, column: 19, scope: !2303, inlinedAt: !3408)
!3412 = !DILocation(line: 176, column: 5, scope: !2303, inlinedAt: !3408)
!3413 = !DILocation(line: 177, column: 6, scope: !2290, inlinedAt: !3408)
!3414 = !DILocation(line: 177, column: 17, scope: !2290, inlinedAt: !3408)
!3415 = !DILocation(line: 178, column: 6, scope: !2290, inlinedAt: !3408)
!3416 = !DILocation(line: 178, column: 18, scope: !2290, inlinedAt: !3408)
!3417 = !DILocation(line: 1020, column: 10, scope: !3376)
!3418 = !DILocation(line: 1021, column: 1, scope: !3376)
!3419 = !DILocation(line: 1020, column: 3, scope: !3376)
!3420 = distinct !DISubprogram(name: "quotearg_custom", scope: !604, file: !604, line: 1024, type: !3421, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!124, !130, !130, !130}
!3423 = !{!3424, !3425, !3426}
!3424 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3420, file: !604, line: 1024, type: !130)
!3425 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3420, file: !604, line: 1024, type: !130)
!3426 = !DILocalVariable(name: "arg", arg: 3, scope: !3420, file: !604, line: 1025, type: !130)
!3427 = !DILocation(line: 0, scope: !3420)
!3428 = !DILocation(line: 0, scope: !3366, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 1027, column: 10, scope: !3420)
!3430 = !DILocation(line: 0, scope: !3376, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 1009, column: 10, scope: !3366, inlinedAt: !3429)
!3432 = !DILocation(line: 1018, column: 3, scope: !3376, inlinedAt: !3431)
!3433 = !DILocation(line: 1018, column: 26, scope: !3376, inlinedAt: !3431)
!3434 = !DILocation(line: 1018, column: 30, scope: !3376, inlinedAt: !3431)
!3435 = !DILocation(line: 0, scope: !2290, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 1019, column: 3, scope: !3376, inlinedAt: !3431)
!3437 = !DILocation(line: 174, column: 12, scope: !2290, inlinedAt: !3436)
!3438 = !DILocation(line: 175, column: 8, scope: !2303, inlinedAt: !3436)
!3439 = !DILocation(line: 175, column: 19, scope: !2303, inlinedAt: !3436)
!3440 = !DILocation(line: 176, column: 5, scope: !2303, inlinedAt: !3436)
!3441 = !DILocation(line: 177, column: 6, scope: !2290, inlinedAt: !3436)
!3442 = !DILocation(line: 177, column: 17, scope: !2290, inlinedAt: !3436)
!3443 = !DILocation(line: 178, column: 6, scope: !2290, inlinedAt: !3436)
!3444 = !DILocation(line: 178, column: 18, scope: !2290, inlinedAt: !3436)
!3445 = !DILocation(line: 1020, column: 10, scope: !3376, inlinedAt: !3431)
!3446 = !DILocation(line: 1021, column: 1, scope: !3376, inlinedAt: !3431)
!3447 = !DILocation(line: 1027, column: 3, scope: !3420)
!3448 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !604, file: !604, line: 1031, type: !3449, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!124, !130, !130, !130, !127}
!3451 = !{!3452, !3453, !3454, !3455}
!3452 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3448, file: !604, line: 1031, type: !130)
!3453 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3448, file: !604, line: 1031, type: !130)
!3454 = !DILocalVariable(name: "arg", arg: 3, scope: !3448, file: !604, line: 1032, type: !130)
!3455 = !DILocalVariable(name: "argsize", arg: 4, scope: !3448, file: !604, line: 1032, type: !127)
!3456 = !DILocation(line: 0, scope: !3448)
!3457 = !DILocation(line: 0, scope: !3376, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 1034, column: 10, scope: !3448)
!3459 = !DILocation(line: 1018, column: 3, scope: !3376, inlinedAt: !3458)
!3460 = !DILocation(line: 1018, column: 26, scope: !3376, inlinedAt: !3458)
!3461 = !DILocation(line: 1018, column: 30, scope: !3376, inlinedAt: !3458)
!3462 = !DILocation(line: 0, scope: !2290, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 1019, column: 3, scope: !3376, inlinedAt: !3458)
!3464 = !DILocation(line: 174, column: 12, scope: !2290, inlinedAt: !3463)
!3465 = !DILocation(line: 175, column: 8, scope: !2303, inlinedAt: !3463)
!3466 = !DILocation(line: 175, column: 19, scope: !2303, inlinedAt: !3463)
!3467 = !DILocation(line: 176, column: 5, scope: !2303, inlinedAt: !3463)
!3468 = !DILocation(line: 177, column: 6, scope: !2290, inlinedAt: !3463)
!3469 = !DILocation(line: 177, column: 17, scope: !2290, inlinedAt: !3463)
!3470 = !DILocation(line: 178, column: 6, scope: !2290, inlinedAt: !3463)
!3471 = !DILocation(line: 178, column: 18, scope: !2290, inlinedAt: !3463)
!3472 = !DILocation(line: 1020, column: 10, scope: !3376, inlinedAt: !3458)
!3473 = !DILocation(line: 1021, column: 1, scope: !3376, inlinedAt: !3458)
!3474 = !DILocation(line: 1034, column: 3, scope: !3448)
!3475 = distinct !DISubprogram(name: "quote_n_mem", scope: !604, file: !604, line: 1049, type: !3476, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!130, !103, !130, !127}
!3478 = !{!3479, !3480, !3481}
!3479 = !DILocalVariable(name: "n", arg: 1, scope: !3475, file: !604, line: 1049, type: !103)
!3480 = !DILocalVariable(name: "arg", arg: 2, scope: !3475, file: !604, line: 1049, type: !130)
!3481 = !DILocalVariable(name: "argsize", arg: 3, scope: !3475, file: !604, line: 1049, type: !127)
!3482 = !DILocation(line: 0, scope: !3475)
!3483 = !DILocation(line: 1051, column: 10, scope: !3475)
!3484 = !DILocation(line: 1051, column: 3, scope: !3475)
!3485 = distinct !DISubprogram(name: "quote_mem", scope: !604, file: !604, line: 1055, type: !3486, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!130, !130, !127}
!3488 = !{!3489, !3490}
!3489 = !DILocalVariable(name: "arg", arg: 1, scope: !3485, file: !604, line: 1055, type: !130)
!3490 = !DILocalVariable(name: "argsize", arg: 2, scope: !3485, file: !604, line: 1055, type: !127)
!3491 = !DILocation(line: 0, scope: !3485)
!3492 = !DILocation(line: 0, scope: !3475, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 1057, column: 10, scope: !3485)
!3494 = !DILocation(line: 1051, column: 10, scope: !3475, inlinedAt: !3493)
!3495 = !DILocation(line: 1057, column: 3, scope: !3485)
!3496 = distinct !DISubprogram(name: "quote_n", scope: !604, file: !604, line: 1061, type: !3497, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!130, !103, !130}
!3499 = !{!3500, !3501}
!3500 = !DILocalVariable(name: "n", arg: 1, scope: !3496, file: !604, line: 1061, type: !103)
!3501 = !DILocalVariable(name: "arg", arg: 2, scope: !3496, file: !604, line: 1061, type: !130)
!3502 = !DILocation(line: 0, scope: !3496)
!3503 = !DILocation(line: 0, scope: !3475, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 1063, column: 10, scope: !3496)
!3505 = !DILocation(line: 1051, column: 10, scope: !3475, inlinedAt: !3504)
!3506 = !DILocation(line: 1063, column: 3, scope: !3496)
!3507 = distinct !DISubprogram(name: "quote", scope: !604, file: !604, line: 1067, type: !3508, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!130, !130}
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "arg", arg: 1, scope: !3507, file: !604, line: 1067, type: !130)
!3512 = !DILocation(line: 0, scope: !3507)
!3513 = !DILocation(line: 0, scope: !3496, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 1069, column: 10, scope: !3507)
!3515 = !DILocation(line: 0, scope: !3475, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 1063, column: 10, scope: !3496, inlinedAt: !3514)
!3517 = !DILocation(line: 1051, column: 10, scope: !3475, inlinedAt: !3516)
!3518 = !DILocation(line: 1069, column: 3, scope: !3507)
!3519 = distinct !DISubprogram(name: "parse_user_spec_warn", scope: !720, file: !720, line: 253, type: !3520, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3524)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!130, !130, !3522, !936, !1219, !1219, !3523}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534}
!3525 = !DILocalVariable(name: "spec", arg: 1, scope: !3519, file: !720, line: 253, type: !130)
!3526 = !DILocalVariable(name: "uid", arg: 2, scope: !3519, file: !720, line: 253, type: !3522)
!3527 = !DILocalVariable(name: "gid", arg: 3, scope: !3519, file: !720, line: 253, type: !936)
!3528 = !DILocalVariable(name: "username", arg: 4, scope: !3519, file: !720, line: 254, type: !1219)
!3529 = !DILocalVariable(name: "groupname", arg: 5, scope: !3519, file: !720, line: 254, type: !1219)
!3530 = !DILocalVariable(name: "pwarn", arg: 6, scope: !3519, file: !720, line: 254, type: !3523)
!3531 = !DILocalVariable(name: "colon", scope: !3519, file: !720, line: 256, type: !130)
!3532 = !DILocalVariable(name: "error_msg", scope: !3519, file: !720, line: 257, type: !130)
!3533 = !DILocalVariable(name: "warn", scope: !3519, file: !720, line: 259, type: !223)
!3534 = !DILocalVariable(name: "dot", scope: !3535, file: !720, line: 269, type: !130)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !720, line: 262, column: 5)
!3536 = distinct !DILexicalBlock(scope: !3519, file: !720, line: 261, column: 7)
!3537 = !DILocation(line: 0, scope: !3519)
!3538 = !DILocation(line: 256, column: 23, scope: !3519)
!3539 = !DILocation(line: 256, column: 29, scope: !3519)
!3540 = !DILocation(line: 258, column: 5, scope: !3519)
!3541 = !DILocation(line: 261, column: 7, scope: !3536)
!3542 = !DILocation(line: 261, column: 11, scope: !3536)
!3543 = !DILocation(line: 269, column: 25, scope: !3535)
!3544 = !DILocation(line: 0, scope: !3535)
!3545 = !DILocation(line: 270, column: 11, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3535, file: !720, line: 270, column: 11)
!3547 = !DILocation(line: 271, column: 11, scope: !3546)
!3548 = !DILocation(line: 271, column: 16, scope: !3546)
!3549 = !DILocation(line: 270, column: 11, scope: !3535)
!3550 = !DILocation(line: 274, column: 23, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3546, file: !720, line: 272, column: 9)
!3552 = !DILocation(line: 275, column: 9, scope: !3551)
!3553 = !DILocation(line: 259, column: 8, scope: !3519)
!3554 = !DILocation(line: 257, column: 15, scope: !3519)
!3555 = !DILocation(line: 278, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3519, file: !720, line: 278, column: 7)
!3557 = !DILocation(line: 278, column: 7, scope: !3519)
!3558 = !DILocation(line: 279, column: 12, scope: !3556)
!3559 = !DILocation(line: 279, column: 5, scope: !3556)
!3560 = !DILocation(line: 280, column: 3, scope: !3519)
!3561 = distinct !DISubprogram(name: "parse_with_separator", scope: !720, file: !720, line: 101, type: !3562, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!130, !130, !130, !3522, !936, !1219, !1219}
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3576, !3577, !3578, !3579, !3580, !3593, !3596, !3599, !3603, !3611, !3614}
!3565 = !DILocalVariable(name: "spec", arg: 1, scope: !3561, file: !720, line: 101, type: !130)
!3566 = !DILocalVariable(name: "separator", arg: 2, scope: !3561, file: !720, line: 101, type: !130)
!3567 = !DILocalVariable(name: "uid", arg: 3, scope: !3561, file: !720, line: 102, type: !3522)
!3568 = !DILocalVariable(name: "gid", arg: 4, scope: !3561, file: !720, line: 102, type: !936)
!3569 = !DILocalVariable(name: "username", arg: 5, scope: !3561, file: !720, line: 103, type: !1219)
!3570 = !DILocalVariable(name: "groupname", arg: 6, scope: !3561, file: !720, line: 103, type: !1219)
!3571 = !DILocalVariable(name: "error_msg", scope: !3561, file: !720, line: 105, type: !130)
!3572 = !DILocalVariable(name: "u", scope: !3561, file: !720, line: 115, type: !124)
!3573 = !DILocalVariable(name: "ulen", scope: !3574, file: !720, line: 123, type: !895)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !720, line: 122, column: 5)
!3575 = distinct !DILexicalBlock(scope: !3561, file: !720, line: 116, column: 7)
!3576 = !DILocalVariable(name: "g", scope: !3561, file: !720, line: 131, type: !130)
!3577 = !DILocalVariable(name: "gname", scope: !3561, file: !720, line: 144, type: !124)
!3578 = !DILocalVariable(name: "unum", scope: !3561, file: !720, line: 145, type: !200)
!3579 = !DILocalVariable(name: "gnum", scope: !3561, file: !720, line: 146, type: !207)
!3580 = !DILocalVariable(name: "pwd", scope: !3581, file: !720, line: 151, type: !3583)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !720, line: 149, column: 5)
!3582 = distinct !DILexicalBlock(scope: !3561, file: !720, line: 148, column: 7)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1237, line: 49, size: 384, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3584, file: !1237, line: 51, baseType: !124, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3584, file: !1237, line: 52, baseType: !124, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3584, file: !1237, line: 54, baseType: !202, size: 32, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3584, file: !1237, line: 55, baseType: !208, size: 32, offset: 160)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3584, file: !1237, line: 56, baseType: !124, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3584, file: !1237, line: 57, baseType: !124, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3584, file: !1237, line: 58, baseType: !124, size: 64, offset: 320)
!3593 = !DILocalVariable(name: "use_login_group", scope: !3594, file: !720, line: 155, type: !223)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !720, line: 153, column: 9)
!3595 = distinct !DILexicalBlock(scope: !3581, file: !720, line: 152, column: 11)
!3596 = !DILocalVariable(name: "tmp", scope: !3597, file: !720, line: 164, type: !129)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !720, line: 163, column: 13)
!3598 = distinct !DILexicalBlock(scope: !3594, file: !720, line: 156, column: 15)
!3599 = !DILocalVariable(name: "buf", scope: !3600, file: !720, line: 179, type: !553)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !720, line: 176, column: 13)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !720, line: 175, column: 15)
!3602 = distinct !DILexicalBlock(scope: !3595, file: !720, line: 173, column: 9)
!3603 = !DILocalVariable(name: "grp", scope: !3600, file: !720, line: 181, type: !3604)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1527, line: 42, size: 256, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3605, file: !1527, line: 44, baseType: !124, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3605, file: !1527, line: 45, baseType: !124, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3605, file: !1527, line: 46, baseType: !208, size: 32, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3605, file: !1527, line: 47, baseType: !1219, size: 64, offset: 192)
!3611 = !DILocalVariable(name: "grp", scope: !3612, file: !720, line: 193, type: !3604)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !720, line: 190, column: 5)
!3613 = distinct !DILexicalBlock(scope: !3561, file: !720, line: 189, column: 7)
!3614 = !DILocalVariable(name: "tmp", scope: !3615, file: !720, line: 197, type: !129)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !720, line: 195, column: 9)
!3616 = distinct !DILexicalBlock(scope: !3612, file: !720, line: 194, column: 11)
!3617 = !DILocation(line: 0, scope: !3561)
!3618 = !DILocation(line: 106, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3561, file: !720, line: 106, column: 7)
!3620 = !DILocation(line: 106, column: 7, scope: !3561)
!3621 = !DILocation(line: 107, column: 15, scope: !3619)
!3622 = !DILocation(line: 107, column: 5, scope: !3619)
!3623 = !DILocation(line: 108, column: 7, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3561, file: !720, line: 108, column: 7)
!3625 = !DILocation(line: 108, column: 7, scope: !3561)
!3626 = !DILocation(line: 109, column: 16, scope: !3624)
!3627 = !DILocation(line: 109, column: 5, scope: !3624)
!3628 = !DILocation(line: 116, column: 17, scope: !3575)
!3629 = !DILocation(line: 116, column: 7, scope: !3561)
!3630 = !DILocation(line: 118, column: 11, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !720, line: 118, column: 11)
!3632 = distinct !DILexicalBlock(scope: !3575, file: !720, line: 117, column: 5)
!3633 = !DILocation(line: 118, column: 11, scope: !3632)
!3634 = !DILocation(line: 119, column: 13, scope: !3631)
!3635 = !DILocation(line: 119, column: 9, scope: !3631)
!3636 = !DILocation(line: 0, scope: !3574)
!3637 = !DILocation(line: 124, column: 16, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3574, file: !720, line: 124, column: 11)
!3639 = !DILocation(line: 124, column: 11, scope: !3574)
!3640 = !DILocation(line: 123, column: 30, scope: !3574)
!3641 = !DILocation(line: 126, column: 36, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3638, file: !720, line: 125, column: 9)
!3643 = !DILocation(line: 126, column: 15, scope: !3642)
!3644 = !DILocation(line: 127, column: 11, scope: !3642)
!3645 = !DILocation(line: 127, column: 19, scope: !3642)
!3646 = !DILocation(line: 128, column: 9, scope: !3642)
!3647 = !DILocation(line: 131, column: 53, scope: !3561)
!3648 = !DILocation(line: 131, column: 41, scope: !3561)
!3649 = !DILocation(line: 131, column: 58, scope: !3561)
!3650 = !DILocation(line: 131, column: 20, scope: !3561)
!3651 = !DILocation(line: 145, column: 16, scope: !3561)
!3652 = !DILocation(line: 146, column: 16, scope: !3561)
!3653 = !DILocation(line: 146, column: 22, scope: !3561)
!3654 = !DILocation(line: 148, column: 9, scope: !3582)
!3655 = !DILocation(line: 148, column: 7, scope: !3561)
!3656 = !DILocation(line: 151, column: 29, scope: !3581)
!3657 = !DILocation(line: 151, column: 32, scope: !3581)
!3658 = !DILocation(line: 151, column: 48, scope: !3581)
!3659 = !DILocation(line: 0, scope: !3581)
!3660 = !DILocation(line: 152, column: 15, scope: !3595)
!3661 = !DILocation(line: 152, column: 11, scope: !3581)
!3662 = !DILocation(line: 155, column: 45, scope: !3594)
!3663 = !DILocation(line: 155, column: 53, scope: !3594)
!3664 = !DILocation(line: 0, scope: !3594)
!3665 = !DILocation(line: 156, column: 15, scope: !3594)
!3666 = !DILocation(line: 164, column: 15, scope: !3597)
!3667 = !DILocation(line: 0, scope: !3597)
!3668 = !DILocation(line: 165, column: 19, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3597, file: !720, line: 165, column: 19)
!3670 = !DILocation(line: 165, column: 52, scope: !3669)
!3671 = !DILocation(line: 166, column: 19, scope: !3669)
!3672 = !DILocation(line: 170, column: 13, scope: !3598)
!3673 = !DILocation(line: 174, column: 23, scope: !3602)
!3674 = !DILocation(line: 175, column: 17, scope: !3601)
!3675 = !DILocation(line: 175, column: 25, scope: !3601)
!3676 = !DILocation(line: 179, column: 15, scope: !3600)
!3677 = !DILocation(line: 179, column: 20, scope: !3600)
!3678 = !DILocation(line: 180, column: 27, scope: !3600)
!3679 = !DILocation(line: 181, column: 35, scope: !3600)
!3680 = !DILocation(line: 0, scope: !3600)
!3681 = !DILocation(line: 182, column: 32, scope: !3600)
!3682 = !DILocation(line: 182, column: 43, scope: !3600)
!3683 = !DILocation(line: 182, column: 64, scope: !3600)
!3684 = !DILocation(line: 182, column: 53, scope: !3600)
!3685 = !DILocation(line: 182, column: 23, scope: !3600)
!3686 = !DILocation(line: 183, column: 15, scope: !3600)
!3687 = !DILocation(line: 184, column: 13, scope: !3601)
!3688 = !DILocation(line: 184, column: 13, scope: !3600)
!3689 = !DILocation(line: 186, column: 7, scope: !3581)
!3690 = !DILocation(line: 187, column: 5, scope: !3581)
!3691 = !DILocation(line: 144, column: 9, scope: !3561)
!3692 = !DILocation(line: 145, column: 9, scope: !3561)
!3693 = !DILocation(line: 146, column: 9, scope: !3561)
!3694 = !DILocation(line: 189, column: 9, scope: !3613)
!3695 = !DILocation(line: 189, column: 17, scope: !3613)
!3696 = !DILocation(line: 193, column: 28, scope: !3612)
!3697 = !DILocation(line: 193, column: 31, scope: !3612)
!3698 = !DILocation(line: 193, column: 47, scope: !3612)
!3699 = !DILocation(line: 0, scope: !3612)
!3700 = !DILocation(line: 194, column: 15, scope: !3616)
!3701 = !DILocation(line: 194, column: 11, scope: !3612)
!3702 = !DILocation(line: 197, column: 11, scope: !3615)
!3703 = !DILocation(line: 0, scope: !3615)
!3704 = !DILocation(line: 198, column: 15, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3615, file: !720, line: 198, column: 15)
!3706 = !DILocation(line: 198, column: 48, scope: !3705)
!3707 = !DILocation(line: 199, column: 15, scope: !3705)
!3708 = !DILocation(line: 203, column: 9, scope: !3616)
!3709 = !DILocation(line: 203, column: 9, scope: !3615)
!3710 = !DILocation(line: 205, column: 21, scope: !3616)
!3711 = !{!1557, !1066, i64 16}
!3712 = !DILocation(line: 0, scope: !3616)
!3713 = !DILocation(line: 160, column: 25, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3598, file: !720, line: 157, column: 13)
!3715 = !DILocation(line: 206, column: 7, scope: !3612)
!3716 = !DILocation(line: 207, column: 15, scope: !3612)
!3717 = !DILocation(line: 208, column: 5, scope: !3612)
!3718 = !DILocation(line: 210, column: 17, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3561, file: !720, line: 210, column: 7)
!3720 = !DILocation(line: 210, column: 7, scope: !3561)
!3721 = !DILocation(line: 212, column: 12, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !720, line: 211, column: 5)
!3723 = !DILocation(line: 213, column: 11, scope: !3722)
!3724 = !DILocation(line: 214, column: 14, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !720, line: 213, column: 11)
!3726 = !DILocation(line: 214, column: 9, scope: !3725)
!3727 = !DILocation(line: 215, column: 11, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3722, file: !720, line: 215, column: 11)
!3729 = !DILocation(line: 215, column: 11, scope: !3722)
!3730 = !DILocation(line: 217, column: 21, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !720, line: 216, column: 9)
!3732 = !DILocation(line: 219, column: 9, scope: !3731)
!3733 = !DILocation(line: 220, column: 11, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3722, file: !720, line: 220, column: 11)
!3735 = !DILocation(line: 220, column: 11, scope: !3722)
!3736 = !DILocation(line: 222, column: 22, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !720, line: 221, column: 9)
!3738 = !DILocation(line: 224, column: 9, scope: !3737)
!3739 = !DILocation(line: 227, column: 3, scope: !3561)
!3740 = !DILocation(line: 228, column: 3, scope: !3561)
!3741 = !DILocation(line: 229, column: 22, scope: !3561)
!3742 = !DILocation(line: 229, column: 10, scope: !3561)
!3743 = !DILocation(line: 229, column: 3, scope: !3561)
!3744 = !DISubprogram(name: "endgrent", scope: !1527, file: !1527, line: 67, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!3745 = !DISubprogram(name: "endpwent", scope: !1237, file: !1237, line: 78, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!3746 = !DISubprogram(name: "getgrnam", scope: !1527, file: !1527, line: 107, type: !3747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!3604, !130}
!3749 = distinct !DISubprogram(name: "parse_user_spec", scope: !720, file: !720, line: 286, type: !3750, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!130, !130, !3522, !936, !1219, !1219}
!3752 = !{!3753, !3754, !3755, !3756, !3757}
!3753 = !DILocalVariable(name: "spec", arg: 1, scope: !3749, file: !720, line: 286, type: !130)
!3754 = !DILocalVariable(name: "uid", arg: 2, scope: !3749, file: !720, line: 286, type: !3522)
!3755 = !DILocalVariable(name: "gid", arg: 3, scope: !3749, file: !720, line: 286, type: !936)
!3756 = !DILocalVariable(name: "username", arg: 4, scope: !3749, file: !720, line: 287, type: !1219)
!3757 = !DILocalVariable(name: "groupname", arg: 5, scope: !3749, file: !720, line: 287, type: !1219)
!3758 = !DILocation(line: 0, scope: !3749)
!3759 = !DILocation(line: 0, scope: !3519, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 289, column: 10, scope: !3749)
!3761 = !DILocation(line: 256, column: 23, scope: !3519, inlinedAt: !3760)
!3762 = !DILocation(line: 256, column: 29, scope: !3519, inlinedAt: !3760)
!3763 = !DILocation(line: 258, column: 5, scope: !3519, inlinedAt: !3760)
!3764 = !DILocation(line: 261, column: 7, scope: !3536, inlinedAt: !3760)
!3765 = !DILocation(line: 261, column: 11, scope: !3536, inlinedAt: !3760)
!3766 = !DILocation(line: 269, column: 25, scope: !3535, inlinedAt: !3760)
!3767 = !DILocation(line: 0, scope: !3535, inlinedAt: !3760)
!3768 = !DILocation(line: 270, column: 11, scope: !3546, inlinedAt: !3760)
!3769 = !DILocation(line: 271, column: 11, scope: !3546, inlinedAt: !3760)
!3770 = !DILocation(line: 271, column: 16, scope: !3546, inlinedAt: !3760)
!3771 = !DILocation(line: 270, column: 11, scope: !3535, inlinedAt: !3760)
!3772 = !DILocation(line: 257, column: 15, scope: !3519, inlinedAt: !3760)
!3773 = !DILocation(line: 289, column: 3, scope: !3749)
!3774 = distinct !DISubprogram(name: "version_etc_arn", scope: !733, file: !733, line: 61, type: !3775, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !3812)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !3777, !130, !130, !130, !3811, !127}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3779, file: !240, line: 51, baseType: !103, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3779, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3779, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3779, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3779, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3779, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3779, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3779, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3779, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3779, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3779, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3779, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3779, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3779, file: !240, line: 70, baseType: !3795, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3779, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3779, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3779, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3779, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3779, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3779, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3779, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3779, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3779, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3779, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3779, file: !240, line: 93, baseType: !3795, size: 64, offset: 1344)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3779, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3779, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3779, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3779, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!3812 = !{!3813, !3814, !3815, !3816, !3817, !3818}
!3813 = !DILocalVariable(name: "stream", arg: 1, scope: !3774, file: !733, line: 61, type: !3777)
!3814 = !DILocalVariable(name: "command_name", arg: 2, scope: !3774, file: !733, line: 62, type: !130)
!3815 = !DILocalVariable(name: "package", arg: 3, scope: !3774, file: !733, line: 62, type: !130)
!3816 = !DILocalVariable(name: "version", arg: 4, scope: !3774, file: !733, line: 63, type: !130)
!3817 = !DILocalVariable(name: "authors", arg: 5, scope: !3774, file: !733, line: 64, type: !3811)
!3818 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3774, file: !733, line: 64, type: !127)
!3819 = !DILocation(line: 0, scope: !3774)
!3820 = !DILocation(line: 66, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3774, file: !733, line: 66, column: 7)
!3822 = !DILocation(line: 66, column: 7, scope: !3774)
!3823 = !DILocation(line: 67, column: 5, scope: !3821)
!3824 = !DILocation(line: 69, column: 5, scope: !3821)
!3825 = !DILocation(line: 83, column: 3, scope: !3774)
!3826 = !DILocation(line: 85, column: 3, scope: !3774)
!3827 = !DILocation(line: 88, column: 3, scope: !3774)
!3828 = !DILocation(line: 95, column: 3, scope: !3774)
!3829 = !DILocation(line: 97, column: 3, scope: !3774)
!3830 = !DILocation(line: 105, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3774, file: !733, line: 98, column: 5)
!3832 = !DILocation(line: 106, column: 7, scope: !3831)
!3833 = !DILocation(line: 109, column: 7, scope: !3831)
!3834 = !DILocation(line: 110, column: 7, scope: !3831)
!3835 = !DILocation(line: 113, column: 7, scope: !3831)
!3836 = !DILocation(line: 115, column: 7, scope: !3831)
!3837 = !DILocation(line: 120, column: 7, scope: !3831)
!3838 = !DILocation(line: 122, column: 7, scope: !3831)
!3839 = !DILocation(line: 127, column: 7, scope: !3831)
!3840 = !DILocation(line: 129, column: 7, scope: !3831)
!3841 = !DILocation(line: 134, column: 7, scope: !3831)
!3842 = !DILocation(line: 137, column: 7, scope: !3831)
!3843 = !DILocation(line: 142, column: 7, scope: !3831)
!3844 = !DILocation(line: 145, column: 7, scope: !3831)
!3845 = !DILocation(line: 150, column: 7, scope: !3831)
!3846 = !DILocation(line: 154, column: 7, scope: !3831)
!3847 = !DILocation(line: 159, column: 7, scope: !3831)
!3848 = !DILocation(line: 163, column: 7, scope: !3831)
!3849 = !DILocation(line: 170, column: 7, scope: !3831)
!3850 = !DILocation(line: 174, column: 7, scope: !3831)
!3851 = !DILocation(line: 176, column: 1, scope: !3774)
!3852 = distinct !DISubprogram(name: "version_etc_ar", scope: !733, file: !733, line: 183, type: !3853, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3777, !130, !130, !130, !3811}
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861}
!3856 = !DILocalVariable(name: "stream", arg: 1, scope: !3852, file: !733, line: 183, type: !3777)
!3857 = !DILocalVariable(name: "command_name", arg: 2, scope: !3852, file: !733, line: 184, type: !130)
!3858 = !DILocalVariable(name: "package", arg: 3, scope: !3852, file: !733, line: 184, type: !130)
!3859 = !DILocalVariable(name: "version", arg: 4, scope: !3852, file: !733, line: 185, type: !130)
!3860 = !DILocalVariable(name: "authors", arg: 5, scope: !3852, file: !733, line: 185, type: !3811)
!3861 = !DILocalVariable(name: "n_authors", scope: !3852, file: !733, line: 187, type: !127)
!3862 = !DILocation(line: 0, scope: !3852)
!3863 = !DILocation(line: 189, column: 8, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3852, file: !733, line: 189, column: 3)
!3865 = !DILocation(line: 189, scope: !3864)
!3866 = !DILocation(line: 189, column: 23, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !733, line: 189, column: 3)
!3868 = !DILocation(line: 189, column: 3, scope: !3864)
!3869 = !DILocation(line: 189, column: 52, scope: !3867)
!3870 = distinct !{!3870, !3868, !3871, !1112}
!3871 = !DILocation(line: 190, column: 5, scope: !3864)
!3872 = !DILocation(line: 191, column: 3, scope: !3852)
!3873 = !DILocation(line: 192, column: 1, scope: !3852)
!3874 = distinct !DISubprogram(name: "version_etc_va", scope: !733, file: !733, line: 199, type: !3875, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !3885)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3777, !130, !130, !130, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3879)
!3879 = !{!3880, !3882, !3883, !3884}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3878, file: !3881, line: 192, baseType: !109, size: 32)
!3881 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3878, file: !3881, line: 192, baseType: !109, size: 32, offset: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3878, file: !3881, line: 192, baseType: !125, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3878, file: !3881, line: 192, baseType: !125, size: 64, offset: 128)
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3891, !3892}
!3886 = !DILocalVariable(name: "stream", arg: 1, scope: !3874, file: !733, line: 199, type: !3777)
!3887 = !DILocalVariable(name: "command_name", arg: 2, scope: !3874, file: !733, line: 200, type: !130)
!3888 = !DILocalVariable(name: "package", arg: 3, scope: !3874, file: !733, line: 200, type: !130)
!3889 = !DILocalVariable(name: "version", arg: 4, scope: !3874, file: !733, line: 201, type: !130)
!3890 = !DILocalVariable(name: "authors", arg: 5, scope: !3874, file: !733, line: 201, type: !3877)
!3891 = !DILocalVariable(name: "n_authors", scope: !3874, file: !733, line: 203, type: !127)
!3892 = !DILocalVariable(name: "authtab", scope: !3874, file: !733, line: 204, type: !3893)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 640, elements: !85)
!3894 = !DILocation(line: 0, scope: !3874)
!3895 = !DILocation(line: 204, column: 3, scope: !3874)
!3896 = !DILocation(line: 204, column: 15, scope: !3874)
!3897 = !DILocation(line: 208, column: 35, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !733, line: 206, column: 3)
!3899 = distinct !DILexicalBlock(scope: !3874, file: !733, line: 206, column: 3)
!3900 = !DILocation(line: 208, column: 33, scope: !3898)
!3901 = !DILocation(line: 208, column: 67, scope: !3898)
!3902 = !DILocation(line: 206, column: 3, scope: !3899)
!3903 = !DILocation(line: 208, column: 14, scope: !3898)
!3904 = !DILocation(line: 0, scope: !3899)
!3905 = !DILocation(line: 211, column: 3, scope: !3874)
!3906 = !DILocation(line: 213, column: 1, scope: !3874)
!3907 = distinct !DISubprogram(name: "version_etc", scope: !733, file: !733, line: 230, type: !3908, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3777, !130, !130, !130, null}
!3910 = !{!3911, !3912, !3913, !3914, !3915}
!3911 = !DILocalVariable(name: "stream", arg: 1, scope: !3907, file: !733, line: 230, type: !3777)
!3912 = !DILocalVariable(name: "command_name", arg: 2, scope: !3907, file: !733, line: 231, type: !130)
!3913 = !DILocalVariable(name: "package", arg: 3, scope: !3907, file: !733, line: 231, type: !130)
!3914 = !DILocalVariable(name: "version", arg: 4, scope: !3907, file: !733, line: 232, type: !130)
!3915 = !DILocalVariable(name: "authors", scope: !3907, file: !733, line: 234, type: !3916)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1060, line: 52, baseType: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2031, line: 14, baseType: !3918)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3881, baseType: !3919)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3878, size: 192, elements: !80)
!3920 = !DILocation(line: 0, scope: !3907)
!3921 = !DILocation(line: 234, column: 3, scope: !3907)
!3922 = !DILocation(line: 234, column: 11, scope: !3907)
!3923 = !DILocation(line: 235, column: 3, scope: !3907)
!3924 = !DILocation(line: 236, column: 3, scope: !3907)
!3925 = !DILocation(line: 237, column: 3, scope: !3907)
!3926 = !DILocation(line: 238, column: 1, scope: !3907)
!3927 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !733, file: !733, line: 241, type: !559, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !1049)
!3928 = !DILocation(line: 243, column: 3, scope: !3927)
!3929 = !DILocation(line: 248, column: 3, scope: !3927)
!3930 = !DILocation(line: 254, column: 3, scope: !3927)
!3931 = !DILocation(line: 259, column: 3, scope: !3927)
!3932 = !DILocation(line: 261, column: 1, scope: !3927)
!3933 = distinct !DISubprogram(name: "xnrealloc", scope: !3934, file: !3934, line: 147, type: !3935, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3937)
!3934 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!125, !125, !127, !127}
!3937 = !{!3938, !3939, !3940}
!3938 = !DILocalVariable(name: "p", arg: 1, scope: !3933, file: !3934, line: 147, type: !125)
!3939 = !DILocalVariable(name: "n", arg: 2, scope: !3933, file: !3934, line: 147, type: !127)
!3940 = !DILocalVariable(name: "s", arg: 3, scope: !3933, file: !3934, line: 147, type: !127)
!3941 = !DILocation(line: 0, scope: !3933)
!3942 = !DILocalVariable(name: "p", arg: 1, scope: !3943, file: !876, line: 83, type: !125)
!3943 = distinct !DISubprogram(name: "xreallocarray", scope: !876, file: !876, line: 83, type: !3935, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3944)
!3944 = !{!3942, !3945, !3946}
!3945 = !DILocalVariable(name: "n", arg: 2, scope: !3943, file: !876, line: 83, type: !127)
!3946 = !DILocalVariable(name: "s", arg: 3, scope: !3943, file: !876, line: 83, type: !127)
!3947 = !DILocation(line: 0, scope: !3943, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 149, column: 10, scope: !3933)
!3949 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !3948)
!3950 = !DILocalVariable(name: "p", arg: 1, scope: !3951, file: !876, line: 37, type: !125)
!3951 = distinct !DISubprogram(name: "check_nonnull", scope: !876, file: !876, line: 37, type: !3952, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!125, !125}
!3954 = !{!3950}
!3955 = !DILocation(line: 0, scope: !3951, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !3948)
!3957 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3956)
!3958 = distinct !DILexicalBlock(scope: !3951, file: !876, line: 39, column: 7)
!3959 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3956)
!3960 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3956)
!3961 = !DILocation(line: 149, column: 3, scope: !3933)
!3962 = !DILocation(line: 0, scope: !3943)
!3963 = !DILocation(line: 85, column: 25, scope: !3943)
!3964 = !DILocation(line: 0, scope: !3951, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 85, column: 10, scope: !3943)
!3966 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3965)
!3967 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3965)
!3968 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3965)
!3969 = !DILocation(line: 85, column: 3, scope: !3943)
!3970 = distinct !DISubprogram(name: "xmalloc", scope: !876, file: !876, line: 47, type: !3971, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!125, !127}
!3973 = !{!3974}
!3974 = !DILocalVariable(name: "s", arg: 1, scope: !3970, file: !876, line: 47, type: !127)
!3975 = !DILocation(line: 0, scope: !3970)
!3976 = !DILocation(line: 49, column: 25, scope: !3970)
!3977 = !DILocation(line: 0, scope: !3951, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 49, column: 10, scope: !3970)
!3979 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3978)
!3980 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3978)
!3981 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3978)
!3982 = !DILocation(line: 49, column: 3, scope: !3970)
!3983 = !DISubprogram(name: "malloc", scope: !1190, file: !1190, line: 540, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!3984 = distinct !DISubprogram(name: "ximalloc", scope: !876, file: !876, line: 53, type: !3985, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!125, !895}
!3987 = !{!3988}
!3988 = !DILocalVariable(name: "s", arg: 1, scope: !3984, file: !876, line: 53, type: !895)
!3989 = !DILocation(line: 0, scope: !3984)
!3990 = !DILocalVariable(name: "s", arg: 1, scope: !3991, file: !3992, line: 55, type: !895)
!3991 = distinct !DISubprogram(name: "imalloc", scope: !3992, file: !3992, line: 55, type: !3985, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !3993)
!3992 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3993 = !{!3990}
!3994 = !DILocation(line: 0, scope: !3991, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 55, column: 25, scope: !3984)
!3996 = !DILocation(line: 57, column: 26, scope: !3991, inlinedAt: !3995)
!3997 = !DILocation(line: 0, scope: !3951, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 55, column: 10, scope: !3984)
!3999 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3998)
!4000 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3998)
!4001 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3998)
!4002 = !DILocation(line: 55, column: 3, scope: !3984)
!4003 = distinct !DISubprogram(name: "xcharalloc", scope: !876, file: !876, line: 59, type: !4004, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!124, !127}
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "n", arg: 1, scope: !4003, file: !876, line: 59, type: !127)
!4008 = !DILocation(line: 0, scope: !4003)
!4009 = !DILocation(line: 0, scope: !3970, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 61, column: 10, scope: !4003)
!4011 = !DILocation(line: 49, column: 25, scope: !3970, inlinedAt: !4010)
!4012 = !DILocation(line: 0, scope: !3951, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 49, column: 10, scope: !3970, inlinedAt: !4010)
!4014 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4013)
!4015 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4013)
!4016 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4013)
!4017 = !DILocation(line: 61, column: 3, scope: !4003)
!4018 = distinct !DISubprogram(name: "xrealloc", scope: !876, file: !876, line: 68, type: !4019, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!125, !125, !127}
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "p", arg: 1, scope: !4018, file: !876, line: 68, type: !125)
!4023 = !DILocalVariable(name: "s", arg: 2, scope: !4018, file: !876, line: 68, type: !127)
!4024 = !DILocation(line: 0, scope: !4018)
!4025 = !DILocalVariable(name: "ptr", arg: 1, scope: !4026, file: !4027, line: 2057, type: !125)
!4026 = distinct !DISubprogram(name: "rpl_realloc", scope: !4027, file: !4027, line: 2057, type: !4019, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4028)
!4027 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4028 = !{!4025, !4029}
!4029 = !DILocalVariable(name: "size", arg: 2, scope: !4026, file: !4027, line: 2057, type: !127)
!4030 = !DILocation(line: 0, scope: !4026, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 70, column: 25, scope: !4018)
!4032 = !DILocation(line: 2059, column: 24, scope: !4026, inlinedAt: !4031)
!4033 = !DILocation(line: 2059, column: 10, scope: !4026, inlinedAt: !4031)
!4034 = !DILocation(line: 0, scope: !3951, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 70, column: 10, scope: !4018)
!4036 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4035)
!4037 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4035)
!4038 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4035)
!4039 = !DILocation(line: 70, column: 3, scope: !4018)
!4040 = !DISubprogram(name: "realloc", scope: !1190, file: !1190, line: 551, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4041 = distinct !DISubprogram(name: "xirealloc", scope: !876, file: !876, line: 74, type: !4042, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!125, !125, !895}
!4044 = !{!4045, !4046}
!4045 = !DILocalVariable(name: "p", arg: 1, scope: !4041, file: !876, line: 74, type: !125)
!4046 = !DILocalVariable(name: "s", arg: 2, scope: !4041, file: !876, line: 74, type: !895)
!4047 = !DILocation(line: 0, scope: !4041)
!4048 = !DILocalVariable(name: "p", arg: 1, scope: !4049, file: !3992, line: 66, type: !125)
!4049 = distinct !DISubprogram(name: "irealloc", scope: !3992, file: !3992, line: 66, type: !4042, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4050)
!4050 = !{!4048, !4051}
!4051 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !3992, line: 66, type: !895)
!4052 = !DILocation(line: 0, scope: !4049, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 76, column: 25, scope: !4041)
!4054 = !DILocation(line: 0, scope: !4026, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 68, column: 26, scope: !4049, inlinedAt: !4053)
!4056 = !DILocation(line: 2059, column: 24, scope: !4026, inlinedAt: !4055)
!4057 = !DILocation(line: 2059, column: 10, scope: !4026, inlinedAt: !4055)
!4058 = !DILocation(line: 0, scope: !3951, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 76, column: 10, scope: !4041)
!4060 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4059)
!4061 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4059)
!4062 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4059)
!4063 = !DILocation(line: 76, column: 3, scope: !4041)
!4064 = distinct !DISubprogram(name: "xireallocarray", scope: !876, file: !876, line: 89, type: !4065, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!125, !125, !895, !895}
!4067 = !{!4068, !4069, !4070}
!4068 = !DILocalVariable(name: "p", arg: 1, scope: !4064, file: !876, line: 89, type: !125)
!4069 = !DILocalVariable(name: "n", arg: 2, scope: !4064, file: !876, line: 89, type: !895)
!4070 = !DILocalVariable(name: "s", arg: 3, scope: !4064, file: !876, line: 89, type: !895)
!4071 = !DILocation(line: 0, scope: !4064)
!4072 = !DILocalVariable(name: "p", arg: 1, scope: !4073, file: !3992, line: 98, type: !125)
!4073 = distinct !DISubprogram(name: "ireallocarray", scope: !3992, file: !3992, line: 98, type: !4065, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4074)
!4074 = !{!4072, !4075, !4076}
!4075 = !DILocalVariable(name: "n", arg: 2, scope: !4073, file: !3992, line: 98, type: !895)
!4076 = !DILocalVariable(name: "s", arg: 3, scope: !4073, file: !3992, line: 98, type: !895)
!4077 = !DILocation(line: 0, scope: !4073, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 91, column: 25, scope: !4064)
!4079 = !DILocation(line: 101, column: 13, scope: !4073, inlinedAt: !4078)
!4080 = !DILocation(line: 0, scope: !3951, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 91, column: 10, scope: !4064)
!4082 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4081)
!4083 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4081)
!4084 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4081)
!4085 = !DILocation(line: 91, column: 3, scope: !4064)
!4086 = distinct !DISubprogram(name: "xnmalloc", scope: !876, file: !876, line: 98, type: !4087, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!125, !127, !127}
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !876, line: 98, type: !127)
!4091 = !DILocalVariable(name: "s", arg: 2, scope: !4086, file: !876, line: 98, type: !127)
!4092 = !DILocation(line: 0, scope: !4086)
!4093 = !DILocation(line: 0, scope: !3943, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 100, column: 10, scope: !4086)
!4095 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !4094)
!4096 = !DILocation(line: 0, scope: !3951, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !4094)
!4098 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4097)
!4099 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4097)
!4100 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4097)
!4101 = !DILocation(line: 100, column: 3, scope: !4086)
!4102 = distinct !DISubprogram(name: "xinmalloc", scope: !876, file: !876, line: 104, type: !4103, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!125, !895, !895}
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "n", arg: 1, scope: !4102, file: !876, line: 104, type: !895)
!4107 = !DILocalVariable(name: "s", arg: 2, scope: !4102, file: !876, line: 104, type: !895)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 0, scope: !4064, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 106, column: 10, scope: !4102)
!4111 = !DILocation(line: 0, scope: !4073, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 91, column: 25, scope: !4064, inlinedAt: !4110)
!4113 = !DILocation(line: 101, column: 13, scope: !4073, inlinedAt: !4112)
!4114 = !DILocation(line: 0, scope: !3951, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 91, column: 10, scope: !4064, inlinedAt: !4110)
!4116 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4115)
!4117 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4115)
!4118 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4115)
!4119 = !DILocation(line: 106, column: 3, scope: !4102)
!4120 = distinct !DISubprogram(name: "x2realloc", scope: !876, file: !876, line: 116, type: !4121, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!125, !125, !882}
!4123 = !{!4124, !4125}
!4124 = !DILocalVariable(name: "p", arg: 1, scope: !4120, file: !876, line: 116, type: !125)
!4125 = !DILocalVariable(name: "ps", arg: 2, scope: !4120, file: !876, line: 116, type: !882)
!4126 = !DILocation(line: 0, scope: !4120)
!4127 = !DILocation(line: 0, scope: !879, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 118, column: 10, scope: !4120)
!4129 = !DILocation(line: 178, column: 14, scope: !879, inlinedAt: !4128)
!4130 = !DILocation(line: 180, column: 9, scope: !4131, inlinedAt: !4128)
!4131 = distinct !DILexicalBlock(scope: !879, file: !876, line: 180, column: 7)
!4132 = !DILocation(line: 180, column: 7, scope: !879, inlinedAt: !4128)
!4133 = !DILocation(line: 182, column: 13, scope: !4134, inlinedAt: !4128)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !876, line: 182, column: 11)
!4135 = distinct !DILexicalBlock(scope: !4131, file: !876, line: 181, column: 5)
!4136 = !DILocation(line: 182, column: 11, scope: !4135, inlinedAt: !4128)
!4137 = !DILocation(line: 197, column: 11, scope: !4138, inlinedAt: !4128)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !876, line: 197, column: 11)
!4139 = distinct !DILexicalBlock(scope: !4131, file: !876, line: 195, column: 5)
!4140 = !DILocation(line: 197, column: 11, scope: !4139, inlinedAt: !4128)
!4141 = !DILocation(line: 198, column: 9, scope: !4138, inlinedAt: !4128)
!4142 = !DILocation(line: 0, scope: !3943, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 201, column: 7, scope: !879, inlinedAt: !4128)
!4144 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !4143)
!4145 = !DILocation(line: 0, scope: !3951, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !4143)
!4147 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4146)
!4148 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4146)
!4149 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4146)
!4150 = !DILocation(line: 202, column: 7, scope: !879, inlinedAt: !4128)
!4151 = !DILocation(line: 118, column: 3, scope: !4120)
!4152 = !DILocation(line: 0, scope: !879)
!4153 = !DILocation(line: 178, column: 14, scope: !879)
!4154 = !DILocation(line: 180, column: 9, scope: !4131)
!4155 = !DILocation(line: 180, column: 7, scope: !879)
!4156 = !DILocation(line: 182, column: 13, scope: !4134)
!4157 = !DILocation(line: 182, column: 11, scope: !4135)
!4158 = !DILocation(line: 190, column: 30, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4134, file: !876, line: 183, column: 9)
!4160 = !DILocation(line: 191, column: 16, scope: !4159)
!4161 = !DILocation(line: 191, column: 13, scope: !4159)
!4162 = !DILocation(line: 192, column: 9, scope: !4159)
!4163 = !DILocation(line: 197, column: 11, scope: !4138)
!4164 = !DILocation(line: 197, column: 11, scope: !4139)
!4165 = !DILocation(line: 198, column: 9, scope: !4138)
!4166 = !DILocation(line: 0, scope: !3943, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 201, column: 7, scope: !879)
!4168 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !4167)
!4169 = !DILocation(line: 0, scope: !3951, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !4167)
!4171 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4170)
!4172 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4170)
!4173 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4170)
!4174 = !DILocation(line: 202, column: 7, scope: !879)
!4175 = !DILocation(line: 203, column: 3, scope: !879)
!4176 = !DILocation(line: 0, scope: !891)
!4177 = !DILocation(line: 230, column: 14, scope: !891)
!4178 = !DILocation(line: 238, column: 7, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !891, file: !876, line: 238, column: 7)
!4180 = !DILocation(line: 238, column: 7, scope: !891)
!4181 = !DILocation(line: 240, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !891, file: !876, line: 240, column: 7)
!4183 = !DILocation(line: 240, column: 18, scope: !4182)
!4184 = !DILocation(line: 253, column: 8, scope: !891)
!4185 = !DILocation(line: 258, column: 27, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !876, line: 257, column: 5)
!4187 = distinct !DILexicalBlock(scope: !891, file: !876, line: 256, column: 7)
!4188 = !DILocation(line: 259, column: 50, scope: !4186)
!4189 = !DILocation(line: 259, column: 32, scope: !4186)
!4190 = !DILocation(line: 260, column: 5, scope: !4186)
!4191 = !DILocation(line: 262, column: 9, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !891, file: !876, line: 262, column: 7)
!4193 = !DILocation(line: 262, column: 7, scope: !891)
!4194 = !DILocation(line: 263, column: 9, scope: !4192)
!4195 = !DILocation(line: 263, column: 5, scope: !4192)
!4196 = !DILocation(line: 264, column: 9, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !891, file: !876, line: 264, column: 7)
!4198 = !DILocation(line: 264, column: 14, scope: !4197)
!4199 = !DILocation(line: 265, column: 7, scope: !4197)
!4200 = !DILocation(line: 265, column: 11, scope: !4197)
!4201 = !DILocation(line: 266, column: 11, scope: !4197)
!4202 = !DILocation(line: 267, column: 14, scope: !4197)
!4203 = !DILocation(line: 264, column: 7, scope: !891)
!4204 = !DILocation(line: 268, column: 5, scope: !4197)
!4205 = !DILocation(line: 0, scope: !4018, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 269, column: 8, scope: !891)
!4207 = !DILocation(line: 0, scope: !4026, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 70, column: 25, scope: !4018, inlinedAt: !4206)
!4209 = !DILocation(line: 2059, column: 24, scope: !4026, inlinedAt: !4208)
!4210 = !DILocation(line: 2059, column: 10, scope: !4026, inlinedAt: !4208)
!4211 = !DILocation(line: 0, scope: !3951, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 70, column: 10, scope: !4018, inlinedAt: !4206)
!4213 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4212)
!4214 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4212)
!4215 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4212)
!4216 = !DILocation(line: 270, column: 7, scope: !891)
!4217 = !DILocation(line: 271, column: 3, scope: !891)
!4218 = distinct !DISubprogram(name: "xzalloc", scope: !876, file: !876, line: 279, type: !3971, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4219)
!4219 = !{!4220}
!4220 = !DILocalVariable(name: "s", arg: 1, scope: !4218, file: !876, line: 279, type: !127)
!4221 = !DILocation(line: 0, scope: !4218)
!4222 = !DILocalVariable(name: "n", arg: 1, scope: !4223, file: !876, line: 294, type: !127)
!4223 = distinct !DISubprogram(name: "xcalloc", scope: !876, file: !876, line: 294, type: !4087, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4224)
!4224 = !{!4222, !4225}
!4225 = !DILocalVariable(name: "s", arg: 2, scope: !4223, file: !876, line: 294, type: !127)
!4226 = !DILocation(line: 0, scope: !4223, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 281, column: 10, scope: !4218)
!4228 = !DILocation(line: 296, column: 25, scope: !4223, inlinedAt: !4227)
!4229 = !DILocation(line: 0, scope: !3951, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 296, column: 10, scope: !4223, inlinedAt: !4227)
!4231 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4230)
!4232 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4230)
!4233 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4230)
!4234 = !DILocation(line: 281, column: 3, scope: !4218)
!4235 = !DISubprogram(name: "calloc", scope: !1190, file: !1190, line: 543, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4236 = !DILocation(line: 0, scope: !4223)
!4237 = !DILocation(line: 296, column: 25, scope: !4223)
!4238 = !DILocation(line: 0, scope: !3951, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 296, column: 10, scope: !4223)
!4240 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4239)
!4241 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4239)
!4242 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4239)
!4243 = !DILocation(line: 296, column: 3, scope: !4223)
!4244 = distinct !DISubprogram(name: "xizalloc", scope: !876, file: !876, line: 285, type: !3985, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4245)
!4245 = !{!4246}
!4246 = !DILocalVariable(name: "s", arg: 1, scope: !4244, file: !876, line: 285, type: !895)
!4247 = !DILocation(line: 0, scope: !4244)
!4248 = !DILocalVariable(name: "n", arg: 1, scope: !4249, file: !876, line: 300, type: !895)
!4249 = distinct !DISubprogram(name: "xicalloc", scope: !876, file: !876, line: 300, type: !4103, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4250)
!4250 = !{!4248, !4251}
!4251 = !DILocalVariable(name: "s", arg: 2, scope: !4249, file: !876, line: 300, type: !895)
!4252 = !DILocation(line: 0, scope: !4249, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 287, column: 10, scope: !4244)
!4254 = !DILocalVariable(name: "n", arg: 1, scope: !4255, file: !3992, line: 77, type: !895)
!4255 = distinct !DISubprogram(name: "icalloc", scope: !3992, file: !3992, line: 77, type: !4103, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4256)
!4256 = !{!4254, !4257}
!4257 = !DILocalVariable(name: "s", arg: 2, scope: !4255, file: !3992, line: 77, type: !895)
!4258 = !DILocation(line: 0, scope: !4255, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 302, column: 25, scope: !4249, inlinedAt: !4253)
!4260 = !DILocation(line: 91, column: 10, scope: !4255, inlinedAt: !4259)
!4261 = !DILocation(line: 0, scope: !3951, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 302, column: 10, scope: !4249, inlinedAt: !4253)
!4263 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4262)
!4264 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4262)
!4265 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4262)
!4266 = !DILocation(line: 287, column: 3, scope: !4244)
!4267 = !DILocation(line: 0, scope: !4249)
!4268 = !DILocation(line: 0, scope: !4255, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 302, column: 25, scope: !4249)
!4270 = !DILocation(line: 91, column: 10, scope: !4255, inlinedAt: !4269)
!4271 = !DILocation(line: 0, scope: !3951, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 302, column: 10, scope: !4249)
!4273 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4272)
!4274 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4272)
!4275 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4272)
!4276 = !DILocation(line: 302, column: 3, scope: !4249)
!4277 = distinct !DISubprogram(name: "xmemdup", scope: !876, file: !876, line: 310, type: !4278, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!125, !1214, !127}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "p", arg: 1, scope: !4277, file: !876, line: 310, type: !1214)
!4282 = !DILocalVariable(name: "s", arg: 2, scope: !4277, file: !876, line: 310, type: !127)
!4283 = !DILocation(line: 0, scope: !4277)
!4284 = !DILocation(line: 0, scope: !3970, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 312, column: 18, scope: !4277)
!4286 = !DILocation(line: 49, column: 25, scope: !3970, inlinedAt: !4285)
!4287 = !DILocation(line: 0, scope: !3951, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 49, column: 10, scope: !3970, inlinedAt: !4285)
!4289 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4288)
!4290 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4288)
!4291 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4288)
!4292 = !DILocalVariable(name: "__dest", arg: 1, scope: !4293, file: !2193, line: 26, type: !4296)
!4293 = distinct !DISubprogram(name: "memcpy", scope: !2193, file: !2193, line: 26, type: !4294, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4297)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!125, !4296, !1213, !127}
!4296 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!4297 = !{!4292, !4298, !4299}
!4298 = !DILocalVariable(name: "__src", arg: 2, scope: !4293, file: !2193, line: 26, type: !1213)
!4299 = !DILocalVariable(name: "__len", arg: 3, scope: !4293, file: !2193, line: 26, type: !127)
!4300 = !DILocation(line: 0, scope: !4293, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 312, column: 10, scope: !4277)
!4302 = !DILocation(line: 29, column: 10, scope: !4293, inlinedAt: !4301)
!4303 = !DILocation(line: 312, column: 3, scope: !4277)
!4304 = distinct !DISubprogram(name: "ximemdup", scope: !876, file: !876, line: 316, type: !4305, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!125, !1214, !895}
!4307 = !{!4308, !4309}
!4308 = !DILocalVariable(name: "p", arg: 1, scope: !4304, file: !876, line: 316, type: !1214)
!4309 = !DILocalVariable(name: "s", arg: 2, scope: !4304, file: !876, line: 316, type: !895)
!4310 = !DILocation(line: 0, scope: !4304)
!4311 = !DILocation(line: 0, scope: !3984, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 318, column: 18, scope: !4304)
!4313 = !DILocation(line: 0, scope: !3991, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 55, column: 25, scope: !3984, inlinedAt: !4312)
!4315 = !DILocation(line: 57, column: 26, scope: !3991, inlinedAt: !4314)
!4316 = !DILocation(line: 0, scope: !3951, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 55, column: 10, scope: !3984, inlinedAt: !4312)
!4318 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4317)
!4319 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4317)
!4320 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4317)
!4321 = !DILocation(line: 0, scope: !4293, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 318, column: 10, scope: !4304)
!4323 = !DILocation(line: 29, column: 10, scope: !4293, inlinedAt: !4322)
!4324 = !DILocation(line: 318, column: 3, scope: !4304)
!4325 = distinct !DISubprogram(name: "ximemdup0", scope: !876, file: !876, line: 325, type: !4326, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!124, !1214, !895}
!4328 = !{!4329, !4330, !4331}
!4329 = !DILocalVariable(name: "p", arg: 1, scope: !4325, file: !876, line: 325, type: !1214)
!4330 = !DILocalVariable(name: "s", arg: 2, scope: !4325, file: !876, line: 325, type: !895)
!4331 = !DILocalVariable(name: "result", scope: !4325, file: !876, line: 327, type: !124)
!4332 = !DILocation(line: 0, scope: !4325)
!4333 = !DILocation(line: 327, column: 30, scope: !4325)
!4334 = !DILocation(line: 0, scope: !3984, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 327, column: 18, scope: !4325)
!4336 = !DILocation(line: 0, scope: !3991, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 55, column: 25, scope: !3984, inlinedAt: !4335)
!4338 = !DILocation(line: 57, column: 26, scope: !3991, inlinedAt: !4337)
!4339 = !DILocation(line: 0, scope: !3951, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 55, column: 10, scope: !3984, inlinedAt: !4335)
!4341 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4340)
!4342 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4340)
!4343 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4340)
!4344 = !DILocation(line: 328, column: 3, scope: !4325)
!4345 = !DILocation(line: 328, column: 13, scope: !4325)
!4346 = !DILocation(line: 0, scope: !4293, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 329, column: 10, scope: !4325)
!4348 = !DILocation(line: 29, column: 10, scope: !4293, inlinedAt: !4347)
!4349 = !DILocation(line: 329, column: 3, scope: !4325)
!4350 = distinct !DISubprogram(name: "xstrdup", scope: !876, file: !876, line: 335, type: !1192, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4351)
!4351 = !{!4352}
!4352 = !DILocalVariable(name: "string", arg: 1, scope: !4350, file: !876, line: 335, type: !130)
!4353 = !DILocation(line: 0, scope: !4350)
!4354 = !DILocation(line: 337, column: 27, scope: !4350)
!4355 = !DILocation(line: 337, column: 43, scope: !4350)
!4356 = !DILocation(line: 0, scope: !4277, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 337, column: 10, scope: !4350)
!4358 = !DILocation(line: 0, scope: !3970, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 312, column: 18, scope: !4277, inlinedAt: !4357)
!4360 = !DILocation(line: 49, column: 25, scope: !3970, inlinedAt: !4359)
!4361 = !DILocation(line: 0, scope: !3951, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 49, column: 10, scope: !3970, inlinedAt: !4359)
!4363 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4362)
!4364 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4362)
!4365 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4362)
!4366 = !DILocation(line: 0, scope: !4293, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 312, column: 10, scope: !4277, inlinedAt: !4357)
!4368 = !DILocation(line: 29, column: 10, scope: !4293, inlinedAt: !4367)
!4369 = !DILocation(line: 337, column: 3, scope: !4350)
!4370 = distinct !DISubprogram(name: "xalloc_die", scope: !823, file: !823, line: 32, type: !559, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !4371)
!4371 = !{!4372}
!4372 = !DILocalVariable(name: "__errstatus", scope: !4373, file: !823, line: 34, type: !4374)
!4373 = distinct !DILexicalBlock(scope: !4370, file: !823, line: 34, column: 3)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!4375 = !DILocation(line: 34, column: 3, scope: !4373)
!4376 = !DILocation(line: 0, scope: !4373)
!4377 = !DILocation(line: 40, column: 3, scope: !4370)
!4378 = distinct !DISubprogram(name: "xgetgroups", scope: !912, file: !912, line: 31, type: !933, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4379)
!4379 = !{!4380, !4381, !4382, !4383}
!4380 = !DILocalVariable(name: "username", arg: 1, scope: !4378, file: !912, line: 31, type: !130)
!4381 = !DILocalVariable(name: "gid", arg: 2, scope: !4378, file: !912, line: 31, type: !207)
!4382 = !DILocalVariable(name: "groups", arg: 3, scope: !4378, file: !912, line: 31, type: !935)
!4383 = !DILocalVariable(name: "result", scope: !4378, file: !912, line: 33, type: !103)
!4384 = !DILocation(line: 0, scope: !4378)
!4385 = !DILocation(line: 33, column: 16, scope: !4378)
!4386 = !DILocation(line: 34, column: 14, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4378, file: !912, line: 34, column: 7)
!4388 = !DILocation(line: 34, column: 20, scope: !4387)
!4389 = !DILocation(line: 34, column: 23, scope: !4387)
!4390 = !DILocation(line: 34, column: 29, scope: !4387)
!4391 = !DILocation(line: 34, column: 7, scope: !4378)
!4392 = !DILocation(line: 35, column: 5, scope: !4387)
!4393 = !DILocation(line: 36, column: 3, scope: !4378)
!4394 = distinct !DISubprogram(name: "xstrtoul", scope: !4395, file: !4395, line: 71, type: !4396, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4400)
!4395 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!4398, !130, !1219, !103, !4399, !130}
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !859, line: 43, baseType: !858)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4411, !4412, !4413, !4414, !4417, !4418}
!4401 = !DILocalVariable(name: "nptr", arg: 1, scope: !4394, file: !4395, line: 71, type: !130)
!4402 = !DILocalVariable(name: "endptr", arg: 2, scope: !4394, file: !4395, line: 71, type: !1219)
!4403 = !DILocalVariable(name: "base", arg: 3, scope: !4394, file: !4395, line: 71, type: !103)
!4404 = !DILocalVariable(name: "val", arg: 4, scope: !4394, file: !4395, line: 72, type: !4399)
!4405 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4394, file: !4395, line: 72, type: !130)
!4406 = !DILocalVariable(name: "t_ptr", scope: !4394, file: !4395, line: 74, type: !124)
!4407 = !DILocalVariable(name: "p", scope: !4394, file: !4395, line: 75, type: !1219)
!4408 = !DILocalVariable(name: "q", scope: !4409, file: !4395, line: 79, type: !130)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !4395, line: 78, column: 5)
!4410 = distinct !DILexicalBlock(scope: !4394, file: !4395, line: 77, column: 7)
!4411 = !DILocalVariable(name: "ch", scope: !4409, file: !4395, line: 80, type: !132)
!4412 = !DILocalVariable(name: "tmp", scope: !4394, file: !4395, line: 91, type: !129)
!4413 = !DILocalVariable(name: "err", scope: !4394, file: !4395, line: 92, type: !4398)
!4414 = !DILocalVariable(name: "xbase", scope: !4415, file: !4395, line: 126, type: !103)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !4395, line: 119, column: 5)
!4416 = distinct !DILexicalBlock(scope: !4394, file: !4395, line: 118, column: 7)
!4417 = !DILocalVariable(name: "suffixes", scope: !4415, file: !4395, line: 127, type: !103)
!4418 = !DILocalVariable(name: "overflow", scope: !4415, file: !4395, line: 156, type: !4398)
!4419 = !DILocation(line: 0, scope: !4394)
!4420 = !DILocation(line: 74, column: 3, scope: !4394)
!4421 = !DILocation(line: 75, column: 14, scope: !4394)
!4422 = !DILocation(line: 0, scope: !4409)
!4423 = !DILocation(line: 81, column: 7, scope: !4409)
!4424 = !DILocation(line: 81, column: 14, scope: !4409)
!4425 = !DILocation(line: 82, column: 15, scope: !4409)
!4426 = distinct !{!4426, !4423, !4427, !1112}
!4427 = !DILocation(line: 82, column: 17, scope: !4409)
!4428 = !DILocation(line: 83, column: 14, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4409, file: !4395, line: 83, column: 11)
!4430 = !DILocation(line: 83, column: 11, scope: !4409)
!4431 = !DILocation(line: 85, column: 14, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !4395, line: 84, column: 9)
!4433 = !DILocation(line: 90, column: 3, scope: !4394)
!4434 = !DILocation(line: 90, column: 9, scope: !4394)
!4435 = !DILocation(line: 91, column: 20, scope: !4394)
!4436 = !DILocation(line: 94, column: 7, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4394, file: !4395, line: 94, column: 7)
!4438 = !DILocation(line: 94, column: 10, scope: !4437)
!4439 = !DILocation(line: 94, column: 7, scope: !4394)
!4440 = !DILocation(line: 98, column: 14, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !4395, line: 98, column: 11)
!4442 = distinct !DILexicalBlock(scope: !4437, file: !4395, line: 95, column: 5)
!4443 = !DILocation(line: 98, column: 29, scope: !4441)
!4444 = !DILocation(line: 98, column: 32, scope: !4441)
!4445 = !DILocation(line: 98, column: 38, scope: !4441)
!4446 = !DILocation(line: 98, column: 41, scope: !4441)
!4447 = !DILocation(line: 98, column: 11, scope: !4442)
!4448 = !DILocation(line: 102, column: 12, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4437, file: !4395, line: 102, column: 12)
!4450 = !DILocation(line: 102, column: 12, scope: !4437)
!4451 = !DILocation(line: 107, column: 5, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4449, file: !4395, line: 103, column: 5)
!4453 = !DILocation(line: 112, column: 8, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4394, file: !4395, line: 112, column: 7)
!4455 = !DILocation(line: 112, column: 7, scope: !4394)
!4456 = !DILocation(line: 114, column: 12, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4454, file: !4395, line: 113, column: 5)
!4458 = !DILocation(line: 115, column: 7, scope: !4457)
!4459 = !DILocation(line: 118, column: 7, scope: !4416)
!4460 = !DILocation(line: 118, column: 11, scope: !4416)
!4461 = !DILocation(line: 118, column: 7, scope: !4394)
!4462 = !DILocation(line: 120, column: 12, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4415, file: !4395, line: 120, column: 11)
!4464 = !DILocation(line: 120, column: 11, scope: !4415)
!4465 = !DILocation(line: 122, column: 16, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4463, file: !4395, line: 121, column: 9)
!4467 = !DILocation(line: 123, column: 22, scope: !4466)
!4468 = !DILocation(line: 123, column: 11, scope: !4466)
!4469 = !DILocation(line: 0, scope: !4415)
!4470 = !DILocation(line: 128, column: 7, scope: !4415)
!4471 = !DILocation(line: 140, column: 15, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !4395, line: 140, column: 15)
!4473 = distinct !DILexicalBlock(scope: !4415, file: !4395, line: 129, column: 9)
!4474 = !DILocation(line: 140, column: 15, scope: !4473)
!4475 = !DILocation(line: 141, column: 21, scope: !4472)
!4476 = !DILocation(line: 141, column: 13, scope: !4472)
!4477 = !DILocation(line: 144, column: 21, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !4395, line: 144, column: 21)
!4479 = distinct !DILexicalBlock(scope: !4472, file: !4395, line: 142, column: 15)
!4480 = !DILocation(line: 144, column: 29, scope: !4478)
!4481 = !DILocation(line: 144, column: 21, scope: !4479)
!4482 = !DILocation(line: 152, column: 17, scope: !4479)
!4483 = !DILocation(line: 157, column: 7, scope: !4415)
!4484 = !DILocalVariable(name: "err", scope: !4485, file: !4395, line: 64, type: !4398)
!4485 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4395, file: !4395, line: 62, type: !4486, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4488)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!4398, !4399, !103, !103}
!4488 = !{!4489, !4490, !4491, !4484}
!4489 = !DILocalVariable(name: "x", arg: 1, scope: !4485, file: !4395, line: 62, type: !4399)
!4490 = !DILocalVariable(name: "base", arg: 2, scope: !4485, file: !4395, line: 62, type: !103)
!4491 = !DILocalVariable(name: "power", arg: 3, scope: !4485, file: !4395, line: 62, type: !103)
!4492 = !DILocation(line: 0, scope: !4485, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 219, column: 22, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4415, file: !4395, line: 158, column: 9)
!4495 = !DILocalVariable(name: "x", arg: 1, scope: !4496, file: !4395, line: 47, type: !4399)
!4496 = distinct !DISubprogram(name: "bkm_scale", scope: !4395, file: !4395, line: 47, type: !4497, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4499)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!4398, !4399, !103}
!4499 = !{!4495, !4500, !4501}
!4500 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4496, file: !4395, line: 47, type: !103)
!4501 = !DILocalVariable(name: "scaled", scope: !4496, file: !4395, line: 49, type: !129)
!4502 = !DILocation(line: 0, scope: !4496, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4493)
!4504 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4503)
!4505 = distinct !DILexicalBlock(scope: !4496, file: !4395, line: 50, column: 7)
!4506 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4493)
!4507 = !DILocation(line: 227, column: 11, scope: !4415)
!4508 = !DILocation(line: 0, scope: !4485, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 215, column: 22, scope: !4494)
!4510 = !DILocation(line: 0, scope: !4496, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4509)
!4512 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4511)
!4513 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4509)
!4514 = !DILocation(line: 0, scope: !4485, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 202, column: 22, scope: !4494)
!4516 = !DILocation(line: 0, scope: !4496, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4515)
!4518 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4517)
!4519 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4515)
!4520 = !DILocation(line: 0, scope: !4485, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 198, column: 22, scope: !4494)
!4522 = !DILocation(line: 0, scope: !4496, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4521)
!4524 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4523)
!4525 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4521)
!4526 = !DILocation(line: 0, scope: !4485, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 194, column: 22, scope: !4494)
!4528 = !DILocation(line: 0, scope: !4496, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4527)
!4530 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4529)
!4531 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4527)
!4532 = !DILocation(line: 0, scope: !4485, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 175, column: 22, scope: !4494)
!4534 = !DILocation(line: 0, scope: !4496, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4533)
!4536 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4535)
!4537 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4533)
!4538 = !DILocation(line: 0, scope: !4496, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 160, column: 22, scope: !4494)
!4540 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4539)
!4541 = !DILocation(line: 161, column: 11, scope: !4494)
!4542 = !DILocation(line: 0, scope: !4496, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 167, column: 22, scope: !4494)
!4544 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4543)
!4545 = !DILocation(line: 168, column: 11, scope: !4494)
!4546 = !DILocation(line: 0, scope: !4485, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 180, column: 22, scope: !4494)
!4548 = !DILocation(line: 0, scope: !4496, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4547)
!4550 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4549)
!4551 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4547)
!4552 = !DILocation(line: 0, scope: !4485, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 185, column: 22, scope: !4494)
!4554 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4553)
!4556 = !DILocation(line: 0, scope: !4496, inlinedAt: !4555)
!4557 = !DILocation(line: 0, scope: !4485, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 190, column: 22, scope: !4494)
!4559 = !DILocation(line: 0, scope: !4496, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4558)
!4561 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4560)
!4562 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4558)
!4563 = !DILocation(line: 0, scope: !4485, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 207, column: 22, scope: !4494)
!4565 = !DILocation(line: 0, scope: !4496, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 66, column: 12, scope: !4485, inlinedAt: !4564)
!4567 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4566)
!4568 = !DILocation(line: 66, column: 9, scope: !4485, inlinedAt: !4564)
!4569 = !DILocation(line: 0, scope: !4496, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 211, column: 22, scope: !4494)
!4571 = !DILocation(line: 50, column: 7, scope: !4505, inlinedAt: !4570)
!4572 = !DILocation(line: 212, column: 11, scope: !4494)
!4573 = !DILocation(line: 0, scope: !4494)
!4574 = !DILocation(line: 228, column: 10, scope: !4415)
!4575 = !DILocation(line: 229, column: 11, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4415, file: !4395, line: 229, column: 11)
!4577 = !DILocation(line: 229, column: 11, scope: !4415)
!4578 = !DILocation(line: 223, column: 16, scope: !4494)
!4579 = !DILocation(line: 224, column: 22, scope: !4494)
!4580 = !DILocation(line: 100, column: 11, scope: !4442)
!4581 = !DILocation(line: 92, column: 16, scope: !4394)
!4582 = !DILocation(line: 233, column: 8, scope: !4394)
!4583 = !DILocation(line: 234, column: 3, scope: !4394)
!4584 = !DILocation(line: 235, column: 1, scope: !4394)
!4585 = !DISubprogram(name: "strtoul", scope: !1190, file: !1190, line: 181, type: !4586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!129, !1055, !4588, !103}
!4588 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1219)
!4589 = distinct !DISubprogram(name: "close_stream", scope: !918, file: !918, line: 55, type: !4590, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4626)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!103, !4592}
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4594)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4595)
!4595 = !{!4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4594, file: !240, line: 51, baseType: !103, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4594, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4594, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4594, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4594, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4594, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4594, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4594, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4594, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4594, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4594, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4594, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4594, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4594, file: !240, line: 70, baseType: !4610, size: 64, offset: 832)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4594, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4594, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4594, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4594, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4594, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4594, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4594, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4594, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4594, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4594, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4594, file: !240, line: 93, baseType: !4610, size: 64, offset: 1344)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4594, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4594, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4594, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4594, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4626 = !{!4627, !4628, !4630, !4631}
!4627 = !DILocalVariable(name: "stream", arg: 1, scope: !4589, file: !918, line: 55, type: !4592)
!4628 = !DILocalVariable(name: "some_pending", scope: !4589, file: !918, line: 57, type: !4629)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!4630 = !DILocalVariable(name: "prev_fail", scope: !4589, file: !918, line: 58, type: !4629)
!4631 = !DILocalVariable(name: "fclose_fail", scope: !4589, file: !918, line: 59, type: !4629)
!4632 = !DILocation(line: 0, scope: !4589)
!4633 = !DILocation(line: 57, column: 30, scope: !4589)
!4634 = !DILocalVariable(name: "__stream", arg: 1, scope: !4635, file: !1357, line: 135, type: !4592)
!4635 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1357, file: !1357, line: 135, type: !4590, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4636)
!4636 = !{!4634}
!4637 = !DILocation(line: 0, scope: !4635, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 58, column: 27, scope: !4589)
!4639 = !DILocation(line: 137, column: 10, scope: !4635, inlinedAt: !4638)
!4640 = !DILocation(line: 58, column: 43, scope: !4589)
!4641 = !DILocation(line: 59, column: 29, scope: !4589)
!4642 = !DILocation(line: 59, column: 45, scope: !4589)
!4643 = !DILocation(line: 69, column: 17, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4589, file: !918, line: 69, column: 7)
!4645 = !DILocation(line: 57, column: 50, scope: !4589)
!4646 = !DILocation(line: 69, column: 33, scope: !4644)
!4647 = !DILocation(line: 69, column: 53, scope: !4644)
!4648 = !DILocation(line: 69, column: 59, scope: !4644)
!4649 = !DILocation(line: 69, column: 7, scope: !4589)
!4650 = !DILocation(line: 71, column: 11, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4644, file: !918, line: 70, column: 5)
!4652 = !DILocation(line: 72, column: 9, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4651, file: !918, line: 71, column: 11)
!4654 = !DILocation(line: 72, column: 15, scope: !4653)
!4655 = !DILocation(line: 77, column: 1, scope: !4589)
!4656 = !DISubprogram(name: "__fpending", scope: !2131, file: !2131, line: 75, type: !4657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!127, !4592}
!4659 = distinct !DISubprogram(name: "rpl_fclose", scope: !920, file: !920, line: 58, type: !4660, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4696)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!103, !4662}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4664)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4665)
!4665 = !{!4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4664, file: !240, line: 51, baseType: !103, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4664, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4664, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4664, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4664, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4664, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4664, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4664, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4664, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4664, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4664, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4664, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4664, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4664, file: !240, line: 70, baseType: !4680, size: 64, offset: 832)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4664, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4664, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4664, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4664, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4664, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4664, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4664, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4664, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4664, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4664, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4664, file: !240, line: 93, baseType: !4680, size: 64, offset: 1344)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4664, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4664, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4664, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4664, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4696 = !{!4697, !4698, !4699, !4700}
!4697 = !DILocalVariable(name: "fp", arg: 1, scope: !4659, file: !920, line: 58, type: !4662)
!4698 = !DILocalVariable(name: "saved_errno", scope: !4659, file: !920, line: 60, type: !103)
!4699 = !DILocalVariable(name: "fd", scope: !4659, file: !920, line: 63, type: !103)
!4700 = !DILocalVariable(name: "result", scope: !4659, file: !920, line: 74, type: !103)
!4701 = !DILocation(line: 0, scope: !4659)
!4702 = !DILocation(line: 63, column: 12, scope: !4659)
!4703 = !DILocation(line: 64, column: 10, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4659, file: !920, line: 64, column: 7)
!4705 = !DILocation(line: 64, column: 7, scope: !4659)
!4706 = !DILocation(line: 65, column: 12, scope: !4704)
!4707 = !DILocation(line: 65, column: 5, scope: !4704)
!4708 = !DILocation(line: 70, column: 9, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4659, file: !920, line: 70, column: 7)
!4710 = !DILocation(line: 70, column: 23, scope: !4709)
!4711 = !DILocation(line: 70, column: 33, scope: !4709)
!4712 = !DILocation(line: 70, column: 26, scope: !4709)
!4713 = !DILocation(line: 70, column: 59, scope: !4709)
!4714 = !DILocation(line: 71, column: 7, scope: !4709)
!4715 = !DILocation(line: 71, column: 10, scope: !4709)
!4716 = !DILocation(line: 70, column: 7, scope: !4659)
!4717 = !DILocation(line: 100, column: 12, scope: !4659)
!4718 = !DILocation(line: 105, column: 7, scope: !4659)
!4719 = !DILocation(line: 72, column: 19, scope: !4709)
!4720 = !DILocation(line: 105, column: 19, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4659, file: !920, line: 105, column: 7)
!4722 = !DILocation(line: 107, column: 13, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4721, file: !920, line: 106, column: 5)
!4724 = !DILocation(line: 109, column: 5, scope: !4723)
!4725 = !DILocation(line: 112, column: 1, scope: !4659)
!4726 = !DISubprogram(name: "fileno", scope: !1060, file: !1060, line: 809, type: !4660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4727 = !DISubprogram(name: "fclose", scope: !1060, file: !1060, line: 178, type: !4660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4728 = !DISubprogram(name: "__freading", scope: !2131, file: !2131, line: 51, type: !4660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4729 = !DISubprogram(name: "lseek", scope: !1664, file: !1664, line: 339, type: !4730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!262, !103, !262, !103}
!4732 = distinct !DISubprogram(name: "rpl_fflush", scope: !922, file: !922, line: 130, type: !4733, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4769)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!103, !4735}
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4737)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4738)
!4738 = !{!4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4737, file: !240, line: 51, baseType: !103, size: 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4737, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4737, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4737, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4737, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4737, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4737, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4737, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4737, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4737, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4737, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4737, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4737, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4737, file: !240, line: 70, baseType: !4753, size: 64, offset: 832)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4737, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4737, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4737, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4737, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4737, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4737, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4737, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4737, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4737, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4737, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4737, file: !240, line: 93, baseType: !4753, size: 64, offset: 1344)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4737, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4737, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4737, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4737, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4769 = !{!4770}
!4770 = !DILocalVariable(name: "stream", arg: 1, scope: !4732, file: !922, line: 130, type: !4735)
!4771 = !DILocation(line: 0, scope: !4732)
!4772 = !DILocation(line: 151, column: 14, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4732, file: !922, line: 151, column: 7)
!4774 = !DILocation(line: 151, column: 22, scope: !4773)
!4775 = !DILocation(line: 151, column: 27, scope: !4773)
!4776 = !DILocation(line: 151, column: 7, scope: !4732)
!4777 = !DILocation(line: 152, column: 12, scope: !4773)
!4778 = !DILocation(line: 152, column: 5, scope: !4773)
!4779 = !DILocalVariable(name: "fp", arg: 1, scope: !4780, file: !922, line: 42, type: !4735)
!4780 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !922, file: !922, line: 42, type: !4781, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{null, !4735}
!4783 = !{!4779}
!4784 = !DILocation(line: 0, scope: !4780, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 157, column: 3, scope: !4732)
!4786 = !DILocation(line: 44, column: 12, scope: !4787, inlinedAt: !4785)
!4787 = distinct !DILexicalBlock(scope: !4780, file: !922, line: 44, column: 7)
!4788 = !DILocation(line: 44, column: 19, scope: !4787, inlinedAt: !4785)
!4789 = !DILocation(line: 44, column: 7, scope: !4780, inlinedAt: !4785)
!4790 = !DILocation(line: 46, column: 5, scope: !4787, inlinedAt: !4785)
!4791 = !DILocation(line: 159, column: 10, scope: !4732)
!4792 = !DILocation(line: 159, column: 3, scope: !4732)
!4793 = !DILocation(line: 236, column: 1, scope: !4732)
!4794 = !DISubprogram(name: "fflush", scope: !1060, file: !1060, line: 230, type: !4733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4795 = distinct !DISubprogram(name: "rpl_fseeko", scope: !924, file: !924, line: 28, type: !4796, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !4833)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!103, !4798, !4832, !103}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !4800)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !4801)
!4801 = !{!4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4800, file: !240, line: 51, baseType: !103, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4800, file: !240, line: 54, baseType: !124, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4800, file: !240, line: 55, baseType: !124, size: 64, offset: 128)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4800, file: !240, line: 56, baseType: !124, size: 64, offset: 192)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4800, file: !240, line: 57, baseType: !124, size: 64, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4800, file: !240, line: 58, baseType: !124, size: 64, offset: 320)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4800, file: !240, line: 59, baseType: !124, size: 64, offset: 384)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4800, file: !240, line: 60, baseType: !124, size: 64, offset: 448)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4800, file: !240, line: 61, baseType: !124, size: 64, offset: 512)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4800, file: !240, line: 64, baseType: !124, size: 64, offset: 576)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4800, file: !240, line: 65, baseType: !124, size: 64, offset: 640)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4800, file: !240, line: 66, baseType: !124, size: 64, offset: 704)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4800, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4800, file: !240, line: 70, baseType: !4816, size: 64, offset: 832)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4800, file: !240, line: 72, baseType: !103, size: 32, offset: 896)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4800, file: !240, line: 73, baseType: !103, size: 32, offset: 928)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4800, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4800, file: !240, line: 77, baseType: !126, size: 16, offset: 1024)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4800, file: !240, line: 78, baseType: !266, size: 8, offset: 1040)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4800, file: !240, line: 79, baseType: !79, size: 8, offset: 1048)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4800, file: !240, line: 81, baseType: !269, size: 64, offset: 1088)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4800, file: !240, line: 89, baseType: !272, size: 64, offset: 1152)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4800, file: !240, line: 91, baseType: !274, size: 64, offset: 1216)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4800, file: !240, line: 92, baseType: !277, size: 64, offset: 1280)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4800, file: !240, line: 93, baseType: !4816, size: 64, offset: 1344)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4800, file: !240, line: 94, baseType: !125, size: 64, offset: 1408)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4800, file: !240, line: 95, baseType: !127, size: 64, offset: 1472)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4800, file: !240, line: 96, baseType: !103, size: 32, offset: 1536)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4800, file: !240, line: 98, baseType: !191, size: 160, offset: 1568)
!4832 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1060, line: 63, baseType: !262)
!4833 = !{!4834, !4835, !4836, !4837}
!4834 = !DILocalVariable(name: "fp", arg: 1, scope: !4795, file: !924, line: 28, type: !4798)
!4835 = !DILocalVariable(name: "offset", arg: 2, scope: !4795, file: !924, line: 28, type: !4832)
!4836 = !DILocalVariable(name: "whence", arg: 3, scope: !4795, file: !924, line: 28, type: !103)
!4837 = !DILocalVariable(name: "pos", scope: !4838, file: !924, line: 123, type: !4832)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !924, line: 119, column: 5)
!4839 = distinct !DILexicalBlock(scope: !4795, file: !924, line: 55, column: 7)
!4840 = !DILocation(line: 0, scope: !4795)
!4841 = !DILocation(line: 55, column: 12, scope: !4839)
!4842 = !{!1365, !996, i64 16}
!4843 = !DILocation(line: 55, column: 33, scope: !4839)
!4844 = !{!1365, !996, i64 8}
!4845 = !DILocation(line: 55, column: 25, scope: !4839)
!4846 = !DILocation(line: 56, column: 7, scope: !4839)
!4847 = !DILocation(line: 56, column: 15, scope: !4839)
!4848 = !DILocation(line: 56, column: 37, scope: !4839)
!4849 = !{!1365, !996, i64 32}
!4850 = !DILocation(line: 56, column: 29, scope: !4839)
!4851 = !DILocation(line: 57, column: 7, scope: !4839)
!4852 = !DILocation(line: 57, column: 15, scope: !4839)
!4853 = !{!1365, !996, i64 72}
!4854 = !DILocation(line: 57, column: 29, scope: !4839)
!4855 = !DILocation(line: 55, column: 7, scope: !4795)
!4856 = !DILocation(line: 123, column: 26, scope: !4838)
!4857 = !DILocation(line: 123, column: 19, scope: !4838)
!4858 = !DILocation(line: 0, scope: !4838)
!4859 = !DILocation(line: 124, column: 15, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4838, file: !924, line: 124, column: 11)
!4861 = !DILocation(line: 124, column: 11, scope: !4838)
!4862 = !DILocation(line: 135, column: 19, scope: !4838)
!4863 = !DILocation(line: 136, column: 12, scope: !4838)
!4864 = !DILocation(line: 136, column: 20, scope: !4838)
!4865 = !{!1365, !1366, i64 144}
!4866 = !DILocation(line: 167, column: 7, scope: !4838)
!4867 = !DILocation(line: 169, column: 10, scope: !4795)
!4868 = !DILocation(line: 169, column: 3, scope: !4795)
!4869 = !DILocation(line: 170, column: 1, scope: !4795)
!4870 = !DISubprogram(name: "fseeko", scope: !1060, file: !1060, line: 736, type: !4871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!103, !4798, !262, !103}
!4873 = distinct !DISubprogram(name: "umaxtostr", scope: !4874, file: !4874, line: 29, type: !4875, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !4877)
!4874 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!124, !133, !124}
!4877 = !{!4878, !4879, !4880}
!4878 = !DILocalVariable(name: "i", arg: 1, scope: !4873, file: !4874, line: 29, type: !133)
!4879 = !DILocalVariable(name: "buf", arg: 2, scope: !4873, file: !4874, line: 29, type: !124)
!4880 = !DILocalVariable(name: "p", scope: !4873, file: !4874, line: 31, type: !124)
!4881 = !DILocation(line: 0, scope: !4873)
!4882 = !DILocation(line: 31, column: 17, scope: !4873)
!4883 = !DILocation(line: 32, column: 6, scope: !4873)
!4884 = !DILocation(line: 45, column: 24, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !4874, line: 43, column: 5)
!4886 = distinct !DILexicalBlock(scope: !4873, file: !4874, line: 34, column: 7)
!4887 = !DILocation(line: 45, column: 16, scope: !4885)
!4888 = !DILocation(line: 45, column: 10, scope: !4885)
!4889 = !DILocation(line: 45, column: 14, scope: !4885)
!4890 = !DILocation(line: 46, column: 17, scope: !4885)
!4891 = !DILocation(line: 46, column: 24, scope: !4885)
!4892 = !DILocation(line: 45, column: 9, scope: !4885)
!4893 = distinct !{!4893, !4894, !4895, !1112}
!4894 = !DILocation(line: 44, column: 7, scope: !4885)
!4895 = !DILocation(line: 46, column: 28, scope: !4885)
!4896 = !DILocation(line: 49, column: 3, scope: !4873)
!4897 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !830, file: !830, line: 100, type: !4898, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4901)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!127, !2211, !130, !127, !4900}
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!4901 = !{!4902, !4903, !4904, !4905, !4906}
!4902 = !DILocalVariable(name: "pwc", arg: 1, scope: !4897, file: !830, line: 100, type: !2211)
!4903 = !DILocalVariable(name: "s", arg: 2, scope: !4897, file: !830, line: 100, type: !130)
!4904 = !DILocalVariable(name: "n", arg: 3, scope: !4897, file: !830, line: 100, type: !127)
!4905 = !DILocalVariable(name: "ps", arg: 4, scope: !4897, file: !830, line: 100, type: !4900)
!4906 = !DILocalVariable(name: "ret", scope: !4897, file: !830, line: 130, type: !127)
!4907 = !DILocation(line: 0, scope: !4897)
!4908 = !DILocation(line: 105, column: 9, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4897, file: !830, line: 105, column: 7)
!4910 = !DILocation(line: 105, column: 7, scope: !4897)
!4911 = !DILocation(line: 117, column: 10, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4897, file: !830, line: 117, column: 7)
!4913 = !DILocation(line: 117, column: 7, scope: !4897)
!4914 = !DILocation(line: 130, column: 16, scope: !4897)
!4915 = !DILocation(line: 135, column: 11, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4897, file: !830, line: 135, column: 7)
!4917 = !DILocation(line: 135, column: 25, scope: !4916)
!4918 = !DILocation(line: 135, column: 30, scope: !4916)
!4919 = !DILocation(line: 135, column: 7, scope: !4897)
!4920 = !DILocalVariable(name: "ps", arg: 1, scope: !4921, file: !2184, line: 1135, type: !4900)
!4921 = distinct !DISubprogram(name: "mbszero", scope: !2184, file: !2184, line: 1135, type: !4922, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4924)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !4900}
!4924 = !{!4920}
!4925 = !DILocation(line: 0, scope: !4921, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 137, column: 5, scope: !4916)
!4927 = !DILocalVariable(name: "__dest", arg: 1, scope: !4928, file: !2193, line: 57, type: !125)
!4928 = distinct !DISubprogram(name: "memset", scope: !2193, file: !2193, line: 57, type: !2194, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4929)
!4929 = !{!4927, !4930, !4931}
!4930 = !DILocalVariable(name: "__ch", arg: 2, scope: !4928, file: !2193, line: 57, type: !103)
!4931 = !DILocalVariable(name: "__len", arg: 3, scope: !4928, file: !2193, line: 57, type: !127)
!4932 = !DILocation(line: 0, scope: !4928, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 1137, column: 3, scope: !4921, inlinedAt: !4926)
!4934 = !DILocation(line: 59, column: 10, scope: !4928, inlinedAt: !4933)
!4935 = !DILocation(line: 137, column: 5, scope: !4916)
!4936 = !DILocation(line: 138, column: 11, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4897, file: !830, line: 138, column: 7)
!4938 = !DILocation(line: 138, column: 7, scope: !4897)
!4939 = !DILocation(line: 139, column: 5, scope: !4937)
!4940 = !DILocation(line: 143, column: 26, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4897, file: !830, line: 143, column: 7)
!4942 = !DILocation(line: 143, column: 41, scope: !4941)
!4943 = !DILocation(line: 143, column: 7, scope: !4897)
!4944 = !DILocation(line: 145, column: 15, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !830, line: 145, column: 11)
!4946 = distinct !DILexicalBlock(scope: !4941, file: !830, line: 144, column: 5)
!4947 = !DILocation(line: 145, column: 11, scope: !4946)
!4948 = !DILocation(line: 146, column: 32, scope: !4945)
!4949 = !DILocation(line: 146, column: 16, scope: !4945)
!4950 = !DILocation(line: 146, column: 14, scope: !4945)
!4951 = !DILocation(line: 146, column: 9, scope: !4945)
!4952 = !DILocation(line: 286, column: 1, scope: !4897)
!4953 = !DISubprogram(name: "mbsinit", scope: !4954, file: !4954, line: 293, type: !4955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!4954 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!103, !4957}
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!4959 = !DILocation(line: 0, scope: !932)
!4960 = !DILocation(line: 77, column: 7, scope: !943)
!4961 = !DILocation(line: 77, column: 7, scope: !932)
!4962 = !DILocation(line: 80, column: 7, scope: !942)
!4963 = !DILocation(line: 0, scope: !942)
!4964 = !DILocation(line: 80, column: 11, scope: !942)
!4965 = !DILocalVariable(name: "g", arg: 1, scope: !4966, file: !929, line: 43, type: !936)
!4966 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !929, file: !929, line: 43, type: !4967, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4969)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!936, !936, !127}
!4969 = !{!4965, !4970}
!4970 = !DILocalVariable(name: "num", arg: 2, scope: !4966, file: !929, line: 43, type: !127)
!4971 = !DILocation(line: 0, scope: !4966, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 82, column: 18, scope: !942)
!4973 = !DILocalVariable(name: "ptr", arg: 1, scope: !4974, file: !4027, line: 2057, type: !125)
!4974 = distinct !DISubprogram(name: "rpl_realloc", scope: !4027, file: !4027, line: 2057, type: !4019, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4975)
!4975 = !{!4973, !4976}
!4976 = !DILocalVariable(name: "size", arg: 2, scope: !4974, file: !4027, line: 2057, type: !127)
!4977 = !DILocation(line: 0, scope: !4974, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 51, column: 10, scope: !4966, inlinedAt: !4972)
!4979 = !DILocation(line: 2059, column: 10, scope: !4974, inlinedAt: !4978)
!4980 = !DILocation(line: 83, column: 13, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !942, file: !929, line: 83, column: 11)
!4982 = !DILocation(line: 83, column: 11, scope: !942)
!4983 = !DILocation(line: 88, column: 31, scope: !946)
!4984 = !DILocation(line: 82, column: 14, scope: !942)
!4985 = !DILocation(line: 0, scope: !946)
!4986 = !DILocation(line: 91, column: 20, scope: !946)
!4987 = !DILocation(line: 95, column: 18, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !946, file: !929, line: 95, column: 15)
!4989 = !DILocation(line: 95, column: 22, scope: !4988)
!4990 = !DILocation(line: 96, column: 26, scope: !4988)
!4991 = !DILocation(line: 96, column: 13, scope: !4988)
!4992 = !DILocation(line: 98, column: 43, scope: !946)
!4993 = !DILocation(line: 0, scope: !4966, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 98, column: 22, scope: !946)
!4995 = !DILocation(line: 45, column: 7, scope: !4996, inlinedAt: !4994)
!4996 = distinct !DILexicalBlock(scope: !4966, file: !929, line: 45, column: 7)
!4997 = !DILocation(line: 45, column: 7, scope: !4966, inlinedAt: !4994)
!4998 = !DILocation(line: 47, column: 7, scope: !4999, inlinedAt: !4994)
!4999 = distinct !DILexicalBlock(scope: !4996, file: !929, line: 46, column: 5)
!5000 = !DILocation(line: 47, column: 13, scope: !4999, inlinedAt: !4994)
!5001 = !DILocation(line: 99, column: 15, scope: !946)
!5002 = !DILocation(line: 51, column: 26, scope: !4966, inlinedAt: !4994)
!5003 = !DILocation(line: 0, scope: !4974, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 51, column: 10, scope: !4966, inlinedAt: !4994)
!5005 = !DILocation(line: 2059, column: 24, scope: !4974, inlinedAt: !5004)
!5006 = !DILocation(line: 2059, column: 10, scope: !4974, inlinedAt: !5004)
!5007 = !DILocation(line: 99, column: 17, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !946, file: !929, line: 99, column: 15)
!5009 = !DILocation(line: 101, column: 15, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5008, file: !929, line: 100, column: 13)
!5011 = !DILocation(line: 102, column: 15, scope: !5010)
!5012 = !DILocation(line: 106, column: 17, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !946, file: !929, line: 106, column: 15)
!5014 = !DILocation(line: 106, column: 15, scope: !946)
!5015 = distinct !{!5015, !5016, !5017}
!5016 = !DILocation(line: 86, column: 7, scope: !942)
!5017 = !DILocation(line: 113, column: 9, scope: !942)
!5018 = !DILocation(line: 108, column: 23, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5013, file: !929, line: 107, column: 13)
!5020 = !DILocation(line: 111, column: 15, scope: !5019)
!5021 = !DILocation(line: 114, column: 5, scope: !943)
!5022 = !DILocation(line: 120, column: 25, scope: !932)
!5023 = !DILocation(line: 125, column: 20, scope: !954)
!5024 = !DILocation(line: 125, column: 7, scope: !932)
!5025 = !DILocation(line: 127, column: 11, scope: !952)
!5026 = !DILocation(line: 127, column: 17, scope: !952)
!5027 = !DILocation(line: 127, column: 11, scope: !953)
!5028 = !DILocation(line: 0, scope: !4966, inlinedAt: !5029)
!5029 = distinct !DILocation(line: 129, column: 22, scope: !951)
!5030 = !DILocation(line: 0, scope: !4974, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 51, column: 10, scope: !4966, inlinedAt: !5029)
!5032 = !DILocation(line: 2059, column: 10, scope: !4974, inlinedAt: !5031)
!5033 = !DILocation(line: 0, scope: !951)
!5034 = !DILocation(line: 130, column: 15, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !951, file: !929, line: 130, column: 15)
!5036 = !DILocation(line: 130, column: 15, scope: !951)
!5037 = !DILocation(line: 132, column: 23, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5035, file: !929, line: 131, column: 13)
!5039 = !DILocation(line: 133, column: 18, scope: !5038)
!5040 = !DILocation(line: 134, column: 26, scope: !5038)
!5041 = !DILocation(line: 140, column: 20, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !932, file: !929, line: 140, column: 7)
!5043 = !DILocation(line: 140, column: 25, scope: !5042)
!5044 = !DILocation(line: 142, column: 38, scope: !932)
!5045 = !DILocation(line: 0, scope: !4966, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 142, column: 14, scope: !932)
!5047 = !DILocation(line: 51, column: 26, scope: !4966, inlinedAt: !5046)
!5048 = !DILocation(line: 0, scope: !4974, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 51, column: 10, scope: !4966, inlinedAt: !5046)
!5050 = !DILocation(line: 2059, column: 10, scope: !4974, inlinedAt: !5049)
!5051 = !DILocation(line: 143, column: 9, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !932, file: !929, line: 143, column: 7)
!5053 = !DILocation(line: 143, column: 7, scope: !932)
!5054 = !DILocation(line: 148, column: 46, scope: !932)
!5055 = !DILocation(line: 148, column: 39, scope: !932)
!5056 = !DILocation(line: 149, column: 39, scope: !932)
!5057 = !DILocation(line: 148, column: 15, scope: !932)
!5058 = !DILocation(line: 151, column: 10, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !932, file: !929, line: 151, column: 7)
!5060 = !DILocation(line: 151, column: 7, scope: !932)
!5061 = !DILocation(line: 154, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5059, file: !929, line: 152, column: 5)
!5063 = !DILocation(line: 155, column: 7, scope: !5062)
!5064 = !DILocation(line: 158, column: 17, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !932, file: !929, line: 158, column: 7)
!5066 = !DILocation(line: 160, column: 10, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5065, file: !929, line: 159, column: 5)
!5068 = !DILocation(line: 161, column: 9, scope: !5067)
!5069 = !DILocation(line: 162, column: 5, scope: !5067)
!5070 = !DILocation(line: 163, column: 11, scope: !932)
!5071 = !DILocation(line: 181, column: 9, scope: !959)
!5072 = !DILocation(line: 181, column: 7, scope: !932)
!5073 = !DILocation(line: 183, column: 21, scope: !958)
!5074 = !DILocation(line: 0, scope: !958)
!5075 = !DILocation(line: 184, column: 29, scope: !958)
!5076 = !DILocation(line: 0, scope: !962)
!5077 = !DILocation(line: 186, scope: !962)
!5078 = !DILocation(line: 186, column: 7, scope: !962)
!5079 = !DILocation(line: 188, column: 15, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !929, line: 188, column: 15)
!5081 = distinct !DILexicalBlock(scope: !5082, file: !929, line: 187, column: 9)
!5082 = distinct !DILexicalBlock(scope: !962, file: !929, line: 186, column: 7)
!5083 = !DILocation(line: 188, column: 21, scope: !5080)
!5084 = !DILocation(line: 188, column: 30, scope: !5080)
!5085 = !DILocation(line: 189, column: 15, scope: !5080)
!5086 = !DILocation(line: 189, column: 13, scope: !5080)
!5087 = !DILocation(line: 191, column: 14, scope: !5080)
!5088 = !DILocation(line: 191, column: 18, scope: !5080)
!5089 = !DILocation(line: 186, column: 38, scope: !5082)
!5090 = distinct !{!5090, !5078, !5091, !1112}
!5091 = !DILocation(line: 192, column: 9, scope: !962)
!5092 = !DILocation(line: 196, column: 1, scope: !932)
!5093 = !DISubprogram(name: "getgrouplist", scope: !1527, file: !1527, line: 186, type: !5094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1049)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!103, !130, !208, !5096, !465}
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!5097 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !967, file: !967, line: 27, type: !3935, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !5098)
!5098 = !{!5099, !5100, !5101, !5102}
!5099 = !DILocalVariable(name: "ptr", arg: 1, scope: !5097, file: !967, line: 27, type: !125)
!5100 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5097, file: !967, line: 27, type: !127)
!5101 = !DILocalVariable(name: "size", arg: 3, scope: !5097, file: !967, line: 27, type: !127)
!5102 = !DILocalVariable(name: "nbytes", scope: !5097, file: !967, line: 29, type: !127)
!5103 = !DILocation(line: 0, scope: !5097)
!5104 = !DILocation(line: 30, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5097, file: !967, line: 30, column: 7)
!5106 = !DILocalVariable(name: "ptr", arg: 1, scope: !5107, file: !4027, line: 2057, type: !125)
!5107 = distinct !DISubprogram(name: "rpl_realloc", scope: !4027, file: !4027, line: 2057, type: !4019, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !5108)
!5108 = !{!5106, !5109}
!5109 = !DILocalVariable(name: "size", arg: 2, scope: !5107, file: !4027, line: 2057, type: !127)
!5110 = !DILocation(line: 0, scope: !5107, inlinedAt: !5111)
!5111 = distinct !DILocation(line: 37, column: 10, scope: !5097)
!5112 = !DILocation(line: 2059, column: 24, scope: !5107, inlinedAt: !5111)
!5113 = !DILocation(line: 2059, column: 10, scope: !5107, inlinedAt: !5111)
!5114 = !DILocation(line: 37, column: 3, scope: !5097)
!5115 = !DILocation(line: 32, column: 7, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5105, file: !967, line: 31, column: 5)
!5117 = !DILocation(line: 32, column: 13, scope: !5116)
!5118 = !DILocation(line: 33, column: 7, scope: !5116)
!5119 = !DILocation(line: 38, column: 1, scope: !5097)
!5120 = distinct !DISubprogram(name: "hard_locale", scope: !848, file: !848, line: 28, type: !5121, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !5123)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!223, !103}
!5123 = !{!5124, !5125}
!5124 = !DILocalVariable(name: "category", arg: 1, scope: !5120, file: !848, line: 28, type: !103)
!5125 = !DILocalVariable(name: "locale", scope: !5120, file: !848, line: 30, type: !5126)
!5126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5127)
!5127 = !{!5128}
!5128 = !DISubrange(count: 257)
!5129 = !DILocation(line: 0, scope: !5120)
!5130 = !DILocation(line: 30, column: 3, scope: !5120)
!5131 = !DILocation(line: 30, column: 8, scope: !5120)
!5132 = !DILocation(line: 32, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5120, file: !848, line: 32, column: 7)
!5134 = !DILocation(line: 32, column: 7, scope: !5120)
!5135 = !DILocalVariable(name: "__s1", arg: 1, scope: !5136, file: !1078, line: 1359, type: !130)
!5136 = distinct !DISubprogram(name: "streq", scope: !1078, file: !1078, line: 1359, type: !1079, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !5137)
!5137 = !{!5135, !5138}
!5138 = !DILocalVariable(name: "__s2", arg: 2, scope: !5136, file: !1078, line: 1359, type: !130)
!5139 = !DILocation(line: 0, scope: !5136, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 35, column: 9, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5120, file: !848, line: 35, column: 7)
!5142 = !DILocation(line: 1361, column: 11, scope: !5136, inlinedAt: !5140)
!5143 = !DILocation(line: 35, column: 29, scope: !5141)
!5144 = !DILocation(line: 0, scope: !5136, inlinedAt: !5145)
!5145 = distinct !DILocation(line: 35, column: 32, scope: !5141)
!5146 = !DILocation(line: 1361, column: 11, scope: !5136, inlinedAt: !5145)
!5147 = !DILocation(line: 1361, column: 10, scope: !5136, inlinedAt: !5145)
!5148 = !DILocation(line: 35, column: 7, scope: !5120)
!5149 = !DILocation(line: 46, column: 3, scope: !5120)
!5150 = !DILocation(line: 47, column: 1, scope: !5120)
!5151 = distinct !DISubprogram(name: "setlocale_null_r", scope: !974, file: !974, line: 154, type: !5152, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5154)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!103, !103, !124, !127}
!5154 = !{!5155, !5156, !5157}
!5155 = !DILocalVariable(name: "category", arg: 1, scope: !5151, file: !974, line: 154, type: !103)
!5156 = !DILocalVariable(name: "buf", arg: 2, scope: !5151, file: !974, line: 154, type: !124)
!5157 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5151, file: !974, line: 154, type: !127)
!5158 = !DILocation(line: 0, scope: !5151)
!5159 = !DILocation(line: 159, column: 10, scope: !5151)
!5160 = !DILocation(line: 159, column: 3, scope: !5151)
!5161 = distinct !DISubprogram(name: "setlocale_null", scope: !974, file: !974, line: 186, type: !5162, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5164)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!130, !103}
!5164 = !{!5165}
!5165 = !DILocalVariable(name: "category", arg: 1, scope: !5161, file: !974, line: 186, type: !103)
!5166 = !DILocation(line: 0, scope: !5161)
!5167 = !DILocation(line: 189, column: 10, scope: !5161)
!5168 = !DILocation(line: 189, column: 3, scope: !5161)
!5169 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !976, file: !976, line: 35, type: !5162, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5170)
!5170 = !{!5171, !5172}
!5171 = !DILocalVariable(name: "category", arg: 1, scope: !5169, file: !976, line: 35, type: !103)
!5172 = !DILocalVariable(name: "result", scope: !5169, file: !976, line: 37, type: !130)
!5173 = !DILocation(line: 0, scope: !5169)
!5174 = !DILocation(line: 37, column: 24, scope: !5169)
!5175 = !DILocation(line: 62, column: 3, scope: !5169)
!5176 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !976, file: !976, line: 66, type: !5152, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5177)
!5177 = !{!5178, !5179, !5180, !5181, !5182}
!5178 = !DILocalVariable(name: "category", arg: 1, scope: !5176, file: !976, line: 66, type: !103)
!5179 = !DILocalVariable(name: "buf", arg: 2, scope: !5176, file: !976, line: 66, type: !124)
!5180 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5176, file: !976, line: 66, type: !127)
!5181 = !DILocalVariable(name: "result", scope: !5176, file: !976, line: 111, type: !130)
!5182 = !DILocalVariable(name: "length", scope: !5183, file: !976, line: 125, type: !127)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !976, line: 124, column: 5)
!5184 = distinct !DILexicalBlock(scope: !5176, file: !976, line: 113, column: 7)
!5185 = !DILocation(line: 0, scope: !5176)
!5186 = !DILocation(line: 0, scope: !5169, inlinedAt: !5187)
!5187 = distinct !DILocation(line: 111, column: 24, scope: !5176)
!5188 = !DILocation(line: 37, column: 24, scope: !5169, inlinedAt: !5187)
!5189 = !DILocation(line: 113, column: 14, scope: !5184)
!5190 = !DILocation(line: 113, column: 7, scope: !5176)
!5191 = !DILocation(line: 116, column: 19, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !976, line: 116, column: 11)
!5193 = distinct !DILexicalBlock(scope: !5184, file: !976, line: 114, column: 5)
!5194 = !DILocation(line: 116, column: 11, scope: !5193)
!5195 = !DILocation(line: 120, column: 16, scope: !5192)
!5196 = !DILocation(line: 120, column: 9, scope: !5192)
!5197 = !DILocation(line: 125, column: 23, scope: !5183)
!5198 = !DILocation(line: 0, scope: !5183)
!5199 = !DILocation(line: 126, column: 18, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5183, file: !976, line: 126, column: 11)
!5201 = !DILocation(line: 126, column: 11, scope: !5183)
!5202 = !DILocation(line: 128, column: 39, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5200, file: !976, line: 127, column: 9)
!5204 = !DILocalVariable(name: "__dest", arg: 1, scope: !5205, file: !2193, line: 26, type: !4296)
!5205 = distinct !DISubprogram(name: "memcpy", scope: !2193, file: !2193, line: 26, type: !4294, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5206)
!5206 = !{!5204, !5207, !5208}
!5207 = !DILocalVariable(name: "__src", arg: 2, scope: !5205, file: !2193, line: 26, type: !1213)
!5208 = !DILocalVariable(name: "__len", arg: 3, scope: !5205, file: !2193, line: 26, type: !127)
!5209 = !DILocation(line: 0, scope: !5205, inlinedAt: !5210)
!5210 = distinct !DILocation(line: 128, column: 11, scope: !5203)
!5211 = !DILocation(line: 29, column: 10, scope: !5205, inlinedAt: !5210)
!5212 = !DILocation(line: 129, column: 11, scope: !5203)
!5213 = !DILocation(line: 133, column: 23, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !976, line: 133, column: 15)
!5215 = distinct !DILexicalBlock(scope: !5200, file: !976, line: 132, column: 9)
!5216 = !DILocation(line: 133, column: 15, scope: !5215)
!5217 = !DILocation(line: 138, column: 44, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !976, line: 134, column: 13)
!5219 = !DILocation(line: 0, scope: !5205, inlinedAt: !5220)
!5220 = distinct !DILocation(line: 138, column: 15, scope: !5218)
!5221 = !DILocation(line: 29, column: 10, scope: !5205, inlinedAt: !5220)
!5222 = !DILocation(line: 139, column: 15, scope: !5218)
!5223 = !DILocation(line: 139, column: 32, scope: !5218)
!5224 = !DILocation(line: 140, column: 13, scope: !5218)
!5225 = !DILocation(line: 0, scope: !5184)
!5226 = !DILocation(line: 145, column: 1, scope: !5176)
