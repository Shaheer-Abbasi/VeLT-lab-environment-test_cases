; ModuleID = 'src/echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"status == 0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"src/echo.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.usage = private unnamed_addr constant [16 x i8] c"void usage(int)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [41 x i8] c"Echo the STRING(s) to standard output.\0A\0A\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [45 x i8] c"  -n     do not output the trailing newline\0A\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [53 x i8] c"  -e     enable interpretation of backslash escapes\0A\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [64 x i8] c"  -E     disable interpretation of backslash escapes (default)\0A\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !48
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !53
@.str.10 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1, !dbg !58
@.str.11 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1, !dbg !60
@.str.12 = private unnamed_addr constant [110 x i8] c"  \\0NNN   byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1, !dbg !65
@.str.13 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !70
@.str.14 = private unnamed_addr constant [107 x i8] c"\0AConsider using the printf(1) command instead,\0Aas it avoids problems when outputting option-like strings.\0A\00", align 1, !dbg !75
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !80
@.str.16 = private unnamed_addr constant [3 x i8] c"-n\00", align 1, !dbg !83
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !88
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !93
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !98
@.str.20 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !103
@.str.21 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !108
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !110
@.str.23 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1, !dbg !115
@.str.24 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1, !dbg !117
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !119
@.str.25 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !157
@.str.26 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !159
@.str.27 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !161
@.str.28 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !166
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !203
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !208
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !213
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !218
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !223
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !225
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !227
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !229
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !240
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !242
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !247
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !252
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !257
@.str.29 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !337
@Version = dso_local local_unnamed_addr global ptr @.str.29, align 8, !dbg !340
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !344
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !357
@.str.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !349
@.str.1.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !351
@.str.2.34 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !353
@.str.3.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !355
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !359
@stderr = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !365
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !396
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !367
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !386
@.str.1.42 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !388
@.str.2.44 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !390
@.str.3.43 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !392
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !394
@.str.4.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !398
@.str.5.38 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !400
@.str.6.39 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !405
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !410
@.str.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !416
@.str.1.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !418
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !420
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !451
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !454
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !456
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !461
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !463
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !465
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !467
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !469
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !471
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !473
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 16, !dbg !475
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !500
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !514
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !552
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !559
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !516
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !561
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !504
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !521
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !523
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !525
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !527
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !529
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !565
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !568
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !570
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !572
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !574
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !576
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !581
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !586
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !588
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !593
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !598
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !603
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !608
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !610
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !615
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !620
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !625
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !630
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !632
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !634
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !636
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !638
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !640
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !645
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !650
@exit_failure = dso_local global i32 1, align 4, !dbg !658
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !664
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !667
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !669
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !671
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !674
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !689

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !764 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !768, metadata !DIExpression()), !dbg !769
  %2 = icmp eq i32 %0, 0, !dbg !770
  br i1 %2, label %4, label %3, !dbg !773

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__PRETTY_FUNCTION__.usage) #37, !dbg !770
  unreachable, !dbg !770

4:                                                ; preds = %1
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !774
  %6 = load ptr, ptr @program_name, align 8, !dbg !774, !tbaa !775
  %7 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef %6, ptr noundef %6) #38, !dbg !774
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #38, !dbg !779
  %9 = load ptr, ptr @stdout, align 8, !dbg !779, !tbaa !775
  %10 = tail call i32 @fputs_unlocked(ptr noundef %8, ptr noundef %9), !dbg !779
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !780
  tail call fastcc void @oputs_(ptr noundef %11), !dbg !780
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !781
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !781
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !782
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !782
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !783
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !783
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !784
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !784
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !785
  %17 = load ptr, ptr @stdout, align 8, !dbg !785, !tbaa !775
  %18 = tail call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !785
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #38, !dbg !786
  %20 = load ptr, ptr @stdout, align 8, !dbg !786, !tbaa !775
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !786
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #38, !dbg !787
  %23 = load ptr, ptr @stdout, align 8, !dbg !787, !tbaa !775
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !787
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !788
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.4) #38, !dbg !788
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !789
  %28 = load ptr, ptr @stdout, align 8, !dbg !789, !tbaa !775
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !789
  tail call fastcc void @emit_ancillary_info(), !dbg !790
  tail call void @exit(i32 noundef 0) #37, !dbg !791
  unreachable, !dbg !791
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare !dbg !792 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !796 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !800 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !805 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #6 !dbg !121 {
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !260, metadata !DIExpression()), !dbg !810
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !261, metadata !DIExpression()), !dbg !810
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !811, !tbaa !812
  %3 = icmp eq i32 %2, -1, !dbg !814
  br i1 %3, label %4, label %16, !dbg !815

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #38, !dbg !816
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !262, metadata !DIExpression()), !dbg !817
  %6 = icmp eq ptr %5, null, !dbg !818
  br i1 %6, label %14, label %7, !dbg !819

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !820, !tbaa !821
  %9 = icmp eq i8 %8, 0, !dbg !820
  br i1 %9, label %14, label %10, !dbg !822

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !823, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !829, metadata !DIExpression()), !dbg !830
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.26) #39, !dbg !832
  %12 = icmp eq i32 %11, 0, !dbg !833
  %13 = zext i1 %12 to i32, !dbg !822
  br label %14, !dbg !822

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !834, !tbaa !812
  br label %16, !dbg !835

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !836
  %18 = icmp eq i32 %17, 0, !dbg !836
  br i1 %18, label %22, label %19, !dbg !838

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !839, !tbaa !775
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !839
  br label %124, !dbg !841

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !265, metadata !DIExpression()), !dbg !810
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.27) #39, !dbg !842
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !843
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !267, metadata !DIExpression()), !dbg !810
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !844
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !268, metadata !DIExpression()), !dbg !810
  %26 = icmp eq ptr %25, null, !dbg !845
  br i1 %26, label %54, label %27, !dbg !846

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !847
  br i1 %28, label %54, label %29, !dbg !848

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !269, metadata !DIExpression()), !dbg !849
  tail call void @llvm.dbg.value(metadata i64 0, metadata !273, metadata !DIExpression()), !dbg !849
  %30 = icmp ult ptr %24, %25, !dbg !850
  br i1 %30, label %31, label %54, !dbg !851

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !810
  %33 = load ptr, ptr %32, align 8, !tbaa !775
  br label %34, !dbg !851

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !269, metadata !DIExpression()), !dbg !849
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !273, metadata !DIExpression()), !dbg !849
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !852
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !269, metadata !DIExpression()), !dbg !849
  %38 = load i8, ptr %35, align 1, !dbg !852, !tbaa !821
  %39 = sext i8 %38 to i64, !dbg !852
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !852
  %41 = load i16, ptr %40, align 2, !dbg !852, !tbaa !853
  %42 = freeze i16 %41, !dbg !855
  %43 = lshr i16 %42, 13, !dbg !855
  %44 = and i16 %43, 1, !dbg !855
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !856
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !273, metadata !DIExpression()), !dbg !849
  %47 = icmp ult ptr %37, %25, !dbg !850
  %48 = icmp ult i64 %46, 2, !dbg !857
  %49 = select i1 %47, i1 %48, i1 false, !dbg !857
  br i1 %49, label %34, label %50, !dbg !851, !llvm.loop !858

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !860
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !862
  %53 = zext i1 %51 to i8, !dbg !862
  br label %54, !dbg !862

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !810
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !810
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !265, metadata !DIExpression()), !dbg !810
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !268, metadata !DIExpression()), !dbg !810
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.28) #39, !dbg !863
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !274, metadata !DIExpression()), !dbg !810
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !864
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !275, metadata !DIExpression()), !dbg !810
  br label %59, !dbg !865

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !810
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !810
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !265, metadata !DIExpression()), !dbg !810
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !275, metadata !DIExpression()), !dbg !810
  %62 = load i8, ptr %60, align 1, !dbg !866, !tbaa !821
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !867

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !868
  %65 = load i8, ptr %64, align 1, !dbg !871, !tbaa !821
  %66 = icmp eq i8 %65, 45, !dbg !872
  %67 = select i1 %66, i8 0, i8 %61, !dbg !873
  br label %68, !dbg !873

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !810
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !265, metadata !DIExpression()), !dbg !810
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !874
  %71 = load ptr, ptr %70, align 8, !dbg !874, !tbaa !775
  %72 = sext i8 %62 to i64, !dbg !874
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !874
  %74 = load i16, ptr %73, align 2, !dbg !874, !tbaa !853
  %75 = and i16 %74, 8192, !dbg !874
  %76 = icmp eq i16 %75, 0, !dbg !874
  br i1 %76, label %92, label %77, !dbg !876

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !877
  br i1 %78, label %94, label %79, !dbg !880

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !881
  %81 = load i8, ptr %80, align 1, !dbg !881, !tbaa !821
  %82 = sext i8 %81 to i64, !dbg !881
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !881
  %84 = load i16, ptr %83, align 2, !dbg !881, !tbaa !853
  %85 = and i16 %84, 8192, !dbg !881
  %86 = icmp eq i16 %85, 0, !dbg !881
  br i1 %86, label %87, label %94, !dbg !882

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !883
  %89 = icmp ne i8 %88, 0, !dbg !883
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !885
  br i1 %91, label %92, label %94, !dbg !885

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !886
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !275, metadata !DIExpression()), !dbg !810
  br label %59, !dbg !865, !llvm.loop !887

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !889
  %96 = load ptr, ptr @stdout, align 8, !dbg !889, !tbaa !775
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !889
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !823, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !892, metadata !829, metadata !DIExpression()), !dbg !909
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !332, metadata !DIExpression()), !dbg !810
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #39, !dbg !911
  %99 = icmp eq i32 %98, 0, !dbg !911
  br i1 %99, label %103, label %100, !dbg !913

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.21, i64 noundef 9) #39, !dbg !914
  %102 = icmp eq i32 %101, 0, !dbg !914
  br i1 %102, label %103, label %106, !dbg !915

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !916
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %104, ptr noundef %55) #38, !dbg !916
  br label %109, !dbg !918

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !919
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, i32 noundef %107, ptr noundef %55) #38, !dbg !919
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !921, !tbaa !775
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %110), !dbg !921
  %112 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !775
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %112), !dbg !922
  %114 = ptrtoint ptr %60 to i64, !dbg !923
  %115 = sub i64 %114, %95, !dbg !923
  %116 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !775
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !923
  %118 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !775
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %118), !dbg !924
  %120 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !775
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %120), !dbg !925
  %122 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !775
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !926
  br label %124, !dbg !927

124:                                              ; preds = %109, %19
  ret void, !dbg !927
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #6 !dbg !928 {
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !932, metadata !DIExpression()), !dbg !945
  tail call void @llvm.dbg.value(metadata !892, metadata !941, metadata !DIExpression()), !dbg !945
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !940, metadata !DIExpression()), !dbg !945
  tail call void @emit_bug_reporting_address() #38, !dbg !946
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !945
  %2 = icmp eq ptr %1, null, !dbg !948
  br i1 %2, label %10, label %3, !dbg !950

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #39, !dbg !951
  %5 = icmp eq i32 %4, 0, !dbg !951
  br i1 %5, label %10, label %6, !dbg !952

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !953
  %8 = load ptr, ptr @stdout, align 8, !dbg !953, !tbaa !775
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !953
  br label %10, !dbg !955

10:                                               ; preds = %6, %3, %0
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !940, metadata !DIExpression()), !dbg !945
  tail call void @llvm.dbg.value(metadata ptr @.str.4, metadata !944, metadata !DIExpression()), !dbg !945
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !956
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4) #38, !dbg !956
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #38, !dbg !957
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57) #38, !dbg !957
  ret void, !dbg !958
}

; Function Attrs: noreturn nounwind
declare !dbg !959 void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !961 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !965 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !969 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !972 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !975 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !978 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !981 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !987 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !988 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !994 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1000, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1001, metadata !DIExpression()), !dbg !1022
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #38, !dbg !1023
  %4 = icmp ne ptr %3, null, !dbg !1024
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !1002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1022
  br i1 %4, label %5, label %12, !dbg !1025

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !1026
  br i1 %6, label %7, label %12, !dbg !1027

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1028
  %9 = load ptr, ptr %8, align 8, !dbg !1028, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %9, metadata !823, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !829, metadata !DIExpression()), !dbg !1029
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.16) #39, !dbg !1031
  %11 = icmp eq i32 %10, 0, !dbg !1032
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !1003, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1004, metadata !DIExpression()), !dbg !1022
  %14 = load ptr, ptr %1, align 8, !dbg !1033, !tbaa !775
  tail call void @set_program_name(ptr noundef %14) #38, !dbg !1034
  %15 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #38, !dbg !1035
  %16 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #38, !dbg !1036
  %17 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #38, !dbg !1037
  %18 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1038
  %19 = icmp eq i32 %0, 2
  %20 = and i1 %19, %13, !dbg !1039
  br i1 %20, label %21, label %35, !dbg !1039

21:                                               ; preds = %12
  %22 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1041
  %23 = load ptr, ptr %22, align 8, !dbg !1041, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %23, metadata !823, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !829, metadata !DIExpression()), !dbg !1044
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(7) @.str.20) #39, !dbg !1046
  %25 = icmp eq i32 %24, 0, !dbg !1047
  br i1 %25, label %26, label %27, !dbg !1048

26:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #41, !dbg !1049
  unreachable, !dbg !1049

27:                                               ; preds = %21
  call void @llvm.dbg.value(metadata ptr %23, metadata !823, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !829, metadata !DIExpression()), !dbg !1050
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(10) @.str.21) #39, !dbg !1053
  %29 = icmp eq i32 %28, 0, !dbg !1054
  br i1 %29, label %30, label %35, !dbg !1055

30:                                               ; preds = %27
  %31 = load ptr, ptr @stdout, align 8, !dbg !1056, !tbaa !775
  %32 = load ptr, ptr @Version, align 8, !dbg !1058, !tbaa !775
  %33 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.23) #38, !dbg !1059
  %34 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #38, !dbg !1059
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef null) #38, !dbg !1060
  br label %250, !dbg !1061

35:                                               ; preds = %27, %12
  %36 = add nsw i32 %0, -1, !dbg !1062
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !999, metadata !DIExpression()), !dbg !1022
  %37 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1000, metadata !DIExpression()), !dbg !1022
  %38 = icmp sgt i32 %0, 1
  %39 = and i1 %38, %13, !dbg !1064
  br i1 %39, label %46, label %81, !dbg !1064

40:                                               ; preds = %76, %64
  %41 = phi i8 [ %48, %64 ], [ %77, %76 ], !dbg !1065
  %42 = phi i8 [ %50, %64 ], [ %78, %76 ], !dbg !1066
  %43 = add nsw i32 %49, -1, !dbg !1067
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !999, metadata !DIExpression()), !dbg !1022
  %44 = getelementptr inbounds ptr, ptr %47, i64 1, !dbg !1068
  tail call void @llvm.dbg.value(metadata i8 %42, metadata !1004, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 %41, metadata !1001, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1000, metadata !DIExpression()), !dbg !1022
  %45 = icmp sgt i32 %49, 1, !dbg !1069
  br i1 %45, label %46, label %235, !dbg !1070

46:                                               ; preds = %35, %40
  %47 = phi ptr [ %44, %40 ], [ %37, %35 ], !dbg !1063
  %48 = phi i8 [ %41, %40 ], [ 1, %35 ], !dbg !1065
  %49 = phi i32 [ %43, %40 ], [ %36, %35 ], !dbg !1062
  %50 = phi i8 [ %42, %40 ], [ 0, %35 ], !dbg !1066
  tail call void @llvm.dbg.value(metadata i8 %50, metadata !1004, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 %48, metadata !1001, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %47, metadata !1000, metadata !DIExpression()), !dbg !1022
  %51 = load ptr, ptr %47, align 8, !dbg !1071, !tbaa !775
  %52 = load i8, ptr %51, align 1, !dbg !1072, !tbaa !821
  %53 = icmp eq i8 %52, 45, !dbg !1073
  br i1 %53, label %54, label %81, !dbg !1074

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1075
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !1005, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1008, metadata !DIExpression()), !dbg !1076
  br label %56, !dbg !1077

56:                                               ; preds = %60, %54
  %57 = phi i64 [ 0, %54 ], [ %61, %60 ], !dbg !1079
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !1008, metadata !DIExpression()), !dbg !1076
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1080
  %59 = load i8, ptr %58, align 1, !dbg !1080, !tbaa !821
  switch i8 %59, label %81 [
    i8 0, label %62
    i8 101, label %60
    i8 69, label %60
    i8 110, label %60
  ], !dbg !1082

60:                                               ; preds = %56, %56, %56
  %61 = add i64 %57, 1, !dbg !1083
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !1008, metadata !DIExpression()), !dbg !1076
  br label %56, !dbg !1084, !llvm.loop !1085

62:                                               ; preds = %56
  %63 = icmp eq i64 %57, 0, !dbg !1087
  br i1 %63, label %81, label %64, !dbg !1089

64:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !1005, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 %50, metadata !1004, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 %48, metadata !1001, metadata !DIExpression()), !dbg !1022
  %65 = load i8, ptr %55, align 1, !dbg !1090, !tbaa !821
  %66 = icmp eq i8 %65, 0, !dbg !1091
  br i1 %66, label %40, label %67, !dbg !1091

67:                                               ; preds = %64, %76
  %68 = phi i8 [ %79, %76 ], [ %65, %64 ]
  %69 = phi ptr [ %72, %76 ], [ %55, %64 ]
  %70 = phi i8 [ %78, %76 ], [ %50, %64 ]
  %71 = phi i8 [ %77, %76 ], [ %48, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !1005, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 %70, metadata !1004, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 %71, metadata !1001, metadata !DIExpression()), !dbg !1022
  %72 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1092
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1005, metadata !DIExpression()), !dbg !1076
  switch i8 %68, label %76 [
    i8 101, label %73
    i8 69, label %74
    i8 110, label %75
  ], !dbg !1093

73:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1004, metadata !DIExpression()), !dbg !1022
  br label %76, !dbg !1094

74:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1004, metadata !DIExpression()), !dbg !1022
  br label %76, !dbg !1096

75:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1001, metadata !DIExpression()), !dbg !1022
  br label %76, !dbg !1097

76:                                               ; preds = %67, %75, %74, %73
  %77 = phi i8 [ %71, %67 ], [ 0, %75 ], [ %71, %74 ], [ %71, %73 ], !dbg !1022
  %78 = phi i8 [ %70, %67 ], [ %70, %75 ], [ 0, %74 ], [ 1, %73 ], !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1005, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 %78, metadata !1004, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 %77, metadata !1001, metadata !DIExpression()), !dbg !1022
  %79 = load i8, ptr %72, align 1, !dbg !1090, !tbaa !821
  %80 = icmp eq i8 %79, 0, !dbg !1091
  br i1 %80, label %40, label %67, !dbg !1091, !llvm.loop !1098

81:                                               ; preds = %62, %46, %56, %35
  %82 = phi ptr [ %37, %35 ], [ %47, %56 ], [ %47, %46 ], [ %47, %62 ], !dbg !1063
  %83 = phi i8 [ 1, %35 ], [ %48, %56 ], [ %48, %46 ], [ %48, %62 ], !dbg !1065
  %84 = phi i32 [ %36, %35 ], [ %49, %56 ], [ %49, %46 ], [ %49, %62 ], !dbg !1062
  %85 = phi i8 [ 0, %35 ], [ %50, %56 ], [ %50, %46 ], [ %50, %62 ], !dbg !1066
  tail call void @llvm.dbg.value(metadata i8 %85, metadata !1004, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8 %83, metadata !1001, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1000, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.label(metadata !1009), !dbg !1100
  %86 = and i8 %85, 1, !dbg !1101
  %87 = icmp ne i8 %86, 0, !dbg !1101
  %88 = or i1 %4, %87, !dbg !1102
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1000, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1000, metadata !DIExpression()), !dbg !1022
  %89 = icmp sgt i32 %84, 0, !dbg !1103
  br i1 %88, label %96, label %90, !dbg !1102

90:                                               ; preds = %81
  br i1 %89, label %91, label %235, !dbg !1104

91:                                               ; preds = %90
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1000, metadata !DIExpression()), !dbg !1022
  %92 = load ptr, ptr %82, align 8, !dbg !1106, !tbaa !775
  %93 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !775
  %94 = tail call i32 @fputs_unlocked(ptr noundef %92, ptr noundef %93), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !999, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !1000, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1022
  %95 = icmp eq i32 %84, 1, !dbg !1108
  br i1 %95, label %235, label %215, !dbg !1110

96:                                               ; preds = %81
  br i1 %89, label %97, label %235, !dbg !1111

97:                                               ; preds = %96, %213
  %98 = phi i32 [ %199, %213 ], [ %84, %96 ]
  %99 = phi ptr [ %200, %213 ], [ %82, %96 ]
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !1000, metadata !DIExpression()), !dbg !1022
  %100 = load ptr, ptr %99, align 8, !dbg !1112, !tbaa !775
  tail call void @llvm.dbg.value(metadata ptr %100, metadata !1010, metadata !DIExpression()), !dbg !1113
  br label %101, !dbg !1114

101:                                              ; preds = %195, %97
  %102 = phi ptr [ %100, %97 ], [ %184, %195 ], !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %102, metadata !1010, metadata !DIExpression()), !dbg !1113
  %103 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1115
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1010, metadata !DIExpression()), !dbg !1113
  %104 = load i8, ptr %102, align 1, !dbg !1116, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8 %104, metadata !1014, metadata !DIExpression()), !dbg !1113
  switch i8 %104, label %183 [
    i8 0, label %198
    i8 92, label %105
  ], !dbg !1114

105:                                              ; preds = %101
  %106 = load i8, ptr %103, align 1, !dbg !1117, !tbaa !821
  %107 = icmp eq i8 %106, 0, !dbg !1117
  br i1 %107, label %183, label %108, !dbg !1118

108:                                              ; preds = %105
  %109 = getelementptr inbounds i8, ptr %102, i64 2, !dbg !1119
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !1010, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1014, metadata !DIExpression()), !dbg !1113
  switch i8 %106, label %172 [
    i8 97, label %110
    i8 98, label %111
    i8 99, label %250
    i8 101, label %112
    i8 102, label %113
    i8 110, label %114
    i8 114, label %115
    i8 116, label %116
    i8 118, label %117
    i8 120, label %118
    i8 48, label %145
    i8 49, label %151
    i8 50, label %151
    i8 51, label %151
    i8 52, label %151
    i8 53, label %151
    i8 54, label %151
    i8 55, label %151
    i8 92, label %183
  ], !dbg !1120

110:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 7, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1121

111:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 8, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1122

112:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 27, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1123

113:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 12, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1124

114:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 10, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1125

115:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 13, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1126

116:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 9, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1127

117:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 11, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1128

118:                                              ; preds = %108
  %119 = load i8, ptr %109, align 1, !dbg !1129, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8 %119, metadata !1015, metadata !DIExpression()), !dbg !1130
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !1131, metadata !DIExpression()), !dbg !1137
  switch i8 %119, label %172 [
    i8 48, label %120
    i8 49, label %120
    i8 50, label %120
    i8 51, label %120
    i8 52, label %120
    i8 53, label %120
    i8 54, label %120
    i8 55, label %120
    i8 56, label %120
    i8 57, label %120
    i8 97, label %120
    i8 98, label %120
    i8 99, label %120
    i8 100, label %120
    i8 101, label %120
    i8 102, label %120
    i8 65, label %120
    i8 66, label %120
    i8 67, label %120
    i8 68, label %120
    i8 69, label %120
    i8 70, label %120
  ], !dbg !1140

120:                                              ; preds = %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118, %118
  %121 = getelementptr inbounds i8, ptr %102, i64 3, !dbg !1141
  tail call void @llvm.dbg.value(metadata ptr %121, metadata !1010, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %119, metadata !1142, metadata !DIExpression()), !dbg !1147
  switch i8 %119, label %122 [
    i8 97, label %129
    i8 65, label %129
    i8 98, label %124
    i8 66, label %124
    i8 99, label %125
    i8 67, label %125
    i8 100, label %126
    i8 68, label %126
    i8 101, label %127
    i8 69, label %127
    i8 102, label %128
    i8 70, label %128
  ], !dbg !1149

122:                                              ; preds = %120
  %123 = add nsw i8 %119, -48, !dbg !1150
  br label %129, !dbg !1152

124:                                              ; preds = %120, %120
  br label %129, !dbg !1153

125:                                              ; preds = %120, %120
  br label %129, !dbg !1154

126:                                              ; preds = %120, %120
  br label %129, !dbg !1155

127:                                              ; preds = %120, %120
  br label %129, !dbg !1156

128:                                              ; preds = %120, %120
  br label %129, !dbg !1157

129:                                              ; preds = %120, %120, %122, %124, %125, %126, %127, %128
  %130 = phi i8 [ %123, %122 ], [ 15, %128 ], [ 14, %127 ], [ 13, %126 ], [ 12, %125 ], [ 11, %124 ], [ 10, %120 ], [ 10, %120 ], !dbg !1158
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1014, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1113
  %131 = load i8, ptr %121, align 1, !dbg !1159, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8 %131, metadata !1015, metadata !DIExpression()), !dbg !1130
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !1131, metadata !DIExpression()), !dbg !1160
  switch i8 %131, label %183 [
    i8 48, label %132
    i8 49, label %132
    i8 50, label %132
    i8 51, label %132
    i8 52, label %132
    i8 53, label %132
    i8 54, label %132
    i8 55, label %132
    i8 56, label %132
    i8 57, label %132
    i8 97, label %132
    i8 98, label %132
    i8 99, label %132
    i8 100, label %132
    i8 101, label %132
    i8 102, label %132
    i8 65, label %132
    i8 66, label %132
    i8 67, label %132
    i8 68, label %132
    i8 69, label %132
    i8 70, label %132
  ], !dbg !1163

132:                                              ; preds = %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129, %129
  %133 = getelementptr inbounds i8, ptr %102, i64 4, !dbg !1164
  tail call void @llvm.dbg.value(metadata ptr %133, metadata !1010, metadata !DIExpression()), !dbg !1113
  %134 = shl i8 %130, 4, !dbg !1166
  tail call void @llvm.dbg.value(metadata i8 %131, metadata !1142, metadata !DIExpression()), !dbg !1167
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
  ], !dbg !1169

135:                                              ; preds = %132
  %136 = add nsw i8 %131, -48, !dbg !1170
  br label %142, !dbg !1171

137:                                              ; preds = %132, %132
  br label %142, !dbg !1172

138:                                              ; preds = %132, %132
  br label %142, !dbg !1173

139:                                              ; preds = %132, %132
  br label %142, !dbg !1174

140:                                              ; preds = %132, %132
  br label %142, !dbg !1175

141:                                              ; preds = %132, %132
  br label %142, !dbg !1176

142:                                              ; preds = %132, %132, %135, %137, %138, %139, %140, %141
  %143 = phi i8 [ %136, %135 ], [ 15, %141 ], [ 14, %140 ], [ 13, %139 ], [ 12, %138 ], [ 11, %137 ], [ 10, %132 ], [ 10, %132 ], !dbg !1177
  %144 = add i8 %143, %134, !dbg !1178
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !1014, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1113
  br label %183, !dbg !1179

145:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1014, metadata !DIExpression()), !dbg !1113
  %146 = load i8, ptr %109, align 1, !dbg !1180, !tbaa !821
  %147 = and i8 %146, -8, !dbg !1182
  %148 = icmp eq i8 %147, 48, !dbg !1182
  br i1 %148, label %149, label %183, !dbg !1182

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, ptr %102, i64 3, !dbg !1183
  tail call void @llvm.dbg.value(metadata ptr %150, metadata !1010, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %146, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %151, !dbg !1184

151:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %149
  %152 = phi ptr [ %109, %108 ], [ %109, %108 ], [ %109, %108 ], [ %109, %108 ], [ %109, %108 ], [ %109, %108 ], [ %109, %108 ], [ %150, %149 ], !dbg !1185
  %153 = phi i8 [ %106, %108 ], [ %106, %108 ], [ %106, %108 ], [ %106, %108 ], [ %106, %108 ], [ %106, %108 ], [ %106, %108 ], [ %146, %149 ], !dbg !1185
  tail call void @llvm.dbg.value(metadata i8 %153, metadata !1014, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %152, metadata !1010, metadata !DIExpression()), !dbg !1113
  %154 = add nsw i8 %153, -48, !dbg !1186
  tail call void @llvm.dbg.value(metadata i8 %154, metadata !1014, metadata !DIExpression()), !dbg !1113
  %155 = load i8, ptr %152, align 1, !dbg !1187, !tbaa !821
  %156 = and i8 %155, -8, !dbg !1189
  %157 = icmp eq i8 %156, 48, !dbg !1189
  %158 = shl nuw nsw i8 %154, 3, !dbg !1189
  %159 = add nsw i8 %155, -48, !dbg !1189
  %160 = add i8 %159, %158, !dbg !1189
  %161 = zext i1 %157 to i64, !dbg !1189
  %162 = getelementptr inbounds i8, ptr %152, i64 %161, !dbg !1189
  %163 = select i1 %157, i8 %160, i8 %154, !dbg !1189
  tail call void @llvm.dbg.value(metadata i8 %163, metadata !1014, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %162, metadata !1010, metadata !DIExpression()), !dbg !1113
  %164 = load i8, ptr %162, align 1, !dbg !1190, !tbaa !821
  %165 = and i8 %164, -8, !dbg !1192
  %166 = icmp eq i8 %165, 48, !dbg !1192
  br i1 %166, label %167, label %183, !dbg !1192

167:                                              ; preds = %151
  %168 = shl i8 %163, 3, !dbg !1193
  %169 = getelementptr inbounds i8, ptr %162, i64 1, !dbg !1194
  tail call void @llvm.dbg.value(metadata ptr %169, metadata !1010, metadata !DIExpression()), !dbg !1113
  %170 = add nsw i8 %164, -48, !dbg !1195
  %171 = or disjoint i8 %168, %170, !dbg !1196
  tail call void @llvm.dbg.value(metadata i8 %171, metadata !1014, metadata !DIExpression()), !dbg !1113
  br label %183, !dbg !1197

172:                                              ; preds = %118, %108
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1014, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !1010, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 92, metadata !1198, metadata !DIExpression()), !dbg !1204
  %173 = load ptr, ptr @stdout, align 8, !dbg !1206, !tbaa !775
  %174 = getelementptr inbounds %struct._IO_FILE, ptr %173, i64 0, i32 5, !dbg !1206
  %175 = load ptr, ptr %174, align 8, !dbg !1206, !tbaa !1207
  %176 = getelementptr inbounds %struct._IO_FILE, ptr %173, i64 0, i32 6, !dbg !1206
  %177 = load ptr, ptr %176, align 8, !dbg !1206, !tbaa !1210
  %178 = icmp ult ptr %175, %177, !dbg !1206
  br i1 %178, label %181, label %179, !dbg !1206, !prof !1211

179:                                              ; preds = %172
  %180 = tail call i32 @__overflow(ptr noundef nonnull %173, i32 noundef 92) #38, !dbg !1206
  br label %183, !dbg !1206

181:                                              ; preds = %172
  %182 = getelementptr inbounds i8, ptr %175, i64 1, !dbg !1206
  store ptr %182, ptr %174, align 8, !dbg !1206, !tbaa !1207
  store i8 92, ptr %175, align 1, !dbg !1206, !tbaa !821
  br label %183, !dbg !1206

183:                                              ; preds = %129, %142, %181, %179, %101, %110, %111, %112, %113, %114, %115, %116, %117, %108, %145, %167, %151, %105
  %184 = phi ptr [ %109, %108 ], [ %169, %167 ], [ %162, %151 ], [ %109, %145 ], [ %109, %117 ], [ %109, %116 ], [ %109, %115 ], [ %109, %114 ], [ %109, %113 ], [ %109, %112 ], [ %109, %111 ], [ %109, %110 ], [ %103, %105 ], [ %103, %101 ], [ %109, %179 ], [ %109, %181 ], [ %133, %142 ], [ %121, %129 ], !dbg !1113
  %185 = phi i8 [ %106, %108 ], [ %171, %167 ], [ %163, %151 ], [ 0, %145 ], [ 11, %117 ], [ 9, %116 ], [ 13, %115 ], [ 10, %114 ], [ 12, %113 ], [ 27, %112 ], [ 8, %111 ], [ 7, %110 ], [ 92, %105 ], [ %104, %101 ], [ %106, %179 ], [ %106, %181 ], [ %144, %142 ], [ %130, %129 ], !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %185, metadata !1014, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %184, metadata !1010, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %185, metadata !1198, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1212
  %186 = load ptr, ptr @stdout, align 8, !dbg !1214, !tbaa !775
  %187 = getelementptr inbounds %struct._IO_FILE, ptr %186, i64 0, i32 5, !dbg !1214
  %188 = load ptr, ptr %187, align 8, !dbg !1214, !tbaa !1207
  %189 = getelementptr inbounds %struct._IO_FILE, ptr %186, i64 0, i32 6, !dbg !1214
  %190 = load ptr, ptr %189, align 8, !dbg !1214, !tbaa !1210
  %191 = icmp ult ptr %188, %190, !dbg !1214
  br i1 %191, label %196, label %192, !dbg !1214, !prof !1211

192:                                              ; preds = %183
  %193 = zext i8 %185 to i32, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %193, metadata !1198, metadata !DIExpression()), !dbg !1212
  %194 = tail call i32 @__overflow(ptr noundef nonnull %186, i32 noundef %193) #38, !dbg !1214
  br label %195, !dbg !1214

195:                                              ; preds = %192, %196
  br label %101, !dbg !1113, !llvm.loop !1216

196:                                              ; preds = %183
  %197 = getelementptr inbounds i8, ptr %188, i64 1, !dbg !1214
  store ptr %197, ptr %187, align 8, !dbg !1214, !tbaa !1207
  store i8 %185, ptr %188, align 1, !dbg !1214, !tbaa !821
  br label %195, !dbg !1214

198:                                              ; preds = %101
  %199 = add nsw i32 %98, -1, !dbg !1218
  tail call void @llvm.dbg.value(metadata i32 %199, metadata !999, metadata !DIExpression()), !dbg !1022
  %200 = getelementptr inbounds ptr, ptr %99, i64 1, !dbg !1219
  tail call void @llvm.dbg.value(metadata ptr %200, metadata !1000, metadata !DIExpression()), !dbg !1022
  %201 = icmp eq i32 %98, 1, !dbg !1220
  br i1 %201, label %235, label %202, !dbg !1222

202:                                              ; preds = %198
  call void @llvm.dbg.value(metadata i32 32, metadata !1198, metadata !DIExpression()), !dbg !1223
  %203 = load ptr, ptr @stdout, align 8, !dbg !1225, !tbaa !775
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %203, i64 0, i32 5, !dbg !1225
  %205 = load ptr, ptr %204, align 8, !dbg !1225, !tbaa !1207
  %206 = getelementptr inbounds %struct._IO_FILE, ptr %203, i64 0, i32 6, !dbg !1225
  %207 = load ptr, ptr %206, align 8, !dbg !1225, !tbaa !1210
  %208 = icmp ult ptr %205, %207, !dbg !1225
  br i1 %208, label %211, label %209, !dbg !1225, !prof !1211

209:                                              ; preds = %202
  %210 = tail call i32 @__overflow(ptr noundef nonnull %203, i32 noundef 32) #38, !dbg !1225
  br label %213, !dbg !1225

211:                                              ; preds = %202
  %212 = getelementptr inbounds i8, ptr %205, i64 1, !dbg !1225
  store ptr %212, ptr %204, align 8, !dbg !1225, !tbaa !1207
  store i8 32, ptr %205, align 1, !dbg !1225, !tbaa !821
  br label %213, !dbg !1225

213:                                              ; preds = %211, %209
  tail call void @llvm.dbg.value(metadata i32 %199, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %200, metadata !1000, metadata !DIExpression()), !dbg !1022
  %214 = icmp sgt i32 %98, 1, !dbg !1226
  br i1 %214, label %97, label %235, !dbg !1111, !llvm.loop !1227

215:                                              ; preds = %91, %230
  %216 = phi ptr [ %219, %230 ], [ %82, %91 ]
  %217 = phi i32 [ %218, %230 ], [ %84, %91 ]
  %218 = add nsw i32 %217, -1, !dbg !1229
  %219 = getelementptr inbounds ptr, ptr %216, i64 1, !dbg !1230
  call void @llvm.dbg.value(metadata i32 32, metadata !1198, metadata !DIExpression()), !dbg !1231
  %220 = load ptr, ptr @stdout, align 8, !dbg !1233, !tbaa !775
  %221 = getelementptr inbounds %struct._IO_FILE, ptr %220, i64 0, i32 5, !dbg !1233
  %222 = load ptr, ptr %221, align 8, !dbg !1233, !tbaa !1207
  %223 = getelementptr inbounds %struct._IO_FILE, ptr %220, i64 0, i32 6, !dbg !1233
  %224 = load ptr, ptr %223, align 8, !dbg !1233, !tbaa !1210
  %225 = icmp ult ptr %222, %224, !dbg !1233
  br i1 %225, label %228, label %226, !dbg !1233, !prof !1211

226:                                              ; preds = %215
  %227 = tail call i32 @__overflow(ptr noundef nonnull %220, i32 noundef 32) #38, !dbg !1233
  br label %230, !dbg !1233

228:                                              ; preds = %215
  %229 = getelementptr inbounds i8, ptr %222, i64 1, !dbg !1233
  store ptr %229, ptr %221, align 8, !dbg !1233, !tbaa !1207
  store i8 32, ptr %222, align 1, !dbg !1233, !tbaa !821
  br label %230, !dbg !1233

230:                                              ; preds = %228, %226
  tail call void @llvm.dbg.value(metadata i32 %218, metadata !999, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %219, metadata !1000, metadata !DIExpression()), !dbg !1022
  %231 = load ptr, ptr %219, align 8, !dbg !1106, !tbaa !775
  %232 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !775
  %233 = tail call i32 @fputs_unlocked(ptr noundef %231, ptr noundef %232), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %218, metadata !999, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %219, metadata !1000, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1022
  %234 = icmp eq i32 %218, 1, !dbg !1108
  br i1 %234, label %235, label %215, !dbg !1110, !llvm.loop !1234

235:                                              ; preds = %40, %230, %198, %213, %91, %90, %96
  %236 = phi i8 [ %83, %90 ], [ %83, %96 ], [ %83, %91 ], [ %83, %213 ], [ %83, %198 ], [ %83, %230 ], [ %41, %40 ]
  %237 = and i8 %236, 1, !dbg !1236
  %238 = icmp eq i8 %237, 0, !dbg !1236
  br i1 %238, label %250, label %239, !dbg !1238

239:                                              ; preds = %235
  call void @llvm.dbg.value(metadata i32 10, metadata !1198, metadata !DIExpression()), !dbg !1239
  %240 = load ptr, ptr @stdout, align 8, !dbg !1241, !tbaa !775
  %241 = getelementptr inbounds %struct._IO_FILE, ptr %240, i64 0, i32 5, !dbg !1241
  %242 = load ptr, ptr %241, align 8, !dbg !1241, !tbaa !1207
  %243 = getelementptr inbounds %struct._IO_FILE, ptr %240, i64 0, i32 6, !dbg !1241
  %244 = load ptr, ptr %243, align 8, !dbg !1241, !tbaa !1210
  %245 = icmp ult ptr %242, %244, !dbg !1241
  br i1 %245, label %248, label %246, !dbg !1241, !prof !1211

246:                                              ; preds = %239
  %247 = tail call i32 @__overflow(ptr noundef nonnull %240, i32 noundef 10) #38, !dbg !1241
  br label %250, !dbg !1241

248:                                              ; preds = %239
  %249 = getelementptr inbounds i8, ptr %242, i64 1, !dbg !1241
  store ptr %249, ptr %241, align 8, !dbg !1241, !tbaa !1207
  store i8 10, ptr %242, align 1, !dbg !1241, !tbaa !821
  br label %250, !dbg !1241

250:                                              ; preds = %108, %248, %246, %235, %30
  ret i32 0, !dbg !1242
}

; Function Attrs: nounwind
declare !dbg !1243 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1246 ptr @textdomain(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1247 i32 @atexit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1250 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1253 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1256, metadata !DIExpression()), !dbg !1257
  store ptr %0, ptr @file_name, align 8, !dbg !1258, !tbaa !775
  ret void, !dbg !1259
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1260 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1266, !tbaa !1267
  ret void, !dbg !1269
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1270 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !775
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1276
  %3 = icmp eq i32 %2, 0, !dbg !1277
  br i1 %3, label %22, label %4, !dbg !1278

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1279, !tbaa !1267, !range !1280, !noundef !892
  %6 = icmp eq i8 %5, 0, !dbg !1279
  br i1 %6, label %11, label %7, !dbg !1281

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1282
  %9 = load i32, ptr %8, align 4, !dbg !1282, !tbaa !812
  %10 = icmp eq i32 %9, 32, !dbg !1283
  br i1 %10, label %22, label %11, !dbg !1284

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1.33, i32 noundef 5) #38, !dbg !1285
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1272, metadata !DIExpression()), !dbg !1286
  %13 = load ptr, ptr @file_name, align 8, !dbg !1287, !tbaa !775
  %14 = icmp eq ptr %13, null, !dbg !1287
  %15 = tail call ptr @__errno_location() #40, !dbg !1289
  %16 = load i32, ptr %15, align 4, !dbg !1289, !tbaa !812
  br i1 %14, label %19, label %17, !dbg !1290

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.34, ptr noundef %18, ptr noundef %12) #38, !dbg !1291
  br label %20, !dbg !1291

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.35, ptr noundef %12) #38, !dbg !1292
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1293, !tbaa !812
  tail call void @_exit(i32 noundef %21) #37, !dbg !1294
  unreachable, !dbg !1294

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !775
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1297
  %25 = icmp eq i32 %24, 0, !dbg !1298
  br i1 %25, label %28, label %26, !dbg !1299

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1300, !tbaa !812
  tail call void @_exit(i32 noundef %27) #37, !dbg !1301
  unreachable, !dbg !1301

28:                                               ; preds = %22
  ret void, !dbg !1302
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1303 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1308 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1310 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1314, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1315, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1316, metadata !DIExpression()), !dbg !1318
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1317, metadata !DIExpression()), !dbg !1318
  tail call fastcc void @flush_stdout(), !dbg !1319
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1320, !tbaa !775
  %6 = icmp eq ptr %5, null, !dbg !1320
  br i1 %6, label %8, label %7, !dbg !1322

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1323
  br label %12, !dbg !1323

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1324, !tbaa !775
  %10 = tail call ptr @getprogname() #39, !dbg !1324
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %10) #38, !dbg !1324
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1326
  ret void, !dbg !1327
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1328 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1330, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 1, metadata !1332, metadata !DIExpression()), !dbg !1335
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1338
  %2 = icmp slt i32 %1, 0, !dbg !1339
  br i1 %2, label %6, label %3, !dbg !1340

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1341, !tbaa !775
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1341
  br label %6, !dbg !1341

6:                                                ; preds = %3, %0
  ret void, !dbg !1342
}

declare !dbg !1343 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1381 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1387
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1383, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1384, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1385, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1386, metadata !DIExpression()), !dbg !1388
  %6 = load ptr, ptr @stderr, align 8, !dbg !1389, !tbaa !775
  call void @llvm.dbg.value(metadata ptr %6, metadata !1390, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata ptr %2, metadata !1395, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata ptr %3, metadata !1396, metadata !DIExpression()), !dbg !1397
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1399
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1400, !tbaa !812
  %9 = add i32 %8, 1, !dbg !1400
  store i32 %9, ptr @error_message_count, align 4, !dbg !1400, !tbaa !812
  %10 = icmp eq i32 %1, 0, !dbg !1401
  br i1 %10, label %20, label %11, !dbg !1403

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1404, metadata !DIExpression(), metadata !1387, metadata ptr %5, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %1, metadata !1407, metadata !DIExpression()), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1414
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %12, metadata !1408, metadata !DIExpression()), !dbg !1412
  %13 = icmp eq ptr %12, null, !dbg !1416
  br i1 %13, label %14, label %16, !dbg !1418

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.37, ptr noundef nonnull @.str.5.38, i32 noundef 5) #38, !dbg !1419
  call void @llvm.dbg.value(metadata ptr %15, metadata !1408, metadata !DIExpression()), !dbg !1412
  br label %16, !dbg !1420

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1412
  call void @llvm.dbg.value(metadata ptr %17, metadata !1408, metadata !DIExpression()), !dbg !1412
  %18 = load ptr, ptr @stderr, align 8, !dbg !1421, !tbaa !775
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.39, ptr noundef %17) #38, !dbg !1421
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1422
  br label %20, !dbg !1423

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1424, !tbaa !775
  call void @llvm.dbg.value(metadata i32 10, metadata !1425, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr %21, metadata !1430, metadata !DIExpression()), !dbg !1431
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1433
  %23 = load ptr, ptr %22, align 8, !dbg !1433, !tbaa !1207
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1433
  %25 = load ptr, ptr %24, align 8, !dbg !1433, !tbaa !1210
  %26 = icmp ult ptr %23, %25, !dbg !1433
  br i1 %26, label %29, label %27, !dbg !1433, !prof !1211

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1433
  br label %31, !dbg !1433

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1433
  store ptr %30, ptr %22, align 8, !dbg !1433, !tbaa !1207
  store i8 10, ptr %23, align 1, !dbg !1433, !tbaa !821
  br label %31, !dbg !1433

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1434, !tbaa !775
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1434
  %34 = icmp eq i32 %0, 0, !dbg !1435
  br i1 %34, label %36, label %35, !dbg !1437

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #37, !dbg !1438
  unreachable, !dbg !1438

36:                                               ; preds = %31
  ret void, !dbg !1439
}

declare !dbg !1440 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1443 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1446 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #4

declare !dbg !1449 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1453 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1460, metadata !DIExpression(), metadata !1466, metadata ptr %4, metadata !DIExpression()), !dbg !1467
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1457, metadata !DIExpression()), !dbg !1467
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1458, metadata !DIExpression()), !dbg !1467
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1459, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1468
  call void @llvm.va_start(ptr nonnull %4), !dbg !1469
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1470
  call void @llvm.va_end(ptr nonnull %4), !dbg !1471
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1472
  ret void, !dbg !1472
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !369 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !380, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !381, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !383, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !384, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !385, metadata !DIExpression()), !dbg !1473
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1474, !tbaa !812
  %8 = icmp eq i32 %7, 0, !dbg !1474
  br i1 %8, label %23, label %9, !dbg !1476

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1477, !tbaa !812
  %11 = icmp eq i32 %10, %3, !dbg !1480
  br i1 %11, label %12, label %22, !dbg !1481

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1482, !tbaa !775
  %14 = icmp eq ptr %13, %2, !dbg !1483
  br i1 %14, label %36, label %15, !dbg !1484

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1485
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1486
  br i1 %18, label %19, label %22, !dbg !1486

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1487
  %21 = icmp eq i32 %20, 0, !dbg !1488
  br i1 %21, label %36, label %22, !dbg !1489

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1490, !tbaa !775
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1491, !tbaa !812
  br label %23, !dbg !1492

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1493
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1494, !tbaa !775
  %25 = icmp eq ptr %24, null, !dbg !1494
  br i1 %25, label %27, label %26, !dbg !1496

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1497
  br label %31, !dbg !1497

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1498, !tbaa !775
  %29 = tail call ptr @getprogname() #39, !dbg !1498
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.42, ptr noundef %29) #38, !dbg !1498
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1500, !tbaa !775
  %33 = icmp eq ptr %2, null, !dbg !1500
  %34 = select i1 %33, ptr @.str.3.43, ptr @.str.2.44, !dbg !1500
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1500
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1501
  br label %36, !dbg !1502

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1502
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1503 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1512, metadata !DIExpression(), metadata !1513, metadata ptr %6, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1507, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1508, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1509, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1510, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1511, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1515
  call void @llvm.va_start(ptr nonnull %6), !dbg !1516
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1517
  call void @llvm.va_end(ptr nonnull %6), !dbg !1518
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1519
  ret void, !dbg !1519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1520 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1523, !tbaa !775
  ret ptr %1, !dbg !1524
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1525 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1527, metadata !DIExpression()), !dbg !1530
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1528, metadata !DIExpression()), !dbg !1530
  %3 = icmp eq ptr %2, null, !dbg !1532
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1532
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1529, metadata !DIExpression()), !dbg !1530
  %6 = ptrtoint ptr %5 to i64, !dbg !1533
  %7 = ptrtoint ptr %0 to i64, !dbg !1533
  %8 = sub i64 %6, %7, !dbg !1533
  %9 = icmp sgt i64 %8, 6, !dbg !1535
  br i1 %9, label %10, label %19, !dbg !1536

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %11, metadata !1538, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr @.str.58, metadata !1543, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 7, metadata !1544, metadata !DIExpression()), !dbg !1545
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.58, i64 7), !dbg !1547
  %13 = icmp eq i32 %12, 0, !dbg !1548
  br i1 %13, label %14, label %19, !dbg !1549

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1527, metadata !DIExpression()), !dbg !1530
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.59, i64 noundef 3) #39, !dbg !1550
  %16 = icmp eq i32 %15, 0, !dbg !1553
  %17 = select i1 %16, i64 3, i64 0, !dbg !1554
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1554
  br label %19, !dbg !1554

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1529, metadata !DIExpression()), !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1527, metadata !DIExpression()), !dbg !1530
  store ptr %20, ptr @program_name, align 8, !dbg !1555, !tbaa !775
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1556, !tbaa !775
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1557, !tbaa !775
  ret void, !dbg !1558
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1559 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !422 {
  %3 = alloca i32, align 4, !DIAssignID !1560
  call void @llvm.dbg.assign(metadata i1 undef, metadata !432, metadata !DIExpression(), metadata !1560, metadata ptr %3, metadata !DIExpression()), !dbg !1561
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1562
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1562, metadata ptr %4, metadata !DIExpression()), !dbg !1561
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !429, metadata !DIExpression()), !dbg !1561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !430, metadata !DIExpression()), !dbg !1561
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1563
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !431, metadata !DIExpression()), !dbg !1561
  %6 = icmp eq ptr %5, %0, !dbg !1564
  br i1 %6, label %7, label %14, !dbg !1566

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1567
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1568
  call void @llvm.dbg.value(metadata ptr %4, metadata !1569, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %4, metadata !1578, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 0, metadata !1584, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 8, metadata !1585, metadata !DIExpression()), !dbg !1586
  store i64 0, ptr %4, align 8, !dbg !1588
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1589
  %9 = icmp eq i64 %8, 2, !dbg !1591
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1592
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1561
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1593
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1561
  ret ptr %15, !dbg !1593
}

; Function Attrs: nounwind
declare !dbg !1594 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1600 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1605, metadata !DIExpression()), !dbg !1608
  %2 = tail call ptr @__errno_location() #40, !dbg !1609
  %3 = load i32, ptr %2, align 4, !dbg !1609, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1606, metadata !DIExpression()), !dbg !1608
  %4 = icmp eq ptr %0, null, !dbg !1610
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1610
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1611
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1607, metadata !DIExpression()), !dbg !1608
  store i32 %3, ptr %2, align 4, !dbg !1612, !tbaa !812
  ret ptr %6, !dbg !1613
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1614 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1620, metadata !DIExpression()), !dbg !1621
  %2 = icmp eq ptr %0, null, !dbg !1622
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1622
  %4 = load i32, ptr %3, align 8, !dbg !1623, !tbaa !1624
  ret i32 %4, !dbg !1626
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1627 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1631, metadata !DIExpression()), !dbg !1633
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1632, metadata !DIExpression()), !dbg !1633
  %3 = icmp eq ptr %0, null, !dbg !1634
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1634
  store i32 %1, ptr %4, align 8, !dbg !1635, !tbaa !1624
  ret void, !dbg !1636
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1637 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1641, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1642, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1643, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1644, metadata !DIExpression()), !dbg !1649
  %4 = icmp eq ptr %0, null, !dbg !1650
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1650
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1651
  %7 = lshr i8 %1, 5, !dbg !1652
  %8 = zext nneg i8 %7 to i64, !dbg !1652
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1653
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1645, metadata !DIExpression()), !dbg !1649
  %10 = and i8 %1, 31, !dbg !1654
  %11 = zext nneg i8 %10 to i32, !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1647, metadata !DIExpression()), !dbg !1649
  %12 = load i32, ptr %9, align 4, !dbg !1655, !tbaa !812
  %13 = lshr i32 %12, %11, !dbg !1656
  %14 = and i32 %13, 1, !dbg !1657
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1648, metadata !DIExpression()), !dbg !1649
  %15 = xor i32 %13, %2, !dbg !1658
  %16 = and i32 %15, 1, !dbg !1658
  %17 = shl nuw i32 %16, %11, !dbg !1659
  %18 = xor i32 %17, %12, !dbg !1660
  store i32 %18, ptr %9, align 4, !dbg !1660, !tbaa !812
  ret i32 %14, !dbg !1661
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1662 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1666, metadata !DIExpression()), !dbg !1669
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1667, metadata !DIExpression()), !dbg !1669
  %3 = icmp eq ptr %0, null, !dbg !1670
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1672
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1666, metadata !DIExpression()), !dbg !1669
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1673
  %6 = load i32, ptr %5, align 4, !dbg !1673, !tbaa !1674
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i32 %1, ptr %5, align 4, !dbg !1675, !tbaa !1674
  ret i32 %6, !dbg !1676
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1681, metadata !DIExpression()), !dbg !1684
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1682, metadata !DIExpression()), !dbg !1684
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1683, metadata !DIExpression()), !dbg !1684
  %4 = icmp eq ptr %0, null, !dbg !1685
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1687
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1681, metadata !DIExpression()), !dbg !1684
  store i32 10, ptr %5, align 8, !dbg !1688, !tbaa !1624
  %6 = icmp ne ptr %1, null, !dbg !1689
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1691
  br i1 %8, label %10, label %9, !dbg !1691

9:                                                ; preds = %3
  tail call void @abort() #37, !dbg !1692
  unreachable, !dbg !1692

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1693
  store ptr %1, ptr %11, align 8, !dbg !1694, !tbaa !1695
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1696
  store ptr %2, ptr %12, align 8, !dbg !1697, !tbaa !1698
  ret void, !dbg !1699
}

; Function Attrs: noreturn nounwind
declare !dbg !1700 void @abort() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1701 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1705, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1706, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1707, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1708, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1709, metadata !DIExpression()), !dbg !1713
  %6 = icmp eq ptr %4, null, !dbg !1714
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1714
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1710, metadata !DIExpression()), !dbg !1713
  %8 = tail call ptr @__errno_location() #40, !dbg !1715
  %9 = load i32, ptr %8, align 4, !dbg !1715, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1711, metadata !DIExpression()), !dbg !1713
  %10 = load i32, ptr %7, align 8, !dbg !1716, !tbaa !1624
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1717
  %12 = load i32, ptr %11, align 4, !dbg !1717, !tbaa !1674
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1718
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1719
  %15 = load ptr, ptr %14, align 8, !dbg !1719, !tbaa !1695
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1720
  %17 = load ptr, ptr %16, align 8, !dbg !1720, !tbaa !1698
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1721
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1712, metadata !DIExpression()), !dbg !1713
  store i32 %9, ptr %8, align 4, !dbg !1722, !tbaa !812
  ret i64 %18, !dbg !1723
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1724 {
  %10 = alloca i32, align 4, !DIAssignID !1792
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1793
  %12 = alloca i32, align 4, !DIAssignID !1794
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1795
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1796
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1770, metadata !DIExpression(), metadata !1796, metadata ptr %14, metadata !DIExpression()), !dbg !1797
  %15 = alloca i32, align 4, !DIAssignID !1798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1773, metadata !DIExpression(), metadata !1798, metadata ptr %15, metadata !DIExpression()), !dbg !1799
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1730, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1732, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1733, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1734, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1735, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1736, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1737, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1738, metadata !DIExpression()), !dbg !1800
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1801
  %17 = icmp eq i64 %16, 1, !dbg !1802
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1739, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1742, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1743, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1800
  %18 = trunc i32 %5 to i8, !dbg !1803
  %19 = lshr i8 %18, 1, !dbg !1803
  %20 = and i8 %19, 1, !dbg !1803
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1745, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1747, metadata !DIExpression()), !dbg !1800
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1804

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1805
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1806
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1807
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1808
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1800
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1809
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1810
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1747, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1745, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1744, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1743, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1742, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1733, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1738, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1737, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1734, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.label(metadata !1748), !dbg !1811
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1800
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
  ], !dbg !1812

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1745, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1734, metadata !DIExpression()), !dbg !1800
  br label %114, !dbg !1813

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1745, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1734, metadata !DIExpression()), !dbg !1800
  %43 = and i8 %37, 1, !dbg !1814
  %44 = icmp eq i8 %43, 0, !dbg !1814
  br i1 %44, label %45, label %114, !dbg !1813

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1816
  br i1 %46, label %114, label %47, !dbg !1819

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1816, !tbaa !821
  br label %114, !dbg !1816

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !1794, metadata ptr %12, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !1795, metadata ptr %13, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !535, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %29, metadata !536, metadata !DIExpression()), !dbg !1820
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #38, !dbg !1824
  call void @llvm.dbg.value(metadata ptr %49, metadata !537, metadata !DIExpression()), !dbg !1820
  %50 = icmp eq ptr %49, @.str.11.72, !dbg !1825
  br i1 %50, label %51, label %60, !dbg !1827

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1828
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %13, metadata !1830, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata ptr %13, metadata !1838, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 8, metadata !1842, metadata !DIExpression()), !dbg !1843
  store i64 0, ptr %13, align 8, !dbg !1845
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1846
  %53 = icmp eq i64 %52, 3, !dbg !1848
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1849
  %57 = icmp eq i32 %29, 9, !dbg !1849
  %58 = select i1 %57, ptr @.str.10.74, ptr @.str.12.75, !dbg !1849
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1849
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1850
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1850
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1820
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1737, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !1792, metadata ptr %10, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !1793, metadata ptr %11, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !535, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %29, metadata !536, metadata !DIExpression()), !dbg !1851
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #38, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %62, metadata !537, metadata !DIExpression()), !dbg !1851
  %63 = icmp eq ptr %62, @.str.12.75, !dbg !1854
  br i1 %63, label %64, label %73, !dbg !1855

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1856
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %11, metadata !1830, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata ptr %11, metadata !1838, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 8, metadata !1842, metadata !DIExpression()), !dbg !1860
  store i64 0, ptr %11, align 8, !dbg !1862
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1863
  %66 = icmp eq i64 %65, 3, !dbg !1864
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1865
  %70 = icmp eq i32 %29, 9, !dbg !1865
  %71 = select i1 %70, ptr @.str.10.74, ptr @.str.12.75, !dbg !1865
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1866
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1866
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1738, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1737, metadata !DIExpression()), !dbg !1800
  %76 = and i8 %37, 1, !dbg !1867
  %77 = icmp eq i8 %76, 0, !dbg !1867
  br i1 %77, label %78, label %93, !dbg !1868

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1750, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1740, metadata !DIExpression()), !dbg !1800
  %79 = load i8, ptr %74, align 1, !dbg !1870, !tbaa !821
  %80 = icmp eq i8 %79, 0, !dbg !1872
  br i1 %80, label %93, label %81, !dbg !1872

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1750, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1740, metadata !DIExpression()), !dbg !1800
  %85 = icmp ult i64 %84, %40, !dbg !1873
  br i1 %85, label %86, label %88, !dbg !1876

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1873
  store i8 %82, ptr %87, align 1, !dbg !1873, !tbaa !821
  br label %88, !dbg !1873

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1876
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1740, metadata !DIExpression()), !dbg !1800
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1877
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1750, metadata !DIExpression()), !dbg !1869
  %91 = load i8, ptr %90, align 1, !dbg !1870, !tbaa !821
  %92 = icmp eq i8 %91, 0, !dbg !1872
  br i1 %92, label %93, label %81, !dbg !1872, !llvm.loop !1878

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1744, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1742, metadata !DIExpression()), !dbg !1800
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1881
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1743, metadata !DIExpression()), !dbg !1800
  br label %114, !dbg !1882

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1744, metadata !DIExpression()), !dbg !1800
  br label %98, !dbg !1883

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1744, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1745, metadata !DIExpression()), !dbg !1800
  br label %98, !dbg !1884

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1808
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1745, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1744, metadata !DIExpression()), !dbg !1800
  %101 = and i8 %100, 1, !dbg !1885
  %102 = icmp eq i8 %101, 0, !dbg !1885
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1887
  br label %104, !dbg !1887

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1800
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1803
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1745, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1744, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1734, metadata !DIExpression()), !dbg !1800
  %107 = and i8 %106, 1, !dbg !1888
  %108 = icmp eq i8 %107, 0, !dbg !1888
  br i1 %108, label %109, label %114, !dbg !1890

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1891
  br i1 %110, label %114, label %111, !dbg !1894

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1891, !tbaa !821
  br label %114, !dbg !1891

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1800
  br label %114, !dbg !1895

113:                                              ; preds = %28
  call void @abort() #37, !dbg !1896
  unreachable, !dbg !1896

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1880
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.74, %45 ], [ @.str.10.74, %47 ], [ @.str.10.74, %42 ], [ %34, %28 ], [ @.str.12.75, %109 ], [ @.str.12.75, %111 ], [ @.str.12.75, %104 ], [ @.str.10.74, %41 ], !dbg !1800
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1800
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1800
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1745, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1744, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1743, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1742, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1738, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1737, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1734, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1897
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
  br label %138, !dbg !1898

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1880
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1805
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1809
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1810
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1899
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1900
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1747, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1733, metadata !DIExpression()), !dbg !1800
  %147 = icmp eq i64 %139, -1, !dbg !1901
  br i1 %147, label %148, label %152, !dbg !1902

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1903
  %150 = load i8, ptr %149, align 1, !dbg !1903, !tbaa !821
  %151 = icmp eq i8 %150, 0, !dbg !1904
  br i1 %151, label %612, label %154, !dbg !1905

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1906
  br i1 %153, label %612, label %154, !dbg !1905

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1907
  br i1 %128, label %155, label %170, !dbg !1908

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1910
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1911
  br i1 %157, label %158, label %160, !dbg !1911

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1733, metadata !DIExpression()), !dbg !1800
  br label %160, !dbg !1913

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1733, metadata !DIExpression()), !dbg !1800
  %162 = icmp ugt i64 %156, %161, !dbg !1914
  br i1 %162, label %170, label %163, !dbg !1915

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1916
  call void @llvm.dbg.value(metadata ptr %164, metadata !1917, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %119, metadata !1920, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i64 %120, metadata !1921, metadata !DIExpression()), !dbg !1922
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1924
  %166 = icmp ne i32 %165, 0, !dbg !1925
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1926
  %168 = xor i1 %166, true, !dbg !1926
  %169 = zext i1 %168 to i8, !dbg !1926
  br i1 %167, label %170, label %666, !dbg !1926

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1907
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1757, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1733, metadata !DIExpression()), !dbg !1800
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1927
  %175 = load i8, ptr %174, align 1, !dbg !1927, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1762, metadata !DIExpression()), !dbg !1907
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
  ], !dbg !1928

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1929

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1930

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1907
  %179 = and i8 %144, 1, !dbg !1934
  %180 = icmp eq i8 %179, 0, !dbg !1934
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1934
  br i1 %181, label %182, label %198, !dbg !1934

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1936
  br i1 %183, label %184, label %186, !dbg !1940

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1936
  store i8 39, ptr %185, align 1, !dbg !1936, !tbaa !821
  br label %186, !dbg !1936

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1940
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1740, metadata !DIExpression()), !dbg !1800
  %188 = icmp ult i64 %187, %146, !dbg !1941
  br i1 %188, label %189, label %191, !dbg !1944

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1941
  store i8 36, ptr %190, align 1, !dbg !1941, !tbaa !821
  br label %191, !dbg !1941

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1740, metadata !DIExpression()), !dbg !1800
  %193 = icmp ult i64 %192, %146, !dbg !1945
  br i1 %193, label %194, label %196, !dbg !1948

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1945
  store i8 39, ptr %195, align 1, !dbg !1945, !tbaa !821
  br label %196, !dbg !1945

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1948
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1749, metadata !DIExpression()), !dbg !1800
  br label %198, !dbg !1949

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1800
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1740, metadata !DIExpression()), !dbg !1800
  %201 = icmp ult i64 %199, %146, !dbg !1950
  br i1 %201, label %202, label %204, !dbg !1953

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1950
  store i8 92, ptr %203, align 1, !dbg !1950, !tbaa !821
  br label %204, !dbg !1950

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1740, metadata !DIExpression()), !dbg !1800
  br i1 %125, label %206, label %476, !dbg !1954

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1956
  %208 = icmp ult i64 %207, %171, !dbg !1957
  br i1 %208, label %209, label %465, !dbg !1958

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1959
  %211 = load i8, ptr %210, align 1, !dbg !1959, !tbaa !821
  %212 = add i8 %211, -48, !dbg !1960
  %213 = icmp ult i8 %212, 10, !dbg !1960
  br i1 %213, label %214, label %465, !dbg !1960

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1961
  br i1 %215, label %216, label %218, !dbg !1965

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1961
  store i8 48, ptr %217, align 1, !dbg !1961, !tbaa !821
  br label %218, !dbg !1961

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1740, metadata !DIExpression()), !dbg !1800
  %220 = icmp ult i64 %219, %146, !dbg !1966
  br i1 %220, label %221, label %223, !dbg !1969

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1966
  store i8 48, ptr %222, align 1, !dbg !1966, !tbaa !821
  br label %223, !dbg !1966

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1740, metadata !DIExpression()), !dbg !1800
  br label %465, !dbg !1970

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1971

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1972

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1973

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1975

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1977
  %231 = icmp ult i64 %230, %171, !dbg !1978
  br i1 %231, label %232, label %465, !dbg !1979

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1980
  %234 = load i8, ptr %233, align 1, !dbg !1980, !tbaa !821
  %235 = icmp eq i8 %234, 63, !dbg !1981
  br i1 %235, label %236, label %465, !dbg !1982

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1983
  %238 = load i8, ptr %237, align 1, !dbg !1983, !tbaa !821
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
  ], !dbg !1984

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1985

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1755, metadata !DIExpression()), !dbg !1897
  %241 = icmp ult i64 %140, %146, !dbg !1987
  br i1 %241, label %242, label %244, !dbg !1990

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1987
  store i8 63, ptr %243, align 1, !dbg !1987, !tbaa !821
  br label %244, !dbg !1987

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1990
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1740, metadata !DIExpression()), !dbg !1800
  %246 = icmp ult i64 %245, %146, !dbg !1991
  br i1 %246, label %247, label %249, !dbg !1994

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1991
  store i8 34, ptr %248, align 1, !dbg !1991, !tbaa !821
  br label %249, !dbg !1991

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1740, metadata !DIExpression()), !dbg !1800
  %251 = icmp ult i64 %250, %146, !dbg !1995
  br i1 %251, label %252, label %254, !dbg !1998

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1995
  store i8 34, ptr %253, align 1, !dbg !1995, !tbaa !821
  br label %254, !dbg !1995

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1740, metadata !DIExpression()), !dbg !1800
  %256 = icmp ult i64 %255, %146, !dbg !1999
  br i1 %256, label %257, label %259, !dbg !2002

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1999
  store i8 63, ptr %258, align 1, !dbg !1999, !tbaa !821
  br label %259, !dbg !1999

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1740, metadata !DIExpression()), !dbg !1800
  br label %465, !dbg !2003

261:                                              ; preds = %170
  br label %272, !dbg !2004

262:                                              ; preds = %170
  br label %272, !dbg !2005

263:                                              ; preds = %170
  br label %270, !dbg !2006

264:                                              ; preds = %170
  br label %270, !dbg !2007

265:                                              ; preds = %170
  br label %272, !dbg !2008

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2009

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2010

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2013

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2015

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2016
  call void @llvm.dbg.label(metadata !1763), !dbg !2017
  br i1 %133, label %272, label %655, !dbg !2018

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2016
  call void @llvm.dbg.label(metadata !1766), !dbg !2020
  br i1 %124, label %520, label %476, !dbg !2021

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2022

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2023, !tbaa !821
  %277 = icmp eq i8 %276, 0, !dbg !2025
  br i1 %277, label %278, label %465, !dbg !2026

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2027
  br i1 %279, label %280, label %465, !dbg !2029

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1907
  br label %281, !dbg !2030

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1761, metadata !DIExpression()), !dbg !1907
  br i1 %133, label %465, label %655, !dbg !2031

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1907
  br i1 %132, label %284, label %465, !dbg !2033

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2034

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2037
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2039
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2039
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1741, metadata !DIExpression()), !dbg !1800
  %291 = icmp ult i64 %140, %290, !dbg !2040
  br i1 %291, label %292, label %294, !dbg !2043

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2040
  store i8 39, ptr %293, align 1, !dbg !2040, !tbaa !821
  br label %294, !dbg !2040

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1740, metadata !DIExpression()), !dbg !1800
  %296 = icmp ult i64 %295, %290, !dbg !2044
  br i1 %296, label %297, label %299, !dbg !2047

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2044
  store i8 92, ptr %298, align 1, !dbg !2044, !tbaa !821
  br label %299, !dbg !2044

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1740, metadata !DIExpression()), !dbg !1800
  %301 = icmp ult i64 %300, %290, !dbg !2048
  br i1 %301, label %302, label %304, !dbg !2051

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2048
  store i8 39, ptr %303, align 1, !dbg !2048, !tbaa !821
  br label %304, !dbg !2048

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2051
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1800
  br label %465, !dbg !2052

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2053

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1767, metadata !DIExpression()), !dbg !2054
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !2055
  %309 = load ptr, ptr %308, align 8, !dbg !2055, !tbaa !775
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2055
  %312 = load i16, ptr %311, align 2, !dbg !2055, !tbaa !853
  %313 = and i16 %312, 16384, !dbg !2057
  %314 = icmp ne i16 %313, 0, !dbg !2057
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1769, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2054
  br label %355, !dbg !2058

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %14, metadata !1830, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata ptr %14, metadata !1838, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 8, metadata !1842, metadata !DIExpression()), !dbg !2062
  store i64 0, ptr %14, align 8, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1767, metadata !DIExpression()), !dbg !2054
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1769, metadata !DIExpression()), !dbg !2054
  %316 = icmp eq i64 %171, -1, !dbg !2065
  br i1 %316, label %317, label %319, !dbg !2067

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2068
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1733, metadata !DIExpression()), !dbg !1800
  br label %319, !dbg !2069

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1733, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2070
  %321 = sub i64 %320, %145, !dbg !2071
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #38, !dbg !2072
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1777, metadata !DIExpression()), !dbg !1799
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2073

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1767, metadata !DIExpression()), !dbg !2054
  %324 = icmp ult i64 %145, %320, !dbg !2074
  br i1 %324, label %326, label %351, !dbg !2076

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !2054
  br label %351, !dbg !2077

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1767, metadata !DIExpression()), !dbg !2054
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2079
  %330 = load i8, ptr %329, align 1, !dbg !2079, !tbaa !821
  %331 = icmp eq i8 %330, 0, !dbg !2076
  br i1 %331, label %351, label %332, !dbg !2080

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1767, metadata !DIExpression()), !dbg !2054
  %334 = add i64 %333, %145, !dbg !2082
  %335 = icmp eq i64 %333, %321, !dbg !2074
  br i1 %335, label %351, label %326, !dbg !2076, !llvm.loop !2083

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1778, metadata !DIExpression()), !dbg !2084
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2085
  %339 = and i1 %338, %132, !dbg !2085
  br i1 %339, label %340, label %347, !dbg !2085

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1778, metadata !DIExpression()), !dbg !2084
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2086
  %343 = load i8, ptr %342, align 1, !dbg !2086, !tbaa !821
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2088

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2089
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1778, metadata !DIExpression()), !dbg !2084
  %346 = icmp eq i64 %345, %322, !dbg !2090
  br i1 %346, label %347, label %340, !dbg !2091, !llvm.loop !2092

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2094, !tbaa !812
  call void @llvm.dbg.value(metadata i32 %348, metadata !2096, metadata !DIExpression()), !dbg !2104
  %349 = call i32 @iswprint(i32 noundef %348) #38, !dbg !2106
  %350 = icmp ne i32 %349, 0, !dbg !2107
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1767, metadata !DIExpression()), !dbg !2054
  br label %351, !dbg !2108

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1767, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2110
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1767, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2110
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1907
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2111
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2111
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1767, metadata !DIExpression()), !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1733, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1907
  %359 = icmp ult i64 %357, 2, !dbg !2112
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2113
  br i1 %361, label %461, label %362, !dbg !2113

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2114
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1786, metadata !DIExpression()), !dbg !2115
  br label %364, !dbg !2116

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1800
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1899
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1897
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1907
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2117
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1757, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1740, metadata !DIExpression()), !dbg !1800
  br i1 %360, label %417, label %371, !dbg !2118

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2123

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1907
  %373 = and i8 %366, 1, !dbg !2126
  %374 = icmp eq i8 %373, 0, !dbg !2126
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2126
  br i1 %375, label %376, label %392, !dbg !2126

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2128
  br i1 %377, label %378, label %380, !dbg !2132

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2128
  store i8 39, ptr %379, align 1, !dbg !2128, !tbaa !821
  br label %380, !dbg !2128

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1740, metadata !DIExpression()), !dbg !1800
  %382 = icmp ult i64 %381, %146, !dbg !2133
  br i1 %382, label %383, label %385, !dbg !2136

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2133
  store i8 36, ptr %384, align 1, !dbg !2133, !tbaa !821
  br label %385, !dbg !2133

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1740, metadata !DIExpression()), !dbg !1800
  %387 = icmp ult i64 %386, %146, !dbg !2137
  br i1 %387, label %388, label %390, !dbg !2140

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2137
  store i8 39, ptr %389, align 1, !dbg !2137, !tbaa !821
  br label %390, !dbg !2137

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1749, metadata !DIExpression()), !dbg !1800
  br label %392, !dbg !2141

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1800
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1740, metadata !DIExpression()), !dbg !1800
  %395 = icmp ult i64 %393, %146, !dbg !2142
  br i1 %395, label %396, label %398, !dbg !2145

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2142
  store i8 92, ptr %397, align 1, !dbg !2142, !tbaa !821
  br label %398, !dbg !2142

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2145
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1740, metadata !DIExpression()), !dbg !1800
  %400 = icmp ult i64 %399, %146, !dbg !2146
  br i1 %400, label %401, label %405, !dbg !2149

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2146
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2146
  store i8 %403, ptr %404, align 1, !dbg !2146, !tbaa !821
  br label %405, !dbg !2146

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2149
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1740, metadata !DIExpression()), !dbg !1800
  %407 = icmp ult i64 %406, %146, !dbg !2150
  br i1 %407, label %408, label %413, !dbg !2153

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2150
  %411 = or disjoint i8 %410, 48, !dbg !2150
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2150
  store i8 %411, ptr %412, align 1, !dbg !2150, !tbaa !821
  br label %413, !dbg !2150

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1740, metadata !DIExpression()), !dbg !1800
  %415 = and i8 %370, 7, !dbg !2154
  %416 = or disjoint i8 %415, 48, !dbg !2155
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1762, metadata !DIExpression()), !dbg !1907
  br label %426, !dbg !2156

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2157
  %419 = icmp eq i8 %418, 0, !dbg !2157
  br i1 %419, label %426, label %420, !dbg !2159

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2160
  br i1 %421, label %422, label %424, !dbg !2164

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2160
  store i8 92, ptr %423, align 1, !dbg !2160, !tbaa !821
  br label %424, !dbg !2160

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1907
  br label %426, !dbg !2165

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1800
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1899
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1907
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1907
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1757, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1740, metadata !DIExpression()), !dbg !1800
  %432 = add i64 %367, 1, !dbg !2166
  %433 = icmp ugt i64 %363, %432, !dbg !2168
  br i1 %433, label %434, label %463, !dbg !2169

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2170
  %436 = icmp ne i8 %435, 0, !dbg !2170
  %437 = and i8 %430, 1, !dbg !2170
  %438 = icmp eq i8 %437, 0, !dbg !2170
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2170
  br i1 %439, label %440, label %451, !dbg !2170

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2173
  br i1 %441, label %442, label %444, !dbg !2177

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2173
  store i8 39, ptr %443, align 1, !dbg !2173, !tbaa !821
  br label %444, !dbg !2173

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2177
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1740, metadata !DIExpression()), !dbg !1800
  %446 = icmp ult i64 %445, %146, !dbg !2178
  br i1 %446, label %447, label %449, !dbg !2181

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2178
  store i8 39, ptr %448, align 1, !dbg !2178, !tbaa !821
  br label %449, !dbg !2178

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2181
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1800
  br label %451, !dbg !2182

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2183
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1740, metadata !DIExpression()), !dbg !1800
  %454 = icmp ult i64 %452, %146, !dbg !2184
  br i1 %454, label %455, label %457, !dbg !2187

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2184
  store i8 %431, ptr %456, align 1, !dbg !2184, !tbaa !821
  br label %457, !dbg !2184

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1755, metadata !DIExpression()), !dbg !1897
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2188
  %460 = load i8, ptr %459, align 1, !dbg !2188, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1762, metadata !DIExpression()), !dbg !1907
  br label %364, !dbg !2189, !llvm.loop !2190

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1761, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1757, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1733, metadata !DIExpression()), !dbg !1800
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1761, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1757, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1733, metadata !DIExpression()), !dbg !1800
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2193
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1800
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1805
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1800
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1800
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1897
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1907
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1907
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1907
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1761, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1757, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1733, metadata !DIExpression()), !dbg !1800
  br i1 %126, label %487, label %476, !dbg !2194

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
  br i1 %137, label %488, label %509, !dbg !2196

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2197

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
  %499 = lshr i8 %490, 5, !dbg !2198
  %500 = zext nneg i8 %499 to i64, !dbg !2198
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2199
  %502 = load i32, ptr %501, align 4, !dbg !2199, !tbaa !812
  %503 = and i8 %490, 31, !dbg !2200
  %504 = zext nneg i8 %503 to i32, !dbg !2200
  %505 = shl nuw i32 1, %504, !dbg !2201
  %506 = and i32 %502, %505, !dbg !2201
  %507 = icmp eq i32 %506, 0, !dbg !2201
  %508 = and i1 %172, %507, !dbg !2202
  br i1 %508, label %558, label %520, !dbg !2202

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
  br i1 %172, label %558, label %520, !dbg !2203

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2193
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1800
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1805
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1809
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1899
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2204
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1907
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1907
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1761, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1733, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.label(metadata !1789), !dbg !2205
  br i1 %131, label %530, label %659, !dbg !2206

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1907
  %531 = and i8 %525, 1, !dbg !2208
  %532 = icmp eq i8 %531, 0, !dbg !2208
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2208
  br i1 %533, label %534, label %550, !dbg !2208

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2210
  br i1 %535, label %536, label %538, !dbg !2214

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2210
  store i8 39, ptr %537, align 1, !dbg !2210, !tbaa !821
  br label %538, !dbg !2210

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1740, metadata !DIExpression()), !dbg !1800
  %540 = icmp ult i64 %539, %529, !dbg !2215
  br i1 %540, label %541, label %543, !dbg !2218

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2215
  store i8 36, ptr %542, align 1, !dbg !2215, !tbaa !821
  br label %543, !dbg !2215

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1740, metadata !DIExpression()), !dbg !1800
  %545 = icmp ult i64 %544, %529, !dbg !2219
  br i1 %545, label %546, label %548, !dbg !2222

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2219
  store i8 39, ptr %547, align 1, !dbg !2219, !tbaa !821
  br label %548, !dbg !2219

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2222
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1749, metadata !DIExpression()), !dbg !1800
  br label %550, !dbg !2223

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1907
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1740, metadata !DIExpression()), !dbg !1800
  %553 = icmp ult i64 %551, %529, !dbg !2224
  br i1 %553, label %554, label %556, !dbg !2227

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2224
  store i8 92, ptr %555, align 1, !dbg !2224, !tbaa !821
  br label %556, !dbg !2224

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1761, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1733, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.label(metadata !1790), !dbg !2228
  br label %585, !dbg !2229

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2193
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1800
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1805
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1809
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1899
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2204
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1907
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1907
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2232
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1762, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1761, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1760, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1733, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.label(metadata !1790), !dbg !2228
  %569 = and i8 %563, 1, !dbg !2229
  %570 = icmp ne i8 %569, 0, !dbg !2229
  %571 = and i8 %565, 1, !dbg !2229
  %572 = icmp eq i8 %571, 0, !dbg !2229
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2229
  br i1 %573, label %574, label %585, !dbg !2229

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2233
  br i1 %575, label %576, label %578, !dbg !2237

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2233
  store i8 39, ptr %577, align 1, !dbg !2233, !tbaa !821
  br label %578, !dbg !2233

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2237
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1740, metadata !DIExpression()), !dbg !1800
  %580 = icmp ult i64 %579, %568, !dbg !2238
  br i1 %580, label %581, label %583, !dbg !2241

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2238
  store i8 39, ptr %582, align 1, !dbg !2238, !tbaa !821
  br label %583, !dbg !2238

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1800
  br label %585, !dbg !2242

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1907
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1740, metadata !DIExpression()), !dbg !1800
  %595 = icmp ult i64 %593, %586, !dbg !2243
  br i1 %595, label %596, label %598, !dbg !2246

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2243
  store i8 %587, ptr %597, align 1, !dbg !2243, !tbaa !821
  br label %598, !dbg !2243

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1740, metadata !DIExpression()), !dbg !1800
  %600 = icmp eq i8 %588, 0, !dbg !2247
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2249
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1747, metadata !DIExpression()), !dbg !1800
  br label %602, !dbg !2250

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2193
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1800
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1805
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1809
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1810
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1899
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2204
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1755, metadata !DIExpression()), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1749, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1747, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1733, metadata !DIExpression()), !dbg !1800
  %611 = add i64 %609, 1, !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1755, metadata !DIExpression()), !dbg !1897
  br label %138, !dbg !2252, !llvm.loop !2253

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1731, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1747, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1746, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1741, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1740, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1733, metadata !DIExpression()), !dbg !1800
  %613 = icmp eq i64 %140, 0, !dbg !2255
  %614 = and i1 %132, %613, !dbg !2257
  %615 = xor i1 %614, true, !dbg !2257
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2257
  br i1 %616, label %617, label %655, !dbg !2257

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2258
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2258
  br i1 %621, label %622, label %631, !dbg !2258

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2260
  %624 = icmp eq i8 %623, 0, !dbg !2260
  br i1 %624, label %627, label %625, !dbg !2263

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2264
  br label %672, !dbg !2265

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2266
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2268
  br i1 %630, label %28, label %631, !dbg !2268

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2269
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2271
  br i1 %634, label %635, label %650, !dbg !2271

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1742, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1740, metadata !DIExpression()), !dbg !1800
  %636 = load i8, ptr %119, align 1, !dbg !2272, !tbaa !821
  %637 = icmp eq i8 %636, 0, !dbg !2275
  br i1 %637, label %650, label %638, !dbg !2275

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1742, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1740, metadata !DIExpression()), !dbg !1800
  %642 = icmp ult i64 %641, %146, !dbg !2276
  br i1 %642, label %643, label %645, !dbg !2279

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2276
  store i8 %639, ptr %644, align 1, !dbg !2276, !tbaa !821
  br label %645, !dbg !2276

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2279
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1740, metadata !DIExpression()), !dbg !1800
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2280
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1742, metadata !DIExpression()), !dbg !1800
  %648 = load i8, ptr %647, align 1, !dbg !2272, !tbaa !821
  %649 = icmp eq i8 %648, 0, !dbg !2275
  br i1 %649, label %650, label %638, !dbg !2275, !llvm.loop !2281

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1740, metadata !DIExpression()), !dbg !1800
  %652 = icmp ult i64 %651, %146, !dbg !2283
  br i1 %652, label %653, label %672, !dbg !2285

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2286
  store i8 0, ptr %654, align 1, !dbg !2287, !tbaa !821
  br label %672, !dbg !2286

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1791), !dbg !2288
  %657 = icmp eq i8 %123, 0, !dbg !2289
  %658 = select i1 %657, i32 2, i32 4, !dbg !2289
  br label %666, !dbg !2289

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1791), !dbg !2288
  %662 = icmp eq i32 %115, 2, !dbg !2291
  %663 = icmp eq i8 %123, 0, !dbg !2289
  %664 = select i1 %663, i32 2, i32 4, !dbg !2289
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2289
  br label %666, !dbg !2289

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1734, metadata !DIExpression()), !dbg !1800
  %670 = and i32 %5, -3, !dbg !2292
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2293
  br label %672, !dbg !2294

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2295
}

; Function Attrs: nounwind
declare !dbg !2296 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2299 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2302 i32 @iswprint(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2304 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2308, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2309, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2310, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %0, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1, metadata !2317, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata ptr null, metadata !2318, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata ptr %2, metadata !2319, metadata !DIExpression()), !dbg !2325
  %4 = icmp eq ptr %2, null, !dbg !2327
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2327
  call void @llvm.dbg.value(metadata ptr %5, metadata !2320, metadata !DIExpression()), !dbg !2325
  %6 = tail call ptr @__errno_location() #40, !dbg !2328
  %7 = load i32, ptr %6, align 4, !dbg !2328, !tbaa !812
  call void @llvm.dbg.value(metadata i32 %7, metadata !2321, metadata !DIExpression()), !dbg !2325
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2329
  %9 = load i32, ptr %8, align 4, !dbg !2329, !tbaa !1674
  %10 = or i32 %9, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %10, metadata !2322, metadata !DIExpression()), !dbg !2325
  %11 = load i32, ptr %5, align 8, !dbg !2331, !tbaa !1624
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2332
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2333
  %14 = load ptr, ptr %13, align 8, !dbg !2333, !tbaa !1695
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2334
  %16 = load ptr, ptr %15, align 8, !dbg !2334, !tbaa !1698
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2335
  %18 = add i64 %17, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %18, metadata !2323, metadata !DIExpression()), !dbg !2325
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %19, metadata !2324, metadata !DIExpression()), !dbg !2325
  %20 = load i32, ptr %5, align 8, !dbg !2338, !tbaa !1624
  %21 = load ptr, ptr %13, align 8, !dbg !2339, !tbaa !1695
  %22 = load ptr, ptr %15, align 8, !dbg !2340, !tbaa !1698
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2341
  store i32 %7, ptr %6, align 4, !dbg !2342, !tbaa !812
  ret ptr %19, !dbg !2343
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2313 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2312, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2317, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2318, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2319, metadata !DIExpression()), !dbg !2344
  %5 = icmp eq ptr %3, null, !dbg !2345
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2345
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2320, metadata !DIExpression()), !dbg !2344
  %7 = tail call ptr @__errno_location() #40, !dbg !2346
  %8 = load i32, ptr %7, align 4, !dbg !2346, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2321, metadata !DIExpression()), !dbg !2344
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2347
  %10 = load i32, ptr %9, align 4, !dbg !2347, !tbaa !1674
  %11 = icmp eq ptr %2, null, !dbg !2348
  %12 = zext i1 %11 to i32, !dbg !2348
  %13 = or i32 %10, %12, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2322, metadata !DIExpression()), !dbg !2344
  %14 = load i32, ptr %6, align 8, !dbg !2350, !tbaa !1624
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2351
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2352
  %17 = load ptr, ptr %16, align 8, !dbg !2352, !tbaa !1695
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2353
  %19 = load ptr, ptr %18, align 8, !dbg !2353, !tbaa !1698
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2354
  %21 = add i64 %20, 1, !dbg !2355
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2323, metadata !DIExpression()), !dbg !2344
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2356
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2324, metadata !DIExpression()), !dbg !2344
  %23 = load i32, ptr %6, align 8, !dbg !2357, !tbaa !1624
  %24 = load ptr, ptr %16, align 8, !dbg !2358, !tbaa !1695
  %25 = load ptr, ptr %18, align 8, !dbg !2359, !tbaa !1698
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2360
  store i32 %8, ptr %7, align 4, !dbg !2361, !tbaa !812
  br i1 %11, label %28, label %27, !dbg !2362

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2363, !tbaa !2365
  br label %28, !dbg !2366

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2367
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2368 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2373, !tbaa !775
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2370, metadata !DIExpression()), !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2371, metadata !DIExpression()), !dbg !2375
  %2 = load i32, ptr @nslots, align 4, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2371, metadata !DIExpression()), !dbg !2375
  %3 = icmp sgt i32 %2, 1, !dbg !2376
  br i1 %3, label %4, label %6, !dbg !2378

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2376
  br label %10, !dbg !2378

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2379
  %8 = load ptr, ptr %7, align 8, !dbg !2379, !tbaa !2381
  %9 = icmp eq ptr %8, @slot0, !dbg !2383
  br i1 %9, label %17, label %16, !dbg !2384

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2371, metadata !DIExpression()), !dbg !2375
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2385
  %13 = load ptr, ptr %12, align 8, !dbg !2385, !tbaa !2381
  tail call void @free(ptr noundef %13) #38, !dbg !2386
  %14 = add nuw nsw i64 %11, 1, !dbg !2387
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2371, metadata !DIExpression()), !dbg !2375
  %15 = icmp eq i64 %14, %5, !dbg !2376
  br i1 %15, label %6, label %10, !dbg !2378, !llvm.loop !2388

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2390
  store i64 256, ptr @slotvec0, align 8, !dbg !2392, !tbaa !2393
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2394, !tbaa !2381
  br label %17, !dbg !2395

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2396
  br i1 %18, label %20, label %19, !dbg !2398

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2399
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2401, !tbaa !775
  br label %20, !dbg !2402

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2403, !tbaa !812
  ret void, !dbg !2404
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2405 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2408 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2412
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2411, metadata !DIExpression()), !dbg !2412
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2413
  ret ptr %3, !dbg !2414
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2415 {
  %5 = alloca i64, align 8, !DIAssignID !2435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2429, metadata !DIExpression(), metadata !2435, metadata ptr %5, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2419, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2420, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2421, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2422, metadata !DIExpression()), !dbg !2437
  %6 = tail call ptr @__errno_location() #40, !dbg !2438
  %7 = load i32, ptr %6, align 4, !dbg !2438, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2423, metadata !DIExpression()), !dbg !2437
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2439, !tbaa !775
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2424, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2425, metadata !DIExpression()), !dbg !2437
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2440
  br i1 %9, label %10, label %11, !dbg !2440

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2442
  unreachable, !dbg !2442

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2443, !tbaa !812
  %13 = icmp sgt i32 %12, %0, !dbg !2444
  br i1 %13, label %32, label %14, !dbg !2445

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2446
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2426, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2436
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2447
  %16 = sext i32 %12 to i64, !dbg !2448
  store i64 %16, ptr %5, align 8, !dbg !2449, !tbaa !2365, !DIAssignID !2450
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2429, metadata !DIExpression(), metadata !2450, metadata ptr %5, metadata !DIExpression()), !dbg !2436
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2451
  %18 = add nuw nsw i32 %0, 1, !dbg !2452
  %19 = sub i32 %18, %12, !dbg !2453
  %20 = sext i32 %19 to i64, !dbg !2454
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2455
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2424, metadata !DIExpression()), !dbg !2437
  store ptr %21, ptr @slotvec, align 8, !dbg !2456, !tbaa !775
  br i1 %15, label %22, label %23, !dbg !2457

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2458, !tbaa.struct !2460
  br label %23, !dbg !2461

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2462, !tbaa !812
  %25 = sext i32 %24 to i64, !dbg !2463
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2463
  %27 = load i64, ptr %5, align 8, !dbg !2464, !tbaa !2365
  %28 = sub nsw i64 %27, %25, !dbg !2465
  %29 = shl i64 %28, 4, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %26, metadata !1838, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %29, metadata !1842, metadata !DIExpression()), !dbg !2467
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2469
  %30 = load i64, ptr %5, align 8, !dbg !2470, !tbaa !2365
  %31 = trunc i64 %30 to i32, !dbg !2470
  store i32 %31, ptr @nslots, align 4, !dbg !2471, !tbaa !812
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2472
  br label %32, !dbg !2473

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2437
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2424, metadata !DIExpression()), !dbg !2437
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2474
  %36 = load i64, ptr %35, align 8, !dbg !2475, !tbaa !2393
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2430, metadata !DIExpression()), !dbg !2476
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2477
  %38 = load ptr, ptr %37, align 8, !dbg !2477, !tbaa !2381
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2432, metadata !DIExpression()), !dbg !2476
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2478
  %40 = load i32, ptr %39, align 4, !dbg !2478, !tbaa !1674
  %41 = or i32 %40, 1, !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2433, metadata !DIExpression()), !dbg !2476
  %42 = load i32, ptr %3, align 8, !dbg !2480, !tbaa !1624
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2481
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2482
  %45 = load ptr, ptr %44, align 8, !dbg !2482, !tbaa !1695
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2483
  %47 = load ptr, ptr %46, align 8, !dbg !2483, !tbaa !1698
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2484
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2434, metadata !DIExpression()), !dbg !2476
  %49 = icmp ugt i64 %36, %48, !dbg !2485
  br i1 %49, label %60, label %50, !dbg !2487

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2488
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2430, metadata !DIExpression()), !dbg !2476
  store i64 %51, ptr %35, align 8, !dbg !2490, !tbaa !2393
  %52 = icmp eq ptr %38, @slot0, !dbg !2491
  br i1 %52, label %54, label %53, !dbg !2493

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2494
  br label %54, !dbg !2494

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2432, metadata !DIExpression()), !dbg !2476
  store ptr %55, ptr %37, align 8, !dbg !2496, !tbaa !2381
  %56 = load i32, ptr %3, align 8, !dbg !2497, !tbaa !1624
  %57 = load ptr, ptr %44, align 8, !dbg !2498, !tbaa !1695
  %58 = load ptr, ptr %46, align 8, !dbg !2499, !tbaa !1698
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2500
  br label %60, !dbg !2501

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2476
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2432, metadata !DIExpression()), !dbg !2476
  store i32 %7, ptr %6, align 4, !dbg !2502, !tbaa !812
  ret ptr %61, !dbg !2503
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2504 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2508, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2509, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2510, metadata !DIExpression()), !dbg !2511
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2512
  ret ptr %4, !dbg !2513
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata ptr %0, metadata !2411, metadata !DIExpression()), !dbg !2518
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2520
  ret ptr %2, !dbg !2521
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2508, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %0, metadata !2509, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i64 %1, metadata !2510, metadata !DIExpression()), !dbg !2529
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2531
  ret ptr %3, !dbg !2532
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2533 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2541
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2541, metadata ptr %4, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2537, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2538, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2544), !dbg !2547
  call void @llvm.dbg.value(metadata i32 %1, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2553, metadata !DIExpression()), !dbg !2556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2556, !alias.scope !2544, !DIAssignID !2557
  call void @llvm.dbg.assign(metadata i8 0, metadata !2540, metadata !DIExpression(), metadata !2557, metadata ptr %4, metadata !DIExpression()), !dbg !2542
  %5 = icmp eq i32 %1, 10, !dbg !2558
  br i1 %5, label %6, label %7, !dbg !2560

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2561, !noalias !2544
  unreachable, !dbg !2561

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2562, !tbaa !1624, !alias.scope !2544, !DIAssignID !2563
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2540, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2563, metadata ptr %4, metadata !DIExpression()), !dbg !2542
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2565
  ret ptr %8, !dbg !2566
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2567 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2576
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2575, metadata !DIExpression(), metadata !2576, metadata ptr %5, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2572, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2573, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2579), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %1, metadata !2548, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2553, metadata !DIExpression()), !dbg !2585
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2585, !alias.scope !2579, !DIAssignID !2586
  call void @llvm.dbg.assign(metadata i8 0, metadata !2575, metadata !DIExpression(), metadata !2586, metadata ptr %5, metadata !DIExpression()), !dbg !2577
  %6 = icmp eq i32 %1, 10, !dbg !2587
  br i1 %6, label %7, label %8, !dbg !2588

7:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2589, !noalias !2579
  unreachable, !dbg !2589

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2590, !tbaa !1624, !alias.scope !2579, !DIAssignID !2591
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2591, metadata ptr %5, metadata !DIExpression()), !dbg !2577
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2592
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2593
  ret ptr %9, !dbg !2594
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2595 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2601
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2599, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2540, metadata !DIExpression(), metadata !2601, metadata ptr %3, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2537, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %1, metadata !2539, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2553, metadata !DIExpression()), !dbg !2612
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2612, !alias.scope !2606, !DIAssignID !2613
  call void @llvm.dbg.assign(metadata i8 0, metadata !2540, metadata !DIExpression(), metadata !2613, metadata ptr %3, metadata !DIExpression()), !dbg !2603
  %4 = icmp eq i32 %0, 10, !dbg !2614
  br i1 %4, label %5, label %6, !dbg !2615

5:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2616, !noalias !2606
  unreachable, !dbg !2616

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2617, !tbaa !1624, !alias.scope !2606, !DIAssignID !2618
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2540, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2618, metadata ptr %3, metadata !DIExpression()), !dbg !2603
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2619
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2620
  ret ptr %7, !dbg !2621
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2622 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2629
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2627, metadata !DIExpression()), !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2575, metadata !DIExpression(), metadata !2629, metadata ptr %4, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2571, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %1, metadata !2573, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 %2, metadata !2574, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2634), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2553, metadata !DIExpression()), !dbg !2640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2640, !alias.scope !2634, !DIAssignID !2641
  call void @llvm.dbg.assign(metadata i8 0, metadata !2575, metadata !DIExpression(), metadata !2641, metadata ptr %4, metadata !DIExpression()), !dbg !2631
  %5 = icmp eq i32 %0, 10, !dbg !2642
  br i1 %5, label %6, label %7, !dbg !2643

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2644, !noalias !2634
  unreachable, !dbg !2644

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2645, !tbaa !1624, !alias.scope !2634, !DIAssignID !2646
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2646, metadata ptr %4, metadata !DIExpression()), !dbg !2631
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2647
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2648
  ret ptr %8, !dbg !2649
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2650 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2658, metadata ptr %4, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2655, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2661, !tbaa.struct !2662, !DIAssignID !2663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2663, metadata ptr %4, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1641, metadata !DIExpression()), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1642, metadata !DIExpression()), !dbg !2664
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1643, metadata !DIExpression()), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1644, metadata !DIExpression()), !dbg !2664
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2666
  %6 = lshr i8 %2, 5, !dbg !2667
  %7 = zext nneg i8 %6 to i64, !dbg !2667
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1645, metadata !DIExpression()), !dbg !2664
  %9 = and i8 %2, 31, !dbg !2669
  %10 = zext nneg i8 %9 to i32, !dbg !2669
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1647, metadata !DIExpression()), !dbg !2664
  %11 = load i32, ptr %8, align 4, !dbg !2670, !tbaa !812
  %12 = lshr i32 %11, %10, !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1648, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2664
  %13 = and i32 %12, 1, !dbg !2672
  %14 = xor i32 %13, 1, !dbg !2672
  %15 = shl nuw i32 %14, %10, !dbg !2673
  %16 = xor i32 %15, %11, !dbg !2674
  store i32 %16, ptr %8, align 4, !dbg !2674, !tbaa !812
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2675
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2676
  ret ptr %17, !dbg !2677
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2678 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2682, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2684, metadata ptr %3, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 -1, metadata !2655, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 %1, metadata !2656, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2689, !tbaa.struct !2662, !DIAssignID !2690
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2690, metadata ptr %3, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %3, metadata !1641, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %1, metadata !1642, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 1, metadata !1643, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %1, metadata !1644, metadata !DIExpression()), !dbg !2691
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2693
  %5 = lshr i8 %1, 5, !dbg !2694
  %6 = zext nneg i8 %5 to i64, !dbg !2694
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2695
  call void @llvm.dbg.value(metadata ptr %7, metadata !1645, metadata !DIExpression()), !dbg !2691
  %8 = and i8 %1, 31, !dbg !2696
  %9 = zext nneg i8 %8 to i32, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %9, metadata !1647, metadata !DIExpression()), !dbg !2691
  %10 = load i32, ptr %7, align 4, !dbg !2697, !tbaa !812
  %11 = lshr i32 %10, %9, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %11, metadata !1648, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2691
  %12 = and i32 %11, 1, !dbg !2699
  %13 = xor i32 %12, 1, !dbg !2699
  %14 = shl nuw i32 %13, %9, !dbg !2700
  %15 = xor i32 %14, %10, !dbg !2701
  store i32 %15, ptr %7, align 4, !dbg !2701, !tbaa !812
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2702
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2703
  ret ptr %16, !dbg !2704
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2705 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2708
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %0, metadata !2682, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 58, metadata !2683, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2708, metadata ptr %2, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i64 -1, metadata !2655, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 58, metadata !2656, metadata !DIExpression()), !dbg !2712
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2715, !tbaa.struct !2662, !DIAssignID !2716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2716, metadata ptr %2, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !1642, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 1, metadata !1643, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !1644, metadata !DIExpression()), !dbg !2717
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2719
  call void @llvm.dbg.value(metadata ptr %3, metadata !1645, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 26, metadata !1647, metadata !DIExpression()), !dbg !2717
  %4 = load i32, ptr %3, align 4, !dbg !2720, !tbaa !812
  call void @llvm.dbg.value(metadata i32 %4, metadata !1648, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2717
  %5 = or i32 %4, 67108864, !dbg !2721
  store i32 %5, ptr %3, align 4, !dbg !2721, !tbaa !812
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2722
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2723
  ret ptr %6, !dbg !2724
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2725 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2729
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2727, metadata !DIExpression()), !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2729, metadata ptr %3, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %1, metadata !2655, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 58, metadata !2656, metadata !DIExpression()), !dbg !2731
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2734, !tbaa.struct !2662, !DIAssignID !2735
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2657, metadata !DIExpression(), metadata !2735, metadata ptr %3, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %3, metadata !1641, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8 58, metadata !1642, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 1, metadata !1643, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8 58, metadata !1644, metadata !DIExpression()), !dbg !2736
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %4, metadata !1645, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 26, metadata !1647, metadata !DIExpression()), !dbg !2736
  %5 = load i32, ptr %4, align 4, !dbg !2739, !tbaa !812
  call void @llvm.dbg.value(metadata i32 %5, metadata !1648, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2736
  %6 = or i32 %5, 67108864, !dbg !2740
  store i32 %6, ptr %4, align 4, !dbg !2740, !tbaa !812
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2741
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2742
  ret ptr %7, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2744 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2749, metadata !DIExpression(), metadata !2750, metadata ptr %4, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2553, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2747, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %1, metadata !2548, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2553, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2755
  %5 = icmp eq i32 %1, 10, !dbg !2756
  br i1 %5, label %6, label %7, !dbg !2757

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2758, !noalias !2759
  unreachable, !dbg !2758

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2553, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2755
  store i32 %1, ptr %4, align 8, !dbg !2762, !tbaa.struct !2662, !DIAssignID !2763
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2762
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2762
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2763, metadata ptr %4, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2764, metadata ptr %8, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1641, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1642, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1643, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1644, metadata !DIExpression()), !dbg !2765
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2767
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1645, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1647, metadata !DIExpression()), !dbg !2765
  %10 = load i32, ptr %9, align 4, !dbg !2768, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1648, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2765
  %11 = or i32 %10, 67108864, !dbg !2769
  store i32 %11, ptr %9, align 4, !dbg !2769, !tbaa !812, !DIAssignID !2770
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2749, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2770, metadata ptr %9, metadata !DIExpression()), !dbg !2751
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2771
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2772
  ret ptr %12, !dbg !2773
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2774 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2782
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2783
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2779, metadata !DIExpression()), !dbg !2783
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2780, metadata !DIExpression()), !dbg !2783
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2782, metadata ptr %5, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %0, metadata !2789, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %1, metadata !2790, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %2, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %3, metadata !2792, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 -1, metadata !2793, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2797, !tbaa.struct !2662, !DIAssignID !2798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2798, metadata ptr %5, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2799, metadata ptr undef, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %5, metadata !1681, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %1, metadata !1682, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %2, metadata !1683, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %5, metadata !1681, metadata !DIExpression()), !dbg !2800
  store i32 10, ptr %5, align 8, !dbg !2802, !tbaa !1624, !DIAssignID !2803
  call void @llvm.dbg.assign(metadata i32 10, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2803, metadata ptr %5, metadata !DIExpression()), !dbg !2794
  %6 = icmp ne ptr %1, null, !dbg !2804
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2805
  br i1 %8, label %10, label %9, !dbg !2805

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2806
  unreachable, !dbg !2806

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2807
  store ptr %1, ptr %11, align 8, !dbg !2808, !tbaa !1695, !DIAssignID !2809
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2809, metadata ptr %11, metadata !DIExpression()), !dbg !2794
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2810
  store ptr %2, ptr %12, align 8, !dbg !2811, !tbaa !1698, !DIAssignID !2812
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2812, metadata ptr %12, metadata !DIExpression()), !dbg !2794
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2813
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2814
  ret ptr %13, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2785 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2816, metadata ptr %6, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2789, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2790, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2791, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2792, metadata !DIExpression()), !dbg !2817
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2793, metadata !DIExpression()), !dbg !2817
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2819, !tbaa.struct !2662, !DIAssignID !2820
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2820, metadata ptr %6, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2821, metadata ptr undef, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %6, metadata !1681, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %1, metadata !1682, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %2, metadata !1683, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %6, metadata !1681, metadata !DIExpression()), !dbg !2822
  store i32 10, ptr %6, align 8, !dbg !2824, !tbaa !1624, !DIAssignID !2825
  call void @llvm.dbg.assign(metadata i32 10, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2825, metadata ptr %6, metadata !DIExpression()), !dbg !2817
  %7 = icmp ne ptr %1, null, !dbg !2826
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2827
  br i1 %9, label %11, label %10, !dbg !2827

10:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2828
  unreachable, !dbg !2828

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2829
  store ptr %1, ptr %12, align 8, !dbg !2830, !tbaa !1695, !DIAssignID !2831
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2831, metadata ptr %12, metadata !DIExpression()), !dbg !2817
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2832
  store ptr %2, ptr %13, align 8, !dbg !2833, !tbaa !1698, !DIAssignID !2834
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2834, metadata ptr %13, metadata !DIExpression()), !dbg !2817
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2835
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2836
  ret ptr %14, !dbg !2837
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2838 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2845
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2846
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2843, metadata !DIExpression()), !dbg !2846
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %1, metadata !2780, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %2, metadata !2781, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2845, metadata ptr %4, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 0, metadata !2789, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %0, metadata !2790, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %2, metadata !2792, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 -1, metadata !2793, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2852, !tbaa.struct !2662, !DIAssignID !2853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2853, metadata ptr %4, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2854, metadata ptr undef, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %4, metadata !1681, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata ptr %0, metadata !1682, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata ptr %4, metadata !1681, metadata !DIExpression()), !dbg !2855
  store i32 10, ptr %4, align 8, !dbg !2857, !tbaa !1624, !DIAssignID !2858
  call void @llvm.dbg.assign(metadata i32 10, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2858, metadata ptr %4, metadata !DIExpression()), !dbg !2849
  %5 = icmp ne ptr %0, null, !dbg !2859
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2860
  br i1 %7, label %9, label %8, !dbg !2860

8:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2861
  unreachable, !dbg !2861

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2862
  store ptr %0, ptr %10, align 8, !dbg !2863, !tbaa !1695, !DIAssignID !2864
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2864, metadata ptr %10, metadata !DIExpression()), !dbg !2849
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2865
  store ptr %1, ptr %11, align 8, !dbg !2866, !tbaa !1698, !DIAssignID !2867
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2867, metadata ptr %11, metadata !DIExpression()), !dbg !2849
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2868
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2869
  ret ptr %12, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2871 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2879
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2875, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2876, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2877, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2879, metadata ptr %5, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2789, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %0, metadata !2790, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %2, metadata !2792, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %3, metadata !2793, metadata !DIExpression()), !dbg !2881
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2884, !tbaa.struct !2662, !DIAssignID !2885
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(), metadata !2885, metadata ptr %5, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2886, metadata ptr undef, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %5, metadata !1681, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata ptr %0, metadata !1682, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata ptr %1, metadata !1683, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata ptr %5, metadata !1681, metadata !DIExpression()), !dbg !2887
  store i32 10, ptr %5, align 8, !dbg !2889, !tbaa !1624, !DIAssignID !2890
  call void @llvm.dbg.assign(metadata i32 10, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2890, metadata ptr %5, metadata !DIExpression()), !dbg !2881
  %6 = icmp ne ptr %0, null, !dbg !2891
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2892
  br i1 %8, label %10, label %9, !dbg !2892

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2893
  unreachable, !dbg !2893

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2894
  store ptr %0, ptr %11, align 8, !dbg !2895, !tbaa !1695, !DIAssignID !2896
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2896, metadata ptr %11, metadata !DIExpression()), !dbg !2881
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2897
  store ptr %1, ptr %12, align 8, !dbg !2898, !tbaa !1698, !DIAssignID !2899
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2784, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2899, metadata ptr %12, metadata !DIExpression()), !dbg !2881
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2900
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2901
  ret ptr %13, !dbg !2902
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2903 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()), !dbg !2910
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2908, metadata !DIExpression()), !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2909, metadata !DIExpression()), !dbg !2910
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2911
  ret ptr %4, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2913 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2919
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2907, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata ptr %0, metadata !2908, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !2920
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2922
  ret ptr %3, !dbg !2923
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2924 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2930
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2929, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %1, metadata !2908, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()), !dbg !2931
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2933
  ret ptr %3, !dbg !2934
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2935 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32 0, metadata !2928, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2907, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %0, metadata !2908, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()), !dbg !2943
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2945
  ret ptr %2, !dbg !2946
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2947 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2986, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2987, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2988, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2989, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2991, metadata !DIExpression()), !dbg !2992
  %7 = icmp eq ptr %1, null, !dbg !2993
  br i1 %7, label %10, label %8, !dbg !2995

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !2996
  br label %12, !dbg !2996

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #38, !dbg !2997
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #38, !dbg !2998
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !2998
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2999
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #38, !dbg !3000
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #38, !dbg !3000
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !3001
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
  ], !dbg !3002

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #38, !dbg !3003
  %21 = load ptr, ptr %4, align 8, !dbg !3003, !tbaa !775
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3003
  br label %147, !dbg !3005

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #38, !dbg !3006
  %25 = load ptr, ptr %4, align 8, !dbg !3006, !tbaa !775
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3006
  %27 = load ptr, ptr %26, align 8, !dbg !3006, !tbaa !775
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3006
  br label %147, !dbg !3007

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #38, !dbg !3008
  %31 = load ptr, ptr %4, align 8, !dbg !3008, !tbaa !775
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3008
  %33 = load ptr, ptr %32, align 8, !dbg !3008, !tbaa !775
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3008
  %35 = load ptr, ptr %34, align 8, !dbg !3008, !tbaa !775
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3008
  br label %147, !dbg !3009

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #38, !dbg !3010
  %39 = load ptr, ptr %4, align 8, !dbg !3010, !tbaa !775
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3010
  %41 = load ptr, ptr %40, align 8, !dbg !3010, !tbaa !775
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3010
  %43 = load ptr, ptr %42, align 8, !dbg !3010, !tbaa !775
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3010
  %45 = load ptr, ptr %44, align 8, !dbg !3010, !tbaa !775
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3010
  br label %147, !dbg !3011

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #38, !dbg !3012
  %49 = load ptr, ptr %4, align 8, !dbg !3012, !tbaa !775
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3012
  %51 = load ptr, ptr %50, align 8, !dbg !3012, !tbaa !775
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3012
  %53 = load ptr, ptr %52, align 8, !dbg !3012, !tbaa !775
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3012
  %55 = load ptr, ptr %54, align 8, !dbg !3012, !tbaa !775
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3012
  %57 = load ptr, ptr %56, align 8, !dbg !3012, !tbaa !775
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3012
  br label %147, !dbg !3013

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #38, !dbg !3014
  %61 = load ptr, ptr %4, align 8, !dbg !3014, !tbaa !775
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3014
  %63 = load ptr, ptr %62, align 8, !dbg !3014, !tbaa !775
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3014
  %65 = load ptr, ptr %64, align 8, !dbg !3014, !tbaa !775
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3014
  %67 = load ptr, ptr %66, align 8, !dbg !3014, !tbaa !775
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3014
  %69 = load ptr, ptr %68, align 8, !dbg !3014, !tbaa !775
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3014
  %71 = load ptr, ptr %70, align 8, !dbg !3014, !tbaa !775
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3014
  br label %147, !dbg !3015

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #38, !dbg !3016
  %75 = load ptr, ptr %4, align 8, !dbg !3016, !tbaa !775
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3016
  %77 = load ptr, ptr %76, align 8, !dbg !3016, !tbaa !775
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3016
  %79 = load ptr, ptr %78, align 8, !dbg !3016, !tbaa !775
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3016
  %81 = load ptr, ptr %80, align 8, !dbg !3016, !tbaa !775
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3016
  %83 = load ptr, ptr %82, align 8, !dbg !3016, !tbaa !775
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3016
  %85 = load ptr, ptr %84, align 8, !dbg !3016, !tbaa !775
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3016
  %87 = load ptr, ptr %86, align 8, !dbg !3016, !tbaa !775
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3016
  br label %147, !dbg !3017

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #38, !dbg !3018
  %91 = load ptr, ptr %4, align 8, !dbg !3018, !tbaa !775
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3018
  %93 = load ptr, ptr %92, align 8, !dbg !3018, !tbaa !775
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3018
  %95 = load ptr, ptr %94, align 8, !dbg !3018, !tbaa !775
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3018
  %97 = load ptr, ptr %96, align 8, !dbg !3018, !tbaa !775
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3018
  %99 = load ptr, ptr %98, align 8, !dbg !3018, !tbaa !775
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3018
  %101 = load ptr, ptr %100, align 8, !dbg !3018, !tbaa !775
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3018
  %103 = load ptr, ptr %102, align 8, !dbg !3018, !tbaa !775
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3018
  %105 = load ptr, ptr %104, align 8, !dbg !3018, !tbaa !775
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3018
  br label %147, !dbg !3019

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #38, !dbg !3020
  %109 = load ptr, ptr %4, align 8, !dbg !3020, !tbaa !775
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3020
  %111 = load ptr, ptr %110, align 8, !dbg !3020, !tbaa !775
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3020
  %113 = load ptr, ptr %112, align 8, !dbg !3020, !tbaa !775
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3020
  %115 = load ptr, ptr %114, align 8, !dbg !3020, !tbaa !775
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3020
  %117 = load ptr, ptr %116, align 8, !dbg !3020, !tbaa !775
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3020
  %119 = load ptr, ptr %118, align 8, !dbg !3020, !tbaa !775
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3020
  %121 = load ptr, ptr %120, align 8, !dbg !3020, !tbaa !775
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3020
  %123 = load ptr, ptr %122, align 8, !dbg !3020, !tbaa !775
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3020
  %125 = load ptr, ptr %124, align 8, !dbg !3020, !tbaa !775
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3020
  br label %147, !dbg !3021

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #38, !dbg !3022
  %129 = load ptr, ptr %4, align 8, !dbg !3022, !tbaa !775
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3022
  %131 = load ptr, ptr %130, align 8, !dbg !3022, !tbaa !775
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3022
  %133 = load ptr, ptr %132, align 8, !dbg !3022, !tbaa !775
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3022
  %135 = load ptr, ptr %134, align 8, !dbg !3022, !tbaa !775
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3022
  %137 = load ptr, ptr %136, align 8, !dbg !3022, !tbaa !775
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3022
  %139 = load ptr, ptr %138, align 8, !dbg !3022, !tbaa !775
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3022
  %141 = load ptr, ptr %140, align 8, !dbg !3022, !tbaa !775
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3022
  %143 = load ptr, ptr %142, align 8, !dbg !3022, !tbaa !775
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3022
  %145 = load ptr, ptr %144, align 8, !dbg !3022, !tbaa !775
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3022
  br label %147, !dbg !3023

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3024
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3025 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3030, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3031, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3032, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3033, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3034, metadata !DIExpression()), !dbg !3035
  br label %6, !dbg !3036

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3038
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3034, metadata !DIExpression()), !dbg !3035
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3039
  %9 = load ptr, ptr %8, align 8, !dbg !3039, !tbaa !775
  %10 = icmp eq ptr %9, null, !dbg !3041
  %11 = add i64 %7, 1, !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3034, metadata !DIExpression()), !dbg !3035
  br i1 %10, label %12, label %6, !dbg !3041, !llvm.loop !3043

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3045
  ret void, !dbg !3046
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3047 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3066
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3066, metadata ptr %6, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3059, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3060, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3061, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3062, metadata !DIExpression()), !dbg !3067
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3063, metadata !DIExpression()), !dbg !3067
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3063, metadata !DIExpression()), !dbg !3067
  %10 = icmp ult i32 %9, 41, !dbg !3069
  br i1 %10, label %11, label %16, !dbg !3069

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3069
  %13 = zext nneg i32 %9 to i64, !dbg !3069
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3069
  %15 = add nuw nsw i32 %9, 8, !dbg !3069
  store i32 %15, ptr %4, align 8, !dbg !3069
  br label %19, !dbg !3069

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3069
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3069
  store ptr %18, ptr %7, align 8, !dbg !3069
  br label %19, !dbg !3069

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3069
  %22 = load ptr, ptr %21, align 8, !dbg !3069
  store ptr %22, ptr %6, align 16, !dbg !3072, !tbaa !775
  %23 = icmp eq ptr %22, null, !dbg !3073
  br i1 %23, label %128, label %24, !dbg !3074

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3063, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3063, metadata !DIExpression()), !dbg !3067
  %25 = icmp ult i32 %20, 41, !dbg !3069
  br i1 %25, label %29, label %26, !dbg !3069

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3069
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3069
  store ptr %28, ptr %7, align 8, !dbg !3069
  br label %34, !dbg !3069

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3069
  %31 = zext nneg i32 %20 to i64, !dbg !3069
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3069
  %33 = add nuw nsw i32 %20, 8, !dbg !3069
  store i32 %33, ptr %4, align 8, !dbg !3069
  br label %34, !dbg !3069

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3069
  %37 = load ptr, ptr %36, align 8, !dbg !3069
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3075
  store ptr %37, ptr %38, align 8, !dbg !3072, !tbaa !775
  %39 = icmp eq ptr %37, null, !dbg !3073
  br i1 %39, label %128, label %40, !dbg !3074

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3063, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3063, metadata !DIExpression()), !dbg !3067
  %41 = icmp ult i32 %35, 41, !dbg !3069
  br i1 %41, label %45, label %42, !dbg !3069

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3069
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3069
  store ptr %44, ptr %7, align 8, !dbg !3069
  br label %50, !dbg !3069

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3069
  %47 = zext nneg i32 %35 to i64, !dbg !3069
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3069
  %49 = add nuw nsw i32 %35, 8, !dbg !3069
  store i32 %49, ptr %4, align 8, !dbg !3069
  br label %50, !dbg !3069

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3069
  %53 = load ptr, ptr %52, align 8, !dbg !3069
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3075
  store ptr %53, ptr %54, align 16, !dbg !3072, !tbaa !775
  %55 = icmp eq ptr %53, null, !dbg !3073
  br i1 %55, label %128, label %56, !dbg !3074

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3063, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3063, metadata !DIExpression()), !dbg !3067
  %57 = icmp ult i32 %51, 41, !dbg !3069
  br i1 %57, label %61, label %58, !dbg !3069

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3069
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3069
  store ptr %60, ptr %7, align 8, !dbg !3069
  br label %66, !dbg !3069

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3069
  %63 = zext nneg i32 %51 to i64, !dbg !3069
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3069
  %65 = add nuw nsw i32 %51, 8, !dbg !3069
  store i32 %65, ptr %4, align 8, !dbg !3069
  br label %66, !dbg !3069

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3069
  %69 = load ptr, ptr %68, align 8, !dbg !3069
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3075
  store ptr %69, ptr %70, align 8, !dbg !3072, !tbaa !775
  %71 = icmp eq ptr %69, null, !dbg !3073
  br i1 %71, label %128, label %72, !dbg !3074

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3063, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3063, metadata !DIExpression()), !dbg !3067
  %73 = icmp ult i32 %67, 41, !dbg !3069
  br i1 %73, label %77, label %74, !dbg !3069

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3069
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3069
  store ptr %76, ptr %7, align 8, !dbg !3069
  br label %82, !dbg !3069

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3069
  %79 = zext nneg i32 %67 to i64, !dbg !3069
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3069
  %81 = add nuw nsw i32 %67, 8, !dbg !3069
  store i32 %81, ptr %4, align 8, !dbg !3069
  br label %82, !dbg !3069

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3069
  %85 = load ptr, ptr %84, align 8, !dbg !3069
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3075
  store ptr %85, ptr %86, align 16, !dbg !3072, !tbaa !775
  %87 = icmp eq ptr %85, null, !dbg !3073
  br i1 %87, label %128, label %88, !dbg !3074

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3063, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3063, metadata !DIExpression()), !dbg !3067
  %89 = icmp ult i32 %83, 41, !dbg !3069
  br i1 %89, label %93, label %90, !dbg !3069

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3069
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3069
  store ptr %92, ptr %7, align 8, !dbg !3069
  br label %98, !dbg !3069

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3069
  %95 = zext nneg i32 %83 to i64, !dbg !3069
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3069
  %97 = add nuw nsw i32 %83, 8, !dbg !3069
  store i32 %97, ptr %4, align 8, !dbg !3069
  br label %98, !dbg !3069

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3069
  %100 = load ptr, ptr %99, align 8, !dbg !3069
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3075
  store ptr %100, ptr %101, align 8, !dbg !3072, !tbaa !775
  %102 = icmp eq ptr %100, null, !dbg !3073
  br i1 %102, label %128, label %103, !dbg !3074

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3063, metadata !DIExpression()), !dbg !3067
  %104 = load ptr, ptr %7, align 8, !dbg !3069
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3069
  store ptr %105, ptr %7, align 8, !dbg !3069
  %106 = load ptr, ptr %104, align 8, !dbg !3069
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3075
  store ptr %106, ptr %107, align 16, !dbg !3072, !tbaa !775
  %108 = icmp eq ptr %106, null, !dbg !3073
  br i1 %108, label %128, label %109, !dbg !3074

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3063, metadata !DIExpression()), !dbg !3067
  %110 = load ptr, ptr %7, align 8, !dbg !3069
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3069
  store ptr %111, ptr %7, align 8, !dbg !3069
  %112 = load ptr, ptr %110, align 8, !dbg !3069
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3075
  store ptr %112, ptr %113, align 8, !dbg !3072, !tbaa !775
  %114 = icmp eq ptr %112, null, !dbg !3073
  br i1 %114, label %128, label %115, !dbg !3074

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3063, metadata !DIExpression()), !dbg !3067
  %116 = load ptr, ptr %7, align 8, !dbg !3069
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3069
  store ptr %117, ptr %7, align 8, !dbg !3069
  %118 = load ptr, ptr %116, align 8, !dbg !3069
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3075
  store ptr %118, ptr %119, align 16, !dbg !3072, !tbaa !775
  %120 = icmp eq ptr %118, null, !dbg !3073
  br i1 %120, label %128, label %121, !dbg !3074

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3063, metadata !DIExpression()), !dbg !3067
  %122 = load ptr, ptr %7, align 8, !dbg !3069
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3069
  store ptr %123, ptr %7, align 8, !dbg !3069
  %124 = load ptr, ptr %122, align 8, !dbg !3069
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3075
  store ptr %124, ptr %125, align 8, !dbg !3072, !tbaa !775
  %126 = icmp eq ptr %124, null, !dbg !3073
  %127 = select i1 %126, i64 9, i64 10, !dbg !3074
  br label %128, !dbg !3074

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3076
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3077
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3078
  ret void, !dbg !3078
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3079 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3092
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3087, metadata !DIExpression(), metadata !3092, metadata ptr %5, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3083, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3084, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3094
  call void @llvm.va_start(ptr nonnull %5), !dbg !3095
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3096
  call void @llvm.va_end(ptr nonnull %5), !dbg !3097
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3098
  ret void, !dbg !3098
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3099 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3100, !tbaa !775
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3100
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #38, !dbg !3101
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #38, !dbg !3101
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #38, !dbg !3102
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #38, !dbg !3102
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #38, !dbg !3103
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #38, !dbg !3103
  ret void, !dbg !3104
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3110, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3119
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3121
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3127
  %5 = icmp eq ptr %4, null, !dbg !3129
  br i1 %5, label %6, label %7, !dbg !3131

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3132
  unreachable, !dbg !3132

7:                                                ; preds = %3
  ret ptr %4, !dbg !3133
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3115 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3134
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3135
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3136
  %5 = icmp eq ptr %4, null, !dbg !3138
  br i1 %5, label %6, label %7, !dbg !3139

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3140
  unreachable, !dbg !3140

7:                                                ; preds = %3
  ret ptr %4, !dbg !3141
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3142 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()), !dbg !3147
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3148
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3149
  %3 = icmp eq ptr %2, null, !dbg !3151
  br i1 %3, label %4, label %5, !dbg !3152

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3153
  unreachable, !dbg !3153

5:                                                ; preds = %1
  ret ptr %2, !dbg !3154
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3155 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3156 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %0, metadata !3162, metadata !DIExpression()), !dbg !3166
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3169
  %3 = icmp eq ptr %2, null, !dbg !3171
  br i1 %3, label %4, label %5, !dbg !3172

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3173
  unreachable, !dbg !3173

5:                                                ; preds = %1
  ret ptr %2, !dbg !3174
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3175 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %0, metadata !3146, metadata !DIExpression()), !dbg !3181
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3183
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3184
  %3 = icmp eq ptr %2, null, !dbg !3186
  br i1 %3, label %4, label %5, !dbg !3187

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3188
  unreachable, !dbg !3188

5:                                                ; preds = %1
  ret ptr %2, !dbg !3189
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3190 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3202
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3204
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3205
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3206
  %5 = icmp eq ptr %4, null, !dbg !3208
  br i1 %5, label %6, label %7, !dbg !3209

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3210
  unreachable, !dbg !3210

7:                                                ; preds = %2
  ret ptr %4, !dbg !3211
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3212 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3217, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %0, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3226
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3228
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3230
  %5 = icmp eq ptr %4, null, !dbg !3232
  br i1 %5, label %6, label %7, !dbg !3233

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3234
  unreachable, !dbg !3234

7:                                                ; preds = %2
  ret ptr %4, !dbg !3235
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3236 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3241, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !3244, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %2, metadata !3248, metadata !DIExpression()), !dbg !3249
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3252
  %5 = icmp eq ptr %4, null, !dbg !3254
  br i1 %5, label %6, label %7, !dbg !3255

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3256
  unreachable, !dbg !3256

7:                                                ; preds = %3
  ret ptr %4, !dbg !3257
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3258 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr null, metadata !3114, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3265
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3267
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3268
  %4 = icmp eq ptr %3, null, !dbg !3270
  br i1 %4, label %5, label %6, !dbg !3271

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3272
  unreachable, !dbg !3272

6:                                                ; preds = %2
  ret ptr %3, !dbg !3273
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3274 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3278, metadata !DIExpression()), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr null, metadata !3240, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata ptr null, metadata !3244, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %0, metadata !3247, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3283
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3285
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3286
  %4 = icmp eq ptr %3, null, !dbg !3288
  br i1 %4, label %5, label %6, !dbg !3289

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3290
  unreachable, !dbg !3290

6:                                                ; preds = %2
  ret ptr %3, !dbg !3291
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3292 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3298
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %0, metadata !710, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %1, metadata !711, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 1, metadata !712, metadata !DIExpression()), !dbg !3299
  %3 = load i64, ptr %1, align 8, !dbg !3301, !tbaa !2365
  call void @llvm.dbg.value(metadata i64 %3, metadata !713, metadata !DIExpression()), !dbg !3299
  %4 = icmp eq ptr %0, null, !dbg !3302
  br i1 %4, label %5, label %8, !dbg !3304

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3305
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3308
  br label %15, !dbg !3308

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3309
  %10 = add nuw i64 %9, 1, !dbg !3309
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3309
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3309
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %13, metadata !713, metadata !DIExpression()), !dbg !3299
  br i1 %12, label %14, label %15, !dbg !3312

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3313
  unreachable, !dbg !3313

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3299
  call void @llvm.dbg.value(metadata i64 %16, metadata !713, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %16, metadata !3117, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 1, metadata !3118, metadata !DIExpression()), !dbg !3314
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3316
  call void @llvm.dbg.value(metadata ptr %17, metadata !3122, metadata !DIExpression()), !dbg !3317
  %18 = icmp eq ptr %17, null, !dbg !3319
  br i1 %18, label %19, label %20, !dbg !3320

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3321
  unreachable, !dbg !3321

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !710, metadata !DIExpression()), !dbg !3299
  store i64 %16, ptr %1, align 8, !dbg !3322, !tbaa !2365
  ret ptr %17, !dbg !3323
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !705 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !710, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !711, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !712, metadata !DIExpression()), !dbg !3324
  %4 = load i64, ptr %1, align 8, !dbg !3325, !tbaa !2365
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !713, metadata !DIExpression()), !dbg !3324
  %5 = icmp eq ptr %0, null, !dbg !3326
  br i1 %5, label %6, label %13, !dbg !3327

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3328
  br i1 %7, label %8, label %20, !dbg !3329

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !713, metadata !DIExpression()), !dbg !3324
  %10 = icmp ugt i64 %2, 128, !dbg !3332
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !713, metadata !DIExpression()), !dbg !3324
  br label %20, !dbg !3334

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3335
  %15 = add nuw i64 %14, 1, !dbg !3335
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3335
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3335
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !713, metadata !DIExpression()), !dbg !3324
  br i1 %17, label %19, label %20, !dbg !3336

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3337
  unreachable, !dbg !3337

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !713, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %21, metadata !3117, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3338
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %22, metadata !3122, metadata !DIExpression()), !dbg !3341
  %23 = icmp eq ptr %22, null, !dbg !3343
  br i1 %23, label %24, label %25, !dbg !3344

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3345
  unreachable, !dbg !3345

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !710, metadata !DIExpression()), !dbg !3324
  store i64 %21, ptr %1, align 8, !dbg !3346, !tbaa !2365
  ret ptr %22, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !717 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !726, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !727, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !728, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !729, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !730, metadata !DIExpression()), !dbg !3348
  %6 = load i64, ptr %1, align 8, !dbg !3349, !tbaa !2365
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !731, metadata !DIExpression()), !dbg !3348
  %7 = ashr i64 %6, 1, !dbg !3350
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3350
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3350
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !732, metadata !DIExpression()), !dbg !3348
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !732, metadata !DIExpression()), !dbg !3348
  %12 = icmp sgt i64 %3, -1, !dbg !3353
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3355
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !732, metadata !DIExpression()), !dbg !3348
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3356
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3356
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !733, metadata !DIExpression()), !dbg !3348
  %18 = icmp slt i64 %17, 128, !dbg !3356
  %19 = select i1 %18, i64 128, i64 0, !dbg !3356
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !734, metadata !DIExpression()), !dbg !3348
  %21 = icmp eq i64 %20, 0, !dbg !3357
  br i1 %21, label %26, label %22, !dbg !3359

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !732, metadata !DIExpression()), !dbg !3348
  %24 = srem i64 %20, %4, !dbg !3362
  %25 = sub nsw i64 %20, %24, !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !733, metadata !DIExpression()), !dbg !3348
  br label %26, !dbg !3364

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3348
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !733, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !732, metadata !DIExpression()), !dbg !3348
  %29 = icmp eq ptr %0, null, !dbg !3365
  br i1 %29, label %30, label %31, !dbg !3367

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3368, !tbaa !2365
  br label %31, !dbg !3369

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3370
  %33 = icmp slt i64 %32, %2, !dbg !3372
  br i1 %33, label %34, label %46, !dbg !3373

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3374
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3374
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !732, metadata !DIExpression()), !dbg !3348
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3375
  br i1 %40, label %45, label %41, !dbg !3375

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3376
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3376
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !733, metadata !DIExpression()), !dbg !3348
  br i1 %43, label %45, label %46, !dbg !3377

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #37, !dbg !3378
  unreachable, !dbg !3378

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3348
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !733, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !732, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %48, metadata !3195, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %48, metadata !3201, metadata !DIExpression()), !dbg !3381
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3383
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3384
  call void @llvm.dbg.value(metadata ptr %50, metadata !3122, metadata !DIExpression()), !dbg !3385
  %51 = icmp eq ptr %50, null, !dbg !3387
  br i1 %51, label %52, label %53, !dbg !3388

52:                                               ; preds = %46
  tail call void @xalloc_die() #37, !dbg !3389
  unreachable, !dbg !3389

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !726, metadata !DIExpression()), !dbg !3348
  store i64 %47, ptr %1, align 8, !dbg !3390, !tbaa !2365
  ret ptr %50, !dbg !3391
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3392 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3394, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %0, metadata !3396, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 1, metadata !3399, metadata !DIExpression()), !dbg !3400
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3402
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3403
  %3 = icmp eq ptr %2, null, !dbg !3405
  br i1 %3, label %4, label %5, !dbg !3406

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3407
  unreachable, !dbg !3407

5:                                                ; preds = %1
  ret ptr %2, !dbg !3408
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3409 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3397 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3396, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3399, metadata !DIExpression()), !dbg !3410
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3412
  %4 = icmp eq ptr %3, null, !dbg !3414
  br i1 %4, label %5, label %6, !dbg !3415

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3416
  unreachable, !dbg !3416

6:                                                ; preds = %2
  ret ptr %3, !dbg !3417
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3418 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i64 %0, metadata !3422, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 1, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %0, metadata !3428, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 1, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %0, metadata !3428, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 1, metadata !3431, metadata !DIExpression()), !dbg !3432
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3434
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3435
  %3 = icmp eq ptr %2, null, !dbg !3437
  br i1 %3, label %4, label %5, !dbg !3438

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3439
  unreachable, !dbg !3439

5:                                                ; preds = %1
  ret ptr %2, !dbg !3440
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3423 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3422, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3425, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %0, metadata !3428, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %0, metadata !3428, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3442
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3444
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3445
  %4 = icmp eq ptr %3, null, !dbg !3447
  br i1 %4, label %5, label %6, !dbg !3448

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3449
  unreachable, !dbg !3449

6:                                                ; preds = %2
  ret ptr %3, !dbg !3450
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3451 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3458
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3460
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3461
  %4 = icmp eq ptr %3, null, !dbg !3463
  br i1 %4, label %5, label %6, !dbg !3464

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3465
  unreachable, !dbg !3465

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3466, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3474
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3476
  ret ptr %3, !dbg !3477
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3478 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3482, metadata !DIExpression()), !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3160, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3487
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3489
  call void @llvm.dbg.value(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3490
  %4 = icmp eq ptr %3, null, !dbg !3492
  br i1 %4, label %5, label %6, !dbg !3493

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3494
  unreachable, !dbg !3494

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3466, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3497
  ret ptr %3, !dbg !3498
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3503, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3504, metadata !DIExpression()), !dbg !3506
  %3 = add nsw i64 %1, 1, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %3, metadata !3160, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %3, metadata !3162, metadata !DIExpression()), !dbg !3510
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3513
  %5 = icmp eq ptr %4, null, !dbg !3515
  br i1 %5, label %6, label %7, !dbg !3516

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3517
  unreachable, !dbg !3517

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3505, metadata !DIExpression()), !dbg !3506
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3518
  store i8 0, ptr %8, align 1, !dbg !3519, !tbaa !821
  call void @llvm.dbg.value(metadata ptr %4, metadata !3466, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3522
  ret ptr %4, !dbg !3523
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3524 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3527
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3528
  %3 = add i64 %2, 1, !dbg !3529
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %3, metadata !3456, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %3, metadata !3146, metadata !DIExpression()), !dbg !3532
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %4, metadata !3122, metadata !DIExpression()), !dbg !3535
  %5 = icmp eq ptr %4, null, !dbg !3537
  br i1 %5, label %6, label %7, !dbg !3538

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3539
  unreachable, !dbg !3539

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3466, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i64 %3, metadata !3473, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3542
  ret ptr %4, !dbg !3543
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3544 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3549, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3546, metadata !DIExpression()), !dbg !3550
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #38, !dbg !3549
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #38, !dbg !3549
  %3 = icmp eq i32 %1, 0, !dbg !3549
  tail call void @llvm.assume(i1 %3), !dbg !3549
  tail call void @abort() #37, !dbg !3551
  unreachable, !dbg !3551
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3552 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3590, metadata !DIExpression()), !dbg !3595
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3596
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3591, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3595
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3597, metadata !DIExpression()), !dbg !3600
  %3 = load i32, ptr %0, align 8, !dbg !3602, !tbaa !3603
  %4 = and i32 %3, 32, !dbg !3604
  %5 = icmp eq i32 %4, 0, !dbg !3604
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3593, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3595
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3605
  %7 = icmp eq i32 %6, 0, !dbg !3606
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3594, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3595
  br i1 %5, label %8, label %18, !dbg !3607

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3609
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3591, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3595
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3610
  %11 = xor i1 %7, true, !dbg !3610
  %12 = sext i1 %11 to i32, !dbg !3610
  br i1 %10, label %21, label %13, !dbg !3610

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3611
  %15 = load i32, ptr %14, align 4, !dbg !3611, !tbaa !812
  %16 = icmp ne i32 %15, 9, !dbg !3612
  %17 = sext i1 %16 to i32, !dbg !3613
  br label %21, !dbg !3613

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3614

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3616
  store i32 0, ptr %20, align 4, !dbg !3618, !tbaa !812
  br label %21, !dbg !3616

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3595
  ret i32 %22, !dbg !3619
}

; Function Attrs: nounwind
declare !dbg !3620 i64 @__fpending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3662, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3663, metadata !DIExpression()), !dbg !3666
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3667
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3664, metadata !DIExpression()), !dbg !3666
  %3 = icmp slt i32 %2, 0, !dbg !3668
  br i1 %3, label %4, label %6, !dbg !3670

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3671
  br label %24, !dbg !3672

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3673
  %8 = icmp eq i32 %7, 0, !dbg !3673
  br i1 %8, label %13, label %9, !dbg !3675

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3676
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3677
  %12 = icmp eq i64 %11, -1, !dbg !3678
  br i1 %12, label %16, label %13, !dbg !3679

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3680
  %15 = icmp eq i32 %14, 0, !dbg !3680
  br i1 %15, label %16, label %18, !dbg !3681

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3663, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3665, metadata !DIExpression()), !dbg !3666
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3682
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3665, metadata !DIExpression()), !dbg !3666
  br label %24, !dbg !3683

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3684
  %20 = load i32, ptr %19, align 4, !dbg !3684, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3663, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3665, metadata !DIExpression()), !dbg !3666
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3682
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3665, metadata !DIExpression()), !dbg !3666
  %22 = icmp eq i32 %20, 0, !dbg !3685
  br i1 %22, label %24, label %23, !dbg !3683

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3687, !tbaa !812
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3665, metadata !DIExpression()), !dbg !3666
  br label %24, !dbg !3689

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3666
  ret i32 %25, !dbg !3690
}

; Function Attrs: nofree nounwind
declare !dbg !3691 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !3692 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !3693 i32 @__freading(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3694 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3697 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3736
  %2 = icmp eq ptr %0, null, !dbg !3737
  br i1 %2, label %6, label %3, !dbg !3739

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3740
  %5 = icmp eq i32 %4, 0, !dbg !3740
  br i1 %5, label %6, label %8, !dbg !3741

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3742
  br label %16, !dbg !3743

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3744, metadata !DIExpression()), !dbg !3749
  %9 = load i32, ptr %0, align 8, !dbg !3751, !tbaa !3603
  %10 = and i32 %9, 256, !dbg !3753
  %11 = icmp eq i32 %10, 0, !dbg !3753
  br i1 %11, label %14, label %12, !dbg !3754

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3755
  br label %14, !dbg !3755

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3756
  br label %16, !dbg !3757

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3736
  ret i32 %17, !dbg !3758
}

; Function Attrs: nofree nounwind
declare !dbg !3759 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3799, metadata !DIExpression()), !dbg !3805
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3800, metadata !DIExpression()), !dbg !3805
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3801, metadata !DIExpression()), !dbg !3805
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3806
  %5 = load ptr, ptr %4, align 8, !dbg !3806, !tbaa !3807
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3808
  %7 = load ptr, ptr %6, align 8, !dbg !3808, !tbaa !3809
  %8 = icmp eq ptr %5, %7, !dbg !3810
  br i1 %8, label %9, label %27, !dbg !3811

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3812
  %11 = load ptr, ptr %10, align 8, !dbg !3812, !tbaa !1207
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3813
  %13 = load ptr, ptr %12, align 8, !dbg !3813, !tbaa !3814
  %14 = icmp eq ptr %11, %13, !dbg !3815
  br i1 %14, label %15, label %27, !dbg !3816

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3817
  %17 = load ptr, ptr %16, align 8, !dbg !3817, !tbaa !3818
  %18 = icmp eq ptr %17, null, !dbg !3819
  br i1 %18, label %19, label %27, !dbg !3820

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3821
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3822
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3802, metadata !DIExpression()), !dbg !3823
  %22 = icmp eq i64 %21, -1, !dbg !3824
  br i1 %22, label %29, label %23, !dbg !3826

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3827, !tbaa !3603
  %25 = and i32 %24, -17, !dbg !3827
  store i32 %25, ptr %0, align 8, !dbg !3827, !tbaa !3603
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3828
  store i64 %21, ptr %26, align 8, !dbg !3829, !tbaa !3830
  br label %29, !dbg !3831

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3832
  br label %29, !dbg !3833

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3805
  ret i32 %30, !dbg !3834
}

; Function Attrs: nofree nounwind
declare !dbg !3835 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3838 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3843, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3844, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3845, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3846, metadata !DIExpression()), !dbg !3848
  %5 = icmp eq ptr %1, null, !dbg !3849
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3851
  %7 = select i1 %5, ptr @.str.129, ptr %1, !dbg !3851
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3851
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3845, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3844, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3843, metadata !DIExpression()), !dbg !3848
  %9 = icmp eq ptr %3, null, !dbg !3852
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3854
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3846, metadata !DIExpression()), !dbg !3848
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !3855
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3847, metadata !DIExpression()), !dbg !3848
  %12 = icmp ult i64 %11, -3, !dbg !3856
  br i1 %12, label %13, label %17, !dbg !3858

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3859
  %15 = icmp eq i32 %14, 0, !dbg !3859
  br i1 %15, label %16, label %29, !dbg !3860

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3861, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata ptr %10, metadata !3868, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 0, metadata !3871, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64 8, metadata !3872, metadata !DIExpression()), !dbg !3873
  store i64 0, ptr %10, align 1, !dbg !3875
  br label %29, !dbg !3876

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3877
  br i1 %18, label %19, label %20, !dbg !3879

19:                                               ; preds = %17
  tail call void @abort() #37, !dbg !3880
  unreachable, !dbg !3880

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3881

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !3883
  br i1 %23, label %29, label %24, !dbg !3884

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3885
  br i1 %25, label %29, label %26, !dbg !3888

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3889, !tbaa !821
  %28 = zext i8 %27 to i32, !dbg !3890
  store i32 %28, ptr %6, align 4, !dbg !3891, !tbaa !812
  br label %29, !dbg !3892

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3848
  ret i64 %30, !dbg !3893
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3894 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3900 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3902, metadata !DIExpression()), !dbg !3906
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3903, metadata !DIExpression()), !dbg !3906
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3904, metadata !DIExpression()), !dbg !3906
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3907
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3907
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3905, metadata !DIExpression()), !dbg !3906
  br i1 %5, label %6, label %8, !dbg !3909

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3910
  store i32 12, ptr %7, align 4, !dbg !3912, !tbaa !812
  br label %12, !dbg !3913

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3907
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3905, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata ptr %0, metadata !3914, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i64 %9, metadata !3917, metadata !DIExpression()), !dbg !3918
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3920
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3921
  br label %12, !dbg !3922

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3906
  ret ptr %13, !dbg !3923
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3924 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3931
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3927, metadata !DIExpression(), metadata !3931, metadata ptr %2, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3926, metadata !DIExpression()), !dbg !3932
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !3933
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !3934
  %4 = icmp eq i32 %3, 0, !dbg !3934
  br i1 %4, label %5, label %12, !dbg !3936

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3937, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata !892, metadata !3940, metadata !DIExpression()), !dbg !3941
  %6 = load i16, ptr %2, align 16, !dbg !3944
  %7 = icmp eq i16 %6, 67, !dbg !3944
  br i1 %7, label %11, label %8, !dbg !3945

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3937, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr @.str.1.134, metadata !3940, metadata !DIExpression()), !dbg !3946
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.134, i64 6), !dbg !3948
  %10 = icmp eq i32 %9, 0, !dbg !3949
  br i1 %10, label %11, label %12, !dbg !3950

11:                                               ; preds = %8, %5
  br label %12, !dbg !3951

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3932
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !3952
  ret i1 %13, !dbg !3952
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3953 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3957, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3958, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3959, metadata !DIExpression()), !dbg !3960
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !3961
  ret i32 %4, !dbg !3962
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3963 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3967, metadata !DIExpression()), !dbg !3968
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !3969
  ret ptr %2, !dbg !3970
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3971 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !3975
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3976
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3974, metadata !DIExpression()), !dbg !3975
  ret ptr %2, !dbg !3977
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3978 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3980, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3981, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3982, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !3988
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3990
  call void @llvm.dbg.value(metadata ptr %4, metadata !3974, metadata !DIExpression()), !dbg !3988
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3983, metadata !DIExpression()), !dbg !3987
  %5 = icmp eq ptr %4, null, !dbg !3991
  br i1 %5, label %6, label %9, !dbg !3992

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3993
  br i1 %7, label %19, label %8, !dbg !3996

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3997, !tbaa !821
  br label %19, !dbg !3998

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3999
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3984, metadata !DIExpression()), !dbg !4000
  %11 = icmp ult i64 %10, %2, !dbg !4001
  br i1 %11, label %12, label %14, !dbg !4003

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4004
  call void @llvm.dbg.value(metadata ptr %1, metadata !4006, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %4, metadata !4009, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %13, metadata !4010, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4013
  br label %19, !dbg !4014

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4015
  br i1 %15, label %19, label %16, !dbg !4018

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4019
  call void @llvm.dbg.value(metadata ptr %1, metadata !4006, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata ptr %4, metadata !4009, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %17, metadata !4010, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4023
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4024
  store i8 0, ptr %18, align 1, !dbg !4025, !tbaa !821
  br label %19, !dbg !4026

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4027
  ret i32 %20, !dbg !4028
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!126, !342, !346, !361, !660, !692, !412, !426, !477, !694, !652, !701, !736, !738, !740, !742, !744, !676, !746, !748, !752, !754}
!llvm.ident = !{!756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756, !756}
!llvm.module.flags = !{!757, !758, !759, !760, !761, !762, !763}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/echo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35cdcf3349b867ec9786bdb5dc592ba7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 16)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 63)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 41)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 5)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 45)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 53)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 64)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 50)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 62)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !20, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1832, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 229)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 880, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 110)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 185)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 856, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 107)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !16)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 10)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 24)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 7)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !95, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 14)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !95, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !9, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !121, file: !122, line: 575, type: !150, isLocal: true, isDefinition: true)
!121 = distinct !DISubprogram(name: "oputs_", scope: !122, file: !122, line: 573, type: !123, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !259)
!122 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!123 = !DISubroutineType(cc: DW_CC_nocall, types: !124)
!124 = !{null, !125, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!126 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/echo.o -MD -MP -MF src/.deps/echo.Tpo -c src/echo.c -o src/.echo.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !127, retainedTypes: !147, globals: !156, splitDebugInlining: false, nameTableKind: None)
!127 = !{!128, !132}
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 33, baseType: !129, size: 32, elements: !130)
!129 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!130 = !{!131}
!131 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 46, baseType: !129, size: 32, elements: !134)
!133 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!135 = !DIEnumerator(name: "_ISupper", value: 256)
!136 = !DIEnumerator(name: "_ISlower", value: 512)
!137 = !DIEnumerator(name: "_ISalpha", value: 1024)
!138 = !DIEnumerator(name: "_ISdigit", value: 2048)
!139 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!140 = !DIEnumerator(name: "_ISspace", value: 8192)
!141 = !DIEnumerator(name: "_ISprint", value: 16384)
!142 = !DIEnumerator(name: "_ISgraph", value: 32768)
!143 = !DIEnumerator(name: "_ISblank", value: 1)
!144 = !DIEnumerator(name: "_IScntrl", value: 2)
!145 = !DIEnumerator(name: "_ISpunct", value: 4)
!146 = !DIEnumerator(name: "_ISalnum", value: 8)
!147 = !{!148, !149, !150, !151, !152, !125, !155}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 18, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !53, !58, !60, !65, !70, !75, !80, !83, !88, !93, !98, !103, !108, !110, !115, !117, !119, !157, !159, !161, !166, !171, !176, !178, !180, !182, !184, !186, !188, !190, !195, !197, !199, !201, !203, !208, !213, !218, !223, !225, !227, !229, !231, !233, !238, !240, !242, !247, !252, !257}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !122, line: 585, type: !30, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !122, line: 586, type: !30, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !122, line: 595, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 4)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !122, line: 620, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 6)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !122, line: 648, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 2)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !122, line: 648, type: !30, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !122, line: 649, type: !163, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !122, line: 649, type: !85, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !122, line: 650, type: !30, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !122, line: 651, type: !168, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !122, line: 651, type: !168, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !122, line: 652, type: !105, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !122, line: 653, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !122, line: 654, type: !95, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !122, line: 655, type: !95, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !122, line: 656, type: !95, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !122, line: 657, type: !95, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !122, line: 669, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 17)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !122, line: 669, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 40)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !122, line: 676, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 15)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !122, line: 676, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 61)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !122, line: 679, type: !85, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !122, line: 683, type: !30, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !122, line: 688, type: !30, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !122, line: 691, type: !192, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !122, line: 839, type: !82, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !122, line: 840, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 22)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !122, line: 841, type: !215, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !122, line: 862, type: !163, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !122, line: 868, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 71)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !122, line: 875, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 27)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !122, line: 877, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 51)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !122, line: 877, type: !3, isLocal: true, isDefinition: true)
!259 = !{!260, !261, !262, !265, !267, !268, !269, !273, !274, !275, !276, !278, !331, !332, !333, !335, !336}
!260 = !DILocalVariable(name: "program", arg: 1, scope: !121, file: !122, line: 573, type: !125)
!261 = !DILocalVariable(name: "option", arg: 2, scope: !121, file: !122, line: 573, type: !125)
!262 = !DILocalVariable(name: "term", scope: !263, file: !122, line: 585, type: !125)
!263 = distinct !DILexicalBlock(scope: !264, file: !122, line: 582, column: 5)
!264 = distinct !DILexicalBlock(scope: !121, file: !122, line: 581, column: 7)
!265 = !DILocalVariable(name: "double_space", scope: !121, file: !122, line: 594, type: !266)
!266 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!267 = !DILocalVariable(name: "first_word", scope: !121, file: !122, line: 595, type: !125)
!268 = !DILocalVariable(name: "option_text", scope: !121, file: !122, line: 596, type: !125)
!269 = !DILocalVariable(name: "s", scope: !270, file: !122, line: 608, type: !125)
!270 = distinct !DILexicalBlock(scope: !271, file: !122, line: 605, column: 5)
!271 = distinct !DILexicalBlock(scope: !272, file: !122, line: 604, column: 12)
!272 = distinct !DILexicalBlock(scope: !121, file: !122, line: 597, column: 7)
!273 = !DILocalVariable(name: "spaces", scope: !270, file: !122, line: 609, type: !152)
!274 = !DILocalVariable(name: "anchor_len", scope: !121, file: !122, line: 620, type: !152)
!275 = !DILocalVariable(name: "desc_text", scope: !121, file: !122, line: 625, type: !125)
!276 = !DILocalVariable(name: "__ptr", scope: !277, file: !122, line: 644, type: !125)
!277 = distinct !DILexicalBlock(scope: !121, file: !122, line: 644, column: 3)
!278 = !DILocalVariable(name: "__stream", scope: !277, file: !122, line: 644, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !282)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !284)
!283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !300, !302, !303, !304, !308, !309, !311, !312, !315, !317, !320, !323, !324, !325, !326, !327}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !282, file: !283, line: 51, baseType: !150, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !282, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !282, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !282, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !282, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !282, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !282, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !282, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !282, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !282, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !282, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !282, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !282, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !283, line: 36, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !282, file: !283, line: 70, baseType: !301, size: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !282, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !282, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !282, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !306, line: 152, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!307 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !282, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !282, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!310 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !282, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !282, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !283, line: 43, baseType: null)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !282, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !306, line: 153, baseType: !307)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !282, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !283, line: 37, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !282, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !283, line: 38, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !282, file: !283, line: 93, baseType: !301, size: 64, offset: 1344)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !282, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !282, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !282, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !282, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 20)
!331 = !DILocalVariable(name: "__cnt", scope: !277, file: !122, line: 644, type: !152)
!332 = !DILocalVariable(name: "url_program", scope: !121, file: !122, line: 648, type: !125)
!333 = !DILocalVariable(name: "__ptr", scope: !334, file: !122, line: 686, type: !125)
!334 = distinct !DILexicalBlock(scope: !121, file: !122, line: 686, column: 3)
!335 = !DILocalVariable(name: "__stream", scope: !334, file: !122, line: 686, type: !279)
!336 = !DILocalVariable(name: "__cnt", scope: !334, file: !122, line: 686, type: !152)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !339, line: 3, type: !215, isLocal: true, isDefinition: true)
!339 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "Version", scope: !342, file: !339, line: 3, type: !125, isLocal: false, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C11, file: !339, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !343, splitDebugInlining: false, nameTableKind: None)
!343 = !{!337, !340}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "file_name", scope: !346, file: !347, line: 45, type: !125, isLocal: true, isDefinition: true)
!346 = distinct !DICompileUnit(language: DW_LANG_C11, file: !347, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !348, splitDebugInlining: false, nameTableKind: None)
!347 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!348 = !{!349, !351, !353, !355, !344, !357}
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !347, line: 121, type: !105, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !347, line: 121, type: !3, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !347, line: 123, type: !105, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !347, line: 126, type: !85, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !346, file: !347, line: 55, type: !266, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !361, file: !362, line: 66, type: !407, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C11, file: !362, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, globals: !364, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!363 = !{!149, !155}
!364 = !{!365, !367, !386, !388, !390, !392, !359, !394, !396, !398, !400, !405}
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !362, line: 272, type: !30, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "old_file_name", scope: !369, file: !362, line: 304, type: !125, isLocal: true, isDefinition: true)
!369 = distinct !DISubprogram(name: "verror_at_line", scope: !362, file: !362, line: 298, type: !370, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !379)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !150, !150, !125, !129, !125, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !374)
!374 = !{!375, !376, !377, !378}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !373, file: !362, baseType: !129, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !373, file: !362, baseType: !129, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !373, file: !362, baseType: !149, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !373, file: !362, baseType: !149, size: 64, offset: 128)
!379 = !{!380, !381, !382, !383, !384, !385}
!380 = !DILocalVariable(name: "status", arg: 1, scope: !369, file: !362, line: 298, type: !150)
!381 = !DILocalVariable(name: "errnum", arg: 2, scope: !369, file: !362, line: 298, type: !150)
!382 = !DILocalVariable(name: "file_name", arg: 3, scope: !369, file: !362, line: 298, type: !125)
!383 = !DILocalVariable(name: "line_number", arg: 4, scope: !369, file: !362, line: 298, type: !129)
!384 = !DILocalVariable(name: "message", arg: 5, scope: !369, file: !362, line: 298, type: !125)
!385 = !DILocalVariable(name: "args", arg: 6, scope: !369, file: !362, line: 298, type: !372)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "old_line_number", scope: !369, file: !362, line: 305, type: !129, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !362, line: 338, type: !163, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !192, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !173, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "error_message_count", scope: !361, file: !362, line: 69, type: !129, isLocal: false, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !361, file: !362, line: 295, type: !150, isLocal: false, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !105, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 21)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !362, line: 214, type: !30, isLocal: true, isDefinition: true)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "program_name", scope: !412, file: !413, line: 31, type: !125, isLocal: false, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C11, file: !413, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !414, globals: !415, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!414 = !{!149, !148}
!415 = !{!410, !416, !418}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !413, line: 46, type: !192, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !413, line: 49, type: !163, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "utf07FF", scope: !422, file: !423, line: 46, type: !450, isLocal: true, isDefinition: true)
!422 = distinct !DISubprogram(name: "proper_name_lite", scope: !423, file: !423, line: 38, type: !424, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !428)
!423 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!424 = !DISubroutineType(types: !425)
!425 = !{!125, !125, !125}
!426 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !427, splitDebugInlining: false, nameTableKind: None)
!427 = !{!420}
!428 = !{!429, !430, !431, !432, !437}
!429 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !422, file: !423, line: 38, type: !125)
!430 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !422, file: !423, line: 38, type: !125)
!431 = !DILocalVariable(name: "translation", scope: !422, file: !423, line: 40, type: !125)
!432 = !DILocalVariable(name: "w", scope: !422, file: !423, line: 47, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !434, line: 37, baseType: !435)
!434 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !306, line: 57, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !306, line: 42, baseType: !129)
!437 = !DILocalVariable(name: "mbs", scope: !422, file: !423, line: 48, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !440)
!439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !442)
!441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !442, file: !441, line: 15, baseType: !150, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !442, file: !441, line: 20, baseType: !446, size: 32, offset: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !441, line: 16, size: 32, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !446, file: !441, line: 18, baseType: !129, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !446, file: !441, line: 19, baseType: !163, size: 32)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !174)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !453, line: 78, type: !192, isLocal: true, isDefinition: true)
!453 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !453, line: 79, type: !168, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 80, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 13)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !453, line: 81, type: !458, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !453, line: 82, type: !328, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !453, line: 83, type: !173, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !453, line: 84, type: !192, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !453, line: 85, type: !105, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !453, line: 86, type: !105, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !453, line: 87, type: !192, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !477, file: !453, line: 76, type: !563, isLocal: false, isDefinition: true)
!477 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !478, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!478 = !{!479, !493, !132}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !480, line: 42, baseType: !129, size: 32, elements: !481)
!480 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!482 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!483 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!484 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!485 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!486 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!487 = !DIEnumerator(name: "c_quoting_style", value: 5)
!488 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!489 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!490 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!491 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!492 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !480, line: 254, baseType: !129, size: 32, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!496 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!497 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!498 = !{!149, !150, !151, !152}
!499 = !{!451, !454, !456, !461, !463, !465, !467, !469, !471, !473, !475, !500, !504, !514, !516, !521, !523, !525, !527, !529, !552, !559, !561}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !477, file: !453, line: 92, type: !502, isLocal: false, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 320, elements: !96)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !477, file: !453, line: 1040, type: !506, isLocal: false, isDefinition: true)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !453, line: 56, size: 448, elements: !507)
!507 = !{!508, !509, !510, !512, !513}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !506, file: !453, line: 59, baseType: !479, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !453, line: 62, baseType: !150, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !506, file: !453, line: 66, baseType: !511, size: 256, offset: 64)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !193)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !506, file: !453, line: 69, baseType: !125, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !506, file: !453, line: 72, baseType: !125, size: 64, offset: 384)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !477, file: !453, line: 107, type: !506, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "slot0", scope: !477, file: !453, line: 831, type: !518, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 256)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !453, line: 321, type: !173, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !453, line: 357, type: !173, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !453, line: 358, type: !173, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !453, line: 199, type: !105, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "quote", scope: !531, file: !453, line: 228, type: !550, isLocal: true, isDefinition: true)
!531 = distinct !DISubprogram(name: "gettext_quote", scope: !453, file: !453, line: 197, type: !532, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!125, !125, !479}
!534 = !{!535, !536, !537, !538, !539}
!535 = !DILocalVariable(name: "msgid", arg: 1, scope: !531, file: !453, line: 197, type: !125)
!536 = !DILocalVariable(name: "s", arg: 2, scope: !531, file: !453, line: 197, type: !479)
!537 = !DILocalVariable(name: "translation", scope: !531, file: !453, line: 199, type: !125)
!538 = !DILocalVariable(name: "w", scope: !531, file: !453, line: 229, type: !433)
!539 = !DILocalVariable(name: "mbs", scope: !531, file: !453, line: 230, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !542, file: !441, line: 15, baseType: !150, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !542, file: !441, line: 20, baseType: !546, size: 32, offset: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !441, line: 16, size: 32, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !546, file: !441, line: 18, baseType: !129, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !546, file: !441, line: 19, baseType: !163, size: 32)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !551)
!551 = !{!175, !165}
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "slotvec", scope: !477, file: !453, line: 834, type: !554, isLocal: true, isDefinition: true)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !453, line: 823, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !555, file: !453, line: 825, baseType: !152, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !555, file: !453, line: 826, baseType: !148, size: 64, offset: 64)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "nslots", scope: !477, file: !453, line: 832, type: !150, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "slotvec0", scope: !477, file: !453, line: 833, type: !555, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 704, elements: !10)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !567, line: 67, type: !3, isLocal: true, isDefinition: true)
!567 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !567, line: 69, type: !105, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !567, line: 83, type: !105, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !567, line: 83, type: !163, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !567, line: 85, type: !173, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !567, line: 88, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 171)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !567, line: 88, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 34)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !567, line: 105, type: !82, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !567, line: 109, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 23)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !567, line: 113, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 28)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !567, line: 120, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 32)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !567, line: 127, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 36)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !567, line: 134, type: !210, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !567, line: 142, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 44)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !567, line: 150, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 48)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !567, line: 159, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 52)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !567, line: 170, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 60)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !567, line: 248, type: !328, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !567, line: 248, type: !235, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !567, line: 254, type: !328, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !567, line: 254, type: !112, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !567, line: 254, type: !210, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !567, line: 259, type: !642, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 39)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !567, line: 259, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 29)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !652, file: !653, line: 26, type: !655, isLocal: false, isDefinition: true)
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !654, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!654 = !{!650}
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 376, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 47)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "exit_failure", scope: !660, file: !661, line: 24, type: !663, isLocal: false, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !661, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !662, splitDebugInlining: false, nameTableKind: None)
!661 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!662 = !{!658}
!663 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !666, line: 34, type: !85, isLocal: true, isDefinition: true)
!666 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !666, line: 34, type: !105, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !666, line: 34, type: !205, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !673, line: 108, type: !90, isLocal: true, isDefinition: true)
!673 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(name: "internal_state", scope: !676, file: !673, line: 97, type: !679, isLocal: true, isDefinition: true)
!676 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, globals: !678, splitDebugInlining: false, nameTableKind: None)
!677 = !{!149, !152, !155}
!678 = !{!671, !674}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !681, file: !441, line: 15, baseType: !150, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !681, file: !441, line: 20, baseType: !685, size: 32, offset: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !441, line: 16, size: 32, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !685, file: !441, line: 18, baseType: !129, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !685, file: !441, line: 19, baseType: !163, size: 32)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !691, line: 35, type: !168, isLocal: true, isDefinition: true)
!691 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !567, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !695, retainedTypes: !699, globals: !700, splitDebugInlining: false, nameTableKind: None)
!695 = !{!696}
!696 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !567, line: 40, baseType: !129, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!699 = !{!149}
!700 = !{!565, !568, !570, !572, !574, !576, !581, !586, !588, !593, !598, !603, !608, !610, !615, !620, !625, !630, !632, !634, !636, !638, !640, !645}
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !703, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!703 = !{!704, !716}
!704 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !705, file: !702, line: 188, baseType: !129, size: 32, elements: !714)
!705 = distinct !DISubprogram(name: "x2nrealloc", scope: !702, file: !702, line: 176, type: !706, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !709)
!706 = !DISubroutineType(types: !707)
!707 = !{!149, !149, !708, !152}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!709 = !{!710, !711, !712, !713}
!710 = !DILocalVariable(name: "p", arg: 1, scope: !705, file: !702, line: 176, type: !149)
!711 = !DILocalVariable(name: "pn", arg: 2, scope: !705, file: !702, line: 176, type: !708)
!712 = !DILocalVariable(name: "s", arg: 3, scope: !705, file: !702, line: 176, type: !152)
!713 = !DILocalVariable(name: "n", scope: !705, file: !702, line: 178, type: !152)
!714 = !{!715}
!715 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!716 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !717, file: !702, line: 228, baseType: !129, size: 32, elements: !714)
!717 = distinct !DISubprogram(name: "xpalloc", scope: !702, file: !702, line: 223, type: !718, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !725)
!718 = !DISubroutineType(types: !719)
!719 = !{!149, !149, !720, !721, !723, !721}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !722, line: 130, baseType: !723)
!722 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !724, line: 18, baseType: !307)
!724 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734}
!726 = !DILocalVariable(name: "pa", arg: 1, scope: !717, file: !702, line: 223, type: !149)
!727 = !DILocalVariable(name: "pn", arg: 2, scope: !717, file: !702, line: 223, type: !720)
!728 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !717, file: !702, line: 223, type: !721)
!729 = !DILocalVariable(name: "n_max", arg: 4, scope: !717, file: !702, line: 223, type: !723)
!730 = !DILocalVariable(name: "s", arg: 5, scope: !717, file: !702, line: 223, type: !721)
!731 = !DILocalVariable(name: "n0", scope: !717, file: !702, line: 230, type: !721)
!732 = !DILocalVariable(name: "n", scope: !717, file: !702, line: 237, type: !721)
!733 = !DILocalVariable(name: "nbytes", scope: !717, file: !702, line: 248, type: !721)
!734 = !DILocalVariable(name: "adjusted_nbytes", scope: !717, file: !702, line: 252, type: !721)
!735 = !{!148, !149}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!664, !667, !669}
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, splitDebugInlining: false, nameTableKind: None)
!743 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !749, splitDebugInlining: false, nameTableKind: None)
!749 = !{!750, !689}
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !691, line: 35, type: !173, isLocal: true, isDefinition: true)
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!756 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!757 = !{i32 7, !"Dwarf Version", i32 5}
!758 = !{i32 2, !"Debug Info Version", i32 3}
!759 = !{i32 1, !"wchar_size", i32 4}
!760 = !{i32 8, !"PIC Level", i32 2}
!761 = !{i32 7, !"PIE Level", i32 2}
!762 = !{i32 7, !"uwtable", i32 2}
!763 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!764 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !765, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !150}
!767 = !{!768}
!768 = !DILocalVariable(name: "status", arg: 1, scope: !764, file: !2, line: 37, type: !150)
!769 = !DILocation(line: 0, scope: !764)
!770 = !DILocation(line: 41, column: 3, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !2, line: 41, column: 3)
!772 = distinct !DILexicalBlock(scope: !764, file: !2, line: 41, column: 3)
!773 = !DILocation(line: 41, column: 3, scope: !772)
!774 = !DILocation(line: 43, column: 3, scope: !764)
!775 = !{!776, !776, i64 0}
!776 = !{!"any pointer", !777, i64 0}
!777 = !{!"omnipotent char", !778, i64 0}
!778 = !{!"Simple C/C++ TBAA"}
!779 = !DILocation(line: 47, column: 3, scope: !764)
!780 = !DILocation(line: 51, column: 3, scope: !764)
!781 = !DILocation(line: 54, column: 3, scope: !764)
!782 = !DILocation(line: 61, column: 3, scope: !764)
!783 = !DILocation(line: 68, column: 3, scope: !764)
!784 = !DILocation(line: 69, column: 3, scope: !764)
!785 = !DILocation(line: 70, column: 3, scope: !764)
!786 = !DILocation(line: 75, column: 3, scope: !764)
!787 = !DILocation(line: 87, column: 3, scope: !764)
!788 = !DILocation(line: 91, column: 3, scope: !764)
!789 = !DILocation(line: 92, column: 3, scope: !764)
!790 = !DILocation(line: 96, column: 3, scope: !764)
!791 = !DILocation(line: 97, column: 3, scope: !764)
!792 = !DISubprogram(name: "__assert_fail", scope: !793, file: !793, line: 69, type: !794, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!793 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!794 = !DISubroutineType(types: !795)
!795 = !{null, !125, !125, !129, !125}
!796 = !DISubprogram(name: "dcgettext", scope: !797, file: !797, line: 51, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!798 = !DISubroutineType(types: !799)
!799 = !{!148, !125, !125, !150}
!800 = !DISubprogram(name: "__printf_chk", scope: !801, file: !801, line: 95, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!802 = !DISubroutineType(types: !803)
!803 = !{!150, !150, !804, null}
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!805 = !DISubprogram(name: "fputs_unlocked", scope: !806, file: !806, line: 691, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!807 = !DISubroutineType(types: !808)
!808 = !{!150, !804, !809}
!809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !279)
!810 = !DILocation(line: 0, scope: !121)
!811 = !DILocation(line: 581, column: 7, scope: !264)
!812 = !{!813, !813, i64 0}
!813 = !{!"int", !777, i64 0}
!814 = !DILocation(line: 581, column: 19, scope: !264)
!815 = !DILocation(line: 581, column: 7, scope: !121)
!816 = !DILocation(line: 585, column: 26, scope: !263)
!817 = !DILocation(line: 0, scope: !263)
!818 = !DILocation(line: 586, column: 23, scope: !263)
!819 = !DILocation(line: 586, column: 28, scope: !263)
!820 = !DILocation(line: 586, column: 32, scope: !263)
!821 = !{!777, !777, i64 0}
!822 = !DILocation(line: 586, column: 38, scope: !263)
!823 = !DILocalVariable(name: "__s1", arg: 1, scope: !824, file: !825, line: 1359, type: !125)
!824 = distinct !DISubprogram(name: "streq", scope: !825, file: !825, line: 1359, type: !826, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !828)
!825 = !DIFile(filename: "./lib/string.h", directory: "/src")
!826 = !DISubroutineType(types: !827)
!827 = !{!266, !125, !125}
!828 = !{!823, !829}
!829 = !DILocalVariable(name: "__s2", arg: 2, scope: !824, file: !825, line: 1359, type: !125)
!830 = !DILocation(line: 0, scope: !824, inlinedAt: !831)
!831 = distinct !DILocation(line: 586, column: 41, scope: !263)
!832 = !DILocation(line: 1361, column: 11, scope: !824, inlinedAt: !831)
!833 = !DILocation(line: 1361, column: 10, scope: !824, inlinedAt: !831)
!834 = !DILocation(line: 586, column: 19, scope: !263)
!835 = !DILocation(line: 587, column: 5, scope: !263)
!836 = !DILocation(line: 588, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !121, file: !122, line: 588, column: 7)
!838 = !DILocation(line: 588, column: 7, scope: !121)
!839 = !DILocation(line: 590, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !122, line: 589, column: 5)
!841 = !DILocation(line: 591, column: 7, scope: !840)
!842 = !DILocation(line: 595, column: 37, scope: !121)
!843 = !DILocation(line: 595, column: 35, scope: !121)
!844 = !DILocation(line: 596, column: 29, scope: !121)
!845 = !DILocation(line: 597, column: 8, scope: !272)
!846 = !DILocation(line: 597, column: 7, scope: !121)
!847 = !DILocation(line: 604, column: 24, scope: !271)
!848 = !DILocation(line: 604, column: 12, scope: !272)
!849 = !DILocation(line: 0, scope: !270)
!850 = !DILocation(line: 610, column: 16, scope: !270)
!851 = !DILocation(line: 610, column: 7, scope: !270)
!852 = !DILocation(line: 611, column: 21, scope: !270)
!853 = !{!854, !854, i64 0}
!854 = !{!"short", !777, i64 0}
!855 = !DILocation(line: 611, column: 19, scope: !270)
!856 = !DILocation(line: 611, column: 16, scope: !270)
!857 = !DILocation(line: 610, column: 30, scope: !270)
!858 = distinct !{!858, !851, !852, !859}
!859 = !{!"llvm.loop.mustprogress"}
!860 = !DILocation(line: 612, column: 18, scope: !861)
!861 = distinct !DILexicalBlock(scope: !270, file: !122, line: 612, column: 11)
!862 = !DILocation(line: 612, column: 11, scope: !270)
!863 = !DILocation(line: 620, column: 23, scope: !121)
!864 = !DILocation(line: 625, column: 39, scope: !121)
!865 = !DILocation(line: 626, column: 3, scope: !121)
!866 = !DILocation(line: 626, column: 10, scope: !121)
!867 = !DILocation(line: 626, column: 21, scope: !121)
!868 = !DILocation(line: 628, column: 44, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !122, line: 628, column: 11)
!870 = distinct !DILexicalBlock(scope: !121, file: !122, line: 627, column: 5)
!871 = !DILocation(line: 628, column: 32, scope: !869)
!872 = !DILocation(line: 628, column: 49, scope: !869)
!873 = !DILocation(line: 628, column: 11, scope: !870)
!874 = !DILocation(line: 630, column: 11, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !122, line: 630, column: 11)
!876 = !DILocation(line: 630, column: 11, scope: !870)
!877 = !DILocation(line: 632, column: 26, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !122, line: 632, column: 15)
!879 = distinct !DILexicalBlock(scope: !875, file: !122, line: 631, column: 9)
!880 = !DILocation(line: 632, column: 34, scope: !878)
!881 = !DILocation(line: 632, column: 37, scope: !878)
!882 = !DILocation(line: 632, column: 15, scope: !879)
!883 = !DILocation(line: 636, column: 16, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !122, line: 636, column: 15)
!885 = !DILocation(line: 636, column: 29, scope: !884)
!886 = !DILocation(line: 640, column: 16, scope: !870)
!887 = distinct !{!887, !865, !888, !859}
!888 = !DILocation(line: 641, column: 5, scope: !121)
!889 = !DILocation(line: 644, column: 3, scope: !121)
!890 = !DILocation(line: 0, scope: !824, inlinedAt: !891)
!891 = distinct !DILocation(line: 648, column: 31, scope: !121)
!892 = !{}
!893 = !DILocation(line: 0, scope: !824, inlinedAt: !894)
!894 = distinct !DILocation(line: 649, column: 31, scope: !121)
!895 = !DILocation(line: 0, scope: !824, inlinedAt: !896)
!896 = distinct !DILocation(line: 650, column: 31, scope: !121)
!897 = !DILocation(line: 0, scope: !824, inlinedAt: !898)
!898 = distinct !DILocation(line: 651, column: 31, scope: !121)
!899 = !DILocation(line: 0, scope: !824, inlinedAt: !900)
!900 = distinct !DILocation(line: 652, column: 31, scope: !121)
!901 = !DILocation(line: 0, scope: !824, inlinedAt: !902)
!902 = distinct !DILocation(line: 653, column: 31, scope: !121)
!903 = !DILocation(line: 0, scope: !824, inlinedAt: !904)
!904 = distinct !DILocation(line: 654, column: 31, scope: !121)
!905 = !DILocation(line: 0, scope: !824, inlinedAt: !906)
!906 = distinct !DILocation(line: 655, column: 31, scope: !121)
!907 = !DILocation(line: 0, scope: !824, inlinedAt: !908)
!908 = distinct !DILocation(line: 656, column: 31, scope: !121)
!909 = !DILocation(line: 0, scope: !824, inlinedAt: !910)
!910 = distinct !DILocation(line: 657, column: 31, scope: !121)
!911 = !DILocation(line: 663, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !121, file: !122, line: 663, column: 7)
!913 = !DILocation(line: 664, column: 7, scope: !912)
!914 = !DILocation(line: 664, column: 10, scope: !912)
!915 = !DILocation(line: 663, column: 7, scope: !121)
!916 = !DILocation(line: 669, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !122, line: 665, column: 5)
!918 = !DILocation(line: 671, column: 5, scope: !917)
!919 = !DILocation(line: 676, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !912, file: !122, line: 673, column: 5)
!921 = !DILocation(line: 679, column: 3, scope: !121)
!922 = !DILocation(line: 683, column: 3, scope: !121)
!923 = !DILocation(line: 686, column: 3, scope: !121)
!924 = !DILocation(line: 688, column: 3, scope: !121)
!925 = !DILocation(line: 691, column: 3, scope: !121)
!926 = !DILocation(line: 695, column: 3, scope: !121)
!927 = !DILocation(line: 696, column: 1, scope: !121)
!928 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !122, file: !122, line: 836, type: !929, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !931)
!929 = !DISubroutineType(cc: DW_CC_nocall, types: !930)
!930 = !{null, !125}
!931 = !{!932, !933, !940, !941, !943, !944}
!932 = !DILocalVariable(name: "program", arg: 1, scope: !928, file: !122, line: 836, type: !125)
!933 = !DILocalVariable(name: "infomap", scope: !928, file: !122, line: 838, type: !934)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 896, elements: !106)
!935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !928, file: !122, line: 838, size: 128, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !936, file: !122, line: 838, baseType: !125, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !936, file: !122, line: 838, baseType: !125, size: 64, offset: 64)
!940 = !DILocalVariable(name: "node", scope: !928, file: !122, line: 848, type: !125)
!941 = !DILocalVariable(name: "map_prog", scope: !928, file: !122, line: 849, type: !942)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!943 = !DILocalVariable(name: "lc_messages", scope: !928, file: !122, line: 861, type: !125)
!944 = !DILocalVariable(name: "url_program", scope: !928, file: !122, line: 874, type: !125)
!945 = !DILocation(line: 0, scope: !928)
!946 = !DILocation(line: 857, column: 3, scope: !928)
!947 = !DILocation(line: 861, column: 29, scope: !928)
!948 = !DILocation(line: 862, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !928, file: !122, line: 862, column: 7)
!950 = !DILocation(line: 862, column: 19, scope: !949)
!951 = !DILocation(line: 862, column: 22, scope: !949)
!952 = !DILocation(line: 862, column: 7, scope: !928)
!953 = !DILocation(line: 868, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !122, line: 863, column: 5)
!955 = !DILocation(line: 870, column: 5, scope: !954)
!956 = !DILocation(line: 875, column: 3, scope: !928)
!957 = !DILocation(line: 877, column: 3, scope: !928)
!958 = !DILocation(line: 879, column: 1, scope: !928)
!959 = !DISubprogram(name: "exit", scope: !960, file: !960, line: 624, type: !765, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!960 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!961 = !DISubprogram(name: "setlocale", scope: !962, file: !962, line: 122, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!963 = !DISubroutineType(types: !964)
!964 = !{!148, !150, !125}
!965 = !DISubprogram(name: "strncmp", scope: !966, file: !966, line: 159, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!967 = !DISubroutineType(types: !968)
!968 = !{!150, !125, !125, !152}
!969 = !DISubprogram(name: "getenv", scope: !960, file: !960, line: 641, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{!148, !125}
!972 = !DISubprogram(name: "strcmp", scope: !966, file: !966, line: 156, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{!150, !125, !125}
!975 = !DISubprogram(name: "strspn", scope: !966, file: !966, line: 297, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!976 = !DISubroutineType(types: !977)
!977 = !{!154, !125, !125}
!978 = !DISubprogram(name: "strchr", scope: !966, file: !966, line: 246, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DISubroutineType(types: !980)
!980 = !{!148, !125, !150}
!981 = !DISubprogram(name: "__ctype_b_loc", scope: !133, file: !133, line: 79, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!987 = !DISubprogram(name: "strcspn", scope: !966, file: !966, line: 293, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubprogram(name: "fwrite_unlocked", scope: !806, file: !806, line: 704, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!152, !991, !152, !152, !809}
!991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!994 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 121, type: !995, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !998)
!995 = !DISubroutineType(types: !996)
!996 = !{!150, !150, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1008, !1009, !1010, !1014, !1015, !1021}
!999 = !DILocalVariable(name: "argc", arg: 1, scope: !994, file: !2, line: 121, type: !150)
!1000 = !DILocalVariable(name: "argv", arg: 2, scope: !994, file: !2, line: 121, type: !997)
!1001 = !DILocalVariable(name: "display_return", scope: !994, file: !2, line: 123, type: !266)
!1002 = !DILocalVariable(name: "posixly_correct", scope: !994, file: !2, line: 124, type: !266)
!1003 = !DILocalVariable(name: "allow_options", scope: !994, file: !2, line: 125, type: !266)
!1004 = !DILocalVariable(name: "do_v9", scope: !994, file: !2, line: 132, type: !266)
!1005 = !DILocalVariable(name: "temp", scope: !1006, file: !2, line: 163, type: !125)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 162, column: 7)
!1007 = distinct !DILexicalBlock(scope: !994, file: !2, line: 160, column: 7)
!1008 = !DILocalVariable(name: "i", scope: !1006, file: !2, line: 164, type: !152)
!1009 = !DILabel(scope: !994, name: "just_echo", file: !2, line: 204)
!1010 = !DILocalVariable(name: "s", scope: !1011, file: !2, line: 210, type: !125)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 209, column: 9)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 207, column: 5)
!1013 = distinct !DILexicalBlock(scope: !994, file: !2, line: 206, column: 7)
!1014 = !DILocalVariable(name: "c", scope: !1011, file: !2, line: 211, type: !155)
!1015 = !DILocalVariable(name: "ch", scope: !1016, file: !2, line: 230, type: !155)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 229, column: 23)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 218, column: 21)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 216, column: 17)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 215, column: 19)
!1020 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 214, column: 13)
!1021 = !DILabel(scope: !1017, name: "not_an_escape", file: !2, line: 259)
!1022 = !DILocation(line: 0, scope: !994)
!1023 = !DILocation(line: 124, column: 28, scope: !994)
!1024 = !DILocation(line: 124, column: 27, scope: !994)
!1025 = !DILocation(line: 127, column: 6, scope: !994)
!1026 = !DILocation(line: 127, column: 37, scope: !994)
!1027 = !DILocation(line: 127, column: 44, scope: !994)
!1028 = !DILocation(line: 127, column: 54, scope: !994)
!1029 = !DILocation(line: 0, scope: !824, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 127, column: 47, scope: !994)
!1031 = !DILocation(line: 1361, column: 11, scope: !824, inlinedAt: !1030)
!1032 = !DILocation(line: 1361, column: 10, scope: !824, inlinedAt: !1030)
!1033 = !DILocation(line: 135, column: 21, scope: !994)
!1034 = !DILocation(line: 135, column: 3, scope: !994)
!1035 = !DILocation(line: 136, column: 3, scope: !994)
!1036 = !DILocation(line: 137, column: 3, scope: !994)
!1037 = !DILocation(line: 138, column: 3, scope: !994)
!1038 = !DILocation(line: 140, column: 3, scope: !994)
!1039 = !DILocation(line: 144, column: 21, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !994, file: !2, line: 144, column: 7)
!1041 = !DILocation(line: 146, column: 18, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 146, column: 11)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 145, column: 5)
!1044 = !DILocation(line: 0, scope: !824, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 146, column: 11, scope: !1042)
!1046 = !DILocation(line: 1361, column: 11, scope: !824, inlinedAt: !1045)
!1047 = !DILocation(line: 1361, column: 10, scope: !824, inlinedAt: !1045)
!1048 = !DILocation(line: 146, column: 11, scope: !1043)
!1049 = !DILocation(line: 147, column: 9, scope: !1042)
!1050 = !DILocation(line: 0, scope: !824, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 149, column: 11, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 149, column: 11)
!1053 = !DILocation(line: 1361, column: 11, scope: !824, inlinedAt: !1051)
!1054 = !DILocation(line: 1361, column: 10, scope: !824, inlinedAt: !1051)
!1055 = !DILocation(line: 149, column: 11, scope: !1043)
!1056 = !DILocation(line: 151, column: 24, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 150, column: 9)
!1058 = !DILocation(line: 151, column: 60, scope: !1057)
!1059 = !DILocation(line: 151, column: 69, scope: !1057)
!1060 = !DILocation(line: 151, column: 11, scope: !1057)
!1061 = !DILocation(line: 153, column: 11, scope: !1057)
!1062 = !DILocation(line: 157, column: 3, scope: !994)
!1063 = !DILocation(line: 158, column: 3, scope: !994)
!1064 = !DILocation(line: 160, column: 7, scope: !994)
!1065 = !DILocation(line: 123, column: 8, scope: !994)
!1066 = !DILocation(line: 132, column: 8, scope: !994)
!1067 = !DILocation(line: 200, column: 13, scope: !1006)
!1068 = !DILocation(line: 201, column: 13, scope: !1006)
!1069 = !DILocation(line: 161, column: 17, scope: !1007)
!1070 = !DILocation(line: 161, column: 21, scope: !1007)
!1071 = !DILocation(line: 161, column: 25, scope: !1007)
!1072 = !DILocation(line: 161, column: 24, scope: !1007)
!1073 = !DILocation(line: 161, column: 33, scope: !1007)
!1074 = !DILocation(line: 161, column: 5, scope: !1007)
!1075 = !DILocation(line: 163, column: 36, scope: !1006)
!1076 = !DILocation(line: 0, scope: !1006)
!1077 = !DILocation(line: 170, column: 14, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 170, column: 9)
!1079 = !DILocation(line: 170, scope: !1078)
!1080 = !DILocation(line: 170, column: 21, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 170, column: 9)
!1082 = !DILocation(line: 170, column: 9, scope: !1078)
!1083 = !DILocation(line: 170, column: 31, scope: !1081)
!1084 = !DILocation(line: 170, column: 9, scope: !1081)
!1085 = distinct !{!1085, !1082, !1086, !859}
!1086 = !DILocation(line: 177, column: 13, scope: !1078)
!1087 = !DILocation(line: 179, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 179, column: 13)
!1089 = !DILocation(line: 179, column: 13, scope: !1006)
!1090 = !DILocation(line: 184, column: 16, scope: !1006)
!1091 = !DILocation(line: 184, column: 9, scope: !1006)
!1092 = !DILocation(line: 185, column: 24, scope: !1006)
!1093 = !DILocation(line: 185, column: 11, scope: !1006)
!1094 = !DILocation(line: 189, column: 15, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 186, column: 13)
!1096 = !DILocation(line: 193, column: 15, scope: !1095)
!1097 = !DILocation(line: 197, column: 15, scope: !1095)
!1098 = distinct !{!1098, !1091, !1099, !859}
!1099 = !DILocation(line: 198, column: 13, scope: !1006)
!1100 = !DILocation(line: 204, column: 1, scope: !994)
!1101 = !DILocation(line: 206, column: 7, scope: !1013)
!1102 = !DILocation(line: 206, column: 13, scope: !1013)
!1103 = !DILocation(line: 0, scope: !1013)
!1104 = !DILocation(line: 273, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 272, column: 5)
!1106 = !DILocation(line: 275, column: 11, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 274, column: 9)
!1108 = !DILocation(line: 278, column: 20, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 278, column: 15)
!1110 = !DILocation(line: 278, column: 15, scope: !1107)
!1111 = !DILocation(line: 208, column: 7, scope: !1012)
!1112 = !DILocation(line: 210, column: 27, scope: !1011)
!1113 = !DILocation(line: 0, scope: !1011)
!1114 = !DILocation(line: 213, column: 11, scope: !1011)
!1115 = !DILocation(line: 213, column: 25, scope: !1011)
!1116 = !DILocation(line: 213, column: 23, scope: !1011)
!1117 = !DILocation(line: 215, column: 32, scope: !1019)
!1118 = !DILocation(line: 215, column: 19, scope: !1020)
!1119 = !DILocation(line: 217, column: 33, scope: !1018)
!1120 = !DILocation(line: 217, column: 19, scope: !1018)
!1121 = !DILocation(line: 219, column: 41, scope: !1017)
!1122 = !DILocation(line: 220, column: 41, scope: !1017)
!1123 = !DILocation(line: 222, column: 43, scope: !1017)
!1124 = !DILocation(line: 223, column: 41, scope: !1017)
!1125 = !DILocation(line: 224, column: 41, scope: !1017)
!1126 = !DILocation(line: 225, column: 41, scope: !1017)
!1127 = !DILocation(line: 226, column: 41, scope: !1017)
!1128 = !DILocation(line: 227, column: 41, scope: !1017)
!1129 = !DILocation(line: 230, column: 44, scope: !1016)
!1130 = !DILocation(line: 0, scope: !1016)
!1131 = !DILocalVariable(name: "c", arg: 1, scope: !1132, file: !1133, line: 324, type: !150)
!1132 = distinct !DISubprogram(name: "c_isxdigit", scope: !1133, file: !1133, line: 324, type: !1134, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1136)
!1133 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!266, !150}
!1136 = !{!1131}
!1137 = !DILocation(line: 0, scope: !1132, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 231, column: 31, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 231, column: 29)
!1140 = !DILocation(line: 326, column: 3, scope: !1132, inlinedAt: !1138)
!1141 = !DILocation(line: 233, column: 26, scope: !1016)
!1142 = !DILocalVariable(name: "c", arg: 1, scope: !1143, file: !2, line: 102, type: !155)
!1143 = distinct !DISubprogram(name: "hextobin", scope: !2, file: !2, line: 102, type: !1144, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!150, !155}
!1146 = !{!1142}
!1147 = !DILocation(line: 0, scope: !1143, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 234, column: 29, scope: !1016)
!1149 = !DILocation(line: 104, column: 3, scope: !1143, inlinedAt: !1148)
!1150 = !DILocation(line: 106, column: 23, scope: !1151, inlinedAt: !1148)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 105, column: 5)
!1152 = !DILocation(line: 106, column: 14, scope: !1151, inlinedAt: !1148)
!1153 = !DILocation(line: 108, column: 25, scope: !1151, inlinedAt: !1148)
!1154 = !DILocation(line: 109, column: 25, scope: !1151, inlinedAt: !1148)
!1155 = !DILocation(line: 110, column: 25, scope: !1151, inlinedAt: !1148)
!1156 = !DILocation(line: 111, column: 25, scope: !1151, inlinedAt: !1148)
!1157 = !DILocation(line: 112, column: 25, scope: !1151, inlinedAt: !1148)
!1158 = !DILocation(line: 0, scope: !1151, inlinedAt: !1148)
!1159 = !DILocation(line: 235, column: 30, scope: !1016)
!1160 = !DILocation(line: 0, scope: !1132, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 236, column: 29, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 236, column: 29)
!1163 = !DILocation(line: 326, column: 3, scope: !1132, inlinedAt: !1161)
!1164 = !DILocation(line: 238, column: 30, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 237, column: 27)
!1166 = !DILocation(line: 239, column: 35, scope: !1165)
!1167 = !DILocation(line: 0, scope: !1143, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 239, column: 42, scope: !1165)
!1169 = !DILocation(line: 104, column: 3, scope: !1143, inlinedAt: !1168)
!1170 = !DILocation(line: 106, column: 23, scope: !1151, inlinedAt: !1168)
!1171 = !DILocation(line: 106, column: 14, scope: !1151, inlinedAt: !1168)
!1172 = !DILocation(line: 108, column: 25, scope: !1151, inlinedAt: !1168)
!1173 = !DILocation(line: 109, column: 25, scope: !1151, inlinedAt: !1168)
!1174 = !DILocation(line: 110, column: 25, scope: !1151, inlinedAt: !1168)
!1175 = !DILocation(line: 111, column: 25, scope: !1151, inlinedAt: !1168)
!1176 = !DILocation(line: 112, column: 25, scope: !1151, inlinedAt: !1168)
!1177 = !DILocation(line: 0, scope: !1151, inlinedAt: !1168)
!1178 = !DILocation(line: 239, column: 40, scope: !1165)
!1179 = !DILocation(line: 240, column: 27, scope: !1165)
!1180 = !DILocation(line: 245, column: 37, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 245, column: 27)
!1182 = !DILocation(line: 245, column: 40, scope: !1181)
!1183 = !DILocation(line: 247, column: 29, scope: !1017)
!1184 = !DILocation(line: 247, column: 23, scope: !1017)
!1185 = !DILocation(line: 0, scope: !1018)
!1186 = !DILocation(line: 251, column: 25, scope: !1017)
!1187 = !DILocation(line: 252, column: 34, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 252, column: 27)
!1189 = !DILocation(line: 252, column: 37, scope: !1188)
!1190 = !DILocation(line: 254, column: 34, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 254, column: 27)
!1192 = !DILocation(line: 254, column: 37, scope: !1191)
!1193 = !DILocation(line: 255, column: 31, scope: !1191)
!1194 = !DILocation(line: 255, column: 40, scope: !1191)
!1195 = !DILocation(line: 255, column: 43, scope: !1191)
!1196 = !DILocation(line: 255, column: 35, scope: !1191)
!1197 = !DILocation(line: 255, column: 25, scope: !1191)
!1198 = !DILocalVariable(name: "__c", arg: 1, scope: !1199, file: !1200, line: 108, type: !150)
!1199 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1200, file: !1200, line: 108, type: !1201, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1203)
!1200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!150, !150}
!1203 = !{!1198}
!1204 = !DILocation(line: 0, scope: !1199, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 260, column: 31, scope: !1017)
!1206 = !DILocation(line: 110, column: 10, scope: !1199, inlinedAt: !1205)
!1207 = !{!1208, !776, i64 40}
!1208 = !{!"_IO_FILE", !813, i64 0, !776, i64 8, !776, i64 16, !776, i64 24, !776, i64 32, !776, i64 40, !776, i64 48, !776, i64 56, !776, i64 64, !776, i64 72, !776, i64 80, !776, i64 88, !776, i64 96, !776, i64 104, !813, i64 112, !813, i64 116, !1209, i64 120, !854, i64 128, !777, i64 130, !777, i64 131, !776, i64 136, !1209, i64 144, !776, i64 152, !776, i64 160, !776, i64 168, !776, i64 176, !1209, i64 184, !813, i64 192, !777, i64 196}
!1209 = !{!"long", !777, i64 0}
!1210 = !{!1208, !776, i64 48}
!1211 = !{!"branch_weights", i32 2000, i32 1}
!1212 = !DILocation(line: 0, scope: !1199, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 263, column: 15, scope: !1020)
!1214 = !DILocation(line: 110, column: 10, scope: !1199, inlinedAt: !1213)
!1215 = !DILocation(line: 263, column: 15, scope: !1020)
!1216 = distinct !{!1216, !1114, !1217, !859}
!1217 = !DILocation(line: 264, column: 13, scope: !1011)
!1218 = !DILocation(line: 265, column: 15, scope: !1011)
!1219 = !DILocation(line: 266, column: 15, scope: !1011)
!1220 = !DILocation(line: 267, column: 20, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 267, column: 15)
!1222 = !DILocation(line: 267, column: 15, scope: !1011)
!1223 = !DILocation(line: 0, scope: !1199, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 268, column: 13, scope: !1221)
!1225 = !DILocation(line: 110, column: 10, scope: !1199, inlinedAt: !1224)
!1226 = !DILocation(line: 208, column: 19, scope: !1012)
!1227 = distinct !{!1227, !1111, !1228, !859}
!1228 = !DILocation(line: 269, column: 9, scope: !1012)
!1229 = !DILocation(line: 276, column: 15, scope: !1107)
!1230 = !DILocation(line: 277, column: 15, scope: !1107)
!1231 = !DILocation(line: 0, scope: !1199, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 279, column: 13, scope: !1109)
!1233 = !DILocation(line: 110, column: 10, scope: !1199, inlinedAt: !1232)
!1234 = distinct !{!1234, !1104, !1235, !859}
!1235 = !DILocation(line: 280, column: 9, scope: !1105)
!1236 = !DILocation(line: 283, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !994, file: !2, line: 283, column: 7)
!1238 = !DILocation(line: 283, column: 7, scope: !994)
!1239 = !DILocation(line: 0, scope: !1199, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 284, column: 5, scope: !1237)
!1241 = !DILocation(line: 110, column: 10, scope: !1199, inlinedAt: !1240)
!1242 = !DILocation(line: 286, column: 1, scope: !994)
!1243 = !DISubprogram(name: "bindtextdomain", scope: !797, file: !797, line: 86, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!148, !125, !125}
!1246 = !DISubprogram(name: "textdomain", scope: !797, file: !797, line: 82, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubprogram(name: "atexit", scope: !960, file: !960, line: 602, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!150, !407}
!1250 = !DISubprogram(name: "__overflow", scope: !806, file: !806, line: 886, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!150, !279, !150}
!1253 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !347, file: !347, line: 50, type: !1254, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1255)
!1254 = !DISubroutineType(types: !930)
!1255 = !{!1256}
!1256 = !DILocalVariable(name: "file", arg: 1, scope: !1253, file: !347, line: 50, type: !125)
!1257 = !DILocation(line: 0, scope: !1253)
!1258 = !DILocation(line: 52, column: 13, scope: !1253)
!1259 = !DILocation(line: 53, column: 1, scope: !1253)
!1260 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !347, file: !347, line: 87, type: !1261, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !266}
!1263 = !{!1264}
!1264 = !DILocalVariable(name: "ignore", arg: 1, scope: !1260, file: !347, line: 87, type: !266)
!1265 = !DILocation(line: 0, scope: !1260)
!1266 = !DILocation(line: 89, column: 16, scope: !1260)
!1267 = !{!1268, !1268, i64 0}
!1268 = !{!"_Bool", !777, i64 0}
!1269 = !DILocation(line: 90, column: 1, scope: !1260)
!1270 = distinct !DISubprogram(name: "close_stdout", scope: !347, file: !347, line: 116, type: !408, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1271)
!1271 = !{!1272}
!1272 = !DILocalVariable(name: "write_error", scope: !1273, file: !347, line: 121, type: !125)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !347, line: 120, column: 5)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !347, line: 118, column: 7)
!1275 = !DILocation(line: 118, column: 21, scope: !1274)
!1276 = !DILocation(line: 118, column: 7, scope: !1274)
!1277 = !DILocation(line: 118, column: 29, scope: !1274)
!1278 = !DILocation(line: 119, column: 7, scope: !1274)
!1279 = !DILocation(line: 119, column: 12, scope: !1274)
!1280 = !{i8 0, i8 2}
!1281 = !DILocation(line: 119, column: 25, scope: !1274)
!1282 = !DILocation(line: 119, column: 28, scope: !1274)
!1283 = !DILocation(line: 119, column: 34, scope: !1274)
!1284 = !DILocation(line: 118, column: 7, scope: !1270)
!1285 = !DILocation(line: 121, column: 33, scope: !1273)
!1286 = !DILocation(line: 0, scope: !1273)
!1287 = !DILocation(line: 122, column: 11, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1273, file: !347, line: 122, column: 11)
!1289 = !DILocation(line: 0, scope: !1288)
!1290 = !DILocation(line: 122, column: 11, scope: !1273)
!1291 = !DILocation(line: 123, column: 9, scope: !1288)
!1292 = !DILocation(line: 126, column: 9, scope: !1288)
!1293 = !DILocation(line: 128, column: 14, scope: !1273)
!1294 = !DILocation(line: 128, column: 7, scope: !1273)
!1295 = !DILocation(line: 133, column: 42, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1270, file: !347, line: 133, column: 7)
!1297 = !DILocation(line: 133, column: 28, scope: !1296)
!1298 = !DILocation(line: 133, column: 50, scope: !1296)
!1299 = !DILocation(line: 133, column: 7, scope: !1270)
!1300 = !DILocation(line: 134, column: 12, scope: !1296)
!1301 = !DILocation(line: 134, column: 5, scope: !1296)
!1302 = !DILocation(line: 135, column: 1, scope: !1270)
!1303 = !DISubprogram(name: "__errno_location", scope: !1304, file: !1304, line: 37, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1308 = !DISubprogram(name: "_exit", scope: !1309, file: !1309, line: 624, type: !765, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1309 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1310 = distinct !DISubprogram(name: "verror", scope: !362, file: !362, line: 251, type: !1311, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !150, !150, !125, !372}
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DILocalVariable(name: "status", arg: 1, scope: !1310, file: !362, line: 251, type: !150)
!1315 = !DILocalVariable(name: "errnum", arg: 2, scope: !1310, file: !362, line: 251, type: !150)
!1316 = !DILocalVariable(name: "message", arg: 3, scope: !1310, file: !362, line: 251, type: !125)
!1317 = !DILocalVariable(name: "args", arg: 4, scope: !1310, file: !362, line: 251, type: !372)
!1318 = !DILocation(line: 0, scope: !1310)
!1319 = !DILocation(line: 261, column: 3, scope: !1310)
!1320 = !DILocation(line: 265, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1310, file: !362, line: 265, column: 7)
!1322 = !DILocation(line: 265, column: 7, scope: !1310)
!1323 = !DILocation(line: 266, column: 5, scope: !1321)
!1324 = !DILocation(line: 272, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !362, line: 268, column: 5)
!1326 = !DILocation(line: 276, column: 3, scope: !1310)
!1327 = !DILocation(line: 282, column: 1, scope: !1310)
!1328 = distinct !DISubprogram(name: "flush_stdout", scope: !362, file: !362, line: 163, type: !408, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1329)
!1329 = !{!1330}
!1330 = !DILocalVariable(name: "stdout_fd", scope: !1328, file: !362, line: 166, type: !150)
!1331 = !DILocation(line: 0, scope: !1328)
!1332 = !DILocalVariable(name: "fd", arg: 1, scope: !1333, file: !362, line: 145, type: !150)
!1333 = distinct !DISubprogram(name: "is_open", scope: !362, file: !362, line: 145, type: !1201, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1334)
!1334 = !{!1332}
!1335 = !DILocation(line: 0, scope: !1333, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 182, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1328, file: !362, line: 182, column: 7)
!1338 = !DILocation(line: 157, column: 15, scope: !1333, inlinedAt: !1336)
!1339 = !DILocation(line: 157, column: 12, scope: !1333, inlinedAt: !1336)
!1340 = !DILocation(line: 182, column: 7, scope: !1328)
!1341 = !DILocation(line: 184, column: 5, scope: !1337)
!1342 = !DILocation(line: 185, column: 1, scope: !1328)
!1343 = !DISubprogram(name: "__fprintf_chk", scope: !801, file: !801, line: 93, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!150, !1346, !150, !804, null}
!1346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1349, file: !283, line: 51, baseType: !150, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1349, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1349, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1349, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1349, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1349, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1349, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1349, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1349, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1349, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1349, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1349, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1349, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1349, file: !283, line: 70, baseType: !1365, size: 64, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1349, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1349, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1349, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1349, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1349, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1349, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1349, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1349, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1349, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1349, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1349, file: !283, line: 93, baseType: !1365, size: 64, offset: 1344)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1349, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1349, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1349, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1349, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!1381 = distinct !DISubprogram(name: "error_tail", scope: !362, file: !362, line: 219, type: !1311, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1382)
!1382 = !{!1383, !1384, !1385, !1386}
!1383 = !DILocalVariable(name: "status", arg: 1, scope: !1381, file: !362, line: 219, type: !150)
!1384 = !DILocalVariable(name: "errnum", arg: 2, scope: !1381, file: !362, line: 219, type: !150)
!1385 = !DILocalVariable(name: "message", arg: 3, scope: !1381, file: !362, line: 219, type: !125)
!1386 = !DILocalVariable(name: "args", arg: 4, scope: !1381, file: !362, line: 219, type: !372)
!1387 = distinct !DIAssignID()
!1388 = !DILocation(line: 0, scope: !1381)
!1389 = !DILocation(line: 229, column: 13, scope: !1381)
!1390 = !DILocalVariable(name: "__stream", arg: 1, scope: !1391, file: !801, line: 132, type: !1346)
!1391 = distinct !DISubprogram(name: "vfprintf", scope: !801, file: !801, line: 132, type: !1392, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!150, !1346, !804, !372}
!1394 = !{!1390, !1395, !1396}
!1395 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1391, file: !801, line: 133, type: !804)
!1396 = !DILocalVariable(name: "__ap", arg: 3, scope: !1391, file: !801, line: 133, type: !372)
!1397 = !DILocation(line: 0, scope: !1391, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 229, column: 3, scope: !1381)
!1399 = !DILocation(line: 135, column: 10, scope: !1391, inlinedAt: !1398)
!1400 = !DILocation(line: 232, column: 3, scope: !1381)
!1401 = !DILocation(line: 233, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1381, file: !362, line: 233, column: 7)
!1403 = !DILocation(line: 233, column: 7, scope: !1381)
!1404 = !DILocalVariable(name: "errbuf", scope: !1405, file: !362, line: 193, type: !1409)
!1405 = distinct !DISubprogram(name: "print_errno_message", scope: !362, file: !362, line: 188, type: !765, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1406)
!1406 = !{!1407, !1408, !1404}
!1407 = !DILocalVariable(name: "errnum", arg: 1, scope: !1405, file: !362, line: 188, type: !150)
!1408 = !DILocalVariable(name: "s", scope: !1405, file: !362, line: 190, type: !125)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1410)
!1410 = !{!1411}
!1411 = !DISubrange(count: 1024)
!1412 = !DILocation(line: 0, scope: !1405, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 234, column: 5, scope: !1402)
!1414 = !DILocation(line: 193, column: 3, scope: !1405, inlinedAt: !1413)
!1415 = !DILocation(line: 195, column: 7, scope: !1405, inlinedAt: !1413)
!1416 = !DILocation(line: 207, column: 9, scope: !1417, inlinedAt: !1413)
!1417 = distinct !DILexicalBlock(scope: !1405, file: !362, line: 207, column: 7)
!1418 = !DILocation(line: 207, column: 7, scope: !1405, inlinedAt: !1413)
!1419 = !DILocation(line: 208, column: 9, scope: !1417, inlinedAt: !1413)
!1420 = !DILocation(line: 208, column: 5, scope: !1417, inlinedAt: !1413)
!1421 = !DILocation(line: 214, column: 3, scope: !1405, inlinedAt: !1413)
!1422 = !DILocation(line: 216, column: 1, scope: !1405, inlinedAt: !1413)
!1423 = !DILocation(line: 234, column: 5, scope: !1402)
!1424 = !DILocation(line: 238, column: 3, scope: !1381)
!1425 = !DILocalVariable(name: "__c", arg: 1, scope: !1426, file: !1200, line: 101, type: !150)
!1426 = distinct !DISubprogram(name: "putc_unlocked", scope: !1200, file: !1200, line: 101, type: !1427, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!150, !150, !1347}
!1429 = !{!1425, !1430}
!1430 = !DILocalVariable(name: "__stream", arg: 2, scope: !1426, file: !1200, line: 101, type: !1347)
!1431 = !DILocation(line: 0, scope: !1426, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 238, column: 3, scope: !1381)
!1433 = !DILocation(line: 103, column: 10, scope: !1426, inlinedAt: !1432)
!1434 = !DILocation(line: 240, column: 3, scope: !1381)
!1435 = !DILocation(line: 241, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1381, file: !362, line: 241, column: 7)
!1437 = !DILocation(line: 241, column: 7, scope: !1381)
!1438 = !DILocation(line: 242, column: 5, scope: !1436)
!1439 = !DILocation(line: 243, column: 1, scope: !1381)
!1440 = !DISubprogram(name: "__vfprintf_chk", scope: !801, file: !801, line: 96, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!150, !1346, !150, !804, !372}
!1443 = !DISubprogram(name: "strerror_r", scope: !966, file: !966, line: 444, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!148, !150, !148, !152}
!1446 = !DISubprogram(name: "fflush_unlocked", scope: !806, file: !806, line: 239, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!150, !1347}
!1449 = !DISubprogram(name: "fcntl", scope: !1450, file: !1450, line: 149, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!150, !150, !150, null}
!1453 = distinct !DISubprogram(name: "error", scope: !362, file: !362, line: 285, type: !1454, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !150, !150, !125, null}
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DILocalVariable(name: "status", arg: 1, scope: !1453, file: !362, line: 285, type: !150)
!1458 = !DILocalVariable(name: "errnum", arg: 2, scope: !1453, file: !362, line: 285, type: !150)
!1459 = !DILocalVariable(name: "message", arg: 3, scope: !1453, file: !362, line: 285, type: !125)
!1460 = !DILocalVariable(name: "ap", scope: !1453, file: !362, line: 287, type: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !806, line: 52, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1463, line: 12, baseType: !1464)
!1463 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !362, baseType: !1465)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !91)
!1466 = distinct !DIAssignID()
!1467 = !DILocation(line: 0, scope: !1453)
!1468 = !DILocation(line: 287, column: 3, scope: !1453)
!1469 = !DILocation(line: 288, column: 3, scope: !1453)
!1470 = !DILocation(line: 289, column: 3, scope: !1453)
!1471 = !DILocation(line: 290, column: 3, scope: !1453)
!1472 = !DILocation(line: 291, column: 1, scope: !1453)
!1473 = !DILocation(line: 0, scope: !369)
!1474 = !DILocation(line: 302, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !369, file: !362, line: 302, column: 7)
!1476 = !DILocation(line: 302, column: 7, scope: !369)
!1477 = !DILocation(line: 307, column: 11, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !362, line: 307, column: 11)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !362, line: 303, column: 5)
!1480 = !DILocation(line: 307, column: 27, scope: !1478)
!1481 = !DILocation(line: 308, column: 11, scope: !1478)
!1482 = !DILocation(line: 308, column: 28, scope: !1478)
!1483 = !DILocation(line: 308, column: 25, scope: !1478)
!1484 = !DILocation(line: 309, column: 15, scope: !1478)
!1485 = !DILocation(line: 309, column: 33, scope: !1478)
!1486 = !DILocation(line: 310, column: 19, scope: !1478)
!1487 = !DILocation(line: 311, column: 22, scope: !1478)
!1488 = !DILocation(line: 311, column: 56, scope: !1478)
!1489 = !DILocation(line: 307, column: 11, scope: !1479)
!1490 = !DILocation(line: 316, column: 21, scope: !1479)
!1491 = !DILocation(line: 317, column: 23, scope: !1479)
!1492 = !DILocation(line: 318, column: 5, scope: !1479)
!1493 = !DILocation(line: 327, column: 3, scope: !369)
!1494 = !DILocation(line: 331, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !369, file: !362, line: 331, column: 7)
!1496 = !DILocation(line: 331, column: 7, scope: !369)
!1497 = !DILocation(line: 332, column: 5, scope: !1495)
!1498 = !DILocation(line: 338, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !362, line: 334, column: 5)
!1500 = !DILocation(line: 346, column: 3, scope: !369)
!1501 = !DILocation(line: 350, column: 3, scope: !369)
!1502 = !DILocation(line: 356, column: 1, scope: !369)
!1503 = distinct !DISubprogram(name: "error_at_line", scope: !362, file: !362, line: 359, type: !1504, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !150, !150, !125, !129, !125, null}
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512}
!1507 = !DILocalVariable(name: "status", arg: 1, scope: !1503, file: !362, line: 359, type: !150)
!1508 = !DILocalVariable(name: "errnum", arg: 2, scope: !1503, file: !362, line: 359, type: !150)
!1509 = !DILocalVariable(name: "file_name", arg: 3, scope: !1503, file: !362, line: 359, type: !125)
!1510 = !DILocalVariable(name: "line_number", arg: 4, scope: !1503, file: !362, line: 360, type: !129)
!1511 = !DILocalVariable(name: "message", arg: 5, scope: !1503, file: !362, line: 360, type: !125)
!1512 = !DILocalVariable(name: "ap", scope: !1503, file: !362, line: 362, type: !1461)
!1513 = distinct !DIAssignID()
!1514 = !DILocation(line: 0, scope: !1503)
!1515 = !DILocation(line: 362, column: 3, scope: !1503)
!1516 = !DILocation(line: 363, column: 3, scope: !1503)
!1517 = !DILocation(line: 364, column: 3, scope: !1503)
!1518 = !DILocation(line: 366, column: 3, scope: !1503)
!1519 = !DILocation(line: 367, column: 1, scope: !1503)
!1520 = distinct !DISubprogram(name: "getprogname", scope: !693, file: !693, line: 54, type: !1521, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!125}
!1523 = !DILocation(line: 58, column: 10, scope: !1520)
!1524 = !DILocation(line: 58, column: 3, scope: !1520)
!1525 = distinct !DISubprogram(name: "set_program_name", scope: !413, file: !413, line: 37, type: !1254, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1526)
!1526 = !{!1527, !1528, !1529}
!1527 = !DILocalVariable(name: "argv0", arg: 1, scope: !1525, file: !413, line: 37, type: !125)
!1528 = !DILocalVariable(name: "slash", scope: !1525, file: !413, line: 44, type: !125)
!1529 = !DILocalVariable(name: "base", scope: !1525, file: !413, line: 45, type: !125)
!1530 = !DILocation(line: 0, scope: !1525)
!1531 = !DILocation(line: 44, column: 23, scope: !1525)
!1532 = !DILocation(line: 45, column: 22, scope: !1525)
!1533 = !DILocation(line: 46, column: 17, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1525, file: !413, line: 46, column: 7)
!1535 = !DILocation(line: 46, column: 9, scope: !1534)
!1536 = !DILocation(line: 46, column: 25, scope: !1534)
!1537 = !DILocation(line: 46, column: 40, scope: !1534)
!1538 = !DILocalVariable(name: "__s1", arg: 1, scope: !1539, file: !825, line: 974, type: !992)
!1539 = distinct !DISubprogram(name: "memeq", scope: !825, file: !825, line: 974, type: !1540, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!266, !992, !992, !152}
!1542 = !{!1538, !1543, !1544}
!1543 = !DILocalVariable(name: "__s2", arg: 2, scope: !1539, file: !825, line: 974, type: !992)
!1544 = !DILocalVariable(name: "__n", arg: 3, scope: !1539, file: !825, line: 974, type: !152)
!1545 = !DILocation(line: 0, scope: !1539, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 46, column: 28, scope: !1534)
!1547 = !DILocation(line: 976, column: 11, scope: !1539, inlinedAt: !1546)
!1548 = !DILocation(line: 976, column: 10, scope: !1539, inlinedAt: !1546)
!1549 = !DILocation(line: 46, column: 7, scope: !1525)
!1550 = !DILocation(line: 49, column: 11, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !413, line: 49, column: 11)
!1552 = distinct !DILexicalBlock(scope: !1534, file: !413, line: 47, column: 5)
!1553 = !DILocation(line: 49, column: 36, scope: !1551)
!1554 = !DILocation(line: 49, column: 11, scope: !1552)
!1555 = !DILocation(line: 65, column: 16, scope: !1525)
!1556 = !DILocation(line: 71, column: 27, scope: !1525)
!1557 = !DILocation(line: 74, column: 33, scope: !1525)
!1558 = !DILocation(line: 76, column: 1, scope: !1525)
!1559 = !DISubprogram(name: "strrchr", scope: !966, file: !966, line: 273, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1560 = distinct !DIAssignID()
!1561 = !DILocation(line: 0, scope: !422)
!1562 = distinct !DIAssignID()
!1563 = !DILocation(line: 40, column: 29, scope: !422)
!1564 = !DILocation(line: 41, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !422, file: !423, line: 41, column: 7)
!1566 = !DILocation(line: 41, column: 7, scope: !422)
!1567 = !DILocation(line: 47, column: 3, scope: !422)
!1568 = !DILocation(line: 48, column: 3, scope: !422)
!1569 = !DILocalVariable(name: "ps", arg: 1, scope: !1570, file: !1571, line: 1135, type: !1574)
!1570 = distinct !DISubprogram(name: "mbszero", scope: !1571, file: !1571, line: 1135, type: !1572, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1575)
!1571 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1575 = !{!1569}
!1576 = !DILocation(line: 0, scope: !1570, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 48, column: 18, scope: !422)
!1578 = !DILocalVariable(name: "__dest", arg: 1, scope: !1579, file: !1580, line: 57, type: !149)
!1579 = distinct !DISubprogram(name: "memset", scope: !1580, file: !1580, line: 57, type: !1581, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1583)
!1580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!149, !149, !150, !152}
!1583 = !{!1578, !1584, !1585}
!1584 = !DILocalVariable(name: "__ch", arg: 2, scope: !1579, file: !1580, line: 57, type: !150)
!1585 = !DILocalVariable(name: "__len", arg: 3, scope: !1579, file: !1580, line: 57, type: !152)
!1586 = !DILocation(line: 0, scope: !1579, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1137, column: 3, scope: !1570, inlinedAt: !1577)
!1588 = !DILocation(line: 59, column: 10, scope: !1579, inlinedAt: !1587)
!1589 = !DILocation(line: 49, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !422, file: !423, line: 49, column: 7)
!1591 = !DILocation(line: 49, column: 39, scope: !1590)
!1592 = !DILocation(line: 49, column: 44, scope: !1590)
!1593 = !DILocation(line: 54, column: 1, scope: !422)
!1594 = !DISubprogram(name: "mbrtoc32", scope: !434, file: !434, line: 57, type: !1595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!152, !1597, !804, !152, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1574)
!1600 = distinct !DISubprogram(name: "clone_quoting_options", scope: !453, file: !453, line: 113, type: !1601, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1604)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1603, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1604 = !{!1605, !1606, !1607}
!1605 = !DILocalVariable(name: "o", arg: 1, scope: !1600, file: !453, line: 113, type: !1603)
!1606 = !DILocalVariable(name: "saved_errno", scope: !1600, file: !453, line: 115, type: !150)
!1607 = !DILocalVariable(name: "p", scope: !1600, file: !453, line: 116, type: !1603)
!1608 = !DILocation(line: 0, scope: !1600)
!1609 = !DILocation(line: 115, column: 21, scope: !1600)
!1610 = !DILocation(line: 116, column: 40, scope: !1600)
!1611 = !DILocation(line: 116, column: 31, scope: !1600)
!1612 = !DILocation(line: 118, column: 9, scope: !1600)
!1613 = !DILocation(line: 119, column: 3, scope: !1600)
!1614 = distinct !DISubprogram(name: "get_quoting_style", scope: !453, file: !453, line: 124, type: !1615, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1619)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!479, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!1619 = !{!1620}
!1620 = !DILocalVariable(name: "o", arg: 1, scope: !1614, file: !453, line: 124, type: !1617)
!1621 = !DILocation(line: 0, scope: !1614)
!1622 = !DILocation(line: 126, column: 11, scope: !1614)
!1623 = !DILocation(line: 126, column: 46, scope: !1614)
!1624 = !{!1625, !813, i64 0}
!1625 = !{!"quoting_options", !813, i64 0, !813, i64 4, !777, i64 8, !776, i64 40, !776, i64 48}
!1626 = !DILocation(line: 126, column: 3, scope: !1614)
!1627 = distinct !DISubprogram(name: "set_quoting_style", scope: !453, file: !453, line: 132, type: !1628, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1603, !479}
!1630 = !{!1631, !1632}
!1631 = !DILocalVariable(name: "o", arg: 1, scope: !1627, file: !453, line: 132, type: !1603)
!1632 = !DILocalVariable(name: "s", arg: 2, scope: !1627, file: !453, line: 132, type: !479)
!1633 = !DILocation(line: 0, scope: !1627)
!1634 = !DILocation(line: 134, column: 4, scope: !1627)
!1635 = !DILocation(line: 134, column: 45, scope: !1627)
!1636 = !DILocation(line: 135, column: 1, scope: !1627)
!1637 = distinct !DISubprogram(name: "set_char_quoting", scope: !453, file: !453, line: 143, type: !1638, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!150, !1603, !4, !150}
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1647, !1648}
!1641 = !DILocalVariable(name: "o", arg: 1, scope: !1637, file: !453, line: 143, type: !1603)
!1642 = !DILocalVariable(name: "c", arg: 2, scope: !1637, file: !453, line: 143, type: !4)
!1643 = !DILocalVariable(name: "i", arg: 3, scope: !1637, file: !453, line: 143, type: !150)
!1644 = !DILocalVariable(name: "uc", scope: !1637, file: !453, line: 145, type: !155)
!1645 = !DILocalVariable(name: "p", scope: !1637, file: !453, line: 146, type: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1647 = !DILocalVariable(name: "shift", scope: !1637, file: !453, line: 148, type: !150)
!1648 = !DILocalVariable(name: "r", scope: !1637, file: !453, line: 149, type: !129)
!1649 = !DILocation(line: 0, scope: !1637)
!1650 = !DILocation(line: 147, column: 6, scope: !1637)
!1651 = !DILocation(line: 147, column: 41, scope: !1637)
!1652 = !DILocation(line: 147, column: 62, scope: !1637)
!1653 = !DILocation(line: 147, column: 57, scope: !1637)
!1654 = !DILocation(line: 148, column: 15, scope: !1637)
!1655 = !DILocation(line: 149, column: 21, scope: !1637)
!1656 = !DILocation(line: 149, column: 24, scope: !1637)
!1657 = !DILocation(line: 149, column: 34, scope: !1637)
!1658 = !DILocation(line: 150, column: 19, scope: !1637)
!1659 = !DILocation(line: 150, column: 24, scope: !1637)
!1660 = !DILocation(line: 150, column: 6, scope: !1637)
!1661 = !DILocation(line: 151, column: 3, scope: !1637)
!1662 = distinct !DISubprogram(name: "set_quoting_flags", scope: !453, file: !453, line: 159, type: !1663, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!150, !1603, !150}
!1665 = !{!1666, !1667, !1668}
!1666 = !DILocalVariable(name: "o", arg: 1, scope: !1662, file: !453, line: 159, type: !1603)
!1667 = !DILocalVariable(name: "i", arg: 2, scope: !1662, file: !453, line: 159, type: !150)
!1668 = !DILocalVariable(name: "r", scope: !1662, file: !453, line: 163, type: !150)
!1669 = !DILocation(line: 0, scope: !1662)
!1670 = !DILocation(line: 161, column: 8, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1662, file: !453, line: 161, column: 7)
!1672 = !DILocation(line: 161, column: 7, scope: !1662)
!1673 = !DILocation(line: 163, column: 14, scope: !1662)
!1674 = !{!1625, !813, i64 4}
!1675 = !DILocation(line: 164, column: 12, scope: !1662)
!1676 = !DILocation(line: 165, column: 3, scope: !1662)
!1677 = distinct !DISubprogram(name: "set_custom_quoting", scope: !453, file: !453, line: 169, type: !1678, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !1603, !125, !125}
!1680 = !{!1681, !1682, !1683}
!1681 = !DILocalVariable(name: "o", arg: 1, scope: !1677, file: !453, line: 169, type: !1603)
!1682 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1677, file: !453, line: 170, type: !125)
!1683 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1677, file: !453, line: 170, type: !125)
!1684 = !DILocation(line: 0, scope: !1677)
!1685 = !DILocation(line: 172, column: 8, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1677, file: !453, line: 172, column: 7)
!1687 = !DILocation(line: 172, column: 7, scope: !1677)
!1688 = !DILocation(line: 174, column: 12, scope: !1677)
!1689 = !DILocation(line: 175, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1677, file: !453, line: 175, column: 7)
!1691 = !DILocation(line: 175, column: 19, scope: !1690)
!1692 = !DILocation(line: 176, column: 5, scope: !1690)
!1693 = !DILocation(line: 177, column: 6, scope: !1677)
!1694 = !DILocation(line: 177, column: 17, scope: !1677)
!1695 = !{!1625, !776, i64 40}
!1696 = !DILocation(line: 178, column: 6, scope: !1677)
!1697 = !DILocation(line: 178, column: 18, scope: !1677)
!1698 = !{!1625, !776, i64 48}
!1699 = !DILocation(line: 179, column: 1, scope: !1677)
!1700 = !DISubprogram(name: "abort", scope: !960, file: !960, line: 598, type: !408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1701 = distinct !DISubprogram(name: "quotearg_buffer", scope: !453, file: !453, line: 774, type: !1702, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!152, !148, !152, !125, !152, !1617}
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1705 = !DILocalVariable(name: "buffer", arg: 1, scope: !1701, file: !453, line: 774, type: !148)
!1706 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1701, file: !453, line: 774, type: !152)
!1707 = !DILocalVariable(name: "arg", arg: 3, scope: !1701, file: !453, line: 775, type: !125)
!1708 = !DILocalVariable(name: "argsize", arg: 4, scope: !1701, file: !453, line: 775, type: !152)
!1709 = !DILocalVariable(name: "o", arg: 5, scope: !1701, file: !453, line: 776, type: !1617)
!1710 = !DILocalVariable(name: "p", scope: !1701, file: !453, line: 778, type: !1617)
!1711 = !DILocalVariable(name: "saved_errno", scope: !1701, file: !453, line: 779, type: !150)
!1712 = !DILocalVariable(name: "r", scope: !1701, file: !453, line: 780, type: !152)
!1713 = !DILocation(line: 0, scope: !1701)
!1714 = !DILocation(line: 778, column: 37, scope: !1701)
!1715 = !DILocation(line: 779, column: 21, scope: !1701)
!1716 = !DILocation(line: 781, column: 43, scope: !1701)
!1717 = !DILocation(line: 781, column: 53, scope: !1701)
!1718 = !DILocation(line: 781, column: 63, scope: !1701)
!1719 = !DILocation(line: 782, column: 43, scope: !1701)
!1720 = !DILocation(line: 782, column: 58, scope: !1701)
!1721 = !DILocation(line: 780, column: 14, scope: !1701)
!1722 = !DILocation(line: 783, column: 9, scope: !1701)
!1723 = !DILocation(line: 784, column: 3, scope: !1701)
!1724 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !453, file: !453, line: 251, type: !1725, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1729)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!152, !148, !152, !125, !152, !479, !150, !1727, !125, !125}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1755, !1757, !1760, !1761, !1762, !1763, !1766, !1767, !1769, !1770, !1773, !1777, !1778, !1786, !1789, !1790, !1791}
!1730 = !DILocalVariable(name: "buffer", arg: 1, scope: !1724, file: !453, line: 251, type: !148)
!1731 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1724, file: !453, line: 251, type: !152)
!1732 = !DILocalVariable(name: "arg", arg: 3, scope: !1724, file: !453, line: 252, type: !125)
!1733 = !DILocalVariable(name: "argsize", arg: 4, scope: !1724, file: !453, line: 252, type: !152)
!1734 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1724, file: !453, line: 253, type: !479)
!1735 = !DILocalVariable(name: "flags", arg: 6, scope: !1724, file: !453, line: 253, type: !150)
!1736 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1724, file: !453, line: 254, type: !1727)
!1737 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1724, file: !453, line: 255, type: !125)
!1738 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1724, file: !453, line: 256, type: !125)
!1739 = !DILocalVariable(name: "unibyte_locale", scope: !1724, file: !453, line: 258, type: !266)
!1740 = !DILocalVariable(name: "len", scope: !1724, file: !453, line: 260, type: !152)
!1741 = !DILocalVariable(name: "orig_buffersize", scope: !1724, file: !453, line: 261, type: !152)
!1742 = !DILocalVariable(name: "quote_string", scope: !1724, file: !453, line: 262, type: !125)
!1743 = !DILocalVariable(name: "quote_string_len", scope: !1724, file: !453, line: 263, type: !152)
!1744 = !DILocalVariable(name: "backslash_escapes", scope: !1724, file: !453, line: 264, type: !266)
!1745 = !DILocalVariable(name: "elide_outer_quotes", scope: !1724, file: !453, line: 265, type: !266)
!1746 = !DILocalVariable(name: "encountered_single_quote", scope: !1724, file: !453, line: 266, type: !266)
!1747 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1724, file: !453, line: 267, type: !266)
!1748 = !DILabel(scope: !1724, name: "process_input", file: !453, line: 308)
!1749 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1724, file: !453, line: 309, type: !266)
!1750 = !DILocalVariable(name: "lq", scope: !1751, file: !453, line: 361, type: !125)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !453, line: 361, column: 11)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !453, line: 360, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !453, line: 333, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1724, file: !453, line: 312, column: 5)
!1755 = !DILocalVariable(name: "i", scope: !1756, file: !453, line: 395, type: !152)
!1756 = distinct !DILexicalBlock(scope: !1724, file: !453, line: 395, column: 3)
!1757 = !DILocalVariable(name: "is_right_quote", scope: !1758, file: !453, line: 397, type: !266)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !453, line: 396, column: 5)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !453, line: 395, column: 3)
!1760 = !DILocalVariable(name: "escaping", scope: !1758, file: !453, line: 398, type: !266)
!1761 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1758, file: !453, line: 399, type: !266)
!1762 = !DILocalVariable(name: "c", scope: !1758, file: !453, line: 417, type: !155)
!1763 = !DILabel(scope: !1764, name: "c_and_shell_escape", file: !453, line: 502)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 478, column: 9)
!1765 = distinct !DILexicalBlock(scope: !1758, file: !453, line: 419, column: 9)
!1766 = !DILabel(scope: !1764, name: "c_escape", file: !453, line: 507)
!1767 = !DILocalVariable(name: "m", scope: !1768, file: !453, line: 598, type: !152)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 596, column: 11)
!1769 = !DILocalVariable(name: "printable", scope: !1768, file: !453, line: 600, type: !266)
!1770 = !DILocalVariable(name: "mbs", scope: !1771, file: !453, line: 609, type: !540)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !453, line: 608, column: 15)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !453, line: 602, column: 17)
!1773 = !DILocalVariable(name: "w", scope: !1774, file: !453, line: 618, type: !433)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !453, line: 617, column: 19)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !453, line: 616, column: 17)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !453, line: 616, column: 17)
!1777 = !DILocalVariable(name: "bytes", scope: !1774, file: !453, line: 619, type: !152)
!1778 = !DILocalVariable(name: "j", scope: !1779, file: !453, line: 648, type: !152)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !453, line: 648, column: 29)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !453, line: 647, column: 27)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !453, line: 645, column: 29)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !453, line: 636, column: 23)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !453, line: 628, column: 30)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !453, line: 623, column: 30)
!1785 = distinct !DILexicalBlock(scope: !1774, file: !453, line: 621, column: 25)
!1786 = !DILocalVariable(name: "ilim", scope: !1787, file: !453, line: 674, type: !152)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !453, line: 671, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1768, file: !453, line: 670, column: 17)
!1789 = !DILabel(scope: !1758, name: "store_escape", file: !453, line: 709)
!1790 = !DILabel(scope: !1758, name: "store_c", file: !453, line: 712)
!1791 = !DILabel(scope: !1724, name: "force_outer_quoting_style", file: !453, line: 753)
!1792 = distinct !DIAssignID()
!1793 = distinct !DIAssignID()
!1794 = distinct !DIAssignID()
!1795 = distinct !DIAssignID()
!1796 = distinct !DIAssignID()
!1797 = !DILocation(line: 0, scope: !1771)
!1798 = distinct !DIAssignID()
!1799 = !DILocation(line: 0, scope: !1774)
!1800 = !DILocation(line: 0, scope: !1724)
!1801 = !DILocation(line: 258, column: 25, scope: !1724)
!1802 = !DILocation(line: 258, column: 36, scope: !1724)
!1803 = !DILocation(line: 265, column: 8, scope: !1724)
!1804 = !DILocation(line: 267, column: 3, scope: !1724)
!1805 = !DILocation(line: 261, column: 10, scope: !1724)
!1806 = !DILocation(line: 262, column: 15, scope: !1724)
!1807 = !DILocation(line: 263, column: 10, scope: !1724)
!1808 = !DILocation(line: 264, column: 8, scope: !1724)
!1809 = !DILocation(line: 266, column: 8, scope: !1724)
!1810 = !DILocation(line: 267, column: 8, scope: !1724)
!1811 = !DILocation(line: 308, column: 2, scope: !1724)
!1812 = !DILocation(line: 311, column: 3, scope: !1724)
!1813 = !DILocation(line: 318, column: 11, scope: !1754)
!1814 = !DILocation(line: 318, column: 12, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1754, file: !453, line: 318, column: 11)
!1816 = !DILocation(line: 319, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !453, line: 319, column: 9)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !453, line: 319, column: 9)
!1819 = !DILocation(line: 319, column: 9, scope: !1818)
!1820 = !DILocation(line: 0, scope: !531, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 357, column: 26, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !453, line: 335, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1753, file: !453, line: 334, column: 13)
!1824 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !1821)
!1825 = !DILocation(line: 201, column: 19, scope: !1826, inlinedAt: !1821)
!1826 = distinct !DILexicalBlock(scope: !531, file: !453, line: 201, column: 7)
!1827 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !1821)
!1828 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !1821)
!1829 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !1821)
!1830 = !DILocalVariable(name: "ps", arg: 1, scope: !1831, file: !1571, line: 1135, type: !1834)
!1831 = distinct !DISubprogram(name: "mbszero", scope: !1571, file: !1571, line: 1135, type: !1832, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1835)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1835 = !{!1830}
!1836 = !DILocation(line: 0, scope: !1831, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !1821)
!1838 = !DILocalVariable(name: "__dest", arg: 1, scope: !1839, file: !1580, line: 57, type: !149)
!1839 = distinct !DISubprogram(name: "memset", scope: !1580, file: !1580, line: 57, type: !1581, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1840)
!1840 = !{!1838, !1841, !1842}
!1841 = !DILocalVariable(name: "__ch", arg: 2, scope: !1839, file: !1580, line: 57, type: !150)
!1842 = !DILocalVariable(name: "__len", arg: 3, scope: !1839, file: !1580, line: 57, type: !152)
!1843 = !DILocation(line: 0, scope: !1839, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 1137, column: 3, scope: !1831, inlinedAt: !1837)
!1845 = !DILocation(line: 59, column: 10, scope: !1839, inlinedAt: !1844)
!1846 = !DILocation(line: 231, column: 7, scope: !1847, inlinedAt: !1821)
!1847 = distinct !DILexicalBlock(scope: !531, file: !453, line: 231, column: 7)
!1848 = !DILocation(line: 231, column: 40, scope: !1847, inlinedAt: !1821)
!1849 = !DILocation(line: 231, column: 45, scope: !1847, inlinedAt: !1821)
!1850 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !1821)
!1851 = !DILocation(line: 0, scope: !531, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 358, column: 27, scope: !1822)
!1853 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !1852)
!1854 = !DILocation(line: 201, column: 19, scope: !1826, inlinedAt: !1852)
!1855 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !1852)
!1856 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !1852)
!1857 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !1852)
!1858 = !DILocation(line: 0, scope: !1831, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !1852)
!1860 = !DILocation(line: 0, scope: !1839, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 1137, column: 3, scope: !1831, inlinedAt: !1859)
!1862 = !DILocation(line: 59, column: 10, scope: !1839, inlinedAt: !1861)
!1863 = !DILocation(line: 231, column: 7, scope: !1847, inlinedAt: !1852)
!1864 = !DILocation(line: 231, column: 40, scope: !1847, inlinedAt: !1852)
!1865 = !DILocation(line: 231, column: 45, scope: !1847, inlinedAt: !1852)
!1866 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !1852)
!1867 = !DILocation(line: 360, column: 14, scope: !1752)
!1868 = !DILocation(line: 360, column: 13, scope: !1753)
!1869 = !DILocation(line: 0, scope: !1751)
!1870 = !DILocation(line: 361, column: 45, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1751, file: !453, line: 361, column: 11)
!1872 = !DILocation(line: 361, column: 11, scope: !1751)
!1873 = !DILocation(line: 362, column: 13, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !453, line: 362, column: 13)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !453, line: 362, column: 13)
!1876 = !DILocation(line: 362, column: 13, scope: !1875)
!1877 = !DILocation(line: 361, column: 52, scope: !1871)
!1878 = distinct !{!1878, !1872, !1879, !859}
!1879 = !DILocation(line: 362, column: 13, scope: !1751)
!1880 = !DILocation(line: 260, column: 10, scope: !1724)
!1881 = !DILocation(line: 365, column: 28, scope: !1753)
!1882 = !DILocation(line: 367, column: 7, scope: !1754)
!1883 = !DILocation(line: 370, column: 7, scope: !1754)
!1884 = !DILocation(line: 373, column: 7, scope: !1754)
!1885 = !DILocation(line: 376, column: 12, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1754, file: !453, line: 376, column: 11)
!1887 = !DILocation(line: 376, column: 11, scope: !1754)
!1888 = !DILocation(line: 381, column: 12, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1754, file: !453, line: 381, column: 11)
!1890 = !DILocation(line: 381, column: 11, scope: !1754)
!1891 = !DILocation(line: 382, column: 9, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !453, line: 382, column: 9)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !453, line: 382, column: 9)
!1894 = !DILocation(line: 382, column: 9, scope: !1893)
!1895 = !DILocation(line: 389, column: 7, scope: !1754)
!1896 = !DILocation(line: 392, column: 7, scope: !1754)
!1897 = !DILocation(line: 0, scope: !1756)
!1898 = !DILocation(line: 395, column: 8, scope: !1756)
!1899 = !DILocation(line: 309, column: 8, scope: !1724)
!1900 = !DILocation(line: 395, scope: !1756)
!1901 = !DILocation(line: 395, column: 34, scope: !1759)
!1902 = !DILocation(line: 395, column: 26, scope: !1759)
!1903 = !DILocation(line: 395, column: 48, scope: !1759)
!1904 = !DILocation(line: 395, column: 55, scope: !1759)
!1905 = !DILocation(line: 395, column: 3, scope: !1756)
!1906 = !DILocation(line: 395, column: 67, scope: !1759)
!1907 = !DILocation(line: 0, scope: !1758)
!1908 = !DILocation(line: 402, column: 11, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1758, file: !453, line: 401, column: 11)
!1910 = !DILocation(line: 404, column: 17, scope: !1909)
!1911 = !DILocation(line: 405, column: 39, scope: !1909)
!1912 = !DILocation(line: 409, column: 32, scope: !1909)
!1913 = !DILocation(line: 405, column: 19, scope: !1909)
!1914 = !DILocation(line: 405, column: 15, scope: !1909)
!1915 = !DILocation(line: 410, column: 11, scope: !1909)
!1916 = !DILocation(line: 410, column: 25, scope: !1909)
!1917 = !DILocalVariable(name: "__s1", arg: 1, scope: !1918, file: !825, line: 974, type: !992)
!1918 = distinct !DISubprogram(name: "memeq", scope: !825, file: !825, line: 974, type: !1540, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1919)
!1919 = !{!1917, !1920, !1921}
!1920 = !DILocalVariable(name: "__s2", arg: 2, scope: !1918, file: !825, line: 974, type: !992)
!1921 = !DILocalVariable(name: "__n", arg: 3, scope: !1918, file: !825, line: 974, type: !152)
!1922 = !DILocation(line: 0, scope: !1918, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 410, column: 14, scope: !1909)
!1924 = !DILocation(line: 976, column: 11, scope: !1918, inlinedAt: !1923)
!1925 = !DILocation(line: 976, column: 10, scope: !1918, inlinedAt: !1923)
!1926 = !DILocation(line: 401, column: 11, scope: !1758)
!1927 = !DILocation(line: 417, column: 25, scope: !1758)
!1928 = !DILocation(line: 418, column: 7, scope: !1758)
!1929 = !DILocation(line: 421, column: 15, scope: !1765)
!1930 = !DILocation(line: 423, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !453, line: 423, column: 15)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !453, line: 422, column: 13)
!1933 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 421, column: 15)
!1934 = !DILocation(line: 423, column: 15, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !453, line: 423, column: 15)
!1936 = !DILocation(line: 423, column: 15, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !453, line: 423, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !453, line: 423, column: 15)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !453, line: 423, column: 15)
!1940 = !DILocation(line: 423, column: 15, scope: !1938)
!1941 = !DILocation(line: 423, column: 15, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !453, line: 423, column: 15)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !453, line: 423, column: 15)
!1944 = !DILocation(line: 423, column: 15, scope: !1943)
!1945 = !DILocation(line: 423, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !453, line: 423, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1939, file: !453, line: 423, column: 15)
!1948 = !DILocation(line: 423, column: 15, scope: !1947)
!1949 = !DILocation(line: 423, column: 15, scope: !1939)
!1950 = !DILocation(line: 423, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !453, line: 423, column: 15)
!1952 = distinct !DILexicalBlock(scope: !1931, file: !453, line: 423, column: 15)
!1953 = !DILocation(line: 423, column: 15, scope: !1952)
!1954 = !DILocation(line: 431, column: 19, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1932, file: !453, line: 430, column: 19)
!1956 = !DILocation(line: 431, column: 24, scope: !1955)
!1957 = !DILocation(line: 431, column: 28, scope: !1955)
!1958 = !DILocation(line: 431, column: 38, scope: !1955)
!1959 = !DILocation(line: 431, column: 48, scope: !1955)
!1960 = !DILocation(line: 431, column: 59, scope: !1955)
!1961 = !DILocation(line: 433, column: 19, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !453, line: 433, column: 19)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !453, line: 433, column: 19)
!1964 = distinct !DILexicalBlock(scope: !1955, file: !453, line: 432, column: 17)
!1965 = !DILocation(line: 433, column: 19, scope: !1963)
!1966 = !DILocation(line: 434, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !453, line: 434, column: 19)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !453, line: 434, column: 19)
!1969 = !DILocation(line: 434, column: 19, scope: !1968)
!1970 = !DILocation(line: 435, column: 17, scope: !1964)
!1971 = !DILocation(line: 442, column: 20, scope: !1933)
!1972 = !DILocation(line: 447, column: 11, scope: !1765)
!1973 = !DILocation(line: 450, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 448, column: 13)
!1975 = !DILocation(line: 456, column: 19, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1974, file: !453, line: 455, column: 19)
!1977 = !DILocation(line: 456, column: 24, scope: !1976)
!1978 = !DILocation(line: 456, column: 28, scope: !1976)
!1979 = !DILocation(line: 456, column: 38, scope: !1976)
!1980 = !DILocation(line: 456, column: 41, scope: !1976)
!1981 = !DILocation(line: 456, column: 52, scope: !1976)
!1982 = !DILocation(line: 455, column: 19, scope: !1974)
!1983 = !DILocation(line: 457, column: 25, scope: !1976)
!1984 = !DILocation(line: 457, column: 17, scope: !1976)
!1985 = !DILocation(line: 464, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1976, file: !453, line: 458, column: 19)
!1987 = !DILocation(line: 468, column: 21, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !453, line: 468, column: 21)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !453, line: 468, column: 21)
!1990 = !DILocation(line: 468, column: 21, scope: !1989)
!1991 = !DILocation(line: 469, column: 21, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !453, line: 469, column: 21)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !453, line: 469, column: 21)
!1994 = !DILocation(line: 469, column: 21, scope: !1993)
!1995 = !DILocation(line: 470, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !453, line: 470, column: 21)
!1997 = distinct !DILexicalBlock(scope: !1986, file: !453, line: 470, column: 21)
!1998 = !DILocation(line: 470, column: 21, scope: !1997)
!1999 = !DILocation(line: 471, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !453, line: 471, column: 21)
!2001 = distinct !DILexicalBlock(scope: !1986, file: !453, line: 471, column: 21)
!2002 = !DILocation(line: 471, column: 21, scope: !2001)
!2003 = !DILocation(line: 472, column: 21, scope: !1986)
!2004 = !DILocation(line: 482, column: 33, scope: !1764)
!2005 = !DILocation(line: 483, column: 33, scope: !1764)
!2006 = !DILocation(line: 485, column: 33, scope: !1764)
!2007 = !DILocation(line: 486, column: 33, scope: !1764)
!2008 = !DILocation(line: 487, column: 33, scope: !1764)
!2009 = !DILocation(line: 490, column: 17, scope: !1764)
!2010 = !DILocation(line: 492, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !453, line: 491, column: 15)
!2012 = distinct !DILexicalBlock(scope: !1764, file: !453, line: 490, column: 17)
!2013 = !DILocation(line: 499, column: 35, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1764, file: !453, line: 499, column: 17)
!2015 = !DILocation(line: 499, column: 57, scope: !2014)
!2016 = !DILocation(line: 0, scope: !1764)
!2017 = !DILocation(line: 502, column: 11, scope: !1764)
!2018 = !DILocation(line: 504, column: 17, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1764, file: !453, line: 503, column: 17)
!2020 = !DILocation(line: 507, column: 11, scope: !1764)
!2021 = !DILocation(line: 508, column: 17, scope: !1764)
!2022 = !DILocation(line: 517, column: 15, scope: !1765)
!2023 = !DILocation(line: 517, column: 40, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 517, column: 15)
!2025 = !DILocation(line: 517, column: 47, scope: !2024)
!2026 = !DILocation(line: 517, column: 18, scope: !2024)
!2027 = !DILocation(line: 521, column: 17, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 521, column: 15)
!2029 = !DILocation(line: 521, column: 15, scope: !1765)
!2030 = !DILocation(line: 525, column: 11, scope: !1765)
!2031 = !DILocation(line: 537, column: 15, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 536, column: 15)
!2033 = !DILocation(line: 544, column: 15, scope: !1765)
!2034 = !DILocation(line: 546, column: 19, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !453, line: 545, column: 13)
!2036 = distinct !DILexicalBlock(scope: !1765, file: !453, line: 544, column: 15)
!2037 = !DILocation(line: 549, column: 19, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !453, line: 549, column: 19)
!2039 = !DILocation(line: 549, column: 30, scope: !2038)
!2040 = !DILocation(line: 558, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !453, line: 558, column: 15)
!2042 = distinct !DILexicalBlock(scope: !2035, file: !453, line: 558, column: 15)
!2043 = !DILocation(line: 558, column: 15, scope: !2042)
!2044 = !DILocation(line: 559, column: 15, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !453, line: 559, column: 15)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !453, line: 559, column: 15)
!2047 = !DILocation(line: 559, column: 15, scope: !2046)
!2048 = !DILocation(line: 560, column: 15, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !453, line: 560, column: 15)
!2050 = distinct !DILexicalBlock(scope: !2035, file: !453, line: 560, column: 15)
!2051 = !DILocation(line: 560, column: 15, scope: !2050)
!2052 = !DILocation(line: 562, column: 13, scope: !2035)
!2053 = !DILocation(line: 602, column: 17, scope: !1768)
!2054 = !DILocation(line: 0, scope: !1768)
!2055 = !DILocation(line: 605, column: 29, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1772, file: !453, line: 603, column: 15)
!2057 = !DILocation(line: 605, column: 27, scope: !2056)
!2058 = !DILocation(line: 606, column: 15, scope: !2056)
!2059 = !DILocation(line: 609, column: 17, scope: !1771)
!2060 = !DILocation(line: 0, scope: !1831, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 609, column: 32, scope: !1771)
!2062 = !DILocation(line: 0, scope: !1839, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 1137, column: 3, scope: !1831, inlinedAt: !2061)
!2064 = !DILocation(line: 59, column: 10, scope: !1839, inlinedAt: !2063)
!2065 = !DILocation(line: 613, column: 29, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1771, file: !453, line: 613, column: 21)
!2067 = !DILocation(line: 613, column: 21, scope: !1771)
!2068 = !DILocation(line: 614, column: 29, scope: !2066)
!2069 = !DILocation(line: 614, column: 19, scope: !2066)
!2070 = !DILocation(line: 618, column: 21, scope: !1774)
!2071 = !DILocation(line: 620, column: 54, scope: !1774)
!2072 = !DILocation(line: 619, column: 36, scope: !1774)
!2073 = !DILocation(line: 621, column: 25, scope: !1774)
!2074 = !DILocation(line: 631, column: 38, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1783, file: !453, line: 629, column: 23)
!2076 = !DILocation(line: 631, column: 48, scope: !2075)
!2077 = !DILocation(line: 626, column: 25, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1784, file: !453, line: 624, column: 23)
!2079 = !DILocation(line: 631, column: 51, scope: !2075)
!2080 = !DILocation(line: 631, column: 25, scope: !2075)
!2081 = !DILocation(line: 632, column: 28, scope: !2075)
!2082 = !DILocation(line: 631, column: 34, scope: !2075)
!2083 = distinct !{!2083, !2080, !2081, !859}
!2084 = !DILocation(line: 0, scope: !1779)
!2085 = !DILocation(line: 646, column: 29, scope: !1781)
!2086 = !DILocation(line: 649, column: 39, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1779, file: !453, line: 648, column: 29)
!2088 = !DILocation(line: 649, column: 31, scope: !2087)
!2089 = !DILocation(line: 648, column: 60, scope: !2087)
!2090 = !DILocation(line: 648, column: 50, scope: !2087)
!2091 = !DILocation(line: 648, column: 29, scope: !1779)
!2092 = distinct !{!2092, !2091, !2093, !859}
!2093 = !DILocation(line: 654, column: 33, scope: !1779)
!2094 = !DILocation(line: 657, column: 43, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1782, file: !453, line: 657, column: 29)
!2096 = !DILocalVariable(name: "wc", arg: 1, scope: !2097, file: !2098, line: 865, type: !2101)
!2097 = distinct !DISubprogram(name: "c32isprint", scope: !2098, file: !2098, line: 865, type: !2099, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2103)
!2098 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!150, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2102, line: 20, baseType: !129)
!2102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2103 = !{!2096}
!2104 = !DILocation(line: 0, scope: !2097, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 657, column: 31, scope: !2095)
!2106 = !DILocation(line: 871, column: 10, scope: !2097, inlinedAt: !2105)
!2107 = !DILocation(line: 657, column: 31, scope: !2095)
!2108 = !DILocation(line: 664, column: 23, scope: !1774)
!2109 = !DILocation(line: 665, column: 19, scope: !1775)
!2110 = !DILocation(line: 666, column: 15, scope: !1772)
!2111 = !DILocation(line: 0, scope: !1772)
!2112 = !DILocation(line: 670, column: 19, scope: !1788)
!2113 = !DILocation(line: 670, column: 23, scope: !1788)
!2114 = !DILocation(line: 674, column: 33, scope: !1787)
!2115 = !DILocation(line: 0, scope: !1787)
!2116 = !DILocation(line: 676, column: 17, scope: !1787)
!2117 = !DILocation(line: 398, column: 12, scope: !1758)
!2118 = !DILocation(line: 678, column: 43, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !453, line: 678, column: 25)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !453, line: 677, column: 19)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !453, line: 676, column: 17)
!2122 = distinct !DILexicalBlock(scope: !1787, file: !453, line: 676, column: 17)
!2123 = !DILocation(line: 680, column: 25, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !453, line: 680, column: 25)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !453, line: 679, column: 23)
!2126 = !DILocation(line: 680, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !453, line: 680, column: 25)
!2128 = !DILocation(line: 680, column: 25, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !453, line: 680, column: 25)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !453, line: 680, column: 25)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !453, line: 680, column: 25)
!2132 = !DILocation(line: 680, column: 25, scope: !2130)
!2133 = !DILocation(line: 680, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !453, line: 680, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !453, line: 680, column: 25)
!2136 = !DILocation(line: 680, column: 25, scope: !2135)
!2137 = !DILocation(line: 680, column: 25, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !453, line: 680, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !453, line: 680, column: 25)
!2140 = !DILocation(line: 680, column: 25, scope: !2139)
!2141 = !DILocation(line: 680, column: 25, scope: !2131)
!2142 = !DILocation(line: 680, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !453, line: 680, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2124, file: !453, line: 680, column: 25)
!2145 = !DILocation(line: 680, column: 25, scope: !2144)
!2146 = !DILocation(line: 681, column: 25, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !453, line: 681, column: 25)
!2148 = distinct !DILexicalBlock(scope: !2125, file: !453, line: 681, column: 25)
!2149 = !DILocation(line: 681, column: 25, scope: !2148)
!2150 = !DILocation(line: 682, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !453, line: 682, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2125, file: !453, line: 682, column: 25)
!2153 = !DILocation(line: 682, column: 25, scope: !2152)
!2154 = !DILocation(line: 683, column: 38, scope: !2125)
!2155 = !DILocation(line: 683, column: 33, scope: !2125)
!2156 = !DILocation(line: 684, column: 23, scope: !2125)
!2157 = !DILocation(line: 685, column: 30, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2119, file: !453, line: 685, column: 30)
!2159 = !DILocation(line: 685, column: 30, scope: !2119)
!2160 = !DILocation(line: 687, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !453, line: 687, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !453, line: 687, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !453, line: 686, column: 23)
!2164 = !DILocation(line: 687, column: 25, scope: !2162)
!2165 = !DILocation(line: 689, column: 23, scope: !2163)
!2166 = !DILocation(line: 690, column: 35, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2120, file: !453, line: 690, column: 25)
!2168 = !DILocation(line: 690, column: 30, scope: !2167)
!2169 = !DILocation(line: 690, column: 25, scope: !2120)
!2170 = !DILocation(line: 692, column: 21, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !453, line: 692, column: 21)
!2172 = distinct !DILexicalBlock(scope: !2120, file: !453, line: 692, column: 21)
!2173 = !DILocation(line: 692, column: 21, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !453, line: 692, column: 21)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !453, line: 692, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 692, column: 21)
!2177 = !DILocation(line: 692, column: 21, scope: !2175)
!2178 = !DILocation(line: 692, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !453, line: 692, column: 21)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !453, line: 692, column: 21)
!2181 = !DILocation(line: 692, column: 21, scope: !2180)
!2182 = !DILocation(line: 692, column: 21, scope: !2176)
!2183 = !DILocation(line: 0, scope: !2120)
!2184 = !DILocation(line: 693, column: 21, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !453, line: 693, column: 21)
!2186 = distinct !DILexicalBlock(scope: !2120, file: !453, line: 693, column: 21)
!2187 = !DILocation(line: 693, column: 21, scope: !2186)
!2188 = !DILocation(line: 694, column: 25, scope: !2120)
!2189 = !DILocation(line: 676, column: 17, scope: !2121)
!2190 = distinct !{!2190, !2191, !2192}
!2191 = !DILocation(line: 676, column: 17, scope: !2122)
!2192 = !DILocation(line: 695, column: 19, scope: !2122)
!2193 = !DILocation(line: 409, column: 30, scope: !1909)
!2194 = !DILocation(line: 702, column: 34, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1758, file: !453, line: 702, column: 11)
!2196 = !DILocation(line: 704, column: 14, scope: !2195)
!2197 = !DILocation(line: 705, column: 14, scope: !2195)
!2198 = !DILocation(line: 705, column: 35, scope: !2195)
!2199 = !DILocation(line: 705, column: 17, scope: !2195)
!2200 = !DILocation(line: 705, column: 47, scope: !2195)
!2201 = !DILocation(line: 705, column: 65, scope: !2195)
!2202 = !DILocation(line: 706, column: 11, scope: !2195)
!2203 = !DILocation(line: 702, column: 11, scope: !1758)
!2204 = !DILocation(line: 395, column: 15, scope: !1756)
!2205 = !DILocation(line: 709, column: 5, scope: !1758)
!2206 = !DILocation(line: 710, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !1758, file: !453, line: 710, column: 7)
!2208 = !DILocation(line: 710, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !453, line: 710, column: 7)
!2210 = !DILocation(line: 710, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 710, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !453, line: 710, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !453, line: 710, column: 7)
!2214 = !DILocation(line: 710, column: 7, scope: !2212)
!2215 = !DILocation(line: 710, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !453, line: 710, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !453, line: 710, column: 7)
!2218 = !DILocation(line: 710, column: 7, scope: !2217)
!2219 = !DILocation(line: 710, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !453, line: 710, column: 7)
!2221 = distinct !DILexicalBlock(scope: !2213, file: !453, line: 710, column: 7)
!2222 = !DILocation(line: 710, column: 7, scope: !2221)
!2223 = !DILocation(line: 710, column: 7, scope: !2213)
!2224 = !DILocation(line: 710, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !453, line: 710, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2207, file: !453, line: 710, column: 7)
!2227 = !DILocation(line: 710, column: 7, scope: !2226)
!2228 = !DILocation(line: 712, column: 5, scope: !1758)
!2229 = !DILocation(line: 713, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !453, line: 713, column: 7)
!2231 = distinct !DILexicalBlock(scope: !1758, file: !453, line: 713, column: 7)
!2232 = !DILocation(line: 417, column: 21, scope: !1758)
!2233 = !DILocation(line: 713, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !453, line: 713, column: 7)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !453, line: 713, column: 7)
!2236 = distinct !DILexicalBlock(scope: !2230, file: !453, line: 713, column: 7)
!2237 = !DILocation(line: 713, column: 7, scope: !2235)
!2238 = !DILocation(line: 713, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !453, line: 713, column: 7)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !453, line: 713, column: 7)
!2241 = !DILocation(line: 713, column: 7, scope: !2240)
!2242 = !DILocation(line: 713, column: 7, scope: !2236)
!2243 = !DILocation(line: 714, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !453, line: 714, column: 7)
!2245 = distinct !DILexicalBlock(scope: !1758, file: !453, line: 714, column: 7)
!2246 = !DILocation(line: 714, column: 7, scope: !2245)
!2247 = !DILocation(line: 716, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1758, file: !453, line: 716, column: 11)
!2249 = !DILocation(line: 716, column: 11, scope: !1758)
!2250 = !DILocation(line: 718, column: 5, scope: !1759)
!2251 = !DILocation(line: 395, column: 82, scope: !1759)
!2252 = !DILocation(line: 395, column: 3, scope: !1759)
!2253 = distinct !{!2253, !1905, !2254, !859}
!2254 = !DILocation(line: 718, column: 5, scope: !1756)
!2255 = !DILocation(line: 720, column: 11, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !1724, file: !453, line: 720, column: 7)
!2257 = !DILocation(line: 720, column: 16, scope: !2256)
!2258 = !DILocation(line: 728, column: 51, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1724, file: !453, line: 728, column: 7)
!2260 = !DILocation(line: 731, column: 11, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !453, line: 731, column: 11)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !453, line: 730, column: 5)
!2263 = !DILocation(line: 731, column: 11, scope: !2262)
!2264 = !DILocation(line: 732, column: 16, scope: !2261)
!2265 = !DILocation(line: 732, column: 9, scope: !2261)
!2266 = !DILocation(line: 736, column: 18, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2261, file: !453, line: 736, column: 16)
!2268 = !DILocation(line: 736, column: 29, scope: !2267)
!2269 = !DILocation(line: 745, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1724, file: !453, line: 745, column: 7)
!2271 = !DILocation(line: 745, column: 20, scope: !2270)
!2272 = !DILocation(line: 746, column: 12, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !453, line: 746, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !453, line: 746, column: 5)
!2275 = !DILocation(line: 746, column: 5, scope: !2274)
!2276 = !DILocation(line: 747, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !453, line: 747, column: 7)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !453, line: 747, column: 7)
!2279 = !DILocation(line: 747, column: 7, scope: !2278)
!2280 = !DILocation(line: 746, column: 39, scope: !2273)
!2281 = distinct !{!2281, !2275, !2282, !859}
!2282 = !DILocation(line: 747, column: 7, scope: !2274)
!2283 = !DILocation(line: 749, column: 11, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1724, file: !453, line: 749, column: 7)
!2285 = !DILocation(line: 749, column: 7, scope: !1724)
!2286 = !DILocation(line: 750, column: 5, scope: !2284)
!2287 = !DILocation(line: 750, column: 17, scope: !2284)
!2288 = !DILocation(line: 753, column: 2, scope: !1724)
!2289 = !DILocation(line: 756, column: 51, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1724, file: !453, line: 756, column: 7)
!2291 = !DILocation(line: 756, column: 21, scope: !2290)
!2292 = !DILocation(line: 760, column: 42, scope: !1724)
!2293 = !DILocation(line: 758, column: 10, scope: !1724)
!2294 = !DILocation(line: 758, column: 3, scope: !1724)
!2295 = !DILocation(line: 762, column: 1, scope: !1724)
!2296 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !960, file: !960, line: 98, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!152}
!2299 = !DISubprogram(name: "strlen", scope: !966, file: !966, line: 407, type: !2300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!154, !125}
!2302 = !DISubprogram(name: "iswprint", scope: !2303, file: !2303, line: 120, type: !2099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2304 = distinct !DISubprogram(name: "quotearg_alloc", scope: !453, file: !453, line: 788, type: !2305, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!148, !125, !152, !1617}
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "arg", arg: 1, scope: !2304, file: !453, line: 788, type: !125)
!2309 = !DILocalVariable(name: "argsize", arg: 2, scope: !2304, file: !453, line: 788, type: !152)
!2310 = !DILocalVariable(name: "o", arg: 3, scope: !2304, file: !453, line: 789, type: !1617)
!2311 = !DILocation(line: 0, scope: !2304)
!2312 = !DILocalVariable(name: "arg", arg: 1, scope: !2313, file: !453, line: 801, type: !125)
!2313 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !453, file: !453, line: 801, type: !2314, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!148, !125, !152, !708, !1617}
!2316 = !{!2312, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2317 = !DILocalVariable(name: "argsize", arg: 2, scope: !2313, file: !453, line: 801, type: !152)
!2318 = !DILocalVariable(name: "size", arg: 3, scope: !2313, file: !453, line: 801, type: !708)
!2319 = !DILocalVariable(name: "o", arg: 4, scope: !2313, file: !453, line: 802, type: !1617)
!2320 = !DILocalVariable(name: "p", scope: !2313, file: !453, line: 804, type: !1617)
!2321 = !DILocalVariable(name: "saved_errno", scope: !2313, file: !453, line: 805, type: !150)
!2322 = !DILocalVariable(name: "flags", scope: !2313, file: !453, line: 807, type: !150)
!2323 = !DILocalVariable(name: "bufsize", scope: !2313, file: !453, line: 808, type: !152)
!2324 = !DILocalVariable(name: "buf", scope: !2313, file: !453, line: 812, type: !148)
!2325 = !DILocation(line: 0, scope: !2313, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 791, column: 10, scope: !2304)
!2327 = !DILocation(line: 804, column: 37, scope: !2313, inlinedAt: !2326)
!2328 = !DILocation(line: 805, column: 21, scope: !2313, inlinedAt: !2326)
!2329 = !DILocation(line: 807, column: 18, scope: !2313, inlinedAt: !2326)
!2330 = !DILocation(line: 807, column: 24, scope: !2313, inlinedAt: !2326)
!2331 = !DILocation(line: 808, column: 72, scope: !2313, inlinedAt: !2326)
!2332 = !DILocation(line: 809, column: 56, scope: !2313, inlinedAt: !2326)
!2333 = !DILocation(line: 810, column: 49, scope: !2313, inlinedAt: !2326)
!2334 = !DILocation(line: 811, column: 49, scope: !2313, inlinedAt: !2326)
!2335 = !DILocation(line: 808, column: 20, scope: !2313, inlinedAt: !2326)
!2336 = !DILocation(line: 811, column: 62, scope: !2313, inlinedAt: !2326)
!2337 = !DILocation(line: 812, column: 15, scope: !2313, inlinedAt: !2326)
!2338 = !DILocation(line: 813, column: 60, scope: !2313, inlinedAt: !2326)
!2339 = !DILocation(line: 815, column: 32, scope: !2313, inlinedAt: !2326)
!2340 = !DILocation(line: 815, column: 47, scope: !2313, inlinedAt: !2326)
!2341 = !DILocation(line: 813, column: 3, scope: !2313, inlinedAt: !2326)
!2342 = !DILocation(line: 816, column: 9, scope: !2313, inlinedAt: !2326)
!2343 = !DILocation(line: 791, column: 3, scope: !2304)
!2344 = !DILocation(line: 0, scope: !2313)
!2345 = !DILocation(line: 804, column: 37, scope: !2313)
!2346 = !DILocation(line: 805, column: 21, scope: !2313)
!2347 = !DILocation(line: 807, column: 18, scope: !2313)
!2348 = !DILocation(line: 807, column: 27, scope: !2313)
!2349 = !DILocation(line: 807, column: 24, scope: !2313)
!2350 = !DILocation(line: 808, column: 72, scope: !2313)
!2351 = !DILocation(line: 809, column: 56, scope: !2313)
!2352 = !DILocation(line: 810, column: 49, scope: !2313)
!2353 = !DILocation(line: 811, column: 49, scope: !2313)
!2354 = !DILocation(line: 808, column: 20, scope: !2313)
!2355 = !DILocation(line: 811, column: 62, scope: !2313)
!2356 = !DILocation(line: 812, column: 15, scope: !2313)
!2357 = !DILocation(line: 813, column: 60, scope: !2313)
!2358 = !DILocation(line: 815, column: 32, scope: !2313)
!2359 = !DILocation(line: 815, column: 47, scope: !2313)
!2360 = !DILocation(line: 813, column: 3, scope: !2313)
!2361 = !DILocation(line: 816, column: 9, scope: !2313)
!2362 = !DILocation(line: 817, column: 7, scope: !2313)
!2363 = !DILocation(line: 818, column: 11, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2313, file: !453, line: 817, column: 7)
!2365 = !{!1209, !1209, i64 0}
!2366 = !DILocation(line: 818, column: 5, scope: !2364)
!2367 = !DILocation(line: 819, column: 3, scope: !2313)
!2368 = distinct !DISubprogram(name: "quotearg_free", scope: !453, file: !453, line: 837, type: !408, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2369)
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "sv", scope: !2368, file: !453, line: 839, type: !554)
!2371 = !DILocalVariable(name: "i", scope: !2372, file: !453, line: 840, type: !150)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !453, line: 840, column: 3)
!2373 = !DILocation(line: 839, column: 24, scope: !2368)
!2374 = !DILocation(line: 0, scope: !2368)
!2375 = !DILocation(line: 0, scope: !2372)
!2376 = !DILocation(line: 840, column: 21, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !453, line: 840, column: 3)
!2378 = !DILocation(line: 840, column: 3, scope: !2372)
!2379 = !DILocation(line: 842, column: 13, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2368, file: !453, line: 842, column: 7)
!2381 = !{!2382, !776, i64 8}
!2382 = !{!"slotvec", !1209, i64 0, !776, i64 8}
!2383 = !DILocation(line: 842, column: 17, scope: !2380)
!2384 = !DILocation(line: 842, column: 7, scope: !2368)
!2385 = !DILocation(line: 841, column: 17, scope: !2377)
!2386 = !DILocation(line: 841, column: 5, scope: !2377)
!2387 = !DILocation(line: 840, column: 32, scope: !2377)
!2388 = distinct !{!2388, !2378, !2389, !859}
!2389 = !DILocation(line: 841, column: 20, scope: !2372)
!2390 = !DILocation(line: 844, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2380, file: !453, line: 843, column: 5)
!2392 = !DILocation(line: 845, column: 21, scope: !2391)
!2393 = !{!2382, !1209, i64 0}
!2394 = !DILocation(line: 846, column: 20, scope: !2391)
!2395 = !DILocation(line: 847, column: 5, scope: !2391)
!2396 = !DILocation(line: 848, column: 10, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2368, file: !453, line: 848, column: 7)
!2398 = !DILocation(line: 848, column: 7, scope: !2368)
!2399 = !DILocation(line: 850, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !453, line: 849, column: 5)
!2401 = !DILocation(line: 851, column: 15, scope: !2400)
!2402 = !DILocation(line: 852, column: 5, scope: !2400)
!2403 = !DILocation(line: 853, column: 10, scope: !2368)
!2404 = !DILocation(line: 854, column: 1, scope: !2368)
!2405 = !DISubprogram(name: "free", scope: !1571, file: !1571, line: 786, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !149}
!2408 = distinct !DISubprogram(name: "quotearg_n", scope: !453, file: !453, line: 919, type: !963, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2409)
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "n", arg: 1, scope: !2408, file: !453, line: 919, type: !150)
!2411 = !DILocalVariable(name: "arg", arg: 2, scope: !2408, file: !453, line: 919, type: !125)
!2412 = !DILocation(line: 0, scope: !2408)
!2413 = !DILocation(line: 921, column: 10, scope: !2408)
!2414 = !DILocation(line: 921, column: 3, scope: !2408)
!2415 = distinct !DISubprogram(name: "quotearg_n_options", scope: !453, file: !453, line: 866, type: !2416, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!148, !150, !125, !152, !1617}
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2429, !2430, !2432, !2433, !2434}
!2419 = !DILocalVariable(name: "n", arg: 1, scope: !2415, file: !453, line: 866, type: !150)
!2420 = !DILocalVariable(name: "arg", arg: 2, scope: !2415, file: !453, line: 866, type: !125)
!2421 = !DILocalVariable(name: "argsize", arg: 3, scope: !2415, file: !453, line: 866, type: !152)
!2422 = !DILocalVariable(name: "options", arg: 4, scope: !2415, file: !453, line: 867, type: !1617)
!2423 = !DILocalVariable(name: "saved_errno", scope: !2415, file: !453, line: 869, type: !150)
!2424 = !DILocalVariable(name: "sv", scope: !2415, file: !453, line: 871, type: !554)
!2425 = !DILocalVariable(name: "nslots_max", scope: !2415, file: !453, line: 873, type: !150)
!2426 = !DILocalVariable(name: "preallocated", scope: !2427, file: !453, line: 879, type: !266)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !453, line: 878, column: 5)
!2428 = distinct !DILexicalBlock(scope: !2415, file: !453, line: 877, column: 7)
!2429 = !DILocalVariable(name: "new_nslots", scope: !2427, file: !453, line: 880, type: !721)
!2430 = !DILocalVariable(name: "size", scope: !2431, file: !453, line: 891, type: !152)
!2431 = distinct !DILexicalBlock(scope: !2415, file: !453, line: 890, column: 3)
!2432 = !DILocalVariable(name: "val", scope: !2431, file: !453, line: 892, type: !148)
!2433 = !DILocalVariable(name: "flags", scope: !2431, file: !453, line: 894, type: !150)
!2434 = !DILocalVariable(name: "qsize", scope: !2431, file: !453, line: 895, type: !152)
!2435 = distinct !DIAssignID()
!2436 = !DILocation(line: 0, scope: !2427)
!2437 = !DILocation(line: 0, scope: !2415)
!2438 = !DILocation(line: 869, column: 21, scope: !2415)
!2439 = !DILocation(line: 871, column: 24, scope: !2415)
!2440 = !DILocation(line: 874, column: 17, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2415, file: !453, line: 874, column: 7)
!2442 = !DILocation(line: 875, column: 5, scope: !2441)
!2443 = !DILocation(line: 877, column: 7, scope: !2428)
!2444 = !DILocation(line: 877, column: 14, scope: !2428)
!2445 = !DILocation(line: 877, column: 7, scope: !2415)
!2446 = !DILocation(line: 879, column: 31, scope: !2427)
!2447 = !DILocation(line: 880, column: 7, scope: !2427)
!2448 = !DILocation(line: 880, column: 26, scope: !2427)
!2449 = !DILocation(line: 880, column: 13, scope: !2427)
!2450 = distinct !DIAssignID()
!2451 = !DILocation(line: 882, column: 31, scope: !2427)
!2452 = !DILocation(line: 883, column: 33, scope: !2427)
!2453 = !DILocation(line: 883, column: 42, scope: !2427)
!2454 = !DILocation(line: 883, column: 31, scope: !2427)
!2455 = !DILocation(line: 882, column: 22, scope: !2427)
!2456 = !DILocation(line: 882, column: 15, scope: !2427)
!2457 = !DILocation(line: 884, column: 11, scope: !2427)
!2458 = !DILocation(line: 885, column: 15, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2427, file: !453, line: 884, column: 11)
!2460 = !{i64 0, i64 8, !2365, i64 8, i64 8, !775}
!2461 = !DILocation(line: 885, column: 9, scope: !2459)
!2462 = !DILocation(line: 886, column: 20, scope: !2427)
!2463 = !DILocation(line: 886, column: 18, scope: !2427)
!2464 = !DILocation(line: 886, column: 32, scope: !2427)
!2465 = !DILocation(line: 886, column: 43, scope: !2427)
!2466 = !DILocation(line: 886, column: 53, scope: !2427)
!2467 = !DILocation(line: 0, scope: !1839, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 886, column: 7, scope: !2427)
!2469 = !DILocation(line: 59, column: 10, scope: !1839, inlinedAt: !2468)
!2470 = !DILocation(line: 887, column: 16, scope: !2427)
!2471 = !DILocation(line: 887, column: 14, scope: !2427)
!2472 = !DILocation(line: 888, column: 5, scope: !2428)
!2473 = !DILocation(line: 888, column: 5, scope: !2427)
!2474 = !DILocation(line: 891, column: 19, scope: !2431)
!2475 = !DILocation(line: 891, column: 25, scope: !2431)
!2476 = !DILocation(line: 0, scope: !2431)
!2477 = !DILocation(line: 892, column: 23, scope: !2431)
!2478 = !DILocation(line: 894, column: 26, scope: !2431)
!2479 = !DILocation(line: 894, column: 32, scope: !2431)
!2480 = !DILocation(line: 896, column: 55, scope: !2431)
!2481 = !DILocation(line: 897, column: 55, scope: !2431)
!2482 = !DILocation(line: 898, column: 55, scope: !2431)
!2483 = !DILocation(line: 899, column: 55, scope: !2431)
!2484 = !DILocation(line: 895, column: 20, scope: !2431)
!2485 = !DILocation(line: 901, column: 14, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2431, file: !453, line: 901, column: 9)
!2487 = !DILocation(line: 901, column: 9, scope: !2431)
!2488 = !DILocation(line: 903, column: 35, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !453, line: 902, column: 7)
!2490 = !DILocation(line: 903, column: 20, scope: !2489)
!2491 = !DILocation(line: 904, column: 17, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !453, line: 904, column: 13)
!2493 = !DILocation(line: 904, column: 13, scope: !2489)
!2494 = !DILocation(line: 905, column: 11, scope: !2492)
!2495 = !DILocation(line: 906, column: 27, scope: !2489)
!2496 = !DILocation(line: 906, column: 19, scope: !2489)
!2497 = !DILocation(line: 907, column: 69, scope: !2489)
!2498 = !DILocation(line: 909, column: 44, scope: !2489)
!2499 = !DILocation(line: 910, column: 44, scope: !2489)
!2500 = !DILocation(line: 907, column: 9, scope: !2489)
!2501 = !DILocation(line: 911, column: 7, scope: !2489)
!2502 = !DILocation(line: 913, column: 11, scope: !2431)
!2503 = !DILocation(line: 914, column: 5, scope: !2431)
!2504 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !453, file: !453, line: 925, type: !2505, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!148, !150, !125, !152}
!2507 = !{!2508, !2509, !2510}
!2508 = !DILocalVariable(name: "n", arg: 1, scope: !2504, file: !453, line: 925, type: !150)
!2509 = !DILocalVariable(name: "arg", arg: 2, scope: !2504, file: !453, line: 925, type: !125)
!2510 = !DILocalVariable(name: "argsize", arg: 3, scope: !2504, file: !453, line: 925, type: !152)
!2511 = !DILocation(line: 0, scope: !2504)
!2512 = !DILocation(line: 927, column: 10, scope: !2504)
!2513 = !DILocation(line: 927, column: 3, scope: !2504)
!2514 = distinct !DISubprogram(name: "quotearg", scope: !453, file: !453, line: 931, type: !970, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2515)
!2515 = !{!2516}
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !453, line: 931, type: !125)
!2517 = !DILocation(line: 0, scope: !2514)
!2518 = !DILocation(line: 0, scope: !2408, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 933, column: 10, scope: !2514)
!2520 = !DILocation(line: 921, column: 10, scope: !2408, inlinedAt: !2519)
!2521 = !DILocation(line: 933, column: 3, scope: !2514)
!2522 = distinct !DISubprogram(name: "quotearg_mem", scope: !453, file: !453, line: 937, type: !2523, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!148, !125, !152}
!2525 = !{!2526, !2527}
!2526 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !453, line: 937, type: !125)
!2527 = !DILocalVariable(name: "argsize", arg: 2, scope: !2522, file: !453, line: 937, type: !152)
!2528 = !DILocation(line: 0, scope: !2522)
!2529 = !DILocation(line: 0, scope: !2504, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 939, column: 10, scope: !2522)
!2531 = !DILocation(line: 927, column: 10, scope: !2504, inlinedAt: !2530)
!2532 = !DILocation(line: 939, column: 3, scope: !2522)
!2533 = distinct !DISubprogram(name: "quotearg_n_style", scope: !453, file: !453, line: 943, type: !2534, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!148, !150, !479, !125}
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DILocalVariable(name: "n", arg: 1, scope: !2533, file: !453, line: 943, type: !150)
!2538 = !DILocalVariable(name: "s", arg: 2, scope: !2533, file: !453, line: 943, type: !479)
!2539 = !DILocalVariable(name: "arg", arg: 3, scope: !2533, file: !453, line: 943, type: !125)
!2540 = !DILocalVariable(name: "o", scope: !2533, file: !453, line: 945, type: !1618)
!2541 = distinct !DIAssignID()
!2542 = !DILocation(line: 0, scope: !2533)
!2543 = !DILocation(line: 945, column: 3, scope: !2533)
!2544 = !{!2545}
!2545 = distinct !{!2545, !2546, !"quoting_options_from_style: argument 0"}
!2546 = distinct !{!2546, !"quoting_options_from_style"}
!2547 = !DILocation(line: 945, column: 36, scope: !2533)
!2548 = !DILocalVariable(name: "style", arg: 1, scope: !2549, file: !453, line: 183, type: !479)
!2549 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !453, file: !453, line: 183, type: !2550, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!506, !479}
!2552 = !{!2548, !2553}
!2553 = !DILocalVariable(name: "o", scope: !2549, file: !453, line: 185, type: !506)
!2554 = !DILocation(line: 0, scope: !2549, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 945, column: 36, scope: !2533)
!2556 = !DILocation(line: 185, column: 26, scope: !2549, inlinedAt: !2555)
!2557 = distinct !DIAssignID()
!2558 = !DILocation(line: 186, column: 13, scope: !2559, inlinedAt: !2555)
!2559 = distinct !DILexicalBlock(scope: !2549, file: !453, line: 186, column: 7)
!2560 = !DILocation(line: 186, column: 7, scope: !2549, inlinedAt: !2555)
!2561 = !DILocation(line: 187, column: 5, scope: !2559, inlinedAt: !2555)
!2562 = !DILocation(line: 188, column: 11, scope: !2549, inlinedAt: !2555)
!2563 = distinct !DIAssignID()
!2564 = !DILocation(line: 946, column: 10, scope: !2533)
!2565 = !DILocation(line: 947, column: 1, scope: !2533)
!2566 = !DILocation(line: 946, column: 3, scope: !2533)
!2567 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !453, file: !453, line: 950, type: !2568, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!148, !150, !479, !125, !152}
!2570 = !{!2571, !2572, !2573, !2574, !2575}
!2571 = !DILocalVariable(name: "n", arg: 1, scope: !2567, file: !453, line: 950, type: !150)
!2572 = !DILocalVariable(name: "s", arg: 2, scope: !2567, file: !453, line: 950, type: !479)
!2573 = !DILocalVariable(name: "arg", arg: 3, scope: !2567, file: !453, line: 951, type: !125)
!2574 = !DILocalVariable(name: "argsize", arg: 4, scope: !2567, file: !453, line: 951, type: !152)
!2575 = !DILocalVariable(name: "o", scope: !2567, file: !453, line: 953, type: !1618)
!2576 = distinct !DIAssignID()
!2577 = !DILocation(line: 0, scope: !2567)
!2578 = !DILocation(line: 953, column: 3, scope: !2567)
!2579 = !{!2580}
!2580 = distinct !{!2580, !2581, !"quoting_options_from_style: argument 0"}
!2581 = distinct !{!2581, !"quoting_options_from_style"}
!2582 = !DILocation(line: 953, column: 36, scope: !2567)
!2583 = !DILocation(line: 0, scope: !2549, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 953, column: 36, scope: !2567)
!2585 = !DILocation(line: 185, column: 26, scope: !2549, inlinedAt: !2584)
!2586 = distinct !DIAssignID()
!2587 = !DILocation(line: 186, column: 13, scope: !2559, inlinedAt: !2584)
!2588 = !DILocation(line: 186, column: 7, scope: !2549, inlinedAt: !2584)
!2589 = !DILocation(line: 187, column: 5, scope: !2559, inlinedAt: !2584)
!2590 = !DILocation(line: 188, column: 11, scope: !2549, inlinedAt: !2584)
!2591 = distinct !DIAssignID()
!2592 = !DILocation(line: 954, column: 10, scope: !2567)
!2593 = !DILocation(line: 955, column: 1, scope: !2567)
!2594 = !DILocation(line: 954, column: 3, scope: !2567)
!2595 = distinct !DISubprogram(name: "quotearg_style", scope: !453, file: !453, line: 958, type: !2596, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!148, !479, !125}
!2598 = !{!2599, !2600}
!2599 = !DILocalVariable(name: "s", arg: 1, scope: !2595, file: !453, line: 958, type: !479)
!2600 = !DILocalVariable(name: "arg", arg: 2, scope: !2595, file: !453, line: 958, type: !125)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !2595)
!2603 = !DILocation(line: 0, scope: !2533, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 960, column: 10, scope: !2595)
!2605 = !DILocation(line: 945, column: 3, scope: !2533, inlinedAt: !2604)
!2606 = !{!2607}
!2607 = distinct !{!2607, !2608, !"quoting_options_from_style: argument 0"}
!2608 = distinct !{!2608, !"quoting_options_from_style"}
!2609 = !DILocation(line: 945, column: 36, scope: !2533, inlinedAt: !2604)
!2610 = !DILocation(line: 0, scope: !2549, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 945, column: 36, scope: !2533, inlinedAt: !2604)
!2612 = !DILocation(line: 185, column: 26, scope: !2549, inlinedAt: !2611)
!2613 = distinct !DIAssignID()
!2614 = !DILocation(line: 186, column: 13, scope: !2559, inlinedAt: !2611)
!2615 = !DILocation(line: 186, column: 7, scope: !2549, inlinedAt: !2611)
!2616 = !DILocation(line: 187, column: 5, scope: !2559, inlinedAt: !2611)
!2617 = !DILocation(line: 188, column: 11, scope: !2549, inlinedAt: !2611)
!2618 = distinct !DIAssignID()
!2619 = !DILocation(line: 946, column: 10, scope: !2533, inlinedAt: !2604)
!2620 = !DILocation(line: 947, column: 1, scope: !2533, inlinedAt: !2604)
!2621 = !DILocation(line: 960, column: 3, scope: !2595)
!2622 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !453, file: !453, line: 964, type: !2623, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!148, !479, !125, !152}
!2625 = !{!2626, !2627, !2628}
!2626 = !DILocalVariable(name: "s", arg: 1, scope: !2622, file: !453, line: 964, type: !479)
!2627 = !DILocalVariable(name: "arg", arg: 2, scope: !2622, file: !453, line: 964, type: !125)
!2628 = !DILocalVariable(name: "argsize", arg: 3, scope: !2622, file: !453, line: 964, type: !152)
!2629 = distinct !DIAssignID()
!2630 = !DILocation(line: 0, scope: !2622)
!2631 = !DILocation(line: 0, scope: !2567, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 966, column: 10, scope: !2622)
!2633 = !DILocation(line: 953, column: 3, scope: !2567, inlinedAt: !2632)
!2634 = !{!2635}
!2635 = distinct !{!2635, !2636, !"quoting_options_from_style: argument 0"}
!2636 = distinct !{!2636, !"quoting_options_from_style"}
!2637 = !DILocation(line: 953, column: 36, scope: !2567, inlinedAt: !2632)
!2638 = !DILocation(line: 0, scope: !2549, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 953, column: 36, scope: !2567, inlinedAt: !2632)
!2640 = !DILocation(line: 185, column: 26, scope: !2549, inlinedAt: !2639)
!2641 = distinct !DIAssignID()
!2642 = !DILocation(line: 186, column: 13, scope: !2559, inlinedAt: !2639)
!2643 = !DILocation(line: 186, column: 7, scope: !2549, inlinedAt: !2639)
!2644 = !DILocation(line: 187, column: 5, scope: !2559, inlinedAt: !2639)
!2645 = !DILocation(line: 188, column: 11, scope: !2549, inlinedAt: !2639)
!2646 = distinct !DIAssignID()
!2647 = !DILocation(line: 954, column: 10, scope: !2567, inlinedAt: !2632)
!2648 = !DILocation(line: 955, column: 1, scope: !2567, inlinedAt: !2632)
!2649 = !DILocation(line: 966, column: 3, scope: !2622)
!2650 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !453, file: !453, line: 970, type: !2651, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!148, !125, !152, !4}
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !453, line: 970, type: !125)
!2655 = !DILocalVariable(name: "argsize", arg: 2, scope: !2650, file: !453, line: 970, type: !152)
!2656 = !DILocalVariable(name: "ch", arg: 3, scope: !2650, file: !453, line: 970, type: !4)
!2657 = !DILocalVariable(name: "options", scope: !2650, file: !453, line: 972, type: !506)
!2658 = distinct !DIAssignID()
!2659 = !DILocation(line: 0, scope: !2650)
!2660 = !DILocation(line: 972, column: 3, scope: !2650)
!2661 = !DILocation(line: 973, column: 13, scope: !2650)
!2662 = !{i64 0, i64 4, !812, i64 4, i64 4, !812, i64 8, i64 32, !821, i64 40, i64 8, !775, i64 48, i64 8, !775}
!2663 = distinct !DIAssignID()
!2664 = !DILocation(line: 0, scope: !1637, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 974, column: 3, scope: !2650)
!2666 = !DILocation(line: 147, column: 41, scope: !1637, inlinedAt: !2665)
!2667 = !DILocation(line: 147, column: 62, scope: !1637, inlinedAt: !2665)
!2668 = !DILocation(line: 147, column: 57, scope: !1637, inlinedAt: !2665)
!2669 = !DILocation(line: 148, column: 15, scope: !1637, inlinedAt: !2665)
!2670 = !DILocation(line: 149, column: 21, scope: !1637, inlinedAt: !2665)
!2671 = !DILocation(line: 149, column: 24, scope: !1637, inlinedAt: !2665)
!2672 = !DILocation(line: 150, column: 19, scope: !1637, inlinedAt: !2665)
!2673 = !DILocation(line: 150, column: 24, scope: !1637, inlinedAt: !2665)
!2674 = !DILocation(line: 150, column: 6, scope: !1637, inlinedAt: !2665)
!2675 = !DILocation(line: 975, column: 10, scope: !2650)
!2676 = !DILocation(line: 976, column: 1, scope: !2650)
!2677 = !DILocation(line: 975, column: 3, scope: !2650)
!2678 = distinct !DISubprogram(name: "quotearg_char", scope: !453, file: !453, line: 979, type: !2679, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!148, !125, !4}
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "arg", arg: 1, scope: !2678, file: !453, line: 979, type: !125)
!2683 = !DILocalVariable(name: "ch", arg: 2, scope: !2678, file: !453, line: 979, type: !4)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 0, scope: !2678)
!2686 = !DILocation(line: 0, scope: !2650, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 981, column: 10, scope: !2678)
!2688 = !DILocation(line: 972, column: 3, scope: !2650, inlinedAt: !2687)
!2689 = !DILocation(line: 973, column: 13, scope: !2650, inlinedAt: !2687)
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 0, scope: !1637, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 974, column: 3, scope: !2650, inlinedAt: !2687)
!2693 = !DILocation(line: 147, column: 41, scope: !1637, inlinedAt: !2692)
!2694 = !DILocation(line: 147, column: 62, scope: !1637, inlinedAt: !2692)
!2695 = !DILocation(line: 147, column: 57, scope: !1637, inlinedAt: !2692)
!2696 = !DILocation(line: 148, column: 15, scope: !1637, inlinedAt: !2692)
!2697 = !DILocation(line: 149, column: 21, scope: !1637, inlinedAt: !2692)
!2698 = !DILocation(line: 149, column: 24, scope: !1637, inlinedAt: !2692)
!2699 = !DILocation(line: 150, column: 19, scope: !1637, inlinedAt: !2692)
!2700 = !DILocation(line: 150, column: 24, scope: !1637, inlinedAt: !2692)
!2701 = !DILocation(line: 150, column: 6, scope: !1637, inlinedAt: !2692)
!2702 = !DILocation(line: 975, column: 10, scope: !2650, inlinedAt: !2687)
!2703 = !DILocation(line: 976, column: 1, scope: !2650, inlinedAt: !2687)
!2704 = !DILocation(line: 981, column: 3, scope: !2678)
!2705 = distinct !DISubprogram(name: "quotearg_colon", scope: !453, file: !453, line: 985, type: !970, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2706)
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2705, file: !453, line: 985, type: !125)
!2708 = distinct !DIAssignID()
!2709 = !DILocation(line: 0, scope: !2705)
!2710 = !DILocation(line: 0, scope: !2678, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 987, column: 10, scope: !2705)
!2712 = !DILocation(line: 0, scope: !2650, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 981, column: 10, scope: !2678, inlinedAt: !2711)
!2714 = !DILocation(line: 972, column: 3, scope: !2650, inlinedAt: !2713)
!2715 = !DILocation(line: 973, column: 13, scope: !2650, inlinedAt: !2713)
!2716 = distinct !DIAssignID()
!2717 = !DILocation(line: 0, scope: !1637, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 974, column: 3, scope: !2650, inlinedAt: !2713)
!2719 = !DILocation(line: 147, column: 57, scope: !1637, inlinedAt: !2718)
!2720 = !DILocation(line: 149, column: 21, scope: !1637, inlinedAt: !2718)
!2721 = !DILocation(line: 150, column: 6, scope: !1637, inlinedAt: !2718)
!2722 = !DILocation(line: 975, column: 10, scope: !2650, inlinedAt: !2713)
!2723 = !DILocation(line: 976, column: 1, scope: !2650, inlinedAt: !2713)
!2724 = !DILocation(line: 987, column: 3, scope: !2705)
!2725 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !453, file: !453, line: 991, type: !2523, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2726)
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2725, file: !453, line: 991, type: !125)
!2728 = !DILocalVariable(name: "argsize", arg: 2, scope: !2725, file: !453, line: 991, type: !152)
!2729 = distinct !DIAssignID()
!2730 = !DILocation(line: 0, scope: !2725)
!2731 = !DILocation(line: 0, scope: !2650, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 993, column: 10, scope: !2725)
!2733 = !DILocation(line: 972, column: 3, scope: !2650, inlinedAt: !2732)
!2734 = !DILocation(line: 973, column: 13, scope: !2650, inlinedAt: !2732)
!2735 = distinct !DIAssignID()
!2736 = !DILocation(line: 0, scope: !1637, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 974, column: 3, scope: !2650, inlinedAt: !2732)
!2738 = !DILocation(line: 147, column: 57, scope: !1637, inlinedAt: !2737)
!2739 = !DILocation(line: 149, column: 21, scope: !1637, inlinedAt: !2737)
!2740 = !DILocation(line: 150, column: 6, scope: !1637, inlinedAt: !2737)
!2741 = !DILocation(line: 975, column: 10, scope: !2650, inlinedAt: !2732)
!2742 = !DILocation(line: 976, column: 1, scope: !2650, inlinedAt: !2732)
!2743 = !DILocation(line: 993, column: 3, scope: !2725)
!2744 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !453, file: !453, line: 997, type: !2534, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2745)
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2744, file: !453, line: 997, type: !150)
!2747 = !DILocalVariable(name: "s", arg: 2, scope: !2744, file: !453, line: 997, type: !479)
!2748 = !DILocalVariable(name: "arg", arg: 3, scope: !2744, file: !453, line: 997, type: !125)
!2749 = !DILocalVariable(name: "options", scope: !2744, file: !453, line: 999, type: !506)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 0, scope: !2744)
!2752 = !DILocation(line: 185, column: 26, scope: !2549, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1000, column: 13, scope: !2744)
!2754 = !DILocation(line: 999, column: 3, scope: !2744)
!2755 = !DILocation(line: 0, scope: !2549, inlinedAt: !2753)
!2756 = !DILocation(line: 186, column: 13, scope: !2559, inlinedAt: !2753)
!2757 = !DILocation(line: 186, column: 7, scope: !2549, inlinedAt: !2753)
!2758 = !DILocation(line: 187, column: 5, scope: !2559, inlinedAt: !2753)
!2759 = !{!2760}
!2760 = distinct !{!2760, !2761, !"quoting_options_from_style: argument 0"}
!2761 = distinct !{!2761, !"quoting_options_from_style"}
!2762 = !DILocation(line: 1000, column: 13, scope: !2744)
!2763 = distinct !DIAssignID()
!2764 = distinct !DIAssignID()
!2765 = !DILocation(line: 0, scope: !1637, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 1001, column: 3, scope: !2744)
!2767 = !DILocation(line: 147, column: 57, scope: !1637, inlinedAt: !2766)
!2768 = !DILocation(line: 149, column: 21, scope: !1637, inlinedAt: !2766)
!2769 = !DILocation(line: 150, column: 6, scope: !1637, inlinedAt: !2766)
!2770 = distinct !DIAssignID()
!2771 = !DILocation(line: 1002, column: 10, scope: !2744)
!2772 = !DILocation(line: 1003, column: 1, scope: !2744)
!2773 = !DILocation(line: 1002, column: 3, scope: !2744)
!2774 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !453, file: !453, line: 1006, type: !2775, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!148, !150, !125, !125, !125}
!2777 = !{!2778, !2779, !2780, !2781}
!2778 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !453, line: 1006, type: !150)
!2779 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2774, file: !453, line: 1006, type: !125)
!2780 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2774, file: !453, line: 1007, type: !125)
!2781 = !DILocalVariable(name: "arg", arg: 4, scope: !2774, file: !453, line: 1007, type: !125)
!2782 = distinct !DIAssignID()
!2783 = !DILocation(line: 0, scope: !2774)
!2784 = !DILocalVariable(name: "o", scope: !2785, file: !453, line: 1018, type: !506)
!2785 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !453, file: !453, line: 1014, type: !2786, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!148, !150, !125, !125, !125, !152}
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2784}
!2789 = !DILocalVariable(name: "n", arg: 1, scope: !2785, file: !453, line: 1014, type: !150)
!2790 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2785, file: !453, line: 1014, type: !125)
!2791 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2785, file: !453, line: 1015, type: !125)
!2792 = !DILocalVariable(name: "arg", arg: 4, scope: !2785, file: !453, line: 1016, type: !125)
!2793 = !DILocalVariable(name: "argsize", arg: 5, scope: !2785, file: !453, line: 1016, type: !152)
!2794 = !DILocation(line: 0, scope: !2785, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1009, column: 10, scope: !2774)
!2796 = !DILocation(line: 1018, column: 3, scope: !2785, inlinedAt: !2795)
!2797 = !DILocation(line: 1018, column: 30, scope: !2785, inlinedAt: !2795)
!2798 = distinct !DIAssignID()
!2799 = distinct !DIAssignID()
!2800 = !DILocation(line: 0, scope: !1677, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 1019, column: 3, scope: !2785, inlinedAt: !2795)
!2802 = !DILocation(line: 174, column: 12, scope: !1677, inlinedAt: !2801)
!2803 = distinct !DIAssignID()
!2804 = !DILocation(line: 175, column: 8, scope: !1690, inlinedAt: !2801)
!2805 = !DILocation(line: 175, column: 19, scope: !1690, inlinedAt: !2801)
!2806 = !DILocation(line: 176, column: 5, scope: !1690, inlinedAt: !2801)
!2807 = !DILocation(line: 177, column: 6, scope: !1677, inlinedAt: !2801)
!2808 = !DILocation(line: 177, column: 17, scope: !1677, inlinedAt: !2801)
!2809 = distinct !DIAssignID()
!2810 = !DILocation(line: 178, column: 6, scope: !1677, inlinedAt: !2801)
!2811 = !DILocation(line: 178, column: 18, scope: !1677, inlinedAt: !2801)
!2812 = distinct !DIAssignID()
!2813 = !DILocation(line: 1020, column: 10, scope: !2785, inlinedAt: !2795)
!2814 = !DILocation(line: 1021, column: 1, scope: !2785, inlinedAt: !2795)
!2815 = !DILocation(line: 1009, column: 3, scope: !2774)
!2816 = distinct !DIAssignID()
!2817 = !DILocation(line: 0, scope: !2785)
!2818 = !DILocation(line: 1018, column: 3, scope: !2785)
!2819 = !DILocation(line: 1018, column: 30, scope: !2785)
!2820 = distinct !DIAssignID()
!2821 = distinct !DIAssignID()
!2822 = !DILocation(line: 0, scope: !1677, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1019, column: 3, scope: !2785)
!2824 = !DILocation(line: 174, column: 12, scope: !1677, inlinedAt: !2823)
!2825 = distinct !DIAssignID()
!2826 = !DILocation(line: 175, column: 8, scope: !1690, inlinedAt: !2823)
!2827 = !DILocation(line: 175, column: 19, scope: !1690, inlinedAt: !2823)
!2828 = !DILocation(line: 176, column: 5, scope: !1690, inlinedAt: !2823)
!2829 = !DILocation(line: 177, column: 6, scope: !1677, inlinedAt: !2823)
!2830 = !DILocation(line: 177, column: 17, scope: !1677, inlinedAt: !2823)
!2831 = distinct !DIAssignID()
!2832 = !DILocation(line: 178, column: 6, scope: !1677, inlinedAt: !2823)
!2833 = !DILocation(line: 178, column: 18, scope: !1677, inlinedAt: !2823)
!2834 = distinct !DIAssignID()
!2835 = !DILocation(line: 1020, column: 10, scope: !2785)
!2836 = !DILocation(line: 1021, column: 1, scope: !2785)
!2837 = !DILocation(line: 1020, column: 3, scope: !2785)
!2838 = distinct !DISubprogram(name: "quotearg_custom", scope: !453, file: !453, line: 1024, type: !2839, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!148, !125, !125, !125}
!2841 = !{!2842, !2843, !2844}
!2842 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2838, file: !453, line: 1024, type: !125)
!2843 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2838, file: !453, line: 1024, type: !125)
!2844 = !DILocalVariable(name: "arg", arg: 3, scope: !2838, file: !453, line: 1025, type: !125)
!2845 = distinct !DIAssignID()
!2846 = !DILocation(line: 0, scope: !2838)
!2847 = !DILocation(line: 0, scope: !2774, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1027, column: 10, scope: !2838)
!2849 = !DILocation(line: 0, scope: !2785, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 1009, column: 10, scope: !2774, inlinedAt: !2848)
!2851 = !DILocation(line: 1018, column: 3, scope: !2785, inlinedAt: !2850)
!2852 = !DILocation(line: 1018, column: 30, scope: !2785, inlinedAt: !2850)
!2853 = distinct !DIAssignID()
!2854 = distinct !DIAssignID()
!2855 = !DILocation(line: 0, scope: !1677, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 1019, column: 3, scope: !2785, inlinedAt: !2850)
!2857 = !DILocation(line: 174, column: 12, scope: !1677, inlinedAt: !2856)
!2858 = distinct !DIAssignID()
!2859 = !DILocation(line: 175, column: 8, scope: !1690, inlinedAt: !2856)
!2860 = !DILocation(line: 175, column: 19, scope: !1690, inlinedAt: !2856)
!2861 = !DILocation(line: 176, column: 5, scope: !1690, inlinedAt: !2856)
!2862 = !DILocation(line: 177, column: 6, scope: !1677, inlinedAt: !2856)
!2863 = !DILocation(line: 177, column: 17, scope: !1677, inlinedAt: !2856)
!2864 = distinct !DIAssignID()
!2865 = !DILocation(line: 178, column: 6, scope: !1677, inlinedAt: !2856)
!2866 = !DILocation(line: 178, column: 18, scope: !1677, inlinedAt: !2856)
!2867 = distinct !DIAssignID()
!2868 = !DILocation(line: 1020, column: 10, scope: !2785, inlinedAt: !2850)
!2869 = !DILocation(line: 1021, column: 1, scope: !2785, inlinedAt: !2850)
!2870 = !DILocation(line: 1027, column: 3, scope: !2838)
!2871 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !453, file: !453, line: 1031, type: !2872, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!148, !125, !125, !125, !152}
!2874 = !{!2875, !2876, !2877, !2878}
!2875 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2871, file: !453, line: 1031, type: !125)
!2876 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2871, file: !453, line: 1031, type: !125)
!2877 = !DILocalVariable(name: "arg", arg: 3, scope: !2871, file: !453, line: 1032, type: !125)
!2878 = !DILocalVariable(name: "argsize", arg: 4, scope: !2871, file: !453, line: 1032, type: !152)
!2879 = distinct !DIAssignID()
!2880 = !DILocation(line: 0, scope: !2871)
!2881 = !DILocation(line: 0, scope: !2785, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 1034, column: 10, scope: !2871)
!2883 = !DILocation(line: 1018, column: 3, scope: !2785, inlinedAt: !2882)
!2884 = !DILocation(line: 1018, column: 30, scope: !2785, inlinedAt: !2882)
!2885 = distinct !DIAssignID()
!2886 = distinct !DIAssignID()
!2887 = !DILocation(line: 0, scope: !1677, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 1019, column: 3, scope: !2785, inlinedAt: !2882)
!2889 = !DILocation(line: 174, column: 12, scope: !1677, inlinedAt: !2888)
!2890 = distinct !DIAssignID()
!2891 = !DILocation(line: 175, column: 8, scope: !1690, inlinedAt: !2888)
!2892 = !DILocation(line: 175, column: 19, scope: !1690, inlinedAt: !2888)
!2893 = !DILocation(line: 176, column: 5, scope: !1690, inlinedAt: !2888)
!2894 = !DILocation(line: 177, column: 6, scope: !1677, inlinedAt: !2888)
!2895 = !DILocation(line: 177, column: 17, scope: !1677, inlinedAt: !2888)
!2896 = distinct !DIAssignID()
!2897 = !DILocation(line: 178, column: 6, scope: !1677, inlinedAt: !2888)
!2898 = !DILocation(line: 178, column: 18, scope: !1677, inlinedAt: !2888)
!2899 = distinct !DIAssignID()
!2900 = !DILocation(line: 1020, column: 10, scope: !2785, inlinedAt: !2882)
!2901 = !DILocation(line: 1021, column: 1, scope: !2785, inlinedAt: !2882)
!2902 = !DILocation(line: 1034, column: 3, scope: !2871)
!2903 = distinct !DISubprogram(name: "quote_n_mem", scope: !453, file: !453, line: 1049, type: !2904, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!125, !150, !125, !152}
!2906 = !{!2907, !2908, !2909}
!2907 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !453, line: 1049, type: !150)
!2908 = !DILocalVariable(name: "arg", arg: 2, scope: !2903, file: !453, line: 1049, type: !125)
!2909 = !DILocalVariable(name: "argsize", arg: 3, scope: !2903, file: !453, line: 1049, type: !152)
!2910 = !DILocation(line: 0, scope: !2903)
!2911 = !DILocation(line: 1051, column: 10, scope: !2903)
!2912 = !DILocation(line: 1051, column: 3, scope: !2903)
!2913 = distinct !DISubprogram(name: "quote_mem", scope: !453, file: !453, line: 1055, type: !2914, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!125, !125, !152}
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "arg", arg: 1, scope: !2913, file: !453, line: 1055, type: !125)
!2918 = !DILocalVariable(name: "argsize", arg: 2, scope: !2913, file: !453, line: 1055, type: !152)
!2919 = !DILocation(line: 0, scope: !2913)
!2920 = !DILocation(line: 0, scope: !2903, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 1057, column: 10, scope: !2913)
!2922 = !DILocation(line: 1051, column: 10, scope: !2903, inlinedAt: !2921)
!2923 = !DILocation(line: 1057, column: 3, scope: !2913)
!2924 = distinct !DISubprogram(name: "quote_n", scope: !453, file: !453, line: 1061, type: !2925, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!125, !150, !125}
!2927 = !{!2928, !2929}
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2924, file: !453, line: 1061, type: !150)
!2929 = !DILocalVariable(name: "arg", arg: 2, scope: !2924, file: !453, line: 1061, type: !125)
!2930 = !DILocation(line: 0, scope: !2924)
!2931 = !DILocation(line: 0, scope: !2903, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 1063, column: 10, scope: !2924)
!2933 = !DILocation(line: 1051, column: 10, scope: !2903, inlinedAt: !2932)
!2934 = !DILocation(line: 1063, column: 3, scope: !2924)
!2935 = distinct !DISubprogram(name: "quote", scope: !453, file: !453, line: 1067, type: !2936, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!125, !125}
!2938 = !{!2939}
!2939 = !DILocalVariable(name: "arg", arg: 1, scope: !2935, file: !453, line: 1067, type: !125)
!2940 = !DILocation(line: 0, scope: !2935)
!2941 = !DILocation(line: 0, scope: !2924, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1069, column: 10, scope: !2935)
!2943 = !DILocation(line: 0, scope: !2903, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1063, column: 10, scope: !2924, inlinedAt: !2942)
!2945 = !DILocation(line: 1051, column: 10, scope: !2903, inlinedAt: !2944)
!2946 = !DILocation(line: 1069, column: 3, scope: !2935)
!2947 = distinct !DISubprogram(name: "version_etc_arn", scope: !567, file: !567, line: 61, type: !2948, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !2985)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !2950, !125, !125, !125, !2984, !152}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2952, file: !283, line: 51, baseType: !150, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2952, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2952, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2952, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2952, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2952, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2952, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2952, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2952, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2952, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2952, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2952, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2952, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2952, file: !283, line: 70, baseType: !2968, size: 64, offset: 832)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2952, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2952, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2952, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2952, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2952, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2952, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2952, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2952, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2952, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2952, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2952, file: !283, line: 93, baseType: !2968, size: 64, offset: 1344)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2952, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2952, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2952, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2952, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!2985 = !{!2986, !2987, !2988, !2989, !2990, !2991}
!2986 = !DILocalVariable(name: "stream", arg: 1, scope: !2947, file: !567, line: 61, type: !2950)
!2987 = !DILocalVariable(name: "command_name", arg: 2, scope: !2947, file: !567, line: 62, type: !125)
!2988 = !DILocalVariable(name: "package", arg: 3, scope: !2947, file: !567, line: 62, type: !125)
!2989 = !DILocalVariable(name: "version", arg: 4, scope: !2947, file: !567, line: 63, type: !125)
!2990 = !DILocalVariable(name: "authors", arg: 5, scope: !2947, file: !567, line: 64, type: !2984)
!2991 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2947, file: !567, line: 64, type: !152)
!2992 = !DILocation(line: 0, scope: !2947)
!2993 = !DILocation(line: 66, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2947, file: !567, line: 66, column: 7)
!2995 = !DILocation(line: 66, column: 7, scope: !2947)
!2996 = !DILocation(line: 67, column: 5, scope: !2994)
!2997 = !DILocation(line: 69, column: 5, scope: !2994)
!2998 = !DILocation(line: 83, column: 3, scope: !2947)
!2999 = !DILocation(line: 85, column: 3, scope: !2947)
!3000 = !DILocation(line: 88, column: 3, scope: !2947)
!3001 = !DILocation(line: 95, column: 3, scope: !2947)
!3002 = !DILocation(line: 97, column: 3, scope: !2947)
!3003 = !DILocation(line: 105, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2947, file: !567, line: 98, column: 5)
!3005 = !DILocation(line: 106, column: 7, scope: !3004)
!3006 = !DILocation(line: 109, column: 7, scope: !3004)
!3007 = !DILocation(line: 110, column: 7, scope: !3004)
!3008 = !DILocation(line: 113, column: 7, scope: !3004)
!3009 = !DILocation(line: 115, column: 7, scope: !3004)
!3010 = !DILocation(line: 120, column: 7, scope: !3004)
!3011 = !DILocation(line: 122, column: 7, scope: !3004)
!3012 = !DILocation(line: 127, column: 7, scope: !3004)
!3013 = !DILocation(line: 129, column: 7, scope: !3004)
!3014 = !DILocation(line: 134, column: 7, scope: !3004)
!3015 = !DILocation(line: 137, column: 7, scope: !3004)
!3016 = !DILocation(line: 142, column: 7, scope: !3004)
!3017 = !DILocation(line: 145, column: 7, scope: !3004)
!3018 = !DILocation(line: 150, column: 7, scope: !3004)
!3019 = !DILocation(line: 154, column: 7, scope: !3004)
!3020 = !DILocation(line: 159, column: 7, scope: !3004)
!3021 = !DILocation(line: 163, column: 7, scope: !3004)
!3022 = !DILocation(line: 170, column: 7, scope: !3004)
!3023 = !DILocation(line: 174, column: 7, scope: !3004)
!3024 = !DILocation(line: 176, column: 1, scope: !2947)
!3025 = distinct !DISubprogram(name: "version_etc_ar", scope: !567, file: !567, line: 183, type: !3026, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !2950, !125, !125, !125, !2984}
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034}
!3029 = !DILocalVariable(name: "stream", arg: 1, scope: !3025, file: !567, line: 183, type: !2950)
!3030 = !DILocalVariable(name: "command_name", arg: 2, scope: !3025, file: !567, line: 184, type: !125)
!3031 = !DILocalVariable(name: "package", arg: 3, scope: !3025, file: !567, line: 184, type: !125)
!3032 = !DILocalVariable(name: "version", arg: 4, scope: !3025, file: !567, line: 185, type: !125)
!3033 = !DILocalVariable(name: "authors", arg: 5, scope: !3025, file: !567, line: 185, type: !2984)
!3034 = !DILocalVariable(name: "n_authors", scope: !3025, file: !567, line: 187, type: !152)
!3035 = !DILocation(line: 0, scope: !3025)
!3036 = !DILocation(line: 189, column: 8, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3025, file: !567, line: 189, column: 3)
!3038 = !DILocation(line: 189, scope: !3037)
!3039 = !DILocation(line: 189, column: 23, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !567, line: 189, column: 3)
!3041 = !DILocation(line: 189, column: 3, scope: !3037)
!3042 = !DILocation(line: 189, column: 52, scope: !3040)
!3043 = distinct !{!3043, !3041, !3044, !859}
!3044 = !DILocation(line: 190, column: 5, scope: !3037)
!3045 = !DILocation(line: 191, column: 3, scope: !3025)
!3046 = !DILocation(line: 192, column: 1, scope: !3025)
!3047 = distinct !DISubprogram(name: "version_etc_va", scope: !567, file: !567, line: 199, type: !3048, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3057)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !2950, !125, !125, !125, !3050}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3056}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3051, file: !567, line: 192, baseType: !129, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3051, file: !567, line: 192, baseType: !129, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3051, file: !567, line: 192, baseType: !149, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3051, file: !567, line: 192, baseType: !149, size: 64, offset: 128)
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3063, !3064}
!3058 = !DILocalVariable(name: "stream", arg: 1, scope: !3047, file: !567, line: 199, type: !2950)
!3059 = !DILocalVariable(name: "command_name", arg: 2, scope: !3047, file: !567, line: 200, type: !125)
!3060 = !DILocalVariable(name: "package", arg: 3, scope: !3047, file: !567, line: 200, type: !125)
!3061 = !DILocalVariable(name: "version", arg: 4, scope: !3047, file: !567, line: 201, type: !125)
!3062 = !DILocalVariable(name: "authors", arg: 5, scope: !3047, file: !567, line: 201, type: !3050)
!3063 = !DILocalVariable(name: "n_authors", scope: !3047, file: !567, line: 203, type: !152)
!3064 = !DILocalVariable(name: "authtab", scope: !3047, file: !567, line: 204, type: !3065)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 640, elements: !96)
!3066 = distinct !DIAssignID()
!3067 = !DILocation(line: 0, scope: !3047)
!3068 = !DILocation(line: 204, column: 3, scope: !3047)
!3069 = !DILocation(line: 208, column: 35, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !567, line: 206, column: 3)
!3071 = distinct !DILexicalBlock(scope: !3047, file: !567, line: 206, column: 3)
!3072 = !DILocation(line: 208, column: 33, scope: !3070)
!3073 = !DILocation(line: 208, column: 67, scope: !3070)
!3074 = !DILocation(line: 206, column: 3, scope: !3071)
!3075 = !DILocation(line: 208, column: 14, scope: !3070)
!3076 = !DILocation(line: 0, scope: !3071)
!3077 = !DILocation(line: 211, column: 3, scope: !3047)
!3078 = !DILocation(line: 213, column: 1, scope: !3047)
!3079 = distinct !DISubprogram(name: "version_etc", scope: !567, file: !567, line: 230, type: !3080, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !2950, !125, !125, !125, null}
!3082 = !{!3083, !3084, !3085, !3086, !3087}
!3083 = !DILocalVariable(name: "stream", arg: 1, scope: !3079, file: !567, line: 230, type: !2950)
!3084 = !DILocalVariable(name: "command_name", arg: 2, scope: !3079, file: !567, line: 231, type: !125)
!3085 = !DILocalVariable(name: "package", arg: 3, scope: !3079, file: !567, line: 231, type: !125)
!3086 = !DILocalVariable(name: "version", arg: 4, scope: !3079, file: !567, line: 232, type: !125)
!3087 = !DILocalVariable(name: "authors", scope: !3079, file: !567, line: 234, type: !3088)
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !806, line: 52, baseType: !3089)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1463, line: 12, baseType: !3090)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !567, baseType: !3091)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3051, size: 192, elements: !91)
!3092 = distinct !DIAssignID()
!3093 = !DILocation(line: 0, scope: !3079)
!3094 = !DILocation(line: 234, column: 3, scope: !3079)
!3095 = !DILocation(line: 235, column: 3, scope: !3079)
!3096 = !DILocation(line: 236, column: 3, scope: !3079)
!3097 = !DILocation(line: 237, column: 3, scope: !3079)
!3098 = !DILocation(line: 238, column: 1, scope: !3079)
!3099 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !567, file: !567, line: 241, type: !408, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694)
!3100 = !DILocation(line: 243, column: 3, scope: !3099)
!3101 = !DILocation(line: 248, column: 3, scope: !3099)
!3102 = !DILocation(line: 254, column: 3, scope: !3099)
!3103 = !DILocation(line: 259, column: 3, scope: !3099)
!3104 = !DILocation(line: 261, column: 1, scope: !3099)
!3105 = distinct !DISubprogram(name: "xnrealloc", scope: !3106, file: !3106, line: 147, type: !3107, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3109)
!3106 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!149, !149, !152, !152}
!3109 = !{!3110, !3111, !3112}
!3110 = !DILocalVariable(name: "p", arg: 1, scope: !3105, file: !3106, line: 147, type: !149)
!3111 = !DILocalVariable(name: "n", arg: 2, scope: !3105, file: !3106, line: 147, type: !152)
!3112 = !DILocalVariable(name: "s", arg: 3, scope: !3105, file: !3106, line: 147, type: !152)
!3113 = !DILocation(line: 0, scope: !3105)
!3114 = !DILocalVariable(name: "p", arg: 1, scope: !3115, file: !702, line: 83, type: !149)
!3115 = distinct !DISubprogram(name: "xreallocarray", scope: !702, file: !702, line: 83, type: !3107, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3116)
!3116 = !{!3114, !3117, !3118}
!3117 = !DILocalVariable(name: "n", arg: 2, scope: !3115, file: !702, line: 83, type: !152)
!3118 = !DILocalVariable(name: "s", arg: 3, scope: !3115, file: !702, line: 83, type: !152)
!3119 = !DILocation(line: 0, scope: !3115, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 149, column: 10, scope: !3105)
!3121 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3120)
!3122 = !DILocalVariable(name: "p", arg: 1, scope: !3123, file: !702, line: 37, type: !149)
!3123 = distinct !DISubprogram(name: "check_nonnull", scope: !702, file: !702, line: 37, type: !3124, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!149, !149}
!3126 = !{!3122}
!3127 = !DILocation(line: 0, scope: !3123, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3120)
!3129 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3128)
!3130 = distinct !DILexicalBlock(scope: !3123, file: !702, line: 39, column: 7)
!3131 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3128)
!3132 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3128)
!3133 = !DILocation(line: 149, column: 3, scope: !3105)
!3134 = !DILocation(line: 0, scope: !3115)
!3135 = !DILocation(line: 85, column: 25, scope: !3115)
!3136 = !DILocation(line: 0, scope: !3123, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 85, column: 10, scope: !3115)
!3138 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3137)
!3139 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3137)
!3140 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3137)
!3141 = !DILocation(line: 85, column: 3, scope: !3115)
!3142 = distinct !DISubprogram(name: "xmalloc", scope: !702, file: !702, line: 47, type: !3143, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!149, !152}
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "s", arg: 1, scope: !3142, file: !702, line: 47, type: !152)
!3147 = !DILocation(line: 0, scope: !3142)
!3148 = !DILocation(line: 49, column: 25, scope: !3142)
!3149 = !DILocation(line: 0, scope: !3123, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 49, column: 10, scope: !3142)
!3151 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3150)
!3152 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3150)
!3153 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3150)
!3154 = !DILocation(line: 49, column: 3, scope: !3142)
!3155 = !DISubprogram(name: "malloc", scope: !960, file: !960, line: 540, type: !3143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3156 = distinct !DISubprogram(name: "ximalloc", scope: !702, file: !702, line: 53, type: !3157, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!149, !721}
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "s", arg: 1, scope: !3156, file: !702, line: 53, type: !721)
!3161 = !DILocation(line: 0, scope: !3156)
!3162 = !DILocalVariable(name: "s", arg: 1, scope: !3163, file: !3164, line: 55, type: !721)
!3163 = distinct !DISubprogram(name: "imalloc", scope: !3164, file: !3164, line: 55, type: !3157, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3165)
!3164 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3165 = !{!3162}
!3166 = !DILocation(line: 0, scope: !3163, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 55, column: 25, scope: !3156)
!3168 = !DILocation(line: 57, column: 26, scope: !3163, inlinedAt: !3167)
!3169 = !DILocation(line: 0, scope: !3123, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 55, column: 10, scope: !3156)
!3171 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3170)
!3172 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3170)
!3173 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3170)
!3174 = !DILocation(line: 55, column: 3, scope: !3156)
!3175 = distinct !DISubprogram(name: "xcharalloc", scope: !702, file: !702, line: 59, type: !3176, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!148, !152}
!3178 = !{!3179}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !702, line: 59, type: !152)
!3180 = !DILocation(line: 0, scope: !3175)
!3181 = !DILocation(line: 0, scope: !3142, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 61, column: 10, scope: !3175)
!3183 = !DILocation(line: 49, column: 25, scope: !3142, inlinedAt: !3182)
!3184 = !DILocation(line: 0, scope: !3123, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 49, column: 10, scope: !3142, inlinedAt: !3182)
!3186 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3185)
!3187 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3185)
!3188 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3185)
!3189 = !DILocation(line: 61, column: 3, scope: !3175)
!3190 = distinct !DISubprogram(name: "xrealloc", scope: !702, file: !702, line: 68, type: !3191, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!149, !149, !152}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "p", arg: 1, scope: !3190, file: !702, line: 68, type: !149)
!3195 = !DILocalVariable(name: "s", arg: 2, scope: !3190, file: !702, line: 68, type: !152)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocalVariable(name: "ptr", arg: 1, scope: !3198, file: !3199, line: 2057, type: !149)
!3198 = distinct !DISubprogram(name: "rpl_realloc", scope: !3199, file: !3199, line: 2057, type: !3191, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3200)
!3199 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3200 = !{!3197, !3201}
!3201 = !DILocalVariable(name: "size", arg: 2, scope: !3198, file: !3199, line: 2057, type: !152)
!3202 = !DILocation(line: 0, scope: !3198, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 70, column: 25, scope: !3190)
!3204 = !DILocation(line: 2059, column: 24, scope: !3198, inlinedAt: !3203)
!3205 = !DILocation(line: 2059, column: 10, scope: !3198, inlinedAt: !3203)
!3206 = !DILocation(line: 0, scope: !3123, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 70, column: 10, scope: !3190)
!3208 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3207)
!3209 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3207)
!3210 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3207)
!3211 = !DILocation(line: 70, column: 3, scope: !3190)
!3212 = !DISubprogram(name: "realloc", scope: !960, file: !960, line: 551, type: !3191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3213 = distinct !DISubprogram(name: "xirealloc", scope: !702, file: !702, line: 74, type: !3214, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!149, !149, !721}
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "p", arg: 1, scope: !3213, file: !702, line: 74, type: !149)
!3218 = !DILocalVariable(name: "s", arg: 2, scope: !3213, file: !702, line: 74, type: !721)
!3219 = !DILocation(line: 0, scope: !3213)
!3220 = !DILocalVariable(name: "p", arg: 1, scope: !3221, file: !3164, line: 66, type: !149)
!3221 = distinct !DISubprogram(name: "irealloc", scope: !3164, file: !3164, line: 66, type: !3214, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3222)
!3222 = !{!3220, !3223}
!3223 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !3164, line: 66, type: !721)
!3224 = !DILocation(line: 0, scope: !3221, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 76, column: 25, scope: !3213)
!3226 = !DILocation(line: 0, scope: !3198, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 68, column: 26, scope: !3221, inlinedAt: !3225)
!3228 = !DILocation(line: 2059, column: 24, scope: !3198, inlinedAt: !3227)
!3229 = !DILocation(line: 2059, column: 10, scope: !3198, inlinedAt: !3227)
!3230 = !DILocation(line: 0, scope: !3123, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 76, column: 10, scope: !3213)
!3232 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3231)
!3233 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3231)
!3234 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3231)
!3235 = !DILocation(line: 76, column: 3, scope: !3213)
!3236 = distinct !DISubprogram(name: "xireallocarray", scope: !702, file: !702, line: 89, type: !3237, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!149, !149, !721, !721}
!3239 = !{!3240, !3241, !3242}
!3240 = !DILocalVariable(name: "p", arg: 1, scope: !3236, file: !702, line: 89, type: !149)
!3241 = !DILocalVariable(name: "n", arg: 2, scope: !3236, file: !702, line: 89, type: !721)
!3242 = !DILocalVariable(name: "s", arg: 3, scope: !3236, file: !702, line: 89, type: !721)
!3243 = !DILocation(line: 0, scope: !3236)
!3244 = !DILocalVariable(name: "p", arg: 1, scope: !3245, file: !3164, line: 98, type: !149)
!3245 = distinct !DISubprogram(name: "ireallocarray", scope: !3164, file: !3164, line: 98, type: !3237, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3246)
!3246 = !{!3244, !3247, !3248}
!3247 = !DILocalVariable(name: "n", arg: 2, scope: !3245, file: !3164, line: 98, type: !721)
!3248 = !DILocalVariable(name: "s", arg: 3, scope: !3245, file: !3164, line: 98, type: !721)
!3249 = !DILocation(line: 0, scope: !3245, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 91, column: 25, scope: !3236)
!3251 = !DILocation(line: 101, column: 13, scope: !3245, inlinedAt: !3250)
!3252 = !DILocation(line: 0, scope: !3123, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 91, column: 10, scope: !3236)
!3254 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3253)
!3257 = !DILocation(line: 91, column: 3, scope: !3236)
!3258 = distinct !DISubprogram(name: "xnmalloc", scope: !702, file: !702, line: 98, type: !3259, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!149, !152, !152}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3258, file: !702, line: 98, type: !152)
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3258, file: !702, line: 98, type: !152)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 0, scope: !3115, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 100, column: 10, scope: !3258)
!3267 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3266)
!3268 = !DILocation(line: 0, scope: !3123, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3266)
!3270 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3269)
!3271 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3269)
!3272 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3269)
!3273 = !DILocation(line: 100, column: 3, scope: !3258)
!3274 = distinct !DISubprogram(name: "xinmalloc", scope: !702, file: !702, line: 104, type: !3275, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!149, !721, !721}
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "n", arg: 1, scope: !3274, file: !702, line: 104, type: !721)
!3279 = !DILocalVariable(name: "s", arg: 2, scope: !3274, file: !702, line: 104, type: !721)
!3280 = !DILocation(line: 0, scope: !3274)
!3281 = !DILocation(line: 0, scope: !3236, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 106, column: 10, scope: !3274)
!3283 = !DILocation(line: 0, scope: !3245, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 91, column: 25, scope: !3236, inlinedAt: !3282)
!3285 = !DILocation(line: 101, column: 13, scope: !3245, inlinedAt: !3284)
!3286 = !DILocation(line: 0, scope: !3123, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 91, column: 10, scope: !3236, inlinedAt: !3282)
!3288 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3287)
!3289 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3287)
!3290 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3287)
!3291 = !DILocation(line: 106, column: 3, scope: !3274)
!3292 = distinct !DISubprogram(name: "x2realloc", scope: !702, file: !702, line: 116, type: !3293, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!149, !149, !708}
!3295 = !{!3296, !3297}
!3296 = !DILocalVariable(name: "p", arg: 1, scope: !3292, file: !702, line: 116, type: !149)
!3297 = !DILocalVariable(name: "ps", arg: 2, scope: !3292, file: !702, line: 116, type: !708)
!3298 = !DILocation(line: 0, scope: !3292)
!3299 = !DILocation(line: 0, scope: !705, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 118, column: 10, scope: !3292)
!3301 = !DILocation(line: 178, column: 14, scope: !705, inlinedAt: !3300)
!3302 = !DILocation(line: 180, column: 9, scope: !3303, inlinedAt: !3300)
!3303 = distinct !DILexicalBlock(scope: !705, file: !702, line: 180, column: 7)
!3304 = !DILocation(line: 180, column: 7, scope: !705, inlinedAt: !3300)
!3305 = !DILocation(line: 182, column: 13, scope: !3306, inlinedAt: !3300)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !702, line: 182, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !702, line: 181, column: 5)
!3308 = !DILocation(line: 182, column: 11, scope: !3307, inlinedAt: !3300)
!3309 = !DILocation(line: 197, column: 11, scope: !3310, inlinedAt: !3300)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !702, line: 197, column: 11)
!3311 = distinct !DILexicalBlock(scope: !3303, file: !702, line: 195, column: 5)
!3312 = !DILocation(line: 197, column: 11, scope: !3311, inlinedAt: !3300)
!3313 = !DILocation(line: 198, column: 9, scope: !3310, inlinedAt: !3300)
!3314 = !DILocation(line: 0, scope: !3115, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 201, column: 7, scope: !705, inlinedAt: !3300)
!3316 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3315)
!3317 = !DILocation(line: 0, scope: !3123, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3315)
!3319 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3318)
!3320 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3318)
!3321 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3318)
!3322 = !DILocation(line: 202, column: 7, scope: !705, inlinedAt: !3300)
!3323 = !DILocation(line: 118, column: 3, scope: !3292)
!3324 = !DILocation(line: 0, scope: !705)
!3325 = !DILocation(line: 178, column: 14, scope: !705)
!3326 = !DILocation(line: 180, column: 9, scope: !3303)
!3327 = !DILocation(line: 180, column: 7, scope: !705)
!3328 = !DILocation(line: 182, column: 13, scope: !3306)
!3329 = !DILocation(line: 182, column: 11, scope: !3307)
!3330 = !DILocation(line: 190, column: 30, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3306, file: !702, line: 183, column: 9)
!3332 = !DILocation(line: 191, column: 16, scope: !3331)
!3333 = !DILocation(line: 191, column: 13, scope: !3331)
!3334 = !DILocation(line: 192, column: 9, scope: !3331)
!3335 = !DILocation(line: 197, column: 11, scope: !3310)
!3336 = !DILocation(line: 197, column: 11, scope: !3311)
!3337 = !DILocation(line: 198, column: 9, scope: !3310)
!3338 = !DILocation(line: 0, scope: !3115, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 201, column: 7, scope: !705)
!3340 = !DILocation(line: 85, column: 25, scope: !3115, inlinedAt: !3339)
!3341 = !DILocation(line: 0, scope: !3123, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 85, column: 10, scope: !3115, inlinedAt: !3339)
!3343 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3342)
!3344 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3342)
!3345 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3342)
!3346 = !DILocation(line: 202, column: 7, scope: !705)
!3347 = !DILocation(line: 203, column: 3, scope: !705)
!3348 = !DILocation(line: 0, scope: !717)
!3349 = !DILocation(line: 230, column: 14, scope: !717)
!3350 = !DILocation(line: 238, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !717, file: !702, line: 238, column: 7)
!3352 = !DILocation(line: 238, column: 7, scope: !717)
!3353 = !DILocation(line: 240, column: 9, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !717, file: !702, line: 240, column: 7)
!3355 = !DILocation(line: 240, column: 18, scope: !3354)
!3356 = !DILocation(line: 253, column: 8, scope: !717)
!3357 = !DILocation(line: 256, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !717, file: !702, line: 256, column: 7)
!3359 = !DILocation(line: 256, column: 7, scope: !717)
!3360 = !DILocation(line: 258, column: 27, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3358, file: !702, line: 257, column: 5)
!3362 = !DILocation(line: 259, column: 50, scope: !3361)
!3363 = !DILocation(line: 259, column: 32, scope: !3361)
!3364 = !DILocation(line: 260, column: 5, scope: !3361)
!3365 = !DILocation(line: 262, column: 9, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !717, file: !702, line: 262, column: 7)
!3367 = !DILocation(line: 262, column: 7, scope: !717)
!3368 = !DILocation(line: 263, column: 9, scope: !3366)
!3369 = !DILocation(line: 263, column: 5, scope: !3366)
!3370 = !DILocation(line: 264, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !717, file: !702, line: 264, column: 7)
!3372 = !DILocation(line: 264, column: 14, scope: !3371)
!3373 = !DILocation(line: 265, column: 7, scope: !3371)
!3374 = !DILocation(line: 265, column: 11, scope: !3371)
!3375 = !DILocation(line: 266, column: 11, scope: !3371)
!3376 = !DILocation(line: 267, column: 14, scope: !3371)
!3377 = !DILocation(line: 264, column: 7, scope: !717)
!3378 = !DILocation(line: 268, column: 5, scope: !3371)
!3379 = !DILocation(line: 0, scope: !3190, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 269, column: 8, scope: !717)
!3381 = !DILocation(line: 0, scope: !3198, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 70, column: 25, scope: !3190, inlinedAt: !3380)
!3383 = !DILocation(line: 2059, column: 24, scope: !3198, inlinedAt: !3382)
!3384 = !DILocation(line: 2059, column: 10, scope: !3198, inlinedAt: !3382)
!3385 = !DILocation(line: 0, scope: !3123, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 70, column: 10, scope: !3190, inlinedAt: !3380)
!3387 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3386)
!3388 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3386)
!3389 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3386)
!3390 = !DILocation(line: 270, column: 7, scope: !717)
!3391 = !DILocation(line: 271, column: 3, scope: !717)
!3392 = distinct !DISubprogram(name: "xzalloc", scope: !702, file: !702, line: 279, type: !3143, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3393)
!3393 = !{!3394}
!3394 = !DILocalVariable(name: "s", arg: 1, scope: !3392, file: !702, line: 279, type: !152)
!3395 = !DILocation(line: 0, scope: !3392)
!3396 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !702, line: 294, type: !152)
!3397 = distinct !DISubprogram(name: "xcalloc", scope: !702, file: !702, line: 294, type: !3259, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3398)
!3398 = !{!3396, !3399}
!3399 = !DILocalVariable(name: "s", arg: 2, scope: !3397, file: !702, line: 294, type: !152)
!3400 = !DILocation(line: 0, scope: !3397, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 281, column: 10, scope: !3392)
!3402 = !DILocation(line: 296, column: 25, scope: !3397, inlinedAt: !3401)
!3403 = !DILocation(line: 0, scope: !3123, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 296, column: 10, scope: !3397, inlinedAt: !3401)
!3405 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3404)
!3406 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3404)
!3407 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3404)
!3408 = !DILocation(line: 281, column: 3, scope: !3392)
!3409 = !DISubprogram(name: "calloc", scope: !960, file: !960, line: 543, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3410 = !DILocation(line: 0, scope: !3397)
!3411 = !DILocation(line: 296, column: 25, scope: !3397)
!3412 = !DILocation(line: 0, scope: !3123, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 296, column: 10, scope: !3397)
!3414 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3413)
!3415 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3413)
!3416 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3413)
!3417 = !DILocation(line: 296, column: 3, scope: !3397)
!3418 = distinct !DISubprogram(name: "xizalloc", scope: !702, file: !702, line: 285, type: !3157, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3419)
!3419 = !{!3420}
!3420 = !DILocalVariable(name: "s", arg: 1, scope: !3418, file: !702, line: 285, type: !721)
!3421 = !DILocation(line: 0, scope: !3418)
!3422 = !DILocalVariable(name: "n", arg: 1, scope: !3423, file: !702, line: 300, type: !721)
!3423 = distinct !DISubprogram(name: "xicalloc", scope: !702, file: !702, line: 300, type: !3275, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3424)
!3424 = !{!3422, !3425}
!3425 = !DILocalVariable(name: "s", arg: 2, scope: !3423, file: !702, line: 300, type: !721)
!3426 = !DILocation(line: 0, scope: !3423, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 287, column: 10, scope: !3418)
!3428 = !DILocalVariable(name: "n", arg: 1, scope: !3429, file: !3164, line: 77, type: !721)
!3429 = distinct !DISubprogram(name: "icalloc", scope: !3164, file: !3164, line: 77, type: !3275, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3430)
!3430 = !{!3428, !3431}
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3429, file: !3164, line: 77, type: !721)
!3432 = !DILocation(line: 0, scope: !3429, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 302, column: 25, scope: !3423, inlinedAt: !3427)
!3434 = !DILocation(line: 91, column: 10, scope: !3429, inlinedAt: !3433)
!3435 = !DILocation(line: 0, scope: !3123, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 302, column: 10, scope: !3423, inlinedAt: !3427)
!3437 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3436)
!3438 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3436)
!3439 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3436)
!3440 = !DILocation(line: 287, column: 3, scope: !3418)
!3441 = !DILocation(line: 0, scope: !3423)
!3442 = !DILocation(line: 0, scope: !3429, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 302, column: 25, scope: !3423)
!3444 = !DILocation(line: 91, column: 10, scope: !3429, inlinedAt: !3443)
!3445 = !DILocation(line: 0, scope: !3123, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 302, column: 10, scope: !3423)
!3447 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3446)
!3448 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3446)
!3449 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3446)
!3450 = !DILocation(line: 302, column: 3, scope: !3423)
!3451 = distinct !DISubprogram(name: "xmemdup", scope: !702, file: !702, line: 310, type: !3452, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!149, !992, !152}
!3454 = !{!3455, !3456}
!3455 = !DILocalVariable(name: "p", arg: 1, scope: !3451, file: !702, line: 310, type: !992)
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3451, file: !702, line: 310, type: !152)
!3457 = !DILocation(line: 0, scope: !3451)
!3458 = !DILocation(line: 0, scope: !3142, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 312, column: 18, scope: !3451)
!3460 = !DILocation(line: 49, column: 25, scope: !3142, inlinedAt: !3459)
!3461 = !DILocation(line: 0, scope: !3123, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 49, column: 10, scope: !3142, inlinedAt: !3459)
!3463 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3462)
!3464 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3462)
!3465 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3462)
!3466 = !DILocalVariable(name: "__dest", arg: 1, scope: !3467, file: !1580, line: 26, type: !3470)
!3467 = distinct !DISubprogram(name: "memcpy", scope: !1580, file: !1580, line: 26, type: !3468, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3471)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!149, !3470, !991, !152}
!3470 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!3471 = !{!3466, !3472, !3473}
!3472 = !DILocalVariable(name: "__src", arg: 2, scope: !3467, file: !1580, line: 26, type: !991)
!3473 = !DILocalVariable(name: "__len", arg: 3, scope: !3467, file: !1580, line: 26, type: !152)
!3474 = !DILocation(line: 0, scope: !3467, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 312, column: 10, scope: !3451)
!3476 = !DILocation(line: 29, column: 10, scope: !3467, inlinedAt: !3475)
!3477 = !DILocation(line: 312, column: 3, scope: !3451)
!3478 = distinct !DISubprogram(name: "ximemdup", scope: !702, file: !702, line: 316, type: !3479, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!149, !992, !721}
!3481 = !{!3482, !3483}
!3482 = !DILocalVariable(name: "p", arg: 1, scope: !3478, file: !702, line: 316, type: !992)
!3483 = !DILocalVariable(name: "s", arg: 2, scope: !3478, file: !702, line: 316, type: !721)
!3484 = !DILocation(line: 0, scope: !3478)
!3485 = !DILocation(line: 0, scope: !3156, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 318, column: 18, scope: !3478)
!3487 = !DILocation(line: 0, scope: !3163, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 55, column: 25, scope: !3156, inlinedAt: !3486)
!3489 = !DILocation(line: 57, column: 26, scope: !3163, inlinedAt: !3488)
!3490 = !DILocation(line: 0, scope: !3123, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 55, column: 10, scope: !3156, inlinedAt: !3486)
!3492 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3491)
!3493 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3491)
!3494 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3491)
!3495 = !DILocation(line: 0, scope: !3467, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 318, column: 10, scope: !3478)
!3497 = !DILocation(line: 29, column: 10, scope: !3467, inlinedAt: !3496)
!3498 = !DILocation(line: 318, column: 3, scope: !3478)
!3499 = distinct !DISubprogram(name: "ximemdup0", scope: !702, file: !702, line: 325, type: !3500, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3502)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!148, !992, !721}
!3502 = !{!3503, !3504, !3505}
!3503 = !DILocalVariable(name: "p", arg: 1, scope: !3499, file: !702, line: 325, type: !992)
!3504 = !DILocalVariable(name: "s", arg: 2, scope: !3499, file: !702, line: 325, type: !721)
!3505 = !DILocalVariable(name: "result", scope: !3499, file: !702, line: 327, type: !148)
!3506 = !DILocation(line: 0, scope: !3499)
!3507 = !DILocation(line: 327, column: 30, scope: !3499)
!3508 = !DILocation(line: 0, scope: !3156, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 327, column: 18, scope: !3499)
!3510 = !DILocation(line: 0, scope: !3163, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 55, column: 25, scope: !3156, inlinedAt: !3509)
!3512 = !DILocation(line: 57, column: 26, scope: !3163, inlinedAt: !3511)
!3513 = !DILocation(line: 0, scope: !3123, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 55, column: 10, scope: !3156, inlinedAt: !3509)
!3515 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3514)
!3516 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3514)
!3517 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3514)
!3518 = !DILocation(line: 328, column: 3, scope: !3499)
!3519 = !DILocation(line: 328, column: 13, scope: !3499)
!3520 = !DILocation(line: 0, scope: !3467, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 329, column: 10, scope: !3499)
!3522 = !DILocation(line: 29, column: 10, scope: !3467, inlinedAt: !3521)
!3523 = !DILocation(line: 329, column: 3, scope: !3499)
!3524 = distinct !DISubprogram(name: "xstrdup", scope: !702, file: !702, line: 335, type: !970, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3525)
!3525 = !{!3526}
!3526 = !DILocalVariable(name: "string", arg: 1, scope: !3524, file: !702, line: 335, type: !125)
!3527 = !DILocation(line: 0, scope: !3524)
!3528 = !DILocation(line: 337, column: 27, scope: !3524)
!3529 = !DILocation(line: 337, column: 43, scope: !3524)
!3530 = !DILocation(line: 0, scope: !3451, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 337, column: 10, scope: !3524)
!3532 = !DILocation(line: 0, scope: !3142, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 312, column: 18, scope: !3451, inlinedAt: !3531)
!3534 = !DILocation(line: 49, column: 25, scope: !3142, inlinedAt: !3533)
!3535 = !DILocation(line: 0, scope: !3123, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 49, column: 10, scope: !3142, inlinedAt: !3533)
!3537 = !DILocation(line: 39, column: 8, scope: !3130, inlinedAt: !3536)
!3538 = !DILocation(line: 39, column: 7, scope: !3123, inlinedAt: !3536)
!3539 = !DILocation(line: 40, column: 5, scope: !3130, inlinedAt: !3536)
!3540 = !DILocation(line: 0, scope: !3467, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 312, column: 10, scope: !3451, inlinedAt: !3531)
!3542 = !DILocation(line: 29, column: 10, scope: !3467, inlinedAt: !3541)
!3543 = !DILocation(line: 337, column: 3, scope: !3524)
!3544 = distinct !DISubprogram(name: "xalloc_die", scope: !666, file: !666, line: 32, type: !408, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3545)
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "__errstatus", scope: !3547, file: !666, line: 34, type: !3548)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !666, line: 34, column: 3)
!3548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!3549 = !DILocation(line: 34, column: 3, scope: !3547)
!3550 = !DILocation(line: 0, scope: !3547)
!3551 = !DILocation(line: 40, column: 3, scope: !3544)
!3552 = distinct !DISubprogram(name: "close_stream", scope: !739, file: !739, line: 55, type: !3553, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3589)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!150, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3557, file: !283, line: 51, baseType: !150, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3557, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3557, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3557, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3557, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3557, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3557, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3557, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3557, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3557, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3557, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3557, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3557, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3557, file: !283, line: 70, baseType: !3573, size: 64, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3557, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3557, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3557, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3557, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3557, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3557, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3557, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3557, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3557, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3557, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3557, file: !283, line: 93, baseType: !3573, size: 64, offset: 1344)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3557, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3557, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3557, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3557, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3589 = !{!3590, !3591, !3593, !3594}
!3590 = !DILocalVariable(name: "stream", arg: 1, scope: !3552, file: !739, line: 55, type: !3555)
!3591 = !DILocalVariable(name: "some_pending", scope: !3552, file: !739, line: 57, type: !3592)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!3593 = !DILocalVariable(name: "prev_fail", scope: !3552, file: !739, line: 58, type: !3592)
!3594 = !DILocalVariable(name: "fclose_fail", scope: !3552, file: !739, line: 59, type: !3592)
!3595 = !DILocation(line: 0, scope: !3552)
!3596 = !DILocation(line: 57, column: 30, scope: !3552)
!3597 = !DILocalVariable(name: "__stream", arg: 1, scope: !3598, file: !1200, line: 135, type: !3555)
!3598 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1200, file: !1200, line: 135, type: !3553, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3599)
!3599 = !{!3597}
!3600 = !DILocation(line: 0, scope: !3598, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 58, column: 27, scope: !3552)
!3602 = !DILocation(line: 137, column: 10, scope: !3598, inlinedAt: !3601)
!3603 = !{!1208, !813, i64 0}
!3604 = !DILocation(line: 58, column: 43, scope: !3552)
!3605 = !DILocation(line: 59, column: 29, scope: !3552)
!3606 = !DILocation(line: 59, column: 45, scope: !3552)
!3607 = !DILocation(line: 69, column: 17, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3552, file: !739, line: 69, column: 7)
!3609 = !DILocation(line: 57, column: 50, scope: !3552)
!3610 = !DILocation(line: 69, column: 33, scope: !3608)
!3611 = !DILocation(line: 69, column: 53, scope: !3608)
!3612 = !DILocation(line: 69, column: 59, scope: !3608)
!3613 = !DILocation(line: 69, column: 7, scope: !3552)
!3614 = !DILocation(line: 71, column: 11, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !739, line: 70, column: 5)
!3616 = !DILocation(line: 72, column: 9, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3615, file: !739, line: 71, column: 11)
!3618 = !DILocation(line: 72, column: 15, scope: !3617)
!3619 = !DILocation(line: 77, column: 1, scope: !3552)
!3620 = !DISubprogram(name: "__fpending", scope: !3621, file: !3621, line: 75, type: !3622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3621 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!152, !3555}
!3624 = distinct !DISubprogram(name: "rpl_fclose", scope: !741, file: !741, line: 58, type: !3625, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3661)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!150, !3627}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3629)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3629, file: !283, line: 51, baseType: !150, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3629, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3629, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3629, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3629, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3629, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3629, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3629, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3629, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3629, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3629, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3629, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3629, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3629, file: !283, line: 70, baseType: !3645, size: 64, offset: 832)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3629, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3629, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3629, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3629, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3629, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3629, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3629, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3629, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3629, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3629, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3629, file: !283, line: 93, baseType: !3645, size: 64, offset: 1344)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3629, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3629, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3629, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3629, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DILocalVariable(name: "fp", arg: 1, scope: !3624, file: !741, line: 58, type: !3627)
!3663 = !DILocalVariable(name: "saved_errno", scope: !3624, file: !741, line: 60, type: !150)
!3664 = !DILocalVariable(name: "fd", scope: !3624, file: !741, line: 63, type: !150)
!3665 = !DILocalVariable(name: "result", scope: !3624, file: !741, line: 74, type: !150)
!3666 = !DILocation(line: 0, scope: !3624)
!3667 = !DILocation(line: 63, column: 12, scope: !3624)
!3668 = !DILocation(line: 64, column: 10, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3624, file: !741, line: 64, column: 7)
!3670 = !DILocation(line: 64, column: 7, scope: !3624)
!3671 = !DILocation(line: 65, column: 12, scope: !3669)
!3672 = !DILocation(line: 65, column: 5, scope: !3669)
!3673 = !DILocation(line: 70, column: 9, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3624, file: !741, line: 70, column: 7)
!3675 = !DILocation(line: 70, column: 23, scope: !3674)
!3676 = !DILocation(line: 70, column: 33, scope: !3674)
!3677 = !DILocation(line: 70, column: 26, scope: !3674)
!3678 = !DILocation(line: 70, column: 59, scope: !3674)
!3679 = !DILocation(line: 71, column: 7, scope: !3674)
!3680 = !DILocation(line: 71, column: 10, scope: !3674)
!3681 = !DILocation(line: 70, column: 7, scope: !3624)
!3682 = !DILocation(line: 100, column: 12, scope: !3624)
!3683 = !DILocation(line: 105, column: 7, scope: !3624)
!3684 = !DILocation(line: 72, column: 19, scope: !3674)
!3685 = !DILocation(line: 105, column: 19, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3624, file: !741, line: 105, column: 7)
!3687 = !DILocation(line: 107, column: 13, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3686, file: !741, line: 106, column: 5)
!3689 = !DILocation(line: 109, column: 5, scope: !3688)
!3690 = !DILocation(line: 112, column: 1, scope: !3624)
!3691 = !DISubprogram(name: "fileno", scope: !806, file: !806, line: 809, type: !3625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3692 = !DISubprogram(name: "fclose", scope: !806, file: !806, line: 178, type: !3625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3693 = !DISubprogram(name: "__freading", scope: !3621, file: !3621, line: 51, type: !3625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3694 = !DISubprogram(name: "lseek", scope: !1309, file: !1309, line: 339, type: !3695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!305, !150, !305, !150}
!3697 = distinct !DISubprogram(name: "rpl_fflush", scope: !743, file: !743, line: 130, type: !3698, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3734)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!150, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3702)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3702, file: !283, line: 51, baseType: !150, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3702, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3702, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3702, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3702, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3702, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3702, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3702, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3702, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3702, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3702, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3702, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3702, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3702, file: !283, line: 70, baseType: !3718, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3702, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3702, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3702, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3702, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3702, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3702, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3702, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3702, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3702, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3702, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3702, file: !283, line: 93, baseType: !3718, size: 64, offset: 1344)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3702, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3702, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3702, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3702, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3734 = !{!3735}
!3735 = !DILocalVariable(name: "stream", arg: 1, scope: !3697, file: !743, line: 130, type: !3700)
!3736 = !DILocation(line: 0, scope: !3697)
!3737 = !DILocation(line: 151, column: 14, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3697, file: !743, line: 151, column: 7)
!3739 = !DILocation(line: 151, column: 22, scope: !3738)
!3740 = !DILocation(line: 151, column: 27, scope: !3738)
!3741 = !DILocation(line: 151, column: 7, scope: !3697)
!3742 = !DILocation(line: 152, column: 12, scope: !3738)
!3743 = !DILocation(line: 152, column: 5, scope: !3738)
!3744 = !DILocalVariable(name: "fp", arg: 1, scope: !3745, file: !743, line: 42, type: !3700)
!3745 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !743, file: !743, line: 42, type: !3746, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !3700}
!3748 = !{!3744}
!3749 = !DILocation(line: 0, scope: !3745, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 157, column: 3, scope: !3697)
!3751 = !DILocation(line: 44, column: 12, scope: !3752, inlinedAt: !3750)
!3752 = distinct !DILexicalBlock(scope: !3745, file: !743, line: 44, column: 7)
!3753 = !DILocation(line: 44, column: 19, scope: !3752, inlinedAt: !3750)
!3754 = !DILocation(line: 44, column: 7, scope: !3745, inlinedAt: !3750)
!3755 = !DILocation(line: 46, column: 5, scope: !3752, inlinedAt: !3750)
!3756 = !DILocation(line: 159, column: 10, scope: !3697)
!3757 = !DILocation(line: 159, column: 3, scope: !3697)
!3758 = !DILocation(line: 236, column: 1, scope: !3697)
!3759 = !DISubprogram(name: "fflush", scope: !806, file: !806, line: 230, type: !3698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3760 = distinct !DISubprogram(name: "rpl_fseeko", scope: !745, file: !745, line: 28, type: !3761, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !3798)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!150, !3763, !3797, !150}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3765)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3765, file: !283, line: 51, baseType: !150, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3765, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3765, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3765, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3765, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3765, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3765, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3765, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3765, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3765, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3765, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3765, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3765, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3765, file: !283, line: 70, baseType: !3781, size: 64, offset: 832)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3765, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3765, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3765, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3765, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3765, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3765, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3765, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3765, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3765, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3765, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3765, file: !283, line: 93, baseType: !3781, size: 64, offset: 1344)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3765, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3765, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3765, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3765, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !806, line: 63, baseType: !305)
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "fp", arg: 1, scope: !3760, file: !745, line: 28, type: !3763)
!3800 = !DILocalVariable(name: "offset", arg: 2, scope: !3760, file: !745, line: 28, type: !3797)
!3801 = !DILocalVariable(name: "whence", arg: 3, scope: !3760, file: !745, line: 28, type: !150)
!3802 = !DILocalVariable(name: "pos", scope: !3803, file: !745, line: 123, type: !3797)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !745, line: 119, column: 5)
!3804 = distinct !DILexicalBlock(scope: !3760, file: !745, line: 55, column: 7)
!3805 = !DILocation(line: 0, scope: !3760)
!3806 = !DILocation(line: 55, column: 12, scope: !3804)
!3807 = !{!1208, !776, i64 16}
!3808 = !DILocation(line: 55, column: 33, scope: !3804)
!3809 = !{!1208, !776, i64 8}
!3810 = !DILocation(line: 55, column: 25, scope: !3804)
!3811 = !DILocation(line: 56, column: 7, scope: !3804)
!3812 = !DILocation(line: 56, column: 15, scope: !3804)
!3813 = !DILocation(line: 56, column: 37, scope: !3804)
!3814 = !{!1208, !776, i64 32}
!3815 = !DILocation(line: 56, column: 29, scope: !3804)
!3816 = !DILocation(line: 57, column: 7, scope: !3804)
!3817 = !DILocation(line: 57, column: 15, scope: !3804)
!3818 = !{!1208, !776, i64 72}
!3819 = !DILocation(line: 57, column: 29, scope: !3804)
!3820 = !DILocation(line: 55, column: 7, scope: !3760)
!3821 = !DILocation(line: 123, column: 26, scope: !3803)
!3822 = !DILocation(line: 123, column: 19, scope: !3803)
!3823 = !DILocation(line: 0, scope: !3803)
!3824 = !DILocation(line: 124, column: 15, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3803, file: !745, line: 124, column: 11)
!3826 = !DILocation(line: 124, column: 11, scope: !3803)
!3827 = !DILocation(line: 135, column: 19, scope: !3803)
!3828 = !DILocation(line: 136, column: 12, scope: !3803)
!3829 = !DILocation(line: 136, column: 20, scope: !3803)
!3830 = !{!1208, !1209, i64 144}
!3831 = !DILocation(line: 167, column: 7, scope: !3803)
!3832 = !DILocation(line: 169, column: 10, scope: !3760)
!3833 = !DILocation(line: 169, column: 3, scope: !3760)
!3834 = !DILocation(line: 170, column: 1, scope: !3760)
!3835 = !DISubprogram(name: "fseeko", scope: !806, file: !806, line: 736, type: !3836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!150, !3763, !305, !150}
!3838 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !673, file: !673, line: 100, type: !3839, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !3842)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!152, !1598, !125, !152, !3841}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!3842 = !{!3843, !3844, !3845, !3846, !3847}
!3843 = !DILocalVariable(name: "pwc", arg: 1, scope: !3838, file: !673, line: 100, type: !1598)
!3844 = !DILocalVariable(name: "s", arg: 2, scope: !3838, file: !673, line: 100, type: !125)
!3845 = !DILocalVariable(name: "n", arg: 3, scope: !3838, file: !673, line: 100, type: !152)
!3846 = !DILocalVariable(name: "ps", arg: 4, scope: !3838, file: !673, line: 100, type: !3841)
!3847 = !DILocalVariable(name: "ret", scope: !3838, file: !673, line: 130, type: !152)
!3848 = !DILocation(line: 0, scope: !3838)
!3849 = !DILocation(line: 105, column: 9, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3838, file: !673, line: 105, column: 7)
!3851 = !DILocation(line: 105, column: 7, scope: !3838)
!3852 = !DILocation(line: 117, column: 10, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3838, file: !673, line: 117, column: 7)
!3854 = !DILocation(line: 117, column: 7, scope: !3838)
!3855 = !DILocation(line: 130, column: 16, scope: !3838)
!3856 = !DILocation(line: 135, column: 11, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3838, file: !673, line: 135, column: 7)
!3858 = !DILocation(line: 135, column: 25, scope: !3857)
!3859 = !DILocation(line: 135, column: 30, scope: !3857)
!3860 = !DILocation(line: 135, column: 7, scope: !3838)
!3861 = !DILocalVariable(name: "ps", arg: 1, scope: !3862, file: !1571, line: 1135, type: !3841)
!3862 = distinct !DISubprogram(name: "mbszero", scope: !1571, file: !1571, line: 1135, type: !3863, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3841}
!3865 = !{!3861}
!3866 = !DILocation(line: 0, scope: !3862, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 137, column: 5, scope: !3857)
!3868 = !DILocalVariable(name: "__dest", arg: 1, scope: !3869, file: !1580, line: 57, type: !149)
!3869 = distinct !DISubprogram(name: "memset", scope: !1580, file: !1580, line: 57, type: !1581, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !3870)
!3870 = !{!3868, !3871, !3872}
!3871 = !DILocalVariable(name: "__ch", arg: 2, scope: !3869, file: !1580, line: 57, type: !150)
!3872 = !DILocalVariable(name: "__len", arg: 3, scope: !3869, file: !1580, line: 57, type: !152)
!3873 = !DILocation(line: 0, scope: !3869, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 1137, column: 3, scope: !3862, inlinedAt: !3867)
!3875 = !DILocation(line: 59, column: 10, scope: !3869, inlinedAt: !3874)
!3876 = !DILocation(line: 137, column: 5, scope: !3857)
!3877 = !DILocation(line: 138, column: 11, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3838, file: !673, line: 138, column: 7)
!3879 = !DILocation(line: 138, column: 7, scope: !3838)
!3880 = !DILocation(line: 139, column: 5, scope: !3878)
!3881 = !DILocation(line: 143, column: 26, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3838, file: !673, line: 143, column: 7)
!3883 = !DILocation(line: 143, column: 41, scope: !3882)
!3884 = !DILocation(line: 143, column: 7, scope: !3838)
!3885 = !DILocation(line: 145, column: 15, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !673, line: 145, column: 11)
!3887 = distinct !DILexicalBlock(scope: !3882, file: !673, line: 144, column: 5)
!3888 = !DILocation(line: 145, column: 11, scope: !3887)
!3889 = !DILocation(line: 146, column: 32, scope: !3886)
!3890 = !DILocation(line: 146, column: 16, scope: !3886)
!3891 = !DILocation(line: 146, column: 14, scope: !3886)
!3892 = !DILocation(line: 146, column: 9, scope: !3886)
!3893 = !DILocation(line: 286, column: 1, scope: !3838)
!3894 = !DISubprogram(name: "mbsinit", scope: !3895, file: !3895, line: 293, type: !3896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3895 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!150, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!3900 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !747, file: !747, line: 27, type: !3107, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3901)
!3901 = !{!3902, !3903, !3904, !3905}
!3902 = !DILocalVariable(name: "ptr", arg: 1, scope: !3900, file: !747, line: 27, type: !149)
!3903 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3900, file: !747, line: 27, type: !152)
!3904 = !DILocalVariable(name: "size", arg: 3, scope: !3900, file: !747, line: 27, type: !152)
!3905 = !DILocalVariable(name: "nbytes", scope: !3900, file: !747, line: 29, type: !152)
!3906 = !DILocation(line: 0, scope: !3900)
!3907 = !DILocation(line: 30, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3900, file: !747, line: 30, column: 7)
!3909 = !DILocation(line: 30, column: 7, scope: !3900)
!3910 = !DILocation(line: 32, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3908, file: !747, line: 31, column: 5)
!3912 = !DILocation(line: 32, column: 13, scope: !3911)
!3913 = !DILocation(line: 33, column: 7, scope: !3911)
!3914 = !DILocalVariable(name: "ptr", arg: 1, scope: !3915, file: !3199, line: 2057, type: !149)
!3915 = distinct !DISubprogram(name: "rpl_realloc", scope: !3199, file: !3199, line: 2057, type: !3191, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3916)
!3916 = !{!3914, !3917}
!3917 = !DILocalVariable(name: "size", arg: 2, scope: !3915, file: !3199, line: 2057, type: !152)
!3918 = !DILocation(line: 0, scope: !3915, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 37, column: 10, scope: !3900)
!3920 = !DILocation(line: 2059, column: 24, scope: !3915, inlinedAt: !3919)
!3921 = !DILocation(line: 2059, column: 10, scope: !3915, inlinedAt: !3919)
!3922 = !DILocation(line: 37, column: 3, scope: !3900)
!3923 = !DILocation(line: 38, column: 1, scope: !3900)
!3924 = distinct !DISubprogram(name: "hard_locale", scope: !691, file: !691, line: 28, type: !1134, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3925)
!3925 = !{!3926, !3927}
!3926 = !DILocalVariable(name: "category", arg: 1, scope: !3924, file: !691, line: 28, type: !150)
!3927 = !DILocalVariable(name: "locale", scope: !3924, file: !691, line: 30, type: !3928)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3929)
!3929 = !{!3930}
!3930 = !DISubrange(count: 257)
!3931 = distinct !DIAssignID()
!3932 = !DILocation(line: 0, scope: !3924)
!3933 = !DILocation(line: 30, column: 3, scope: !3924)
!3934 = !DILocation(line: 32, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3924, file: !691, line: 32, column: 7)
!3936 = !DILocation(line: 32, column: 7, scope: !3924)
!3937 = !DILocalVariable(name: "__s1", arg: 1, scope: !3938, file: !825, line: 1359, type: !125)
!3938 = distinct !DISubprogram(name: "streq", scope: !825, file: !825, line: 1359, type: !826, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !3939)
!3939 = !{!3937, !3940}
!3940 = !DILocalVariable(name: "__s2", arg: 2, scope: !3938, file: !825, line: 1359, type: !125)
!3941 = !DILocation(line: 0, scope: !3938, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 35, column: 9, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3924, file: !691, line: 35, column: 7)
!3944 = !DILocation(line: 1361, column: 11, scope: !3938, inlinedAt: !3942)
!3945 = !DILocation(line: 35, column: 29, scope: !3943)
!3946 = !DILocation(line: 0, scope: !3938, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 35, column: 32, scope: !3943)
!3948 = !DILocation(line: 1361, column: 11, scope: !3938, inlinedAt: !3947)
!3949 = !DILocation(line: 1361, column: 10, scope: !3938, inlinedAt: !3947)
!3950 = !DILocation(line: 35, column: 7, scope: !3924)
!3951 = !DILocation(line: 46, column: 3, scope: !3924)
!3952 = !DILocation(line: 47, column: 1, scope: !3924)
!3953 = distinct !DISubprogram(name: "setlocale_null_r", scope: !753, file: !753, line: 154, type: !3954, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!150, !150, !148, !152}
!3956 = !{!3957, !3958, !3959}
!3957 = !DILocalVariable(name: "category", arg: 1, scope: !3953, file: !753, line: 154, type: !150)
!3958 = !DILocalVariable(name: "buf", arg: 2, scope: !3953, file: !753, line: 154, type: !148)
!3959 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3953, file: !753, line: 154, type: !152)
!3960 = !DILocation(line: 0, scope: !3953)
!3961 = !DILocation(line: 159, column: 10, scope: !3953)
!3962 = !DILocation(line: 159, column: 3, scope: !3953)
!3963 = distinct !DISubprogram(name: "setlocale_null", scope: !753, file: !753, line: 186, type: !3964, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !752, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!125, !150}
!3966 = !{!3967}
!3967 = !DILocalVariable(name: "category", arg: 1, scope: !3963, file: !753, line: 186, type: !150)
!3968 = !DILocation(line: 0, scope: !3963)
!3969 = !DILocation(line: 189, column: 10, scope: !3963)
!3970 = !DILocation(line: 189, column: 3, scope: !3963)
!3971 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !755, file: !755, line: 35, type: !3964, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3972)
!3972 = !{!3973, !3974}
!3973 = !DILocalVariable(name: "category", arg: 1, scope: !3971, file: !755, line: 35, type: !150)
!3974 = !DILocalVariable(name: "result", scope: !3971, file: !755, line: 37, type: !125)
!3975 = !DILocation(line: 0, scope: !3971)
!3976 = !DILocation(line: 37, column: 24, scope: !3971)
!3977 = !DILocation(line: 62, column: 3, scope: !3971)
!3978 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !755, file: !755, line: 66, type: !3954, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984}
!3980 = !DILocalVariable(name: "category", arg: 1, scope: !3978, file: !755, line: 66, type: !150)
!3981 = !DILocalVariable(name: "buf", arg: 2, scope: !3978, file: !755, line: 66, type: !148)
!3982 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3978, file: !755, line: 66, type: !152)
!3983 = !DILocalVariable(name: "result", scope: !3978, file: !755, line: 111, type: !125)
!3984 = !DILocalVariable(name: "length", scope: !3985, file: !755, line: 125, type: !152)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !755, line: 124, column: 5)
!3986 = distinct !DILexicalBlock(scope: !3978, file: !755, line: 113, column: 7)
!3987 = !DILocation(line: 0, scope: !3978)
!3988 = !DILocation(line: 0, scope: !3971, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 111, column: 24, scope: !3978)
!3990 = !DILocation(line: 37, column: 24, scope: !3971, inlinedAt: !3989)
!3991 = !DILocation(line: 113, column: 14, scope: !3986)
!3992 = !DILocation(line: 113, column: 7, scope: !3978)
!3993 = !DILocation(line: 116, column: 19, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !755, line: 116, column: 11)
!3995 = distinct !DILexicalBlock(scope: !3986, file: !755, line: 114, column: 5)
!3996 = !DILocation(line: 116, column: 11, scope: !3995)
!3997 = !DILocation(line: 120, column: 16, scope: !3994)
!3998 = !DILocation(line: 120, column: 9, scope: !3994)
!3999 = !DILocation(line: 125, column: 23, scope: !3985)
!4000 = !DILocation(line: 0, scope: !3985)
!4001 = !DILocation(line: 126, column: 18, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3985, file: !755, line: 126, column: 11)
!4003 = !DILocation(line: 126, column: 11, scope: !3985)
!4004 = !DILocation(line: 128, column: 39, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !755, line: 127, column: 9)
!4006 = !DILocalVariable(name: "__dest", arg: 1, scope: !4007, file: !1580, line: 26, type: !3470)
!4007 = distinct !DISubprogram(name: "memcpy", scope: !1580, file: !1580, line: 26, type: !3468, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !4008)
!4008 = !{!4006, !4009, !4010}
!4009 = !DILocalVariable(name: "__src", arg: 2, scope: !4007, file: !1580, line: 26, type: !991)
!4010 = !DILocalVariable(name: "__len", arg: 3, scope: !4007, file: !1580, line: 26, type: !152)
!4011 = !DILocation(line: 0, scope: !4007, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 128, column: 11, scope: !4005)
!4013 = !DILocation(line: 29, column: 10, scope: !4007, inlinedAt: !4012)
!4014 = !DILocation(line: 129, column: 11, scope: !4005)
!4015 = !DILocation(line: 133, column: 23, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !755, line: 133, column: 15)
!4017 = distinct !DILexicalBlock(scope: !4002, file: !755, line: 132, column: 9)
!4018 = !DILocation(line: 133, column: 15, scope: !4017)
!4019 = !DILocation(line: 138, column: 44, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4016, file: !755, line: 134, column: 13)
!4021 = !DILocation(line: 0, scope: !4007, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 138, column: 15, scope: !4020)
!4023 = !DILocation(line: 29, column: 10, scope: !4007, inlinedAt: !4022)
!4024 = !DILocation(line: 139, column: 15, scope: !4020)
!4025 = !DILocation(line: 139, column: 32, scope: !4020)
!4026 = !DILocation(line: 140, column: 13, scope: !4020)
!4027 = !DILocation(line: 0, scope: !3986)
!4028 = !DILocation(line: 145, column: 1, scope: !3978)
