; ModuleID = 'src/echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !357
@.str.32 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !349
@.str.1.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !351
@.str.2.34 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !353
@.str.3.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !355
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !359
@stderr = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !365
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !402
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !367
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !392
@.str.1.42 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !394
@.str.2.44 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !396
@.str.3.43 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !398
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !400
@.str.4.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !404
@.str.5.38 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !406
@.str.6.39 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !411
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !416
@.str.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !422
@.str.1.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !424
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !426
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !457
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !460
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !462
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !467
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !469
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !471
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !473
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !475
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !477
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !479
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.62, ptr @.str.1.63, ptr @.str.2.64, ptr @.str.3.65, ptr @.str.4.66, ptr @.str.5.67, ptr @.str.6.68, ptr @.str.7.69, ptr @.str.8.70, ptr @.str.9.71, ptr null], align 8, !dbg !481
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !506
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !520
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !558
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !565
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !522
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !567
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !510
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !527
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !529
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !531
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !533
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !535
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !571
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !574
@.str.2.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !576
@.str.3.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !578
@.str.4.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !580
@.str.5.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !582
@.str.6.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !587
@.str.7.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !592
@.str.8.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !594
@.str.9.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !599
@.str.10.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !604
@.str.11.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !609
@.str.12.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !614
@.str.13.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !616
@.str.14.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !621
@.str.15.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !626
@.str.16.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !631
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !636
@.str.18.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !638
@.str.19.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !640
@.str.20.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !642
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !644
@.str.22.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !646
@.str.23.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !651
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !656
@exit_failure = dso_local global i32 1, align 4, !dbg !664
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !670
@.str.1.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !673
@.str.2.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !675
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !677
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !680
@.str.134 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !695
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !698

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !775
  %2 = icmp eq i32 %0, 0, !dbg !776
  br i1 %2, label %4, label %3, !dbg !779

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__PRETTY_FUNCTION__.usage) #36, !dbg !776
  unreachable, !dbg !776

4:                                                ; preds = %1
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !780
  %6 = load ptr, ptr @program_name, align 8, !dbg !780, !tbaa !781
  %7 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef %6, ptr noundef %6) #37, !dbg !780
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #37, !dbg !785
  %9 = load ptr, ptr @stdout, align 8, !dbg !785, !tbaa !781
  %10 = tail call i32 @fputs_unlocked(ptr noundef %8, ptr noundef %9), !dbg !785
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !786
  tail call fastcc void @oputs_(ptr noundef %11), !dbg !786
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !787
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !787
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !788
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !788
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !789
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !789
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !790
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !790
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !791
  %17 = load ptr, ptr @stdout, align 8, !dbg !791, !tbaa !781
  %18 = tail call i32 @fputs_unlocked(ptr noundef %16, ptr noundef %17), !dbg !791
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !792
  %20 = load ptr, ptr @stdout, align 8, !dbg !792, !tbaa !781
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !792
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !793
  %23 = load ptr, ptr @stdout, align 8, !dbg !793, !tbaa !781
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !793
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !794
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.4) #37, !dbg !794
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !795
  %28 = load ptr, ptr @stdout, align 8, !dbg !795, !tbaa !781
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !795
  tail call fastcc void @emit_ancillary_info(), !dbg !796
  tail call void @exit(i32 noundef 0) #36, !dbg !797
  unreachable, !dbg !797
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare !dbg !798 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !803 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !807 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !812 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #6 !dbg !121 {
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !260, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata ptr %0, metadata !261, metadata !DIExpression()), !dbg !816
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !817, !tbaa !818
  %3 = icmp eq i32 %2, -1, !dbg !820
  br i1 %3, label %4, label %16, !dbg !821

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #37, !dbg !822
  call void @llvm.dbg.value(metadata ptr %5, metadata !262, metadata !DIExpression()), !dbg !823
  %6 = icmp eq ptr %5, null, !dbg !824
  br i1 %6, label %14, label %7, !dbg !825

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !826, !tbaa !827
  %9 = icmp eq i8 %8, 0, !dbg !826
  br i1 %9, label %14, label %10, !dbg !828

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !829, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !835, metadata !DIExpression()), !dbg !836
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.26) #38, !dbg !838
  %12 = icmp eq i32 %11, 0, !dbg !839
  %13 = zext i1 %12 to i32, !dbg !828
  br label %14, !dbg !828

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !840, !tbaa !818
  br label %16, !dbg !841

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !842
  %18 = icmp eq i32 %17, 0, !dbg !842
  br i1 %18, label %22, label %19, !dbg !844

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !845, !tbaa !781
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !845
  br label %122, !dbg !847

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !265, metadata !DIExpression()), !dbg !816
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.27) #38, !dbg !848
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !849
  call void @llvm.dbg.value(metadata ptr %24, metadata !267, metadata !DIExpression()), !dbg !816
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !850
  call void @llvm.dbg.value(metadata ptr %25, metadata !268, metadata !DIExpression()), !dbg !816
  %26 = icmp eq ptr %25, null, !dbg !851
  br i1 %26, label %54, label %27, !dbg !852

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !853
  br i1 %28, label %54, label %29, !dbg !854

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !269, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 0, metadata !273, metadata !DIExpression()), !dbg !855
  %30 = icmp ult ptr %24, %25, !dbg !856
  br i1 %30, label %31, label %52, !dbg !857

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !816
  %33 = load ptr, ptr %32, align 8, !tbaa !781
  br label %34, !dbg !857

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !269, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 %36, metadata !273, metadata !DIExpression()), !dbg !855
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !858
  call void @llvm.dbg.value(metadata ptr %37, metadata !269, metadata !DIExpression()), !dbg !855
  %38 = load i8, ptr %35, align 1, !dbg !858, !tbaa !827
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !858
  %41 = load i16, ptr %40, align 2, !dbg !858, !tbaa !859
  %42 = freeze i16 %41, !dbg !861
  %43 = lshr i16 %42, 13, !dbg !861
  %44 = and i16 %43, 1, !dbg !861
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !862
  call void @llvm.dbg.value(metadata i64 %46, metadata !273, metadata !DIExpression()), !dbg !855
  %47 = icmp ult ptr %37, %25, !dbg !856
  %48 = icmp ult i64 %46, 2, !dbg !863
  %49 = select i1 %47, i1 %48, i1 false, !dbg !863
  br i1 %49, label %34, label %50, !dbg !857, !llvm.loop !864

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !866
  br i1 %51, label %52, label %54, !dbg !868

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !868

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !816
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !265, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata ptr %55, metadata !268, metadata !DIExpression()), !dbg !816
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.28) #38, !dbg !869
  call void @llvm.dbg.value(metadata i64 %57, metadata !274, metadata !DIExpression()), !dbg !816
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !870
  call void @llvm.dbg.value(metadata ptr %58, metadata !275, metadata !DIExpression()), !dbg !816
  br label %59, !dbg !871

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !816
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !265, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata ptr %60, metadata !275, metadata !DIExpression()), !dbg !816
  %62 = load i8, ptr %60, align 1, !dbg !872, !tbaa !827
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !873

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !874
  %65 = load i8, ptr %64, align 1, !dbg !877, !tbaa !827
  %66 = icmp ne i8 %65, 45, !dbg !878
  %67 = select i1 %66, i1 %61, i1 false, !dbg !879
  br label %68, !dbg !879

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !265, metadata !DIExpression()), !dbg !816
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !880
  %71 = load ptr, ptr %70, align 8, !dbg !880, !tbaa !781
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !880
  %74 = load i16, ptr %73, align 2, !dbg !880, !tbaa !859
  %75 = and i16 %74, 8192, !dbg !880
  %76 = icmp eq i16 %75, 0, !dbg !880
  br i1 %76, label %90, label %77, !dbg !882

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !883
  br i1 %78, label %92, label %79, !dbg !886

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !887
  %81 = load i8, ptr %80, align 1, !dbg !887, !tbaa !827
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !887
  %84 = load i16, ptr %83, align 2, !dbg !887, !tbaa !859
  %85 = and i16 %84, 8192, !dbg !887
  %86 = icmp eq i16 %85, 0, !dbg !887
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !888
  br i1 %89, label %90, label %92, !dbg !888

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !889
  call void @llvm.dbg.value(metadata ptr %91, metadata !275, metadata !DIExpression()), !dbg !816
  br label %59, !dbg !871, !llvm.loop !890

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !892
  %94 = load ptr, ptr @stdout, align 8, !dbg !892, !tbaa !781
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !829, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !332, metadata !DIExpression()), !dbg !816
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.20, i64 noundef 6) #38, !dbg !913
  %97 = icmp eq i32 %96, 0, !dbg !913
  br i1 %97, label %101, label %98, !dbg !915

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.21, i64 noundef 9) #38, !dbg !916
  %100 = icmp eq i32 %99, 0, !dbg !916
  br i1 %100, label %101, label %104, !dbg !917

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !918
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %102, ptr noundef %55) #37, !dbg !918
  br label %107, !dbg !920

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !921
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, i32 noundef %105, ptr noundef %55) #37, !dbg !921
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !781
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %108), !dbg !923
  %110 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !781
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %110), !dbg !924
  %112 = ptrtoint ptr %60 to i64, !dbg !925
  %113 = sub i64 %112, %93, !dbg !925
  %114 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !781
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !925
  %116 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !781
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %116), !dbg !926
  %118 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !781
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %118), !dbg !927
  %120 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !781
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !928
  br label %122, !dbg !929

122:                                              ; preds = %107, %19
  ret void, !dbg !929
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #6 !dbg !930 {
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !934, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !942, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr poison, metadata !942, metadata !DIExpression()), !dbg !947
  tail call void @emit_bug_reporting_address() #37, !dbg !948
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !949
  call void @llvm.dbg.value(metadata ptr %1, metadata !945, metadata !DIExpression()), !dbg !947
  %2 = icmp eq ptr %1, null, !dbg !950
  br i1 %2, label %10, label %3, !dbg !952

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #38, !dbg !953
  %5 = icmp eq i32 %4, 0, !dbg !953
  br i1 %5, label %10, label %6, !dbg !954

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !955
  %8 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !781
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !955
  br label %10, !dbg !957

10:                                               ; preds = %6, %3, %0
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !942, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.4, metadata !946, metadata !DIExpression()), !dbg !947
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !958
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4) #37, !dbg !958
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #37, !dbg !959
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57) #37, !dbg !959
  ret void, !dbg !960
}

; Function Attrs: noreturn nounwind
declare !dbg !961 void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !963 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !967 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !971 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !974 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !977 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !980 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !983 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !989 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !990 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %1, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 1, metadata !1003, metadata !DIExpression()), !dbg !1024
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !1025
  %4 = icmp ne ptr %3, null, !dbg !1026
  call void @llvm.dbg.value(metadata i1 %4, metadata !1004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1024
  br i1 %4, label %5, label %12, !dbg !1027

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !1028
  br i1 %6, label %7, label %12, !dbg !1029

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1030
  %9 = load ptr, ptr %8, align 8, !dbg !1030, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %9, metadata !829, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !835, metadata !DIExpression()), !dbg !1031
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.16) #38, !dbg !1033
  %11 = icmp eq i32 %10, 0, !dbg !1034
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i1 %13, metadata !1005, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1024
  call void @llvm.dbg.value(metadata i8 0, metadata !1006, metadata !DIExpression()), !dbg !1024
  %14 = load ptr, ptr %1, align 8, !dbg !1035, !tbaa !781
  tail call void @set_program_name(ptr noundef %14) #37, !dbg !1036
  %15 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #37, !dbg !1037
  %16 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #37, !dbg !1038
  %17 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #37, !dbg !1039
  %18 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1040
  %19 = icmp eq i32 %0, 2
  %20 = and i1 %19, %13, !dbg !1041
  br i1 %20, label %21, label %35, !dbg !1041

21:                                               ; preds = %12
  %22 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1043
  %23 = load ptr, ptr %22, align 8, !dbg !1043, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %23, metadata !829, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !835, metadata !DIExpression()), !dbg !1046
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(7) @.str.20) #38, !dbg !1048
  %25 = icmp eq i32 %24, 0, !dbg !1049
  br i1 %25, label %26, label %27, !dbg !1050

26:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #40, !dbg !1051
  unreachable, !dbg !1051

27:                                               ; preds = %21
  call void @llvm.dbg.value(metadata ptr %23, metadata !829, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !835, metadata !DIExpression()), !dbg !1052
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(10) @.str.21) #38, !dbg !1055
  %29 = icmp eq i32 %28, 0, !dbg !1056
  br i1 %29, label %30, label %35, !dbg !1057

30:                                               ; preds = %27
  %31 = load ptr, ptr @stdout, align 8, !dbg !1058, !tbaa !781
  %32 = load ptr, ptr @Version, align 8, !dbg !1060, !tbaa !781
  %33 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.23) #37, !dbg !1061
  %34 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #37, !dbg !1061
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef null) #37, !dbg !1062
  br label %258, !dbg !1063

35:                                               ; preds = %27, %12
  %36 = add nsw i32 %0, -1, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %36, metadata !1001, metadata !DIExpression()), !dbg !1024
  %37 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %37, metadata !1002, metadata !DIExpression()), !dbg !1024
  %38 = icmp sgt i32 %0, 1
  %39 = and i1 %38, %13, !dbg !1066
  br i1 %39, label %45, label %84, !dbg !1066

40:                                               ; preds = %76, %62
  %41 = phi <2 x i8> [ %48, %62 ], [ %77, %76 ], !dbg !1067
  %42 = add nsw i32 %47, -1, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %42, metadata !1001, metadata !DIExpression()), !dbg !1024
  %43 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !1069
  call void @llvm.dbg.value(metadata i8 undef, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 undef, metadata !1003, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %43, metadata !1002, metadata !DIExpression()), !dbg !1024
  %44 = icmp sgt i32 %47, 1, !dbg !1070
  br i1 %44, label %45, label %91, !dbg !1071

45:                                               ; preds = %35, %40
  %46 = phi ptr [ %43, %40 ], [ %37, %35 ], !dbg !1065
  %47 = phi i32 [ %42, %40 ], [ %36, %35 ], !dbg !1064
  %48 = phi <2 x i8> [ %41, %40 ], [ <i8 1, i8 0>, %35 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 undef, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %47, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 undef, metadata !1003, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %46, metadata !1002, metadata !DIExpression()), !dbg !1024
  %49 = load ptr, ptr %46, align 8, !dbg !1072, !tbaa !781
  %50 = load i8, ptr %49, align 1, !dbg !1073, !tbaa !827
  %51 = icmp eq i8 %50, 45, !dbg !1074
  br i1 %51, label %52, label %82, !dbg !1075

52:                                               ; preds = %45
  %53 = getelementptr inbounds i8, ptr %49, i64 1, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %53, metadata !1007, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 0, metadata !1010, metadata !DIExpression()), !dbg !1077
  br label %54, !dbg !1078

54:                                               ; preds = %58, %52
  %55 = phi i64 [ 0, %52 ], [ %59, %58 ], !dbg !1080
  call void @llvm.dbg.value(metadata i64 %55, metadata !1010, metadata !DIExpression()), !dbg !1077
  %56 = getelementptr inbounds i8, ptr %53, i64 %55, !dbg !1081
  %57 = load i8, ptr %56, align 1, !dbg !1081, !tbaa !827
  switch i8 %57, label %80 [
    i8 0, label %60
    i8 101, label %58
    i8 69, label %58
    i8 110, label %58
  ], !dbg !1083

58:                                               ; preds = %54, %54, %54
  %59 = add i64 %55, 1, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %59, metadata !1010, metadata !DIExpression()), !dbg !1077
  br label %54, !dbg !1085, !llvm.loop !1086

60:                                               ; preds = %54
  %61 = icmp eq i64 %55, 0, !dbg !1088
  br i1 %61, label %80, label %62, !dbg !1090

62:                                               ; preds = %60
  call void @llvm.dbg.value(metadata ptr %53, metadata !1007, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 undef, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 undef, metadata !1003, metadata !DIExpression()), !dbg !1024
  %63 = load i8, ptr %53, align 1, !dbg !1091, !tbaa !827
  %64 = icmp eq i8 %63, 0, !dbg !1092
  br i1 %64, label %40, label %65, !dbg !1092

65:                                               ; preds = %62, %76
  %66 = phi i8 [ %78, %76 ], [ %63, %62 ]
  %67 = phi ptr [ %69, %76 ], [ %53, %62 ]
  %68 = phi <2 x i8> [ %77, %76 ], [ %48, %62 ]
  call void @llvm.dbg.value(metadata ptr %67, metadata !1007, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 undef, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 undef, metadata !1003, metadata !DIExpression()), !dbg !1024
  %69 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !1093
  call void @llvm.dbg.value(metadata ptr %69, metadata !1007, metadata !DIExpression()), !dbg !1077
  switch i8 %66, label %76 [
    i8 101, label %70
    i8 69, label %72
    i8 110, label %74
  ], !dbg !1094

70:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8 1, metadata !1006, metadata !DIExpression()), !dbg !1024
  %71 = insertelement <2 x i8> %68, i8 1, i64 1, !dbg !1024
  br label %76, !dbg !1095

72:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8 0, metadata !1006, metadata !DIExpression()), !dbg !1024
  %73 = insertelement <2 x i8> %68, i8 0, i64 1, !dbg !1024
  br label %76, !dbg !1097

74:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8 0, metadata !1003, metadata !DIExpression()), !dbg !1024
  %75 = insertelement <2 x i8> %68, i8 0, i64 0, !dbg !1024
  br label %76, !dbg !1098

76:                                               ; preds = %65, %74, %72, %70
  %77 = phi <2 x i8> [ %68, %65 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], !dbg !1024
  call void @llvm.dbg.value(metadata ptr %69, metadata !1007, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8 undef, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 undef, metadata !1003, metadata !DIExpression()), !dbg !1024
  %78 = load i8, ptr %69, align 1, !dbg !1091, !tbaa !827
  %79 = icmp eq i8 %78, 0, !dbg !1092
  br i1 %79, label %40, label %65, !dbg !1092, !llvm.loop !1099

80:                                               ; preds = %60, %54
  call void @llvm.dbg.value(metadata i8 undef, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %47, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 undef, metadata !1003, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %46, metadata !1002, metadata !DIExpression()), !dbg !1024
  %81 = trunc <2 x i8> %48 to <2 x i1>
  br label %84

82:                                               ; preds = %45
  %83 = trunc <2 x i8> %48 to <2 x i1>, !dbg !1075
  br label %84, !dbg !1101

84:                                               ; preds = %82, %80, %35
  %85 = phi ptr [ %37, %35 ], [ %46, %80 ], [ %46, %82 ], !dbg !1065
  %86 = phi i32 [ %36, %35 ], [ %47, %80 ], [ %47, %82 ], !dbg !1064
  %87 = phi <2 x i1> [ <i1 true, i1 false>, %35 ], [ %81, %80 ], [ %83, %82 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %86, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %85, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.label(metadata !1022), !dbg !1102
  %88 = extractelement <2 x i1> %87, i64 1, !dbg !1101
  %89 = or i1 %4, %88, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %86, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %86, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %85, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %85, metadata !1002, metadata !DIExpression()), !dbg !1024
  %90 = icmp sgt i32 %86, 0, !dbg !1103
  br i1 %89, label %101, label %95, !dbg !1101

91:                                               ; preds = %40
  %92 = extractelement <2 x i8> %41, i64 0
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  call void @llvm.dbg.value(metadata i8 poison, metadata !1006, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1003, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i32 %0), metadata !1002, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus_uconst, 16, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1024
  call void @llvm.dbg.label(metadata !1022), !dbg !1102
  call void @llvm.dbg.value(metadata i32 %86, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %86, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %85, metadata !1002, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %85, metadata !1002, metadata !DIExpression()), !dbg !1024
  br i1 %94, label %258, label %247, !dbg !1104

95:                                               ; preds = %84
  br i1 %90, label %96, label %245, !dbg !1105

96:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i32 %86, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %85, metadata !1002, metadata !DIExpression()), !dbg !1024
  %97 = load ptr, ptr %85, align 8, !dbg !1107, !tbaa !781
  %98 = load ptr, ptr @stdout, align 8, !dbg !1107, !tbaa !781
  %99 = tail call i32 @fputs_unlocked(ptr noundef %97, ptr noundef %98), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %86, metadata !1001, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %85, metadata !1002, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1024
  %100 = icmp eq i32 %86, 1, !dbg !1109
  br i1 %100, label %245, label %225, !dbg !1111

101:                                              ; preds = %84
  br i1 %90, label %102, label %245, !dbg !1112

102:                                              ; preds = %101, %224
  %103 = phi i32 [ %210, %224 ], [ %86, %101 ]
  %104 = phi ptr [ %211, %224 ], [ %85, %101 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %104, metadata !1002, metadata !DIExpression()), !dbg !1024
  %105 = load ptr, ptr %104, align 8, !dbg !1113, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %105, metadata !1011, metadata !DIExpression()), !dbg !1114
  br label %106, !dbg !1115

106:                                              ; preds = %206, %102
  %107 = phi ptr [ %105, %102 ], [ %195, %206 ], !dbg !1114
  call void @llvm.dbg.value(metadata ptr %107, metadata !1011, metadata !DIExpression()), !dbg !1114
  %108 = getelementptr inbounds i8, ptr %107, i64 1, !dbg !1116
  call void @llvm.dbg.value(metadata ptr %108, metadata !1011, metadata !DIExpression()), !dbg !1114
  %109 = load i8, ptr %107, align 1, !dbg !1117, !tbaa !827
  call void @llvm.dbg.value(metadata i8 %109, metadata !1015, metadata !DIExpression()), !dbg !1114
  switch i8 %109, label %194 [
    i8 0, label %209
    i8 92, label %110
  ], !dbg !1115

110:                                              ; preds = %106
  %111 = load i8, ptr %108, align 1, !dbg !1118, !tbaa !827
  %112 = icmp eq i8 %111, 0, !dbg !1118
  br i1 %112, label %194, label %113, !dbg !1119

113:                                              ; preds = %110
  %114 = getelementptr inbounds i8, ptr %107, i64 2, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %114, metadata !1011, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %111, metadata !1015, metadata !DIExpression()), !dbg !1114
  switch i8 %111, label %183 [
    i8 97, label %115
    i8 98, label %116
    i8 99, label %258
    i8 101, label %117
    i8 102, label %118
    i8 110, label %119
    i8 114, label %120
    i8 116, label %121
    i8 118, label %122
    i8 120, label %123
    i8 48, label %156
    i8 49, label %162
    i8 50, label %162
    i8 51, label %162
    i8 52, label %162
    i8 53, label %162
    i8 54, label %162
    i8 55, label %162
    i8 92, label %194
  ], !dbg !1121

115:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 7, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1122

116:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 8, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1123

117:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 27, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1124

118:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 12, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1125

119:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 10, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1126

120:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 13, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1127

121:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 9, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1128

122:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 11, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1129

123:                                              ; preds = %113
  %124 = load i8, ptr %114, align 1, !dbg !1130, !tbaa !827
  call void @llvm.dbg.value(metadata i8 %124, metadata !1016, metadata !DIExpression()), !dbg !1131
  %125 = zext i8 %124 to i32, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %125, metadata !1134, metadata !DIExpression()), !dbg !1140
  switch i8 %124, label %183 [
    i8 48, label %126
    i8 49, label %126
    i8 50, label %126
    i8 51, label %126
    i8 52, label %126
    i8 53, label %126
    i8 54, label %126
    i8 55, label %126
    i8 56, label %126
    i8 57, label %126
    i8 97, label %126
    i8 98, label %126
    i8 99, label %126
    i8 100, label %126
    i8 101, label %126
    i8 102, label %126
    i8 65, label %126
    i8 66, label %126
    i8 67, label %126
    i8 68, label %126
    i8 69, label %126
    i8 70, label %126
  ], !dbg !1142

126:                                              ; preds = %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123
  %127 = getelementptr inbounds i8, ptr %107, i64 3, !dbg !1143
  call void @llvm.dbg.value(metadata ptr %127, metadata !1011, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %124, metadata !1144, metadata !DIExpression()), !dbg !1149
  switch i8 %124, label %128 [
    i8 97, label %135
    i8 65, label %135
    i8 98, label %130
    i8 66, label %130
    i8 99, label %131
    i8 67, label %131
    i8 100, label %132
    i8 68, label %132
    i8 101, label %133
    i8 69, label %133
    i8 102, label %134
    i8 70, label %134
  ], !dbg !1151

128:                                              ; preds = %126
  %129 = add nsw i32 %125, -48, !dbg !1152
  br label %135, !dbg !1154

130:                                              ; preds = %126, %126
  br label %135, !dbg !1155

131:                                              ; preds = %126, %126
  br label %135, !dbg !1156

132:                                              ; preds = %126, %126
  br label %135, !dbg !1157

133:                                              ; preds = %126, %126
  br label %135, !dbg !1158

134:                                              ; preds = %126, %126
  br label %135, !dbg !1159

135:                                              ; preds = %126, %126, %128, %130, %131, %132, %133, %134
  %136 = phi i32 [ %129, %128 ], [ 15, %134 ], [ 14, %133 ], [ 13, %132 ], [ 12, %131 ], [ 11, %130 ], [ 10, %126 ], [ 10, %126 ], !dbg !1160
  call void @llvm.dbg.value(metadata i32 %136, metadata !1015, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1114
  %137 = load i8, ptr %127, align 1, !dbg !1161, !tbaa !827
  call void @llvm.dbg.value(metadata i8 %137, metadata !1016, metadata !DIExpression()), !dbg !1131
  %138 = zext i8 %137 to i32, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %138, metadata !1134, metadata !DIExpression()), !dbg !1164
  switch i8 %137, label %152 [
    i8 48, label %139
    i8 49, label %139
    i8 50, label %139
    i8 51, label %139
    i8 52, label %139
    i8 53, label %139
    i8 54, label %139
    i8 55, label %139
    i8 56, label %139
    i8 57, label %139
    i8 97, label %139
    i8 98, label %139
    i8 99, label %139
    i8 100, label %139
    i8 101, label %139
    i8 102, label %139
    i8 65, label %139
    i8 66, label %139
    i8 67, label %139
    i8 68, label %139
    i8 69, label %139
    i8 70, label %139
  ], !dbg !1166

139:                                              ; preds = %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135
  %140 = getelementptr inbounds i8, ptr %107, i64 4, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %140, metadata !1011, metadata !DIExpression()), !dbg !1114
  %141 = shl nuw nsw i32 %136, 4, !dbg !1169
  call void @llvm.dbg.value(metadata i8 %137, metadata !1144, metadata !DIExpression()), !dbg !1170
  switch i8 %137, label %142 [
    i8 97, label %149
    i8 65, label %149
    i8 98, label %144
    i8 66, label %144
    i8 99, label %145
    i8 67, label %145
    i8 100, label %146
    i8 68, label %146
    i8 101, label %147
    i8 69, label %147
    i8 102, label %148
    i8 70, label %148
  ], !dbg !1172

142:                                              ; preds = %139
  %143 = add nsw i32 %138, -48, !dbg !1173
  br label %149, !dbg !1174

144:                                              ; preds = %139, %139
  br label %149, !dbg !1175

145:                                              ; preds = %139, %139
  br label %149, !dbg !1176

146:                                              ; preds = %139, %139
  br label %149, !dbg !1177

147:                                              ; preds = %139, %139
  br label %149, !dbg !1178

148:                                              ; preds = %139, %139
  br label %149, !dbg !1179

149:                                              ; preds = %139, %139, %142, %144, %145, %146, %147, %148
  %150 = phi i32 [ %143, %142 ], [ 15, %148 ], [ 14, %147 ], [ 13, %146 ], [ 12, %145 ], [ 11, %144 ], [ 10, %139 ], [ 10, %139 ], !dbg !1180
  %151 = add nuw nsw i32 %150, %141, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %151, metadata !1015, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1114
  br label %152, !dbg !1182

152:                                              ; preds = %149, %135
  %153 = phi ptr [ %140, %149 ], [ %127, %135 ], !dbg !1131
  %154 = phi i32 [ %151, %149 ], [ %136, %135 ]
  %155 = trunc i32 %154 to i8, !dbg !1131
  call void @llvm.dbg.value(metadata i8 %155, metadata !1015, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %153, metadata !1011, metadata !DIExpression()), !dbg !1114
  br label %194

156:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i8 0, metadata !1015, metadata !DIExpression()), !dbg !1114
  %157 = load i8, ptr %114, align 1, !dbg !1183, !tbaa !827
  %158 = and i8 %157, -8, !dbg !1185
  %159 = icmp eq i8 %158, 48, !dbg !1185
  br i1 %159, label %160, label %194, !dbg !1185

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %107, i64 3, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %161, metadata !1011, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %157, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %162, !dbg !1187

162:                                              ; preds = %113, %113, %113, %113, %113, %113, %113, %160
  %163 = phi ptr [ %114, %113 ], [ %114, %113 ], [ %114, %113 ], [ %114, %113 ], [ %114, %113 ], [ %114, %113 ], [ %114, %113 ], [ %161, %160 ], !dbg !1188
  %164 = phi i8 [ %111, %113 ], [ %111, %113 ], [ %111, %113 ], [ %111, %113 ], [ %111, %113 ], [ %111, %113 ], [ %111, %113 ], [ %157, %160 ], !dbg !1188
  call void @llvm.dbg.value(metadata i8 %164, metadata !1015, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %163, metadata !1011, metadata !DIExpression()), !dbg !1114
  %165 = add nsw i8 %164, -48, !dbg !1189
  call void @llvm.dbg.value(metadata i8 %165, metadata !1015, metadata !DIExpression()), !dbg !1114
  %166 = load i8, ptr %163, align 1, !dbg !1190, !tbaa !827
  %167 = and i8 %166, -8, !dbg !1192
  %168 = icmp eq i8 %167, 48, !dbg !1192
  %169 = shl nuw nsw i8 %165, 3, !dbg !1192
  %170 = add i8 %166, -48, !dbg !1192
  %171 = add i8 %170, %169, !dbg !1192
  %172 = zext i1 %168 to i64, !dbg !1192
  %173 = getelementptr i8, ptr %163, i64 %172, !dbg !1192
  %174 = select i1 %168, i8 %171, i8 %165, !dbg !1192
  call void @llvm.dbg.value(metadata i8 %174, metadata !1015, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %173, metadata !1011, metadata !DIExpression()), !dbg !1114
  %175 = load i8, ptr %173, align 1, !dbg !1193, !tbaa !827
  %176 = and i8 %175, -8, !dbg !1195
  %177 = icmp eq i8 %176, 48, !dbg !1195
  br i1 %177, label %178, label %194, !dbg !1195

178:                                              ; preds = %162
  %179 = shl i8 %174, 3, !dbg !1196
  %180 = getelementptr inbounds i8, ptr %173, i64 1, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %180, metadata !1011, metadata !DIExpression()), !dbg !1114
  %181 = add nsw i8 %175, -48, !dbg !1198
  %182 = add nuw i8 %181, %179, !dbg !1199
  call void @llvm.dbg.value(metadata i8 %182, metadata !1015, metadata !DIExpression()), !dbg !1114
  br label %194, !dbg !1200

183:                                              ; preds = %123, %113
  call void @llvm.dbg.value(metadata i8 %111, metadata !1015, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %114, metadata !1011, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i32 92, metadata !1201, metadata !DIExpression()), !dbg !1207
  %184 = load ptr, ptr @stdout, align 8, !dbg !1209, !tbaa !781
  %185 = getelementptr inbounds %struct._IO_FILE, ptr %184, i64 0, i32 5, !dbg !1209
  %186 = load ptr, ptr %185, align 8, !dbg !1209, !tbaa !1210
  %187 = getelementptr inbounds %struct._IO_FILE, ptr %184, i64 0, i32 6, !dbg !1209
  %188 = load ptr, ptr %187, align 8, !dbg !1209, !tbaa !1213
  %189 = icmp ult ptr %186, %188, !dbg !1209
  br i1 %189, label %192, label %190, !dbg !1209, !prof !1214

190:                                              ; preds = %183
  %191 = tail call i32 @__overflow(ptr noundef nonnull %184, i32 noundef 92) #37, !dbg !1209
  br label %194, !dbg !1209

192:                                              ; preds = %183
  %193 = getelementptr inbounds i8, ptr %186, i64 1, !dbg !1209
  store ptr %193, ptr %185, align 8, !dbg !1209, !tbaa !1210
  store i8 92, ptr %186, align 1, !dbg !1209, !tbaa !827
  br label %194, !dbg !1209

194:                                              ; preds = %192, %190, %152, %106, %115, %116, %117, %118, %119, %120, %121, %122, %113, %156, %178, %162, %110
  %195 = phi ptr [ %114, %113 ], [ %180, %178 ], [ %173, %162 ], [ %114, %156 ], [ %114, %122 ], [ %114, %121 ], [ %114, %120 ], [ %114, %119 ], [ %114, %118 ], [ %114, %117 ], [ %114, %116 ], [ %114, %115 ], [ %108, %110 ], [ %108, %106 ], [ %153, %152 ], [ %114, %190 ], [ %114, %192 ], !dbg !1114
  %196 = phi i8 [ %111, %113 ], [ %182, %178 ], [ %174, %162 ], [ 0, %156 ], [ 11, %122 ], [ 9, %121 ], [ 13, %120 ], [ 10, %119 ], [ 12, %118 ], [ 27, %117 ], [ 8, %116 ], [ 7, %115 ], [ 92, %110 ], [ %109, %106 ], [ %155, %152 ], [ %111, %190 ], [ %111, %192 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %196, metadata !1015, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %195, metadata !1011, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %196, metadata !1201, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1215
  %197 = load ptr, ptr @stdout, align 8, !dbg !1217, !tbaa !781
  %198 = getelementptr inbounds %struct._IO_FILE, ptr %197, i64 0, i32 5, !dbg !1217
  %199 = load ptr, ptr %198, align 8, !dbg !1217, !tbaa !1210
  %200 = getelementptr inbounds %struct._IO_FILE, ptr %197, i64 0, i32 6, !dbg !1217
  %201 = load ptr, ptr %200, align 8, !dbg !1217, !tbaa !1213
  %202 = icmp ult ptr %199, %201, !dbg !1217
  br i1 %202, label %207, label %203, !dbg !1217, !prof !1214

203:                                              ; preds = %194
  %204 = zext i8 %196 to i32, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %204, metadata !1201, metadata !DIExpression()), !dbg !1215
  %205 = tail call i32 @__overflow(ptr noundef nonnull %197, i32 noundef %204) #37, !dbg !1217
  br label %206, !dbg !1217

206:                                              ; preds = %203, %207
  br label %106, !dbg !1114, !llvm.loop !1219

207:                                              ; preds = %194
  %208 = getelementptr inbounds i8, ptr %199, i64 1, !dbg !1217
  store ptr %208, ptr %198, align 8, !dbg !1217, !tbaa !1210
  store i8 %196, ptr %199, align 1, !dbg !1217, !tbaa !827
  br label %206, !dbg !1217

209:                                              ; preds = %106
  %210 = add nsw i32 %103, -1, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %210, metadata !1001, metadata !DIExpression()), !dbg !1024
  %211 = getelementptr inbounds ptr, ptr %104, i64 1, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %211, metadata !1002, metadata !DIExpression()), !dbg !1024
  %212 = icmp sgt i32 %103, 1, !dbg !1223
  br i1 %212, label %213, label %245, !dbg !1225

213:                                              ; preds = %209
  call void @llvm.dbg.value(metadata i32 32, metadata !1201, metadata !DIExpression()), !dbg !1226
  %214 = load ptr, ptr @stdout, align 8, !dbg !1228, !tbaa !781
  %215 = getelementptr inbounds %struct._IO_FILE, ptr %214, i64 0, i32 5, !dbg !1228
  %216 = load ptr, ptr %215, align 8, !dbg !1228, !tbaa !1210
  %217 = getelementptr inbounds %struct._IO_FILE, ptr %214, i64 0, i32 6, !dbg !1228
  %218 = load ptr, ptr %217, align 8, !dbg !1228, !tbaa !1213
  %219 = icmp ult ptr %216, %218, !dbg !1228
  br i1 %219, label %222, label %220, !dbg !1228, !prof !1214

220:                                              ; preds = %213
  %221 = tail call i32 @__overflow(ptr noundef nonnull %214, i32 noundef 32) #37, !dbg !1228
  br label %224, !dbg !1228

222:                                              ; preds = %213
  %223 = getelementptr inbounds i8, ptr %216, i64 1, !dbg !1228
  store ptr %223, ptr %215, align 8, !dbg !1228, !tbaa !1210
  store i8 32, ptr %216, align 1, !dbg !1228, !tbaa !827
  br label %224, !dbg !1228

224:                                              ; preds = %222, %220
  br label %102, !dbg !1024, !llvm.loop !1229

225:                                              ; preds = %96, %240
  %226 = phi ptr [ %229, %240 ], [ %85, %96 ]
  %227 = phi i32 [ %228, %240 ], [ %86, %96 ]
  %228 = add nsw i32 %227, -1, !dbg !1231
  %229 = getelementptr inbounds ptr, ptr %226, i64 1, !dbg !1232
  call void @llvm.dbg.value(metadata i32 32, metadata !1201, metadata !DIExpression()), !dbg !1233
  %230 = load ptr, ptr @stdout, align 8, !dbg !1235, !tbaa !781
  %231 = getelementptr inbounds %struct._IO_FILE, ptr %230, i64 0, i32 5, !dbg !1235
  %232 = load ptr, ptr %231, align 8, !dbg !1235, !tbaa !1210
  %233 = getelementptr inbounds %struct._IO_FILE, ptr %230, i64 0, i32 6, !dbg !1235
  %234 = load ptr, ptr %233, align 8, !dbg !1235, !tbaa !1213
  %235 = icmp ult ptr %232, %234, !dbg !1235
  br i1 %235, label %238, label %236, !dbg !1235, !prof !1214

236:                                              ; preds = %225
  %237 = tail call i32 @__overflow(ptr noundef nonnull %230, i32 noundef 32) #37, !dbg !1235
  br label %240, !dbg !1235

238:                                              ; preds = %225
  %239 = getelementptr inbounds i8, ptr %232, i64 1, !dbg !1235
  store ptr %239, ptr %231, align 8, !dbg !1235, !tbaa !1210
  store i8 32, ptr %232, align 1, !dbg !1235, !tbaa !827
  br label %240, !dbg !1235

240:                                              ; preds = %238, %236
  call void @llvm.dbg.value(metadata i32 %228, metadata !1001, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %229, metadata !1002, metadata !DIExpression()), !dbg !1024
  %241 = load ptr, ptr %229, align 8, !dbg !1107, !tbaa !781
  %242 = load ptr, ptr @stdout, align 8, !dbg !1107, !tbaa !781
  %243 = tail call i32 @fputs_unlocked(ptr noundef %241, ptr noundef %242), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %228, metadata !1001, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %229, metadata !1002, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1024
  %244 = icmp eq i32 %228, 1, !dbg !1109
  br i1 %244, label %245, label %225, !dbg !1111, !llvm.loop !1236

245:                                              ; preds = %240, %209, %96, %95, %101
  %246 = extractelement <2 x i1> %87, i64 0, !dbg !1104
  br i1 %246, label %247, label %258, !dbg !1104

247:                                              ; preds = %91, %245
  call void @llvm.dbg.value(metadata i32 10, metadata !1201, metadata !DIExpression()), !dbg !1238
  %248 = load ptr, ptr @stdout, align 8, !dbg !1241, !tbaa !781
  %249 = getelementptr inbounds %struct._IO_FILE, ptr %248, i64 0, i32 5, !dbg !1241
  %250 = load ptr, ptr %249, align 8, !dbg !1241, !tbaa !1210
  %251 = getelementptr inbounds %struct._IO_FILE, ptr %248, i64 0, i32 6, !dbg !1241
  %252 = load ptr, ptr %251, align 8, !dbg !1241, !tbaa !1213
  %253 = icmp ult ptr %250, %252, !dbg !1241
  br i1 %253, label %256, label %254, !dbg !1241, !prof !1214

254:                                              ; preds = %247
  %255 = tail call i32 @__overflow(ptr noundef nonnull %248, i32 noundef 10) #37, !dbg !1241
  br label %258, !dbg !1241

256:                                              ; preds = %247
  %257 = getelementptr inbounds i8, ptr %250, i64 1, !dbg !1241
  store ptr %257, ptr %249, align 8, !dbg !1241, !tbaa !1210
  store i8 10, ptr %250, align 1, !dbg !1241, !tbaa !827
  br label %258, !dbg !1241

258:                                              ; preds = %113, %91, %256, %254, %245, %30
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1256, metadata !DIExpression()), !dbg !1257
  store ptr %0, ptr @file_name, align 8, !dbg !1258, !tbaa !781
  ret void, !dbg !1259
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1260 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1266, !tbaa !1267
  ret void, !dbg !1269
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1270 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !781
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1276
  %3 = icmp eq i32 %2, 0, !dbg !1277
  br i1 %3, label %22, label %4, !dbg !1278

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1279, !tbaa !1267, !range !1280, !noundef !802
  %6 = icmp eq i8 %5, 0, !dbg !1279
  br i1 %6, label %11, label %7, !dbg !1281

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1282
  %9 = load i32, ptr %8, align 4, !dbg !1282, !tbaa !818
  %10 = icmp eq i32 %9, 32, !dbg !1283
  br i1 %10, label %22, label %11, !dbg !1284

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1.33, i32 noundef 5) #37, !dbg !1285
  call void @llvm.dbg.value(metadata ptr %12, metadata !1272, metadata !DIExpression()), !dbg !1286
  %13 = load ptr, ptr @file_name, align 8, !dbg !1287, !tbaa !781
  %14 = icmp eq ptr %13, null, !dbg !1287
  %15 = tail call ptr @__errno_location() #39, !dbg !1289
  %16 = load i32, ptr %15, align 4, !dbg !1289, !tbaa !818
  br i1 %14, label %19, label %17, !dbg !1290

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.34, ptr noundef %18, ptr noundef %12) #37, !dbg !1291
  br label %20, !dbg !1291

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.35, ptr noundef %12) #37, !dbg !1292
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1293, !tbaa !818
  tail call void @_exit(i32 noundef %21) #36, !dbg !1294
  unreachable, !dbg !1294

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !781
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1297
  %25 = icmp eq i32 %24, 0, !dbg !1298
  br i1 %25, label %28, label %26, !dbg !1299

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1300, !tbaa !818
  tail call void @_exit(i32 noundef %27) #36, !dbg !1301
  unreachable, !dbg !1301

28:                                               ; preds = %22
  ret void, !dbg !1302
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1303 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1308 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1310 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1314, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %1, metadata !1315, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %2, metadata !1316, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1317, metadata !DIExpression()), !dbg !1319
  tail call fastcc void @flush_stdout(), !dbg !1320
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1321, !tbaa !781
  %7 = icmp eq ptr %6, null, !dbg !1321
  br i1 %7, label %9, label %8, !dbg !1323

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1324
  br label %13, !dbg !1324

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1325, !tbaa !781
  %11 = tail call ptr @getprogname() #38, !dbg !1325
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %11) #37, !dbg !1325
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1327, !tbaa.struct !1328
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1327
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1327
  ret void, !dbg !1329
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1330 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1332, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 1, metadata !1334, metadata !DIExpression()), !dbg !1337
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1340
  %2 = icmp slt i32 %1, 0, !dbg !1341
  br i1 %2, label %6, label %3, !dbg !1342

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1343, !tbaa !781
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1343
  br label %6, !dbg !1343

6:                                                ; preds = %3, %0
  ret void, !dbg !1344
}

declare !dbg !1345 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1383 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1385, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %1, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %2, metadata !1387, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1388, metadata !DIExpression()), !dbg !1390
  %7 = load ptr, ptr @stderr, align 8, !dbg !1391, !tbaa !781
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1392, !noalias !1401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %7, metadata !1397, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %2, metadata !1398, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1399, metadata !DIExpression()), !dbg !1407
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1392, !noalias !1401
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1408, !tbaa !818
  %10 = add i32 %9, 1, !dbg !1408
  store i32 %10, ptr @error_message_count, align 4, !dbg !1408, !tbaa !818
  %11 = icmp eq i32 %1, 0, !dbg !1409
  br i1 %11, label %21, label %12, !dbg !1411

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1412, metadata !DIExpression()), !dbg !1420
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !1423
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %13, metadata !1415, metadata !DIExpression()), !dbg !1420
  %14 = icmp eq ptr %13, null, !dbg !1425
  br i1 %14, label %15, label %17, !dbg !1427

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.37, ptr noundef nonnull @.str.5.38, i32 noundef 5) #37, !dbg !1428
  call void @llvm.dbg.value(metadata ptr %16, metadata !1415, metadata !DIExpression()), !dbg !1420
  br label %17, !dbg !1429

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1420
  call void @llvm.dbg.value(metadata ptr %18, metadata !1415, metadata !DIExpression()), !dbg !1420
  %19 = load ptr, ptr @stderr, align 8, !dbg !1430, !tbaa !781
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.39, ptr noundef %18) #37, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1431
  br label %21, !dbg !1432

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1433, !tbaa !781
  call void @llvm.dbg.value(metadata i32 10, metadata !1434, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr %22, metadata !1439, metadata !DIExpression()), !dbg !1440
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1442
  %24 = load ptr, ptr %23, align 8, !dbg !1442, !tbaa !1210
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1442
  %26 = load ptr, ptr %25, align 8, !dbg !1442, !tbaa !1213
  %27 = icmp ult ptr %24, %26, !dbg !1442
  br i1 %27, label %30, label %28, !dbg !1442, !prof !1214

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1442
  br label %32, !dbg !1442

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1442
  store ptr %31, ptr %23, align 8, !dbg !1442, !tbaa !1210
  store i8 10, ptr %24, align 1, !dbg !1442, !tbaa !827
  br label %32, !dbg !1442

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1443, !tbaa !781
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1443
  %35 = icmp eq i32 %0, 0, !dbg !1444
  br i1 %35, label %37, label %36, !dbg !1446

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #36, !dbg !1447
  unreachable, !dbg !1447

37:                                               ; preds = %32
  ret void, !dbg !1448
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1449 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1452 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1455 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #4

declare !dbg !1458 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1462 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1466, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %1, metadata !1467, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata ptr %2, metadata !1468, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1469, metadata !DIExpression()), !dbg !1472
  call void @llvm.va_start(ptr nonnull %4), !dbg !1473
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1474, !tbaa.struct !1328
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1474
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1474
  call void @llvm.va_end(ptr nonnull %4), !dbg !1475
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1476
  ret void, !dbg !1476
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !369 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !386, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %1, metadata !387, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %2, metadata !388, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %3, metadata !389, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %4, metadata !390, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.declare(metadata ptr %5, metadata !391, metadata !DIExpression()), !dbg !1478
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1479, !tbaa !818
  %9 = icmp eq i32 %8, 0, !dbg !1479
  br i1 %9, label %24, label %10, !dbg !1481

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1482, !tbaa !818
  %12 = icmp eq i32 %11, %3, !dbg !1485
  br i1 %12, label %13, label %23, !dbg !1486

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1487, !tbaa !781
  %15 = icmp eq ptr %14, %2, !dbg !1488
  br i1 %15, label %37, label %16, !dbg !1489

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1490
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1491
  br i1 %19, label %20, label %23, !dbg !1491

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1492
  %22 = icmp eq i32 %21, 0, !dbg !1493
  br i1 %22, label %37, label %23, !dbg !1494

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1495, !tbaa !781
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1496, !tbaa !818
  br label %24, !dbg !1497

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1498
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1499, !tbaa !781
  %26 = icmp eq ptr %25, null, !dbg !1499
  br i1 %26, label %28, label %27, !dbg !1501

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1502
  br label %32, !dbg !1502

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1503, !tbaa !781
  %30 = tail call ptr @getprogname() #38, !dbg !1503
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.42, ptr noundef %30) #37, !dbg !1503
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1505, !tbaa !781
  %34 = icmp eq ptr %2, null, !dbg !1505
  %35 = select i1 %34, ptr @.str.3.43, ptr @.str.2.44, !dbg !1505
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1505
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1506, !tbaa.struct !1328
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1506
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1506
  br label %37, !dbg !1507

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1507
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1508 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1512, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i32 %1, metadata !1513, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata ptr %2, metadata !1514, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i32 %3, metadata !1515, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata ptr %4, metadata !1516, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1517, metadata !DIExpression()), !dbg !1520
  call void @llvm.va_start(ptr nonnull %6), !dbg !1521
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1522, !tbaa.struct !1328
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1522
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1522
  call void @llvm.va_end(ptr nonnull %6), !dbg !1523
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1524
  ret void, !dbg !1524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1525 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1528, !tbaa !781
  ret ptr %1, !dbg !1529
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1532, metadata !DIExpression()), !dbg !1535
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1536
  call void @llvm.dbg.value(metadata ptr %2, metadata !1533, metadata !DIExpression()), !dbg !1535
  %3 = icmp eq ptr %2, null, !dbg !1537
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1537
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %5, metadata !1534, metadata !DIExpression()), !dbg !1535
  %6 = ptrtoint ptr %5 to i64, !dbg !1538
  %7 = ptrtoint ptr %0 to i64, !dbg !1538
  %8 = sub i64 %6, %7, !dbg !1538
  %9 = icmp sgt i64 %8, 6, !dbg !1540
  br i1 %9, label %10, label %19, !dbg !1541

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1542
  call void @llvm.dbg.value(metadata ptr %11, metadata !1543, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr @.str.58, metadata !1548, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 7, metadata !1549, metadata !DIExpression()), !dbg !1550
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.58, i64 7), !dbg !1552
  %13 = icmp eq i32 %12, 0, !dbg !1553
  br i1 %13, label %14, label %19, !dbg !1554

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1532, metadata !DIExpression()), !dbg !1535
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.59, i64 noundef 3) #38, !dbg !1555
  %16 = icmp eq i32 %15, 0, !dbg !1558
  %17 = select i1 %16, i64 3, i64 0, !dbg !1559
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1559
  br label %19, !dbg !1559

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1535
  call void @llvm.dbg.value(metadata ptr %21, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata ptr %20, metadata !1532, metadata !DIExpression()), !dbg !1535
  store ptr %20, ptr @program_name, align 8, !dbg !1560, !tbaa !781
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1561, !tbaa !781
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1562, !tbaa !781
  ret void, !dbg !1563
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1564 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !428 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !435, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %1, metadata !436, metadata !DIExpression()), !dbg !1565
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %5, metadata !437, metadata !DIExpression()), !dbg !1565
  %6 = icmp eq ptr %5, %0, !dbg !1567
  br i1 %6, label %7, label %14, !dbg !1569

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1570
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %4, metadata !443, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %4, metadata !1573, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr %4, metadata !1582, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i32 0, metadata !1588, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 8, metadata !1589, metadata !DIExpression()), !dbg !1590
  store i64 0, ptr %4, align 8, !dbg !1592
  call void @llvm.dbg.value(metadata ptr %3, metadata !438, metadata !DIExpression(DW_OP_deref)), !dbg !1565
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1593
  %9 = icmp eq i64 %8, 2, !dbg !1595
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !438, metadata !DIExpression()), !dbg !1565
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1596
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1565
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1597
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1597
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1565
  ret ptr %15, !dbg !1597
}

; Function Attrs: nounwind
declare !dbg !1598 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1604 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1609, metadata !DIExpression()), !dbg !1612
  %2 = tail call ptr @__errno_location() #39, !dbg !1613
  %3 = load i32, ptr %2, align 4, !dbg !1613, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %3, metadata !1610, metadata !DIExpression()), !dbg !1612
  %4 = icmp eq ptr %0, null, !dbg !1614
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1614
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %6, metadata !1611, metadata !DIExpression()), !dbg !1612
  store i32 %3, ptr %2, align 4, !dbg !1616, !tbaa !818
  ret ptr %6, !dbg !1617
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1618 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1624, metadata !DIExpression()), !dbg !1625
  %2 = icmp eq ptr %0, null, !dbg !1626
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1626
  %4 = load i32, ptr %3, align 8, !dbg !1627, !tbaa !1628
  ret i32 %4, !dbg !1630
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1631 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1635, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 %1, metadata !1636, metadata !DIExpression()), !dbg !1637
  %3 = icmp eq ptr %0, null, !dbg !1638
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1638
  store i32 %1, ptr %4, align 8, !dbg !1639, !tbaa !1628
  ret void, !dbg !1640
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1641 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1645, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %1, metadata !1646, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %2, metadata !1647, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 %1, metadata !1648, metadata !DIExpression()), !dbg !1653
  %4 = icmp eq ptr %0, null, !dbg !1654
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1654
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1655
  %7 = lshr i8 %1, 5, !dbg !1656
  %8 = zext i8 %7 to i64, !dbg !1656
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %9, metadata !1649, metadata !DIExpression()), !dbg !1653
  %10 = and i8 %1, 31, !dbg !1658
  %11 = zext i8 %10 to i32, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %11, metadata !1651, metadata !DIExpression()), !dbg !1653
  %12 = load i32, ptr %9, align 4, !dbg !1659, !tbaa !818
  %13 = lshr i32 %12, %11, !dbg !1660
  %14 = and i32 %13, 1, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %14, metadata !1652, metadata !DIExpression()), !dbg !1653
  %15 = xor i32 %13, %2, !dbg !1662
  %16 = and i32 %15, 1, !dbg !1662
  %17 = shl nuw i32 %16, %11, !dbg !1663
  %18 = xor i32 %17, %12, !dbg !1664
  store i32 %18, ptr %9, align 4, !dbg !1664, !tbaa !818
  ret i32 %14, !dbg !1665
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1666 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1670, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 %1, metadata !1671, metadata !DIExpression()), !dbg !1673
  %3 = icmp eq ptr %0, null, !dbg !1674
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1676
  call void @llvm.dbg.value(metadata ptr %4, metadata !1670, metadata !DIExpression()), !dbg !1673
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1677
  %6 = load i32, ptr %5, align 4, !dbg !1677, !tbaa !1678
  call void @llvm.dbg.value(metadata i32 %6, metadata !1672, metadata !DIExpression()), !dbg !1673
  store i32 %1, ptr %5, align 4, !dbg !1679, !tbaa !1678
  ret i32 %6, !dbg !1680
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1681 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1685, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %1, metadata !1686, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %2, metadata !1687, metadata !DIExpression()), !dbg !1688
  %4 = icmp eq ptr %0, null, !dbg !1689
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1691
  call void @llvm.dbg.value(metadata ptr %5, metadata !1685, metadata !DIExpression()), !dbg !1688
  store i32 10, ptr %5, align 8, !dbg !1692, !tbaa !1628
  %6 = icmp ne ptr %1, null, !dbg !1693
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1695
  br i1 %8, label %10, label %9, !dbg !1695

9:                                                ; preds = %3
  tail call void @abort() #36, !dbg !1696
  unreachable, !dbg !1696

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1697
  store ptr %1, ptr %11, align 8, !dbg !1698, !tbaa !1699
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1700
  store ptr %2, ptr %12, align 8, !dbg !1701, !tbaa !1702
  ret void, !dbg !1703
}

; Function Attrs: noreturn nounwind
declare !dbg !1704 void @abort() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1705 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1709, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %1, metadata !1710, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %2, metadata !1711, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %3, metadata !1712, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %4, metadata !1713, metadata !DIExpression()), !dbg !1717
  %6 = icmp eq ptr %4, null, !dbg !1718
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %7, metadata !1714, metadata !DIExpression()), !dbg !1717
  %8 = tail call ptr @__errno_location() #39, !dbg !1719
  %9 = load i32, ptr %8, align 4, !dbg !1719, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %9, metadata !1715, metadata !DIExpression()), !dbg !1717
  %10 = load i32, ptr %7, align 8, !dbg !1720, !tbaa !1628
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1721
  %12 = load i32, ptr %11, align 4, !dbg !1721, !tbaa !1678
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1722
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1723
  %15 = load ptr, ptr %14, align 8, !dbg !1723, !tbaa !1699
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1724
  %17 = load ptr, ptr %16, align 8, !dbg !1724, !tbaa !1702
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %18, metadata !1716, metadata !DIExpression()), !dbg !1717
  store i32 %9, ptr %8, align 4, !dbg !1726, !tbaa !818
  ret i64 %18, !dbg !1727
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1728 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1734, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %1, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %2, metadata !1736, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %3, metadata !1737, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %4, metadata !1738, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %5, metadata !1739, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %6, metadata !1740, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %7, metadata !1741, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %8, metadata !1742, metadata !DIExpression()), !dbg !1796
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1797
  %17 = icmp eq i64 %16, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i1 %17, metadata !1743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr null, metadata !1746, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1747, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %5, metadata !1749, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, metadata !1751, metadata !DIExpression()), !dbg !1796
  %18 = and i32 %5, 2, !dbg !1799
  %19 = icmp ne i32 %18, 0, !dbg !1799
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1799

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1800
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1801
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1802
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1751, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1749, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %34, metadata !1747, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %33, metadata !1746, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %32, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %31, metadata !1737, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %30, metadata !1742, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %29, metadata !1741, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %28, metadata !1738, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.label(metadata !1789), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1752, metadata !DIExpression()), !dbg !1796
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
  ], !dbg !1804

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1749, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 5, metadata !1738, metadata !DIExpression()), !dbg !1796
  br label %102, !dbg !1805

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1749, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 5, metadata !1738, metadata !DIExpression()), !dbg !1796
  br i1 %36, label %102, label %42, !dbg !1805

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1806
  br i1 %43, label %102, label %44, !dbg !1810

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1806, !tbaa !827
  br label %102, !dbg !1806

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.72, metadata !541, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i32 %28, metadata !542, metadata !DIExpression()), !dbg !1811
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.11.72, i32 noundef 5) #37, !dbg !1815
  call void @llvm.dbg.value(metadata ptr %46, metadata !543, metadata !DIExpression()), !dbg !1811
  %47 = icmp eq ptr %46, @.str.11.72, !dbg !1816
  br i1 %47, label %48, label %57, !dbg !1818

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1819
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1820
  call void @llvm.dbg.declare(metadata ptr %13, metadata !545, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %13, metadata !1822, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata ptr %13, metadata !1830, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i64 8, metadata !1834, metadata !DIExpression()), !dbg !1835
  store i64 0, ptr %13, align 8, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %12, metadata !544, metadata !DIExpression(DW_OP_deref)), !dbg !1811
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1838
  %50 = icmp eq i64 %49, 3, !dbg !1840
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !544, metadata !DIExpression()), !dbg !1811
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1841
  %54 = icmp eq i32 %28, 9, !dbg !1841
  %55 = select i1 %54, ptr @.str.10.74, ptr @.str.12.75, !dbg !1841
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1841
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1842
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1842
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1811
  call void @llvm.dbg.value(metadata ptr %58, metadata !1741, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr @.str.12.75, metadata !541, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %28, metadata !542, metadata !DIExpression()), !dbg !1843
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.73, ptr noundef nonnull @.str.12.75, i32 noundef 5) #37, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %59, metadata !543, metadata !DIExpression()), !dbg !1843
  %60 = icmp eq ptr %59, @.str.12.75, !dbg !1846
  br i1 %60, label %61, label %70, !dbg !1847

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1848
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1849
  call void @llvm.dbg.declare(metadata ptr %11, metadata !545, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata ptr %11, metadata !1822, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr %11, metadata !1830, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 8, metadata !1834, metadata !DIExpression()), !dbg !1853
  store i64 0, ptr %11, align 8, !dbg !1855
  call void @llvm.dbg.value(metadata ptr %10, metadata !544, metadata !DIExpression(DW_OP_deref)), !dbg !1843
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1856
  %63 = icmp eq i64 %62, 3, !dbg !1857
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !544, metadata !DIExpression()), !dbg !1843
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1858
  %67 = icmp eq i32 %28, 9, !dbg !1858
  %68 = select i1 %67, ptr @.str.10.74, ptr @.str.12.75, !dbg !1858
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1858
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1859
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1742, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %71, metadata !1741, metadata !DIExpression()), !dbg !1796
  br i1 %36, label %88, label %73, !dbg !1860

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1753, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 0, metadata !1744, metadata !DIExpression()), !dbg !1796
  %74 = load i8, ptr %71, align 1, !dbg !1862, !tbaa !827
  %75 = icmp eq i8 %74, 0, !dbg !1864
  br i1 %75, label %88, label %76, !dbg !1864

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1753, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %79, metadata !1744, metadata !DIExpression()), !dbg !1796
  %80 = icmp ult i64 %79, %39, !dbg !1865
  br i1 %80, label %81, label %83, !dbg !1868

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1865
  store i8 %77, ptr %82, align 1, !dbg !1865, !tbaa !827
  br label %83, !dbg !1865

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %84, metadata !1744, metadata !DIExpression()), !dbg !1796
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %85, metadata !1753, metadata !DIExpression()), !dbg !1861
  %86 = load i8, ptr %85, align 1, !dbg !1862, !tbaa !827
  %87 = icmp eq i8 %86, 0, !dbg !1864
  br i1 %87, label %88, label %76, !dbg !1864, !llvm.loop !1870

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1872
  call void @llvm.dbg.value(metadata i64 %89, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, metadata !1748, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %72, metadata !1746, metadata !DIExpression()), !dbg !1796
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %90, metadata !1747, metadata !DIExpression()), !dbg !1796
  br label %102, !dbg !1874

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1748, metadata !DIExpression()), !dbg !1796
  br label %93, !dbg !1875

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1749, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1796
  br i1 %36, label %102, label %96, !dbg !1876

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1749, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 2, metadata !1738, metadata !DIExpression()), !dbg !1796
  br label %102, !dbg !1877

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1749, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 2, metadata !1738, metadata !DIExpression()), !dbg !1796
  br i1 %36, label %102, label %96, !dbg !1877

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1878
  br i1 %98, label %102, label %99, !dbg !1882

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1878, !tbaa !827
  br label %102, !dbg !1878

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1796
  br label %102, !dbg !1883

101:                                              ; preds = %27
  call void @abort() #36, !dbg !1884
  unreachable, !dbg !1884

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1872
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.74, %42 ], [ @.str.10.74, %44 ], [ @.str.10.74, %41 ], [ %33, %27 ], [ @.str.12.75, %96 ], [ @.str.12.75, %99 ], [ @.str.12.75, %95 ], [ @.str.10.74, %40 ], [ @.str.12.75, %93 ], [ @.str.12.75, %92 ], !dbg !1796
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1796
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1749, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %108, metadata !1747, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %107, metadata !1746, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %106, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %105, metadata !1742, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %104, metadata !1741, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %103, metadata !1738, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()), !dbg !1885
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
  br label %122, !dbg !1886

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1872
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1800
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1887
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %129, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1751, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %125, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %124, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %123, metadata !1737, metadata !DIExpression()), !dbg !1796
  %131 = icmp eq i64 %123, -1, !dbg !1888
  br i1 %131, label %132, label %136, !dbg !1889

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1890
  %134 = load i8, ptr %133, align 1, !dbg !1890, !tbaa !827
  %135 = icmp eq i8 %134, 0, !dbg !1891
  br i1 %135, label %579, label %138, !dbg !1892

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1893
  br i1 %137, label %579, label %138, !dbg !1892

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1894
  br i1 %114, label %139, label %152, !dbg !1895

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1897
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1898
  br i1 %141, label %142, label %144, !dbg !1898

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %143, metadata !1737, metadata !DIExpression()), !dbg !1796
  br label %144, !dbg !1900

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1900
  call void @llvm.dbg.value(metadata i64 %145, metadata !1737, metadata !DIExpression()), !dbg !1796
  %146 = icmp ugt i64 %140, %145, !dbg !1901
  br i1 %146, label %152, label %147, !dbg !1902

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1903
  call void @llvm.dbg.value(metadata ptr %148, metadata !1904, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata ptr %107, metadata !1907, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %108, metadata !1908, metadata !DIExpression()), !dbg !1909
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1911
  %150 = icmp eq i32 %149, 0, !dbg !1912
  %151 = and i1 %150, %110, !dbg !1913
  br i1 %151, label %630, label %152, !dbg !1913

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %153, metadata !1737, metadata !DIExpression()), !dbg !1796
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1914
  %156 = load i8, ptr %155, align 1, !dbg !1914, !tbaa !827
  call void @llvm.dbg.value(metadata i8 %156, metadata !1765, metadata !DIExpression()), !dbg !1894
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
  ], !dbg !1915

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1916

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1917

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1894
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1921
  br i1 %160, label %177, label %161, !dbg !1921

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1923
  br i1 %162, label %163, label %165, !dbg !1927

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1923
  store i8 39, ptr %164, align 1, !dbg !1923, !tbaa !827
  br label %165, !dbg !1923

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %166, metadata !1744, metadata !DIExpression()), !dbg !1796
  %167 = icmp ult i64 %166, %130, !dbg !1928
  br i1 %167, label %168, label %170, !dbg !1931

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1928
  store i8 36, ptr %169, align 1, !dbg !1928, !tbaa !827
  br label %170, !dbg !1928

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %171, metadata !1744, metadata !DIExpression()), !dbg !1796
  %172 = icmp ult i64 %171, %130, !dbg !1932
  br i1 %172, label %173, label %175, !dbg !1935

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1932
  store i8 39, ptr %174, align 1, !dbg !1932, !tbaa !827
  br label %175, !dbg !1932

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %176, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, metadata !1752, metadata !DIExpression()), !dbg !1796
  br label %177, !dbg !1936

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1796
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %178, metadata !1744, metadata !DIExpression()), !dbg !1796
  %180 = icmp ult i64 %178, %130, !dbg !1937
  br i1 %180, label %181, label %183, !dbg !1940

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1937
  store i8 92, ptr %182, align 1, !dbg !1937, !tbaa !827
  br label %183, !dbg !1937

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %184, metadata !1744, metadata !DIExpression()), !dbg !1796
  br i1 %111, label %185, label %482, !dbg !1941

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1943
  %187 = icmp ult i64 %186, %153, !dbg !1944
  br i1 %187, label %188, label %439, !dbg !1945

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1946
  %190 = load i8, ptr %189, align 1, !dbg !1946, !tbaa !827
  %191 = add i8 %190, -48, !dbg !1947
  %192 = icmp ult i8 %191, 10, !dbg !1947
  br i1 %192, label %193, label %439, !dbg !1947

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1948
  br i1 %194, label %195, label %197, !dbg !1952

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1948
  store i8 48, ptr %196, align 1, !dbg !1948, !tbaa !827
  br label %197, !dbg !1948

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %198, metadata !1744, metadata !DIExpression()), !dbg !1796
  %199 = icmp ult i64 %198, %130, !dbg !1953
  br i1 %199, label %200, label %202, !dbg !1956

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1953
  store i8 48, ptr %201, align 1, !dbg !1953, !tbaa !827
  br label %202, !dbg !1953

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %203, metadata !1744, metadata !DIExpression()), !dbg !1796
  br label %439, !dbg !1957

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1958

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1959

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1960

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1962

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1964
  %210 = icmp ult i64 %209, %153, !dbg !1965
  br i1 %210, label %211, label %439, !dbg !1966

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1967
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1968
  %214 = load i8, ptr %213, align 1, !dbg !1968, !tbaa !827
  %215 = icmp eq i8 %214, 63, !dbg !1969
  br i1 %215, label %216, label %439, !dbg !1970

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1971
  %218 = load i8, ptr %217, align 1, !dbg !1971, !tbaa !827
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
  ], !dbg !1972

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1973

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %209, metadata !1758, metadata !DIExpression()), !dbg !1885
  %221 = icmp ult i64 %124, %130, !dbg !1975
  br i1 %221, label %222, label %224, !dbg !1978

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1975
  store i8 63, ptr %223, align 1, !dbg !1975, !tbaa !827
  br label %224, !dbg !1975

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %225, metadata !1744, metadata !DIExpression()), !dbg !1796
  %226 = icmp ult i64 %225, %130, !dbg !1979
  br i1 %226, label %227, label %229, !dbg !1982

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1979
  store i8 34, ptr %228, align 1, !dbg !1979, !tbaa !827
  br label %229, !dbg !1979

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %230, metadata !1744, metadata !DIExpression()), !dbg !1796
  %231 = icmp ult i64 %230, %130, !dbg !1983
  br i1 %231, label %232, label %234, !dbg !1986

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1983
  store i8 34, ptr %233, align 1, !dbg !1983, !tbaa !827
  br label %234, !dbg !1983

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %235, metadata !1744, metadata !DIExpression()), !dbg !1796
  %236 = icmp ult i64 %235, %130, !dbg !1987
  br i1 %236, label %237, label %239, !dbg !1990

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1987
  store i8 63, ptr %238, align 1, !dbg !1987, !tbaa !827
  br label %239, !dbg !1987

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %240, metadata !1744, metadata !DIExpression()), !dbg !1796
  br label %439, !dbg !1991

241:                                              ; preds = %152
  br label %251, !dbg !1992

242:                                              ; preds = %152
  br label %251, !dbg !1993

243:                                              ; preds = %152
  br label %249, !dbg !1994

244:                                              ; preds = %152
  br label %249, !dbg !1995

245:                                              ; preds = %152
  br label %251, !dbg !1996

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1997

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1998

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2001

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2003
  call void @llvm.dbg.label(metadata !1790), !dbg !2004
  br i1 %119, label %621, label %251, !dbg !2005

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2003
  call void @llvm.dbg.label(metadata !1792), !dbg !2007
  br i1 %109, label %493, label %450, !dbg !2008

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2009

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2010, !tbaa !827
  %256 = icmp eq i8 %255, 0, !dbg !2012
  br i1 %256, label %257, label %439, !dbg !2013

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2014
  br i1 %258, label %259, label %439, !dbg !2016

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1894
  br label %260, !dbg !2017

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1894
  br i1 %116, label %262, label %439, !dbg !2018

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2020

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1894
  br i1 %116, label %264, label %439, !dbg !2021

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2022

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2025
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2027
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2027
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %270, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %269, metadata !1745, metadata !DIExpression()), !dbg !1796
  %271 = icmp ult i64 %124, %270, !dbg !2028
  br i1 %271, label %272, label %274, !dbg !2031

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2028
  store i8 39, ptr %273, align 1, !dbg !2028, !tbaa !827
  br label %274, !dbg !2028

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %275, metadata !1744, metadata !DIExpression()), !dbg !1796
  %276 = icmp ult i64 %275, %270, !dbg !2032
  br i1 %276, label %277, label %279, !dbg !2035

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2032
  store i8 92, ptr %278, align 1, !dbg !2032, !tbaa !827
  br label %279, !dbg !2032

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %280, metadata !1744, metadata !DIExpression()), !dbg !1796
  %281 = icmp ult i64 %280, %270, !dbg !2036
  br i1 %281, label %282, label %284, !dbg !2039

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2036
  store i8 39, ptr %283, align 1, !dbg !2036, !tbaa !827
  br label %284, !dbg !2036

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %285, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1752, metadata !DIExpression()), !dbg !1796
  br label %439, !dbg !2040

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2041

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1766, metadata !DIExpression()), !dbg !2042
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !2043
  %289 = load ptr, ptr %288, align 8, !dbg !2043, !tbaa !781
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2043
  %292 = load i16, ptr %291, align 2, !dbg !2043, !tbaa !859
  %293 = and i16 %292, 16384, !dbg !2043
  %294 = icmp ne i16 %293, 0, !dbg !2045
  call void @llvm.dbg.value(metadata i1 %294, metadata !1769, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2042
  br label %337, !dbg !2046

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2047
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1770, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr %14, metadata !1822, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata ptr %14, metadata !1830, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 8, metadata !1834, metadata !DIExpression()), !dbg !2051
  store i64 0, ptr %14, align 8, !dbg !2053
  call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 1, metadata !1769, metadata !DIExpression()), !dbg !2042
  %296 = icmp eq i64 %153, -1, !dbg !2054
  br i1 %296, label %297, label %299, !dbg !2056

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %298, metadata !1737, metadata !DIExpression()), !dbg !1796
  br label %299, !dbg !2058

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1894
  call void @llvm.dbg.value(metadata i64 %300, metadata !1737, metadata !DIExpression()), !dbg !1796
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2059
  %301 = sub i64 %300, %129, !dbg !2060
  call void @llvm.dbg.value(metadata ptr %15, metadata !1773, metadata !DIExpression(DW_OP_deref)), !dbg !2061
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #37, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %302, metadata !1777, metadata !DIExpression()), !dbg !2061
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2063

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !2042
  %304 = icmp ugt i64 %300, %129, !dbg !2064
  br i1 %304, label %306, label %332, !dbg !2066

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !2042
  br label %332, !dbg !2067

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1766, metadata !DIExpression()), !dbg !2042
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2069
  %310 = load i8, ptr %309, align 1, !dbg !2069, !tbaa !827
  %311 = icmp eq i8 %310, 0, !dbg !2066
  br i1 %311, label %332, label %312, !dbg !2070

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %313, metadata !1766, metadata !DIExpression()), !dbg !2042
  %314 = add i64 %313, %129, !dbg !2072
  %315 = icmp eq i64 %313, %301, !dbg !2064
  br i1 %315, label %332, label %306, !dbg !2066, !llvm.loop !2073

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2074
  %319 = and i1 %318, %110, !dbg !2074
  call void @llvm.dbg.value(metadata i64 1, metadata !1778, metadata !DIExpression()), !dbg !2075
  br i1 %319, label %320, label %328, !dbg !2074

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1778, metadata !DIExpression()), !dbg !2075
  %322 = add i64 %321, %129, !dbg !2076
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2078
  %324 = load i8, ptr %323, align 1, !dbg !2078, !tbaa !827
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2079

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %326, metadata !1778, metadata !DIExpression()), !dbg !2075
  %327 = icmp eq i64 %326, %302, !dbg !2081
  br i1 %327, label %328, label %320, !dbg !2082, !llvm.loop !2083

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2085, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %329, metadata !1773, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %329, metadata !2087, metadata !DIExpression()), !dbg !2095
  %330 = call i32 @iswprint(i32 noundef %329) #37, !dbg !2097
  %331 = icmp ne i32 %330, 0, !dbg !2098
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %302, metadata !1766, metadata !DIExpression()), !dbg !2042
  br label %332, !dbg !2099

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %333, metadata !1766, metadata !DIExpression()), !dbg !2042
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2101
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !2042
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2101
  call void @llvm.dbg.label(metadata !1795), !dbg !2102
  %336 = select i1 %109, i32 4, i32 2, !dbg !2103
  br label %626, !dbg !2103

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1894
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2105
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %339, metadata !1766, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %338, metadata !1737, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i1 %340, metadata !1764, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1894
  %341 = icmp ult i64 %339, 2, !dbg !2106
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2107
  br i1 %343, label %439, label %344, !dbg !2107

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %345, metadata !1786, metadata !DIExpression()), !dbg !2109
  br label %346, !dbg !2110

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1796
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1885
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2111
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1894
  call void @llvm.dbg.value(metadata i8 %352, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %351, metadata !1763, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %349, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %347, metadata !1744, metadata !DIExpression()), !dbg !1796
  br i1 %342, label %397, label %353, !dbg !2112

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2117

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1894
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2120
  br i1 %355, label %372, label %356, !dbg !2120

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2122
  br i1 %357, label %358, label %360, !dbg !2126

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2122
  store i8 39, ptr %359, align 1, !dbg !2122, !tbaa !827
  br label %360, !dbg !2122

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %361, metadata !1744, metadata !DIExpression()), !dbg !1796
  %362 = icmp ult i64 %361, %130, !dbg !2127
  br i1 %362, label %363, label %365, !dbg !2130

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2127
  store i8 36, ptr %364, align 1, !dbg !2127, !tbaa !827
  br label %365, !dbg !2127

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %366, metadata !1744, metadata !DIExpression()), !dbg !1796
  %367 = icmp ult i64 %366, %130, !dbg !2131
  br i1 %367, label %368, label %370, !dbg !2134

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2131
  store i8 39, ptr %369, align 1, !dbg !2131, !tbaa !827
  br label %370, !dbg !2131

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %371, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, metadata !1752, metadata !DIExpression()), !dbg !1796
  br label %372, !dbg !2135

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1796
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %373, metadata !1744, metadata !DIExpression()), !dbg !1796
  %375 = icmp ult i64 %373, %130, !dbg !2136
  br i1 %375, label %376, label %378, !dbg !2139

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2136
  store i8 92, ptr %377, align 1, !dbg !2136, !tbaa !827
  br label %378, !dbg !2136

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %379, metadata !1744, metadata !DIExpression()), !dbg !1796
  %380 = icmp ult i64 %379, %130, !dbg !2140
  br i1 %380, label %381, label %385, !dbg !2143

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2140
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2140
  store i8 %383, ptr %384, align 1, !dbg !2140, !tbaa !827
  br label %385, !dbg !2140

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %386, metadata !1744, metadata !DIExpression()), !dbg !1796
  %387 = icmp ult i64 %386, %130, !dbg !2144
  br i1 %387, label %388, label %393, !dbg !2147

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2144
  %391 = or i8 %390, 48, !dbg !2144
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2144
  store i8 %391, ptr %392, align 1, !dbg !2144, !tbaa !827
  br label %393, !dbg !2144

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %394, metadata !1744, metadata !DIExpression()), !dbg !1796
  %395 = and i8 %352, 7, !dbg !2148
  %396 = or i8 %395, 48, !dbg !2149
  call void @llvm.dbg.value(metadata i8 %396, metadata !1765, metadata !DIExpression()), !dbg !1894
  br label %404, !dbg !2150

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2151

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2152
  br i1 %399, label %400, label %402, !dbg !2157

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2152
  store i8 92, ptr %401, align 1, !dbg !2152, !tbaa !827
  br label %402, !dbg !2152

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %403, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1894
  br label %404, !dbg !2158

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1796
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1894
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1894
  call void @llvm.dbg.value(metadata i8 %409, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %408, metadata !1763, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %405, metadata !1744, metadata !DIExpression()), !dbg !1796
  %410 = add i64 %349, 1, !dbg !2159
  %411 = icmp ugt i64 %345, %410, !dbg !2161
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2162

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2163
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2163
  br i1 %415, label %416, label %427, !dbg !2163

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2166
  br i1 %417, label %418, label %420, !dbg !2170

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2166
  store i8 39, ptr %419, align 1, !dbg !2166, !tbaa !827
  br label %420, !dbg !2166

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %421, metadata !1744, metadata !DIExpression()), !dbg !1796
  %422 = icmp ult i64 %421, %130, !dbg !2171
  br i1 %422, label %423, label %425, !dbg !2174

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2171
  store i8 39, ptr %424, align 1, !dbg !2171, !tbaa !827
  br label %425, !dbg !2171

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %426, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1752, metadata !DIExpression()), !dbg !1796
  br label %427, !dbg !2175

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2176
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %428, metadata !1744, metadata !DIExpression()), !dbg !1796
  %430 = icmp ult i64 %428, %130, !dbg !2177
  br i1 %430, label %431, label %433, !dbg !2180

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2177
  store i8 %409, ptr %432, align 1, !dbg !2177, !tbaa !827
  br label %433, !dbg !2177

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %434, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %410, metadata !1758, metadata !DIExpression()), !dbg !1885
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2181
  %436 = load i8, ptr %435, align 1, !dbg !2181, !tbaa !827
  call void @llvm.dbg.value(metadata i8 %436, metadata !1765, metadata !DIExpression()), !dbg !1894
  br label %346, !dbg !2182, !llvm.loop !2183

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i1 %340, metadata !1764, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1894
  call void @llvm.dbg.value(metadata i8 %408, metadata !1763, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %349, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %405, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %338, metadata !1737, metadata !DIExpression()), !dbg !1796
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2186
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1796
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1800
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1885
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1894
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %448, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %445, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %442, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %441, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %440, metadata !1737, metadata !DIExpression()), !dbg !1796
  br i1 %112, label %461, label %450, !dbg !2187

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
  br i1 %121, label %462, label %482, !dbg !2189

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2190

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
  %473 = lshr i8 %464, 5, !dbg !2191
  %474 = zext i8 %473 to i64, !dbg !2191
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2192
  %476 = load i32, ptr %475, align 4, !dbg !2192, !tbaa !818
  %477 = and i8 %464, 31, !dbg !2193
  %478 = zext i8 %477 to i32, !dbg !2193
  %479 = shl nuw i32 1, %478, !dbg !2194
  %480 = and i32 %476, %479, !dbg !2194
  %481 = icmp eq i32 %480, 0, !dbg !2194
  br i1 %481, label %482, label %493, !dbg !2195

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
  br i1 %154, label %493, label %529, !dbg !2196

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2186
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1796
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1800
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2197
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1894
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %501, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %499, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %496, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %495, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %494, metadata !1737, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.label(metadata !1793), !dbg !2198
  br i1 %110, label %621, label %503, !dbg !2199

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1894
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2201
  br i1 %504, label %521, label %505, !dbg !2201

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2203
  br i1 %506, label %507, label %509, !dbg !2207

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2203
  store i8 39, ptr %508, align 1, !dbg !2203, !tbaa !827
  br label %509, !dbg !2203

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %510, metadata !1744, metadata !DIExpression()), !dbg !1796
  %511 = icmp ult i64 %510, %502, !dbg !2208
  br i1 %511, label %512, label %514, !dbg !2211

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2208
  store i8 36, ptr %513, align 1, !dbg !2208, !tbaa !827
  br label %514, !dbg !2208

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %515, metadata !1744, metadata !DIExpression()), !dbg !1796
  %516 = icmp ult i64 %515, %502, !dbg !2212
  br i1 %516, label %517, label %519, !dbg !2215

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2212
  store i8 39, ptr %518, align 1, !dbg !2212, !tbaa !827
  br label %519, !dbg !2212

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %520, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 1, metadata !1752, metadata !DIExpression()), !dbg !1796
  br label %521, !dbg !2216

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1894
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %522, metadata !1744, metadata !DIExpression()), !dbg !1796
  %524 = icmp ult i64 %522, %502, !dbg !2217
  br i1 %524, label %525, label %527, !dbg !2220

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2217
  store i8 92, ptr %526, align 1, !dbg !2217, !tbaa !827
  br label %527, !dbg !2217

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %502, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %501, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %499, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %496, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %528, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %494, metadata !1737, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.label(metadata !1794), !dbg !2221
  br label %553, !dbg !2222

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2186
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1796
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1800
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2197
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2225
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %538, metadata !1765, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %535, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %532, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %531, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %530, metadata !1737, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.label(metadata !1794), !dbg !2221
  %540 = xor i1 %534, true, !dbg !2222
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2222
  br i1 %541, label %553, label %542, !dbg !2222

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2226
  br i1 %543, label %544, label %546, !dbg !2230

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2226
  store i8 39, ptr %545, align 1, !dbg !2226, !tbaa !827
  br label %546, !dbg !2226

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %547, metadata !1744, metadata !DIExpression()), !dbg !1796
  %548 = icmp ult i64 %547, %539, !dbg !2231
  br i1 %548, label %549, label %551, !dbg !2234

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2231
  store i8 39, ptr %550, align 1, !dbg !2231, !tbaa !827
  br label %551, !dbg !2231

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %552, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1752, metadata !DIExpression()), !dbg !1796
  br label %553, !dbg !2235

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1894
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %561, metadata !1744, metadata !DIExpression()), !dbg !1796
  %563 = icmp ult i64 %561, %554, !dbg !2236
  br i1 %563, label %564, label %566, !dbg !2239

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2236
  store i8 %555, ptr %565, align 1, !dbg !2236, !tbaa !827
  br label %566, !dbg !2236

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %567, metadata !1744, metadata !DIExpression()), !dbg !1796
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2240
  call void @llvm.dbg.value(metadata i8 poison, metadata !1751, metadata !DIExpression()), !dbg !1796
  br label %569, !dbg !2241

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2186
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1796
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1800
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2197
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %576, metadata !1758, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 poison, metadata !1752, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1751, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %572, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %571, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %570, metadata !1737, metadata !DIExpression()), !dbg !1796
  %578 = add i64 %576, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %578, metadata !1758, metadata !DIExpression()), !dbg !1885
  br label %122, !dbg !2243, !llvm.loop !2244

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1735, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1751, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 poison, metadata !1750, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %125, metadata !1745, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %124, metadata !1744, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %123, metadata !1737, metadata !DIExpression()), !dbg !1796
  %580 = icmp ne i64 %124, 0, !dbg !2246
  %581 = xor i1 %110, true, !dbg !2248
  %582 = or i1 %580, %581, !dbg !2248
  %583 = or i1 %582, %111, !dbg !2248
  br i1 %583, label %584, label %621, !dbg !2248

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2249
  %586 = xor i1 %126, true, !dbg !2249
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2249
  br i1 %587, label %595, label %588, !dbg !2249

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2251

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2253
  br label %636, !dbg !2255

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2256
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2258
  br i1 %594, label %27, label %595, !dbg !2258

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2259
  %598 = or i1 %597, %596, !dbg !2261
  br i1 %598, label %614, label %599, !dbg !2261

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1746, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %124, metadata !1744, metadata !DIExpression()), !dbg !1796
  %600 = load i8, ptr %107, align 1, !dbg !2262, !tbaa !827
  %601 = icmp eq i8 %600, 0, !dbg !2265
  br i1 %601, label %614, label %602, !dbg !2265

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1746, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %605, metadata !1744, metadata !DIExpression()), !dbg !1796
  %606 = icmp ult i64 %605, %130, !dbg !2266
  br i1 %606, label %607, label %609, !dbg !2269

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2266
  store i8 %603, ptr %608, align 1, !dbg !2266, !tbaa !827
  br label %609, !dbg !2266

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %610, metadata !1744, metadata !DIExpression()), !dbg !1796
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2270
  call void @llvm.dbg.value(metadata ptr %611, metadata !1746, metadata !DIExpression()), !dbg !1796
  %612 = load i8, ptr %611, align 1, !dbg !2262, !tbaa !827
  %613 = icmp eq i8 %612, 0, !dbg !2265
  br i1 %613, label %614, label %602, !dbg !2265, !llvm.loop !2271

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1872
  call void @llvm.dbg.value(metadata i64 %615, metadata !1744, metadata !DIExpression()), !dbg !1796
  %616 = icmp ult i64 %615, %130, !dbg !2273
  br i1 %616, label %617, label %636, !dbg !2275

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2276
  store i8 0, ptr %618, align 1, !dbg !2277, !tbaa !827
  br label %636, !dbg !2276

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1795), !dbg !2102
  %620 = icmp eq i32 %103, 2, !dbg !2278
  br i1 %620, label %626, label %630, !dbg !2103

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1795), !dbg !2102
  %624 = icmp eq i32 %103, 2, !dbg !2278
  %625 = select i1 %109, i32 4, i32 2, !dbg !2103
  br i1 %624, label %626, label %630, !dbg !2103

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2103

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1738, metadata !DIExpression()), !dbg !1796
  %634 = and i32 %5, -3, !dbg !2279
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2280
  br label %636, !dbg !2281

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2282
}

; Function Attrs: nounwind
declare !dbg !2283 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2286 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2289 i32 @iswprint(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2291 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %1, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata ptr %2, metadata !2297, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata ptr %0, metadata !2299, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %1, metadata !2304, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata ptr null, metadata !2305, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata ptr %2, metadata !2306, metadata !DIExpression()), !dbg !2312
  %4 = icmp eq ptr %2, null, !dbg !2314
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %5, metadata !2307, metadata !DIExpression()), !dbg !2312
  %6 = tail call ptr @__errno_location() #39, !dbg !2315
  %7 = load i32, ptr %6, align 4, !dbg !2315, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %7, metadata !2308, metadata !DIExpression()), !dbg !2312
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2316
  %9 = load i32, ptr %8, align 4, !dbg !2316, !tbaa !1678
  %10 = or i32 %9, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %10, metadata !2309, metadata !DIExpression()), !dbg !2312
  %11 = load i32, ptr %5, align 8, !dbg !2318, !tbaa !1628
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2319
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2320
  %14 = load ptr, ptr %13, align 8, !dbg !2320, !tbaa !1699
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2321
  %16 = load ptr, ptr %15, align 8, !dbg !2321, !tbaa !1702
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2322
  %18 = add i64 %17, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %18, metadata !2310, metadata !DIExpression()), !dbg !2312
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2324
  call void @llvm.dbg.value(metadata ptr %19, metadata !2311, metadata !DIExpression()), !dbg !2312
  %20 = load i32, ptr %5, align 8, !dbg !2325, !tbaa !1628
  %21 = load ptr, ptr %13, align 8, !dbg !2326, !tbaa !1699
  %22 = load ptr, ptr %15, align 8, !dbg !2327, !tbaa !1702
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2328
  store i32 %7, ptr %6, align 4, !dbg !2329, !tbaa !818
  ret ptr %19, !dbg !2330
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2300 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2299, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i64 %1, metadata !2304, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata ptr %2, metadata !2305, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata ptr %3, metadata !2306, metadata !DIExpression()), !dbg !2331
  %5 = icmp eq ptr %3, null, !dbg !2332
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2332
  call void @llvm.dbg.value(metadata ptr %6, metadata !2307, metadata !DIExpression()), !dbg !2331
  %7 = tail call ptr @__errno_location() #39, !dbg !2333
  %8 = load i32, ptr %7, align 4, !dbg !2333, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %8, metadata !2308, metadata !DIExpression()), !dbg !2331
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2334
  %10 = load i32, ptr %9, align 4, !dbg !2334, !tbaa !1678
  %11 = icmp eq ptr %2, null, !dbg !2335
  %12 = zext i1 %11 to i32, !dbg !2335
  %13 = or i32 %10, %12, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %13, metadata !2309, metadata !DIExpression()), !dbg !2331
  %14 = load i32, ptr %6, align 8, !dbg !2337, !tbaa !1628
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2338
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2339
  %17 = load ptr, ptr %16, align 8, !dbg !2339, !tbaa !1699
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2340
  %19 = load ptr, ptr %18, align 8, !dbg !2340, !tbaa !1702
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2341
  %21 = add i64 %20, 1, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %21, metadata !2310, metadata !DIExpression()), !dbg !2331
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %22, metadata !2311, metadata !DIExpression()), !dbg !2331
  %23 = load i32, ptr %6, align 8, !dbg !2344, !tbaa !1628
  %24 = load ptr, ptr %16, align 8, !dbg !2345, !tbaa !1699
  %25 = load ptr, ptr %18, align 8, !dbg !2346, !tbaa !1702
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2347
  store i32 %8, ptr %7, align 4, !dbg !2348, !tbaa !818
  br i1 %11, label %28, label %27, !dbg !2349

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2350, !tbaa !2352
  br label %28, !dbg !2353

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2354
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2355 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2360, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %1, metadata !2357, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 1, metadata !2358, metadata !DIExpression()), !dbg !2362
  %2 = load i32, ptr @nslots, align 4, !tbaa !818
  call void @llvm.dbg.value(metadata i32 1, metadata !2358, metadata !DIExpression()), !dbg !2362
  %3 = icmp sgt i32 %2, 1, !dbg !2363
  br i1 %3, label %4, label %6, !dbg !2365

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2363
  br label %10, !dbg !2365

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2366
  %8 = load ptr, ptr %7, align 8, !dbg !2366, !tbaa !2368
  %9 = icmp eq ptr %8, @slot0, !dbg !2370
  br i1 %9, label %17, label %16, !dbg !2371

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2358, metadata !DIExpression()), !dbg !2362
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2372
  %13 = load ptr, ptr %12, align 8, !dbg !2372, !tbaa !2368
  tail call void @free(ptr noundef %13) #37, !dbg !2373
  %14 = add nuw nsw i64 %11, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %14, metadata !2358, metadata !DIExpression()), !dbg !2362
  %15 = icmp eq i64 %14, %5, !dbg !2363
  br i1 %15, label %6, label %10, !dbg !2365, !llvm.loop !2375

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2377
  store i64 256, ptr @slotvec0, align 8, !dbg !2379, !tbaa !2380
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2381, !tbaa !2368
  br label %17, !dbg !2382

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2383
  br i1 %18, label %20, label %19, !dbg !2385

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2386
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2388, !tbaa !781
  br label %20, !dbg !2389

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2390, !tbaa !818
  ret void, !dbg !2391
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2392 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2395 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata ptr %1, metadata !2398, metadata !DIExpression()), !dbg !2399
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2400
  ret ptr %3, !dbg !2401
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2402 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata ptr %1, metadata !2407, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %2, metadata !2408, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata ptr %3, metadata !2409, metadata !DIExpression()), !dbg !2422
  %6 = tail call ptr @__errno_location() #39, !dbg !2423
  %7 = load i32, ptr %6, align 4, !dbg !2423, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %7, metadata !2410, metadata !DIExpression()), !dbg !2422
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2424, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %8, metadata !2411, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2412, metadata !DIExpression()), !dbg !2422
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2425
  br i1 %9, label %10, label %11, !dbg !2425

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2427
  unreachable, !dbg !2427

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2428, !tbaa !818
  %13 = icmp sgt i32 %12, %0, !dbg !2429
  br i1 %13, label %32, label %14, !dbg !2430

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2431
  call void @llvm.dbg.value(metadata i1 %15, metadata !2413, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2432
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2433
  %16 = sext i32 %12 to i64, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %16, metadata !2416, metadata !DIExpression()), !dbg !2432
  store i64 %16, ptr %5, align 8, !dbg !2435, !tbaa !2352
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2436
  %18 = add nuw nsw i32 %0, 1, !dbg !2437
  %19 = sub i32 %18, %12, !dbg !2438
  %20 = sext i32 %19 to i64, !dbg !2439
  call void @llvm.dbg.value(metadata ptr %5, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2440
  call void @llvm.dbg.value(metadata ptr %21, metadata !2411, metadata !DIExpression()), !dbg !2422
  store ptr %21, ptr @slotvec, align 8, !dbg !2441, !tbaa !781
  br i1 %15, label %22, label %23, !dbg !2442

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2443, !tbaa.struct !2445
  br label %23, !dbg !2446

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2447, !tbaa !818
  %25 = sext i32 %24 to i64, !dbg !2448
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2448
  %27 = load i64, ptr %5, align 8, !dbg !2449, !tbaa !2352
  call void @llvm.dbg.value(metadata i64 %27, metadata !2416, metadata !DIExpression()), !dbg !2432
  %28 = sub nsw i64 %27, %25, !dbg !2450
  %29 = shl i64 %28, 4, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %26, metadata !1830, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %29, metadata !1834, metadata !DIExpression()), !dbg !2452
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2454
  %30 = load i64, ptr %5, align 8, !dbg !2455, !tbaa !2352
  call void @llvm.dbg.value(metadata i64 %30, metadata !2416, metadata !DIExpression()), !dbg !2432
  %31 = trunc i64 %30 to i32, !dbg !2455
  store i32 %31, ptr @nslots, align 4, !dbg !2456, !tbaa !818
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2457
  br label %32, !dbg !2458

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2422
  call void @llvm.dbg.value(metadata ptr %33, metadata !2411, metadata !DIExpression()), !dbg !2422
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2459
  %36 = load i64, ptr %35, align 8, !dbg !2460, !tbaa !2380
  call void @llvm.dbg.value(metadata i64 %36, metadata !2417, metadata !DIExpression()), !dbg !2461
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2462
  %38 = load ptr, ptr %37, align 8, !dbg !2462, !tbaa !2368
  call void @llvm.dbg.value(metadata ptr %38, metadata !2419, metadata !DIExpression()), !dbg !2461
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2463
  %40 = load i32, ptr %39, align 4, !dbg !2463, !tbaa !1678
  %41 = or i32 %40, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %41, metadata !2420, metadata !DIExpression()), !dbg !2461
  %42 = load i32, ptr %3, align 8, !dbg !2465, !tbaa !1628
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2466
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2467
  %45 = load ptr, ptr %44, align 8, !dbg !2467, !tbaa !1699
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2468
  %47 = load ptr, ptr %46, align 8, !dbg !2468, !tbaa !1702
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %48, metadata !2421, metadata !DIExpression()), !dbg !2461
  %49 = icmp ugt i64 %36, %48, !dbg !2470
  br i1 %49, label %60, label %50, !dbg !2472

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %51, metadata !2417, metadata !DIExpression()), !dbg !2461
  store i64 %51, ptr %35, align 8, !dbg !2475, !tbaa !2380
  %52 = icmp eq ptr %38, @slot0, !dbg !2476
  br i1 %52, label %54, label %53, !dbg !2478

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2479
  br label %54, !dbg !2479

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %55, metadata !2419, metadata !DIExpression()), !dbg !2461
  store ptr %55, ptr %37, align 8, !dbg !2481, !tbaa !2368
  %56 = load i32, ptr %3, align 8, !dbg !2482, !tbaa !1628
  %57 = load ptr, ptr %44, align 8, !dbg !2483, !tbaa !1699
  %58 = load ptr, ptr %46, align 8, !dbg !2484, !tbaa !1702
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2485
  br label %60, !dbg !2486

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2461
  call void @llvm.dbg.value(metadata ptr %61, metadata !2419, metadata !DIExpression()), !dbg !2461
  store i32 %7, ptr %6, align 4, !dbg !2487, !tbaa !818
  ret ptr %61, !dbg !2488
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2489 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %1, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i64 %2, metadata !2495, metadata !DIExpression()), !dbg !2496
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2497
  ret ptr %4, !dbg !2498
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2501, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !2397, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2503
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2505
  ret ptr %2, !dbg !2506
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2507 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata ptr %0, metadata !2494, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %1, metadata !2495, metadata !DIExpression()), !dbg !2514
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2516
  ret ptr %3, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2518 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %1, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %2, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2525, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2541, !alias.scope !2529
  %5 = icmp eq i32 %1, 10, !dbg !2542
  br i1 %5, label %6, label %7, !dbg !2544

6:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2545, !noalias !2529
  unreachable, !dbg !2545

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2546, !tbaa !1628, !alias.scope !2529
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2547
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2548
  ret ptr %8, !dbg !2549
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2550 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 %1, metadata !2555, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata ptr %2, metadata !2556, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i64 %3, metadata !2557, metadata !DIExpression()), !dbg !2559
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2560
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2558, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2538, metadata !DIExpression()), !dbg !2568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2568, !alias.scope !2562
  %6 = icmp eq i32 %1, 10, !dbg !2569
  br i1 %6, label %7, label %8, !dbg !2570

7:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2571, !noalias !2562
  unreachable, !dbg !2571

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2572, !tbaa !1628, !alias.scope !2562
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2573
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2574
  ret ptr %9, !dbg !2575
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2576 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %1, metadata !2581, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %1, metadata !2524, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2585
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2525, metadata !DIExpression()), !dbg !2586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2538, metadata !DIExpression()), !dbg !2593
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2593, !alias.scope !2587
  %4 = icmp eq i32 %0, 10, !dbg !2594
  br i1 %4, label %5, label %6, !dbg !2595

5:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2596, !noalias !2587
  unreachable, !dbg !2596

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2597, !tbaa !1628, !alias.scope !2587
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2598
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2599
  ret ptr %7, !dbg !2600
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2601 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %1, metadata !2606, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %2, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2554, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %1, metadata !2556, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %2, metadata !2557, metadata !DIExpression()), !dbg !2609
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2611
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2558, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2538, metadata !DIExpression()), !dbg !2619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2619, !alias.scope !2613
  %5 = icmp eq i32 %0, 10, !dbg !2620
  br i1 %5, label %6, label %7, !dbg !2621

6:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2622, !noalias !2613
  unreachable, !dbg !2622

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2623, !tbaa !1628, !alias.scope !2613
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2625
  ret ptr %8, !dbg !2626
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2627 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i64 %1, metadata !2632, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 %2, metadata !2633, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2636
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2638, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %4, metadata !1645, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %2, metadata !1646, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 1, metadata !1647, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %2, metadata !1648, metadata !DIExpression()), !dbg !2640
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2642
  %6 = lshr i8 %2, 5, !dbg !2643
  %7 = zext i8 %6 to i64, !dbg !2643
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2644
  call void @llvm.dbg.value(metadata ptr %8, metadata !1649, metadata !DIExpression()), !dbg !2640
  %9 = and i8 %2, 31, !dbg !2645
  %10 = zext i8 %9 to i32, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %10, metadata !1651, metadata !DIExpression()), !dbg !2640
  %11 = load i32, ptr %8, align 4, !dbg !2646, !tbaa !818
  %12 = lshr i32 %11, %10, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %12, metadata !1652, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2640
  %13 = and i32 %12, 1, !dbg !2648
  %14 = xor i32 %13, 1, !dbg !2648
  %15 = shl nuw i32 %14, %10, !dbg !2649
  %16 = xor i32 %15, %11, !dbg !2650
  store i32 %16, ptr %8, align 4, !dbg !2650, !tbaa !818
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2651
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2652
  ret ptr %17, !dbg !2653
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2654 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2658, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %1, metadata !2659, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 -1, metadata !2632, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %1, metadata !2633, metadata !DIExpression()), !dbg !2661
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !2664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2665, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %3, metadata !1645, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %1, metadata !1646, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 1, metadata !1647, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %1, metadata !1648, metadata !DIExpression()), !dbg !2666
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2668
  %5 = lshr i8 %1, 5, !dbg !2669
  %6 = zext i8 %5 to i64, !dbg !2669
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2670
  call void @llvm.dbg.value(metadata ptr %7, metadata !1649, metadata !DIExpression()), !dbg !2666
  %8 = and i8 %1, 31, !dbg !2671
  %9 = zext i8 %8 to i32, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %9, metadata !1651, metadata !DIExpression()), !dbg !2666
  %10 = load i32, ptr %7, align 4, !dbg !2672, !tbaa !818
  %11 = lshr i32 %10, %9, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %11, metadata !1652, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2666
  %12 = and i32 %11, 1, !dbg !2674
  %13 = xor i32 %12, 1, !dbg !2674
  %14 = shl nuw i32 %13, %9, !dbg !2675
  %15 = xor i32 %14, %10, !dbg !2676
  store i32 %15, ptr %7, align 4, !dbg !2676, !tbaa !818
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2677
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2678
  ret ptr %16, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2680 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %0, metadata !2658, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 58, metadata !2659, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 -1, metadata !2632, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 58, metadata !2633, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2688
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2634, metadata !DIExpression()), !dbg !2689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2690, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %2, metadata !1645, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 58, metadata !1646, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 1, metadata !1647, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 58, metadata !1648, metadata !DIExpression()), !dbg !2691
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2693
  call void @llvm.dbg.value(metadata ptr %3, metadata !1649, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 26, metadata !1651, metadata !DIExpression()), !dbg !2691
  %4 = load i32, ptr %3, align 4, !dbg !2694, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %4, metadata !1652, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2691
  %5 = or i32 %4, 67108864, !dbg !2695
  store i32 %5, ptr %3, align 4, !dbg !2695, !tbaa !818
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2696
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2697
  ret ptr %6, !dbg !2698
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2699 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2701, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %1, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %1, metadata !2632, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 58, metadata !2633, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2706
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !2707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2708, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %3, metadata !1645, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 58, metadata !1646, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 1, metadata !1647, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 58, metadata !1648, metadata !DIExpression()), !dbg !2709
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2711
  call void @llvm.dbg.value(metadata ptr %4, metadata !1649, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 26, metadata !1651, metadata !DIExpression()), !dbg !2709
  %5 = load i32, ptr %4, align 4, !dbg !2712, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %5, metadata !1652, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2709
  %6 = or i32 %5, 67108864, !dbg !2713
  store i32 %6, ptr %4, align 4, !dbg !2713, !tbaa !818
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2714
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2715
  ret ptr %7, !dbg !2716
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2717 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2723
  call void @llvm.dbg.value(metadata i32 %0, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 %1, metadata !2720, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2725
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2726
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2722, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2728
  %5 = icmp eq i32 %1, 10, !dbg !2729
  br i1 %5, label %6, label %7, !dbg !2730

6:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2731, !noalias !2732
  unreachable, !dbg !2731

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2728
  store i32 %1, ptr %4, align 8, !dbg !2735, !tbaa.struct !2639
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2735
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2735
  call void @llvm.dbg.value(metadata ptr %4, metadata !1645, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8 58, metadata !1646, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 1, metadata !1647, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8 58, metadata !1648, metadata !DIExpression()), !dbg !2736
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %9, metadata !1649, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 26, metadata !1651, metadata !DIExpression()), !dbg !2736
  %10 = load i32, ptr %9, align 4, !dbg !2739, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %10, metadata !1652, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2736
  %11 = or i32 %10, 67108864, !dbg !2740
  store i32 %11, ptr %9, align 4, !dbg !2740, !tbaa !818
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2741
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2742
  ret ptr %12, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2744 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2748, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %1, metadata !2749, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %2, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %3, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata ptr %1, metadata !2758, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata ptr %2, metadata !2759, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata ptr %3, metadata !2760, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 -1, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2765
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2767, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %5, metadata !1685, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %1, metadata !1686, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %2, metadata !1687, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %5, metadata !1685, metadata !DIExpression()), !dbg !2768
  store i32 10, ptr %5, align 8, !dbg !2770, !tbaa !1628
  %6 = icmp ne ptr %1, null, !dbg !2771
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2772
  br i1 %8, label %10, label %9, !dbg !2772

9:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2773
  unreachable, !dbg !2773

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2774
  store ptr %1, ptr %11, align 8, !dbg !2775, !tbaa !1699
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2776
  store ptr %2, ptr %12, align 8, !dbg !2777, !tbaa !1702
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2778
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2779
  ret ptr %13, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2754 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %1, metadata !2758, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %2, metadata !2759, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %3, metadata !2760, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %4, metadata !2761, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2782
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2762, metadata !DIExpression()), !dbg !2783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2784, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %6, metadata !1685, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %1, metadata !1686, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %2, metadata !1687, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %6, metadata !1685, metadata !DIExpression()), !dbg !2785
  store i32 10, ptr %6, align 8, !dbg !2787, !tbaa !1628
  %7 = icmp ne ptr %1, null, !dbg !2788
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2789
  br i1 %9, label %11, label %10, !dbg !2789

10:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2790
  unreachable, !dbg !2790

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2791
  store ptr %1, ptr %12, align 8, !dbg !2792, !tbaa !1699
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2793
  store ptr %2, ptr %13, align 8, !dbg !2794, !tbaa !1702
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2795
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2796
  ret ptr %14, !dbg !2797
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2798 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %1, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %2, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %0, metadata !2749, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %1, metadata !2750, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %2, metadata !2751, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %1, metadata !2759, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %2, metadata !2760, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 -1, metadata !2761, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2762, metadata !DIExpression()), !dbg !2811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2812, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %4, metadata !1685, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata ptr %0, metadata !1686, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata ptr %1, metadata !1687, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata ptr %4, metadata !1685, metadata !DIExpression()), !dbg !2813
  store i32 10, ptr %4, align 8, !dbg !2815, !tbaa !1628
  %5 = icmp ne ptr %0, null, !dbg !2816
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2817
  br i1 %7, label %9, label %8, !dbg !2817

8:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2818
  unreachable, !dbg !2818

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2819
  store ptr %0, ptr %10, align 8, !dbg !2820, !tbaa !1699
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2821
  store ptr %1, ptr %11, align 8, !dbg !2822, !tbaa !1702
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2823
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2824
  ret ptr %12, !dbg !2825
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2826 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %1, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %2, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %3, metadata !2833, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %1, metadata !2759, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %2, metadata !2760, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 %3, metadata !2761, metadata !DIExpression()), !dbg !2835
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2837
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2762, metadata !DIExpression()), !dbg !2838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2839, !tbaa.struct !2639
  call void @llvm.dbg.value(metadata ptr %5, metadata !1685, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %0, metadata !1686, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %1, metadata !1687, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %5, metadata !1685, metadata !DIExpression()), !dbg !2840
  store i32 10, ptr %5, align 8, !dbg !2842, !tbaa !1628
  %6 = icmp ne ptr %0, null, !dbg !2843
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2844
  br i1 %8, label %10, label %9, !dbg !2844

9:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2845
  unreachable, !dbg !2845

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2846
  store ptr %0, ptr %11, align 8, !dbg !2847, !tbaa !1699
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2848
  store ptr %1, ptr %12, align 8, !dbg !2849, !tbaa !1702
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2850
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2851
  ret ptr %13, !dbg !2852
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %1, metadata !2858, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %2, metadata !2859, metadata !DIExpression()), !dbg !2860
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2861
  ret ptr %4, !dbg !2862
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2863 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %1, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 0, metadata !2857, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata ptr %0, metadata !2858, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2859, metadata !DIExpression()), !dbg !2870
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2872
  ret ptr %3, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata ptr %1, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %1, metadata !2858, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 -1, metadata !2859, metadata !DIExpression()), !dbg !2881
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2883
  ret ptr %3, !dbg !2884
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2878, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata ptr %0, metadata !2879, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 0, metadata !2857, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %0, metadata !2858, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 -1, metadata !2859, metadata !DIExpression()), !dbg !2893
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2895
  ret ptr %2, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2897 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2936, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %1, metadata !2937, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %2, metadata !2938, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %3, metadata !2939, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %5, metadata !2941, metadata !DIExpression()), !dbg !2942
  %7 = icmp eq ptr %1, null, !dbg !2943
  br i1 %7, label %10, label %8, !dbg !2945

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2946
  br label %12, !dbg !2946

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %2, ptr noundef %3) #37, !dbg !2947
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.3.81, i32 noundef 5) #37, !dbg !2948
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2948
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2949
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.5.83, i32 noundef 5) #37, !dbg !2950
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.84) #37, !dbg !2950
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %0), !dbg !2951
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
  ], !dbg !2952

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.7.85, i32 noundef 5) #37, !dbg !2953
  %21 = load ptr, ptr %4, align 8, !dbg !2953, !tbaa !781
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2953
  br label %147, !dbg !2955

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.8.86, i32 noundef 5) #37, !dbg !2956
  %25 = load ptr, ptr %4, align 8, !dbg !2956, !tbaa !781
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2956
  %27 = load ptr, ptr %26, align 8, !dbg !2956, !tbaa !781
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2956
  br label %147, !dbg !2957

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.9.87, i32 noundef 5) #37, !dbg !2958
  %31 = load ptr, ptr %4, align 8, !dbg !2958, !tbaa !781
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2958
  %33 = load ptr, ptr %32, align 8, !dbg !2958, !tbaa !781
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2958
  %35 = load ptr, ptr %34, align 8, !dbg !2958, !tbaa !781
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2958
  br label %147, !dbg !2959

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.10.88, i32 noundef 5) #37, !dbg !2960
  %39 = load ptr, ptr %4, align 8, !dbg !2960, !tbaa !781
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2960
  %41 = load ptr, ptr %40, align 8, !dbg !2960, !tbaa !781
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2960
  %43 = load ptr, ptr %42, align 8, !dbg !2960, !tbaa !781
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2960
  %45 = load ptr, ptr %44, align 8, !dbg !2960, !tbaa !781
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2960
  br label %147, !dbg !2961

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.11.89, i32 noundef 5) #37, !dbg !2962
  %49 = load ptr, ptr %4, align 8, !dbg !2962, !tbaa !781
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2962
  %51 = load ptr, ptr %50, align 8, !dbg !2962, !tbaa !781
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2962
  %53 = load ptr, ptr %52, align 8, !dbg !2962, !tbaa !781
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2962
  %55 = load ptr, ptr %54, align 8, !dbg !2962, !tbaa !781
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2962
  %57 = load ptr, ptr %56, align 8, !dbg !2962, !tbaa !781
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2962
  br label %147, !dbg !2963

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.12.90, i32 noundef 5) #37, !dbg !2964
  %61 = load ptr, ptr %4, align 8, !dbg !2964, !tbaa !781
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2964
  %63 = load ptr, ptr %62, align 8, !dbg !2964, !tbaa !781
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2964
  %65 = load ptr, ptr %64, align 8, !dbg !2964, !tbaa !781
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2964
  %67 = load ptr, ptr %66, align 8, !dbg !2964, !tbaa !781
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2964
  %69 = load ptr, ptr %68, align 8, !dbg !2964, !tbaa !781
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2964
  %71 = load ptr, ptr %70, align 8, !dbg !2964, !tbaa !781
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2964
  br label %147, !dbg !2965

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.13.91, i32 noundef 5) #37, !dbg !2966
  %75 = load ptr, ptr %4, align 8, !dbg !2966, !tbaa !781
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2966
  %77 = load ptr, ptr %76, align 8, !dbg !2966, !tbaa !781
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2966
  %79 = load ptr, ptr %78, align 8, !dbg !2966, !tbaa !781
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2966
  %81 = load ptr, ptr %80, align 8, !dbg !2966, !tbaa !781
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2966
  %83 = load ptr, ptr %82, align 8, !dbg !2966, !tbaa !781
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2966
  %85 = load ptr, ptr %84, align 8, !dbg !2966, !tbaa !781
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2966
  %87 = load ptr, ptr %86, align 8, !dbg !2966, !tbaa !781
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2966
  br label %147, !dbg !2967

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.14.92, i32 noundef 5) #37, !dbg !2968
  %91 = load ptr, ptr %4, align 8, !dbg !2968, !tbaa !781
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2968
  %93 = load ptr, ptr %92, align 8, !dbg !2968, !tbaa !781
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2968
  %95 = load ptr, ptr %94, align 8, !dbg !2968, !tbaa !781
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2968
  %97 = load ptr, ptr %96, align 8, !dbg !2968, !tbaa !781
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2968
  %99 = load ptr, ptr %98, align 8, !dbg !2968, !tbaa !781
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2968
  %101 = load ptr, ptr %100, align 8, !dbg !2968, !tbaa !781
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2968
  %103 = load ptr, ptr %102, align 8, !dbg !2968, !tbaa !781
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2968
  %105 = load ptr, ptr %104, align 8, !dbg !2968, !tbaa !781
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2968
  br label %147, !dbg !2969

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.15.93, i32 noundef 5) #37, !dbg !2970
  %109 = load ptr, ptr %4, align 8, !dbg !2970, !tbaa !781
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2970
  %111 = load ptr, ptr %110, align 8, !dbg !2970, !tbaa !781
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2970
  %113 = load ptr, ptr %112, align 8, !dbg !2970, !tbaa !781
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2970
  %115 = load ptr, ptr %114, align 8, !dbg !2970, !tbaa !781
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2970
  %117 = load ptr, ptr %116, align 8, !dbg !2970, !tbaa !781
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2970
  %119 = load ptr, ptr %118, align 8, !dbg !2970, !tbaa !781
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2970
  %121 = load ptr, ptr %120, align 8, !dbg !2970, !tbaa !781
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2970
  %123 = load ptr, ptr %122, align 8, !dbg !2970, !tbaa !781
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2970
  %125 = load ptr, ptr %124, align 8, !dbg !2970, !tbaa !781
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2970
  br label %147, !dbg !2971

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.16.94, i32 noundef 5) #37, !dbg !2972
  %129 = load ptr, ptr %4, align 8, !dbg !2972, !tbaa !781
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2972
  %131 = load ptr, ptr %130, align 8, !dbg !2972, !tbaa !781
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2972
  %133 = load ptr, ptr %132, align 8, !dbg !2972, !tbaa !781
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2972
  %135 = load ptr, ptr %134, align 8, !dbg !2972, !tbaa !781
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2972
  %137 = load ptr, ptr %136, align 8, !dbg !2972, !tbaa !781
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2972
  %139 = load ptr, ptr %138, align 8, !dbg !2972, !tbaa !781
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2972
  %141 = load ptr, ptr %140, align 8, !dbg !2972, !tbaa !781
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2972
  %143 = load ptr, ptr %142, align 8, !dbg !2972, !tbaa !781
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2972
  %145 = load ptr, ptr %144, align 8, !dbg !2972, !tbaa !781
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2972
  br label %147, !dbg !2973

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2974
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2975 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2979, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %1, metadata !2980, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %2, metadata !2981, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %3, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %4, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 0, metadata !2984, metadata !DIExpression()), !dbg !2985
  br label %6, !dbg !2986

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2988
  call void @llvm.dbg.value(metadata i64 %7, metadata !2984, metadata !DIExpression()), !dbg !2985
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2989
  %9 = load ptr, ptr %8, align 8, !dbg !2989, !tbaa !781
  %10 = icmp eq ptr %9, null, !dbg !2991
  %11 = add i64 %7, 1, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %11, metadata !2984, metadata !DIExpression()), !dbg !2985
  br i1 %10, label %12, label %6, !dbg !2991, !llvm.loop !2993

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2995
  ret void, !dbg !2996
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2997 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %1, metadata !3013, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %2, metadata !3014, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %3, metadata !3015, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3016, metadata !DIExpression()), !dbg !3021
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3018, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression()), !dbg !3020
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3017, metadata !DIExpression()), !dbg !3020
  %10 = icmp sgt i32 %9, -1, !dbg !3024
  br i1 %10, label %18, label %11, !dbg !3024

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3024
  store i32 %12, ptr %7, align 8, !dbg !3024
  %13 = icmp ult i32 %9, -7, !dbg !3024
  br i1 %13, label %14, label %18, !dbg !3024

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3024
  %16 = sext i32 %9 to i64, !dbg !3024
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3024
  br label %22, !dbg !3024

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3024
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3024
  store ptr %21, ptr %4, align 8, !dbg !3024
  br label %22, !dbg !3024

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3024
  %25 = load ptr, ptr %24, align 8, !dbg !3024
  store ptr %25, ptr %6, align 8, !dbg !3027, !tbaa !781
  %26 = icmp eq ptr %25, null, !dbg !3028
  br i1 %26, label %197, label %27, !dbg !3029

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 1, metadata !3017, metadata !DIExpression()), !dbg !3020
  %28 = icmp sgt i32 %23, -1, !dbg !3024
  br i1 %28, label %36, label %29, !dbg !3024

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3024
  store i32 %30, ptr %7, align 8, !dbg !3024
  %31 = icmp ult i32 %23, -7, !dbg !3024
  br i1 %31, label %32, label %36, !dbg !3024

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3024
  %34 = sext i32 %23 to i64, !dbg !3024
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3024
  br label %40, !dbg !3024

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3024
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3024
  store ptr %39, ptr %4, align 8, !dbg !3024
  br label %40, !dbg !3024

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3024
  %43 = load ptr, ptr %42, align 8, !dbg !3024
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3030
  store ptr %43, ptr %44, align 8, !dbg !3027, !tbaa !781
  %45 = icmp eq ptr %43, null, !dbg !3028
  br i1 %45, label %197, label %46, !dbg !3029

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 2, metadata !3017, metadata !DIExpression()), !dbg !3020
  %47 = icmp sgt i32 %41, -1, !dbg !3024
  br i1 %47, label %55, label %48, !dbg !3024

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3024
  store i32 %49, ptr %7, align 8, !dbg !3024
  %50 = icmp ult i32 %41, -7, !dbg !3024
  br i1 %50, label %51, label %55, !dbg !3024

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3024
  %53 = sext i32 %41 to i64, !dbg !3024
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3024
  br label %59, !dbg !3024

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3024
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3024
  store ptr %58, ptr %4, align 8, !dbg !3024
  br label %59, !dbg !3024

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3024
  %62 = load ptr, ptr %61, align 8, !dbg !3024
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3030
  store ptr %62, ptr %63, align 8, !dbg !3027, !tbaa !781
  %64 = icmp eq ptr %62, null, !dbg !3028
  br i1 %64, label %197, label %65, !dbg !3029

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 3, metadata !3017, metadata !DIExpression()), !dbg !3020
  %66 = icmp sgt i32 %60, -1, !dbg !3024
  br i1 %66, label %74, label %67, !dbg !3024

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3024
  store i32 %68, ptr %7, align 8, !dbg !3024
  %69 = icmp ult i32 %60, -7, !dbg !3024
  br i1 %69, label %70, label %74, !dbg !3024

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3024
  %72 = sext i32 %60 to i64, !dbg !3024
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3024
  br label %78, !dbg !3024

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3024
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3024
  store ptr %77, ptr %4, align 8, !dbg !3024
  br label %78, !dbg !3024

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3024
  %81 = load ptr, ptr %80, align 8, !dbg !3024
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3030
  store ptr %81, ptr %82, align 8, !dbg !3027, !tbaa !781
  %83 = icmp eq ptr %81, null, !dbg !3028
  br i1 %83, label %197, label %84, !dbg !3029

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 4, metadata !3017, metadata !DIExpression()), !dbg !3020
  %85 = icmp sgt i32 %79, -1, !dbg !3024
  br i1 %85, label %93, label %86, !dbg !3024

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3024
  store i32 %87, ptr %7, align 8, !dbg !3024
  %88 = icmp ult i32 %79, -7, !dbg !3024
  br i1 %88, label %89, label %93, !dbg !3024

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3024
  %91 = sext i32 %79 to i64, !dbg !3024
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3024
  br label %97, !dbg !3024

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3024
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3024
  store ptr %96, ptr %4, align 8, !dbg !3024
  br label %97, !dbg !3024

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3024
  %100 = load ptr, ptr %99, align 8, !dbg !3024
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3030
  store ptr %100, ptr %101, align 8, !dbg !3027, !tbaa !781
  %102 = icmp eq ptr %100, null, !dbg !3028
  br i1 %102, label %197, label %103, !dbg !3029

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 5, metadata !3017, metadata !DIExpression()), !dbg !3020
  %104 = icmp sgt i32 %98, -1, !dbg !3024
  br i1 %104, label %112, label %105, !dbg !3024

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3024
  store i32 %106, ptr %7, align 8, !dbg !3024
  %107 = icmp ult i32 %98, -7, !dbg !3024
  br i1 %107, label %108, label %112, !dbg !3024

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3024
  %110 = sext i32 %98 to i64, !dbg !3024
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3024
  br label %116, !dbg !3024

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3024
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3024
  store ptr %115, ptr %4, align 8, !dbg !3024
  br label %116, !dbg !3024

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3024
  %119 = load ptr, ptr %118, align 8, !dbg !3024
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3030
  store ptr %119, ptr %120, align 8, !dbg !3027, !tbaa !781
  %121 = icmp eq ptr %119, null, !dbg !3028
  br i1 %121, label %197, label %122, !dbg !3029

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 6, metadata !3017, metadata !DIExpression()), !dbg !3020
  %123 = icmp sgt i32 %117, -1, !dbg !3024
  br i1 %123, label %131, label %124, !dbg !3024

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3024
  store i32 %125, ptr %7, align 8, !dbg !3024
  %126 = icmp ult i32 %117, -7, !dbg !3024
  br i1 %126, label %127, label %131, !dbg !3024

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3024
  %129 = sext i32 %117 to i64, !dbg !3024
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3024
  br label %135, !dbg !3024

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3024
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3024
  store ptr %134, ptr %4, align 8, !dbg !3024
  br label %135, !dbg !3024

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3024
  %138 = load ptr, ptr %137, align 8, !dbg !3024
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3030
  store ptr %138, ptr %139, align 8, !dbg !3027, !tbaa !781
  %140 = icmp eq ptr %138, null, !dbg !3028
  br i1 %140, label %197, label %141, !dbg !3029

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 7, metadata !3017, metadata !DIExpression()), !dbg !3020
  %142 = icmp sgt i32 %136, -1, !dbg !3024
  br i1 %142, label %150, label %143, !dbg !3024

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3024
  store i32 %144, ptr %7, align 8, !dbg !3024
  %145 = icmp ult i32 %136, -7, !dbg !3024
  br i1 %145, label %146, label %150, !dbg !3024

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3024
  %148 = sext i32 %136 to i64, !dbg !3024
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3024
  br label %154, !dbg !3024

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3024
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3024
  store ptr %153, ptr %4, align 8, !dbg !3024
  br label %154, !dbg !3024

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3024
  %157 = load ptr, ptr %156, align 8, !dbg !3024
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3030
  store ptr %157, ptr %158, align 8, !dbg !3027, !tbaa !781
  %159 = icmp eq ptr %157, null, !dbg !3028
  br i1 %159, label %197, label %160, !dbg !3029

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 8, metadata !3017, metadata !DIExpression()), !dbg !3020
  %161 = icmp sgt i32 %155, -1, !dbg !3024
  br i1 %161, label %169, label %162, !dbg !3024

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3024
  store i32 %163, ptr %7, align 8, !dbg !3024
  %164 = icmp ult i32 %155, -7, !dbg !3024
  br i1 %164, label %165, label %169, !dbg !3024

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3024
  %167 = sext i32 %155 to i64, !dbg !3024
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3024
  br label %173, !dbg !3024

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3024
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3024
  store ptr %172, ptr %4, align 8, !dbg !3024
  br label %173, !dbg !3024

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3024
  %176 = load ptr, ptr %175, align 8, !dbg !3024
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3030
  store ptr %176, ptr %177, align 8, !dbg !3027, !tbaa !781
  %178 = icmp eq ptr %176, null, !dbg !3028
  br i1 %178, label %197, label %179, !dbg !3029

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 9, metadata !3017, metadata !DIExpression()), !dbg !3020
  %180 = icmp sgt i32 %174, -1, !dbg !3024
  br i1 %180, label %188, label %181, !dbg !3024

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3024
  store i32 %182, ptr %7, align 8, !dbg !3024
  %183 = icmp ult i32 %174, -7, !dbg !3024
  br i1 %183, label %184, label %188, !dbg !3024

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3024
  %186 = sext i32 %174 to i64, !dbg !3024
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3024
  br label %191, !dbg !3024

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3024
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3024
  store ptr %190, ptr %4, align 8, !dbg !3024
  br label %191, !dbg !3024

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3024
  %193 = load ptr, ptr %192, align 8, !dbg !3024
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3030
  store ptr %193, ptr %194, align 8, !dbg !3027, !tbaa !781
  %195 = icmp eq ptr %193, null, !dbg !3028
  %196 = select i1 %195, i64 9, i64 10, !dbg !3029
  br label %197, !dbg !3029

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3031
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3032
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3033
  ret void, !dbg !3033
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3034 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3038, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3039, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %2, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %3, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3044
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.va_start(ptr nonnull %5), !dbg !3046
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3047, !tbaa.struct !1328
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3047
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3047
  call void @llvm.va_end(ptr nonnull %5), !dbg !3048
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3049
  ret void, !dbg !3049
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3050 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3051, !tbaa !781
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.82, ptr noundef %1), !dbg !3051
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.17.99, i32 noundef 5) #37, !dbg !3052
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.100) #37, !dbg !3052
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.19.101, i32 noundef 5) #37, !dbg !3053
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.102, ptr noundef nonnull @.str.21.103) #37, !dbg !3053
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.80, ptr noundef nonnull @.str.22.104, i32 noundef 5) #37, !dbg !3054
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.105) #37, !dbg !3054
  ret void, !dbg !3055
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3056 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %2, metadata !3063, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %2, metadata !3069, metadata !DIExpression()), !dbg !3070
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3072
  call void @llvm.dbg.value(metadata ptr %4, metadata !3073, metadata !DIExpression()), !dbg !3078
  %5 = icmp eq ptr %4, null, !dbg !3080
  br i1 %5, label %6, label %7, !dbg !3082

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3083
  unreachable, !dbg !3083

7:                                                ; preds = %3
  ret ptr %4, !dbg !3084
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3066 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %2, metadata !3069, metadata !DIExpression()), !dbg !3085
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3086
  call void @llvm.dbg.value(metadata ptr %4, metadata !3073, metadata !DIExpression()), !dbg !3087
  %5 = icmp eq ptr %4, null, !dbg !3089
  br i1 %5, label %6, label %7, !dbg !3090

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3091
  unreachable, !dbg !3091

7:                                                ; preds = %3
  ret ptr %4, !dbg !3092
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3093 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3098
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3099
  call void @llvm.dbg.value(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3100
  %3 = icmp eq ptr %2, null, !dbg !3102
  br i1 %3, label %4, label %5, !dbg !3103

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3104
  unreachable, !dbg !3104

5:                                                ; preds = %1
  ret ptr %2, !dbg !3105
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3106 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3107 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3111, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %0, metadata !3113, metadata !DIExpression()), !dbg !3117
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3119
  call void @llvm.dbg.value(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3120
  %3 = icmp eq ptr %2, null, !dbg !3122
  br i1 %3, label %4, label %5, !dbg !3123

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3124
  unreachable, !dbg !3124

5:                                                ; preds = %1
  ret ptr %2, !dbg !3125
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3126 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3132
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3135
  %3 = icmp eq ptr %2, null, !dbg !3137
  br i1 %3, label %4, label %5, !dbg !3138

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3139
  unreachable, !dbg !3139

5:                                                ; preds = %1
  ret ptr %2, !dbg !3140
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3141 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3153
  %3 = icmp eq i64 %1, 0, !dbg !3155
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3155
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3156
  call void @llvm.dbg.value(metadata ptr %5, metadata !3073, metadata !DIExpression()), !dbg !3157
  %6 = icmp eq ptr %5, null, !dbg !3159
  br i1 %6, label %7, label %8, !dbg !3160

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3161
  unreachable, !dbg !3161

8:                                                ; preds = %2
  ret ptr %5, !dbg !3162
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3163 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3164 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3169, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !3171, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3174, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3177
  %3 = icmp eq i64 %1, 0, !dbg !3179
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3179
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3180
  call void @llvm.dbg.value(metadata ptr %5, metadata !3073, metadata !DIExpression()), !dbg !3181
  %6 = icmp eq ptr %5, null, !dbg !3183
  br i1 %6, label %7, label %8, !dbg !3184

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3185
  unreachable, !dbg !3185

8:                                                ; preds = %2
  ret ptr %5, !dbg !3186
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3187 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3191, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %2, metadata !3193, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata ptr %0, metadata !3195, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %2, metadata !3199, metadata !DIExpression()), !dbg !3200
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3202
  call void @llvm.dbg.value(metadata ptr %4, metadata !3073, metadata !DIExpression()), !dbg !3203
  %5 = icmp eq ptr %4, null, !dbg !3205
  br i1 %5, label %6, label %7, !dbg !3206

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3207
  unreachable, !dbg !3207

7:                                                ; preds = %3
  ret ptr %4, !dbg !3208
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3209 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3213, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %1, metadata !3214, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata ptr null, metadata !3065, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %0, metadata !3068, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3069, metadata !DIExpression()), !dbg !3216
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !3073, metadata !DIExpression()), !dbg !3219
  %4 = icmp eq ptr %3, null, !dbg !3221
  br i1 %4, label %5, label %6, !dbg !3222

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3223
  unreachable, !dbg !3223

6:                                                ; preds = %2
  ret ptr %3, !dbg !3224
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3225 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3229, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %1, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr null, metadata !3191, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %0, metadata !3192, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %1, metadata !3193, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr null, metadata !3195, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %0, metadata !3198, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3199, metadata !DIExpression()), !dbg !3234
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3236
  call void @llvm.dbg.value(metadata ptr %3, metadata !3073, metadata !DIExpression()), !dbg !3237
  %4 = icmp eq ptr %3, null, !dbg !3239
  br i1 %4, label %5, label %6, !dbg !3240

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3241
  unreachable, !dbg !3241

6:                                                ; preds = %2
  ret ptr %3, !dbg !3242
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3243 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %1, metadata !3248, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %0, metadata !718, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata ptr %1, metadata !719, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 1, metadata !720, metadata !DIExpression()), !dbg !3250
  %3 = load i64, ptr %1, align 8, !dbg !3252, !tbaa !2352
  call void @llvm.dbg.value(metadata i64 %3, metadata !721, metadata !DIExpression()), !dbg !3250
  %4 = icmp eq ptr %0, null, !dbg !3253
  br i1 %4, label %5, label %8, !dbg !3255

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3256
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3259
  br label %15, !dbg !3259

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3260
  %10 = add nuw i64 %9, 1, !dbg !3260
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3260
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3260
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %13, metadata !721, metadata !DIExpression()), !dbg !3250
  br i1 %12, label %14, label %15, !dbg !3263

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3264
  unreachable, !dbg !3264

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3250
  call void @llvm.dbg.value(metadata i64 %16, metadata !721, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %16, metadata !3068, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 1, metadata !3069, metadata !DIExpression()), !dbg !3265
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3267
  call void @llvm.dbg.value(metadata ptr %17, metadata !3073, metadata !DIExpression()), !dbg !3268
  %18 = icmp eq ptr %17, null, !dbg !3270
  br i1 %18, label %19, label %20, !dbg !3271

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3272
  unreachable, !dbg !3272

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !718, metadata !DIExpression()), !dbg !3250
  store i64 %16, ptr %1, align 8, !dbg !3273, !tbaa !2352
  ret ptr %17, !dbg !3274
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !713 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !718, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %1, metadata !719, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %2, metadata !720, metadata !DIExpression()), !dbg !3275
  %4 = load i64, ptr %1, align 8, !dbg !3276, !tbaa !2352
  call void @llvm.dbg.value(metadata i64 %4, metadata !721, metadata !DIExpression()), !dbg !3275
  %5 = icmp eq ptr %0, null, !dbg !3277
  br i1 %5, label %6, label %13, !dbg !3278

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3279
  br i1 %7, label %8, label %20, !dbg !3280

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %9, metadata !721, metadata !DIExpression()), !dbg !3275
  %10 = icmp ugt i64 %2, 128, !dbg !3283
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %12, metadata !721, metadata !DIExpression()), !dbg !3275
  br label %20, !dbg !3285

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3286
  %15 = add nuw i64 %14, 1, !dbg !3286
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3286
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3286
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %18, metadata !721, metadata !DIExpression()), !dbg !3275
  br i1 %17, label %19, label %20, !dbg !3287

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3288
  unreachable, !dbg !3288

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3275
  call void @llvm.dbg.value(metadata i64 %21, metadata !721, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %21, metadata !3068, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %2, metadata !3069, metadata !DIExpression()), !dbg !3289
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3291
  call void @llvm.dbg.value(metadata ptr %22, metadata !3073, metadata !DIExpression()), !dbg !3292
  %23 = icmp eq ptr %22, null, !dbg !3294
  br i1 %23, label %24, label %25, !dbg !3295

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3296
  unreachable, !dbg !3296

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !718, metadata !DIExpression()), !dbg !3275
  store i64 %21, ptr %1, align 8, !dbg !3297, !tbaa !2352
  ret ptr %22, !dbg !3298
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !725 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !733, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %1, metadata !734, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %2, metadata !735, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %3, metadata !736, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %4, metadata !737, metadata !DIExpression()), !dbg !3299
  %6 = load i64, ptr %1, align 8, !dbg !3300, !tbaa !2352
  call void @llvm.dbg.value(metadata i64 %6, metadata !738, metadata !DIExpression()), !dbg !3299
  %7 = ashr i64 %6, 1, !dbg !3301
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3301
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3301
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3301
  call void @llvm.dbg.value(metadata i64 %10, metadata !739, metadata !DIExpression()), !dbg !3299
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %11, metadata !739, metadata !DIExpression()), !dbg !3299
  %12 = icmp sgt i64 %3, -1, !dbg !3304
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3306
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %15, metadata !739, metadata !DIExpression()), !dbg !3299
  %16 = icmp slt i64 %4, 0, !dbg !3307
  br i1 %16, label %17, label %30, !dbg !3307

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3307
  br i1 %18, label %19, label %24, !dbg !3307

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3307
  %21 = udiv i64 9223372036854775807, %20, !dbg !3307
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3307
  br i1 %23, label %46, label %43, !dbg !3307

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3307
  br i1 %25, label %43, label %26, !dbg !3307

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3307
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3307
  %29 = icmp ult i64 %28, %15, !dbg !3307
  br i1 %29, label %46, label %43, !dbg !3307

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3307
  br i1 %31, label %43, label %32, !dbg !3307

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3307
  br i1 %33, label %34, label %40, !dbg !3307

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3307
  br i1 %35, label %43, label %36, !dbg !3307

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3307
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3307
  %39 = icmp ult i64 %38, %4, !dbg !3307
  br i1 %39, label %46, label %43, !dbg !3307

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3307
  br i1 %42, label %46, label %43, !dbg !3307

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !740, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3299
  %44 = mul i64 %15, %4, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %44, metadata !740, metadata !DIExpression()), !dbg !3299
  %45 = icmp slt i64 %44, 128, !dbg !3307
  br i1 %45, label %46, label %52, !dbg !3307

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !741, metadata !DIExpression()), !dbg !3299
  %48 = sdiv i64 %47, %4, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %48, metadata !739, metadata !DIExpression()), !dbg !3299
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %51, metadata !740, metadata !DIExpression()), !dbg !3299
  br label %52, !dbg !3312

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3299
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3299
  call void @llvm.dbg.value(metadata i64 %54, metadata !740, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %53, metadata !739, metadata !DIExpression()), !dbg !3299
  %55 = icmp eq ptr %0, null, !dbg !3313
  br i1 %55, label %56, label %57, !dbg !3315

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3316, !tbaa !2352
  br label %57, !dbg !3317

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3318
  %59 = icmp slt i64 %58, %2, !dbg !3320
  br i1 %59, label %60, label %97, !dbg !3321

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3322
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3322
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %63, metadata !739, metadata !DIExpression()), !dbg !3299
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3323
  br i1 %66, label %96, label %67, !dbg !3323

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3324

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3324
  br i1 %69, label %70, label %75, !dbg !3324

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3324
  %72 = udiv i64 9223372036854775807, %71, !dbg !3324
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3324
  br i1 %74, label %96, label %94, !dbg !3324

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3324
  br i1 %76, label %94, label %77, !dbg !3324

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3324
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3324
  %80 = icmp ult i64 %79, %63, !dbg !3324
  br i1 %80, label %96, label %94, !dbg !3324

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3324
  br i1 %82, label %94, label %83, !dbg !3324

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3324
  br i1 %84, label %85, label %91, !dbg !3324

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3324
  br i1 %86, label %94, label %87, !dbg !3324

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3324
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3324
  %90 = icmp ult i64 %89, %4, !dbg !3324
  br i1 %90, label %96, label %94, !dbg !3324

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3324
  br i1 %93, label %96, label %94, !dbg !3324

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !740, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3299
  %95 = mul i64 %63, %4, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %95, metadata !740, metadata !DIExpression()), !dbg !3299
  br label %97, !dbg !3325

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #36, !dbg !3326
  unreachable, !dbg !3326

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3299
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3299
  call void @llvm.dbg.value(metadata i64 %99, metadata !740, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %98, metadata !739, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %99, metadata !3146, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %99, metadata !3152, metadata !DIExpression()), !dbg !3329
  %100 = icmp eq i64 %99, 0, !dbg !3331
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3331
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3332
  call void @llvm.dbg.value(metadata ptr %102, metadata !3073, metadata !DIExpression()), !dbg !3333
  %103 = icmp eq ptr %102, null, !dbg !3335
  br i1 %103, label %104, label %105, !dbg !3336

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3337
  unreachable, !dbg !3337

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !733, metadata !DIExpression()), !dbg !3299
  store i64 %98, ptr %1, align 8, !dbg !3338, !tbaa !2352
  ret ptr %102, !dbg !3339
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3340 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %0, metadata !3344, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 1, metadata !3347, metadata !DIExpression()), !dbg !3348
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3350
  call void @llvm.dbg.value(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3351
  %3 = icmp eq ptr %2, null, !dbg !3353
  br i1 %3, label %4, label %5, !dbg !3354

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3355
  unreachable, !dbg !3355

5:                                                ; preds = %1
  ret ptr %2, !dbg !3356
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3357 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3345 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3344, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %1, metadata !3347, metadata !DIExpression()), !dbg !3358
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %3, metadata !3073, metadata !DIExpression()), !dbg !3360
  %4 = icmp eq ptr %3, null, !dbg !3362
  br i1 %4, label %5, label %6, !dbg !3363

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3364
  unreachable, !dbg !3364

6:                                                ; preds = %2
  ret ptr %3, !dbg !3365
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3366 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %0, metadata !3370, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 1, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 1, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 1, metadata !3379, metadata !DIExpression()), !dbg !3380
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3382
  call void @llvm.dbg.value(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3383
  %3 = icmp eq ptr %2, null, !dbg !3385
  br i1 %3, label %4, label %5, !dbg !3386

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3387
  unreachable, !dbg !3387

5:                                                ; preds = %1
  ret ptr %2, !dbg !3388
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3371 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3370, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %1, metadata !3373, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %1, metadata !3379, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %1, metadata !3379, metadata !DIExpression()), !dbg !3390
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3392
  call void @llvm.dbg.value(metadata ptr %3, metadata !3073, metadata !DIExpression()), !dbg !3393
  %4 = icmp eq ptr %3, null, !dbg !3395
  br i1 %4, label %5, label %6, !dbg !3396

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3397
  unreachable, !dbg !3397

6:                                                ; preds = %2
  ret ptr %3, !dbg !3398
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3399 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %1, metadata !3404, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()), !dbg !3406
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %3, metadata !3073, metadata !DIExpression()), !dbg !3409
  %4 = icmp eq ptr %3, null, !dbg !3411
  br i1 %4, label %5, label %6, !dbg !3412

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3413
  unreachable, !dbg !3413

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3414, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3424
  ret ptr %3, !dbg !3425
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3435
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3437
  call void @llvm.dbg.value(metadata ptr %3, metadata !3073, metadata !DIExpression()), !dbg !3438
  %4 = icmp eq ptr %3, null, !dbg !3440
  br i1 %4, label %5, label %6, !dbg !3441

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3442
  unreachable, !dbg !3442

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3414, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3445
  ret ptr %3, !dbg !3446
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3447 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %1, metadata !3452, metadata !DIExpression()), !dbg !3454
  %3 = add nsw i64 %1, 1, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %3, metadata !3111, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %3, metadata !3113, metadata !DIExpression()), !dbg !3458
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3460
  call void @llvm.dbg.value(metadata ptr %4, metadata !3073, metadata !DIExpression()), !dbg !3461
  %5 = icmp eq ptr %4, null, !dbg !3463
  br i1 %5, label %6, label %7, !dbg !3464

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3465
  unreachable, !dbg !3465

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3453, metadata !DIExpression()), !dbg !3454
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3466
  store i8 0, ptr %8, align 1, !dbg !3467, !tbaa !827
  call void @llvm.dbg.value(metadata ptr %4, metadata !3414, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3468
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3470
  ret ptr %4, !dbg !3471
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3474, metadata !DIExpression()), !dbg !3475
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3476
  %3 = add i64 %2, 1, !dbg !3477
  call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %3, metadata !3404, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %3, metadata !3097, metadata !DIExpression()), !dbg !3480
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %4, metadata !3073, metadata !DIExpression()), !dbg !3483
  %5 = icmp eq ptr %4, null, !dbg !3485
  br i1 %5, label %6, label %7, !dbg !3486

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3487
  unreachable, !dbg !3487

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3414, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %3, metadata !3421, metadata !DIExpression()), !dbg !3488
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3490
  ret ptr %4, !dbg !3491
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3492 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3497, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %1, metadata !3494, metadata !DIExpression()), !dbg !3498
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.116, ptr noundef nonnull @.str.2.117, i32 noundef 5) #37, !dbg !3497
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef %2) #37, !dbg !3497
  %3 = icmp eq i32 %1, 0, !dbg !3497
  tail call void @llvm.assume(i1 %3), !dbg !3497
  tail call void @abort() #36, !dbg !3499
  unreachable, !dbg !3499
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3500 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3538, metadata !DIExpression()), !dbg !3543
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3544
  call void @llvm.dbg.value(metadata i1 poison, metadata !3539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %0, metadata !3545, metadata !DIExpression()), !dbg !3548
  %3 = load i32, ptr %0, align 8, !dbg !3550, !tbaa !3551
  %4 = and i32 %3, 32, !dbg !3552
  %5 = icmp eq i32 %4, 0, !dbg !3552
  call void @llvm.dbg.value(metadata i1 %5, metadata !3541, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3543
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3553
  %7 = icmp eq i32 %6, 0, !dbg !3554
  call void @llvm.dbg.value(metadata i1 %7, metadata !3542, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3543
  br i1 %5, label %8, label %18, !dbg !3555

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3557
  call void @llvm.dbg.value(metadata i1 %9, metadata !3539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3543
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3558
  %11 = xor i1 %7, true, !dbg !3558
  %12 = sext i1 %11 to i32, !dbg !3558
  br i1 %10, label %21, label %13, !dbg !3558

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3559
  %15 = load i32, ptr %14, align 4, !dbg !3559, !tbaa !818
  %16 = icmp ne i32 %15, 9, !dbg !3560
  %17 = sext i1 %16 to i32, !dbg !3561
  br label %21, !dbg !3561

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3562

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3564
  store i32 0, ptr %20, align 4, !dbg !3566, !tbaa !818
  br label %21, !dbg !3564

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3543
  ret i32 %22, !dbg !3567
}

; Function Attrs: nounwind
declare !dbg !3568 i64 @__fpending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3572 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3610, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 0, metadata !3611, metadata !DIExpression()), !dbg !3614
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3615
  call void @llvm.dbg.value(metadata i32 %2, metadata !3612, metadata !DIExpression()), !dbg !3614
  %3 = icmp slt i32 %2, 0, !dbg !3616
  br i1 %3, label %4, label %6, !dbg !3618

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3619
  br label %24, !dbg !3620

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3621
  %8 = icmp eq i32 %7, 0, !dbg !3621
  br i1 %8, label %13, label %9, !dbg !3623

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3624
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3625
  %12 = icmp eq i64 %11, -1, !dbg !3626
  br i1 %12, label %16, label %13, !dbg !3627

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3628
  %15 = icmp eq i32 %14, 0, !dbg !3628
  br i1 %15, label %16, label %18, !dbg !3629

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3611, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 0, metadata !3613, metadata !DIExpression()), !dbg !3614
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %17, metadata !3613, metadata !DIExpression()), !dbg !3614
  br label %24, !dbg !3631

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3632
  %20 = load i32, ptr %19, align 4, !dbg !3632, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %20, metadata !3611, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 0, metadata !3613, metadata !DIExpression()), !dbg !3614
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %21, metadata !3613, metadata !DIExpression()), !dbg !3614
  %22 = icmp eq i32 %20, 0, !dbg !3633
  br i1 %22, label %24, label %23, !dbg !3631

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3635, !tbaa !818
  call void @llvm.dbg.value(metadata i32 -1, metadata !3613, metadata !DIExpression()), !dbg !3614
  br label %24, !dbg !3637

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3614
  ret i32 %25, !dbg !3638
}

; Function Attrs: nofree nounwind
declare !dbg !3639 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !3640 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !3641 i32 @__freading(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3642 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3645 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3683, metadata !DIExpression()), !dbg !3684
  %2 = icmp eq ptr %0, null, !dbg !3685
  br i1 %2, label %6, label %3, !dbg !3687

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3688
  %5 = icmp eq i32 %4, 0, !dbg !3688
  br i1 %5, label %6, label %8, !dbg !3689

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3690
  br label %16, !dbg !3691

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3692, metadata !DIExpression()), !dbg !3697
  %9 = load i32, ptr %0, align 8, !dbg !3699, !tbaa !3551
  %10 = and i32 %9, 256, !dbg !3701
  %11 = icmp eq i32 %10, 0, !dbg !3701
  br i1 %11, label %14, label %12, !dbg !3702

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3703
  br label %14, !dbg !3703

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3704
  br label %16, !dbg !3705

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3684
  ret i32 %17, !dbg !3706
}

; Function Attrs: nofree nounwind
declare !dbg !3707 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3708 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i32 %2, metadata !3749, metadata !DIExpression()), !dbg !3753
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3754
  %5 = load ptr, ptr %4, align 8, !dbg !3754, !tbaa !3755
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3756
  %7 = load ptr, ptr %6, align 8, !dbg !3756, !tbaa !3757
  %8 = icmp eq ptr %5, %7, !dbg !3758
  br i1 %8, label %9, label %27, !dbg !3759

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3760
  %11 = load ptr, ptr %10, align 8, !dbg !3760, !tbaa !1210
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3761
  %13 = load ptr, ptr %12, align 8, !dbg !3761, !tbaa !3762
  %14 = icmp eq ptr %11, %13, !dbg !3763
  br i1 %14, label %15, label %27, !dbg !3764

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3765
  %17 = load ptr, ptr %16, align 8, !dbg !3765, !tbaa !3766
  %18 = icmp eq ptr %17, null, !dbg !3767
  br i1 %18, label %19, label %27, !dbg !3768

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3769
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %21, metadata !3750, metadata !DIExpression()), !dbg !3771
  %22 = icmp eq i64 %21, -1, !dbg !3772
  br i1 %22, label %29, label %23, !dbg !3774

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3775, !tbaa !3551
  %25 = and i32 %24, -17, !dbg !3775
  store i32 %25, ptr %0, align 8, !dbg !3775, !tbaa !3551
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3776
  store i64 %21, ptr %26, align 8, !dbg !3777, !tbaa !3778
  br label %29, !dbg !3779

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3780
  br label %29, !dbg !3781

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3753
  ret i32 %30, !dbg !3782
}

; Function Attrs: nofree nounwind
declare !dbg !3783 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3791, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %1, metadata !3792, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %2, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %3, metadata !3794, metadata !DIExpression()), !dbg !3796
  %5 = icmp eq ptr %1, null, !dbg !3797
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3799
  %7 = select i1 %5, ptr @.str.129, ptr %1, !dbg !3799
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3799
  call void @llvm.dbg.value(metadata i64 %8, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %7, metadata !3792, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %6, metadata !3791, metadata !DIExpression()), !dbg !3796
  %9 = icmp eq ptr %3, null, !dbg !3800
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3802
  call void @llvm.dbg.value(metadata ptr %10, metadata !3794, metadata !DIExpression()), !dbg !3796
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %11, metadata !3795, metadata !DIExpression()), !dbg !3796
  %12 = icmp ult i64 %11, -3, !dbg !3804
  br i1 %12, label %13, label %17, !dbg !3806

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3807
  %15 = icmp eq i32 %14, 0, !dbg !3807
  br i1 %15, label %16, label %29, !dbg !3808

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3809, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %10, metadata !3816, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 8, metadata !3820, metadata !DIExpression()), !dbg !3821
  store i64 0, ptr %10, align 1, !dbg !3823
  br label %29, !dbg !3824

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3825
  br i1 %18, label %19, label %20, !dbg !3827

19:                                               ; preds = %17
  tail call void @abort() #36, !dbg !3828
  unreachable, !dbg !3828

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3829

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3831
  br i1 %23, label %29, label %24, !dbg !3832

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3833
  br i1 %25, label %29, label %26, !dbg !3836

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3837, !tbaa !827
  %28 = zext i8 %27 to i32, !dbg !3838
  store i32 %28, ptr %6, align 4, !dbg !3839, !tbaa !818
  br label %29, !dbg !3840

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3796
  ret i64 %30, !dbg !3841
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3842 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3848 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3850, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %1, metadata !3851, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %2, metadata !3852, metadata !DIExpression()), !dbg !3854
  %4 = icmp eq i64 %2, 0, !dbg !3855
  br i1 %4, label %8, label %5, !dbg !3855

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3855
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3855
  br i1 %7, label %13, label %8, !dbg !3855

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3853, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3854
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3853, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3854
  %9 = mul i64 %2, %1, !dbg !3855
  call void @llvm.dbg.value(metadata i64 %9, metadata !3853, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %0, metadata !3857, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 %9, metadata !3860, metadata !DIExpression()), !dbg !3861
  %10 = icmp eq i64 %9, 0, !dbg !3863
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3863
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3864
  br label %15, !dbg !3865

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3853, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3854
  %14 = tail call ptr @__errno_location() #39, !dbg !3866
  store i32 12, ptr %14, align 4, !dbg !3868, !tbaa !818
  br label %15, !dbg !3869

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3854
  ret ptr %16, !dbg !3870
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3871 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3873, metadata !DIExpression()), !dbg !3878
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3879
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3874, metadata !DIExpression()), !dbg !3880
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3881
  %4 = icmp eq i32 %3, 0, !dbg !3881
  br i1 %4, label %5, label %12, !dbg !3883

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3884, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr @.str.134, metadata !3887, metadata !DIExpression()), !dbg !3888
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.134, i64 2), !dbg !3891
  %7 = icmp eq i32 %6, 0, !dbg !3892
  br i1 %7, label %11, label %8, !dbg !3893

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3884, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr @.str.1.135, metadata !3887, metadata !DIExpression()), !dbg !3894
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.135, i64 6), !dbg !3896
  %10 = icmp eq i32 %9, 0, !dbg !3897
  br i1 %10, label %11, label %12, !dbg !3898

11:                                               ; preds = %8, %5
  br label %12, !dbg !3899

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3878
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3900
  ret i1 %13, !dbg !3900
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3901 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3905, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata ptr %1, metadata !3906, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %2, metadata !3907, metadata !DIExpression()), !dbg !3908
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3909
  ret i32 %4, !dbg !3910
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3911 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3915, metadata !DIExpression()), !dbg !3916
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3917
  ret ptr %2, !dbg !3918
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3923
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3924
  call void @llvm.dbg.value(metadata ptr %2, metadata !3922, metadata !DIExpression()), !dbg !3923
  ret ptr %2, !dbg !3925
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3926 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %2, metadata !3930, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3936
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %4, metadata !3922, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata ptr %4, metadata !3931, metadata !DIExpression()), !dbg !3935
  %5 = icmp eq ptr %4, null, !dbg !3939
  br i1 %5, label %6, label %9, !dbg !3940

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3941
  br i1 %7, label %19, label %8, !dbg !3944

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3945, !tbaa !827
  br label %19, !dbg !3946

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3947
  call void @llvm.dbg.value(metadata i64 %10, metadata !3932, metadata !DIExpression()), !dbg !3948
  %11 = icmp ult i64 %10, %2, !dbg !3949
  br i1 %11, label %12, label %14, !dbg !3951

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %1, metadata !3954, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata ptr %4, metadata !3957, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %13, metadata !3958, metadata !DIExpression()), !dbg !3959
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !3961
  br label %19, !dbg !3962

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3963
  br i1 %15, label %19, label %16, !dbg !3966

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3967
  call void @llvm.dbg.value(metadata ptr %1, metadata !3954, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %4, metadata !3957, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 %17, metadata !3958, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3971
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3972
  store i8 0, ptr %18, align 1, !dbg !3973, !tbaa !827
  br label %19, !dbg !3974

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3975
  ret i32 %20, !dbg !3976
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!126, !342, !346, !361, !666, !700, !418, !432, !483, !702, !658, !709, !743, !745, !747, !749, !751, !682, !753, !756, !758, !760}
!llvm.ident = !{!762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762, !762}
!llvm.module.flags = !{!763, !764, !765, !766, !767, !768, !769}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/echo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35cdcf3349b867ec9786bdb5dc592ba7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!126 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !127, retainedTypes: !147, globals: !156, splitDebugInlining: false, nameTableKind: None)
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
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!281 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !284)
!283 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!306 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!342 = distinct !DICompileUnit(language: DW_LANG_C11, file: !339, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !343, splitDebugInlining: false, nameTableKind: None)
!343 = !{!337, !340}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "file_name", scope: !346, file: !347, line: 45, type: !125, isLocal: true, isDefinition: true)
!346 = distinct !DICompileUnit(language: DW_LANG_C11, file: !347, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !348, splitDebugInlining: false, nameTableKind: None)
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
!360 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !361, file: !362, line: 66, type: !413, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C11, file: !362, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, globals: !364, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!363 = !{!149, !155}
!364 = !{!365, !367, !392, !394, !396, !398, !359, !400, !402, !404, !406, !411}
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !362, line: 272, type: !30, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "old_file_name", scope: !369, file: !362, line: 304, type: !125, isLocal: true, isDefinition: true)
!369 = distinct !DISubprogram(name: "verror_at_line", scope: !362, file: !362, line: 298, type: !370, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !385)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !150, !150, !125, !129, !125, !372}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !373, line: 52, baseType: !374)
!373 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !375, line: 14, baseType: !376)
!375 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !377, baseType: !378)
!377 = !DIFile(filename: "lib/error.c", directory: "/src")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !379)
!379 = !{!380, !381, !382, !383, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !378, file: !377, baseType: !149, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !378, file: !377, baseType: !149, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !378, file: !377, baseType: !149, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !378, file: !377, baseType: !150, size: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !378, file: !377, baseType: !150, size: 32, offset: 224)
!385 = !{!386, !387, !388, !389, !390, !391}
!386 = !DILocalVariable(name: "status", arg: 1, scope: !369, file: !362, line: 298, type: !150)
!387 = !DILocalVariable(name: "errnum", arg: 2, scope: !369, file: !362, line: 298, type: !150)
!388 = !DILocalVariable(name: "file_name", arg: 3, scope: !369, file: !362, line: 298, type: !125)
!389 = !DILocalVariable(name: "line_number", arg: 4, scope: !369, file: !362, line: 298, type: !129)
!390 = !DILocalVariable(name: "message", arg: 5, scope: !369, file: !362, line: 298, type: !125)
!391 = !DILocalVariable(name: "args", arg: 6, scope: !369, file: !362, line: 298, type: !372)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "old_line_number", scope: !369, file: !362, line: 305, type: !129, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !362, line: 338, type: !163, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !192, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !362, line: 346, type: !173, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "error_message_count", scope: !361, file: !362, line: 69, type: !129, isLocal: false, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !361, file: !362, line: 295, type: !150, isLocal: false, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !105, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !362, line: 208, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 21)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !362, line: 214, type: !30, isLocal: true, isDefinition: true)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "program_name", scope: !418, file: !419, line: 31, type: !125, isLocal: false, isDefinition: true)
!418 = distinct !DICompileUnit(language: DW_LANG_C11, file: !419, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !420, globals: !421, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!420 = !{!148}
!421 = !{!416, !422, !424}
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !419, line: 46, type: !192, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !419, line: 49, type: !163, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "utf07FF", scope: !428, file: !429, line: 46, type: !456, isLocal: true, isDefinition: true)
!428 = distinct !DISubprogram(name: "proper_name_lite", scope: !429, file: !429, line: 38, type: !430, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !434)
!429 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!430 = !DISubroutineType(types: !431)
!431 = !{!125, !125, !125}
!432 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !433, splitDebugInlining: false, nameTableKind: None)
!433 = !{!426}
!434 = !{!435, !436, !437, !438, !443}
!435 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !428, file: !429, line: 38, type: !125)
!436 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !428, file: !429, line: 38, type: !125)
!437 = !DILocalVariable(name: "translation", scope: !428, file: !429, line: 40, type: !125)
!438 = !DILocalVariable(name: "w", scope: !428, file: !429, line: 47, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !440, line: 37, baseType: !441)
!440 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !306, line: 57, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !306, line: 42, baseType: !129)
!443 = !DILocalVariable(name: "mbs", scope: !428, file: !429, line: 48, type: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !445, line: 6, baseType: !446)
!445 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !447, line: 21, baseType: !448)
!447 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 13, size: 64, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !448, file: !447, line: 15, baseType: !150, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !448, file: !447, line: 20, baseType: !452, size: 32, offset: 32)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !447, line: 16, size: 32, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !452, file: !447, line: 18, baseType: !129, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !452, file: !447, line: 19, baseType: !163, size: 32)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !174)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !459, line: 78, type: !192, isLocal: true, isDefinition: true)
!459 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !459, line: 79, type: !168, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !459, line: 80, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 13)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !459, line: 81, type: !464, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !459, line: 82, type: !328, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !459, line: 83, type: !173, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !459, line: 84, type: !192, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !459, line: 85, type: !105, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !459, line: 86, type: !105, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !459, line: 87, type: !192, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !483, file: !459, line: 76, type: !569, isLocal: false, isDefinition: true)
!483 = distinct !DICompileUnit(language: DW_LANG_C11, file: !459, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !484, retainedTypes: !504, globals: !505, splitDebugInlining: false, nameTableKind: None)
!484 = !{!485, !499, !132}
!485 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !486, line: 42, baseType: !129, size: 32, elements: !487)
!486 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!488 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!489 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!490 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!491 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!492 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!493 = !DIEnumerator(name: "c_quoting_style", value: 5)
!494 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!495 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!496 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!497 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!498 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!499 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !486, line: 254, baseType: !129, size: 32, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!502 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!503 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!504 = !{!150, !151, !152}
!505 = !{!457, !460, !462, !467, !469, !471, !473, !475, !477, !479, !481, !506, !510, !520, !522, !527, !529, !531, !533, !535, !558, !565, !567}
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !483, file: !459, line: 92, type: !508, isLocal: false, isDefinition: true)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 320, elements: !96)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !483, file: !459, line: 1040, type: !512, isLocal: false, isDefinition: true)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !459, line: 56, size: 448, elements: !513)
!513 = !{!514, !515, !516, !518, !519}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !512, file: !459, line: 59, baseType: !485, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !459, line: 62, baseType: !150, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !512, file: !459, line: 66, baseType: !517, size: 256, offset: 64)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !193)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !512, file: !459, line: 69, baseType: !125, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !512, file: !459, line: 72, baseType: !125, size: 64, offset: 384)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !483, file: !459, line: 107, type: !512, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "slot0", scope: !483, file: !459, line: 831, type: !524, isLocal: true, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 256)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !459, line: 321, type: !173, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !459, line: 357, type: !173, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !459, line: 358, type: !173, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !459, line: 199, type: !105, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "quote", scope: !537, file: !459, line: 228, type: !556, isLocal: true, isDefinition: true)
!537 = distinct !DISubprogram(name: "gettext_quote", scope: !459, file: !459, line: 197, type: !538, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!125, !125, !485}
!540 = !{!541, !542, !543, !544, !545}
!541 = !DILocalVariable(name: "msgid", arg: 1, scope: !537, file: !459, line: 197, type: !125)
!542 = !DILocalVariable(name: "s", arg: 2, scope: !537, file: !459, line: 197, type: !485)
!543 = !DILocalVariable(name: "translation", scope: !537, file: !459, line: 199, type: !125)
!544 = !DILocalVariable(name: "w", scope: !537, file: !459, line: 229, type: !439)
!545 = !DILocalVariable(name: "mbs", scope: !537, file: !459, line: 230, type: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !445, line: 6, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !447, line: 21, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 13, size: 64, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !548, file: !447, line: 15, baseType: !150, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !548, file: !447, line: 20, baseType: !552, size: 32, offset: 32)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !447, line: 16, size: 32, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !552, file: !447, line: 18, baseType: !129, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !552, file: !447, line: 19, baseType: !163, size: 32)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !557)
!557 = !{!175, !165}
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "slotvec", scope: !483, file: !459, line: 834, type: !560, isLocal: true, isDefinition: true)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !459, line: 823, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !561, file: !459, line: 825, baseType: !152, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !561, file: !459, line: 826, baseType: !148, size: 64, offset: 64)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "nslots", scope: !483, file: !459, line: 832, type: !150, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "slotvec0", scope: !483, file: !459, line: 833, type: !561, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 704, elements: !10)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !573, line: 67, type: !3, isLocal: true, isDefinition: true)
!573 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !573, line: 69, type: !105, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !573, line: 83, type: !105, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !573, line: 83, type: !163, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !573, line: 85, type: !173, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !573, line: 88, type: !584, isLocal: true, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 171)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !573, line: 88, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 34)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !573, line: 105, type: !82, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !573, line: 109, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 23)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !573, line: 113, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 28)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !573, line: 120, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 32)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !573, line: 127, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 36)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !573, line: 134, type: !210, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !573, line: 142, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 44)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !573, line: 150, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 48)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !573, line: 159, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 52)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !573, line: 170, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 60)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !573, line: 248, type: !328, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !573, line: 248, type: !235, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !573, line: 254, type: !328, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !573, line: 254, type: !112, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !573, line: 254, type: !210, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !573, line: 259, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 39)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !573, line: 259, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 29)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !658, file: !659, line: 26, type: !661, isLocal: false, isDefinition: true)
!658 = distinct !DICompileUnit(language: DW_LANG_C11, file: !659, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !660, splitDebugInlining: false, nameTableKind: None)
!659 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!660 = !{!656}
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 376, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 47)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "exit_failure", scope: !666, file: !667, line: 24, type: !669, isLocal: false, isDefinition: true)
!666 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !668, splitDebugInlining: false, nameTableKind: None)
!667 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!668 = !{!664}
!669 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !672, line: 34, type: !85, isLocal: true, isDefinition: true)
!672 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !672, line: 34, type: !105, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !672, line: 34, type: !205, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !679, line: 108, type: !90, isLocal: true, isDefinition: true)
!679 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "internal_state", scope: !682, file: !679, line: 97, type: !685, isLocal: true, isDefinition: true)
!682 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !683, globals: !684, splitDebugInlining: false, nameTableKind: None)
!683 = !{!149, !152, !155}
!684 = !{!677, !680}
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !445, line: 6, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !447, line: 21, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 13, size: 64, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !687, file: !447, line: 15, baseType: !150, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !687, file: !447, line: 20, baseType: !691, size: 32, offset: 32)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !447, line: 16, size: 32, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !691, file: !447, line: 18, baseType: !129, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !691, file: !447, line: 19, baseType: !163, size: 32)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !697, line: 35, type: !173, isLocal: true, isDefinition: true)
!697 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !697, line: 35, type: !168, isLocal: true, isDefinition: true)
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !573, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !703, retainedTypes: !707, globals: !708, splitDebugInlining: false, nameTableKind: None)
!703 = !{!704}
!704 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !573, line: 40, baseType: !129, size: 32, elements: !705)
!705 = !{!706}
!706 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!707 = !{!149}
!708 = !{!571, !574, !576, !578, !580, !582, !587, !592, !594, !599, !604, !609, !614, !616, !621, !626, !631, !636, !638, !640, !642, !644, !646, !651}
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !711, retainedTypes: !742, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!711 = !{!712, !724}
!712 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !713, file: !710, line: 188, baseType: !129, size: 32, elements: !722)
!713 = distinct !DISubprogram(name: "x2nrealloc", scope: !710, file: !710, line: 176, type: !714, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !717)
!714 = !DISubroutineType(types: !715)
!715 = !{!149, !149, !716, !152}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(name: "p", arg: 1, scope: !713, file: !710, line: 176, type: !149)
!719 = !DILocalVariable(name: "pn", arg: 2, scope: !713, file: !710, line: 176, type: !716)
!720 = !DILocalVariable(name: "s", arg: 3, scope: !713, file: !710, line: 176, type: !152)
!721 = !DILocalVariable(name: "n", scope: !713, file: !710, line: 178, type: !152)
!722 = !{!723}
!723 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !725, file: !710, line: 228, baseType: !129, size: 32, elements: !722)
!725 = distinct !DISubprogram(name: "xpalloc", scope: !710, file: !710, line: 223, type: !726, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !732)
!726 = !DISubroutineType(types: !727)
!727 = !{!149, !149, !728, !729, !731, !729}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !730, line: 130, baseType: !731)
!730 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !153, line: 35, baseType: !307)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741}
!733 = !DILocalVariable(name: "pa", arg: 1, scope: !725, file: !710, line: 223, type: !149)
!734 = !DILocalVariable(name: "pn", arg: 2, scope: !725, file: !710, line: 223, type: !728)
!735 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !725, file: !710, line: 223, type: !729)
!736 = !DILocalVariable(name: "n_max", arg: 4, scope: !725, file: !710, line: 223, type: !731)
!737 = !DILocalVariable(name: "s", arg: 5, scope: !725, file: !710, line: 223, type: !729)
!738 = !DILocalVariable(name: "n0", scope: !725, file: !710, line: 230, type: !729)
!739 = !DILocalVariable(name: "n", scope: !725, file: !710, line: 237, type: !729)
!740 = !DILocalVariable(name: "nbytes", scope: !725, file: !710, line: 248, type: !729)
!741 = !DILocalVariable(name: "adjusted_nbytes", scope: !725, file: !710, line: 252, type: !729)
!742 = !{!148, !149, !266, !307, !154}
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !744, splitDebugInlining: false, nameTableKind: None)
!744 = !{!670, !673, !675}
!745 = distinct !DICompileUnit(language: DW_LANG_C11, file: !746, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!746 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!747 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!748 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!750 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!755 = !{!266, !154, !149}
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !757, splitDebugInlining: false, nameTableKind: None)
!757 = !{!695, !698}
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!762 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!763 = !{i32 7, !"Dwarf Version", i32 5}
!764 = !{i32 2, !"Debug Info Version", i32 3}
!765 = !{i32 1, !"wchar_size", i32 4}
!766 = !{i32 8, !"PIC Level", i32 2}
!767 = !{i32 7, !"PIE Level", i32 2}
!768 = !{i32 7, !"uwtable", i32 2}
!769 = !{i32 7, !"frame-pointer", i32 1}
!770 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !771, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !150}
!773 = !{!774}
!774 = !DILocalVariable(name: "status", arg: 1, scope: !770, file: !2, line: 37, type: !150)
!775 = !DILocation(line: 0, scope: !770)
!776 = !DILocation(line: 41, column: 3, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 41, column: 3)
!778 = distinct !DILexicalBlock(scope: !770, file: !2, line: 41, column: 3)
!779 = !DILocation(line: 41, column: 3, scope: !778)
!780 = !DILocation(line: 43, column: 3, scope: !770)
!781 = !{!782, !782, i64 0}
!782 = !{!"any pointer", !783, i64 0}
!783 = !{!"omnipotent char", !784, i64 0}
!784 = !{!"Simple C/C++ TBAA"}
!785 = !DILocation(line: 47, column: 3, scope: !770)
!786 = !DILocation(line: 51, column: 3, scope: !770)
!787 = !DILocation(line: 54, column: 3, scope: !770)
!788 = !DILocation(line: 61, column: 3, scope: !770)
!789 = !DILocation(line: 68, column: 3, scope: !770)
!790 = !DILocation(line: 69, column: 3, scope: !770)
!791 = !DILocation(line: 70, column: 3, scope: !770)
!792 = !DILocation(line: 75, column: 3, scope: !770)
!793 = !DILocation(line: 87, column: 3, scope: !770)
!794 = !DILocation(line: 91, column: 3, scope: !770)
!795 = !DILocation(line: 92, column: 3, scope: !770)
!796 = !DILocation(line: 96, column: 3, scope: !770)
!797 = !DILocation(line: 97, column: 3, scope: !770)
!798 = !DISubprogram(name: "__assert_fail", scope: !799, file: !799, line: 69, type: !800, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !802)
!799 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!800 = !DISubroutineType(types: !801)
!801 = !{null, !125, !125, !129, !125}
!802 = !{}
!803 = !DISubprogram(name: "dcgettext", scope: !804, file: !804, line: 51, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!804 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!805 = !DISubroutineType(types: !806)
!806 = !{!148, !125, !125, !150}
!807 = !DISubprogram(name: "__printf_chk", scope: !808, file: !808, line: 95, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!808 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!809 = !DISubroutineType(types: !810)
!810 = !{!150, !150, !811, null}
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!812 = !DISubprogram(name: "fputs_unlocked", scope: !373, file: !373, line: 691, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!813 = !DISubroutineType(types: !814)
!814 = !{!150, !811, !815}
!815 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !279)
!816 = !DILocation(line: 0, scope: !121)
!817 = !DILocation(line: 581, column: 7, scope: !264)
!818 = !{!819, !819, i64 0}
!819 = !{!"int", !783, i64 0}
!820 = !DILocation(line: 581, column: 19, scope: !264)
!821 = !DILocation(line: 581, column: 7, scope: !121)
!822 = !DILocation(line: 585, column: 26, scope: !263)
!823 = !DILocation(line: 0, scope: !263)
!824 = !DILocation(line: 586, column: 23, scope: !263)
!825 = !DILocation(line: 586, column: 28, scope: !263)
!826 = !DILocation(line: 586, column: 32, scope: !263)
!827 = !{!783, !783, i64 0}
!828 = !DILocation(line: 586, column: 38, scope: !263)
!829 = !DILocalVariable(name: "__s1", arg: 1, scope: !830, file: !831, line: 1359, type: !125)
!830 = distinct !DISubprogram(name: "streq", scope: !831, file: !831, line: 1359, type: !832, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !834)
!831 = !DIFile(filename: "./lib/string.h", directory: "/src")
!832 = !DISubroutineType(types: !833)
!833 = !{!266, !125, !125}
!834 = !{!829, !835}
!835 = !DILocalVariable(name: "__s2", arg: 2, scope: !830, file: !831, line: 1359, type: !125)
!836 = !DILocation(line: 0, scope: !830, inlinedAt: !837)
!837 = distinct !DILocation(line: 586, column: 41, scope: !263)
!838 = !DILocation(line: 1361, column: 11, scope: !830, inlinedAt: !837)
!839 = !DILocation(line: 1361, column: 10, scope: !830, inlinedAt: !837)
!840 = !DILocation(line: 586, column: 19, scope: !263)
!841 = !DILocation(line: 587, column: 5, scope: !263)
!842 = !DILocation(line: 588, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !121, file: !122, line: 588, column: 7)
!844 = !DILocation(line: 588, column: 7, scope: !121)
!845 = !DILocation(line: 590, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !122, line: 589, column: 5)
!847 = !DILocation(line: 591, column: 7, scope: !846)
!848 = !DILocation(line: 595, column: 37, scope: !121)
!849 = !DILocation(line: 595, column: 35, scope: !121)
!850 = !DILocation(line: 596, column: 29, scope: !121)
!851 = !DILocation(line: 597, column: 8, scope: !272)
!852 = !DILocation(line: 597, column: 7, scope: !121)
!853 = !DILocation(line: 604, column: 24, scope: !271)
!854 = !DILocation(line: 604, column: 12, scope: !272)
!855 = !DILocation(line: 0, scope: !270)
!856 = !DILocation(line: 610, column: 16, scope: !270)
!857 = !DILocation(line: 610, column: 7, scope: !270)
!858 = !DILocation(line: 611, column: 21, scope: !270)
!859 = !{!860, !860, i64 0}
!860 = !{!"short", !783, i64 0}
!861 = !DILocation(line: 611, column: 19, scope: !270)
!862 = !DILocation(line: 611, column: 16, scope: !270)
!863 = !DILocation(line: 610, column: 30, scope: !270)
!864 = distinct !{!864, !857, !858, !865}
!865 = !{!"llvm.loop.mustprogress"}
!866 = !DILocation(line: 612, column: 18, scope: !867)
!867 = distinct !DILexicalBlock(scope: !270, file: !122, line: 612, column: 11)
!868 = !DILocation(line: 612, column: 11, scope: !270)
!869 = !DILocation(line: 620, column: 23, scope: !121)
!870 = !DILocation(line: 625, column: 39, scope: !121)
!871 = !DILocation(line: 626, column: 3, scope: !121)
!872 = !DILocation(line: 626, column: 10, scope: !121)
!873 = !DILocation(line: 626, column: 21, scope: !121)
!874 = !DILocation(line: 628, column: 44, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !122, line: 628, column: 11)
!876 = distinct !DILexicalBlock(scope: !121, file: !122, line: 627, column: 5)
!877 = !DILocation(line: 628, column: 32, scope: !875)
!878 = !DILocation(line: 628, column: 49, scope: !875)
!879 = !DILocation(line: 628, column: 11, scope: !876)
!880 = !DILocation(line: 630, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !122, line: 630, column: 11)
!882 = !DILocation(line: 630, column: 11, scope: !876)
!883 = !DILocation(line: 632, column: 26, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !122, line: 632, column: 15)
!885 = distinct !DILexicalBlock(scope: !881, file: !122, line: 631, column: 9)
!886 = !DILocation(line: 632, column: 34, scope: !884)
!887 = !DILocation(line: 632, column: 37, scope: !884)
!888 = !DILocation(line: 632, column: 15, scope: !885)
!889 = !DILocation(line: 640, column: 16, scope: !876)
!890 = distinct !{!890, !871, !891, !865}
!891 = !DILocation(line: 641, column: 5, scope: !121)
!892 = !DILocation(line: 644, column: 3, scope: !121)
!893 = !DILocation(line: 0, scope: !830, inlinedAt: !894)
!894 = distinct !DILocation(line: 648, column: 31, scope: !121)
!895 = !DILocation(line: 0, scope: !830, inlinedAt: !896)
!896 = distinct !DILocation(line: 649, column: 31, scope: !121)
!897 = !DILocation(line: 0, scope: !830, inlinedAt: !898)
!898 = distinct !DILocation(line: 650, column: 31, scope: !121)
!899 = !DILocation(line: 0, scope: !830, inlinedAt: !900)
!900 = distinct !DILocation(line: 651, column: 31, scope: !121)
!901 = !DILocation(line: 0, scope: !830, inlinedAt: !902)
!902 = distinct !DILocation(line: 652, column: 31, scope: !121)
!903 = !DILocation(line: 0, scope: !830, inlinedAt: !904)
!904 = distinct !DILocation(line: 653, column: 31, scope: !121)
!905 = !DILocation(line: 0, scope: !830, inlinedAt: !906)
!906 = distinct !DILocation(line: 654, column: 31, scope: !121)
!907 = !DILocation(line: 0, scope: !830, inlinedAt: !908)
!908 = distinct !DILocation(line: 655, column: 31, scope: !121)
!909 = !DILocation(line: 0, scope: !830, inlinedAt: !910)
!910 = distinct !DILocation(line: 656, column: 31, scope: !121)
!911 = !DILocation(line: 0, scope: !830, inlinedAt: !912)
!912 = distinct !DILocation(line: 657, column: 31, scope: !121)
!913 = !DILocation(line: 663, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !121, file: !122, line: 663, column: 7)
!915 = !DILocation(line: 664, column: 7, scope: !914)
!916 = !DILocation(line: 664, column: 10, scope: !914)
!917 = !DILocation(line: 663, column: 7, scope: !121)
!918 = !DILocation(line: 669, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !122, line: 665, column: 5)
!920 = !DILocation(line: 671, column: 5, scope: !919)
!921 = !DILocation(line: 676, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !914, file: !122, line: 673, column: 5)
!923 = !DILocation(line: 679, column: 3, scope: !121)
!924 = !DILocation(line: 683, column: 3, scope: !121)
!925 = !DILocation(line: 686, column: 3, scope: !121)
!926 = !DILocation(line: 688, column: 3, scope: !121)
!927 = !DILocation(line: 691, column: 3, scope: !121)
!928 = !DILocation(line: 695, column: 3, scope: !121)
!929 = !DILocation(line: 696, column: 1, scope: !121)
!930 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !122, file: !122, line: 836, type: !931, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !933)
!931 = !DISubroutineType(cc: DW_CC_nocall, types: !932)
!932 = !{null, !125}
!933 = !{!934, !935, !942, !943, !945, !946}
!934 = !DILocalVariable(name: "program", arg: 1, scope: !930, file: !122, line: 836, type: !125)
!935 = !DILocalVariable(name: "infomap", scope: !930, file: !122, line: 838, type: !936)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 896, elements: !106)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !930, file: !122, line: 838, size: 128, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !938, file: !122, line: 838, baseType: !125, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !938, file: !122, line: 838, baseType: !125, size: 64, offset: 64)
!942 = !DILocalVariable(name: "node", scope: !930, file: !122, line: 848, type: !125)
!943 = !DILocalVariable(name: "map_prog", scope: !930, file: !122, line: 849, type: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!945 = !DILocalVariable(name: "lc_messages", scope: !930, file: !122, line: 861, type: !125)
!946 = !DILocalVariable(name: "url_program", scope: !930, file: !122, line: 874, type: !125)
!947 = !DILocation(line: 0, scope: !930)
!948 = !DILocation(line: 857, column: 3, scope: !930)
!949 = !DILocation(line: 861, column: 29, scope: !930)
!950 = !DILocation(line: 862, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !930, file: !122, line: 862, column: 7)
!952 = !DILocation(line: 862, column: 19, scope: !951)
!953 = !DILocation(line: 862, column: 22, scope: !951)
!954 = !DILocation(line: 862, column: 7, scope: !930)
!955 = !DILocation(line: 868, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !951, file: !122, line: 863, column: 5)
!957 = !DILocation(line: 870, column: 5, scope: !956)
!958 = !DILocation(line: 875, column: 3, scope: !930)
!959 = !DILocation(line: 877, column: 3, scope: !930)
!960 = !DILocation(line: 879, column: 1, scope: !930)
!961 = !DISubprogram(name: "exit", scope: !962, file: !962, line: 624, type: !771, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !802)
!962 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!963 = !DISubprogram(name: "setlocale", scope: !964, file: !964, line: 122, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!964 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!965 = !DISubroutineType(types: !966)
!966 = !{!148, !150, !125}
!967 = !DISubprogram(name: "strncmp", scope: !968, file: !968, line: 159, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!968 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!969 = !DISubroutineType(types: !970)
!970 = !{!150, !125, !125, !152}
!971 = !DISubprogram(name: "getenv", scope: !962, file: !962, line: 641, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!972 = !DISubroutineType(types: !973)
!973 = !{!148, !125}
!974 = !DISubprogram(name: "strcmp", scope: !968, file: !968, line: 156, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!975 = !DISubroutineType(types: !976)
!976 = !{!150, !125, !125}
!977 = !DISubprogram(name: "strspn", scope: !968, file: !968, line: 297, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!978 = !DISubroutineType(types: !979)
!979 = !{!154, !125, !125}
!980 = !DISubprogram(name: "strchr", scope: !968, file: !968, line: 246, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!981 = !DISubroutineType(types: !982)
!982 = !{!148, !125, !150}
!983 = !DISubprogram(name: "__ctype_b_loc", scope: !133, file: !133, line: 79, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!984 = !DISubroutineType(types: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!989 = !DISubprogram(name: "strcspn", scope: !968, file: !968, line: 293, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!990 = !DISubprogram(name: "fwrite_unlocked", scope: !373, file: !373, line: 704, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!991 = !DISubroutineType(types: !992)
!992 = !{!152, !993, !152, !152, !815}
!993 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!996 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 121, type: !997, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1000)
!997 = !DISubroutineType(types: !998)
!998 = !{!150, !150, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1010, !1011, !1015, !1016, !1022, !1023}
!1001 = !DILocalVariable(name: "argc", arg: 1, scope: !996, file: !2, line: 121, type: !150)
!1002 = !DILocalVariable(name: "argv", arg: 2, scope: !996, file: !2, line: 121, type: !999)
!1003 = !DILocalVariable(name: "display_return", scope: !996, file: !2, line: 123, type: !266)
!1004 = !DILocalVariable(name: "posixly_correct", scope: !996, file: !2, line: 124, type: !266)
!1005 = !DILocalVariable(name: "allow_options", scope: !996, file: !2, line: 125, type: !266)
!1006 = !DILocalVariable(name: "do_v9", scope: !996, file: !2, line: 132, type: !266)
!1007 = !DILocalVariable(name: "temp", scope: !1008, file: !2, line: 163, type: !125)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 162, column: 7)
!1009 = distinct !DILexicalBlock(scope: !996, file: !2, line: 160, column: 7)
!1010 = !DILocalVariable(name: "i", scope: !1008, file: !2, line: 164, type: !152)
!1011 = !DILocalVariable(name: "s", scope: !1012, file: !2, line: 210, type: !125)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 209, column: 9)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 207, column: 5)
!1014 = distinct !DILexicalBlock(scope: !996, file: !2, line: 206, column: 7)
!1015 = !DILocalVariable(name: "c", scope: !1012, file: !2, line: 211, type: !155)
!1016 = !DILocalVariable(name: "ch", scope: !1017, file: !2, line: 230, type: !155)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 229, column: 23)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 218, column: 21)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 216, column: 17)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 215, column: 19)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 214, column: 13)
!1022 = !DILabel(scope: !996, name: "just_echo", file: !2, line: 204)
!1023 = !DILabel(scope: !1018, name: "not_an_escape", file: !2, line: 259)
!1024 = !DILocation(line: 0, scope: !996)
!1025 = !DILocation(line: 124, column: 28, scope: !996)
!1026 = !DILocation(line: 124, column: 27, scope: !996)
!1027 = !DILocation(line: 127, column: 6, scope: !996)
!1028 = !DILocation(line: 127, column: 37, scope: !996)
!1029 = !DILocation(line: 127, column: 44, scope: !996)
!1030 = !DILocation(line: 127, column: 54, scope: !996)
!1031 = !DILocation(line: 0, scope: !830, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 127, column: 47, scope: !996)
!1033 = !DILocation(line: 1361, column: 11, scope: !830, inlinedAt: !1032)
!1034 = !DILocation(line: 1361, column: 10, scope: !830, inlinedAt: !1032)
!1035 = !DILocation(line: 135, column: 21, scope: !996)
!1036 = !DILocation(line: 135, column: 3, scope: !996)
!1037 = !DILocation(line: 136, column: 3, scope: !996)
!1038 = !DILocation(line: 137, column: 3, scope: !996)
!1039 = !DILocation(line: 138, column: 3, scope: !996)
!1040 = !DILocation(line: 140, column: 3, scope: !996)
!1041 = !DILocation(line: 144, column: 21, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !996, file: !2, line: 144, column: 7)
!1043 = !DILocation(line: 146, column: 18, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 146, column: 11)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 145, column: 5)
!1046 = !DILocation(line: 0, scope: !830, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 146, column: 11, scope: !1044)
!1048 = !DILocation(line: 1361, column: 11, scope: !830, inlinedAt: !1047)
!1049 = !DILocation(line: 1361, column: 10, scope: !830, inlinedAt: !1047)
!1050 = !DILocation(line: 146, column: 11, scope: !1045)
!1051 = !DILocation(line: 147, column: 9, scope: !1044)
!1052 = !DILocation(line: 0, scope: !830, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 149, column: 11, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 149, column: 11)
!1055 = !DILocation(line: 1361, column: 11, scope: !830, inlinedAt: !1053)
!1056 = !DILocation(line: 1361, column: 10, scope: !830, inlinedAt: !1053)
!1057 = !DILocation(line: 149, column: 11, scope: !1045)
!1058 = !DILocation(line: 151, column: 24, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 150, column: 9)
!1060 = !DILocation(line: 151, column: 60, scope: !1059)
!1061 = !DILocation(line: 151, column: 69, scope: !1059)
!1062 = !DILocation(line: 151, column: 11, scope: !1059)
!1063 = !DILocation(line: 153, column: 11, scope: !1059)
!1064 = !DILocation(line: 157, column: 3, scope: !996)
!1065 = !DILocation(line: 158, column: 3, scope: !996)
!1066 = !DILocation(line: 160, column: 7, scope: !996)
!1067 = !DILocation(line: 123, column: 8, scope: !996)
!1068 = !DILocation(line: 200, column: 13, scope: !1008)
!1069 = !DILocation(line: 201, column: 13, scope: !1008)
!1070 = !DILocation(line: 161, column: 17, scope: !1009)
!1071 = !DILocation(line: 161, column: 21, scope: !1009)
!1072 = !DILocation(line: 161, column: 25, scope: !1009)
!1073 = !DILocation(line: 161, column: 24, scope: !1009)
!1074 = !DILocation(line: 161, column: 33, scope: !1009)
!1075 = !DILocation(line: 161, column: 5, scope: !1009)
!1076 = !DILocation(line: 163, column: 36, scope: !1008)
!1077 = !DILocation(line: 0, scope: !1008)
!1078 = !DILocation(line: 170, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 170, column: 9)
!1080 = !DILocation(line: 170, scope: !1079)
!1081 = !DILocation(line: 170, column: 21, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 170, column: 9)
!1083 = !DILocation(line: 170, column: 9, scope: !1079)
!1084 = !DILocation(line: 170, column: 31, scope: !1082)
!1085 = !DILocation(line: 170, column: 9, scope: !1082)
!1086 = distinct !{!1086, !1083, !1087, !865}
!1087 = !DILocation(line: 177, column: 13, scope: !1079)
!1088 = !DILocation(line: 179, column: 15, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 179, column: 13)
!1090 = !DILocation(line: 179, column: 13, scope: !1008)
!1091 = !DILocation(line: 184, column: 16, scope: !1008)
!1092 = !DILocation(line: 184, column: 9, scope: !1008)
!1093 = !DILocation(line: 185, column: 24, scope: !1008)
!1094 = !DILocation(line: 185, column: 11, scope: !1008)
!1095 = !DILocation(line: 189, column: 15, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 186, column: 13)
!1097 = !DILocation(line: 193, column: 15, scope: !1096)
!1098 = !DILocation(line: 197, column: 15, scope: !1096)
!1099 = distinct !{!1099, !1092, !1100, !865}
!1100 = !DILocation(line: 198, column: 13, scope: !1008)
!1101 = !DILocation(line: 206, column: 13, scope: !1014)
!1102 = !DILocation(line: 204, column: 1, scope: !996)
!1103 = !DILocation(line: 0, scope: !1014)
!1104 = !DILocation(line: 283, column: 7, scope: !996)
!1105 = !DILocation(line: 273, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 272, column: 5)
!1107 = !DILocation(line: 275, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 274, column: 9)
!1109 = !DILocation(line: 278, column: 20, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 278, column: 15)
!1111 = !DILocation(line: 278, column: 15, scope: !1108)
!1112 = !DILocation(line: 208, column: 7, scope: !1013)
!1113 = !DILocation(line: 210, column: 27, scope: !1012)
!1114 = !DILocation(line: 0, scope: !1012)
!1115 = !DILocation(line: 213, column: 11, scope: !1012)
!1116 = !DILocation(line: 213, column: 25, scope: !1012)
!1117 = !DILocation(line: 213, column: 23, scope: !1012)
!1118 = !DILocation(line: 215, column: 32, scope: !1020)
!1119 = !DILocation(line: 215, column: 19, scope: !1021)
!1120 = !DILocation(line: 217, column: 33, scope: !1019)
!1121 = !DILocation(line: 217, column: 19, scope: !1019)
!1122 = !DILocation(line: 219, column: 41, scope: !1018)
!1123 = !DILocation(line: 220, column: 41, scope: !1018)
!1124 = !DILocation(line: 222, column: 43, scope: !1018)
!1125 = !DILocation(line: 223, column: 41, scope: !1018)
!1126 = !DILocation(line: 224, column: 41, scope: !1018)
!1127 = !DILocation(line: 225, column: 41, scope: !1018)
!1128 = !DILocation(line: 226, column: 41, scope: !1018)
!1129 = !DILocation(line: 227, column: 41, scope: !1018)
!1130 = !DILocation(line: 230, column: 44, scope: !1017)
!1131 = !DILocation(line: 0, scope: !1017)
!1132 = !DILocation(line: 231, column: 43, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 231, column: 29)
!1134 = !DILocalVariable(name: "c", arg: 1, scope: !1135, file: !1136, line: 324, type: !150)
!1135 = distinct !DISubprogram(name: "c_isxdigit", scope: !1136, file: !1136, line: 324, type: !1137, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1139)
!1136 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!266, !150}
!1139 = !{!1134}
!1140 = !DILocation(line: 0, scope: !1135, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 231, column: 31, scope: !1133)
!1142 = !DILocation(line: 326, column: 3, scope: !1135, inlinedAt: !1141)
!1143 = !DILocation(line: 233, column: 26, scope: !1017)
!1144 = !DILocalVariable(name: "c", arg: 1, scope: !1145, file: !2, line: 102, type: !155)
!1145 = distinct !DISubprogram(name: "hextobin", scope: !2, file: !2, line: 102, type: !1146, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!150, !155}
!1148 = !{!1144}
!1149 = !DILocation(line: 0, scope: !1145, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 234, column: 29, scope: !1017)
!1151 = !DILocation(line: 104, column: 3, scope: !1145, inlinedAt: !1150)
!1152 = !DILocation(line: 106, column: 23, scope: !1153, inlinedAt: !1150)
!1153 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 105, column: 5)
!1154 = !DILocation(line: 106, column: 14, scope: !1153, inlinedAt: !1150)
!1155 = !DILocation(line: 108, column: 25, scope: !1153, inlinedAt: !1150)
!1156 = !DILocation(line: 109, column: 25, scope: !1153, inlinedAt: !1150)
!1157 = !DILocation(line: 110, column: 25, scope: !1153, inlinedAt: !1150)
!1158 = !DILocation(line: 111, column: 25, scope: !1153, inlinedAt: !1150)
!1159 = !DILocation(line: 112, column: 25, scope: !1153, inlinedAt: !1150)
!1160 = !DILocation(line: 0, scope: !1153, inlinedAt: !1150)
!1161 = !DILocation(line: 235, column: 30, scope: !1017)
!1162 = !DILocation(line: 236, column: 41, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 236, column: 29)
!1164 = !DILocation(line: 0, scope: !1135, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 236, column: 29, scope: !1163)
!1166 = !DILocation(line: 326, column: 3, scope: !1135, inlinedAt: !1165)
!1167 = !DILocation(line: 238, column: 30, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 237, column: 27)
!1169 = !DILocation(line: 239, column: 35, scope: !1168)
!1170 = !DILocation(line: 0, scope: !1145, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 239, column: 42, scope: !1168)
!1172 = !DILocation(line: 104, column: 3, scope: !1145, inlinedAt: !1171)
!1173 = !DILocation(line: 106, column: 23, scope: !1153, inlinedAt: !1171)
!1174 = !DILocation(line: 106, column: 14, scope: !1153, inlinedAt: !1171)
!1175 = !DILocation(line: 108, column: 25, scope: !1153, inlinedAt: !1171)
!1176 = !DILocation(line: 109, column: 25, scope: !1153, inlinedAt: !1171)
!1177 = !DILocation(line: 110, column: 25, scope: !1153, inlinedAt: !1171)
!1178 = !DILocation(line: 111, column: 25, scope: !1153, inlinedAt: !1171)
!1179 = !DILocation(line: 112, column: 25, scope: !1153, inlinedAt: !1171)
!1180 = !DILocation(line: 0, scope: !1153, inlinedAt: !1171)
!1181 = !DILocation(line: 239, column: 40, scope: !1168)
!1182 = !DILocation(line: 240, column: 27, scope: !1168)
!1183 = !DILocation(line: 245, column: 37, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 245, column: 27)
!1185 = !DILocation(line: 245, column: 40, scope: !1184)
!1186 = !DILocation(line: 247, column: 29, scope: !1018)
!1187 = !DILocation(line: 247, column: 23, scope: !1018)
!1188 = !DILocation(line: 0, scope: !1019)
!1189 = !DILocation(line: 251, column: 25, scope: !1018)
!1190 = !DILocation(line: 252, column: 34, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 252, column: 27)
!1192 = !DILocation(line: 252, column: 37, scope: !1191)
!1193 = !DILocation(line: 254, column: 34, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 254, column: 27)
!1195 = !DILocation(line: 254, column: 37, scope: !1194)
!1196 = !DILocation(line: 255, column: 31, scope: !1194)
!1197 = !DILocation(line: 255, column: 40, scope: !1194)
!1198 = !DILocation(line: 255, column: 43, scope: !1194)
!1199 = !DILocation(line: 255, column: 35, scope: !1194)
!1200 = !DILocation(line: 255, column: 25, scope: !1194)
!1201 = !DILocalVariable(name: "__c", arg: 1, scope: !1202, file: !1203, line: 108, type: !150)
!1202 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1203, file: !1203, line: 108, type: !1204, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1206)
!1203 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!150, !150}
!1206 = !{!1201}
!1207 = !DILocation(line: 0, scope: !1202, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 260, column: 31, scope: !1018)
!1209 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1208)
!1210 = !{!1211, !782, i64 40}
!1211 = !{!"_IO_FILE", !819, i64 0, !782, i64 8, !782, i64 16, !782, i64 24, !782, i64 32, !782, i64 40, !782, i64 48, !782, i64 56, !782, i64 64, !782, i64 72, !782, i64 80, !782, i64 88, !782, i64 96, !782, i64 104, !819, i64 112, !819, i64 116, !1212, i64 120, !860, i64 128, !783, i64 130, !783, i64 131, !782, i64 136, !1212, i64 144, !782, i64 152, !782, i64 160, !782, i64 168, !782, i64 176, !1212, i64 184, !819, i64 192, !783, i64 196}
!1212 = !{!"long", !783, i64 0}
!1213 = !{!1211, !782, i64 48}
!1214 = !{!"branch_weights", i32 2000, i32 1}
!1215 = !DILocation(line: 0, scope: !1202, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 263, column: 15, scope: !1021)
!1217 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1216)
!1218 = !DILocation(line: 263, column: 15, scope: !1021)
!1219 = distinct !{!1219, !1115, !1220, !865}
!1220 = !DILocation(line: 264, column: 13, scope: !1012)
!1221 = !DILocation(line: 265, column: 15, scope: !1012)
!1222 = !DILocation(line: 266, column: 15, scope: !1012)
!1223 = !DILocation(line: 267, column: 20, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 267, column: 15)
!1225 = !DILocation(line: 267, column: 15, scope: !1012)
!1226 = !DILocation(line: 0, scope: !1202, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 268, column: 13, scope: !1224)
!1228 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1227)
!1229 = distinct !{!1229, !1112, !1230, !865}
!1230 = !DILocation(line: 269, column: 9, scope: !1013)
!1231 = !DILocation(line: 276, column: 15, scope: !1108)
!1232 = !DILocation(line: 277, column: 15, scope: !1108)
!1233 = !DILocation(line: 0, scope: !1202, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 279, column: 13, scope: !1110)
!1235 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1234)
!1236 = distinct !{!1236, !1105, !1237, !865}
!1237 = !DILocation(line: 280, column: 9, scope: !1106)
!1238 = !DILocation(line: 0, scope: !1202, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 284, column: 5, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !996, file: !2, line: 283, column: 7)
!1241 = !DILocation(line: 110, column: 10, scope: !1202, inlinedAt: !1239)
!1242 = !DILocation(line: 286, column: 1, scope: !996)
!1243 = !DISubprogram(name: "bindtextdomain", scope: !804, file: !804, line: 86, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!148, !125, !125}
!1246 = !DISubprogram(name: "textdomain", scope: !804, file: !804, line: 82, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1247 = !DISubprogram(name: "atexit", scope: !962, file: !962, line: 602, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!150, !413}
!1250 = !DISubprogram(name: "__overflow", scope: !373, file: !373, line: 886, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!150, !279, !150}
!1253 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !347, file: !347, line: 50, type: !1254, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1255)
!1254 = !DISubroutineType(types: !932)
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
!1268 = !{!"_Bool", !783, i64 0}
!1269 = !DILocation(line: 90, column: 1, scope: !1260)
!1270 = distinct !DISubprogram(name: "close_stdout", scope: !347, file: !347, line: 116, type: !414, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !1271)
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
!1303 = !DISubprogram(name: "__errno_location", scope: !1304, file: !1304, line: 37, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1304 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1308 = !DISubprogram(name: "_exit", scope: !1309, file: !1309, line: 624, type: !771, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !802)
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
!1319 = !DILocation(line: 251, column: 1, scope: !1310)
!1320 = !DILocation(line: 261, column: 3, scope: !1310)
!1321 = !DILocation(line: 265, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1310, file: !362, line: 265, column: 7)
!1323 = !DILocation(line: 265, column: 7, scope: !1310)
!1324 = !DILocation(line: 266, column: 5, scope: !1322)
!1325 = !DILocation(line: 272, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !362, line: 268, column: 5)
!1327 = !DILocation(line: 276, column: 3, scope: !1310)
!1328 = !{i64 0, i64 8, !781, i64 8, i64 8, !781, i64 16, i64 8, !781, i64 24, i64 4, !818, i64 28, i64 4, !818}
!1329 = !DILocation(line: 282, column: 1, scope: !1310)
!1330 = distinct !DISubprogram(name: "flush_stdout", scope: !362, file: !362, line: 163, type: !414, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1331)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "stdout_fd", scope: !1330, file: !362, line: 166, type: !150)
!1333 = !DILocation(line: 0, scope: !1330)
!1334 = !DILocalVariable(name: "fd", arg: 1, scope: !1335, file: !362, line: 145, type: !150)
!1335 = distinct !DISubprogram(name: "is_open", scope: !362, file: !362, line: 145, type: !1204, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1336)
!1336 = !{!1334}
!1337 = !DILocation(line: 0, scope: !1335, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 182, column: 25, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !362, line: 182, column: 7)
!1340 = !DILocation(line: 157, column: 15, scope: !1335, inlinedAt: !1338)
!1341 = !DILocation(line: 157, column: 12, scope: !1335, inlinedAt: !1338)
!1342 = !DILocation(line: 182, column: 7, scope: !1330)
!1343 = !DILocation(line: 184, column: 5, scope: !1339)
!1344 = !DILocation(line: 185, column: 1, scope: !1330)
!1345 = !DISubprogram(name: "__fprintf_chk", scope: !808, file: !808, line: 93, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!150, !1348, !150, !811, null}
!1348 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1351, file: !283, line: 51, baseType: !150, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1351, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1351, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1351, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1351, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1351, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1351, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1351, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1351, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1351, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1351, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1351, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1351, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1351, file: !283, line: 70, baseType: !1367, size: 64, offset: 832)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1351, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1351, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1351, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1351, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1351, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1351, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1351, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1351, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1351, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1351, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1351, file: !283, line: 93, baseType: !1367, size: 64, offset: 1344)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1351, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1351, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1351, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1351, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!1383 = distinct !DISubprogram(name: "error_tail", scope: !362, file: !362, line: 219, type: !1311, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1384)
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DILocalVariable(name: "status", arg: 1, scope: !1383, file: !362, line: 219, type: !150)
!1386 = !DILocalVariable(name: "errnum", arg: 2, scope: !1383, file: !362, line: 219, type: !150)
!1387 = !DILocalVariable(name: "message", arg: 3, scope: !1383, file: !362, line: 219, type: !125)
!1388 = !DILocalVariable(name: "args", arg: 4, scope: !1383, file: !362, line: 219, type: !372)
!1389 = !DILocation(line: 0, scope: !1383)
!1390 = !DILocation(line: 219, column: 1, scope: !1383)
!1391 = !DILocation(line: 229, column: 13, scope: !1383)
!1392 = !DILocation(line: 135, column: 10, scope: !1393, inlinedAt: !1400)
!1393 = distinct !DISubprogram(name: "vfprintf", scope: !808, file: !808, line: 132, type: !1394, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!150, !1348, !811, !374}
!1396 = !{!1397, !1398, !1399}
!1397 = !DILocalVariable(name: "__stream", arg: 1, scope: !1393, file: !808, line: 132, type: !1348)
!1398 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1393, file: !808, line: 133, type: !811)
!1399 = !DILocalVariable(name: "__ap", arg: 3, scope: !1393, file: !808, line: 133, type: !374)
!1400 = distinct !DILocation(line: 229, column: 3, scope: !1383)
!1401 = !{!1402, !1404}
!1402 = distinct !{!1402, !1403, !"vfprintf.inline: argument 0"}
!1403 = distinct !{!1403, !"vfprintf.inline"}
!1404 = distinct !{!1404, !1403, !"vfprintf.inline: argument 1"}
!1405 = !DILocation(line: 229, column: 3, scope: !1383)
!1406 = !DILocation(line: 0, scope: !1393, inlinedAt: !1400)
!1407 = !DILocation(line: 133, column: 49, scope: !1393, inlinedAt: !1400)
!1408 = !DILocation(line: 232, column: 3, scope: !1383)
!1409 = !DILocation(line: 233, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1383, file: !362, line: 233, column: 7)
!1411 = !DILocation(line: 233, column: 7, scope: !1383)
!1412 = !DILocalVariable(name: "errnum", arg: 1, scope: !1413, file: !362, line: 188, type: !150)
!1413 = distinct !DISubprogram(name: "print_errno_message", scope: !362, file: !362, line: 188, type: !771, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1414)
!1414 = !{!1412, !1415, !1416}
!1415 = !DILocalVariable(name: "s", scope: !1413, file: !362, line: 190, type: !125)
!1416 = !DILocalVariable(name: "errbuf", scope: !1413, file: !362, line: 193, type: !1417)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1418)
!1418 = !{!1419}
!1419 = !DISubrange(count: 1024)
!1420 = !DILocation(line: 0, scope: !1413, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 234, column: 5, scope: !1410)
!1422 = !DILocation(line: 193, column: 3, scope: !1413, inlinedAt: !1421)
!1423 = !DILocation(line: 193, column: 8, scope: !1413, inlinedAt: !1421)
!1424 = !DILocation(line: 195, column: 7, scope: !1413, inlinedAt: !1421)
!1425 = !DILocation(line: 207, column: 9, scope: !1426, inlinedAt: !1421)
!1426 = distinct !DILexicalBlock(scope: !1413, file: !362, line: 207, column: 7)
!1427 = !DILocation(line: 207, column: 7, scope: !1413, inlinedAt: !1421)
!1428 = !DILocation(line: 208, column: 9, scope: !1426, inlinedAt: !1421)
!1429 = !DILocation(line: 208, column: 5, scope: !1426, inlinedAt: !1421)
!1430 = !DILocation(line: 214, column: 3, scope: !1413, inlinedAt: !1421)
!1431 = !DILocation(line: 216, column: 1, scope: !1413, inlinedAt: !1421)
!1432 = !DILocation(line: 234, column: 5, scope: !1410)
!1433 = !DILocation(line: 238, column: 3, scope: !1383)
!1434 = !DILocalVariable(name: "__c", arg: 1, scope: !1435, file: !1203, line: 101, type: !150)
!1435 = distinct !DISubprogram(name: "putc_unlocked", scope: !1203, file: !1203, line: 101, type: !1436, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!150, !150, !1349}
!1438 = !{!1434, !1439}
!1439 = !DILocalVariable(name: "__stream", arg: 2, scope: !1435, file: !1203, line: 101, type: !1349)
!1440 = !DILocation(line: 0, scope: !1435, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 238, column: 3, scope: !1383)
!1442 = !DILocation(line: 103, column: 10, scope: !1435, inlinedAt: !1441)
!1443 = !DILocation(line: 240, column: 3, scope: !1383)
!1444 = !DILocation(line: 241, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1383, file: !362, line: 241, column: 7)
!1446 = !DILocation(line: 241, column: 7, scope: !1383)
!1447 = !DILocation(line: 242, column: 5, scope: !1445)
!1448 = !DILocation(line: 243, column: 1, scope: !1383)
!1449 = !DISubprogram(name: "__vfprintf_chk", scope: !808, file: !808, line: 96, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!150, !1348, !150, !811, !374}
!1452 = !DISubprogram(name: "strerror_r", scope: !968, file: !968, line: 444, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!148, !150, !148, !152}
!1455 = !DISubprogram(name: "fflush_unlocked", scope: !373, file: !373, line: 239, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!150, !1349}
!1458 = !DISubprogram(name: "fcntl", scope: !1459, file: !1459, line: 149, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1459 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!150, !150, !150, null}
!1462 = distinct !DISubprogram(name: "error", scope: !362, file: !362, line: 285, type: !1463, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !150, !150, !125, null}
!1465 = !{!1466, !1467, !1468, !1469}
!1466 = !DILocalVariable(name: "status", arg: 1, scope: !1462, file: !362, line: 285, type: !150)
!1467 = !DILocalVariable(name: "errnum", arg: 2, scope: !1462, file: !362, line: 285, type: !150)
!1468 = !DILocalVariable(name: "message", arg: 3, scope: !1462, file: !362, line: 285, type: !125)
!1469 = !DILocalVariable(name: "ap", scope: !1462, file: !362, line: 287, type: !372)
!1470 = !DILocation(line: 0, scope: !1462)
!1471 = !DILocation(line: 287, column: 3, scope: !1462)
!1472 = !DILocation(line: 287, column: 11, scope: !1462)
!1473 = !DILocation(line: 288, column: 3, scope: !1462)
!1474 = !DILocation(line: 289, column: 3, scope: !1462)
!1475 = !DILocation(line: 290, column: 3, scope: !1462)
!1476 = !DILocation(line: 291, column: 1, scope: !1462)
!1477 = !DILocation(line: 0, scope: !369)
!1478 = !DILocation(line: 298, column: 1, scope: !369)
!1479 = !DILocation(line: 302, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !369, file: !362, line: 302, column: 7)
!1481 = !DILocation(line: 302, column: 7, scope: !369)
!1482 = !DILocation(line: 307, column: 11, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !362, line: 307, column: 11)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !362, line: 303, column: 5)
!1485 = !DILocation(line: 307, column: 27, scope: !1483)
!1486 = !DILocation(line: 308, column: 11, scope: !1483)
!1487 = !DILocation(line: 308, column: 28, scope: !1483)
!1488 = !DILocation(line: 308, column: 25, scope: !1483)
!1489 = !DILocation(line: 309, column: 15, scope: !1483)
!1490 = !DILocation(line: 309, column: 33, scope: !1483)
!1491 = !DILocation(line: 310, column: 19, scope: !1483)
!1492 = !DILocation(line: 311, column: 22, scope: !1483)
!1493 = !DILocation(line: 311, column: 56, scope: !1483)
!1494 = !DILocation(line: 307, column: 11, scope: !1484)
!1495 = !DILocation(line: 316, column: 21, scope: !1484)
!1496 = !DILocation(line: 317, column: 23, scope: !1484)
!1497 = !DILocation(line: 318, column: 5, scope: !1484)
!1498 = !DILocation(line: 327, column: 3, scope: !369)
!1499 = !DILocation(line: 331, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !369, file: !362, line: 331, column: 7)
!1501 = !DILocation(line: 331, column: 7, scope: !369)
!1502 = !DILocation(line: 332, column: 5, scope: !1500)
!1503 = !DILocation(line: 338, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !362, line: 334, column: 5)
!1505 = !DILocation(line: 346, column: 3, scope: !369)
!1506 = !DILocation(line: 350, column: 3, scope: !369)
!1507 = !DILocation(line: 356, column: 1, scope: !369)
!1508 = distinct !DISubprogram(name: "error_at_line", scope: !362, file: !362, line: 359, type: !1509, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !150, !150, !125, !129, !125, null}
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517}
!1512 = !DILocalVariable(name: "status", arg: 1, scope: !1508, file: !362, line: 359, type: !150)
!1513 = !DILocalVariable(name: "errnum", arg: 2, scope: !1508, file: !362, line: 359, type: !150)
!1514 = !DILocalVariable(name: "file_name", arg: 3, scope: !1508, file: !362, line: 359, type: !125)
!1515 = !DILocalVariable(name: "line_number", arg: 4, scope: !1508, file: !362, line: 360, type: !129)
!1516 = !DILocalVariable(name: "message", arg: 5, scope: !1508, file: !362, line: 360, type: !125)
!1517 = !DILocalVariable(name: "ap", scope: !1508, file: !362, line: 362, type: !372)
!1518 = !DILocation(line: 0, scope: !1508)
!1519 = !DILocation(line: 362, column: 3, scope: !1508)
!1520 = !DILocation(line: 362, column: 11, scope: !1508)
!1521 = !DILocation(line: 363, column: 3, scope: !1508)
!1522 = !DILocation(line: 364, column: 3, scope: !1508)
!1523 = !DILocation(line: 366, column: 3, scope: !1508)
!1524 = !DILocation(line: 367, column: 1, scope: !1508)
!1525 = distinct !DISubprogram(name: "getprogname", scope: !701, file: !701, line: 54, type: !1526, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !802)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!125}
!1528 = !DILocation(line: 58, column: 10, scope: !1525)
!1529 = !DILocation(line: 58, column: 3, scope: !1525)
!1530 = distinct !DISubprogram(name: "set_program_name", scope: !419, file: !419, line: 37, type: !1254, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !1531)
!1531 = !{!1532, !1533, !1534}
!1532 = !DILocalVariable(name: "argv0", arg: 1, scope: !1530, file: !419, line: 37, type: !125)
!1533 = !DILocalVariable(name: "slash", scope: !1530, file: !419, line: 44, type: !125)
!1534 = !DILocalVariable(name: "base", scope: !1530, file: !419, line: 45, type: !125)
!1535 = !DILocation(line: 0, scope: !1530)
!1536 = !DILocation(line: 44, column: 23, scope: !1530)
!1537 = !DILocation(line: 45, column: 22, scope: !1530)
!1538 = !DILocation(line: 46, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !419, line: 46, column: 7)
!1540 = !DILocation(line: 46, column: 9, scope: !1539)
!1541 = !DILocation(line: 46, column: 25, scope: !1539)
!1542 = !DILocation(line: 46, column: 40, scope: !1539)
!1543 = !DILocalVariable(name: "__s1", arg: 1, scope: !1544, file: !831, line: 974, type: !994)
!1544 = distinct !DISubprogram(name: "memeq", scope: !831, file: !831, line: 974, type: !1545, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!266, !994, !994, !152}
!1547 = !{!1543, !1548, !1549}
!1548 = !DILocalVariable(name: "__s2", arg: 2, scope: !1544, file: !831, line: 974, type: !994)
!1549 = !DILocalVariable(name: "__n", arg: 3, scope: !1544, file: !831, line: 974, type: !152)
!1550 = !DILocation(line: 0, scope: !1544, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 46, column: 28, scope: !1539)
!1552 = !DILocation(line: 976, column: 11, scope: !1544, inlinedAt: !1551)
!1553 = !DILocation(line: 976, column: 10, scope: !1544, inlinedAt: !1551)
!1554 = !DILocation(line: 46, column: 7, scope: !1530)
!1555 = !DILocation(line: 49, column: 11, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !419, line: 49, column: 11)
!1557 = distinct !DILexicalBlock(scope: !1539, file: !419, line: 47, column: 5)
!1558 = !DILocation(line: 49, column: 36, scope: !1556)
!1559 = !DILocation(line: 49, column: 11, scope: !1557)
!1560 = !DILocation(line: 65, column: 16, scope: !1530)
!1561 = !DILocation(line: 71, column: 27, scope: !1530)
!1562 = !DILocation(line: 74, column: 33, scope: !1530)
!1563 = !DILocation(line: 76, column: 1, scope: !1530)
!1564 = !DISubprogram(name: "strrchr", scope: !968, file: !968, line: 273, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1565 = !DILocation(line: 0, scope: !428)
!1566 = !DILocation(line: 40, column: 29, scope: !428)
!1567 = !DILocation(line: 41, column: 19, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !428, file: !429, line: 41, column: 7)
!1569 = !DILocation(line: 41, column: 7, scope: !428)
!1570 = !DILocation(line: 47, column: 3, scope: !428)
!1571 = !DILocation(line: 48, column: 3, scope: !428)
!1572 = !DILocation(line: 48, column: 13, scope: !428)
!1573 = !DILocalVariable(name: "ps", arg: 1, scope: !1574, file: !1575, line: 1135, type: !1578)
!1574 = distinct !DISubprogram(name: "mbszero", scope: !1575, file: !1575, line: 1135, type: !1576, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1579)
!1575 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1578}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1579 = !{!1573}
!1580 = !DILocation(line: 0, scope: !1574, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 48, column: 18, scope: !428)
!1582 = !DILocalVariable(name: "__dest", arg: 1, scope: !1583, file: !1584, line: 57, type: !149)
!1583 = distinct !DISubprogram(name: "memset", scope: !1584, file: !1584, line: 57, type: !1585, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1587)
!1584 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!149, !149, !150, !152}
!1587 = !{!1582, !1588, !1589}
!1588 = !DILocalVariable(name: "__ch", arg: 2, scope: !1583, file: !1584, line: 57, type: !150)
!1589 = !DILocalVariable(name: "__len", arg: 3, scope: !1583, file: !1584, line: 57, type: !152)
!1590 = !DILocation(line: 0, scope: !1583, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 1137, column: 3, scope: !1574, inlinedAt: !1581)
!1592 = !DILocation(line: 59, column: 10, scope: !1583, inlinedAt: !1591)
!1593 = !DILocation(line: 49, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !428, file: !429, line: 49, column: 7)
!1595 = !DILocation(line: 49, column: 39, scope: !1594)
!1596 = !DILocation(line: 49, column: 44, scope: !1594)
!1597 = !DILocation(line: 54, column: 1, scope: !428)
!1598 = !DISubprogram(name: "mbrtoc32", scope: !440, file: !440, line: 57, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!152, !1601, !811, !152, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1578)
!1604 = distinct !DISubprogram(name: "clone_quoting_options", scope: !459, file: !459, line: 113, type: !1605, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1608)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!1607, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1608 = !{!1609, !1610, !1611}
!1609 = !DILocalVariable(name: "o", arg: 1, scope: !1604, file: !459, line: 113, type: !1607)
!1610 = !DILocalVariable(name: "saved_errno", scope: !1604, file: !459, line: 115, type: !150)
!1611 = !DILocalVariable(name: "p", scope: !1604, file: !459, line: 116, type: !1607)
!1612 = !DILocation(line: 0, scope: !1604)
!1613 = !DILocation(line: 115, column: 21, scope: !1604)
!1614 = !DILocation(line: 116, column: 40, scope: !1604)
!1615 = !DILocation(line: 116, column: 31, scope: !1604)
!1616 = !DILocation(line: 118, column: 9, scope: !1604)
!1617 = !DILocation(line: 119, column: 3, scope: !1604)
!1618 = distinct !DISubprogram(name: "get_quoting_style", scope: !459, file: !459, line: 124, type: !1619, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1623)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!485, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!1623 = !{!1624}
!1624 = !DILocalVariable(name: "o", arg: 1, scope: !1618, file: !459, line: 124, type: !1621)
!1625 = !DILocation(line: 0, scope: !1618)
!1626 = !DILocation(line: 126, column: 11, scope: !1618)
!1627 = !DILocation(line: 126, column: 46, scope: !1618)
!1628 = !{!1629, !783, i64 0}
!1629 = !{!"quoting_options", !783, i64 0, !819, i64 4, !783, i64 8, !782, i64 40, !782, i64 48}
!1630 = !DILocation(line: 126, column: 3, scope: !1618)
!1631 = distinct !DISubprogram(name: "set_quoting_style", scope: !459, file: !459, line: 132, type: !1632, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !1607, !485}
!1634 = !{!1635, !1636}
!1635 = !DILocalVariable(name: "o", arg: 1, scope: !1631, file: !459, line: 132, type: !1607)
!1636 = !DILocalVariable(name: "s", arg: 2, scope: !1631, file: !459, line: 132, type: !485)
!1637 = !DILocation(line: 0, scope: !1631)
!1638 = !DILocation(line: 134, column: 4, scope: !1631)
!1639 = !DILocation(line: 134, column: 45, scope: !1631)
!1640 = !DILocation(line: 135, column: 1, scope: !1631)
!1641 = distinct !DISubprogram(name: "set_char_quoting", scope: !459, file: !459, line: 143, type: !1642, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!150, !1607, !4, !150}
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1651, !1652}
!1645 = !DILocalVariable(name: "o", arg: 1, scope: !1641, file: !459, line: 143, type: !1607)
!1646 = !DILocalVariable(name: "c", arg: 2, scope: !1641, file: !459, line: 143, type: !4)
!1647 = !DILocalVariable(name: "i", arg: 3, scope: !1641, file: !459, line: 143, type: !150)
!1648 = !DILocalVariable(name: "uc", scope: !1641, file: !459, line: 145, type: !155)
!1649 = !DILocalVariable(name: "p", scope: !1641, file: !459, line: 146, type: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1651 = !DILocalVariable(name: "shift", scope: !1641, file: !459, line: 148, type: !150)
!1652 = !DILocalVariable(name: "r", scope: !1641, file: !459, line: 149, type: !129)
!1653 = !DILocation(line: 0, scope: !1641)
!1654 = !DILocation(line: 147, column: 6, scope: !1641)
!1655 = !DILocation(line: 147, column: 41, scope: !1641)
!1656 = !DILocation(line: 147, column: 62, scope: !1641)
!1657 = !DILocation(line: 147, column: 57, scope: !1641)
!1658 = !DILocation(line: 148, column: 15, scope: !1641)
!1659 = !DILocation(line: 149, column: 21, scope: !1641)
!1660 = !DILocation(line: 149, column: 24, scope: !1641)
!1661 = !DILocation(line: 149, column: 34, scope: !1641)
!1662 = !DILocation(line: 150, column: 19, scope: !1641)
!1663 = !DILocation(line: 150, column: 24, scope: !1641)
!1664 = !DILocation(line: 150, column: 6, scope: !1641)
!1665 = !DILocation(line: 151, column: 3, scope: !1641)
!1666 = distinct !DISubprogram(name: "set_quoting_flags", scope: !459, file: !459, line: 159, type: !1667, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!150, !1607, !150}
!1669 = !{!1670, !1671, !1672}
!1670 = !DILocalVariable(name: "o", arg: 1, scope: !1666, file: !459, line: 159, type: !1607)
!1671 = !DILocalVariable(name: "i", arg: 2, scope: !1666, file: !459, line: 159, type: !150)
!1672 = !DILocalVariable(name: "r", scope: !1666, file: !459, line: 163, type: !150)
!1673 = !DILocation(line: 0, scope: !1666)
!1674 = !DILocation(line: 161, column: 8, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1666, file: !459, line: 161, column: 7)
!1676 = !DILocation(line: 161, column: 7, scope: !1666)
!1677 = !DILocation(line: 163, column: 14, scope: !1666)
!1678 = !{!1629, !819, i64 4}
!1679 = !DILocation(line: 164, column: 12, scope: !1666)
!1680 = !DILocation(line: 165, column: 3, scope: !1666)
!1681 = distinct !DISubprogram(name: "set_custom_quoting", scope: !459, file: !459, line: 169, type: !1682, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1684)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !1607, !125, !125}
!1684 = !{!1685, !1686, !1687}
!1685 = !DILocalVariable(name: "o", arg: 1, scope: !1681, file: !459, line: 169, type: !1607)
!1686 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1681, file: !459, line: 170, type: !125)
!1687 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1681, file: !459, line: 170, type: !125)
!1688 = !DILocation(line: 0, scope: !1681)
!1689 = !DILocation(line: 172, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !459, line: 172, column: 7)
!1691 = !DILocation(line: 172, column: 7, scope: !1681)
!1692 = !DILocation(line: 174, column: 12, scope: !1681)
!1693 = !DILocation(line: 175, column: 8, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1681, file: !459, line: 175, column: 7)
!1695 = !DILocation(line: 175, column: 19, scope: !1694)
!1696 = !DILocation(line: 176, column: 5, scope: !1694)
!1697 = !DILocation(line: 177, column: 6, scope: !1681)
!1698 = !DILocation(line: 177, column: 17, scope: !1681)
!1699 = !{!1629, !782, i64 40}
!1700 = !DILocation(line: 178, column: 6, scope: !1681)
!1701 = !DILocation(line: 178, column: 18, scope: !1681)
!1702 = !{!1629, !782, i64 48}
!1703 = !DILocation(line: 179, column: 1, scope: !1681)
!1704 = !DISubprogram(name: "abort", scope: !962, file: !962, line: 598, type: !414, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !802)
!1705 = distinct !DISubprogram(name: "quotearg_buffer", scope: !459, file: !459, line: 774, type: !1706, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!152, !148, !152, !125, !152, !1621}
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1709 = !DILocalVariable(name: "buffer", arg: 1, scope: !1705, file: !459, line: 774, type: !148)
!1710 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1705, file: !459, line: 774, type: !152)
!1711 = !DILocalVariable(name: "arg", arg: 3, scope: !1705, file: !459, line: 775, type: !125)
!1712 = !DILocalVariable(name: "argsize", arg: 4, scope: !1705, file: !459, line: 775, type: !152)
!1713 = !DILocalVariable(name: "o", arg: 5, scope: !1705, file: !459, line: 776, type: !1621)
!1714 = !DILocalVariable(name: "p", scope: !1705, file: !459, line: 778, type: !1621)
!1715 = !DILocalVariable(name: "saved_errno", scope: !1705, file: !459, line: 779, type: !150)
!1716 = !DILocalVariable(name: "r", scope: !1705, file: !459, line: 780, type: !152)
!1717 = !DILocation(line: 0, scope: !1705)
!1718 = !DILocation(line: 778, column: 37, scope: !1705)
!1719 = !DILocation(line: 779, column: 21, scope: !1705)
!1720 = !DILocation(line: 781, column: 43, scope: !1705)
!1721 = !DILocation(line: 781, column: 53, scope: !1705)
!1722 = !DILocation(line: 781, column: 63, scope: !1705)
!1723 = !DILocation(line: 782, column: 43, scope: !1705)
!1724 = !DILocation(line: 782, column: 58, scope: !1705)
!1725 = !DILocation(line: 780, column: 14, scope: !1705)
!1726 = !DILocation(line: 783, column: 9, scope: !1705)
!1727 = !DILocation(line: 784, column: 3, scope: !1705)
!1728 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !459, file: !459, line: 251, type: !1729, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1733)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!152, !148, !152, !125, !152, !485, !150, !1731, !125, !125}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1758, !1760, !1763, !1764, !1765, !1766, !1769, !1770, !1773, !1777, !1778, !1786, !1789, !1790, !1792, !1793, !1794, !1795}
!1734 = !DILocalVariable(name: "buffer", arg: 1, scope: !1728, file: !459, line: 251, type: !148)
!1735 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1728, file: !459, line: 251, type: !152)
!1736 = !DILocalVariable(name: "arg", arg: 3, scope: !1728, file: !459, line: 252, type: !125)
!1737 = !DILocalVariable(name: "argsize", arg: 4, scope: !1728, file: !459, line: 252, type: !152)
!1738 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1728, file: !459, line: 253, type: !485)
!1739 = !DILocalVariable(name: "flags", arg: 6, scope: !1728, file: !459, line: 253, type: !150)
!1740 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1728, file: !459, line: 254, type: !1731)
!1741 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1728, file: !459, line: 255, type: !125)
!1742 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1728, file: !459, line: 256, type: !125)
!1743 = !DILocalVariable(name: "unibyte_locale", scope: !1728, file: !459, line: 258, type: !266)
!1744 = !DILocalVariable(name: "len", scope: !1728, file: !459, line: 260, type: !152)
!1745 = !DILocalVariable(name: "orig_buffersize", scope: !1728, file: !459, line: 261, type: !152)
!1746 = !DILocalVariable(name: "quote_string", scope: !1728, file: !459, line: 262, type: !125)
!1747 = !DILocalVariable(name: "quote_string_len", scope: !1728, file: !459, line: 263, type: !152)
!1748 = !DILocalVariable(name: "backslash_escapes", scope: !1728, file: !459, line: 264, type: !266)
!1749 = !DILocalVariable(name: "elide_outer_quotes", scope: !1728, file: !459, line: 265, type: !266)
!1750 = !DILocalVariable(name: "encountered_single_quote", scope: !1728, file: !459, line: 266, type: !266)
!1751 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1728, file: !459, line: 267, type: !266)
!1752 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1728, file: !459, line: 309, type: !266)
!1753 = !DILocalVariable(name: "lq", scope: !1754, file: !459, line: 361, type: !125)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !459, line: 361, column: 11)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !459, line: 360, column: 13)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !459, line: 333, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1728, file: !459, line: 312, column: 5)
!1758 = !DILocalVariable(name: "i", scope: !1759, file: !459, line: 395, type: !152)
!1759 = distinct !DILexicalBlock(scope: !1728, file: !459, line: 395, column: 3)
!1760 = !DILocalVariable(name: "is_right_quote", scope: !1761, file: !459, line: 397, type: !266)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !459, line: 396, column: 5)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !459, line: 395, column: 3)
!1763 = !DILocalVariable(name: "escaping", scope: !1761, file: !459, line: 398, type: !266)
!1764 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1761, file: !459, line: 399, type: !266)
!1765 = !DILocalVariable(name: "c", scope: !1761, file: !459, line: 417, type: !155)
!1766 = !DILocalVariable(name: "m", scope: !1767, file: !459, line: 598, type: !152)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 596, column: 11)
!1768 = distinct !DILexicalBlock(scope: !1761, file: !459, line: 419, column: 9)
!1769 = !DILocalVariable(name: "printable", scope: !1767, file: !459, line: 600, type: !266)
!1770 = !DILocalVariable(name: "mbs", scope: !1771, file: !459, line: 609, type: !546)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !459, line: 608, column: 15)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !459, line: 602, column: 17)
!1773 = !DILocalVariable(name: "w", scope: !1774, file: !459, line: 618, type: !439)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !459, line: 617, column: 19)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !459, line: 616, column: 17)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !459, line: 616, column: 17)
!1777 = !DILocalVariable(name: "bytes", scope: !1774, file: !459, line: 619, type: !152)
!1778 = !DILocalVariable(name: "j", scope: !1779, file: !459, line: 648, type: !152)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !459, line: 648, column: 29)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !459, line: 647, column: 27)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !459, line: 645, column: 29)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !459, line: 636, column: 23)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !459, line: 628, column: 30)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !459, line: 623, column: 30)
!1785 = distinct !DILexicalBlock(scope: !1774, file: !459, line: 621, column: 25)
!1786 = !DILocalVariable(name: "ilim", scope: !1787, file: !459, line: 674, type: !152)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !459, line: 671, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1767, file: !459, line: 670, column: 17)
!1789 = !DILabel(scope: !1728, name: "process_input", file: !459, line: 308)
!1790 = !DILabel(scope: !1791, name: "c_and_shell_escape", file: !459, line: 502)
!1791 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 478, column: 9)
!1792 = !DILabel(scope: !1791, name: "c_escape", file: !459, line: 507)
!1793 = !DILabel(scope: !1761, name: "store_escape", file: !459, line: 709)
!1794 = !DILabel(scope: !1761, name: "store_c", file: !459, line: 712)
!1795 = !DILabel(scope: !1728, name: "force_outer_quoting_style", file: !459, line: 753)
!1796 = !DILocation(line: 0, scope: !1728)
!1797 = !DILocation(line: 258, column: 25, scope: !1728)
!1798 = !DILocation(line: 258, column: 36, scope: !1728)
!1799 = !DILocation(line: 267, column: 3, scope: !1728)
!1800 = !DILocation(line: 261, column: 10, scope: !1728)
!1801 = !DILocation(line: 262, column: 15, scope: !1728)
!1802 = !DILocation(line: 263, column: 10, scope: !1728)
!1803 = !DILocation(line: 308, column: 2, scope: !1728)
!1804 = !DILocation(line: 311, column: 3, scope: !1728)
!1805 = !DILocation(line: 318, column: 11, scope: !1757)
!1806 = !DILocation(line: 319, column: 9, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !459, line: 319, column: 9)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !459, line: 319, column: 9)
!1809 = distinct !DILexicalBlock(scope: !1757, file: !459, line: 318, column: 11)
!1810 = !DILocation(line: 319, column: 9, scope: !1808)
!1811 = !DILocation(line: 0, scope: !537, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 357, column: 26, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !459, line: 335, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1756, file: !459, line: 334, column: 13)
!1815 = !DILocation(line: 199, column: 29, scope: !537, inlinedAt: !1812)
!1816 = !DILocation(line: 201, column: 19, scope: !1817, inlinedAt: !1812)
!1817 = distinct !DILexicalBlock(scope: !537, file: !459, line: 201, column: 7)
!1818 = !DILocation(line: 201, column: 7, scope: !537, inlinedAt: !1812)
!1819 = !DILocation(line: 229, column: 3, scope: !537, inlinedAt: !1812)
!1820 = !DILocation(line: 230, column: 3, scope: !537, inlinedAt: !1812)
!1821 = !DILocation(line: 230, column: 13, scope: !537, inlinedAt: !1812)
!1822 = !DILocalVariable(name: "ps", arg: 1, scope: !1823, file: !1575, line: 1135, type: !1826)
!1823 = distinct !DISubprogram(name: "mbszero", scope: !1575, file: !1575, line: 1135, type: !1824, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1827)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1827 = !{!1822}
!1828 = !DILocation(line: 0, scope: !1823, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !1812)
!1830 = !DILocalVariable(name: "__dest", arg: 1, scope: !1831, file: !1584, line: 57, type: !149)
!1831 = distinct !DISubprogram(name: "memset", scope: !1584, file: !1584, line: 57, type: !1585, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1832)
!1832 = !{!1830, !1833, !1834}
!1833 = !DILocalVariable(name: "__ch", arg: 2, scope: !1831, file: !1584, line: 57, type: !150)
!1834 = !DILocalVariable(name: "__len", arg: 3, scope: !1831, file: !1584, line: 57, type: !152)
!1835 = !DILocation(line: 0, scope: !1831, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 1137, column: 3, scope: !1823, inlinedAt: !1829)
!1837 = !DILocation(line: 59, column: 10, scope: !1831, inlinedAt: !1836)
!1838 = !DILocation(line: 231, column: 7, scope: !1839, inlinedAt: !1812)
!1839 = distinct !DILexicalBlock(scope: !537, file: !459, line: 231, column: 7)
!1840 = !DILocation(line: 231, column: 40, scope: !1839, inlinedAt: !1812)
!1841 = !DILocation(line: 231, column: 45, scope: !1839, inlinedAt: !1812)
!1842 = !DILocation(line: 235, column: 1, scope: !537, inlinedAt: !1812)
!1843 = !DILocation(line: 0, scope: !537, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 358, column: 27, scope: !1813)
!1845 = !DILocation(line: 199, column: 29, scope: !537, inlinedAt: !1844)
!1846 = !DILocation(line: 201, column: 19, scope: !1817, inlinedAt: !1844)
!1847 = !DILocation(line: 201, column: 7, scope: !537, inlinedAt: !1844)
!1848 = !DILocation(line: 229, column: 3, scope: !537, inlinedAt: !1844)
!1849 = !DILocation(line: 230, column: 3, scope: !537, inlinedAt: !1844)
!1850 = !DILocation(line: 230, column: 13, scope: !537, inlinedAt: !1844)
!1851 = !DILocation(line: 0, scope: !1823, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !1844)
!1853 = !DILocation(line: 0, scope: !1831, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 1137, column: 3, scope: !1823, inlinedAt: !1852)
!1855 = !DILocation(line: 59, column: 10, scope: !1831, inlinedAt: !1854)
!1856 = !DILocation(line: 231, column: 7, scope: !1839, inlinedAt: !1844)
!1857 = !DILocation(line: 231, column: 40, scope: !1839, inlinedAt: !1844)
!1858 = !DILocation(line: 231, column: 45, scope: !1839, inlinedAt: !1844)
!1859 = !DILocation(line: 235, column: 1, scope: !537, inlinedAt: !1844)
!1860 = !DILocation(line: 360, column: 13, scope: !1756)
!1861 = !DILocation(line: 0, scope: !1754)
!1862 = !DILocation(line: 361, column: 45, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1754, file: !459, line: 361, column: 11)
!1864 = !DILocation(line: 361, column: 11, scope: !1754)
!1865 = !DILocation(line: 362, column: 13, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !459, line: 362, column: 13)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !459, line: 362, column: 13)
!1868 = !DILocation(line: 362, column: 13, scope: !1867)
!1869 = !DILocation(line: 361, column: 52, scope: !1863)
!1870 = distinct !{!1870, !1864, !1871, !865}
!1871 = !DILocation(line: 362, column: 13, scope: !1754)
!1872 = !DILocation(line: 260, column: 10, scope: !1728)
!1873 = !DILocation(line: 365, column: 28, scope: !1756)
!1874 = !DILocation(line: 367, column: 7, scope: !1757)
!1875 = !DILocation(line: 370, column: 7, scope: !1757)
!1876 = !DILocation(line: 376, column: 11, scope: !1757)
!1877 = !DILocation(line: 381, column: 11, scope: !1757)
!1878 = !DILocation(line: 382, column: 9, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !459, line: 382, column: 9)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !459, line: 382, column: 9)
!1881 = distinct !DILexicalBlock(scope: !1757, file: !459, line: 381, column: 11)
!1882 = !DILocation(line: 382, column: 9, scope: !1880)
!1883 = !DILocation(line: 389, column: 7, scope: !1757)
!1884 = !DILocation(line: 392, column: 7, scope: !1757)
!1885 = !DILocation(line: 0, scope: !1759)
!1886 = !DILocation(line: 395, column: 8, scope: !1759)
!1887 = !DILocation(line: 395, scope: !1759)
!1888 = !DILocation(line: 395, column: 34, scope: !1762)
!1889 = !DILocation(line: 395, column: 26, scope: !1762)
!1890 = !DILocation(line: 395, column: 48, scope: !1762)
!1891 = !DILocation(line: 395, column: 55, scope: !1762)
!1892 = !DILocation(line: 395, column: 3, scope: !1759)
!1893 = !DILocation(line: 395, column: 67, scope: !1762)
!1894 = !DILocation(line: 0, scope: !1761)
!1895 = !DILocation(line: 402, column: 11, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1761, file: !459, line: 401, column: 11)
!1897 = !DILocation(line: 404, column: 17, scope: !1896)
!1898 = !DILocation(line: 405, column: 39, scope: !1896)
!1899 = !DILocation(line: 409, column: 32, scope: !1896)
!1900 = !DILocation(line: 405, column: 19, scope: !1896)
!1901 = !DILocation(line: 405, column: 15, scope: !1896)
!1902 = !DILocation(line: 410, column: 11, scope: !1896)
!1903 = !DILocation(line: 410, column: 25, scope: !1896)
!1904 = !DILocalVariable(name: "__s1", arg: 1, scope: !1905, file: !831, line: 974, type: !994)
!1905 = distinct !DISubprogram(name: "memeq", scope: !831, file: !831, line: 974, type: !1545, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1906)
!1906 = !{!1904, !1907, !1908}
!1907 = !DILocalVariable(name: "__s2", arg: 2, scope: !1905, file: !831, line: 974, type: !994)
!1908 = !DILocalVariable(name: "__n", arg: 3, scope: !1905, file: !831, line: 974, type: !152)
!1909 = !DILocation(line: 0, scope: !1905, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 410, column: 14, scope: !1896)
!1911 = !DILocation(line: 976, column: 11, scope: !1905, inlinedAt: !1910)
!1912 = !DILocation(line: 976, column: 10, scope: !1905, inlinedAt: !1910)
!1913 = !DILocation(line: 401, column: 11, scope: !1761)
!1914 = !DILocation(line: 417, column: 25, scope: !1761)
!1915 = !DILocation(line: 418, column: 7, scope: !1761)
!1916 = !DILocation(line: 421, column: 15, scope: !1768)
!1917 = !DILocation(line: 423, column: 15, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !459, line: 423, column: 15)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !459, line: 422, column: 13)
!1920 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 421, column: 15)
!1921 = !DILocation(line: 423, column: 15, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !459, line: 423, column: 15)
!1923 = !DILocation(line: 423, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !459, line: 423, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !459, line: 423, column: 15)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !459, line: 423, column: 15)
!1927 = !DILocation(line: 423, column: 15, scope: !1925)
!1928 = !DILocation(line: 423, column: 15, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !459, line: 423, column: 15)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !459, line: 423, column: 15)
!1931 = !DILocation(line: 423, column: 15, scope: !1930)
!1932 = !DILocation(line: 423, column: 15, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !459, line: 423, column: 15)
!1934 = distinct !DILexicalBlock(scope: !1926, file: !459, line: 423, column: 15)
!1935 = !DILocation(line: 423, column: 15, scope: !1934)
!1936 = !DILocation(line: 423, column: 15, scope: !1926)
!1937 = !DILocation(line: 423, column: 15, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !459, line: 423, column: 15)
!1939 = distinct !DILexicalBlock(scope: !1918, file: !459, line: 423, column: 15)
!1940 = !DILocation(line: 423, column: 15, scope: !1939)
!1941 = !DILocation(line: 431, column: 19, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1919, file: !459, line: 430, column: 19)
!1943 = !DILocation(line: 431, column: 24, scope: !1942)
!1944 = !DILocation(line: 431, column: 28, scope: !1942)
!1945 = !DILocation(line: 431, column: 38, scope: !1942)
!1946 = !DILocation(line: 431, column: 48, scope: !1942)
!1947 = !DILocation(line: 431, column: 59, scope: !1942)
!1948 = !DILocation(line: 433, column: 19, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !459, line: 433, column: 19)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !459, line: 433, column: 19)
!1951 = distinct !DILexicalBlock(scope: !1942, file: !459, line: 432, column: 17)
!1952 = !DILocation(line: 433, column: 19, scope: !1950)
!1953 = !DILocation(line: 434, column: 19, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !459, line: 434, column: 19)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !459, line: 434, column: 19)
!1956 = !DILocation(line: 434, column: 19, scope: !1955)
!1957 = !DILocation(line: 435, column: 17, scope: !1951)
!1958 = !DILocation(line: 442, column: 20, scope: !1920)
!1959 = !DILocation(line: 447, column: 11, scope: !1768)
!1960 = !DILocation(line: 450, column: 19, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 448, column: 13)
!1962 = !DILocation(line: 456, column: 19, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1961, file: !459, line: 455, column: 19)
!1964 = !DILocation(line: 456, column: 24, scope: !1963)
!1965 = !DILocation(line: 456, column: 28, scope: !1963)
!1966 = !DILocation(line: 456, column: 38, scope: !1963)
!1967 = !DILocation(line: 456, column: 47, scope: !1963)
!1968 = !DILocation(line: 456, column: 41, scope: !1963)
!1969 = !DILocation(line: 456, column: 52, scope: !1963)
!1970 = !DILocation(line: 455, column: 19, scope: !1961)
!1971 = !DILocation(line: 457, column: 25, scope: !1963)
!1972 = !DILocation(line: 457, column: 17, scope: !1963)
!1973 = !DILocation(line: 464, column: 25, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1963, file: !459, line: 458, column: 19)
!1975 = !DILocation(line: 468, column: 21, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !459, line: 468, column: 21)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !459, line: 468, column: 21)
!1978 = !DILocation(line: 468, column: 21, scope: !1977)
!1979 = !DILocation(line: 469, column: 21, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !459, line: 469, column: 21)
!1981 = distinct !DILexicalBlock(scope: !1974, file: !459, line: 469, column: 21)
!1982 = !DILocation(line: 469, column: 21, scope: !1981)
!1983 = !DILocation(line: 470, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !459, line: 470, column: 21)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !459, line: 470, column: 21)
!1986 = !DILocation(line: 470, column: 21, scope: !1985)
!1987 = !DILocation(line: 471, column: 21, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !459, line: 471, column: 21)
!1989 = distinct !DILexicalBlock(scope: !1974, file: !459, line: 471, column: 21)
!1990 = !DILocation(line: 471, column: 21, scope: !1989)
!1991 = !DILocation(line: 472, column: 21, scope: !1974)
!1992 = !DILocation(line: 482, column: 33, scope: !1791)
!1993 = !DILocation(line: 483, column: 33, scope: !1791)
!1994 = !DILocation(line: 485, column: 33, scope: !1791)
!1995 = !DILocation(line: 486, column: 33, scope: !1791)
!1996 = !DILocation(line: 487, column: 33, scope: !1791)
!1997 = !DILocation(line: 490, column: 17, scope: !1791)
!1998 = !DILocation(line: 492, column: 21, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !459, line: 491, column: 15)
!2000 = distinct !DILexicalBlock(scope: !1791, file: !459, line: 490, column: 17)
!2001 = !DILocation(line: 499, column: 35, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1791, file: !459, line: 499, column: 17)
!2003 = !DILocation(line: 0, scope: !1791)
!2004 = !DILocation(line: 502, column: 11, scope: !1791)
!2005 = !DILocation(line: 504, column: 17, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1791, file: !459, line: 503, column: 17)
!2007 = !DILocation(line: 507, column: 11, scope: !1791)
!2008 = !DILocation(line: 508, column: 17, scope: !1791)
!2009 = !DILocation(line: 517, column: 15, scope: !1768)
!2010 = !DILocation(line: 517, column: 40, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 517, column: 15)
!2012 = !DILocation(line: 517, column: 47, scope: !2011)
!2013 = !DILocation(line: 517, column: 18, scope: !2011)
!2014 = !DILocation(line: 521, column: 17, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 521, column: 15)
!2016 = !DILocation(line: 521, column: 15, scope: !1768)
!2017 = !DILocation(line: 525, column: 11, scope: !1768)
!2018 = !DILocation(line: 537, column: 15, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 536, column: 15)
!2020 = !DILocation(line: 536, column: 15, scope: !1768)
!2021 = !DILocation(line: 544, column: 15, scope: !1768)
!2022 = !DILocation(line: 546, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !459, line: 545, column: 13)
!2024 = distinct !DILexicalBlock(scope: !1768, file: !459, line: 544, column: 15)
!2025 = !DILocation(line: 549, column: 19, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !459, line: 549, column: 19)
!2027 = !DILocation(line: 549, column: 30, scope: !2026)
!2028 = !DILocation(line: 558, column: 15, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !459, line: 558, column: 15)
!2030 = distinct !DILexicalBlock(scope: !2023, file: !459, line: 558, column: 15)
!2031 = !DILocation(line: 558, column: 15, scope: !2030)
!2032 = !DILocation(line: 559, column: 15, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !459, line: 559, column: 15)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !459, line: 559, column: 15)
!2035 = !DILocation(line: 559, column: 15, scope: !2034)
!2036 = !DILocation(line: 560, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !459, line: 560, column: 15)
!2038 = distinct !DILexicalBlock(scope: !2023, file: !459, line: 560, column: 15)
!2039 = !DILocation(line: 560, column: 15, scope: !2038)
!2040 = !DILocation(line: 562, column: 13, scope: !2023)
!2041 = !DILocation(line: 602, column: 17, scope: !1767)
!2042 = !DILocation(line: 0, scope: !1767)
!2043 = !DILocation(line: 605, column: 29, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1772, file: !459, line: 603, column: 15)
!2045 = !DILocation(line: 605, column: 41, scope: !2044)
!2046 = !DILocation(line: 606, column: 15, scope: !2044)
!2047 = !DILocation(line: 609, column: 17, scope: !1771)
!2048 = !DILocation(line: 609, column: 27, scope: !1771)
!2049 = !DILocation(line: 0, scope: !1823, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 609, column: 32, scope: !1771)
!2051 = !DILocation(line: 0, scope: !1831, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 1137, column: 3, scope: !1823, inlinedAt: !2050)
!2053 = !DILocation(line: 59, column: 10, scope: !1831, inlinedAt: !2052)
!2054 = !DILocation(line: 613, column: 29, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1771, file: !459, line: 613, column: 21)
!2056 = !DILocation(line: 613, column: 21, scope: !1771)
!2057 = !DILocation(line: 614, column: 29, scope: !2055)
!2058 = !DILocation(line: 614, column: 19, scope: !2055)
!2059 = !DILocation(line: 618, column: 21, scope: !1774)
!2060 = !DILocation(line: 620, column: 54, scope: !1774)
!2061 = !DILocation(line: 0, scope: !1774)
!2062 = !DILocation(line: 619, column: 36, scope: !1774)
!2063 = !DILocation(line: 621, column: 25, scope: !1774)
!2064 = !DILocation(line: 631, column: 38, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1783, file: !459, line: 629, column: 23)
!2066 = !DILocation(line: 631, column: 48, scope: !2065)
!2067 = !DILocation(line: 626, column: 25, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1784, file: !459, line: 624, column: 23)
!2069 = !DILocation(line: 631, column: 51, scope: !2065)
!2070 = !DILocation(line: 631, column: 25, scope: !2065)
!2071 = !DILocation(line: 632, column: 28, scope: !2065)
!2072 = !DILocation(line: 631, column: 34, scope: !2065)
!2073 = distinct !{!2073, !2070, !2071, !865}
!2074 = !DILocation(line: 646, column: 29, scope: !1781)
!2075 = !DILocation(line: 0, scope: !1779)
!2076 = !DILocation(line: 649, column: 49, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1779, file: !459, line: 648, column: 29)
!2078 = !DILocation(line: 649, column: 39, scope: !2077)
!2079 = !DILocation(line: 649, column: 31, scope: !2077)
!2080 = !DILocation(line: 648, column: 60, scope: !2077)
!2081 = !DILocation(line: 648, column: 50, scope: !2077)
!2082 = !DILocation(line: 648, column: 29, scope: !1779)
!2083 = distinct !{!2083, !2082, !2084, !865}
!2084 = !DILocation(line: 654, column: 33, scope: !1779)
!2085 = !DILocation(line: 657, column: 43, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1782, file: !459, line: 657, column: 29)
!2087 = !DILocalVariable(name: "wc", arg: 1, scope: !2088, file: !2089, line: 865, type: !2092)
!2088 = distinct !DISubprogram(name: "c32isprint", scope: !2089, file: !2089, line: 865, type: !2090, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2094)
!2089 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!150, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2093, line: 20, baseType: !129)
!2093 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2094 = !{!2087}
!2095 = !DILocation(line: 0, scope: !2088, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 657, column: 31, scope: !2086)
!2097 = !DILocation(line: 871, column: 10, scope: !2088, inlinedAt: !2096)
!2098 = !DILocation(line: 657, column: 31, scope: !2086)
!2099 = !DILocation(line: 664, column: 23, scope: !1774)
!2100 = !DILocation(line: 665, column: 19, scope: !1775)
!2101 = !DILocation(line: 666, column: 15, scope: !1772)
!2102 = !DILocation(line: 753, column: 2, scope: !1728)
!2103 = !DILocation(line: 756, column: 51, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1728, file: !459, line: 756, column: 7)
!2105 = !DILocation(line: 0, scope: !1772)
!2106 = !DILocation(line: 670, column: 19, scope: !1788)
!2107 = !DILocation(line: 670, column: 23, scope: !1788)
!2108 = !DILocation(line: 674, column: 33, scope: !1787)
!2109 = !DILocation(line: 0, scope: !1787)
!2110 = !DILocation(line: 676, column: 17, scope: !1787)
!2111 = !DILocation(line: 398, column: 12, scope: !1761)
!2112 = !DILocation(line: 678, column: 43, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !459, line: 678, column: 25)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !459, line: 677, column: 19)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !459, line: 676, column: 17)
!2116 = distinct !DILexicalBlock(scope: !1787, file: !459, line: 676, column: 17)
!2117 = !DILocation(line: 680, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !459, line: 680, column: 25)
!2119 = distinct !DILexicalBlock(scope: !2113, file: !459, line: 679, column: 23)
!2120 = !DILocation(line: 680, column: 25, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !459, line: 680, column: 25)
!2122 = !DILocation(line: 680, column: 25, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !459, line: 680, column: 25)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 680, column: 25)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !459, line: 680, column: 25)
!2126 = !DILocation(line: 680, column: 25, scope: !2124)
!2127 = !DILocation(line: 680, column: 25, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !459, line: 680, column: 25)
!2129 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 680, column: 25)
!2130 = !DILocation(line: 680, column: 25, scope: !2129)
!2131 = !DILocation(line: 680, column: 25, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !459, line: 680, column: 25)
!2133 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 680, column: 25)
!2134 = !DILocation(line: 680, column: 25, scope: !2133)
!2135 = !DILocation(line: 680, column: 25, scope: !2125)
!2136 = !DILocation(line: 680, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !459, line: 680, column: 25)
!2138 = distinct !DILexicalBlock(scope: !2118, file: !459, line: 680, column: 25)
!2139 = !DILocation(line: 680, column: 25, scope: !2138)
!2140 = !DILocation(line: 681, column: 25, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !459, line: 681, column: 25)
!2142 = distinct !DILexicalBlock(scope: !2119, file: !459, line: 681, column: 25)
!2143 = !DILocation(line: 681, column: 25, scope: !2142)
!2144 = !DILocation(line: 682, column: 25, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !459, line: 682, column: 25)
!2146 = distinct !DILexicalBlock(scope: !2119, file: !459, line: 682, column: 25)
!2147 = !DILocation(line: 682, column: 25, scope: !2146)
!2148 = !DILocation(line: 683, column: 38, scope: !2119)
!2149 = !DILocation(line: 683, column: 33, scope: !2119)
!2150 = !DILocation(line: 684, column: 23, scope: !2119)
!2151 = !DILocation(line: 685, column: 30, scope: !2113)
!2152 = !DILocation(line: 687, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !459, line: 687, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !459, line: 687, column: 25)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !459, line: 686, column: 23)
!2156 = distinct !DILexicalBlock(scope: !2113, file: !459, line: 685, column: 30)
!2157 = !DILocation(line: 687, column: 25, scope: !2154)
!2158 = !DILocation(line: 689, column: 23, scope: !2155)
!2159 = !DILocation(line: 690, column: 35, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2114, file: !459, line: 690, column: 25)
!2161 = !DILocation(line: 690, column: 30, scope: !2160)
!2162 = !DILocation(line: 690, column: 25, scope: !2114)
!2163 = !DILocation(line: 692, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !459, line: 692, column: 21)
!2165 = distinct !DILexicalBlock(scope: !2114, file: !459, line: 692, column: 21)
!2166 = !DILocation(line: 692, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !459, line: 692, column: 21)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !459, line: 692, column: 21)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !459, line: 692, column: 21)
!2170 = !DILocation(line: 692, column: 21, scope: !2168)
!2171 = !DILocation(line: 692, column: 21, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !459, line: 692, column: 21)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !459, line: 692, column: 21)
!2174 = !DILocation(line: 692, column: 21, scope: !2173)
!2175 = !DILocation(line: 692, column: 21, scope: !2169)
!2176 = !DILocation(line: 0, scope: !2114)
!2177 = !DILocation(line: 693, column: 21, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !459, line: 693, column: 21)
!2179 = distinct !DILexicalBlock(scope: !2114, file: !459, line: 693, column: 21)
!2180 = !DILocation(line: 693, column: 21, scope: !2179)
!2181 = !DILocation(line: 694, column: 25, scope: !2114)
!2182 = !DILocation(line: 676, column: 17, scope: !2115)
!2183 = distinct !{!2183, !2184, !2185}
!2184 = !DILocation(line: 676, column: 17, scope: !2116)
!2185 = !DILocation(line: 695, column: 19, scope: !2116)
!2186 = !DILocation(line: 409, column: 30, scope: !1896)
!2187 = !DILocation(line: 702, column: 34, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1761, file: !459, line: 702, column: 11)
!2189 = !DILocation(line: 704, column: 14, scope: !2188)
!2190 = !DILocation(line: 705, column: 14, scope: !2188)
!2191 = !DILocation(line: 705, column: 35, scope: !2188)
!2192 = !DILocation(line: 705, column: 17, scope: !2188)
!2193 = !DILocation(line: 705, column: 47, scope: !2188)
!2194 = !DILocation(line: 705, column: 65, scope: !2188)
!2195 = !DILocation(line: 706, column: 11, scope: !2188)
!2196 = !DILocation(line: 702, column: 11, scope: !1761)
!2197 = !DILocation(line: 395, column: 15, scope: !1759)
!2198 = !DILocation(line: 709, column: 5, scope: !1761)
!2199 = !DILocation(line: 710, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1761, file: !459, line: 710, column: 7)
!2201 = !DILocation(line: 710, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2200, file: !459, line: 710, column: 7)
!2203 = !DILocation(line: 710, column: 7, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !459, line: 710, column: 7)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !459, line: 710, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !459, line: 710, column: 7)
!2207 = !DILocation(line: 710, column: 7, scope: !2205)
!2208 = !DILocation(line: 710, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !459, line: 710, column: 7)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !459, line: 710, column: 7)
!2211 = !DILocation(line: 710, column: 7, scope: !2210)
!2212 = !DILocation(line: 710, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !459, line: 710, column: 7)
!2214 = distinct !DILexicalBlock(scope: !2206, file: !459, line: 710, column: 7)
!2215 = !DILocation(line: 710, column: 7, scope: !2214)
!2216 = !DILocation(line: 710, column: 7, scope: !2206)
!2217 = !DILocation(line: 710, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !459, line: 710, column: 7)
!2219 = distinct !DILexicalBlock(scope: !2200, file: !459, line: 710, column: 7)
!2220 = !DILocation(line: 710, column: 7, scope: !2219)
!2221 = !DILocation(line: 712, column: 5, scope: !1761)
!2222 = !DILocation(line: 713, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !459, line: 713, column: 7)
!2224 = distinct !DILexicalBlock(scope: !1761, file: !459, line: 713, column: 7)
!2225 = !DILocation(line: 417, column: 21, scope: !1761)
!2226 = !DILocation(line: 713, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !459, line: 713, column: 7)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !459, line: 713, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !459, line: 713, column: 7)
!2230 = !DILocation(line: 713, column: 7, scope: !2228)
!2231 = !DILocation(line: 713, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !459, line: 713, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !459, line: 713, column: 7)
!2234 = !DILocation(line: 713, column: 7, scope: !2233)
!2235 = !DILocation(line: 713, column: 7, scope: !2229)
!2236 = !DILocation(line: 714, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !459, line: 714, column: 7)
!2238 = distinct !DILexicalBlock(scope: !1761, file: !459, line: 714, column: 7)
!2239 = !DILocation(line: 714, column: 7, scope: !2238)
!2240 = !DILocation(line: 716, column: 11, scope: !1761)
!2241 = !DILocation(line: 718, column: 5, scope: !1762)
!2242 = !DILocation(line: 395, column: 82, scope: !1762)
!2243 = !DILocation(line: 395, column: 3, scope: !1762)
!2244 = distinct !{!2244, !1892, !2245, !865}
!2245 = !DILocation(line: 718, column: 5, scope: !1759)
!2246 = !DILocation(line: 720, column: 11, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1728, file: !459, line: 720, column: 7)
!2248 = !DILocation(line: 720, column: 16, scope: !2247)
!2249 = !DILocation(line: 728, column: 51, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !1728, file: !459, line: 728, column: 7)
!2251 = !DILocation(line: 731, column: 11, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2250, file: !459, line: 730, column: 5)
!2253 = !DILocation(line: 732, column: 16, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2252, file: !459, line: 731, column: 11)
!2255 = !DILocation(line: 732, column: 9, scope: !2254)
!2256 = !DILocation(line: 736, column: 18, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !459, line: 736, column: 16)
!2258 = !DILocation(line: 736, column: 29, scope: !2257)
!2259 = !DILocation(line: 745, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !1728, file: !459, line: 745, column: 7)
!2261 = !DILocation(line: 745, column: 20, scope: !2260)
!2262 = !DILocation(line: 746, column: 12, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !459, line: 746, column: 5)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !459, line: 746, column: 5)
!2265 = !DILocation(line: 746, column: 5, scope: !2264)
!2266 = !DILocation(line: 747, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !459, line: 747, column: 7)
!2268 = distinct !DILexicalBlock(scope: !2263, file: !459, line: 747, column: 7)
!2269 = !DILocation(line: 747, column: 7, scope: !2268)
!2270 = !DILocation(line: 746, column: 39, scope: !2263)
!2271 = distinct !{!2271, !2265, !2272, !865}
!2272 = !DILocation(line: 747, column: 7, scope: !2264)
!2273 = !DILocation(line: 749, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1728, file: !459, line: 749, column: 7)
!2275 = !DILocation(line: 749, column: 7, scope: !1728)
!2276 = !DILocation(line: 750, column: 5, scope: !2274)
!2277 = !DILocation(line: 750, column: 17, scope: !2274)
!2278 = !DILocation(line: 756, column: 21, scope: !2104)
!2279 = !DILocation(line: 760, column: 42, scope: !1728)
!2280 = !DILocation(line: 758, column: 10, scope: !1728)
!2281 = !DILocation(line: 758, column: 3, scope: !1728)
!2282 = !DILocation(line: 762, column: 1, scope: !1728)
!2283 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !962, file: !962, line: 98, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!152}
!2286 = !DISubprogram(name: "strlen", scope: !968, file: !968, line: 407, type: !2287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!154, !125}
!2289 = !DISubprogram(name: "iswprint", scope: !2290, file: !2290, line: 120, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!2290 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2291 = distinct !DISubprogram(name: "quotearg_alloc", scope: !459, file: !459, line: 788, type: !2292, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!148, !125, !152, !1621}
!2294 = !{!2295, !2296, !2297}
!2295 = !DILocalVariable(name: "arg", arg: 1, scope: !2291, file: !459, line: 788, type: !125)
!2296 = !DILocalVariable(name: "argsize", arg: 2, scope: !2291, file: !459, line: 788, type: !152)
!2297 = !DILocalVariable(name: "o", arg: 3, scope: !2291, file: !459, line: 789, type: !1621)
!2298 = !DILocation(line: 0, scope: !2291)
!2299 = !DILocalVariable(name: "arg", arg: 1, scope: !2300, file: !459, line: 801, type: !125)
!2300 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !459, file: !459, line: 801, type: !2301, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!148, !125, !152, !716, !1621}
!2303 = !{!2299, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2304 = !DILocalVariable(name: "argsize", arg: 2, scope: !2300, file: !459, line: 801, type: !152)
!2305 = !DILocalVariable(name: "size", arg: 3, scope: !2300, file: !459, line: 801, type: !716)
!2306 = !DILocalVariable(name: "o", arg: 4, scope: !2300, file: !459, line: 802, type: !1621)
!2307 = !DILocalVariable(name: "p", scope: !2300, file: !459, line: 804, type: !1621)
!2308 = !DILocalVariable(name: "saved_errno", scope: !2300, file: !459, line: 805, type: !150)
!2309 = !DILocalVariable(name: "flags", scope: !2300, file: !459, line: 807, type: !150)
!2310 = !DILocalVariable(name: "bufsize", scope: !2300, file: !459, line: 808, type: !152)
!2311 = !DILocalVariable(name: "buf", scope: !2300, file: !459, line: 812, type: !148)
!2312 = !DILocation(line: 0, scope: !2300, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 791, column: 10, scope: !2291)
!2314 = !DILocation(line: 804, column: 37, scope: !2300, inlinedAt: !2313)
!2315 = !DILocation(line: 805, column: 21, scope: !2300, inlinedAt: !2313)
!2316 = !DILocation(line: 807, column: 18, scope: !2300, inlinedAt: !2313)
!2317 = !DILocation(line: 807, column: 24, scope: !2300, inlinedAt: !2313)
!2318 = !DILocation(line: 808, column: 72, scope: !2300, inlinedAt: !2313)
!2319 = !DILocation(line: 809, column: 56, scope: !2300, inlinedAt: !2313)
!2320 = !DILocation(line: 810, column: 49, scope: !2300, inlinedAt: !2313)
!2321 = !DILocation(line: 811, column: 49, scope: !2300, inlinedAt: !2313)
!2322 = !DILocation(line: 808, column: 20, scope: !2300, inlinedAt: !2313)
!2323 = !DILocation(line: 811, column: 62, scope: !2300, inlinedAt: !2313)
!2324 = !DILocation(line: 812, column: 15, scope: !2300, inlinedAt: !2313)
!2325 = !DILocation(line: 813, column: 60, scope: !2300, inlinedAt: !2313)
!2326 = !DILocation(line: 815, column: 32, scope: !2300, inlinedAt: !2313)
!2327 = !DILocation(line: 815, column: 47, scope: !2300, inlinedAt: !2313)
!2328 = !DILocation(line: 813, column: 3, scope: !2300, inlinedAt: !2313)
!2329 = !DILocation(line: 816, column: 9, scope: !2300, inlinedAt: !2313)
!2330 = !DILocation(line: 791, column: 3, scope: !2291)
!2331 = !DILocation(line: 0, scope: !2300)
!2332 = !DILocation(line: 804, column: 37, scope: !2300)
!2333 = !DILocation(line: 805, column: 21, scope: !2300)
!2334 = !DILocation(line: 807, column: 18, scope: !2300)
!2335 = !DILocation(line: 807, column: 27, scope: !2300)
!2336 = !DILocation(line: 807, column: 24, scope: !2300)
!2337 = !DILocation(line: 808, column: 72, scope: !2300)
!2338 = !DILocation(line: 809, column: 56, scope: !2300)
!2339 = !DILocation(line: 810, column: 49, scope: !2300)
!2340 = !DILocation(line: 811, column: 49, scope: !2300)
!2341 = !DILocation(line: 808, column: 20, scope: !2300)
!2342 = !DILocation(line: 811, column: 62, scope: !2300)
!2343 = !DILocation(line: 812, column: 15, scope: !2300)
!2344 = !DILocation(line: 813, column: 60, scope: !2300)
!2345 = !DILocation(line: 815, column: 32, scope: !2300)
!2346 = !DILocation(line: 815, column: 47, scope: !2300)
!2347 = !DILocation(line: 813, column: 3, scope: !2300)
!2348 = !DILocation(line: 816, column: 9, scope: !2300)
!2349 = !DILocation(line: 817, column: 7, scope: !2300)
!2350 = !DILocation(line: 818, column: 11, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2300, file: !459, line: 817, column: 7)
!2352 = !{!1212, !1212, i64 0}
!2353 = !DILocation(line: 818, column: 5, scope: !2351)
!2354 = !DILocation(line: 819, column: 3, scope: !2300)
!2355 = distinct !DISubprogram(name: "quotearg_free", scope: !459, file: !459, line: 837, type: !414, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2356)
!2356 = !{!2357, !2358}
!2357 = !DILocalVariable(name: "sv", scope: !2355, file: !459, line: 839, type: !560)
!2358 = !DILocalVariable(name: "i", scope: !2359, file: !459, line: 840, type: !150)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !459, line: 840, column: 3)
!2360 = !DILocation(line: 839, column: 24, scope: !2355)
!2361 = !DILocation(line: 0, scope: !2355)
!2362 = !DILocation(line: 0, scope: !2359)
!2363 = !DILocation(line: 840, column: 21, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !459, line: 840, column: 3)
!2365 = !DILocation(line: 840, column: 3, scope: !2359)
!2366 = !DILocation(line: 842, column: 13, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2355, file: !459, line: 842, column: 7)
!2368 = !{!2369, !782, i64 8}
!2369 = !{!"slotvec", !1212, i64 0, !782, i64 8}
!2370 = !DILocation(line: 842, column: 17, scope: !2367)
!2371 = !DILocation(line: 842, column: 7, scope: !2355)
!2372 = !DILocation(line: 841, column: 17, scope: !2364)
!2373 = !DILocation(line: 841, column: 5, scope: !2364)
!2374 = !DILocation(line: 840, column: 32, scope: !2364)
!2375 = distinct !{!2375, !2365, !2376, !865}
!2376 = !DILocation(line: 841, column: 20, scope: !2359)
!2377 = !DILocation(line: 844, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2367, file: !459, line: 843, column: 5)
!2379 = !DILocation(line: 845, column: 21, scope: !2378)
!2380 = !{!2369, !1212, i64 0}
!2381 = !DILocation(line: 846, column: 20, scope: !2378)
!2382 = !DILocation(line: 847, column: 5, scope: !2378)
!2383 = !DILocation(line: 848, column: 10, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2355, file: !459, line: 848, column: 7)
!2385 = !DILocation(line: 848, column: 7, scope: !2355)
!2386 = !DILocation(line: 850, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !459, line: 849, column: 5)
!2388 = !DILocation(line: 851, column: 15, scope: !2387)
!2389 = !DILocation(line: 852, column: 5, scope: !2387)
!2390 = !DILocation(line: 853, column: 10, scope: !2355)
!2391 = !DILocation(line: 854, column: 1, scope: !2355)
!2392 = !DISubprogram(name: "free", scope: !1575, file: !1575, line: 786, type: !2393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !149}
!2395 = distinct !DISubprogram(name: "quotearg_n", scope: !459, file: !459, line: 919, type: !965, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2396)
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "n", arg: 1, scope: !2395, file: !459, line: 919, type: !150)
!2398 = !DILocalVariable(name: "arg", arg: 2, scope: !2395, file: !459, line: 919, type: !125)
!2399 = !DILocation(line: 0, scope: !2395)
!2400 = !DILocation(line: 921, column: 10, scope: !2395)
!2401 = !DILocation(line: 921, column: 3, scope: !2395)
!2402 = distinct !DISubprogram(name: "quotearg_n_options", scope: !459, file: !459, line: 866, type: !2403, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!148, !150, !125, !152, !1621}
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2416, !2417, !2419, !2420, !2421}
!2406 = !DILocalVariable(name: "n", arg: 1, scope: !2402, file: !459, line: 866, type: !150)
!2407 = !DILocalVariable(name: "arg", arg: 2, scope: !2402, file: !459, line: 866, type: !125)
!2408 = !DILocalVariable(name: "argsize", arg: 3, scope: !2402, file: !459, line: 866, type: !152)
!2409 = !DILocalVariable(name: "options", arg: 4, scope: !2402, file: !459, line: 867, type: !1621)
!2410 = !DILocalVariable(name: "saved_errno", scope: !2402, file: !459, line: 869, type: !150)
!2411 = !DILocalVariable(name: "sv", scope: !2402, file: !459, line: 871, type: !560)
!2412 = !DILocalVariable(name: "nslots_max", scope: !2402, file: !459, line: 873, type: !150)
!2413 = !DILocalVariable(name: "preallocated", scope: !2414, file: !459, line: 879, type: !266)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !459, line: 878, column: 5)
!2415 = distinct !DILexicalBlock(scope: !2402, file: !459, line: 877, column: 7)
!2416 = !DILocalVariable(name: "new_nslots", scope: !2414, file: !459, line: 880, type: !729)
!2417 = !DILocalVariable(name: "size", scope: !2418, file: !459, line: 891, type: !152)
!2418 = distinct !DILexicalBlock(scope: !2402, file: !459, line: 890, column: 3)
!2419 = !DILocalVariable(name: "val", scope: !2418, file: !459, line: 892, type: !148)
!2420 = !DILocalVariable(name: "flags", scope: !2418, file: !459, line: 894, type: !150)
!2421 = !DILocalVariable(name: "qsize", scope: !2418, file: !459, line: 895, type: !152)
!2422 = !DILocation(line: 0, scope: !2402)
!2423 = !DILocation(line: 869, column: 21, scope: !2402)
!2424 = !DILocation(line: 871, column: 24, scope: !2402)
!2425 = !DILocation(line: 874, column: 17, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2402, file: !459, line: 874, column: 7)
!2427 = !DILocation(line: 875, column: 5, scope: !2426)
!2428 = !DILocation(line: 877, column: 7, scope: !2415)
!2429 = !DILocation(line: 877, column: 14, scope: !2415)
!2430 = !DILocation(line: 877, column: 7, scope: !2402)
!2431 = !DILocation(line: 879, column: 31, scope: !2414)
!2432 = !DILocation(line: 0, scope: !2414)
!2433 = !DILocation(line: 880, column: 7, scope: !2414)
!2434 = !DILocation(line: 880, column: 26, scope: !2414)
!2435 = !DILocation(line: 880, column: 13, scope: !2414)
!2436 = !DILocation(line: 882, column: 31, scope: !2414)
!2437 = !DILocation(line: 883, column: 33, scope: !2414)
!2438 = !DILocation(line: 883, column: 42, scope: !2414)
!2439 = !DILocation(line: 883, column: 31, scope: !2414)
!2440 = !DILocation(line: 882, column: 22, scope: !2414)
!2441 = !DILocation(line: 882, column: 15, scope: !2414)
!2442 = !DILocation(line: 884, column: 11, scope: !2414)
!2443 = !DILocation(line: 885, column: 15, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2414, file: !459, line: 884, column: 11)
!2445 = !{i64 0, i64 8, !2352, i64 8, i64 8, !781}
!2446 = !DILocation(line: 885, column: 9, scope: !2444)
!2447 = !DILocation(line: 886, column: 20, scope: !2414)
!2448 = !DILocation(line: 886, column: 18, scope: !2414)
!2449 = !DILocation(line: 886, column: 32, scope: !2414)
!2450 = !DILocation(line: 886, column: 43, scope: !2414)
!2451 = !DILocation(line: 886, column: 53, scope: !2414)
!2452 = !DILocation(line: 0, scope: !1831, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 886, column: 7, scope: !2414)
!2454 = !DILocation(line: 59, column: 10, scope: !1831, inlinedAt: !2453)
!2455 = !DILocation(line: 887, column: 16, scope: !2414)
!2456 = !DILocation(line: 887, column: 14, scope: !2414)
!2457 = !DILocation(line: 888, column: 5, scope: !2415)
!2458 = !DILocation(line: 888, column: 5, scope: !2414)
!2459 = !DILocation(line: 891, column: 19, scope: !2418)
!2460 = !DILocation(line: 891, column: 25, scope: !2418)
!2461 = !DILocation(line: 0, scope: !2418)
!2462 = !DILocation(line: 892, column: 23, scope: !2418)
!2463 = !DILocation(line: 894, column: 26, scope: !2418)
!2464 = !DILocation(line: 894, column: 32, scope: !2418)
!2465 = !DILocation(line: 896, column: 55, scope: !2418)
!2466 = !DILocation(line: 897, column: 55, scope: !2418)
!2467 = !DILocation(line: 898, column: 55, scope: !2418)
!2468 = !DILocation(line: 899, column: 55, scope: !2418)
!2469 = !DILocation(line: 895, column: 20, scope: !2418)
!2470 = !DILocation(line: 901, column: 14, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2418, file: !459, line: 901, column: 9)
!2472 = !DILocation(line: 901, column: 9, scope: !2418)
!2473 = !DILocation(line: 903, column: 35, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !459, line: 902, column: 7)
!2475 = !DILocation(line: 903, column: 20, scope: !2474)
!2476 = !DILocation(line: 904, column: 17, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !459, line: 904, column: 13)
!2478 = !DILocation(line: 904, column: 13, scope: !2474)
!2479 = !DILocation(line: 905, column: 11, scope: !2477)
!2480 = !DILocation(line: 906, column: 27, scope: !2474)
!2481 = !DILocation(line: 906, column: 19, scope: !2474)
!2482 = !DILocation(line: 907, column: 69, scope: !2474)
!2483 = !DILocation(line: 909, column: 44, scope: !2474)
!2484 = !DILocation(line: 910, column: 44, scope: !2474)
!2485 = !DILocation(line: 907, column: 9, scope: !2474)
!2486 = !DILocation(line: 911, column: 7, scope: !2474)
!2487 = !DILocation(line: 913, column: 11, scope: !2418)
!2488 = !DILocation(line: 914, column: 5, scope: !2418)
!2489 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !459, file: !459, line: 925, type: !2490, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!148, !150, !125, !152}
!2492 = !{!2493, !2494, !2495}
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2489, file: !459, line: 925, type: !150)
!2494 = !DILocalVariable(name: "arg", arg: 2, scope: !2489, file: !459, line: 925, type: !125)
!2495 = !DILocalVariable(name: "argsize", arg: 3, scope: !2489, file: !459, line: 925, type: !152)
!2496 = !DILocation(line: 0, scope: !2489)
!2497 = !DILocation(line: 927, column: 10, scope: !2489)
!2498 = !DILocation(line: 927, column: 3, scope: !2489)
!2499 = distinct !DISubprogram(name: "quotearg", scope: !459, file: !459, line: 931, type: !972, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2500)
!2500 = !{!2501}
!2501 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !459, line: 931, type: !125)
!2502 = !DILocation(line: 0, scope: !2499)
!2503 = !DILocation(line: 0, scope: !2395, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 933, column: 10, scope: !2499)
!2505 = !DILocation(line: 921, column: 10, scope: !2395, inlinedAt: !2504)
!2506 = !DILocation(line: 933, column: 3, scope: !2499)
!2507 = distinct !DISubprogram(name: "quotearg_mem", scope: !459, file: !459, line: 937, type: !2508, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!148, !125, !152}
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !459, line: 937, type: !125)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !459, line: 937, type: !152)
!2513 = !DILocation(line: 0, scope: !2507)
!2514 = !DILocation(line: 0, scope: !2489, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 939, column: 10, scope: !2507)
!2516 = !DILocation(line: 927, column: 10, scope: !2489, inlinedAt: !2515)
!2517 = !DILocation(line: 939, column: 3, scope: !2507)
!2518 = distinct !DISubprogram(name: "quotearg_n_style", scope: !459, file: !459, line: 943, type: !2519, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!148, !150, !485, !125}
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DILocalVariable(name: "n", arg: 1, scope: !2518, file: !459, line: 943, type: !150)
!2523 = !DILocalVariable(name: "s", arg: 2, scope: !2518, file: !459, line: 943, type: !485)
!2524 = !DILocalVariable(name: "arg", arg: 3, scope: !2518, file: !459, line: 943, type: !125)
!2525 = !DILocalVariable(name: "o", scope: !2518, file: !459, line: 945, type: !1622)
!2526 = !DILocation(line: 0, scope: !2518)
!2527 = !DILocation(line: 945, column: 3, scope: !2518)
!2528 = !DILocation(line: 945, column: 32, scope: !2518)
!2529 = !{!2530}
!2530 = distinct !{!2530, !2531, !"quoting_options_from_style: argument 0"}
!2531 = distinct !{!2531, !"quoting_options_from_style"}
!2532 = !DILocation(line: 945, column: 36, scope: !2518)
!2533 = !DILocalVariable(name: "style", arg: 1, scope: !2534, file: !459, line: 183, type: !485)
!2534 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !459, file: !459, line: 183, type: !2535, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!512, !485}
!2537 = !{!2533, !2538}
!2538 = !DILocalVariable(name: "o", scope: !2534, file: !459, line: 185, type: !512)
!2539 = !DILocation(line: 0, scope: !2534, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 945, column: 36, scope: !2518)
!2541 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2540)
!2542 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2540)
!2543 = distinct !DILexicalBlock(scope: !2534, file: !459, line: 186, column: 7)
!2544 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2540)
!2545 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2540)
!2546 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2540)
!2547 = !DILocation(line: 946, column: 10, scope: !2518)
!2548 = !DILocation(line: 947, column: 1, scope: !2518)
!2549 = !DILocation(line: 946, column: 3, scope: !2518)
!2550 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !459, file: !459, line: 950, type: !2551, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!148, !150, !485, !125, !152}
!2553 = !{!2554, !2555, !2556, !2557, !2558}
!2554 = !DILocalVariable(name: "n", arg: 1, scope: !2550, file: !459, line: 950, type: !150)
!2555 = !DILocalVariable(name: "s", arg: 2, scope: !2550, file: !459, line: 950, type: !485)
!2556 = !DILocalVariable(name: "arg", arg: 3, scope: !2550, file: !459, line: 951, type: !125)
!2557 = !DILocalVariable(name: "argsize", arg: 4, scope: !2550, file: !459, line: 951, type: !152)
!2558 = !DILocalVariable(name: "o", scope: !2550, file: !459, line: 953, type: !1622)
!2559 = !DILocation(line: 0, scope: !2550)
!2560 = !DILocation(line: 953, column: 3, scope: !2550)
!2561 = !DILocation(line: 953, column: 32, scope: !2550)
!2562 = !{!2563}
!2563 = distinct !{!2563, !2564, !"quoting_options_from_style: argument 0"}
!2564 = distinct !{!2564, !"quoting_options_from_style"}
!2565 = !DILocation(line: 953, column: 36, scope: !2550)
!2566 = !DILocation(line: 0, scope: !2534, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 953, column: 36, scope: !2550)
!2568 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2567)
!2569 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2567)
!2570 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2567)
!2571 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2567)
!2572 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2567)
!2573 = !DILocation(line: 954, column: 10, scope: !2550)
!2574 = !DILocation(line: 955, column: 1, scope: !2550)
!2575 = !DILocation(line: 954, column: 3, scope: !2550)
!2576 = distinct !DISubprogram(name: "quotearg_style", scope: !459, file: !459, line: 958, type: !2577, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!148, !485, !125}
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "s", arg: 1, scope: !2576, file: !459, line: 958, type: !485)
!2581 = !DILocalVariable(name: "arg", arg: 2, scope: !2576, file: !459, line: 958, type: !125)
!2582 = !DILocation(line: 0, scope: !2576)
!2583 = !DILocation(line: 0, scope: !2518, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 960, column: 10, scope: !2576)
!2585 = !DILocation(line: 945, column: 3, scope: !2518, inlinedAt: !2584)
!2586 = !DILocation(line: 945, column: 32, scope: !2518, inlinedAt: !2584)
!2587 = !{!2588}
!2588 = distinct !{!2588, !2589, !"quoting_options_from_style: argument 0"}
!2589 = distinct !{!2589, !"quoting_options_from_style"}
!2590 = !DILocation(line: 945, column: 36, scope: !2518, inlinedAt: !2584)
!2591 = !DILocation(line: 0, scope: !2534, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 945, column: 36, scope: !2518, inlinedAt: !2584)
!2593 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2592)
!2594 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2592)
!2595 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2592)
!2596 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2592)
!2597 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2592)
!2598 = !DILocation(line: 946, column: 10, scope: !2518, inlinedAt: !2584)
!2599 = !DILocation(line: 947, column: 1, scope: !2518, inlinedAt: !2584)
!2600 = !DILocation(line: 960, column: 3, scope: !2576)
!2601 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !459, file: !459, line: 964, type: !2602, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!148, !485, !125, !152}
!2604 = !{!2605, !2606, !2607}
!2605 = !DILocalVariable(name: "s", arg: 1, scope: !2601, file: !459, line: 964, type: !485)
!2606 = !DILocalVariable(name: "arg", arg: 2, scope: !2601, file: !459, line: 964, type: !125)
!2607 = !DILocalVariable(name: "argsize", arg: 3, scope: !2601, file: !459, line: 964, type: !152)
!2608 = !DILocation(line: 0, scope: !2601)
!2609 = !DILocation(line: 0, scope: !2550, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 966, column: 10, scope: !2601)
!2611 = !DILocation(line: 953, column: 3, scope: !2550, inlinedAt: !2610)
!2612 = !DILocation(line: 953, column: 32, scope: !2550, inlinedAt: !2610)
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"quoting_options_from_style: argument 0"}
!2615 = distinct !{!2615, !"quoting_options_from_style"}
!2616 = !DILocation(line: 953, column: 36, scope: !2550, inlinedAt: !2610)
!2617 = !DILocation(line: 0, scope: !2534, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 953, column: 36, scope: !2550, inlinedAt: !2610)
!2619 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2618)
!2620 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2618)
!2621 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2618)
!2622 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2618)
!2623 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2618)
!2624 = !DILocation(line: 954, column: 10, scope: !2550, inlinedAt: !2610)
!2625 = !DILocation(line: 955, column: 1, scope: !2550, inlinedAt: !2610)
!2626 = !DILocation(line: 966, column: 3, scope: !2601)
!2627 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !459, file: !459, line: 970, type: !2628, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!148, !125, !152, !4}
!2630 = !{!2631, !2632, !2633, !2634}
!2631 = !DILocalVariable(name: "arg", arg: 1, scope: !2627, file: !459, line: 970, type: !125)
!2632 = !DILocalVariable(name: "argsize", arg: 2, scope: !2627, file: !459, line: 970, type: !152)
!2633 = !DILocalVariable(name: "ch", arg: 3, scope: !2627, file: !459, line: 970, type: !4)
!2634 = !DILocalVariable(name: "options", scope: !2627, file: !459, line: 972, type: !512)
!2635 = !DILocation(line: 0, scope: !2627)
!2636 = !DILocation(line: 972, column: 3, scope: !2627)
!2637 = !DILocation(line: 972, column: 26, scope: !2627)
!2638 = !DILocation(line: 973, column: 13, scope: !2627)
!2639 = !{i64 0, i64 4, !827, i64 4, i64 4, !818, i64 8, i64 32, !827, i64 40, i64 8, !781, i64 48, i64 8, !781}
!2640 = !DILocation(line: 0, scope: !1641, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 974, column: 3, scope: !2627)
!2642 = !DILocation(line: 147, column: 41, scope: !1641, inlinedAt: !2641)
!2643 = !DILocation(line: 147, column: 62, scope: !1641, inlinedAt: !2641)
!2644 = !DILocation(line: 147, column: 57, scope: !1641, inlinedAt: !2641)
!2645 = !DILocation(line: 148, column: 15, scope: !1641, inlinedAt: !2641)
!2646 = !DILocation(line: 149, column: 21, scope: !1641, inlinedAt: !2641)
!2647 = !DILocation(line: 149, column: 24, scope: !1641, inlinedAt: !2641)
!2648 = !DILocation(line: 150, column: 19, scope: !1641, inlinedAt: !2641)
!2649 = !DILocation(line: 150, column: 24, scope: !1641, inlinedAt: !2641)
!2650 = !DILocation(line: 150, column: 6, scope: !1641, inlinedAt: !2641)
!2651 = !DILocation(line: 975, column: 10, scope: !2627)
!2652 = !DILocation(line: 976, column: 1, scope: !2627)
!2653 = !DILocation(line: 975, column: 3, scope: !2627)
!2654 = distinct !DISubprogram(name: "quotearg_char", scope: !459, file: !459, line: 979, type: !2655, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!148, !125, !4}
!2657 = !{!2658, !2659}
!2658 = !DILocalVariable(name: "arg", arg: 1, scope: !2654, file: !459, line: 979, type: !125)
!2659 = !DILocalVariable(name: "ch", arg: 2, scope: !2654, file: !459, line: 979, type: !4)
!2660 = !DILocation(line: 0, scope: !2654)
!2661 = !DILocation(line: 0, scope: !2627, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 981, column: 10, scope: !2654)
!2663 = !DILocation(line: 972, column: 3, scope: !2627, inlinedAt: !2662)
!2664 = !DILocation(line: 972, column: 26, scope: !2627, inlinedAt: !2662)
!2665 = !DILocation(line: 973, column: 13, scope: !2627, inlinedAt: !2662)
!2666 = !DILocation(line: 0, scope: !1641, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 974, column: 3, scope: !2627, inlinedAt: !2662)
!2668 = !DILocation(line: 147, column: 41, scope: !1641, inlinedAt: !2667)
!2669 = !DILocation(line: 147, column: 62, scope: !1641, inlinedAt: !2667)
!2670 = !DILocation(line: 147, column: 57, scope: !1641, inlinedAt: !2667)
!2671 = !DILocation(line: 148, column: 15, scope: !1641, inlinedAt: !2667)
!2672 = !DILocation(line: 149, column: 21, scope: !1641, inlinedAt: !2667)
!2673 = !DILocation(line: 149, column: 24, scope: !1641, inlinedAt: !2667)
!2674 = !DILocation(line: 150, column: 19, scope: !1641, inlinedAt: !2667)
!2675 = !DILocation(line: 150, column: 24, scope: !1641, inlinedAt: !2667)
!2676 = !DILocation(line: 150, column: 6, scope: !1641, inlinedAt: !2667)
!2677 = !DILocation(line: 975, column: 10, scope: !2627, inlinedAt: !2662)
!2678 = !DILocation(line: 976, column: 1, scope: !2627, inlinedAt: !2662)
!2679 = !DILocation(line: 981, column: 3, scope: !2654)
!2680 = distinct !DISubprogram(name: "quotearg_colon", scope: !459, file: !459, line: 985, type: !972, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2681)
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "arg", arg: 1, scope: !2680, file: !459, line: 985, type: !125)
!2683 = !DILocation(line: 0, scope: !2680)
!2684 = !DILocation(line: 0, scope: !2654, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 987, column: 10, scope: !2680)
!2686 = !DILocation(line: 0, scope: !2627, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 981, column: 10, scope: !2654, inlinedAt: !2685)
!2688 = !DILocation(line: 972, column: 3, scope: !2627, inlinedAt: !2687)
!2689 = !DILocation(line: 972, column: 26, scope: !2627, inlinedAt: !2687)
!2690 = !DILocation(line: 973, column: 13, scope: !2627, inlinedAt: !2687)
!2691 = !DILocation(line: 0, scope: !1641, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 974, column: 3, scope: !2627, inlinedAt: !2687)
!2693 = !DILocation(line: 147, column: 57, scope: !1641, inlinedAt: !2692)
!2694 = !DILocation(line: 149, column: 21, scope: !1641, inlinedAt: !2692)
!2695 = !DILocation(line: 150, column: 6, scope: !1641, inlinedAt: !2692)
!2696 = !DILocation(line: 975, column: 10, scope: !2627, inlinedAt: !2687)
!2697 = !DILocation(line: 976, column: 1, scope: !2627, inlinedAt: !2687)
!2698 = !DILocation(line: 987, column: 3, scope: !2680)
!2699 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !459, file: !459, line: 991, type: !2508, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2700)
!2700 = !{!2701, !2702}
!2701 = !DILocalVariable(name: "arg", arg: 1, scope: !2699, file: !459, line: 991, type: !125)
!2702 = !DILocalVariable(name: "argsize", arg: 2, scope: !2699, file: !459, line: 991, type: !152)
!2703 = !DILocation(line: 0, scope: !2699)
!2704 = !DILocation(line: 0, scope: !2627, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 993, column: 10, scope: !2699)
!2706 = !DILocation(line: 972, column: 3, scope: !2627, inlinedAt: !2705)
!2707 = !DILocation(line: 972, column: 26, scope: !2627, inlinedAt: !2705)
!2708 = !DILocation(line: 973, column: 13, scope: !2627, inlinedAt: !2705)
!2709 = !DILocation(line: 0, scope: !1641, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 974, column: 3, scope: !2627, inlinedAt: !2705)
!2711 = !DILocation(line: 147, column: 57, scope: !1641, inlinedAt: !2710)
!2712 = !DILocation(line: 149, column: 21, scope: !1641, inlinedAt: !2710)
!2713 = !DILocation(line: 150, column: 6, scope: !1641, inlinedAt: !2710)
!2714 = !DILocation(line: 975, column: 10, scope: !2627, inlinedAt: !2705)
!2715 = !DILocation(line: 976, column: 1, scope: !2627, inlinedAt: !2705)
!2716 = !DILocation(line: 993, column: 3, scope: !2699)
!2717 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !459, file: !459, line: 997, type: !2519, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2718)
!2718 = !{!2719, !2720, !2721, !2722}
!2719 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !459, line: 997, type: !150)
!2720 = !DILocalVariable(name: "s", arg: 2, scope: !2717, file: !459, line: 997, type: !485)
!2721 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !459, line: 997, type: !125)
!2722 = !DILocalVariable(name: "options", scope: !2717, file: !459, line: 999, type: !512)
!2723 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1000, column: 13, scope: !2717)
!2725 = !DILocation(line: 0, scope: !2717)
!2726 = !DILocation(line: 999, column: 3, scope: !2717)
!2727 = !DILocation(line: 999, column: 26, scope: !2717)
!2728 = !DILocation(line: 0, scope: !2534, inlinedAt: !2724)
!2729 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2724)
!2730 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2724)
!2731 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2724)
!2732 = !{!2733}
!2733 = distinct !{!2733, !2734, !"quoting_options_from_style: argument 0"}
!2734 = distinct !{!2734, !"quoting_options_from_style"}
!2735 = !DILocation(line: 1000, column: 13, scope: !2717)
!2736 = !DILocation(line: 0, scope: !1641, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 1001, column: 3, scope: !2717)
!2738 = !DILocation(line: 147, column: 57, scope: !1641, inlinedAt: !2737)
!2739 = !DILocation(line: 149, column: 21, scope: !1641, inlinedAt: !2737)
!2740 = !DILocation(line: 150, column: 6, scope: !1641, inlinedAt: !2737)
!2741 = !DILocation(line: 1002, column: 10, scope: !2717)
!2742 = !DILocation(line: 1003, column: 1, scope: !2717)
!2743 = !DILocation(line: 1002, column: 3, scope: !2717)
!2744 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !459, file: !459, line: 1006, type: !2745, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!148, !150, !125, !125, !125}
!2747 = !{!2748, !2749, !2750, !2751}
!2748 = !DILocalVariable(name: "n", arg: 1, scope: !2744, file: !459, line: 1006, type: !150)
!2749 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2744, file: !459, line: 1006, type: !125)
!2750 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2744, file: !459, line: 1007, type: !125)
!2751 = !DILocalVariable(name: "arg", arg: 4, scope: !2744, file: !459, line: 1007, type: !125)
!2752 = !DILocation(line: 0, scope: !2744)
!2753 = !DILocalVariable(name: "n", arg: 1, scope: !2754, file: !459, line: 1014, type: !150)
!2754 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !459, file: !459, line: 1014, type: !2755, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!148, !150, !125, !125, !125, !152}
!2757 = !{!2753, !2758, !2759, !2760, !2761, !2762}
!2758 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2754, file: !459, line: 1014, type: !125)
!2759 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2754, file: !459, line: 1015, type: !125)
!2760 = !DILocalVariable(name: "arg", arg: 4, scope: !2754, file: !459, line: 1016, type: !125)
!2761 = !DILocalVariable(name: "argsize", arg: 5, scope: !2754, file: !459, line: 1016, type: !152)
!2762 = !DILocalVariable(name: "o", scope: !2754, file: !459, line: 1018, type: !512)
!2763 = !DILocation(line: 0, scope: !2754, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1009, column: 10, scope: !2744)
!2765 = !DILocation(line: 1018, column: 3, scope: !2754, inlinedAt: !2764)
!2766 = !DILocation(line: 1018, column: 26, scope: !2754, inlinedAt: !2764)
!2767 = !DILocation(line: 1018, column: 30, scope: !2754, inlinedAt: !2764)
!2768 = !DILocation(line: 0, scope: !1681, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 1019, column: 3, scope: !2754, inlinedAt: !2764)
!2770 = !DILocation(line: 174, column: 12, scope: !1681, inlinedAt: !2769)
!2771 = !DILocation(line: 175, column: 8, scope: !1694, inlinedAt: !2769)
!2772 = !DILocation(line: 175, column: 19, scope: !1694, inlinedAt: !2769)
!2773 = !DILocation(line: 176, column: 5, scope: !1694, inlinedAt: !2769)
!2774 = !DILocation(line: 177, column: 6, scope: !1681, inlinedAt: !2769)
!2775 = !DILocation(line: 177, column: 17, scope: !1681, inlinedAt: !2769)
!2776 = !DILocation(line: 178, column: 6, scope: !1681, inlinedAt: !2769)
!2777 = !DILocation(line: 178, column: 18, scope: !1681, inlinedAt: !2769)
!2778 = !DILocation(line: 1020, column: 10, scope: !2754, inlinedAt: !2764)
!2779 = !DILocation(line: 1021, column: 1, scope: !2754, inlinedAt: !2764)
!2780 = !DILocation(line: 1009, column: 3, scope: !2744)
!2781 = !DILocation(line: 0, scope: !2754)
!2782 = !DILocation(line: 1018, column: 3, scope: !2754)
!2783 = !DILocation(line: 1018, column: 26, scope: !2754)
!2784 = !DILocation(line: 1018, column: 30, scope: !2754)
!2785 = !DILocation(line: 0, scope: !1681, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 1019, column: 3, scope: !2754)
!2787 = !DILocation(line: 174, column: 12, scope: !1681, inlinedAt: !2786)
!2788 = !DILocation(line: 175, column: 8, scope: !1694, inlinedAt: !2786)
!2789 = !DILocation(line: 175, column: 19, scope: !1694, inlinedAt: !2786)
!2790 = !DILocation(line: 176, column: 5, scope: !1694, inlinedAt: !2786)
!2791 = !DILocation(line: 177, column: 6, scope: !1681, inlinedAt: !2786)
!2792 = !DILocation(line: 177, column: 17, scope: !1681, inlinedAt: !2786)
!2793 = !DILocation(line: 178, column: 6, scope: !1681, inlinedAt: !2786)
!2794 = !DILocation(line: 178, column: 18, scope: !1681, inlinedAt: !2786)
!2795 = !DILocation(line: 1020, column: 10, scope: !2754)
!2796 = !DILocation(line: 1021, column: 1, scope: !2754)
!2797 = !DILocation(line: 1020, column: 3, scope: !2754)
!2798 = distinct !DISubprogram(name: "quotearg_custom", scope: !459, file: !459, line: 1024, type: !2799, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!148, !125, !125, !125}
!2801 = !{!2802, !2803, !2804}
!2802 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2798, file: !459, line: 1024, type: !125)
!2803 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2798, file: !459, line: 1024, type: !125)
!2804 = !DILocalVariable(name: "arg", arg: 3, scope: !2798, file: !459, line: 1025, type: !125)
!2805 = !DILocation(line: 0, scope: !2798)
!2806 = !DILocation(line: 0, scope: !2744, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1027, column: 10, scope: !2798)
!2808 = !DILocation(line: 0, scope: !2754, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1009, column: 10, scope: !2744, inlinedAt: !2807)
!2810 = !DILocation(line: 1018, column: 3, scope: !2754, inlinedAt: !2809)
!2811 = !DILocation(line: 1018, column: 26, scope: !2754, inlinedAt: !2809)
!2812 = !DILocation(line: 1018, column: 30, scope: !2754, inlinedAt: !2809)
!2813 = !DILocation(line: 0, scope: !1681, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1019, column: 3, scope: !2754, inlinedAt: !2809)
!2815 = !DILocation(line: 174, column: 12, scope: !1681, inlinedAt: !2814)
!2816 = !DILocation(line: 175, column: 8, scope: !1694, inlinedAt: !2814)
!2817 = !DILocation(line: 175, column: 19, scope: !1694, inlinedAt: !2814)
!2818 = !DILocation(line: 176, column: 5, scope: !1694, inlinedAt: !2814)
!2819 = !DILocation(line: 177, column: 6, scope: !1681, inlinedAt: !2814)
!2820 = !DILocation(line: 177, column: 17, scope: !1681, inlinedAt: !2814)
!2821 = !DILocation(line: 178, column: 6, scope: !1681, inlinedAt: !2814)
!2822 = !DILocation(line: 178, column: 18, scope: !1681, inlinedAt: !2814)
!2823 = !DILocation(line: 1020, column: 10, scope: !2754, inlinedAt: !2809)
!2824 = !DILocation(line: 1021, column: 1, scope: !2754, inlinedAt: !2809)
!2825 = !DILocation(line: 1027, column: 3, scope: !2798)
!2826 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !459, file: !459, line: 1031, type: !2827, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!148, !125, !125, !125, !152}
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2826, file: !459, line: 1031, type: !125)
!2831 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2826, file: !459, line: 1031, type: !125)
!2832 = !DILocalVariable(name: "arg", arg: 3, scope: !2826, file: !459, line: 1032, type: !125)
!2833 = !DILocalVariable(name: "argsize", arg: 4, scope: !2826, file: !459, line: 1032, type: !152)
!2834 = !DILocation(line: 0, scope: !2826)
!2835 = !DILocation(line: 0, scope: !2754, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 1034, column: 10, scope: !2826)
!2837 = !DILocation(line: 1018, column: 3, scope: !2754, inlinedAt: !2836)
!2838 = !DILocation(line: 1018, column: 26, scope: !2754, inlinedAt: !2836)
!2839 = !DILocation(line: 1018, column: 30, scope: !2754, inlinedAt: !2836)
!2840 = !DILocation(line: 0, scope: !1681, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1019, column: 3, scope: !2754, inlinedAt: !2836)
!2842 = !DILocation(line: 174, column: 12, scope: !1681, inlinedAt: !2841)
!2843 = !DILocation(line: 175, column: 8, scope: !1694, inlinedAt: !2841)
!2844 = !DILocation(line: 175, column: 19, scope: !1694, inlinedAt: !2841)
!2845 = !DILocation(line: 176, column: 5, scope: !1694, inlinedAt: !2841)
!2846 = !DILocation(line: 177, column: 6, scope: !1681, inlinedAt: !2841)
!2847 = !DILocation(line: 177, column: 17, scope: !1681, inlinedAt: !2841)
!2848 = !DILocation(line: 178, column: 6, scope: !1681, inlinedAt: !2841)
!2849 = !DILocation(line: 178, column: 18, scope: !1681, inlinedAt: !2841)
!2850 = !DILocation(line: 1020, column: 10, scope: !2754, inlinedAt: !2836)
!2851 = !DILocation(line: 1021, column: 1, scope: !2754, inlinedAt: !2836)
!2852 = !DILocation(line: 1034, column: 3, scope: !2826)
!2853 = distinct !DISubprogram(name: "quote_n_mem", scope: !459, file: !459, line: 1049, type: !2854, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!125, !150, !125, !152}
!2856 = !{!2857, !2858, !2859}
!2857 = !DILocalVariable(name: "n", arg: 1, scope: !2853, file: !459, line: 1049, type: !150)
!2858 = !DILocalVariable(name: "arg", arg: 2, scope: !2853, file: !459, line: 1049, type: !125)
!2859 = !DILocalVariable(name: "argsize", arg: 3, scope: !2853, file: !459, line: 1049, type: !152)
!2860 = !DILocation(line: 0, scope: !2853)
!2861 = !DILocation(line: 1051, column: 10, scope: !2853)
!2862 = !DILocation(line: 1051, column: 3, scope: !2853)
!2863 = distinct !DISubprogram(name: "quote_mem", scope: !459, file: !459, line: 1055, type: !2864, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!125, !125, !152}
!2866 = !{!2867, !2868}
!2867 = !DILocalVariable(name: "arg", arg: 1, scope: !2863, file: !459, line: 1055, type: !125)
!2868 = !DILocalVariable(name: "argsize", arg: 2, scope: !2863, file: !459, line: 1055, type: !152)
!2869 = !DILocation(line: 0, scope: !2863)
!2870 = !DILocation(line: 0, scope: !2853, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 1057, column: 10, scope: !2863)
!2872 = !DILocation(line: 1051, column: 10, scope: !2853, inlinedAt: !2871)
!2873 = !DILocation(line: 1057, column: 3, scope: !2863)
!2874 = distinct !DISubprogram(name: "quote_n", scope: !459, file: !459, line: 1061, type: !2875, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!125, !150, !125}
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "n", arg: 1, scope: !2874, file: !459, line: 1061, type: !150)
!2879 = !DILocalVariable(name: "arg", arg: 2, scope: !2874, file: !459, line: 1061, type: !125)
!2880 = !DILocation(line: 0, scope: !2874)
!2881 = !DILocation(line: 0, scope: !2853, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 1063, column: 10, scope: !2874)
!2883 = !DILocation(line: 1051, column: 10, scope: !2853, inlinedAt: !2882)
!2884 = !DILocation(line: 1063, column: 3, scope: !2874)
!2885 = distinct !DISubprogram(name: "quote", scope: !459, file: !459, line: 1067, type: !2886, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!125, !125}
!2888 = !{!2889}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2885, file: !459, line: 1067, type: !125)
!2890 = !DILocation(line: 0, scope: !2885)
!2891 = !DILocation(line: 0, scope: !2874, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 1069, column: 10, scope: !2885)
!2893 = !DILocation(line: 0, scope: !2853, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 1063, column: 10, scope: !2874, inlinedAt: !2892)
!2895 = !DILocation(line: 1051, column: 10, scope: !2853, inlinedAt: !2894)
!2896 = !DILocation(line: 1069, column: 3, scope: !2885)
!2897 = distinct !DISubprogram(name: "version_etc_arn", scope: !573, file: !573, line: 61, type: !2898, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2935)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2900, !125, !125, !125, !2934, !152}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !2903)
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2902, file: !283, line: 51, baseType: !150, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2902, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2902, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2902, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2902, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2902, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2902, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2902, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2902, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2902, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2902, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2902, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2902, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2902, file: !283, line: 70, baseType: !2918, size: 64, offset: 832)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2902, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2902, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2902, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2902, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2902, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2902, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2902, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2902, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2902, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2902, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2902, file: !283, line: 93, baseType: !2918, size: 64, offset: 1344)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2902, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2902, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2902, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2902, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941}
!2936 = !DILocalVariable(name: "stream", arg: 1, scope: !2897, file: !573, line: 61, type: !2900)
!2937 = !DILocalVariable(name: "command_name", arg: 2, scope: !2897, file: !573, line: 62, type: !125)
!2938 = !DILocalVariable(name: "package", arg: 3, scope: !2897, file: !573, line: 62, type: !125)
!2939 = !DILocalVariable(name: "version", arg: 4, scope: !2897, file: !573, line: 63, type: !125)
!2940 = !DILocalVariable(name: "authors", arg: 5, scope: !2897, file: !573, line: 64, type: !2934)
!2941 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2897, file: !573, line: 64, type: !152)
!2942 = !DILocation(line: 0, scope: !2897)
!2943 = !DILocation(line: 66, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2897, file: !573, line: 66, column: 7)
!2945 = !DILocation(line: 66, column: 7, scope: !2897)
!2946 = !DILocation(line: 67, column: 5, scope: !2944)
!2947 = !DILocation(line: 69, column: 5, scope: !2944)
!2948 = !DILocation(line: 83, column: 3, scope: !2897)
!2949 = !DILocation(line: 85, column: 3, scope: !2897)
!2950 = !DILocation(line: 88, column: 3, scope: !2897)
!2951 = !DILocation(line: 95, column: 3, scope: !2897)
!2952 = !DILocation(line: 97, column: 3, scope: !2897)
!2953 = !DILocation(line: 105, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2897, file: !573, line: 98, column: 5)
!2955 = !DILocation(line: 106, column: 7, scope: !2954)
!2956 = !DILocation(line: 109, column: 7, scope: !2954)
!2957 = !DILocation(line: 110, column: 7, scope: !2954)
!2958 = !DILocation(line: 113, column: 7, scope: !2954)
!2959 = !DILocation(line: 115, column: 7, scope: !2954)
!2960 = !DILocation(line: 120, column: 7, scope: !2954)
!2961 = !DILocation(line: 122, column: 7, scope: !2954)
!2962 = !DILocation(line: 127, column: 7, scope: !2954)
!2963 = !DILocation(line: 129, column: 7, scope: !2954)
!2964 = !DILocation(line: 134, column: 7, scope: !2954)
!2965 = !DILocation(line: 137, column: 7, scope: !2954)
!2966 = !DILocation(line: 142, column: 7, scope: !2954)
!2967 = !DILocation(line: 145, column: 7, scope: !2954)
!2968 = !DILocation(line: 150, column: 7, scope: !2954)
!2969 = !DILocation(line: 154, column: 7, scope: !2954)
!2970 = !DILocation(line: 159, column: 7, scope: !2954)
!2971 = !DILocation(line: 163, column: 7, scope: !2954)
!2972 = !DILocation(line: 170, column: 7, scope: !2954)
!2973 = !DILocation(line: 174, column: 7, scope: !2954)
!2974 = !DILocation(line: 176, column: 1, scope: !2897)
!2975 = distinct !DISubprogram(name: "version_etc_ar", scope: !573, file: !573, line: 183, type: !2976, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2900, !125, !125, !125, !2934}
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2984}
!2979 = !DILocalVariable(name: "stream", arg: 1, scope: !2975, file: !573, line: 183, type: !2900)
!2980 = !DILocalVariable(name: "command_name", arg: 2, scope: !2975, file: !573, line: 184, type: !125)
!2981 = !DILocalVariable(name: "package", arg: 3, scope: !2975, file: !573, line: 184, type: !125)
!2982 = !DILocalVariable(name: "version", arg: 4, scope: !2975, file: !573, line: 185, type: !125)
!2983 = !DILocalVariable(name: "authors", arg: 5, scope: !2975, file: !573, line: 185, type: !2934)
!2984 = !DILocalVariable(name: "n_authors", scope: !2975, file: !573, line: 187, type: !152)
!2985 = !DILocation(line: 0, scope: !2975)
!2986 = !DILocation(line: 189, column: 8, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !573, line: 189, column: 3)
!2988 = !DILocation(line: 189, scope: !2987)
!2989 = !DILocation(line: 189, column: 23, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !573, line: 189, column: 3)
!2991 = !DILocation(line: 189, column: 3, scope: !2987)
!2992 = !DILocation(line: 189, column: 52, scope: !2990)
!2993 = distinct !{!2993, !2991, !2994, !865}
!2994 = !DILocation(line: 190, column: 5, scope: !2987)
!2995 = !DILocation(line: 191, column: 3, scope: !2975)
!2996 = !DILocation(line: 192, column: 1, scope: !2975)
!2997 = distinct !DISubprogram(name: "version_etc_va", scope: !573, file: !573, line: 199, type: !2998, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3011)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2900, !125, !125, !125, !3000}
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !373, line: 52, baseType: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !375, line: 14, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3003, baseType: !3004)
!3003 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009, !3010}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3004, file: !3003, line: 192, baseType: !149, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3004, file: !3003, line: 192, baseType: !149, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3004, file: !3003, line: 192, baseType: !149, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3004, file: !3003, line: 192, baseType: !150, size: 32, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3004, file: !3003, line: 192, baseType: !150, size: 32, offset: 224)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018}
!3012 = !DILocalVariable(name: "stream", arg: 1, scope: !2997, file: !573, line: 199, type: !2900)
!3013 = !DILocalVariable(name: "command_name", arg: 2, scope: !2997, file: !573, line: 200, type: !125)
!3014 = !DILocalVariable(name: "package", arg: 3, scope: !2997, file: !573, line: 200, type: !125)
!3015 = !DILocalVariable(name: "version", arg: 4, scope: !2997, file: !573, line: 201, type: !125)
!3016 = !DILocalVariable(name: "authors", arg: 5, scope: !2997, file: !573, line: 201, type: !3000)
!3017 = !DILocalVariable(name: "n_authors", scope: !2997, file: !573, line: 203, type: !152)
!3018 = !DILocalVariable(name: "authtab", scope: !2997, file: !573, line: 204, type: !3019)
!3019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 640, elements: !96)
!3020 = !DILocation(line: 0, scope: !2997)
!3021 = !DILocation(line: 201, column: 46, scope: !2997)
!3022 = !DILocation(line: 204, column: 3, scope: !2997)
!3023 = !DILocation(line: 204, column: 15, scope: !2997)
!3024 = !DILocation(line: 208, column: 35, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !573, line: 206, column: 3)
!3026 = distinct !DILexicalBlock(scope: !2997, file: !573, line: 206, column: 3)
!3027 = !DILocation(line: 208, column: 33, scope: !3025)
!3028 = !DILocation(line: 208, column: 67, scope: !3025)
!3029 = !DILocation(line: 206, column: 3, scope: !3026)
!3030 = !DILocation(line: 208, column: 14, scope: !3025)
!3031 = !DILocation(line: 0, scope: !3026)
!3032 = !DILocation(line: 211, column: 3, scope: !2997)
!3033 = !DILocation(line: 213, column: 1, scope: !2997)
!3034 = distinct !DISubprogram(name: "version_etc", scope: !573, file: !573, line: 230, type: !3035, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !2900, !125, !125, !125, null}
!3037 = !{!3038, !3039, !3040, !3041, !3042}
!3038 = !DILocalVariable(name: "stream", arg: 1, scope: !3034, file: !573, line: 230, type: !2900)
!3039 = !DILocalVariable(name: "command_name", arg: 2, scope: !3034, file: !573, line: 231, type: !125)
!3040 = !DILocalVariable(name: "package", arg: 3, scope: !3034, file: !573, line: 231, type: !125)
!3041 = !DILocalVariable(name: "version", arg: 4, scope: !3034, file: !573, line: 232, type: !125)
!3042 = !DILocalVariable(name: "authors", scope: !3034, file: !573, line: 234, type: !3000)
!3043 = !DILocation(line: 0, scope: !3034)
!3044 = !DILocation(line: 234, column: 3, scope: !3034)
!3045 = !DILocation(line: 234, column: 11, scope: !3034)
!3046 = !DILocation(line: 235, column: 3, scope: !3034)
!3047 = !DILocation(line: 236, column: 3, scope: !3034)
!3048 = !DILocation(line: 237, column: 3, scope: !3034)
!3049 = !DILocation(line: 238, column: 1, scope: !3034)
!3050 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !573, file: !573, line: 241, type: !414, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !802)
!3051 = !DILocation(line: 243, column: 3, scope: !3050)
!3052 = !DILocation(line: 248, column: 3, scope: !3050)
!3053 = !DILocation(line: 254, column: 3, scope: !3050)
!3054 = !DILocation(line: 259, column: 3, scope: !3050)
!3055 = !DILocation(line: 261, column: 1, scope: !3050)
!3056 = distinct !DISubprogram(name: "xnrealloc", scope: !3057, file: !3057, line: 147, type: !3058, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3060)
!3057 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!149, !149, !152, !152}
!3060 = !{!3061, !3062, !3063}
!3061 = !DILocalVariable(name: "p", arg: 1, scope: !3056, file: !3057, line: 147, type: !149)
!3062 = !DILocalVariable(name: "n", arg: 2, scope: !3056, file: !3057, line: 147, type: !152)
!3063 = !DILocalVariable(name: "s", arg: 3, scope: !3056, file: !3057, line: 147, type: !152)
!3064 = !DILocation(line: 0, scope: !3056)
!3065 = !DILocalVariable(name: "p", arg: 1, scope: !3066, file: !710, line: 83, type: !149)
!3066 = distinct !DISubprogram(name: "xreallocarray", scope: !710, file: !710, line: 83, type: !3058, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3067)
!3067 = !{!3065, !3068, !3069}
!3068 = !DILocalVariable(name: "n", arg: 2, scope: !3066, file: !710, line: 83, type: !152)
!3069 = !DILocalVariable(name: "s", arg: 3, scope: !3066, file: !710, line: 83, type: !152)
!3070 = !DILocation(line: 0, scope: !3066, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 149, column: 10, scope: !3056)
!3072 = !DILocation(line: 85, column: 25, scope: !3066, inlinedAt: !3071)
!3073 = !DILocalVariable(name: "p", arg: 1, scope: !3074, file: !710, line: 37, type: !149)
!3074 = distinct !DISubprogram(name: "check_nonnull", scope: !710, file: !710, line: 37, type: !3075, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!149, !149}
!3077 = !{!3073}
!3078 = !DILocation(line: 0, scope: !3074, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 85, column: 10, scope: !3066, inlinedAt: !3071)
!3080 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3079)
!3081 = distinct !DILexicalBlock(scope: !3074, file: !710, line: 39, column: 7)
!3082 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3079)
!3083 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3079)
!3084 = !DILocation(line: 149, column: 3, scope: !3056)
!3085 = !DILocation(line: 0, scope: !3066)
!3086 = !DILocation(line: 85, column: 25, scope: !3066)
!3087 = !DILocation(line: 0, scope: !3074, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 85, column: 10, scope: !3066)
!3089 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3088)
!3090 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3088)
!3091 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3088)
!3092 = !DILocation(line: 85, column: 3, scope: !3066)
!3093 = distinct !DISubprogram(name: "xmalloc", scope: !710, file: !710, line: 47, type: !3094, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!149, !152}
!3096 = !{!3097}
!3097 = !DILocalVariable(name: "s", arg: 1, scope: !3093, file: !710, line: 47, type: !152)
!3098 = !DILocation(line: 0, scope: !3093)
!3099 = !DILocation(line: 49, column: 25, scope: !3093)
!3100 = !DILocation(line: 0, scope: !3074, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 49, column: 10, scope: !3093)
!3102 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3101)
!3103 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3101)
!3104 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3101)
!3105 = !DILocation(line: 49, column: 3, scope: !3093)
!3106 = !DISubprogram(name: "malloc", scope: !962, file: !962, line: 540, type: !3094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3107 = distinct !DISubprogram(name: "ximalloc", scope: !710, file: !710, line: 53, type: !3108, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!149, !729}
!3110 = !{!3111}
!3111 = !DILocalVariable(name: "s", arg: 1, scope: !3107, file: !710, line: 53, type: !729)
!3112 = !DILocation(line: 0, scope: !3107)
!3113 = !DILocalVariable(name: "s", arg: 1, scope: !3114, file: !3115, line: 55, type: !729)
!3114 = distinct !DISubprogram(name: "imalloc", scope: !3115, file: !3115, line: 55, type: !3108, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3116)
!3115 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3116 = !{!3113}
!3117 = !DILocation(line: 0, scope: !3114, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 55, column: 25, scope: !3107)
!3119 = !DILocation(line: 57, column: 26, scope: !3114, inlinedAt: !3118)
!3120 = !DILocation(line: 0, scope: !3074, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 55, column: 10, scope: !3107)
!3122 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3121)
!3123 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3121)
!3124 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3121)
!3125 = !DILocation(line: 55, column: 3, scope: !3107)
!3126 = distinct !DISubprogram(name: "xcharalloc", scope: !710, file: !710, line: 59, type: !3127, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!148, !152}
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "n", arg: 1, scope: !3126, file: !710, line: 59, type: !152)
!3131 = !DILocation(line: 0, scope: !3126)
!3132 = !DILocation(line: 0, scope: !3093, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 61, column: 10, scope: !3126)
!3134 = !DILocation(line: 49, column: 25, scope: !3093, inlinedAt: !3133)
!3135 = !DILocation(line: 0, scope: !3074, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 49, column: 10, scope: !3093, inlinedAt: !3133)
!3137 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3136)
!3138 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3136)
!3139 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3136)
!3140 = !DILocation(line: 61, column: 3, scope: !3126)
!3141 = distinct !DISubprogram(name: "xrealloc", scope: !710, file: !710, line: 68, type: !3142, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!149, !149, !152}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "p", arg: 1, scope: !3141, file: !710, line: 68, type: !149)
!3146 = !DILocalVariable(name: "s", arg: 2, scope: !3141, file: !710, line: 68, type: !152)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocalVariable(name: "ptr", arg: 1, scope: !3149, file: !3150, line: 2057, type: !149)
!3149 = distinct !DISubprogram(name: "rpl_realloc", scope: !3150, file: !3150, line: 2057, type: !3142, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3151)
!3150 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3151 = !{!3148, !3152}
!3152 = !DILocalVariable(name: "size", arg: 2, scope: !3149, file: !3150, line: 2057, type: !152)
!3153 = !DILocation(line: 0, scope: !3149, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 70, column: 25, scope: !3141)
!3155 = !DILocation(line: 2059, column: 24, scope: !3149, inlinedAt: !3154)
!3156 = !DILocation(line: 2059, column: 10, scope: !3149, inlinedAt: !3154)
!3157 = !DILocation(line: 0, scope: !3074, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 70, column: 10, scope: !3141)
!3159 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3158)
!3160 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3158)
!3161 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3158)
!3162 = !DILocation(line: 70, column: 3, scope: !3141)
!3163 = !DISubprogram(name: "realloc", scope: !962, file: !962, line: 551, type: !3142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3164 = distinct !DISubprogram(name: "xirealloc", scope: !710, file: !710, line: 74, type: !3165, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!149, !149, !729}
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "p", arg: 1, scope: !3164, file: !710, line: 74, type: !149)
!3169 = !DILocalVariable(name: "s", arg: 2, scope: !3164, file: !710, line: 74, type: !729)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocalVariable(name: "p", arg: 1, scope: !3172, file: !3115, line: 66, type: !149)
!3172 = distinct !DISubprogram(name: "irealloc", scope: !3115, file: !3115, line: 66, type: !3165, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3173)
!3173 = !{!3171, !3174}
!3174 = !DILocalVariable(name: "s", arg: 2, scope: !3172, file: !3115, line: 66, type: !729)
!3175 = !DILocation(line: 0, scope: !3172, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 76, column: 25, scope: !3164)
!3177 = !DILocation(line: 0, scope: !3149, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 68, column: 26, scope: !3172, inlinedAt: !3176)
!3179 = !DILocation(line: 2059, column: 24, scope: !3149, inlinedAt: !3178)
!3180 = !DILocation(line: 2059, column: 10, scope: !3149, inlinedAt: !3178)
!3181 = !DILocation(line: 0, scope: !3074, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 76, column: 10, scope: !3164)
!3183 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3182)
!3184 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3182)
!3185 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3182)
!3186 = !DILocation(line: 76, column: 3, scope: !3164)
!3187 = distinct !DISubprogram(name: "xireallocarray", scope: !710, file: !710, line: 89, type: !3188, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!149, !149, !729, !729}
!3190 = !{!3191, !3192, !3193}
!3191 = !DILocalVariable(name: "p", arg: 1, scope: !3187, file: !710, line: 89, type: !149)
!3192 = !DILocalVariable(name: "n", arg: 2, scope: !3187, file: !710, line: 89, type: !729)
!3193 = !DILocalVariable(name: "s", arg: 3, scope: !3187, file: !710, line: 89, type: !729)
!3194 = !DILocation(line: 0, scope: !3187)
!3195 = !DILocalVariable(name: "p", arg: 1, scope: !3196, file: !3115, line: 98, type: !149)
!3196 = distinct !DISubprogram(name: "ireallocarray", scope: !3115, file: !3115, line: 98, type: !3188, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3197)
!3197 = !{!3195, !3198, !3199}
!3198 = !DILocalVariable(name: "n", arg: 2, scope: !3196, file: !3115, line: 98, type: !729)
!3199 = !DILocalVariable(name: "s", arg: 3, scope: !3196, file: !3115, line: 98, type: !729)
!3200 = !DILocation(line: 0, scope: !3196, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 91, column: 25, scope: !3187)
!3202 = !DILocation(line: 101, column: 13, scope: !3196, inlinedAt: !3201)
!3203 = !DILocation(line: 0, scope: !3074, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 91, column: 10, scope: !3187)
!3205 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3204)
!3206 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3204)
!3207 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3204)
!3208 = !DILocation(line: 91, column: 3, scope: !3187)
!3209 = distinct !DISubprogram(name: "xnmalloc", scope: !710, file: !710, line: 98, type: !3210, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!149, !152, !152}
!3212 = !{!3213, !3214}
!3213 = !DILocalVariable(name: "n", arg: 1, scope: !3209, file: !710, line: 98, type: !152)
!3214 = !DILocalVariable(name: "s", arg: 2, scope: !3209, file: !710, line: 98, type: !152)
!3215 = !DILocation(line: 0, scope: !3209)
!3216 = !DILocation(line: 0, scope: !3066, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 100, column: 10, scope: !3209)
!3218 = !DILocation(line: 85, column: 25, scope: !3066, inlinedAt: !3217)
!3219 = !DILocation(line: 0, scope: !3074, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 85, column: 10, scope: !3066, inlinedAt: !3217)
!3221 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3220)
!3222 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3220)
!3223 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3220)
!3224 = !DILocation(line: 100, column: 3, scope: !3209)
!3225 = distinct !DISubprogram(name: "xinmalloc", scope: !710, file: !710, line: 104, type: !3226, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!149, !729, !729}
!3228 = !{!3229, !3230}
!3229 = !DILocalVariable(name: "n", arg: 1, scope: !3225, file: !710, line: 104, type: !729)
!3230 = !DILocalVariable(name: "s", arg: 2, scope: !3225, file: !710, line: 104, type: !729)
!3231 = !DILocation(line: 0, scope: !3225)
!3232 = !DILocation(line: 0, scope: !3187, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 106, column: 10, scope: !3225)
!3234 = !DILocation(line: 0, scope: !3196, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 91, column: 25, scope: !3187, inlinedAt: !3233)
!3236 = !DILocation(line: 101, column: 13, scope: !3196, inlinedAt: !3235)
!3237 = !DILocation(line: 0, scope: !3074, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 91, column: 10, scope: !3187, inlinedAt: !3233)
!3239 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3238)
!3240 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3238)
!3241 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3238)
!3242 = !DILocation(line: 106, column: 3, scope: !3225)
!3243 = distinct !DISubprogram(name: "x2realloc", scope: !710, file: !710, line: 116, type: !3244, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!149, !149, !716}
!3246 = !{!3247, !3248}
!3247 = !DILocalVariable(name: "p", arg: 1, scope: !3243, file: !710, line: 116, type: !149)
!3248 = !DILocalVariable(name: "ps", arg: 2, scope: !3243, file: !710, line: 116, type: !716)
!3249 = !DILocation(line: 0, scope: !3243)
!3250 = !DILocation(line: 0, scope: !713, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 118, column: 10, scope: !3243)
!3252 = !DILocation(line: 178, column: 14, scope: !713, inlinedAt: !3251)
!3253 = !DILocation(line: 180, column: 9, scope: !3254, inlinedAt: !3251)
!3254 = distinct !DILexicalBlock(scope: !713, file: !710, line: 180, column: 7)
!3255 = !DILocation(line: 180, column: 7, scope: !713, inlinedAt: !3251)
!3256 = !DILocation(line: 182, column: 13, scope: !3257, inlinedAt: !3251)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !710, line: 182, column: 11)
!3258 = distinct !DILexicalBlock(scope: !3254, file: !710, line: 181, column: 5)
!3259 = !DILocation(line: 182, column: 11, scope: !3258, inlinedAt: !3251)
!3260 = !DILocation(line: 197, column: 11, scope: !3261, inlinedAt: !3251)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !710, line: 197, column: 11)
!3262 = distinct !DILexicalBlock(scope: !3254, file: !710, line: 195, column: 5)
!3263 = !DILocation(line: 197, column: 11, scope: !3262, inlinedAt: !3251)
!3264 = !DILocation(line: 198, column: 9, scope: !3261, inlinedAt: !3251)
!3265 = !DILocation(line: 0, scope: !3066, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 201, column: 7, scope: !713, inlinedAt: !3251)
!3267 = !DILocation(line: 85, column: 25, scope: !3066, inlinedAt: !3266)
!3268 = !DILocation(line: 0, scope: !3074, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 85, column: 10, scope: !3066, inlinedAt: !3266)
!3270 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3269)
!3271 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3269)
!3272 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3269)
!3273 = !DILocation(line: 202, column: 7, scope: !713, inlinedAt: !3251)
!3274 = !DILocation(line: 118, column: 3, scope: !3243)
!3275 = !DILocation(line: 0, scope: !713)
!3276 = !DILocation(line: 178, column: 14, scope: !713)
!3277 = !DILocation(line: 180, column: 9, scope: !3254)
!3278 = !DILocation(line: 180, column: 7, scope: !713)
!3279 = !DILocation(line: 182, column: 13, scope: !3257)
!3280 = !DILocation(line: 182, column: 11, scope: !3258)
!3281 = !DILocation(line: 190, column: 30, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3257, file: !710, line: 183, column: 9)
!3283 = !DILocation(line: 191, column: 16, scope: !3282)
!3284 = !DILocation(line: 191, column: 13, scope: !3282)
!3285 = !DILocation(line: 192, column: 9, scope: !3282)
!3286 = !DILocation(line: 197, column: 11, scope: !3261)
!3287 = !DILocation(line: 197, column: 11, scope: !3262)
!3288 = !DILocation(line: 198, column: 9, scope: !3261)
!3289 = !DILocation(line: 0, scope: !3066, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 201, column: 7, scope: !713)
!3291 = !DILocation(line: 85, column: 25, scope: !3066, inlinedAt: !3290)
!3292 = !DILocation(line: 0, scope: !3074, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 85, column: 10, scope: !3066, inlinedAt: !3290)
!3294 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3293)
!3295 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3293)
!3296 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3293)
!3297 = !DILocation(line: 202, column: 7, scope: !713)
!3298 = !DILocation(line: 203, column: 3, scope: !713)
!3299 = !DILocation(line: 0, scope: !725)
!3300 = !DILocation(line: 230, column: 14, scope: !725)
!3301 = !DILocation(line: 238, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !725, file: !710, line: 238, column: 7)
!3303 = !DILocation(line: 238, column: 7, scope: !725)
!3304 = !DILocation(line: 240, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !725, file: !710, line: 240, column: 7)
!3306 = !DILocation(line: 240, column: 18, scope: !3305)
!3307 = !DILocation(line: 253, column: 8, scope: !725)
!3308 = !DILocation(line: 258, column: 27, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !710, line: 257, column: 5)
!3310 = distinct !DILexicalBlock(scope: !725, file: !710, line: 256, column: 7)
!3311 = !DILocation(line: 259, column: 32, scope: !3309)
!3312 = !DILocation(line: 260, column: 5, scope: !3309)
!3313 = !DILocation(line: 262, column: 9, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !725, file: !710, line: 262, column: 7)
!3315 = !DILocation(line: 262, column: 7, scope: !725)
!3316 = !DILocation(line: 263, column: 9, scope: !3314)
!3317 = !DILocation(line: 263, column: 5, scope: !3314)
!3318 = !DILocation(line: 264, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !725, file: !710, line: 264, column: 7)
!3320 = !DILocation(line: 264, column: 14, scope: !3319)
!3321 = !DILocation(line: 265, column: 7, scope: !3319)
!3322 = !DILocation(line: 265, column: 11, scope: !3319)
!3323 = !DILocation(line: 266, column: 11, scope: !3319)
!3324 = !DILocation(line: 267, column: 14, scope: !3319)
!3325 = !DILocation(line: 264, column: 7, scope: !725)
!3326 = !DILocation(line: 268, column: 5, scope: !3319)
!3327 = !DILocation(line: 0, scope: !3141, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 269, column: 8, scope: !725)
!3329 = !DILocation(line: 0, scope: !3149, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 70, column: 25, scope: !3141, inlinedAt: !3328)
!3331 = !DILocation(line: 2059, column: 24, scope: !3149, inlinedAt: !3330)
!3332 = !DILocation(line: 2059, column: 10, scope: !3149, inlinedAt: !3330)
!3333 = !DILocation(line: 0, scope: !3074, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 70, column: 10, scope: !3141, inlinedAt: !3328)
!3335 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3334)
!3336 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3334)
!3337 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3334)
!3338 = !DILocation(line: 270, column: 7, scope: !725)
!3339 = !DILocation(line: 271, column: 3, scope: !725)
!3340 = distinct !DISubprogram(name: "xzalloc", scope: !710, file: !710, line: 279, type: !3094, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3341)
!3341 = !{!3342}
!3342 = !DILocalVariable(name: "s", arg: 1, scope: !3340, file: !710, line: 279, type: !152)
!3343 = !DILocation(line: 0, scope: !3340)
!3344 = !DILocalVariable(name: "n", arg: 1, scope: !3345, file: !710, line: 294, type: !152)
!3345 = distinct !DISubprogram(name: "xcalloc", scope: !710, file: !710, line: 294, type: !3210, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3346)
!3346 = !{!3344, !3347}
!3347 = !DILocalVariable(name: "s", arg: 2, scope: !3345, file: !710, line: 294, type: !152)
!3348 = !DILocation(line: 0, scope: !3345, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 281, column: 10, scope: !3340)
!3350 = !DILocation(line: 296, column: 25, scope: !3345, inlinedAt: !3349)
!3351 = !DILocation(line: 0, scope: !3074, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 296, column: 10, scope: !3345, inlinedAt: !3349)
!3353 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3352)
!3354 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3352)
!3355 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3352)
!3356 = !DILocation(line: 281, column: 3, scope: !3340)
!3357 = !DISubprogram(name: "calloc", scope: !962, file: !962, line: 543, type: !3210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3358 = !DILocation(line: 0, scope: !3345)
!3359 = !DILocation(line: 296, column: 25, scope: !3345)
!3360 = !DILocation(line: 0, scope: !3074, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 296, column: 10, scope: !3345)
!3362 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3361)
!3363 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3361)
!3364 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3361)
!3365 = !DILocation(line: 296, column: 3, scope: !3345)
!3366 = distinct !DISubprogram(name: "xizalloc", scope: !710, file: !710, line: 285, type: !3108, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3367)
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "s", arg: 1, scope: !3366, file: !710, line: 285, type: !729)
!3369 = !DILocation(line: 0, scope: !3366)
!3370 = !DILocalVariable(name: "n", arg: 1, scope: !3371, file: !710, line: 300, type: !729)
!3371 = distinct !DISubprogram(name: "xicalloc", scope: !710, file: !710, line: 300, type: !3226, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3372)
!3372 = !{!3370, !3373}
!3373 = !DILocalVariable(name: "s", arg: 2, scope: !3371, file: !710, line: 300, type: !729)
!3374 = !DILocation(line: 0, scope: !3371, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 287, column: 10, scope: !3366)
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3377, file: !3115, line: 77, type: !729)
!3377 = distinct !DISubprogram(name: "icalloc", scope: !3115, file: !3115, line: 77, type: !3226, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3378)
!3378 = !{!3376, !3379}
!3379 = !DILocalVariable(name: "s", arg: 2, scope: !3377, file: !3115, line: 77, type: !729)
!3380 = !DILocation(line: 0, scope: !3377, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 302, column: 25, scope: !3371, inlinedAt: !3375)
!3382 = !DILocation(line: 91, column: 10, scope: !3377, inlinedAt: !3381)
!3383 = !DILocation(line: 0, scope: !3074, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 302, column: 10, scope: !3371, inlinedAt: !3375)
!3385 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3384)
!3386 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3384)
!3387 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3384)
!3388 = !DILocation(line: 287, column: 3, scope: !3366)
!3389 = !DILocation(line: 0, scope: !3371)
!3390 = !DILocation(line: 0, scope: !3377, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 302, column: 25, scope: !3371)
!3392 = !DILocation(line: 91, column: 10, scope: !3377, inlinedAt: !3391)
!3393 = !DILocation(line: 0, scope: !3074, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 302, column: 10, scope: !3371)
!3395 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3394)
!3396 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3394)
!3397 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3394)
!3398 = !DILocation(line: 302, column: 3, scope: !3371)
!3399 = distinct !DISubprogram(name: "xmemdup", scope: !710, file: !710, line: 310, type: !3400, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!149, !994, !152}
!3402 = !{!3403, !3404}
!3403 = !DILocalVariable(name: "p", arg: 1, scope: !3399, file: !710, line: 310, type: !994)
!3404 = !DILocalVariable(name: "s", arg: 2, scope: !3399, file: !710, line: 310, type: !152)
!3405 = !DILocation(line: 0, scope: !3399)
!3406 = !DILocation(line: 0, scope: !3093, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 312, column: 18, scope: !3399)
!3408 = !DILocation(line: 49, column: 25, scope: !3093, inlinedAt: !3407)
!3409 = !DILocation(line: 0, scope: !3074, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 49, column: 10, scope: !3093, inlinedAt: !3407)
!3411 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3410)
!3412 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3410)
!3413 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3410)
!3414 = !DILocalVariable(name: "__dest", arg: 1, scope: !3415, file: !1584, line: 26, type: !3418)
!3415 = distinct !DISubprogram(name: "memcpy", scope: !1584, file: !1584, line: 26, type: !3416, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3419)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!149, !3418, !993, !152}
!3418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!3419 = !{!3414, !3420, !3421}
!3420 = !DILocalVariable(name: "__src", arg: 2, scope: !3415, file: !1584, line: 26, type: !993)
!3421 = !DILocalVariable(name: "__len", arg: 3, scope: !3415, file: !1584, line: 26, type: !152)
!3422 = !DILocation(line: 0, scope: !3415, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 312, column: 10, scope: !3399)
!3424 = !DILocation(line: 29, column: 10, scope: !3415, inlinedAt: !3423)
!3425 = !DILocation(line: 312, column: 3, scope: !3399)
!3426 = distinct !DISubprogram(name: "ximemdup", scope: !710, file: !710, line: 316, type: !3427, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!149, !994, !729}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "p", arg: 1, scope: !3426, file: !710, line: 316, type: !994)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3426, file: !710, line: 316, type: !729)
!3432 = !DILocation(line: 0, scope: !3426)
!3433 = !DILocation(line: 0, scope: !3107, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 318, column: 18, scope: !3426)
!3435 = !DILocation(line: 0, scope: !3114, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 55, column: 25, scope: !3107, inlinedAt: !3434)
!3437 = !DILocation(line: 57, column: 26, scope: !3114, inlinedAt: !3436)
!3438 = !DILocation(line: 0, scope: !3074, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 55, column: 10, scope: !3107, inlinedAt: !3434)
!3440 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3439)
!3441 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3439)
!3442 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3439)
!3443 = !DILocation(line: 0, scope: !3415, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 318, column: 10, scope: !3426)
!3445 = !DILocation(line: 29, column: 10, scope: !3415, inlinedAt: !3444)
!3446 = !DILocation(line: 318, column: 3, scope: !3426)
!3447 = distinct !DISubprogram(name: "ximemdup0", scope: !710, file: !710, line: 325, type: !3448, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!148, !994, !729}
!3450 = !{!3451, !3452, !3453}
!3451 = !DILocalVariable(name: "p", arg: 1, scope: !3447, file: !710, line: 325, type: !994)
!3452 = !DILocalVariable(name: "s", arg: 2, scope: !3447, file: !710, line: 325, type: !729)
!3453 = !DILocalVariable(name: "result", scope: !3447, file: !710, line: 327, type: !148)
!3454 = !DILocation(line: 0, scope: !3447)
!3455 = !DILocation(line: 327, column: 30, scope: !3447)
!3456 = !DILocation(line: 0, scope: !3107, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 327, column: 18, scope: !3447)
!3458 = !DILocation(line: 0, scope: !3114, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 55, column: 25, scope: !3107, inlinedAt: !3457)
!3460 = !DILocation(line: 57, column: 26, scope: !3114, inlinedAt: !3459)
!3461 = !DILocation(line: 0, scope: !3074, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 55, column: 10, scope: !3107, inlinedAt: !3457)
!3463 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3462)
!3464 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3462)
!3465 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3462)
!3466 = !DILocation(line: 328, column: 3, scope: !3447)
!3467 = !DILocation(line: 328, column: 13, scope: !3447)
!3468 = !DILocation(line: 0, scope: !3415, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 329, column: 10, scope: !3447)
!3470 = !DILocation(line: 29, column: 10, scope: !3415, inlinedAt: !3469)
!3471 = !DILocation(line: 329, column: 3, scope: !3447)
!3472 = distinct !DISubprogram(name: "xstrdup", scope: !710, file: !710, line: 335, type: !972, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3473)
!3473 = !{!3474}
!3474 = !DILocalVariable(name: "string", arg: 1, scope: !3472, file: !710, line: 335, type: !125)
!3475 = !DILocation(line: 0, scope: !3472)
!3476 = !DILocation(line: 337, column: 27, scope: !3472)
!3477 = !DILocation(line: 337, column: 43, scope: !3472)
!3478 = !DILocation(line: 0, scope: !3399, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 337, column: 10, scope: !3472)
!3480 = !DILocation(line: 0, scope: !3093, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 312, column: 18, scope: !3399, inlinedAt: !3479)
!3482 = !DILocation(line: 49, column: 25, scope: !3093, inlinedAt: !3481)
!3483 = !DILocation(line: 0, scope: !3074, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 49, column: 10, scope: !3093, inlinedAt: !3481)
!3485 = !DILocation(line: 39, column: 8, scope: !3081, inlinedAt: !3484)
!3486 = !DILocation(line: 39, column: 7, scope: !3074, inlinedAt: !3484)
!3487 = !DILocation(line: 40, column: 5, scope: !3081, inlinedAt: !3484)
!3488 = !DILocation(line: 0, scope: !3415, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 312, column: 10, scope: !3399, inlinedAt: !3479)
!3490 = !DILocation(line: 29, column: 10, scope: !3415, inlinedAt: !3489)
!3491 = !DILocation(line: 337, column: 3, scope: !3472)
!3492 = distinct !DISubprogram(name: "xalloc_die", scope: !672, file: !672, line: 32, type: !414, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3493)
!3493 = !{!3494}
!3494 = !DILocalVariable(name: "__errstatus", scope: !3495, file: !672, line: 34, type: !3496)
!3495 = distinct !DILexicalBlock(scope: !3492, file: !672, line: 34, column: 3)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!3497 = !DILocation(line: 34, column: 3, scope: !3495)
!3498 = !DILocation(line: 0, scope: !3495)
!3499 = !DILocation(line: 40, column: 3, scope: !3492)
!3500 = distinct !DISubprogram(name: "close_stream", scope: !746, file: !746, line: 55, type: !3501, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3537)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!150, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3505)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3505, file: !283, line: 51, baseType: !150, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3505, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3505, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3505, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3505, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3505, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3505, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3505, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3505, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3505, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3505, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3505, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3505, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3505, file: !283, line: 70, baseType: !3521, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3505, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3505, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3505, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3505, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3505, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3505, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3505, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3505, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3505, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3505, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3505, file: !283, line: 93, baseType: !3521, size: 64, offset: 1344)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3505, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3505, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3505, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3505, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3537 = !{!3538, !3539, !3541, !3542}
!3538 = !DILocalVariable(name: "stream", arg: 1, scope: !3500, file: !746, line: 55, type: !3503)
!3539 = !DILocalVariable(name: "some_pending", scope: !3500, file: !746, line: 57, type: !3540)
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!3541 = !DILocalVariable(name: "prev_fail", scope: !3500, file: !746, line: 58, type: !3540)
!3542 = !DILocalVariable(name: "fclose_fail", scope: !3500, file: !746, line: 59, type: !3540)
!3543 = !DILocation(line: 0, scope: !3500)
!3544 = !DILocation(line: 57, column: 30, scope: !3500)
!3545 = !DILocalVariable(name: "__stream", arg: 1, scope: !3546, file: !1203, line: 135, type: !3503)
!3546 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1203, file: !1203, line: 135, type: !3501, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3547)
!3547 = !{!3545}
!3548 = !DILocation(line: 0, scope: !3546, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 58, column: 27, scope: !3500)
!3550 = !DILocation(line: 137, column: 10, scope: !3546, inlinedAt: !3549)
!3551 = !{!1211, !819, i64 0}
!3552 = !DILocation(line: 58, column: 43, scope: !3500)
!3553 = !DILocation(line: 59, column: 29, scope: !3500)
!3554 = !DILocation(line: 59, column: 45, scope: !3500)
!3555 = !DILocation(line: 69, column: 17, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3500, file: !746, line: 69, column: 7)
!3557 = !DILocation(line: 57, column: 50, scope: !3500)
!3558 = !DILocation(line: 69, column: 33, scope: !3556)
!3559 = !DILocation(line: 69, column: 53, scope: !3556)
!3560 = !DILocation(line: 69, column: 59, scope: !3556)
!3561 = !DILocation(line: 69, column: 7, scope: !3500)
!3562 = !DILocation(line: 71, column: 11, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3556, file: !746, line: 70, column: 5)
!3564 = !DILocation(line: 72, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3563, file: !746, line: 71, column: 11)
!3566 = !DILocation(line: 72, column: 15, scope: !3565)
!3567 = !DILocation(line: 77, column: 1, scope: !3500)
!3568 = !DISubprogram(name: "__fpending", scope: !3569, file: !3569, line: 75, type: !3570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3569 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!152, !3503}
!3572 = distinct !DISubprogram(name: "rpl_fclose", scope: !748, file: !748, line: 58, type: !3573, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3609)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!150, !3575}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3577, file: !283, line: 51, baseType: !150, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3577, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3577, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3577, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3577, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3577, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3577, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3577, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3577, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3577, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3577, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3577, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3577, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3577, file: !283, line: 70, baseType: !3593, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3577, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3577, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3577, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3577, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3577, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3577, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3577, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3577, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3577, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3577, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3577, file: !283, line: 93, baseType: !3593, size: 64, offset: 1344)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3577, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3577, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3577, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3577, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3609 = !{!3610, !3611, !3612, !3613}
!3610 = !DILocalVariable(name: "fp", arg: 1, scope: !3572, file: !748, line: 58, type: !3575)
!3611 = !DILocalVariable(name: "saved_errno", scope: !3572, file: !748, line: 60, type: !150)
!3612 = !DILocalVariable(name: "fd", scope: !3572, file: !748, line: 63, type: !150)
!3613 = !DILocalVariable(name: "result", scope: !3572, file: !748, line: 74, type: !150)
!3614 = !DILocation(line: 0, scope: !3572)
!3615 = !DILocation(line: 63, column: 12, scope: !3572)
!3616 = !DILocation(line: 64, column: 10, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3572, file: !748, line: 64, column: 7)
!3618 = !DILocation(line: 64, column: 7, scope: !3572)
!3619 = !DILocation(line: 65, column: 12, scope: !3617)
!3620 = !DILocation(line: 65, column: 5, scope: !3617)
!3621 = !DILocation(line: 70, column: 9, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3572, file: !748, line: 70, column: 7)
!3623 = !DILocation(line: 70, column: 23, scope: !3622)
!3624 = !DILocation(line: 70, column: 33, scope: !3622)
!3625 = !DILocation(line: 70, column: 26, scope: !3622)
!3626 = !DILocation(line: 70, column: 59, scope: !3622)
!3627 = !DILocation(line: 71, column: 7, scope: !3622)
!3628 = !DILocation(line: 71, column: 10, scope: !3622)
!3629 = !DILocation(line: 70, column: 7, scope: !3572)
!3630 = !DILocation(line: 100, column: 12, scope: !3572)
!3631 = !DILocation(line: 105, column: 7, scope: !3572)
!3632 = !DILocation(line: 72, column: 19, scope: !3622)
!3633 = !DILocation(line: 105, column: 19, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3572, file: !748, line: 105, column: 7)
!3635 = !DILocation(line: 107, column: 13, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3634, file: !748, line: 106, column: 5)
!3637 = !DILocation(line: 109, column: 5, scope: !3636)
!3638 = !DILocation(line: 112, column: 1, scope: !3572)
!3639 = !DISubprogram(name: "fileno", scope: !373, file: !373, line: 809, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3640 = !DISubprogram(name: "fclose", scope: !373, file: !373, line: 178, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3641 = !DISubprogram(name: "__freading", scope: !3569, file: !3569, line: 51, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3642 = !DISubprogram(name: "lseek", scope: !1309, file: !1309, line: 339, type: !3643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!305, !150, !305, !150}
!3645 = distinct !DISubprogram(name: "rpl_fflush", scope: !750, file: !750, line: 130, type: !3646, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3682)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!150, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3650)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3650, file: !283, line: 51, baseType: !150, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3650, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3650, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3650, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3650, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3650, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3650, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3650, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3650, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3650, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3650, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3650, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3650, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3650, file: !283, line: 70, baseType: !3666, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3650, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3650, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3650, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3650, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3650, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3650, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3650, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3650, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3650, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3650, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3650, file: !283, line: 93, baseType: !3666, size: 64, offset: 1344)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3650, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3650, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3650, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3650, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3682 = !{!3683}
!3683 = !DILocalVariable(name: "stream", arg: 1, scope: !3645, file: !750, line: 130, type: !3648)
!3684 = !DILocation(line: 0, scope: !3645)
!3685 = !DILocation(line: 151, column: 14, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3645, file: !750, line: 151, column: 7)
!3687 = !DILocation(line: 151, column: 22, scope: !3686)
!3688 = !DILocation(line: 151, column: 27, scope: !3686)
!3689 = !DILocation(line: 151, column: 7, scope: !3645)
!3690 = !DILocation(line: 152, column: 12, scope: !3686)
!3691 = !DILocation(line: 152, column: 5, scope: !3686)
!3692 = !DILocalVariable(name: "fp", arg: 1, scope: !3693, file: !750, line: 42, type: !3648)
!3693 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !750, file: !750, line: 42, type: !3694, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{null, !3648}
!3696 = !{!3692}
!3697 = !DILocation(line: 0, scope: !3693, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 157, column: 3, scope: !3645)
!3699 = !DILocation(line: 44, column: 12, scope: !3700, inlinedAt: !3698)
!3700 = distinct !DILexicalBlock(scope: !3693, file: !750, line: 44, column: 7)
!3701 = !DILocation(line: 44, column: 19, scope: !3700, inlinedAt: !3698)
!3702 = !DILocation(line: 44, column: 7, scope: !3693, inlinedAt: !3698)
!3703 = !DILocation(line: 46, column: 5, scope: !3700, inlinedAt: !3698)
!3704 = !DILocation(line: 159, column: 10, scope: !3645)
!3705 = !DILocation(line: 159, column: 3, scope: !3645)
!3706 = !DILocation(line: 236, column: 1, scope: !3645)
!3707 = !DISubprogram(name: "fflush", scope: !373, file: !373, line: 230, type: !3646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3708 = distinct !DISubprogram(name: "rpl_fseeko", scope: !752, file: !752, line: 28, type: !3709, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3746)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!150, !3711, !3745, !150}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !281, line: 7, baseType: !3713)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !283, line: 49, size: 1728, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3713, file: !283, line: 51, baseType: !150, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3713, file: !283, line: 54, baseType: !148, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3713, file: !283, line: 55, baseType: !148, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3713, file: !283, line: 56, baseType: !148, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3713, file: !283, line: 57, baseType: !148, size: 64, offset: 256)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3713, file: !283, line: 58, baseType: !148, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3713, file: !283, line: 59, baseType: !148, size: 64, offset: 384)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3713, file: !283, line: 60, baseType: !148, size: 64, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3713, file: !283, line: 61, baseType: !148, size: 64, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3713, file: !283, line: 64, baseType: !148, size: 64, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3713, file: !283, line: 65, baseType: !148, size: 64, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3713, file: !283, line: 66, baseType: !148, size: 64, offset: 704)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3713, file: !283, line: 68, baseType: !298, size: 64, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3713, file: !283, line: 70, baseType: !3729, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3713, file: !283, line: 72, baseType: !150, size: 32, offset: 896)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3713, file: !283, line: 73, baseType: !150, size: 32, offset: 928)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3713, file: !283, line: 74, baseType: !305, size: 64, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3713, file: !283, line: 77, baseType: !151, size: 16, offset: 1024)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3713, file: !283, line: 78, baseType: !310, size: 8, offset: 1040)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3713, file: !283, line: 79, baseType: !90, size: 8, offset: 1048)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3713, file: !283, line: 81, baseType: !313, size: 64, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3713, file: !283, line: 89, baseType: !316, size: 64, offset: 1152)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3713, file: !283, line: 91, baseType: !318, size: 64, offset: 1216)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3713, file: !283, line: 92, baseType: !321, size: 64, offset: 1280)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3713, file: !283, line: 93, baseType: !3729, size: 64, offset: 1344)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3713, file: !283, line: 94, baseType: !149, size: 64, offset: 1408)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3713, file: !283, line: 95, baseType: !152, size: 64, offset: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3713, file: !283, line: 96, baseType: !150, size: 32, offset: 1536)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3713, file: !283, line: 98, baseType: !328, size: 160, offset: 1568)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !373, line: 63, baseType: !305)
!3746 = !{!3747, !3748, !3749, !3750}
!3747 = !DILocalVariable(name: "fp", arg: 1, scope: !3708, file: !752, line: 28, type: !3711)
!3748 = !DILocalVariable(name: "offset", arg: 2, scope: !3708, file: !752, line: 28, type: !3745)
!3749 = !DILocalVariable(name: "whence", arg: 3, scope: !3708, file: !752, line: 28, type: !150)
!3750 = !DILocalVariable(name: "pos", scope: !3751, file: !752, line: 123, type: !3745)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !752, line: 119, column: 5)
!3752 = distinct !DILexicalBlock(scope: !3708, file: !752, line: 55, column: 7)
!3753 = !DILocation(line: 0, scope: !3708)
!3754 = !DILocation(line: 55, column: 12, scope: !3752)
!3755 = !{!1211, !782, i64 16}
!3756 = !DILocation(line: 55, column: 33, scope: !3752)
!3757 = !{!1211, !782, i64 8}
!3758 = !DILocation(line: 55, column: 25, scope: !3752)
!3759 = !DILocation(line: 56, column: 7, scope: !3752)
!3760 = !DILocation(line: 56, column: 15, scope: !3752)
!3761 = !DILocation(line: 56, column: 37, scope: !3752)
!3762 = !{!1211, !782, i64 32}
!3763 = !DILocation(line: 56, column: 29, scope: !3752)
!3764 = !DILocation(line: 57, column: 7, scope: !3752)
!3765 = !DILocation(line: 57, column: 15, scope: !3752)
!3766 = !{!1211, !782, i64 72}
!3767 = !DILocation(line: 57, column: 29, scope: !3752)
!3768 = !DILocation(line: 55, column: 7, scope: !3708)
!3769 = !DILocation(line: 123, column: 26, scope: !3751)
!3770 = !DILocation(line: 123, column: 19, scope: !3751)
!3771 = !DILocation(line: 0, scope: !3751)
!3772 = !DILocation(line: 124, column: 15, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3751, file: !752, line: 124, column: 11)
!3774 = !DILocation(line: 124, column: 11, scope: !3751)
!3775 = !DILocation(line: 135, column: 19, scope: !3751)
!3776 = !DILocation(line: 136, column: 12, scope: !3751)
!3777 = !DILocation(line: 136, column: 20, scope: !3751)
!3778 = !{!1211, !1212, i64 144}
!3779 = !DILocation(line: 167, column: 7, scope: !3751)
!3780 = !DILocation(line: 169, column: 10, scope: !3708)
!3781 = !DILocation(line: 169, column: 3, scope: !3708)
!3782 = !DILocation(line: 170, column: 1, scope: !3708)
!3783 = !DISubprogram(name: "fseeko", scope: !373, file: !373, line: 736, type: !3784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!150, !3711, !305, !150}
!3786 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !679, file: !679, line: 100, type: !3787, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3790)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!152, !1602, !125, !152, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!3790 = !{!3791, !3792, !3793, !3794, !3795}
!3791 = !DILocalVariable(name: "pwc", arg: 1, scope: !3786, file: !679, line: 100, type: !1602)
!3792 = !DILocalVariable(name: "s", arg: 2, scope: !3786, file: !679, line: 100, type: !125)
!3793 = !DILocalVariable(name: "n", arg: 3, scope: !3786, file: !679, line: 100, type: !152)
!3794 = !DILocalVariable(name: "ps", arg: 4, scope: !3786, file: !679, line: 100, type: !3789)
!3795 = !DILocalVariable(name: "ret", scope: !3786, file: !679, line: 130, type: !152)
!3796 = !DILocation(line: 0, scope: !3786)
!3797 = !DILocation(line: 105, column: 9, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3786, file: !679, line: 105, column: 7)
!3799 = !DILocation(line: 105, column: 7, scope: !3786)
!3800 = !DILocation(line: 117, column: 10, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3786, file: !679, line: 117, column: 7)
!3802 = !DILocation(line: 117, column: 7, scope: !3786)
!3803 = !DILocation(line: 130, column: 16, scope: !3786)
!3804 = !DILocation(line: 135, column: 11, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3786, file: !679, line: 135, column: 7)
!3806 = !DILocation(line: 135, column: 25, scope: !3805)
!3807 = !DILocation(line: 135, column: 30, scope: !3805)
!3808 = !DILocation(line: 135, column: 7, scope: !3786)
!3809 = !DILocalVariable(name: "ps", arg: 1, scope: !3810, file: !1575, line: 1135, type: !3789)
!3810 = distinct !DISubprogram(name: "mbszero", scope: !1575, file: !1575, line: 1135, type: !3811, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{null, !3789}
!3813 = !{!3809}
!3814 = !DILocation(line: 0, scope: !3810, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 137, column: 5, scope: !3805)
!3816 = !DILocalVariable(name: "__dest", arg: 1, scope: !3817, file: !1584, line: 57, type: !149)
!3817 = distinct !DISubprogram(name: "memset", scope: !1584, file: !1584, line: 57, type: !1585, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3818)
!3818 = !{!3816, !3819, !3820}
!3819 = !DILocalVariable(name: "__ch", arg: 2, scope: !3817, file: !1584, line: 57, type: !150)
!3820 = !DILocalVariable(name: "__len", arg: 3, scope: !3817, file: !1584, line: 57, type: !152)
!3821 = !DILocation(line: 0, scope: !3817, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 1137, column: 3, scope: !3810, inlinedAt: !3815)
!3823 = !DILocation(line: 59, column: 10, scope: !3817, inlinedAt: !3822)
!3824 = !DILocation(line: 137, column: 5, scope: !3805)
!3825 = !DILocation(line: 138, column: 11, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3786, file: !679, line: 138, column: 7)
!3827 = !DILocation(line: 138, column: 7, scope: !3786)
!3828 = !DILocation(line: 139, column: 5, scope: !3826)
!3829 = !DILocation(line: 143, column: 26, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3786, file: !679, line: 143, column: 7)
!3831 = !DILocation(line: 143, column: 41, scope: !3830)
!3832 = !DILocation(line: 143, column: 7, scope: !3786)
!3833 = !DILocation(line: 145, column: 15, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !679, line: 145, column: 11)
!3835 = distinct !DILexicalBlock(scope: !3830, file: !679, line: 144, column: 5)
!3836 = !DILocation(line: 145, column: 11, scope: !3835)
!3837 = !DILocation(line: 146, column: 32, scope: !3834)
!3838 = !DILocation(line: 146, column: 16, scope: !3834)
!3839 = !DILocation(line: 146, column: 14, scope: !3834)
!3840 = !DILocation(line: 146, column: 9, scope: !3834)
!3841 = !DILocation(line: 286, column: 1, scope: !3786)
!3842 = !DISubprogram(name: "mbsinit", scope: !3843, file: !3843, line: 293, type: !3844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !802)
!3843 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!150, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!3848 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !754, file: !754, line: 27, type: !3058, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3849)
!3849 = !{!3850, !3851, !3852, !3853}
!3850 = !DILocalVariable(name: "ptr", arg: 1, scope: !3848, file: !754, line: 27, type: !149)
!3851 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3848, file: !754, line: 27, type: !152)
!3852 = !DILocalVariable(name: "size", arg: 3, scope: !3848, file: !754, line: 27, type: !152)
!3853 = !DILocalVariable(name: "nbytes", scope: !3848, file: !754, line: 29, type: !152)
!3854 = !DILocation(line: 0, scope: !3848)
!3855 = !DILocation(line: 30, column: 7, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3848, file: !754, line: 30, column: 7)
!3857 = !DILocalVariable(name: "ptr", arg: 1, scope: !3858, file: !3150, line: 2057, type: !149)
!3858 = distinct !DISubprogram(name: "rpl_realloc", scope: !3150, file: !3150, line: 2057, type: !3142, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3859)
!3859 = !{!3857, !3860}
!3860 = !DILocalVariable(name: "size", arg: 2, scope: !3858, file: !3150, line: 2057, type: !152)
!3861 = !DILocation(line: 0, scope: !3858, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 37, column: 10, scope: !3848)
!3863 = !DILocation(line: 2059, column: 24, scope: !3858, inlinedAt: !3862)
!3864 = !DILocation(line: 2059, column: 10, scope: !3858, inlinedAt: !3862)
!3865 = !DILocation(line: 37, column: 3, scope: !3848)
!3866 = !DILocation(line: 32, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3856, file: !754, line: 31, column: 5)
!3868 = !DILocation(line: 32, column: 13, scope: !3867)
!3869 = !DILocation(line: 33, column: 7, scope: !3867)
!3870 = !DILocation(line: 38, column: 1, scope: !3848)
!3871 = distinct !DISubprogram(name: "hard_locale", scope: !697, file: !697, line: 28, type: !1137, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3872)
!3872 = !{!3873, !3874}
!3873 = !DILocalVariable(name: "category", arg: 1, scope: !3871, file: !697, line: 28, type: !150)
!3874 = !DILocalVariable(name: "locale", scope: !3871, file: !697, line: 30, type: !3875)
!3875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3876)
!3876 = !{!3877}
!3877 = !DISubrange(count: 257)
!3878 = !DILocation(line: 0, scope: !3871)
!3879 = !DILocation(line: 30, column: 3, scope: !3871)
!3880 = !DILocation(line: 30, column: 8, scope: !3871)
!3881 = !DILocation(line: 32, column: 7, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3871, file: !697, line: 32, column: 7)
!3883 = !DILocation(line: 32, column: 7, scope: !3871)
!3884 = !DILocalVariable(name: "__s1", arg: 1, scope: !3885, file: !831, line: 1359, type: !125)
!3885 = distinct !DISubprogram(name: "streq", scope: !831, file: !831, line: 1359, type: !832, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3886)
!3886 = !{!3884, !3887}
!3887 = !DILocalVariable(name: "__s2", arg: 2, scope: !3885, file: !831, line: 1359, type: !125)
!3888 = !DILocation(line: 0, scope: !3885, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 35, column: 9, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3871, file: !697, line: 35, column: 7)
!3891 = !DILocation(line: 1361, column: 11, scope: !3885, inlinedAt: !3889)
!3892 = !DILocation(line: 1361, column: 10, scope: !3885, inlinedAt: !3889)
!3893 = !DILocation(line: 35, column: 29, scope: !3890)
!3894 = !DILocation(line: 0, scope: !3885, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 35, column: 32, scope: !3890)
!3896 = !DILocation(line: 1361, column: 11, scope: !3885, inlinedAt: !3895)
!3897 = !DILocation(line: 1361, column: 10, scope: !3885, inlinedAt: !3895)
!3898 = !DILocation(line: 35, column: 7, scope: !3871)
!3899 = !DILocation(line: 46, column: 3, scope: !3871)
!3900 = !DILocation(line: 47, column: 1, scope: !3871)
!3901 = distinct !DISubprogram(name: "setlocale_null_r", scope: !759, file: !759, line: 154, type: !3902, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!150, !150, !148, !152}
!3904 = !{!3905, !3906, !3907}
!3905 = !DILocalVariable(name: "category", arg: 1, scope: !3901, file: !759, line: 154, type: !150)
!3906 = !DILocalVariable(name: "buf", arg: 2, scope: !3901, file: !759, line: 154, type: !148)
!3907 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3901, file: !759, line: 154, type: !152)
!3908 = !DILocation(line: 0, scope: !3901)
!3909 = !DILocation(line: 159, column: 10, scope: !3901)
!3910 = !DILocation(line: 159, column: 3, scope: !3901)
!3911 = distinct !DISubprogram(name: "setlocale_null", scope: !759, file: !759, line: 186, type: !3912, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!125, !150}
!3914 = !{!3915}
!3915 = !DILocalVariable(name: "category", arg: 1, scope: !3911, file: !759, line: 186, type: !150)
!3916 = !DILocation(line: 0, scope: !3911)
!3917 = !DILocation(line: 189, column: 10, scope: !3911)
!3918 = !DILocation(line: 189, column: 3, scope: !3911)
!3919 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !761, file: !761, line: 35, type: !3912, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3920)
!3920 = !{!3921, !3922}
!3921 = !DILocalVariable(name: "category", arg: 1, scope: !3919, file: !761, line: 35, type: !150)
!3922 = !DILocalVariable(name: "result", scope: !3919, file: !761, line: 37, type: !125)
!3923 = !DILocation(line: 0, scope: !3919)
!3924 = !DILocation(line: 37, column: 24, scope: !3919)
!3925 = !DILocation(line: 62, column: 3, scope: !3919)
!3926 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !761, file: !761, line: 66, type: !3902, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932}
!3928 = !DILocalVariable(name: "category", arg: 1, scope: !3926, file: !761, line: 66, type: !150)
!3929 = !DILocalVariable(name: "buf", arg: 2, scope: !3926, file: !761, line: 66, type: !148)
!3930 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3926, file: !761, line: 66, type: !152)
!3931 = !DILocalVariable(name: "result", scope: !3926, file: !761, line: 111, type: !125)
!3932 = !DILocalVariable(name: "length", scope: !3933, file: !761, line: 125, type: !152)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !761, line: 124, column: 5)
!3934 = distinct !DILexicalBlock(scope: !3926, file: !761, line: 113, column: 7)
!3935 = !DILocation(line: 0, scope: !3926)
!3936 = !DILocation(line: 0, scope: !3919, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 111, column: 24, scope: !3926)
!3938 = !DILocation(line: 37, column: 24, scope: !3919, inlinedAt: !3937)
!3939 = !DILocation(line: 113, column: 14, scope: !3934)
!3940 = !DILocation(line: 113, column: 7, scope: !3926)
!3941 = !DILocation(line: 116, column: 19, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !761, line: 116, column: 11)
!3943 = distinct !DILexicalBlock(scope: !3934, file: !761, line: 114, column: 5)
!3944 = !DILocation(line: 116, column: 11, scope: !3943)
!3945 = !DILocation(line: 120, column: 16, scope: !3942)
!3946 = !DILocation(line: 120, column: 9, scope: !3942)
!3947 = !DILocation(line: 125, column: 23, scope: !3933)
!3948 = !DILocation(line: 0, scope: !3933)
!3949 = !DILocation(line: 126, column: 18, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3933, file: !761, line: 126, column: 11)
!3951 = !DILocation(line: 126, column: 11, scope: !3933)
!3952 = !DILocation(line: 128, column: 39, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3950, file: !761, line: 127, column: 9)
!3954 = !DILocalVariable(name: "__dest", arg: 1, scope: !3955, file: !1584, line: 26, type: !3418)
!3955 = distinct !DISubprogram(name: "memcpy", scope: !1584, file: !1584, line: 26, type: !3416, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3956)
!3956 = !{!3954, !3957, !3958}
!3957 = !DILocalVariable(name: "__src", arg: 2, scope: !3955, file: !1584, line: 26, type: !993)
!3958 = !DILocalVariable(name: "__len", arg: 3, scope: !3955, file: !1584, line: 26, type: !152)
!3959 = !DILocation(line: 0, scope: !3955, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 128, column: 11, scope: !3953)
!3961 = !DILocation(line: 29, column: 10, scope: !3955, inlinedAt: !3960)
!3962 = !DILocation(line: 129, column: 11, scope: !3953)
!3963 = !DILocation(line: 133, column: 23, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !761, line: 133, column: 15)
!3965 = distinct !DILexicalBlock(scope: !3950, file: !761, line: 132, column: 9)
!3966 = !DILocation(line: 133, column: 15, scope: !3965)
!3967 = !DILocation(line: 138, column: 44, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3964, file: !761, line: 134, column: 13)
!3969 = !DILocation(line: 0, scope: !3955, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 138, column: 15, scope: !3968)
!3971 = !DILocation(line: 29, column: 10, scope: !3955, inlinedAt: !3970)
!3972 = !DILocation(line: 139, column: 15, scope: !3968)
!3973 = !DILocation(line: 139, column: 32, scope: !3968)
!3974 = !DILocation(line: 140, column: 13, scope: !3968)
!3975 = !DILocation(line: 0, scope: !3934)
!3976 = !DILocation(line: 145, column: 1, scope: !3926)
